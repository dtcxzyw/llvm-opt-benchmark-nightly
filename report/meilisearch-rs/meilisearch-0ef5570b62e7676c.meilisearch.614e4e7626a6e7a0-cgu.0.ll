inline.NumInlined: 17146
inline.NumDeleted: 6832
loop-unroll.NumCompletelyUnrolled: 148
loop-unroll.NumRuntimeUnrolled: 82
loop-unroll.NumUnrolled: 290
begin_hunk_0_@"_ZN18tracing_subscriber5layer7context16Context$LT$S$GT$23lookup_current_filtered17hfdcd2d06468e812cE":bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 80 ; 3 uses
  %i.ad = load atomic i64, ptr %i.ac acquire, align 8, !noalias !13318 ; 2 uses
  %i.ae = and i64 %i.ad, 3                        ; 2 uses
  %i.af = icmp eq i64 %i.ae, 2
  br i1 %i.af, label %._crit_edge.i.i.i.i.i.i.i.i, label %"_ZN92_$LT$sharded_slab..page..slot..Lifecycle$LT$C$GT$$u20$as$u20$sharded_slab..Pack$LT$C$GT$$GT$10from_usize17h0290174db31cdc8bE.exit.i.i.i.i.i.i.i.i.i", !prof !164

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %bb.f, %.backedge.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !13327
  store i64 2, ptr %i.c, align 8, !noalias !13327
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13327
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13327
  store ptr %i.c, ptr %i.a, align 8, !noalias !13327
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..Binary$u20$for$u20$usize$GT$3fmt17h24633a65173f76b2E", ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !13327
  store ptr @2192, ptr %i.b, align 8, !noalias !13327
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.ag, align 8, !noalias !13327
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr @2193, ptr %i.ah, align 8, !noalias !13327
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 1, ptr %i.ai, align 8, !noalias !13327
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.a, ptr %i.aj, align 8, !noalias !13327
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 1, ptr %i.ak, align 8, !noalias !13327
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2195) #43
          to label %.noexc10 unwind label %.loopexit.split-lp

.noexc10:                                         ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  unreachable

"_ZN92_$LT$sharded_slab..page..slot..Lifecycle$LT$C$GT$$u20$as$u20$sharded_slab..Pack$LT$C$GT$$GT$10from_usize17h0290174db31cdc8bE.exit.i.i.i.i.i.i.i.i.i": ; preds = %bb.f, %.backedge.i.i.i.i.i.i.i.i
  %i.al = phi i64 [ %i.as, %.backedge.i.i.i.i.i.i.i.i ], [ %i.ae, %bb.f ]
  %.sroa.0.0.i4.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.0.0.i.be.i.i.i.i.i.i.i.i, %.backedge.i.i.i.i.i.i.i.i ], [ %i.ad, %bb.f ] ; 5 uses
  %.in.i.i.i.i.i.i.i.i = lshr i64 %.sroa.0.0.i4.i.i.i.i.i.i.i.i, 2
  %i.am = and i64 %.in.i.i.i.i.i.i.i.i, 562949953421311 ; 2 uses
  %i.an = icmp eq i64 %i.am, 1
  %i.ao = icmp eq i64 %i.al, 1
  %.sroa.05.0.i.i.i.i.i.i.i.i.i = and i1 %i.ao, %i.an
  br i1 %.sroa.05.0.i.i.i.i.i.i.i.i.i, label %bb.g, label %.thread.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %"_ZN92_$LT$sharded_slab..page..slot..Lifecycle$LT$C$GT$$u20$as$u20$sharded_slab..Pack$LT$C$GT$$GT$10from_usize17h0290174db31cdc8bE.exit.i.i.i.i.i.i.i.i.i"
  %i.ap = and i64 %.sroa.0.0.i4.i.i.i.i.i.i.i.i, -2251799813685248
  %i.aq = or disjoint i64 %i.ap, 3
  %i.ar = cmpxchg ptr %i.ac, i64 %.sroa.0.0.i4.i.i.i.i.i.i.i.i, i64 %i.aq acq_rel acquire, align 8, !noalias !13318 ; 2 uses
  %.sroa.18.0.in.i.i.i.i.i.i.i.i.i.i = extractvalue { i64, i1 } %i.ar, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i.i.i.i.i.i, label %"_ZN12sharded_slab4page4slot17Slot$LT$T$C$C$GT$7release17h41ed8fd25a51e0e5E.exit.i.i.i.i.i.i.i.i", label %.backedge.i.i.i.i.i.i.i.i

.backedge.i.i.i.i.i.i.i.i:                        ; preds = %.thread.i.i.i.i.i.i.i.i, %bb.g
  %.pn.i.i.i.i.i.i.i.i = phi { i64, i1 } [ %i.ar, %bb.g ], [ %i.ay, %.thread.i.i.i.i.i.i.i.i ]
  %.sroa.0.0.i.be.i.i.i.i.i.i.i.i = extractvalue { i64, i1 } %.pn.i.i.i.i.i.i.i.i, 0 ; 2 uses
  %i.as = and i64 %.sroa.0.0.i.be.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.at = icmp eq i64 %i.as, 2
  br i1 %i.at, label %._crit_edge.i.i.i.i.i.i.i.i, label %"_ZN92_$LT$sharded_slab..page..slot..Lifecycle$LT$C$GT$$u20$as$u20$sharded_slab..Pack$LT$C$GT$$GT$10from_usize17h0290174db31cdc8bE.exit.i.i.i.i.i.i.i.i.i", !prof !165

.thread.i.i.i.i.i.i.i.i:                          ; preds = %"_ZN92_$LT$sharded_slab..page..slot..Lifecycle$LT$C$GT$$u20$as$u20$sharded_slab..Pack$LT$C$GT$$GT$10from_usize17h0290174db31cdc8bE.exit.i.i.i.i.i.i.i.i.i"
  %i.au = and i64 %.sroa.0.0.i4.i.i.i.i.i.i.i.i, -2251799813685245
  %i.av = shl nuw nsw i64 %i.am, 2
  %i.aw = add nsw i64 %i.av, -4
  %i.ax = or i64 %i.aw, %i.au
  %i.ay = cmpxchg ptr %i.ac, i64 %.sroa.0.0.i4.i.i.i.i.i.i.i.i, i64 %i.ax acq_rel acquire, align 8, !noalias !13318 ; 2 uses
  %.sroa.18.0.in.i.i2.i.i.i.i.i.i.i.i = extractvalue { i64, i1 } %i.ay, 1
  br i1 %.sroa.18.0.in.i.i2.i.i.i.i.i.i.i.i, label %.loopexit.i, label %.backedge.i.i.i.i.i.i.i.i

"_ZN12sharded_slab4page4slot17Slot$LT$T$C$C$GT$7release17h41ed8fd25a51e0e5E.exit.i.i.i.i.i.i.i.i": ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.74.8.copyload.i.i.i) ]
  invoke fastcc void @"_ZN12sharded_slab5shard18Shard$LT$T$C$C$GT$19clear_after_release17h2f9763241f958119E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %.sroa.74.8.copyload.i.i.i, i64 noundef %.sroa.86.8.copyload.i.i.i)
          to label %.loopexit.i unwind label %.loopexit

bb.h:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !13303
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.thread.i.i.i.i.i.i.i.i, %"_ZN12sharded_slab4page4slot17Slot$LT$T$C$C$GT$7release17h41ed8fd25a51e0e5E.exit.i.i.i.i.i.i.i.i", %bb.h, %bb.c
  %i.az = icmp eq ptr %i.n, %i.t
  br i1 %i.az, label %.loopexit47, label %bb.c

bb.i:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8
  br label %bb.j

bb.j:                                             ; preds = %"_ZN4core3ptr652drop_in_place$LT$core..ops..control_flow..ControlFlow$LT$tracing_subscriber..registry..SpanRef$LT$tracing_subscriber..layer..layered..Layered$LT$tracing_subscriber..reload..Layer$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..registry..sharded..Registry$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..registry..sharded..Registry$GT$$C$tracing_subscriber..registry..sharded..Registry$GT$$C$tracing_subscriber..registry..sharded..Registry$GT$$GT$$GT$$GT$17h4e6131d2773ed660E.exit", %bb.i
  ret void

bb.k:                                             ; preds = %bb.e
  store ptr %1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.x, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.74.8.copyload.i.i.i, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.86.8.copyload.i.i.i, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.8.val, ptr %.sroa.7.0..sroa_idx, align 8
  br label %"_ZN4core3ptr652drop_in_place$LT$core..ops..control_flow..ControlFlow$LT$tracing_subscriber..registry..SpanRef$LT$tracing_subscriber..layer..layered..Layered$LT$tracing_subscriber..reload..Layer$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..registry..sharded..Registry$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..registry..sharded..Registry$GT$$C$tracing_subscriber..registry..sharded..Registry$GT$$C$tracing_subscriber..registry..sharded..Registry$GT$$GT$$GT$$GT$17h4e6131d2773ed660E.exit"

"_ZN4core3ptr652drop_in_place$LT$core..ops..control_flow..ControlFlow$LT$tracing_subscriber..registry..SpanRef$LT$tracing_subscriber..layer..layered..Layered$LT$tracing_subscriber..reload..Layer$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..registry..sharded..Registry$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..registry..sharded..Registry$GT$$C$tracing_subscriber..registry..sharded..Registry$GT$$C$tracing_subscriber..registry..sharded..Registry$GT$$GT$$GT$$GT$17h4e6131d2773ed660E.exit": ; preds = %.loopexit47, %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  %i.ba = load i64, ptr %i.l, align 8, !noundef !27
  %i.bb = add i64 %i.ba, -1
  store i64 %i.bb, ptr %i.l, align 8
  br label %bb.j

.loopexit47:                                      ; preds = %.loopexit.i, %bb.b
  store ptr null, ptr %0, align 8
  br label %"_ZN4core3ptr652drop_in_place$LT$core..ops..control_flow..ControlFlow$LT$tracing_subscriber..registry..SpanRef$LT$tracing_subscriber..layer..layered..Layered$LT$tracing_subscriber..reload..Layer$LT$tracing_subscriber..filter..layer_filters..Filtered$LT$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$tracing_subscriber..layer..Layer$LT$tracing_subscriber..registry..sharded..Registry$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$$C$tracing_subscriber..filter..targets..Targets$C$tracing_subscriber..registry..sharded..Registry$GT$$C$tracing_subscriber..registry..sharded..Registry$GT$$C$tracing_subscriber..registry..sharded..Registry$GT$$GT$$GT$$GT$17h4e6131d2773ed660E.exit"

.loopexit:                                        ; preds = %"_ZN12sharded_slab4page4slot17Slot$LT$T$C$C$GT$7release17h41ed8fd25a51e0e5E.exit.i.i.i.i.i.i.i.i", %bb.d
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

.loopexit.split-lp:                               ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.l:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  %i.bc = load i64, ptr %i.l, align 8, !noundef !27
  %i.bd = add i64 %i.bc, -1
  store i64 %i.bd, ptr %i.l, align 8
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN18tracing_subscriber6filter7targets7Targets11with_target17h652cd80b674b0bf4E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(464) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(464) %1, i64 noundef range(i64 0, 6) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 0, ptr %i.b, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.5.0..sroa_idx2, align 8
  %.sroa.6.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 0, ptr %.sroa.6.0..sroa_idx4, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 %2, ptr %i.a, align 8
  %i.d = load i64, ptr %1, align 8, !range !2708, !alias.scope !13328, !noalias !13331, !noundef !27
  %.not11.i = icmp ne i64 %2, 5
  %i.e = icmp samesign ugt i64 %i.d, %2
  %.sroa.09.0.i = select i1 %.not11.i, i1 %i.e, i1 false
  br i1 %.sroa.09.0.i, label %bb.c, label %bb.d

bb.b:                                             ; preds = %bb.k, %bb.g
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.c:                                             ; preds = %bb.a
  store i64 %2, ptr %1, align 8, !alias.scope !13328, !noalias !13331
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 456 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !13333, !noalias !13336, !noundef !27 ; 3 uses
  %i.j = icmp ugt i64 %i.i, 8                     ; 3 uses
  %i.k = load ptr, ptr %i.g, align 8, !alias.scope !13333, !noalias !13336, !nonnull !27
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !13333, !noalias !13336
  %.sink11.i.i = select i1 %i.j, ptr %i.k, ptr %i.g ; 3 uses
  %.sink10.i.i = select i1 %i.j, i64 %i.m, i64 %i.i ; 6 uses
  switch i64 %.sink10.i.i, label %.lr.ph.i.i [
    i64 0, label %bb.f
    i64 1, label %._crit_edge.i.i
  ]

._crit_edge.i.i:                                  ; preds = %.noexc15.i, %bb.d
  %.sroa.05.0.lcssa.i.i = phi i64 [ 0, %bb.d ], [ %i.x, %.noexc15.i ] ; 3 uses
  %i.n = icmp ult i64 %.sroa.05.0.lcssa.i.i, %.sink10.i.i
  call void @llvm.assume(i1 %i.n)
  %i.o = getelementptr inbounds nuw [56 x i8], ptr %.sink11.i.i, i64 %.sroa.05.0.lcssa.i.i ; 8 uses
  %i.p = invoke noundef range(i8 -1, 2) i8 @"_ZN89_$LT$tracing_subscriber..filter..directive..StaticDirective$u20$as$u20$core..cmp..Ord$GT$3cmp17hb730fbceb73607fcE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.a)
          to label %.noexc.i unwind label %.loopexit.split-lp.i ; 2 uses

.noexc.i:                                         ; preds = %._crit_edge.i.i
  %i.q = icmp eq i8 %i.p, 0
  br i1 %i.q, label %bb.n, label %bb.e

.lr.ph.i.i:                                       ; preds = %bb.d, %.noexc15.i
  %.sroa.01.022.i.i = phi i64 [ %i.y, %.noexc15.i ], [ %.sink10.i.i, %bb.d ] ; 2 uses
  %.sroa.05.021.i.i = phi i64 [ %i.x, %.noexc15.i ], [ 0, %bb.d ] ; 2 uses
  %i.r = lshr i64 %.sroa.01.022.i.i, 1            ; 2 uses
  %i.s = add i64 %i.r, %.sroa.05.021.i.i          ; 3 uses
  %i.t = icmp ult i64 %i.s, %.sink10.i.i
  call void @llvm.assume(i1 %i.t)
  %i.u = getelementptr inbounds nuw [56 x i8], ptr %.sink11.i.i, i64 %i.s
  %i.v = invoke noundef range(i8 -1, 2) i8 @"_ZN89_$LT$tracing_subscriber..filter..directive..StaticDirective$u20$as$u20$core..cmp..Ord$GT$3cmp17hb730fbceb73607fcE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.u, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.a)
          to label %.noexc15.i unwind label %.loopexit.i

.noexc15.i:                                       ; preds = %.lr.ph.i.i
  %i.w = icmp eq i8 %i.v, 1
  %i.x = select i1 %i.w, i64 %.sroa.05.021.i.i, i64 %i.s, !unpredictable !27 ; 2 uses
  %i.y = sub nuw i64 %.sroa.01.022.i.i, %i.r      ; 2 uses
  %i.z = icmp ugt i64 %i.y, 1
  br i1 %i.z, label %.lr.ph.i.i, label %._crit_edge.i.i

bb.e:                                             ; preds = %.noexc.i
  %i.aa = icmp eq i8 %i.p, -1
  %i.ab = zext i1 %i.aa to i64
  %i.ac = add nuw i64 %.sroa.05.0.lcssa.i.i, %i.ab ; 2 uses
  %i.ad = icmp ule i64 %i.ac, %.sink10.i.i
  call void @llvm.assume(i1 %i.ad)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.4.0.i.ph.i = phi i64 [ %i.ac, %bb.e ], [ %.sink10.i.i, %bb.d ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13338)
  %.sink9.i.i.i = select i1 %i.j, ptr %i.l, ptr %i.h ; 2 uses
  %.sink.i.i.i = call i64 @llvm.umax.i64(i64 %i.i, i64 8)
  %i.ae = load i64, ptr %.sink9.i.i.i, align 8, !alias.scope !13341, !noalias !13342, !noundef !27 ; 2 uses
  %i.af = icmp eq i64 %i.ae, %.sink.i.i.i
  br i1 %i.af, label %bb.g, label %bb.h, !prof !29

bb.g:                                             ; preds = %bb.f
  invoke fastcc void @"_ZN8smallvec17SmallVec$LT$A$GT$21reserve_one_unchecked17h714637fa8dae859bE"(ptr noalias noundef nonnull align 8 dereferenceable(456) %i.g)
          to label %bb.i unwind label %bb.b, !noalias !13344

bb.h:                                             ; preds = %bb.i, %bb.f
  %i.ag = phi i64 [ %.pre.i.i, %bb.i ], [ %i.ae, %bb.f ] ; 4 uses
  %.sroa.01.0.i.i = phi ptr [ %i.l, %bb.i ], [ %.sink9.i.i.i, %bb.f ]
  %.sroa.0.0.i16.i = phi ptr [ %i.ai, %bb.i ], [ %.sink11.i.i, %bb.f ]
  %i.ah = icmp ugt i64 %.sroa.4.0.i.ph.i, %i.ag
  br i1 %i.ah, label %bb.k, label %bb.j, !prof !29

bb.i:                                             ; preds = %bb.g
  %i.ai = load ptr, ptr %i.g, align 8, !alias.scope !13341, !noalias !13342, !nonnull !27, !noundef !27
  %.pre.i.i = load i64, ptr %i.l, align 8, !alias.scope !13341, !noalias !13342
  br label %bb.h

bb.j:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw [56 x i8], ptr %.sroa.0.0.i16.i, i64 %.sroa.4.0.i.ph.i ; 3 uses
  %i.ak = icmp ult i64 %.sroa.4.0.i.ph.i, %i.ag
  br i1 %i.ak, label %bb.l, label %bb.r

bb.k:                                             ; preds = %bb.h
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2180, i64 noundef 20, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2181) #43
          to label %bb.m unwind label %bb.b, !noalias !13345

bb.l:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  %i.am = sub nuw i64 %i.ag, %.sroa.4.0.i.ph.i
  %i.an = mul i64 %i.am, 56
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.al, ptr nonnull align 8 %i.aj, i64 %i.an, i1 false), !noalias !13344
  br label %bb.r

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %.noexc.i
  call void @llvm.experimental.noalias.scope.decl(metadata !13346)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %.val.i19.i = load i64, ptr %i.ao, align 8, !range !5723, !alias.scope !13346, !noundef !27
  %switch.i.i = icmp sgt i64 %.val.i19.i, 0
  br i1 %switch.i.i, label %bb.o, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17he43dbe1fb20bdc18E.exit.i.i"

bb.o:                                             ; preds = %bb.n
  %i.ap = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %.val1.i.i = load ptr, ptr %i.ap, align 8, !alias.scope !13346, !nonnull !27, !noundef !27
  call void @mi_free(ptr noundef nonnull %.val1.i.i) #38, !noalias !13349
  br label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17he43dbe1fb20bdc18E.exit.i.i"

"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17he43dbe1fb20bdc18E.exit.i.i": ; preds = %bb.o, %bb.n
  %i.aq = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !13352)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.val.i.i.i = load ptr, ptr %i.ar, align 8, !alias.scope !13355, !nonnull !27, !noundef !27 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %.val1.i.i.i = load i64, ptr %i.as, align 8, !alias.scope !13355, !noundef !27 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13356)
  %i.at = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.at, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha4c72c31ab38f524E.exit.i.i.i", label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17he43dbe1fb20bdc18E.exit.i.i", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i.i.i.i.i"
  %.sroa.0.010.i.i.i.i.i = phi i64 [ %i.av, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i.i.i.i.i" ], [ 0, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17he43dbe1fb20bdc18E.exit.i.i" ] ; 2 uses
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i, i64 %.sroa.0.010.i.i.i.i.i ; 2 uses
  %i.av = add nuw i64 %.sroa.0.010.i.i.i.i.i, 1   ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13359)
  %.val.i.i.i.i.i.i = load i64, ptr %i.au, align 8, !alias.scope !13362, !noalias !13355
  %i.aw = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.aw, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i.i.i.i.i", label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.ax, align 8, !alias.scope !13362, !noalias !13355, !nonnull !27, !noundef !27
  call void @mi_free(ptr noundef nonnull %.val1.i.i.i.i.i.i) #38, !noalias !13363
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i.i.i.i.i": ; preds = %bb.p, %.lr.ph.i.i.i.i.i
  %i.ay = icmp eq i64 %i.av, %.val1.i.i.i
  br i1 %i.ay, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha4c72c31ab38f524E.exit.i.i.i", label %.lr.ph.i.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha4c72c31ab38f524E.exit.i.i.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i.i.i.i.i", %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17he43dbe1fb20bdc18E.exit.i.i"
  %.val2.i.i.i = load i64, ptr %i.aq, align 8, !range !28, !alias.scope !13355, !noundef !27
  %i.az = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.az, label %bb.s, label %bb.q

bb.q:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha4c72c31ab38f524E.exit.i.i.i"
  call void @mi_free(ptr noundef nonnull %.val.i.i.i) #38, !noalias !13355
  br label %bb.s

bb.r:                                             ; preds = %bb.l, %bb.j
  %i.ba = add i64 %i.ag, 1
  store i64 %i.ba, ptr %.sroa.01.0.i.i, align 8, !alias.scope !13341, !noalias !13342
  br label %bb.s

.thread.i:                                        ; preds = %.loopexit.split-lp.i, %.loopexit.i, %bb.b
  %.pn1322.i = phi { ptr, i32 } [ %i.f, %bb.b ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  call fastcc void @"_ZN4core3ptr75drop_in_place$LT$tracing_subscriber..filter..directive..StaticDirective$GT$17h4bc8c6c884d567ceE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(56) %i.a) #44
  call fastcc void @"_ZN4core3ptr65drop_in_place$LT$tracing_subscriber..filter..targets..Targets$GT$17h3d44c41881441530E"(ptr noalias noundef align 8 dereferenceable(464) %1) #44
  resume { ptr, i32 } %.pn1322.i

.loopexit.i:                                      ; preds = %.lr.ph.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

.loopexit.split-lp.i:                             ; preds = %._crit_edge.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.s:                                             ; preds = %bb.r, %bb.q, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha4c72c31ab38f524E.exit.i.i.i"
  %.sink.i = phi ptr [ %i.aj, %bb.r ], [ %i.o, %bb.q ], [ %i.o, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha4c72c31ab38f524E.exit.i.i.i" ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sink.i, ptr noundef nonnull readonly align 8 dereferenceable(56) %i.a, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(464) %0, ptr noundef nonnull align 8 dereferenceable(464) %1, i64 464, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN18tracing_subscriber8registry10extensions13ExtensionsMut6insert17h15686a096839c8f1E(ptr %.0.val, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13364)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !13367
  %i.b = tail call noundef ptr @mi_malloc_aligned(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #38, !noalias !13367 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h69644d3104976a0bE.exit.i", !prof !304

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 32) #43
          to label %.noexc.i unwind label %bb.c, !noalias !13372

.noexc.i:                                         ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13373)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13376)
  %.val.i.i.i = load i64, ptr %0, align 8, !alias.scope !13379, !noalias !13380
  %i.e = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.e, label %common.resume.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !13379, !noalias !13380, !nonnull !27, !noundef !27
  tail call void @mi_free(ptr noundef nonnull %.val1.i.i.i) #38, !noalias !13381
  br label %common.resume.i

common.resume.i:                                  ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i", %bb.k, %bb.f, %bb.d, %bb.c
  %common.resume.op.i = phi { ptr, i32 } [ %i.d, %bb.c ], [ %i.d, %bb.d ], [ %i.m, %bb.f ], [ %i.u, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i" ], [ %i.u, %bb.k ]
  resume { ptr, i32 } %common.resume.op.i

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h69644d3104976a0bE.exit.i": ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(32) %0, i64 32, i1 false), !noalias !13380
  %i.h = tail call fastcc { ptr, ptr } @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h7bb7134b2c71dc5eE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.g, ptr noalias noundef align 8 captures(address) dereferenceable(16) @665, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @666), !noalias !13382 ; 2 uses
  %i.i = extractvalue { ptr, ptr } %i.h, 0        ; 9 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %"_ZN4core3ptr154drop_in_place$LT$core..option..Option$LT$tracing_subscriber..fmt..fmt_layer..FormattedFields$LT$tracing_subscriber..fmt..format..DefaultFields$GT$$GT$$GT$17h0ec485c649eb8d8aE.exit", label %bb.e

bb.e:                                             ; preds = %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h69644d3104976a0bE.exit.i"
  %i.j = extractvalue { ptr, ptr } %i.h, 1        ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13383)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13386)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13389
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !invariant.load !27, !alias.scope !13392, !noalias !13393, !nonnull !27
  invoke void %i.l(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull align 1 %i.i)
          to label %"_ZN5alloc5boxed7convert69_$LT$impl$u20$alloc..boxed..Box$LT$dyn$u20$core..any..Any$C$A$GT$$GT$8downcast17h778dded9c88ab177E.exit.i.i" unwind label %bb.f, !noalias !13394

bb.f:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$GT$$GT$17h83d3a8d9881c883aE"(ptr nonnull align 1 %i.i, ptr nonnull readonly align 8 dereferenceable(32) %i.j) #44
          to label %common.resume.i unwind label %bb.g, !noalias !13393

bb.g:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@"_ZN2h25codec12framed_write16Encoder$LT$B$GT$6buffer17h6818ca78fd84449cE":bb.a
  br i1 %.not.i.i.i357, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %bb.dp
  %i.aal = invoke noundef zeroext i1 @_ZN5bytes9bytes_mut8BytesMut13reserve_inner17h73e0ed6d42572173E(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.gq, i64 noundef %i.aai, i1 noundef zeroext true)
          to label %.noexc.i.i358 unwind label %bb.dv ; 0 uses

.noexc.i.i358:                                    ; preds = %bb.dq
  %.pre.i.i.i359 = load i64, ptr %i.gt, align 8, !alias.scope !14130, !noalias !14131
  br label %bb.dr

bb.dr:                                            ; preds = %.noexc.i.i358, %bb.dp
  %i.aam = phi i64 [ %i.aaj, %bb.dp ], [ %.pre.i.i.i359, %.noexc.i.i358 ]
  %i.aan = load ptr, ptr %i.gq, align 8, !alias.scope !14130, !noalias !14131, !nonnull !27, !noundef !27
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aan, i64 %i.aam
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aao, ptr nonnull readonly align 1 %i.aag, i64 %i.aai, i1 false)
  %i.aap = load i64, ptr %i.gr, align 8, !alias.scope !14130, !noalias !14131, !noundef !27
  %i.aaq = load i64, ptr %i.gt, align 8, !alias.scope !14130, !noalias !14131, !noundef !27 ; 2 uses
  %i.aar = sub i64 %i.aap, %i.aaq                 ; 2 uses
  %i.aas = icmp ugt i64 %i.aai, %i.aar
  br i1 %i.aas, label %bb.ds, label %bb.dw, !prof !29

bb.ds:                                            ; preds = %bb.dr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !14133
  store i64 %i.aai, ptr %i.p, align 8, !noalias !14133
  %i.aat = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %i.aar, ptr %i.aat, align 8, !noalias !14133
  invoke void @_ZN5bytes13panic_advance17hadc1578990b3691cE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.p) #43
          to label %.noexc14.i.i unwind label %bb.dv

.noexc14.i.i:                                     ; preds = %bb.ds
  unreachable

bb.dt:                                            ; preds = %.noexc366
  %i.aau = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  invoke void @"_ZN68_$LT$bytes..bytes_mut..BytesMut$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbef4de1915e8c443E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.gq)
          to label %"_ZN4core3ptr47drop_in_place$LT$bytes..bytes_mut..BytesMut$GT$17h1b9136e447aa1cf5E.exit.i.i356" unwind label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.aav = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.gq, ptr noundef nonnull align 8 dereferenceable(32) %i.aau, i64 32, i1 false), !noalias !14126
  br label %"_ZN4core3ptr40drop_in_place$LT$bytes..bytes..Bytes$GT$17h502274557bcf9bdcE.exit.i.i355"

"_ZN4core3ptr47drop_in_place$LT$bytes..bytes_mut..BytesMut$GT$17h1b9136e447aa1cf5E.exit.i.i356": ; preds = %bb.dt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.gq, ptr noundef nonnull align 8 dereferenceable(32) %i.aau, i64 32, i1 false), !noalias !14126
  br label %.loopexit453

bb.dv:                                            ; preds = %bb.ds, %bb.dq
  %i.aaw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !14134)
  call void @llvm.experimental.noalias.scope.decl(metadata !14137)
  %i.aax = load ptr, ptr %i.q, align 8, !alias.scope !14140, !noalias !14124, !nonnull !27, !align !148, !noundef !27
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aax, i64 32
  %i.aaz = load ptr, ptr %i.aay, align 8, !noalias !14140, !nonnull !27, !noundef !27
  %i.aba = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.abb = load ptr, ptr %i.aaf, align 8, !alias.scope !14140, !noalias !14124, !noundef !27
  %i.abc = load i64, ptr %i.aah, align 8, !alias.scope !14140, !noalias !14124, !noundef !27
  invoke void %i.aaz(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aba, ptr noundef %i.abb, i64 noundef %i.abc)
          to label %"_ZN4core3ptr40drop_in_place$LT$bytes..bytes..Bytes$GT$17h502274557bcf9bdcE.exit.i.i355" unwind label %bb.dx, !inline_history !1185

bb.dw:                                            ; preds = %bb.dr
  %i.abd = add i64 %i.aaq, %i.aai
  store i64 %i.abd, ptr %i.gt, align 8, !alias.scope !14130, !noalias !14131
  call void @llvm.experimental.noalias.scope.decl(metadata !14141)
  call void @llvm.experimental.noalias.scope.decl(metadata !14144)
  %i.abe = load ptr, ptr %i.q, align 8, !alias.scope !14147, !noalias !14124, !nonnull !27, !align !148, !noundef !27
  %i.abf = getelementptr inbounds nuw i8, ptr %i.abe, i64 32
  %i.abg = load ptr, ptr %i.abf, align 8, !noalias !14147, !nonnull !27, !noundef !27
  %i.abh = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.abi = load ptr, ptr %i.aaf, align 8, !alias.scope !14147, !noalias !14124, !noundef !27
  %i.abj = load i64, ptr %i.aah, align 8, !alias.scope !14147, !noalias !14124, !noundef !27
  invoke void %i.abg(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.abh, ptr noundef %i.abi, i64 noundef %i.abj)
          to label %.noexc367 unwind label %.loopexit.split-lp, !inline_history !14148

.noexc367:                                        ; preds = %bb.dw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !14124
  br label %.loopexit453

bb.dx:                                            ; preds = %bb.dv
  %i.abk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45
  unreachable

bb.dy:                                            ; preds = %bb.do
  %i.abl = invoke noundef zeroext i1 @_ZN5bytes9bytes_mut8BytesMut13reserve_inner17h73e0ed6d42572173E(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.gq, i64 noundef %.sroa.0.0.i.i, i1 noundef zeroext true)
          to label %.noexc368 unwind label %.loopexit.split-lp ; 0 uses

.noexc368:                                        ; preds = %bb.dy
  %.val.i1732.pre.i.i = load i64, ptr %i.yz, align 8, !alias.scope !14126, !noalias !14125
  %.val1.i1833.pre.i.i = load i64, ptr %i.za, align 8, !alias.scope !14126, !noalias !14125
  %.pre49.i.i = call noundef i64 @llvm.umin.i64(i64 %.val1.i1833.pre.i.i, i64 %.val.i1732.pre.i.i) ; 2 uses
  %.not2535.i.i = icmp eq i64 %.pre49.i.i, 0
  br i1 %.not2535.i.i, label %.loopexit453, label %..lr.ph.i_crit_edge.i353

..lr.ph.i_crit_edge.i353:                         ; preds = %.noexc368
  %.pre.i.pre.i354 = load i64, ptr %i.gt, align 8, !alias.scope !14149, !noalias !14152
  %.pre48.i.pre.i = load i64, ptr %i.gr, align 8, !alias.scope !14149, !noalias !14152
  br label %.lr.ph.i.i351

.lr.ph.i.i351:                                    ; preds = %..lr.ph.i_crit_edge.i353, %bb.do
  %.pre48.i.i = phi i64 [ %.pre48.i.pre.i, %..lr.ph.i_crit_edge.i353 ], [ %i.zy, %bb.do ]
  %.pre.i.i352 = phi i64 [ %.pre.i.pre.i354, %..lr.ph.i_crit_edge.i353 ], [ %i.aac, %bb.do ]
  %.sroa.0.0.i.i.i.i1934.pre-phi58.i.i = phi i64 [ %.pre49.i.i, %..lr.ph.i_crit_edge.i353 ], [ %.sroa.0.0.i.i, %bb.do ]
  %i.abm = getelementptr inbounds nuw i8, ptr %i.fv, i64 8 ; 3 uses
  %.val.i.i.i.pre.i.i = load ptr, ptr %i.abm, align 8, !alias.scope !14126, !noalias !14125
  br label %bb.dz

bb.dz:                                            ; preds = %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17h1040aee0a5d4d8aeE.exit.i.i", %.lr.ph.i.i351
  %i.abn = phi i64 [ %.pre48.i.i, %.lr.ph.i.i351 ], [ %i.abu, %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17h1040aee0a5d4d8aeE.exit.i.i" ]
  %i.abo = phi i64 [ %.pre.i.i352, %.lr.ph.i.i351 ], [ %i.abz, %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17h1040aee0a5d4d8aeE.exit.i.i" ] ; 2 uses
  %.val.i.i.i.i.i = phi ptr [ %.val.i.i.i.pre.i.i, %.lr.ph.i.i351 ], [ %i.acj, %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17h1040aee0a5d4d8aeE.exit.i.i" ]
  %.sroa.0.0.i.i.i.i1936.i.i = phi i64 [ %.sroa.0.0.i.i.i.i1934.pre-phi58.i.i, %.lr.ph.i.i351 ], [ %.sroa.0.0.i.i.i.i19.i.i, %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17h1040aee0a5d4d8aeE.exit.i.i" ] ; 12 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14154)
  %i.abp = sub i64 %i.abn, %i.abo
  %.not.i21.i.i = icmp ugt i64 %.sroa.0.0.i.i.i.i1936.i.i, %i.abp
  br i1 %.not.i21.i.i, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %bb.dz
  %i.abq = invoke noundef zeroext i1 @_ZN5bytes9bytes_mut8BytesMut13reserve_inner17h73e0ed6d42572173E(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.gq, i64 noundef %.sroa.0.0.i.i.i.i1936.i.i, i1 noundef zeroext true)
          to label %.noexc369 unwind label %.loopexit ; 0 uses

.noexc369:                                        ; preds = %bb.ea
  %.pre.i22.i.i = load i64, ptr %i.gt, align 8, !alias.scope !14149, !noalias !14152
  br label %bb.eb

bb.eb:                                            ; preds = %.noexc369, %bb.dz
  %i.abr = phi i64 [ %i.abo, %bb.dz ], [ %.pre.i22.i.i, %.noexc369 ]
  %i.abs = load ptr, ptr %i.gq, align 8, !alias.scope !14149, !noalias !14152, !nonnull !27, !noundef !27
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abs, i64 %i.abr
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.abt, ptr nonnull readonly align 1 %.val.i.i.i.i.i, i64 %.sroa.0.0.i.i.i.i1936.i.i, i1 false)
  %i.abu = load i64, ptr %i.gr, align 8, !alias.scope !14149, !noalias !14152, !noundef !27 ; 2 uses
  %i.abv = load i64, ptr %i.gt, align 8, !alias.scope !14149, !noalias !14152, !noundef !27 ; 2 uses
  %i.abw = sub i64 %i.abu, %i.abv                 ; 2 uses
  %i.abx = icmp ugt i64 %.sroa.0.0.i.i.i.i1936.i.i, %i.abw
  br i1 %i.abx, label %bb.ec, label %_ZN5bytes9bytes_mut8BytesMut17extend_from_slice17hd54414edbc4203a3E.exit23.i.i, !prof !29

bb.ec:                                            ; preds = %bb.eb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !14155
  store i64 %.sroa.0.0.i.i.i.i1936.i.i, ptr %i.o, align 8, !noalias !14155
  %i.aby = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %i.abw, ptr %i.aby, align 8, !noalias !14155
  invoke void @_ZN5bytes13panic_advance17hadc1578990b3691cE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.o) #43
          to label %.noexc370 unwind label %.loopexit.split-lp

.noexc370:                                        ; preds = %bb.ec
  unreachable

_ZN5bytes9bytes_mut8BytesMut17extend_from_slice17hd54414edbc4203a3E.exit23.i.i: ; preds = %bb.eb
  %i.abz = add i64 %i.abv, %.sroa.0.0.i.i.i.i1936.i.i ; 2 uses
  store i64 %i.abz, ptr %i.gt, align 8, !alias.scope !14149, !noalias !14152
  call void @llvm.experimental.noalias.scope.decl(metadata !14156)
  call void @llvm.experimental.noalias.scope.decl(metadata !14159)
  %i.aca = load i64, ptr %i.za, align 8, !alias.scope !14162, !noalias !14125, !noundef !27 ; 2 uses
  %.not.i.i.i.i.i = icmp ugt i64 %.sroa.0.0.i.i.i.i1936.i.i, %i.aca
  br i1 %.not.i.i.i.i.i, label %.invoke557, label %bb.ed, !prof !29

bb.ed:                                            ; preds = %_ZN5bytes9bytes_mut8BytesMut17extend_from_slice17hd54414edbc4203a3E.exit23.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !14163)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !14166
  store i64 %.sroa.0.0.i.i.i.i1936.i.i, ptr %i.n, align 8, !noalias !14167
  %i.acb = load i64, ptr %i.yz, align 8, !alias.scope !14168, !noalias !14125, !noundef !27 ; 3 uses
  %.not.i.i.i.i.i.i = icmp ugt i64 %.sroa.0.0.i.i.i.i1936.i.i, %i.acb
  br i1 %.not.i.i.i.i.i.i, label %bb.ee, label %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17h1040aee0a5d4d8aeE.exit.i.i", !prof !29

bb.ee:                                            ; preds = %bb.ed
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !14167
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !14167
  store i64 %i.acb, ptr %i.l, align 8, !noalias !14167
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !14167
  store ptr %i.n, ptr %i.k, align 8, !noalias !14167
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hfbad01e72c46968eE", ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !14167
  %i.acc = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.l, ptr %i.acc, align 8, !noalias !14167
  %.sroa.46.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hfbad01e72c46968eE", ptr %.sroa.46.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !14167
  store ptr @1430, ptr %i.m, align 8, !noalias !14167
  %i.acd = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 2, ptr %i.acd, align 8, !noalias !14167
  %i.ace = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr null, ptr %i.ace, align 8, !noalias !14167
  %i.acf = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %i.k, ptr %i.acf, align 8, !noalias !14167
  %i.acg = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i64 2, ptr %i.acg, align 8, !noalias !14167
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1431) #43
          to label %.noexc372 unwind label %.loopexit.split-lp

.noexc372:                                        ; preds = %bb.ee
  unreachable

"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17h1040aee0a5d4d8aeE.exit.i.i": ; preds = %bb.ed
  %i.ach = sub nuw i64 %i.acb, %.sroa.0.0.i.i.i.i1936.i.i ; 2 uses
  store i64 %i.ach, ptr %i.yz, align 8, !alias.scope !14168, !noalias !14125
  %i.aci = load ptr, ptr %i.abm, align 8, !alias.scope !14168, !noalias !14125, !noundef !27
  %i.acj = getelementptr inbounds nuw i8, ptr %i.aci, i64 %.sroa.0.0.i.i.i.i1936.i.i ; 2 uses
  store ptr %i.acj, ptr %i.abm, align 8, !alias.scope !14168, !noalias !14125
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !14166
  %i.ack = sub nuw i64 %i.aca, %.sroa.0.0.i.i.i.i1936.i.i ; 2 uses
  store i64 %i.ack, ptr %i.za, align 8, !alias.scope !14162, !noalias !14125
  %.sroa.0.0.i.i.i.i19.i.i = call noundef i64 @llvm.umin.i64(i64 %i.ack, i64 %i.ach) ; 2 uses
  %.not25.i.i = icmp eq i64 %.sroa.0.0.i.i.i.i19.i.i, 0
  br i1 %.not25.i.i, label %.loopexit453, label %bb.dz

bb.ef:                                            ; preds = %bb.di
  %i.acl = getelementptr inbounds nuw i8, ptr %i.fv, i64 60
  %i.acm = load i8, ptr %i.acl, align 4, !noundef !27
  %i.acn = getelementptr inbounds nuw i8, ptr %i.fv, i64 56
  %i.aco = load i32, ptr %i.acn, align 8, !noundef !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !14169
  %i.acp = call i64 @llvm.bswap.i64(i64 %.sroa.0.0.i.i)
  store i64 %i.acp, ptr %i.j, align 8, !noalias !14169
  %i.acq = getelementptr inbounds nuw i8, ptr %i.j, i64 5
  invoke void @"_ZN74_$LT$bytes..bytes_mut..BytesMut$u20$as$u20$bytes..buf..buf_mut..BufMut$GT$9put_slice17he91f65def23323d7E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.gq, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.acq, i64 noundef 3)
          to label %.noexc375 unwind label %.loopexit.split-lp

.noexc375:                                        ; preds = %bb.ef
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !14169
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !14175
  store i8 0, ptr %i.i, align 1, !noalias !14175
  invoke void @"_ZN74_$LT$bytes..bytes_mut..BytesMut$u20$as$u20$bytes..buf..buf_mut..BufMut$GT$9put_slice17he91f65def23323d7E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.gq, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.i, i64 noundef 1)
          to label %.noexc376 unwind label %.loopexit.split-lp

.noexc376:                                        ; preds = %.noexc375
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !14175
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !14178
  store i8 %i.acm, ptr %i.h, align 1, !noalias !14178
  invoke void @"_ZN74_$LT$bytes..bytes_mut..BytesMut$u20$as$u20$bytes..buf..buf_mut..BufMut$GT$9put_slice17he91f65def23323d7E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.gq, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.h, i64 noundef 1)
          to label %.noexc377 unwind label %.loopexit.split-lp

.noexc377:                                        ; preds = %.noexc376
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !14178
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !14181
  %i.acr = call i32 @llvm.bswap.i32(i32 %i.aco)
  store i32 %i.acr, ptr %i.g, align 4, !noalias !14181
  invoke void @"_ZN74_$LT$bytes..bytes_mut..BytesMut$u20$as$u20$bytes..buf..buf_mut..BufMut$GT$9put_slice17he91f65def23323d7E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.gq, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.g, i64 noundef 4)
          to label %bb.el unwind label %.loopexit.split-lp

.loopexit453:                                     ; preds = %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17h1040aee0a5d4d8aeE.exit.i.i", %.noexc364, %"_ZN4core3ptr47drop_in_place$LT$bytes..bytes_mut..BytesMut$GT$17h1b9136e447aa1cf5E.exit.i.i356", %.noexc367, %.noexc368
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !14123
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !14123
  %.val248 = load i64, ptr %i.yz, align 8, !noundef !27
  %.val249 = load i64, ptr %i.za, align 8, !noundef !27
  %.sroa.0.0.i.i379 = call noundef i64 @llvm.umin.i64(i64 %.val249, i64 %.val248) ; 2 uses
  store i64 %.sroa.0.0.i.i379, ptr %i.ft, align 8
  %i.acs = icmp eq i64 %.sroa.0.0.i.i379, 0
  br i1 %i.acs, label %bb.eg, label %bb.ei, !prof !222

bb.eg:                                            ; preds = %.loopexit453
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fr)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.fr, ptr noundef nonnull align 8 dereferenceable(64) %i.fv, i64 64, i1 false)
  %i.act = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14184)
  %i.acu = getelementptr inbounds nuw i8, ptr %0, i64 173
  %i.acv = load i8, ptr %i.acu, align 1, !range !214, !alias.scope !14184, !noundef !27
  %i.acw = icmp eq i8 %i.acv, 2
  br i1 %i.acw, label %"_ZN4core3ptr148drop_in_place$LT$core..option..Option$LT$h2..frame..data..Data$LT$h2..proto..streams..prioritize..Prioritized$LT$bytes..bytes..Bytes$GT$$GT$$GT$$GT$17h81c066a33df71681E.exit", label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  call void @llvm.experimental.noalias.scope.decl(metadata !14187)
  call void @llvm.experimental.noalias.scope.decl(metadata !14190)
  call void @llvm.experimental.noalias.scope.decl(metadata !14193)
  call void @llvm.experimental.noalias.scope.decl(metadata !14196)
  call void @llvm.experimental.noalias.scope.decl(metadata !14199)
  %i.acx = load ptr, ptr %i.act, align 8, !alias.scope !14202, !nonnull !27, !align !148, !noundef !27
  %i.acy = getelementptr inbounds nuw i8, ptr %i.acx, i64 32
  %i.acz = load ptr, ptr %i.acy, align 8, !noalias !14202, !nonnull !27, !noundef !27
  %i.ada = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.adb = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.adc = load ptr, ptr %i.adb, align 8, !alias.scope !14202, !noundef !27
  %i.add = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ade = load i64, ptr %i.add, align 8, !alias.scope !14202, !noundef !27
  invoke void %i.acz(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ada, ptr noundef %i.adc, i64 noundef %i.ade)
          to label %"_ZN4core3ptr148drop_in_place$LT$core..option..Option$LT$h2..frame..data..Data$LT$h2..proto..streams..prioritize..Prioritized$LT$bytes..bytes..Bytes$GT$$GT$$GT$$GT$17h81c066a33df71681E.exit" unwind label %bb.ej, !inline_history !13879

bb.ei:                                            ; preds = %.loopexit453
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fs)
  store ptr @688, ptr %i.fs, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  store i64 1, ptr %.sroa.421.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fs, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, i8 0, i64 16, i1 false)
  invoke void @_ZN4core9panicking13assert_failed17he513e705e2b74251E(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ft, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @242, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.fs, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @689) #43
          to label %bb.f unwind label %.loopexit.split-lp

bb.ej:                                            ; preds = %bb.eh
  %i.adf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.act, ptr noundef nonnull align 8 dereferenceable(64) %i.fr, i64 64, i1 false)
  br label %"_ZN4core3ptr120drop_in_place$LT$h2..frame..data..Data$LT$h2..proto..streams..prioritize..Prioritized$LT$bytes..bytes..Bytes$GT$$GT$$GT$17h8efdbc27f717b28dE.exit392"

"_ZN4core3ptr148drop_in_place$LT$core..option..Option$LT$h2..frame..data..Data$LT$h2..proto..streams..prioritize..Prioritized$LT$bytes..bytes..Bytes$GT$$GT$$GT$$GT$17h81c066a33df71681E.exit": ; preds = %bb.eg, %bb.eh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.act, ptr noundef nonnull align 8 dereferenceable(64) %i.fr, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fr)
  br label %bb.ek

bb.ek:                                            ; preds = %"_ZN4core3ptr156drop_in_place$LT$core..option..Option$LT$h2..codec..framed_write..Next$LT$h2..proto..streams..prioritize..Prioritized$LT$bytes..bytes..Bytes$GT$$GT$$GT$$GT$17h3b0fab91e22699bfE.exit", %"_ZN4core3ptr148drop_in_place$LT$core..option..Option$LT$h2..frame..data..Data$LT$h2..proto..streams..prioritize..Prioritized$LT$bytes..bytes..Bytes$GT$$GT$$GT$$GT$17h81c066a33df71681E.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fv)
  br label %bb.ep

bb.el:                                            ; preds = %.noexc377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !14181
  %i.adg = load i64, ptr %i.gt, align 8, !noundef !27 ; 2 uses
  %i.adh = load i64, ptr %i.zf, align 8, !noundef !27 ; 2 uses
  %i.adi = icmp ult i64 %i.adg, %i.adh
  br i1 %i.adi, label %bb.em, label %bb.en

bb.em:                                            ; preds = %bb.el
  %i.adj = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.adk = load i64, ptr %i.adj, align 8, !noundef !27
  %i.adl = call i64 @llvm.usub.sat.i64(i64 %i.adg, i64 %i.adk)
  %i.adm = sub nuw i64 %i.adh, %i.adl
  invoke fastcc void @"_ZN74_$LT$bytes..bytes_mut..BytesMut$u20$as$u20$bytes..buf..buf_mut..BufMut$GT$3put17had9b95de9bfbeb29E"(ptr noalias noundef align 8 dereferenceable(32) %i.gq, ptr noalias noundef align 8 dereferenceable(56) %i.fv, i64 noundef %i.adm)
          to label %bb.en unwind label %.loopexit.split-lp

bb.en:                                            ; preds = %bb.em, %bb.el
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fu)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.fu, ptr noundef nonnull align 8 dereferenceable(64) %i.fv, i64 64, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !14203)
  %i.adn = load i8, ptr %i.go, align 1, !range !178, !alias.scope !14203, !noundef !27
  %i.ado = icmp eq i8 %i.adn, 3
  br i1 %i.ado, label %"_ZN4core3ptr156drop_in_place$LT$core..option..Option$LT$h2..codec..framed_write..Next$LT$h2..proto..streams..prioritize..Prioritized$LT$bytes..bytes..Bytes$GT$$GT$$GT$$GT$17h3b0fab91e22699bfE.exit", label %"_ZN4core3ptr128drop_in_place$LT$h2..codec..framed_write..Next$LT$h2..proto..streams..prioritize..Prioritized$LT$bytes..bytes..Bytes$GT$$GT$$GT$17he59d8ebfb4b26ec5E.exit.i"

"_ZN4core3ptr128drop_in_place$LT$h2..codec..framed_write..Next$LT$h2..proto..streams..prioritize..Prioritized$LT$bytes..bytes..Bytes$GT$$GT$$GT$17he59d8ebfb4b26ec5E.exit.i": ; preds = %bb.en
  call void @llvm.experimental.noalias.scope.decl(metadata !14206)
  %i.adp = load ptr, ptr %i.gn, align 8, !alias.scope !14209, !nonnull !27, !align !148, !noundef !27
  %i.adq = getelementptr inbounds nuw i8, ptr %i.adp, i64 32
  %i.adr = load ptr, ptr %i.adq, align 8, !noalias !14209, !nonnull !27, !noundef !27
  %i.ads = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.adt = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.adu = load ptr, ptr %i.adt, align 8, !alias.scope !14209, !noundef !27
  %i.adv = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.adw = load i64, ptr %i.adv, align 8, !alias.scope !14209, !noundef !27
  invoke void %i.adr(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ads, ptr noundef %i.adu, i64 noundef %i.adw)
          to label %"_ZN4core3ptr156drop_in_place$LT$core..option..Option$LT$h2..codec..framed_write..Next$LT$h2..proto..streams..prioritize..Prioritized$LT$bytes..bytes..Bytes$GT$$GT$$GT$$GT$17h3b0fab91e22699bfE.exit" unwind label %bb.eo, !inline_history !13887

bb.eo:                                            ; preds = %"_ZN4core3ptr128drop_in_place$LT$h2..codec..framed_write..Next$LT$h2..proto..streams..prioritize..Prioritized$LT$bytes..bytes..Bytes$GT$$GT$$GT$17he59d8ebfb4b26ec5E.exit.i"
  %i.adx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.gn, ptr noundef nonnull align 8 dereferenceable(64) %i.fu, i64 64, i1 false)
  br label %"_ZN4core3ptr120drop_in_place$LT$h2..frame..data..Data$LT$h2..proto..streams..prioritize..Prioritized$LT$bytes..bytes..Bytes$GT$$GT$$GT$17h8efdbc27f717b28dE.exit392"

"_ZN4core3ptr156drop_in_place$LT$core..option..Option$LT$h2..codec..framed_write..Next$LT$h2..proto..streams..prioritize..Prioritized$LT$bytes..bytes..Bytes$GT$$GT$$GT$$GT$17h3b0fab91e22699bfE.exit": ; preds = %bb.en, %"_ZN4core3ptr128drop_in_place$LT$h2..codec..framed_write..Next$LT$h2..proto..streams..prioritize..Prioritized$LT$bytes..bytes..Bytes$GT$$GT$$GT$17he59d8ebfb4b26ec5E.exit.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.gn, ptr noundef nonnull align 8 dereferenceable(64) %i.fu, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fu)
  br label %bb.ek

bb.ep:                                            ; preds = %bb.hw, %bb.hi, %"_ZN4core3ptr47drop_in_place$LT$h2..frame..go_away..GoAway$GT$17h84def214b46b7b20E.exit401", %bb.gf, %bb.fr, %bb.fd, %bb.ez, %bb.ek
  %.sroa.0101.6 = phi i1 [ true, %bb.ek ], [ true, %bb.ez ], [ true, %bb.fd ], [ true, %bb.fr ], [ true, %bb.gf ], [ false, %"_ZN4core3ptr47drop_in_place$LT$h2..frame..go_away..GoAway$GT$17h84def214b46b7b20E.exit401" ], [ true, %bb.hi ], [ true, %bb.hw ] ; 3 uses
  %.sroa.0100.6 = phi i1 [ true, %bb.ek ], [ true, %bb.ez ], [ false, %bb.fd ], [ true, %bb.fr ], [ true, %bb.gf ], [ true, %"_ZN4core3ptr47drop_in_place$LT$h2..frame..go_away..GoAway$GT$17h84def214b46b7b20E.exit401" ], [ true, %bb.hi ], [ true, %bb.hw ] ; 3 uses
  %.sroa.099.6 = phi i1 [ true, %bb.ek ], [ false, %bb.ez ], [ true, %bb.fd ], [ true, %bb.fr ], [ true, %bb.gf ], [ true, %"_ZN4core3ptr47drop_in_place$LT$h2..frame..go_away..GoAway$GT$17h84def214b46b7b20E.exit401" ], [ true, %bb.hi ], [ true, %bb.hw ] ; 3 uses
  %.sroa.098.6 = phi i1 [ false, %bb.ek ], [ true, %bb.ez ], [ true, %bb.fd ], [ true, %bb.fr ], [ true, %bb.gf ], [ true, %"_ZN4core3ptr47drop_in_place$LT$h2..frame..go_away..GoAway$GT$17h84def214b46b7b20E.exit401" ], [ true, %bb.hi ], [ true, %bb.hw ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14210)
  %i.ady = load i64, ptr %i.gm, align 8, !range !210, !alias.scope !14210, !noalias !14213, !noundef !27
  %.not.i.i382 = icmp eq i64 %i.ady, 2
  br i1 %.not.i.i382, label %.noexc383, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.adz = getelementptr inbounds nuw i8, ptr %i.gm, i64 24
  invoke void @_ZN12tracing_core10dispatcher8Dispatch4exit17h66a7948e4d957dc0E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.gm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.adz)
          to label %.noexc383 unwind label %bb.x

.noexc383:                                        ; preds = %bb.eq, %bb.ep
  %i.aea = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9063ca422f1e9098E monotonic, align 1, !noalias !14213
  %i.aeb = icmp eq i8 %i.aea, 0
  br i1 %i.aeb, label %bb.er, label %"_ZN4core3ptr43drop_in_place$LT$tracing..span..Entered$GT$17h6542ed41f6ef1fd1E.exit"

bb.er:                                            ; preds = %.noexc383
  %i.aec = getelementptr inbounds nuw i8, ptr %i.gm, i64 32
  %i.aed = load ptr, ptr %i.aec, align 8, !alias.scope !14210, !noalias !14213, !align !148, !noundef !27 ; 3 uses
  %.not4.i.i = icmp eq ptr %i.aed, null
  br i1 %.not4.i.i, label %"_ZN4core3ptr43drop_in_place$LT$tracing..span..Entered$GT$17h6542ed41f6ef1fd1E.exit", label %bb.es

bb.es:                                            ; preds = %bb.er
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !14216
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !14216
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !14216
  %i.aee = getelementptr inbounds nuw i8, ptr %i.aed, i64 16
  %i.aef = load ptr, ptr %i.aee, align 8, !noalias !14213, !nonnull !27, !align !206, !noundef !27
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.aed, i64 24
  %i.aeh = load i64, ptr %i.aeg, align 8, !noalias !14213, !noundef !27
  store ptr %i.aef, ptr %i.d, align 8, !noalias !14216
  %i.aei = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.aeh, ptr %i.aei, align 8, !noalias !14216
  store ptr %i.d, ptr %i.e, align 8, !noalias !14216
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h46d4d467e9bdcd5cE", ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !14216
  store ptr @2098, ptr %i.f, align 8, !noalias !14216
  %i.aej = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 2, ptr %i.aej, align 8, !noalias !14216
  %i.aek = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr null, ptr %i.aek, align 8, !noalias !14216
  %i.ael = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.e, ptr %i.ael, align 8, !noalias !14216
  %i.aem = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 1, ptr %i.aem, align 8, !noalias !14216
  invoke fastcc void @_ZN7tracing4span4Span3log17hac48bcd7604f5552E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.gm, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2099, i64 noundef 21, ptr noalias noundef readonly align 8 captures(address) dereferenceable(48) %i.f)
          to label %.noexc384 unwind label %bb.x

.noexc384:                                        ; preds = %bb.es
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !14216
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !14216
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !14216
  br label %"_ZN4core3ptr43drop_in_place$LT$tracing..span..Entered$GT$17h6542ed41f6ef1fd1E.exit"

"_ZN4core3ptr120drop_in_place$LT$h2..frame..data..Data$LT$h2..proto..streams..prioritize..Prioritized$LT$bytes..bytes..Bytes$GT$$GT$$GT$17h8efdbc27f717b28dE.exit": ; preds = %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fv)
  call void @llvm.experimental.noalias.scope.decl(metadata !14217)
  %i.aen = load i64, ptr %i.gm, align 8, !range !210, !alias.scope !14217, !noalias !14220, !noundef !27
  %.not.i.i385 = icmp eq i64 %i.aen, 2
  br i1 %.not.i.i385, label %.noexc388, label %bb.et

bb.et:                                            ; preds = %"_ZN4core3ptr120drop_in_place$LT$h2..frame..data..Data$LT$h2..proto..streams..prioritize..Prioritized$LT$bytes..bytes..Bytes$GT$$GT$$GT$17h8efdbc27f717b28dE.exit"
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.gm, i64 24
  invoke void @_ZN12tracing_core10dispatcher8Dispatch4exit17h66a7948e4d957dc0E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.gm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aeo)
          to label %.noexc388 unwind label %bb.x

.noexc388:                                        ; preds = %bb.et, %"_ZN4core3ptr120drop_in_place$LT$h2..frame..data..Data$LT$h2..proto..streams..prioritize..Prioritized$LT$bytes..bytes..Bytes$GT$$GT$$GT$17h8efdbc27f717b28dE.exit"
  %i.aep = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9063ca422f1e9098E monotonic, align 1, !noalias !14220
  %i.aeq = icmp eq i8 %i.aep, 0
  br i1 %i.aeq, label %bb.eu, label %"_ZN4core3ptr43drop_in_place$LT$tracing..span..Entered$GT$17h6542ed41f6ef1fd1E.exit390"

bb.eu:                                            ; preds = %.noexc388
  %i.aer = getelementptr inbounds nuw i8, ptr %i.gm, i64 32
  %i.aes = load ptr, ptr %i.aer, align 8, !alias.scope !14217, !noalias !14220, !align !148, !noundef !27 ; 3 uses
  %.not4.i.i386 = icmp eq ptr %i.aes, null
  br i1 %.not4.i.i386, label %"_ZN4core3ptr43drop_in_place$LT$tracing..span..Entered$GT$17h6542ed41f6ef1fd1E.exit390", label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !14223
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !14223
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14223
  %i.aet = getelementptr inbounds nuw i8, ptr %i.aes, i64 16
  %i.aeu = load ptr, ptr %i.aet, align 8, !noalias !14220, !nonnull !27, !align !206, !noundef !27
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aes, i64 24
  %i.aew = load i64, ptr %i.aev, align 8, !noalias !14220, !noundef !27
  store ptr %i.aeu, ptr %i.a, align 8, !noalias !14223
  %i.aex = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.aew, ptr %i.aex, align 8, !noalias !14223
  store ptr %i.a, ptr %i.b, align 8, !noalias !14223
  %.sroa.43.0..sroa_idx.i.i387 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h46d4d467e9bdcd5cE", ptr %.sroa.43.0..sroa_idx.i.i387, align 8, !noalias !14223
  store ptr @2098, ptr %i.c, align 8, !noalias !14223
  %i.aey = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 2, ptr %i.aey, align 8, !noalias !14223
  %i.aez = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %i.aez, align 8, !noalias !14223
  %i.afa = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.b, ptr %i.afa, align 8, !noalias !14223
  %i.afb = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 1, ptr %i.afb, align 8, !noalias !14223
  invoke fastcc void @_ZN7tracing4span4Span3log17hac48bcd7604f5552E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.gm, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2099, i64 noundef 21, ptr noalias noundef readonly align 8 captures(address) dereferenceable(48) %i.c)
          to label %.noexc389 unwind label %bb.x

.noexc389:                                        ; preds = %bb.ev
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !14223
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14223
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !14223
  br label %"_ZN4core3ptr43drop_in_place$LT$tracing..span..Entered$GT$17h6542ed41f6ef1fd1E.exit390"

"_ZN4core3ptr43drop_in_place$LT$tracing..span..Entered$GT$17h6542ed41f6ef1fd1E.exit390": ; preds = %.noexc389, %bb.eu, %.noexc388
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$tracing..span..Span$GT$17h3b60b4793e7fa7f8E"(ptr noalias noundef align 8 dereferenceable(40) %i.gm)
          to label %bb.ew unwind label %bb.e

bb.ew:                                            ; preds = %"_ZN4core3ptr43drop_in_place$LT$tracing..span..Entered$GT$17h6542ed41f6ef1fd1E.exit390", %"_ZN4core3ptr43drop_in_place$LT$tracing..span..Entered$GT$17h6542ed41f6ef1fd1E.exit"
  %.sroa.0.0 = phi i8 [ 12, %"_ZN4core3ptr43drop_in_place$LT$tracing..span..Entered$GT$17h6542ed41f6ef1fd1E.exit" ], [ 2, %"_ZN4core3ptr43drop_in_place$LT$tracing..span..Entered$GT$17h6542ed41f6ef1fd1E.exit390" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gm)
  ret i8 %.sroa.0.0

"_ZN4core3ptr40drop_in_place$LT$bytes..bytes..Bytes$GT$17h502274557bcf9bdcE.exit.i.i355": ; preds = %.loopexit, %.loopexit.split-lp, %bb.du, %bb.dv
  %eh.lpad-body374 = phi { ptr, i32 } [ %i.aaw, %bb.dv ], [ %i.aav, %bb.du ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.experimental.noalias.scope.decl(metadata !14224)
  call void @llvm.experimental.noalias.scope.decl(metadata !14227)
  call void @llvm.experimental.noalias.scope.decl(metadata !14230)
  call void @llvm.experimental.noalias.scope.decl(metadata !14233)
  call void @llvm.experimental.noalias.scope.decl(metadata !14236)
  %i.afc = load ptr, ptr %i.fv, align 8, !alias.scope !14239, !nonnull !27, !align !148, !noundef !27
  %i.afd = getelementptr inbounds nuw i8, ptr %i.afc, i64 32
  %i.afe = load ptr, ptr %i.afd, align 8, !noalias !14239, !nonnull !27, !noundef !27
  %i.aff = getelementptr inbounds nuw i8, ptr %i.fv, i64 24
  %i.afg = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %i.afh = load ptr, ptr %i.afg, align 8, !alias.scope !14239, !noundef !27
  %i.afi = load i64, ptr %i.yz, align 8, !alias.scope !14239, !noundef !27
  invoke void %i.afe(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aff, ptr noundef %i.afh, i64 noundef %i.afi)
          to label %"_ZN4core3ptr120drop_in_place$LT$h2..frame..data..Data$LT$h2..proto..streams..prioritize..Prioritized$LT$bytes..bytes..Bytes$GT$$GT$$GT$17h8efdbc27f717b28dE.exit392" unwind label %bb.u, !inline_history !14097

bb.ex:                                            ; preds = %bb.aq
  %i.afj = load ptr, ptr %i.fo, align 8, !noundef !27
  %.not217 = icmp eq ptr %i.afj, null
  br i1 %.not217, label %bb.ez, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  call void @llvm.experimental.noalias.scope.decl(metadata !14240)
  %i.afk = load i8, ptr %i.go, align 1, !range !178, !alias.scope !14240, !noundef !27
  %i.afl = icmp eq i8 %i.afk, 3
  br i1 %i.afl, label %"_ZN4core3ptr156drop_in_place$LT$core..option..Option$LT$h2..codec..framed_write..Next$LT$h2..proto..streams..prioritize..Prioritized$LT$bytes..bytes..Bytes$GT$$GT$$GT$$GT$17h3b0fab91e22699bfE.exit395", label %"_ZN4core3ptr128drop_in_place$LT$h2..codec..framed_write..Next$LT$h2..proto..streams..prioritize..Prioritized$LT$bytes..bytes..Bytes$GT$$GT$$GT$17he59d8ebfb4b26ec5E.exit.i393"

"_ZN4core3ptr128drop_in_place$LT$h2..codec..framed_write..Next$LT$h2..proto..streams..prioritize..Prioritized$LT$bytes..bytes..Bytes$GT$$GT$$GT$17he59d8ebfb4b26ec5E.exit.i393": ; preds = %bb.ey
  call void @llvm.experimental.noalias.scope.decl(metadata !14243)
  %i.afm = load ptr, ptr %i.gn, align 8, !alias.scope !14246, !nonnull !27, !align !148, !noundef !27
  %i.afn = getelementptr inbounds nuw i8, ptr %i.afm, i64 32
  %i.afo = load ptr, ptr %i.afn, align 8, !noalias !14246, !nonnull !27, !noundef !27
  %i.afp = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.afq = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.afr = load ptr, ptr %i.afq, align 8, !alias.scope !14246, !noundef !27
  %i.afs = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.aft = load i64, ptr %i.afs, align 8, !alias.scope !14246, !noundef !27
  invoke void %i.afo(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.afp, ptr noundef %i.afr, i64 noundef %i.aft)
          to label %"_ZN4core3ptr156drop_in_place$LT$core..option..Option$LT$h2..codec..framed_write..Next$LT$h2..proto..streams..prioritize..Prioritized$LT$bytes..bytes..Bytes$GT$$GT$$GT$$GT$17h3b0fab91e22699bfE.exit395" unwind label %bb.fa, !inline_history !13887

bb.ez:                                            ; preds = %"_ZN4core3ptr156drop_in_place$LT$core..option..Option$LT$h2..codec..framed_write..Next$LT$h2..proto..streams..prioritize..Prioritized$LT$bytes..bytes..Bytes$GT$$GT$$GT$$GT$17h3b0fab91e22699bfE.exit395", %bb.ex
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fp)
end_hunk_1
begin_hunk_2_@"_ZN2h25codec12framed_write24FramedWrite$LT$T$C$B$GT$5flush17h507df6486ee2ee0eE":bb.a
  %i.dr = icmp samesign ugt i64 %i.dp, 4
  br i1 %i.dr, label %bb.ac, label %bb.ah

bb.ac:                                            ; preds = %bb.ab
  %i.ds = load ptr, ptr @"_ZN2h25codec12framed_write24FramedWrite$LT$T$C$B$GT$5flush10__CALLSITE17hedb3f600f247f056E", align 8, !nonnull !27, !align !148, !noundef !27 ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 32
  %i.du = load ptr, ptr %i.dt, align 8, !nonnull !27, !align !206, !noundef !27
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 40
  %i.dw = load i64, ptr %i.dv, align 8, !noundef !27
  store i64 5, ptr %i.ak, align 8
  store ptr %i.du, ptr %.sroa.5111.0..sroa_idx, align 8
  store i64 %i.dw, ptr %.sroa.7.0..sroa_idx, align 8
  %i.dx = invoke { ptr, ptr } @_ZN3log6logger17hcebe01820b13d6ccE()
          to label %bb.ad unwind label %.loopexit ; 2 uses

bb.ad:                                            ; preds = %bb.ac
  %i.dy = extractvalue { ptr, ptr } %i.dx, 0      ; 2 uses
  %i.dz = extractvalue { ptr, ptr } %i.dx, 1      ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  %i.eb = load ptr, ptr %i.ea, align 8, !invariant.load !27, !nonnull !27
  %i.ec = invoke noundef zeroext i1 %i.eb(ptr noundef align 1 %i.dy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ak)
          to label %bb.ae unwind label %.loopexit

bb.ae:                                            ; preds = %bb.ad
  br i1 %i.ec, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  %i.ed = load ptr, ptr @"_ZN2h25codec12framed_write24FramedWrite$LT$T$C$B$GT$5flush10__CALLSITE17hedb3f600f247f056E", align 8, !nonnull !27, !align !148, !noundef !27
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 48
  store i64 1, ptr %i.aj, align 8
  store ptr @705, ptr %.sroa.484.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.585.0..sroa_idx, align 8
  store ptr %i.ee, ptr %i.ch, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i64 24, i1 false)
  invoke void @_ZN7tracing15__macro_support13__tracing_log17he6e71def31f38619E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ds, ptr noundef nonnull align 1 %i.dy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.dz, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.y, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aj)
          to label %bb.ag unwind label %.loopexit

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ae, %bb.ag, %bb.ab, %.thread193, %bb.at
  %.val1.i.i.i.i.i = load i64, ptr %i.ca, align 8, !alias.scope !14282, !noalias !14285, !noundef !27 ; 3 uses
  %i.ef = load i64, ptr %i.cb, align 8, !alias.scope !14282, !noalias !14285, !noundef !27 ; 4 uses
  %i.eg = call noundef i64 @llvm.usub.sat.i64(i64 %.val1.i.i.i.i.i, i64 %i.ef)
  %.val.i.i.i.i = load i64, ptr %i.cc, align 8, !noalias !14285, !noundef !27 ; 2 uses
  %.val1.i.i.i.i = load i64, ptr %i.cd, align 8, !noalias !14285, !noundef !27 ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.val1.i.i.i.i, i64 %.val.i.i.i.i) ; 2 uses
  %i.eh = or i64 %.sroa.0.0.i.i.i.i.i.i, %i.eg
  %.not.i143 = icmp eq i64 %i.eh, 0
  br i1 %.not.i143, label %.thread204, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !14285
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aj, %bb.ai
  %i.ei = phi i64 [ 0, %bb.ai ], [ %i.eu, %bb.aj ] ; 5 uses
  %i.ej = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.ei ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.ej, align 8, !noalias !14285
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  store i64 0, ptr %i.ek, align 8, !noalias !14285
  %i.el = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.ei ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %i.em, align 8, !noalias !14285
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 24
  store i64 0, ptr %i.en, align 8, !noalias !14285
  %i.eo = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.ei ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 32
  store ptr inttoptr (i64 1 to ptr), ptr %i.ep, align 8, !noalias !14285
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 40
  store i64 0, ptr %i.eq, align 8, !noalias !14285
  %i.er = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.ei ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 48
  store ptr inttoptr (i64 1 to ptr), ptr %i.es, align 8, !noalias !14285
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 56
  store i64 0, ptr %i.et, align 8, !noalias !14285
  %i.eu = add nuw nsw i64 %i.ei, 4                ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.eu, 64
  br i1 %exitcond.not.i.3, label %bb.ak, label %bb.aj

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.experimental.noalias.scope.decl(metadata !14289)
  call void @llvm.experimental.noalias.scope.decl(metadata !14292)
  call void @llvm.experimental.noalias.scope.decl(metadata !14295)
  call void @llvm.experimental.noalias.scope.decl(metadata !14298)
  %i.ev = icmp ugt i64 %.val1.i.i.i.i.i, %i.ef
  br i1 %i.ev, label %bb.al, label %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$15chunks_vectored17h7a162ec1a09b98e7E.exit.i.i"

bb.al:                                            ; preds = %bb.ak
  %.val.i.i.i.i.i = load ptr, ptr %i.cf, align 8, !alias.scope !14300, !noalias !14303, !nonnull !27, !noundef !27
  %i.ew = sub nuw i64 %.val1.i.i.i.i.i, %i.ef
  %i.ex = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.ef
  store ptr %i.ex, ptr %i.q, align 8, !alias.scope !14304, !noalias !14305
  store i64 %i.ew, ptr %i.ci, align 8, !alias.scope !14304, !noalias !14305
  br label %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$15chunks_vectored17h7a162ec1a09b98e7E.exit.i.i"

"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$15chunks_vectored17h7a162ec1a09b98e7E.exit.i.i": ; preds = %bb.al, %bb.ak
  %.sroa.0.0.i.i.i.sroa.phi.i = phi ptr [ %.sroa.0.0.i.i.i.sroa.gep.i, %bb.al ], [ %i.q, %bb.ak ] ; 2 uses
  %.sroa.0.0.i.i.i.i144 = phi i64 [ 1, %bb.al ], [ 0, %bb.ak ]
  call void @llvm.experimental.noalias.scope.decl(metadata !14306)
  call void @llvm.experimental.noalias.scope.decl(metadata !14309)
  call void @llvm.experimental.noalias.scope.decl(metadata !14312)
  %i.ey = icmp eq i64 %.val1.i.i.i.i, 0
  %.not.i.i.i.i.i.i = icmp eq i64 %.val.i.i.i.i, 0
  %or.cond.i = or i1 %.not.i.i.i.i.i.i, %i.ey
  br i1 %or.cond.i, label %"_ZN83_$LT$bytes..buf..chain..Chain$LT$T$C$U$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$15chunks_vectored17hcf9eff86d87c35ccE.exit.i", label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$15chunks_vectored17h7a162ec1a09b98e7E.exit.i.i"
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.cj, align 8, !noalias !14315, !noundef !27
  store ptr %.val1.i.i.i.i.i.i, ptr %.sroa.0.0.i.i.i.sroa.phi.i, align 8, !alias.scope !14318, !noalias !14285
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.sroa.phi.i, i64 8
  store i64 %.sroa.0.0.i.i.i.i.i.i, ptr %i.ez, align 8, !alias.scope !14318, !noalias !14285
  br label %"_ZN83_$LT$bytes..buf..chain..Chain$LT$T$C$U$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$15chunks_vectored17hcf9eff86d87c35ccE.exit.i"

"_ZN83_$LT$bytes..buf..chain..Chain$LT$T$C$U$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$15chunks_vectored17hcf9eff86d87c35ccE.exit.i": ; preds = %.lr.ph.preheader.i.i.i.i.i, %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$15chunks_vectored17h7a162ec1a09b98e7E.exit.i.i"
  %.sroa.0.0.i.i.i.i.i = phi i64 [ 0, %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$15chunks_vectored17h7a162ec1a09b98e7E.exit.i.i" ], [ 1, %.lr.ph.preheader.i.i.i.i.i ]
  %i.fa = add nuw nsw i64 %.sroa.0.0.i.i.i.i.i, %.sroa.0.0.i.i.i.i144
  %i.fb = invoke { i64, ptr } @"_ZN89_$LT$tokio..net..tcp..stream..TcpStream$u20$as$u20$tokio..io..async_write..AsyncWrite$GT$19poll_write_vectored17h5ccb24d75bd1f638E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.q, i64 noundef %i.fa)
          to label %.noexc145 unwind label %.loopexit ; 2 uses

.noexc145:                                        ; preds = %"_ZN83_$LT$bytes..buf..chain..Chain$LT$T$C$U$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$15chunks_vectored17hcf9eff86d87c35ccE.exit.i"
  %i.fc = extractvalue { i64, ptr } %i.fb, 0      ; 2 uses
  %i.fd = extractvalue { i64, ptr } %i.fb, 1      ; 5 uses
  %i.fe = icmp eq i64 %i.fc, 2
  br i1 %i.fe, label %bb.au, label %bb.am

bb.am:                                            ; preds = %.noexc145
  %i.ff = ptrtoint ptr %i.fd to i64               ; 4 uses
  %i.fg = trunc nuw i64 %i.fc to i1
  br i1 %i.fg, label %bb.av, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !14285
  %.val1.i.i.i26.i = load i64, ptr %i.ca, align 8, !alias.scope !14319, !noalias !14285, !noundef !27 ; 2 uses
  %i.fh = load i64, ptr %i.cb, align 8, !alias.scope !14319, !noalias !14285, !noundef !27 ; 4 uses
  %i.fi = call i64 @llvm.usub.sat.i64(i64 %.val1.i.i.i26.i, i64 %i.fh) ; 3 uses
  %.not1.i.i = icmp ugt i64 %.val1.i.i.i26.i, %i.fh
  br i1 %.not1.i.i, label %bb.as, label %bb.ao

bb.ao:                                            ; preds = %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17hc53c079e50df91cdE.exit.i.i", %bb.an
  %.sroa.0.0.i.i = phi i64 [ %i.ff, %bb.an ], [ %i.fv, %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17hc53c079e50df91cdE.exit.i.i" ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14322)
  call void @llvm.experimental.noalias.scope.decl(metadata !14325)
  %i.fj = load i64, ptr %i.cd, align 8, !alias.scope !14328, !noalias !14285, !noundef !27 ; 2 uses
  %.not.i.i.i.i.i = icmp ugt i64 %.sroa.0.0.i.i, %i.fj
  br i1 %.not.i.i.i.i.i, label %bb.ap, label %bb.aq, !prof !29

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2056, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2057) #43
          to label %.noexc146 unwind label %.loopexit.split-lp

.noexc146:                                        ; preds = %bb.ap
  unreachable

bb.aq:                                            ; preds = %bb.ao
  call void @llvm.experimental.noalias.scope.decl(metadata !14329)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !14332
  store i64 %.sroa.0.0.i.i, ptr %i.p, align 8, !noalias !14333
  %i.fk = load i64, ptr %i.cc, align 8, !alias.scope !14334, !noalias !14285, !noundef !27 ; 3 uses
  %.not.i.i.i.i.i27.i = icmp ugt i64 %.sroa.0.0.i.i, %i.fk
  br i1 %.not.i.i.i.i.i27.i, label %bb.ar, label %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17h1040aee0a5d4d8aeE.exit.i.i", !prof !29

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !14333
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !14333
  store i64 %i.fk, ptr %i.n, align 8, !noalias !14333
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !14333
  store ptr %i.p, ptr %i.m, align 8, !noalias !14333
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hfbad01e72c46968eE", ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !14333
  %i.fl = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %i.n, ptr %i.fl, align 8, !noalias !14333
  %.sroa.46.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hfbad01e72c46968eE", ptr %.sroa.46.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !14333
  store ptr @1430, ptr %i.o, align 8, !noalias !14333
  %i.fm = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 2, ptr %i.fm, align 8, !noalias !14333
  %i.fn = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store ptr null, ptr %i.fn, align 8, !noalias !14333
  %i.fo = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %i.m, ptr %i.fo, align 8, !noalias !14333
  %i.fp = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i64 2, ptr %i.fp, align 8, !noalias !14333
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1431) #43
          to label %.noexc147 unwind label %.loopexit.split-lp

.noexc147:                                        ; preds = %bb.ar
  unreachable

"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17h1040aee0a5d4d8aeE.exit.i.i": ; preds = %bb.aq
  %i.fq = sub nuw i64 %i.fk, %.sroa.0.0.i.i
  store i64 %i.fq, ptr %i.cc, align 8, !alias.scope !14334, !noalias !14285
  %i.fr = load ptr, ptr %i.cj, align 8, !alias.scope !14334, !noalias !14285, !noundef !27
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 %.sroa.0.0.i.i
  store ptr %i.fs, ptr %i.cj, align 8, !alias.scope !14334, !noalias !14285
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !14332
  %i.ft = sub nuw i64 %i.fj, %.sroa.0.0.i.i
  store i64 %i.ft, ptr %i.cd, align 8, !alias.scope !14328, !noalias !14285
  br label %.thread213

bb.as:                                            ; preds = %bb.an
  %.not.i.i = icmp ult i64 %i.fi, %i.ff
  br i1 %.not.i.i, label %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17hc53c079e50df91cdE.exit.i.i", label %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17hc53c079e50df91cdE.exit9.i.i"

"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17hc53c079e50df91cdE.exit.i.i": ; preds = %bb.as
  %i.fu = add i64 %i.fi, %i.fh
  store i64 %i.fu, ptr %i.cb, align 8, !alias.scope !14335, !noalias !14285
  %i.fv = sub nuw i64 %i.ff, %i.fi
  br label %bb.ao

"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17hc53c079e50df91cdE.exit9.i.i": ; preds = %bb.as
  %i.fw = add i64 %i.fh, %i.ff
  store i64 %i.fw, ptr %i.cb, align 8, !alias.scope !14338, !noalias !14285
  br label %.thread213

bb.at:                                            ; preds = %.noexc142, %.noexc141, %bb.y, %.noexc139
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  br label %bb.ah

bb.au:                                            ; preds = %.noexc145
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !14285
  br label %bb.bu

bb.av:                                            ; preds = %bb.am
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fd) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !14285
  br label %bb.bu

.thread213:                                       ; preds = %"_ZN78_$LT$std..io..cursor..Cursor$LT$T$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17hc9a0af60f789511dE.exit.i", %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17hc53c079e50df91cdE.exit9.i.i", %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17h1040aee0a5d4d8aeE.exit.i.i"
  %.sroa.010.0.in = phi ptr [ %i.fd, %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17h1040aee0a5d4d8aeE.exit.i.i" ], [ %i.fd, %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17hc53c079e50df91cdE.exit9.i.i" ], [ %i.ih, %"_ZN78_$LT$std..io..cursor..Cursor$LT$T$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17hc9a0af60f789511dE.exit.i" ]
  %i.fx = icmp eq ptr %.sroa.010.0.in, null
  br i1 %i.fx, label %.thread204, label %.backedge.backedge

bb.aw:                                            ; preds = %.split
  %i.fy = load atomic i64, ptr @_ZN12tracing_core8metadata9MAX_LEVEL17h3c62bc6fa7dc27b1E monotonic, align 8
  %i.fz = icmp eq i64 %i.fy, 0
  br i1 %i.fz, label %bb.ax, label %.thread210

bb.ax:                                            ; preds = %bb.aw
  %i.ga = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @"_ZN2h25codec12framed_write24FramedWrite$LT$T$C$B$GT$5flush10__CALLSITE17hd933acc6750a64a1E", i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.ga, label %bb.ay [
    i8 0, label %.thread210
    i8 1, label %.thread207
    i8 2, label %.thread207
  ], !prof !390

bb.ay:                                            ; preds = %bb.ax
  %i.gb = invoke noundef i8 @_ZN12tracing_core8callsite15DefaultCallsite8register17hfea5cd845fb2ec3aE(ptr noundef nonnull align 8 @"_ZN2h25codec12framed_write24FramedWrite$LT$T$C$B$GT$5flush10__CALLSITE17hd933acc6750a64a1E")
          to label %bb.az unwind label %.loopexit ; 2 uses

bb.az:                                            ; preds = %bb.ay
  %i.gc = icmp eq i8 %i.gb, 0
  br i1 %i.gc, label %.thread210, label %.thread207

.thread207:                                       ; preds = %bb.ax, %bb.ax, %bb.az
  %.sroa.036.0209 = phi i8 [ %i.gb, %bb.az ], [ %i.ga, %bb.ax ], [ %i.ga, %bb.ax ]
  %i.gd = load ptr, ptr @"_ZN2h25codec12framed_write24FramedWrite$LT$T$C$B$GT$5flush10__CALLSITE17hd933acc6750a64a1E", align 8, !nonnull !27, !align !148, !noundef !27
  %i.ge = invoke noundef zeroext i1 @_ZN7tracing15__macro_support12__is_enabled17ha8d49a956677b3d5E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.gd, i8 noundef %.sroa.036.0209)
          to label %bb.ba unwind label %.loopexit

bb.ba:                                            ; preds = %.thread207
  br i1 %i.ge, label %bb.bb, label %.thread210

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  %i.gf = load ptr, ptr @"_ZN2h25codec12framed_write24FramedWrite$LT$T$C$B$GT$5flush10__CALLSITE17hd933acc6750a64a1E", align 8, !nonnull !27, !align !148, !noundef !27 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 48
  store i64 1, ptr %i.ai, align 8
  store ptr @707, ptr %.sroa.038.sroa.4.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.038.sroa.5.0..sroa_idx, align 8
  store ptr %i.gg, ptr %.sroa.439.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  invoke void @_ZN12tracing_core5event5Event8dispatch17hf7c16d63cd6ca6adE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.gf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ai)
          to label %.noexc151 unwind label %.loopexit

.noexc151:                                        ; preds = %bb.bb
  %i.gh = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9063ca422f1e9098E monotonic, align 1, !noalias !14341
  %i.gi = icmp eq i8 %i.gh, 0
  br i1 %i.gi, label %bb.bc, label %bb.br

bb.bc:                                            ; preds = %.noexc151
  %i.gj = load atomic i64, ptr @_ZN3log20MAX_LOG_LEVEL_FILTER17h390a9bab74993d26E monotonic, align 8, !noalias !14341 ; 2 uses
  %i.gk = icmp ult i64 %i.gj, 6
  call void @llvm.assume(i1 %i.gk)
  %i.gl = icmp samesign ugt i64 %i.gj, 4
  br i1 %i.gl, label %bb.bd, label %bb.br

bb.bd:                                            ; preds = %bb.bc
  %i.gm = load ptr, ptr @"_ZN2h25codec12framed_write24FramedWrite$LT$T$C$B$GT$5flush10__CALLSITE17hd933acc6750a64a1E", align 8, !noalias !14341, !nonnull !27, !align !148, !noundef !27 ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 32
  %i.go = load ptr, ptr %i.gn, align 8, !nonnull !27, !align !206, !noundef !27
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gm, i64 40
  %i.gq = load i64, ptr %i.gp, align 8, !noundef !27
  store i64 5, ptr %i.l, align 8, !noalias !14341
  store ptr %i.go, ptr %.sroa.52.0..sroa_idx.i149, align 8, !noalias !14341
  store i64 %i.gq, ptr %.sroa.7.0..sroa_idx.i150, align 8, !noalias !14341
  %i.gr = invoke { ptr, ptr } @_ZN3log6logger17hcebe01820b13d6ccE()
          to label %.noexc152 unwind label %.loopexit ; 2 uses

.noexc152:                                        ; preds = %bb.bd
  %i.gs = extractvalue { ptr, ptr } %i.gr, 0      ; 2 uses
  %i.gt = extractvalue { ptr, ptr } %i.gr, 1      ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 24
  %i.gv = load ptr, ptr %i.gu, align 8, !invariant.load !27, !nonnull !27
  %i.gw = invoke noundef zeroext i1 %i.gv(ptr noundef align 1 %i.gs, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.l)
          to label %.noexc153 unwind label %.loopexit, !inline_history !14344

.noexc153:                                        ; preds = %.noexc152
  br i1 %i.gw, label %bb.be, label %bb.br

bb.be:                                            ; preds = %.noexc153
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !14341
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !14341
  invoke void @_ZN7tracing15__macro_support13__tracing_log17he6e71def31f38619E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.gm, ptr noundef nonnull align 1 %i.gs, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.gt, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ai)
          to label %.noexc154 unwind label %.loopexit

.noexc154:                                        ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !14341
  br label %bb.br

.thread210:                                       ; preds = %bb.ax, %bb.aw, %bb.ba, %bb.az
  %i.gx = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9063ca422f1e9098E monotonic, align 1
  %i.gy = icmp eq i8 %i.gx, 0
  br i1 %i.gy, label %bb.bf, label %bb.bl

bb.bf:                                            ; preds = %.thread210
  %i.gz = load atomic i64, ptr @_ZN3log20MAX_LOG_LEVEL_FILTER17h390a9bab74993d26E monotonic, align 8 ; 2 uses
  %i.ha = icmp ult i64 %i.gz, 6
  call void @llvm.assume(i1 %i.ha)
  %i.hb = icmp samesign ugt i64 %i.gz, 4
  br i1 %i.hb, label %bb.bg, label %bb.bl

bb.bg:                                            ; preds = %bb.bf
  %i.hc = load ptr, ptr @"_ZN2h25codec12framed_write24FramedWrite$LT$T$C$B$GT$5flush10__CALLSITE17hd933acc6750a64a1E", align 8, !nonnull !27, !align !148, !noundef !27 ; 3 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 32
  %i.he = load ptr, ptr %i.hd, align 8, !nonnull !27, !align !206, !noundef !27
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hc, i64 40
  %i.hg = load i64, ptr %i.hf, align 8, !noundef !27
  store i64 5, ptr %i.ah, align 8
  store ptr %i.he, ptr %.sroa.5115.0..sroa_idx, align 8
  store i64 %i.hg, ptr %.sroa.7116.0..sroa_idx, align 8
  %i.hh = invoke { ptr, ptr } @_ZN3log6logger17hcebe01820b13d6ccE()
          to label %bb.bh unwind label %.loopexit ; 2 uses

bb.bh:                                            ; preds = %bb.bg
  %i.hi = extractvalue { ptr, ptr } %i.hh, 0      ; 2 uses
  %i.hj = extractvalue { ptr, ptr } %i.hh, 1      ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 24
  %i.hl = load ptr, ptr %i.hk, align 8, !invariant.load !27, !nonnull !27
  %i.hm = invoke noundef zeroext i1 %i.hl(ptr noundef align 1 %i.hi, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ah)
          to label %bb.bi unwind label %.loopexit

bb.bi:                                            ; preds = %bb.bh
  br i1 %i.hm, label %bb.bj, label %bb.bl

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  %i.hn = load ptr, ptr @"_ZN2h25codec12framed_write24FramedWrite$LT$T$C$B$GT$5flush10__CALLSITE17hd933acc6750a64a1E", align 8, !nonnull !27, !align !148, !noundef !27
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 48
  store i64 1, ptr %i.ag, align 8
  store ptr @707, ptr %.sroa.494.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.595.0..sroa_idx, align 8
  store ptr %i.ho, ptr %i.ce, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false)
  invoke void @_ZN7tracing15__macro_support13__tracing_log17he6e71def31f38619E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.hc, ptr noundef nonnull align 1 %i.hi, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.hj, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.x, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ag)
          to label %bb.bk unwind label %.loopexit

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bi, %bb.bk, %bb.bf, %.thread210, %bb.br
  call void @llvm.experimental.noalias.scope.decl(metadata !14345)
  %.val.i157 = load i64, ptr %i.ca, align 8, !alias.scope !14348, !noalias !14351, !noundef !27 ; 3 uses
  %.val19.i = load i64, ptr %i.cb, align 8, !alias.scope !14348, !noalias !14351, !noundef !27 ; 5 uses
  %i.hp = icmp ugt i64 %.val.i157, %.val19.i
  br i1 %i.hp, label %bb.bm, label %.thread204

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !14354
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bn, %bb.bm
  %i.hq = phi i64 [ 0, %bb.bm ], [ %i.ic, %bb.bn ] ; 5 uses
  %i.hr = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.hq ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.hr, align 8, !noalias !14354
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  store i64 0, ptr %i.hs, align 8, !noalias !14354
  %i.ht = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.hq ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %i.hu, align 8, !noalias !14354
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ht, i64 24
  store i64 0, ptr %i.hv, align 8, !noalias !14354
  %i.hw = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.hq ; 2 uses
end_hunk_2
begin_hunk_3_@"_ZN2h25codec12framed_write24FramedWrite$LT$T$C$B$GT$5flush17hdbe3187738ef2784E":bb.a
  store ptr inttoptr (i64 1 to ptr), ptr %i.es, align 8, !noalias !14401
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  store i64 0, ptr %i.et, align 8, !noalias !14401
  %i.eu = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %i.er ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %i.ev, align 8, !noalias !14401
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 24
  store i64 0, ptr %i.ew, align 8, !noalias !14401
  %i.ex = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %i.er ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 32
  store ptr inttoptr (i64 1 to ptr), ptr %i.ey, align 8, !noalias !14401
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 40
  store i64 0, ptr %i.ez, align 8, !noalias !14401
  %i.fa = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %i.er ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 48
  store ptr inttoptr (i64 1 to ptr), ptr %i.fb, align 8, !noalias !14401
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 56
  store i64 0, ptr %i.fc, align 8, !noalias !14401
  %i.fd = add nuw nsw i64 %i.er, 4                ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.fd, 64
  br i1 %exitcond.not.i.3, label %bb.aj, label %bb.ai

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.experimental.noalias.scope.decl(metadata !14403)
  call void @llvm.experimental.noalias.scope.decl(metadata !14406)
  call void @llvm.experimental.noalias.scope.decl(metadata !14409)
  call void @llvm.experimental.noalias.scope.decl(metadata !14412)
  %i.fe = icmp ugt i64 %.val1.i.i.i.i.i, %i.eo
  br i1 %i.fe, label %bb.ak, label %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$15chunks_vectored17h7a162ec1a09b98e7E.exit.i.i"

bb.ak:                                            ; preds = %bb.aj
  %.val.i.i.i.i.i = load ptr, ptr %i.ci, align 8, !alias.scope !14414, !noalias !14417, !nonnull !27, !noundef !27
  %i.ff = sub nuw i64 %.val1.i.i.i.i.i, %i.eo
  %i.fg = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.eo
  store ptr %i.fg, ptr %i.t, align 8, !alias.scope !14418, !noalias !14419
  store i64 %i.ff, ptr %i.co, align 8, !alias.scope !14418, !noalias !14419
  br label %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$15chunks_vectored17h7a162ec1a09b98e7E.exit.i.i"

"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$15chunks_vectored17h7a162ec1a09b98e7E.exit.i.i": ; preds = %bb.ak, %bb.aj
  %.sroa.0.0.i.i.i.sroa.phi.i = phi ptr [ %.sroa.0.0.i.i.i.sroa.gep.i, %bb.ak ], [ %i.t, %bb.aj ] ; 2 uses
  %.sroa.0.0.i.i.i.i146 = phi i64 [ 1, %bb.ak ], [ 0, %bb.aj ]
  call void @llvm.experimental.noalias.scope.decl(metadata !14420)
  call void @llvm.experimental.noalias.scope.decl(metadata !14423)
  call void @llvm.experimental.noalias.scope.decl(metadata !14426)
  %i.fh = icmp eq i64 %.val1.i.i.i.i, 0
  %.not.i.i.i.i.i.i = icmp eq i64 %.val.i.i.i.i, 0
  %or.cond.i = or i1 %.not.i.i.i.i.i.i, %i.fh
  br i1 %or.cond.i, label %"_ZN83_$LT$bytes..buf..chain..Chain$LT$T$C$U$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$15chunks_vectored17hcf9eff86d87c35ccE.exit.i", label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$15chunks_vectored17h7a162ec1a09b98e7E.exit.i.i"
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.cp, align 8, !noalias !14429, !noundef !27
  store ptr %.val1.i.i.i.i.i.i, ptr %.sroa.0.0.i.i.i.sroa.phi.i, align 8, !alias.scope !14432, !noalias !14401
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.sroa.phi.i, i64 8
  store i64 %.sroa.0.0.i.i.i.i.i.i, ptr %i.fi, align 8, !alias.scope !14432, !noalias !14401
  br label %"_ZN83_$LT$bytes..buf..chain..Chain$LT$T$C$U$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$15chunks_vectored17hcf9eff86d87c35ccE.exit.i"

"_ZN83_$LT$bytes..buf..chain..Chain$LT$T$C$U$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$15chunks_vectored17hcf9eff86d87c35ccE.exit.i": ; preds = %.lr.ph.preheader.i.i.i.i.i, %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$15chunks_vectored17h7a162ec1a09b98e7E.exit.i.i"
  %.sroa.0.0.i.i.i.i.i = phi i64 [ 0, %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$15chunks_vectored17h7a162ec1a09b98e7E.exit.i.i" ], [ 1, %.lr.ph.preheader.i.i.i.i.i ]
  %i.fj = add nuw nsw i64 %.sroa.0.0.i.i.i.i.i, %.sroa.0.0.i.i.i.i146 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14433)
  call void @llvm.experimental.noalias.scope.decl(metadata !14436)
  call void @llvm.experimental.noalias.scope.decl(metadata !14438)
  call void @llvm.experimental.noalias.scope.decl(metadata !14441)
  call void @llvm.experimental.noalias.scope.decl(metadata !14443)
  %i.fk = icmp eq i64 %i.fj, 0
  br i1 %i.fk, label %"_ZN106_$LT$actix_tls..accept..rustls_0_23..TlsStream$LT$IO$GT$$u20$as$u20$tokio..io..async_write..AsyncWrite$GT$19poll_write_vectored17h8d4e2c7956a65500E.exit.thread.thread.i", label %.lr.ph

bb.al:                                            ; preds = %.lr.ph
  %i.fl = icmp eq i64 %i.fj, 1
  %.val.i.i.i.i26.i.1 = load i64, ptr %i.cs, align 8
  %i.fm = icmp eq i64 %.val.i.i.i.i26.i.1, 0
  %or.cond = select i1 %i.fl, i1 true, i1 %i.fm
  br i1 %or.cond, label %"_ZN106_$LT$actix_tls..accept..rustls_0_23..TlsStream$LT$IO$GT$$u20$as$u20$tokio..io..async_write..AsyncWrite$GT$19poll_write_vectored17h8d4e2c7956a65500E.exit.thread.thread.i", label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3all17hbea1e6dfd1771b0aE.exit.i.i.i.i.preheader"

.lr.ph:                                           ; preds = %"_ZN83_$LT$bytes..buf..chain..Chain$LT$T$C$U$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$15chunks_vectored17hcf9eff86d87c35ccE.exit.i"
  %.val.i.i.i.i26.i = load i64, ptr %i.cr, align 8, !alias.scope !14446, !noalias !14447, !noundef !27
  %i.fn = icmp eq i64 %.val.i.i.i.i26.i, 0
  br i1 %i.fn, label %bb.al, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3all17hbea1e6dfd1771b0aE.exit.i.i.i.i.preheader"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3all17hbea1e6dfd1771b0aE.exit.i.i.i.i.preheader": ; preds = %bb.al, %.lr.ph
  br label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3all17hbea1e6dfd1771b0aE.exit.i.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3all17hbea1e6dfd1771b0aE.exit.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3all17hbea1e6dfd1771b0aE.exit.i.i.i.i.preheader", %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !14453
  store ptr %i.ck, ptr %i.s, align 8, !noalias !14453
  store ptr @2203, ptr %i.cq, align 8, !noalias !14453
  %i.fo = invoke { i64, ptr } @"_ZN67_$LT$rustls..conn..connection..Writer$u20$as$u20$std..io..Write$GT$14write_vectored17hb9072ed3480c9cfbE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.s, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.t, i64 noundef range(i64 0, 65) %i.fj)
          to label %.noexc147 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc147:                                        ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3all17hbea1e6dfd1771b0aE.exit.i.i.i.i"
  %i.fp = extractvalue { i64, ptr } %i.fo, 0
  %i.fq = extractvalue { i64, ptr } %i.fo, 1      ; 6 uses
  %i.fr = trunc nuw i64 %i.fp to i1
  br i1 %i.fr, label %"_ZN106_$LT$actix_tls..accept..rustls_0_23..TlsStream$LT$IO$GT$$u20$as$u20$tokio..io..async_write..AsyncWrite$GT$19poll_write_vectored17h8d4e2c7956a65500E.exit.thread.thread12.i", label %bb.am

"_ZN106_$LT$actix_tls..accept..rustls_0_23..TlsStream$LT$IO$GT$$u20$as$u20$tokio..io..async_write..AsyncWrite$GT$19poll_write_vectored17h8d4e2c7956a65500E.exit.thread.thread12.i": ; preds = %.noexc147
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fq) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !14453
  br label %.loopexit253

bb.am:                                            ; preds = %.noexc147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !14453
  br label %bb.an

bb.an:                                            ; preds = %bb.aq, %bb.am
  %i.fs = load i64, ptr %i.cm, align 8, !alias.scope !14454, !noalias !14455, !noundef !27
  %.not.not.i.i.i.i = icmp eq i64 %i.fs, 0
  br i1 %.not.not.i.i.i.i, label %bb.ao, label %bb.ap

.thread.i.i.i.i:                                  ; preds = %bb.aq, %.noexc148
  %.not5.i.i.i.i = icmp eq ptr %i.fq, null
  br i1 %.not5.i.i.i.i, label %bb.ax, label %"_ZN106_$LT$actix_tls..accept..rustls_0_23..TlsStream$LT$IO$GT$$u20$as$u20$tokio..io..async_write..AsyncWrite$GT$19poll_write_vectored17h8d4e2c7956a65500E.exit.thread.thread.i"

bb.ao:                                            ; preds = %bb.an
  %.not.i.i.i.i = icmp eq ptr %i.fq, null
  br i1 %.not.i.i.i.i, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3all17hbea1e6dfd1771b0aE.exit.i.i.i.i", label %"_ZN106_$LT$actix_tls..accept..rustls_0_23..TlsStream$LT$IO$GT$$u20$as$u20$tokio..io..async_write..AsyncWrite$GT$19poll_write_vectored17h8d4e2c7956a65500E.exit.thread.thread.i"

bb.ap:                                            ; preds = %bb.an
  %i.ft = invoke fastcc { i64, ptr } @"_ZN12tokio_rustls6common20Stream$LT$IO$C$C$GT$8write_io17hf4cda4144493f4f5E"(ptr nonnull align 8 dereferenceable(1208) %0, ptr nonnull %i.ck, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %.noexc148 unwind label %.loopexit.split-lp.loopexit ; 2 uses

.noexc148:                                        ; preds = %bb.ap
  %i.fu = extractvalue { i64, ptr } %i.ft, 0
  %i.fv = extractvalue { i64, ptr } %i.ft, 1      ; 2 uses
  switch i64 %i.fu, label %.loopexit253 [
    i64 2, label %.thread.i.i.i.i
    i64 0, label %bb.aq
  ]

bb.aq:                                            ; preds = %.noexc148
  %i.fw = icmp eq ptr %i.fv, null
  br i1 %i.fw, label %.thread.i.i.i.i, label %bb.an

"_ZN106_$LT$actix_tls..accept..rustls_0_23..TlsStream$LT$IO$GT$$u20$as$u20$tokio..io..async_write..AsyncWrite$GT$19poll_write_vectored17h8d4e2c7956a65500E.exit.thread.thread.i": ; preds = %bb.al, %bb.ao, %"_ZN83_$LT$bytes..buf..chain..Chain$LT$T$C$U$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$15chunks_vectored17hcf9eff86d87c35ccE.exit.i", %.thread.i.i.i.i
  %.sroa.6.1.i.i.i4.ph.i = phi ptr [ %i.fq, %.thread.i.i.i.i ], [ null, %"_ZN83_$LT$bytes..buf..chain..Chain$LT$T$C$U$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$15chunks_vectored17hcf9eff86d87c35ccE.exit.i" ], [ %i.fq, %bb.ao ], [ null, %bb.al ] ; 2 uses
  %i.fx = ptrtoint ptr %.sroa.6.1.i.i.i4.ph.i to i64 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !14401
  %.val1.i.i.i27.i = load i64, ptr %i.cd, align 8, !alias.scope !14456, !noalias !14401, !noundef !27 ; 2 uses
  %i.fy = load i64, ptr %i.ce, align 8, !alias.scope !14456, !noalias !14401, !noundef !27 ; 4 uses
  %i.fz = call i64 @llvm.usub.sat.i64(i64 %.val1.i.i.i27.i, i64 %i.fy) ; 3 uses
  %.not1.i.i = icmp ugt i64 %.val1.i.i.i27.i, %i.fy
  br i1 %.not1.i.i, label %bb.av, label %bb.ar

bb.ar:                                            ; preds = %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17hc53c079e50df91cdE.exit.i.i", %"_ZN106_$LT$actix_tls..accept..rustls_0_23..TlsStream$LT$IO$GT$$u20$as$u20$tokio..io..async_write..AsyncWrite$GT$19poll_write_vectored17h8d4e2c7956a65500E.exit.thread.thread.i"
  %.sroa.0.0.i.i = phi i64 [ %i.fx, %"_ZN106_$LT$actix_tls..accept..rustls_0_23..TlsStream$LT$IO$GT$$u20$as$u20$tokio..io..async_write..AsyncWrite$GT$19poll_write_vectored17h8d4e2c7956a65500E.exit.thread.thread.i" ], [ %i.gm, %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17hc53c079e50df91cdE.exit.i.i" ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14459)
  call void @llvm.experimental.noalias.scope.decl(metadata !14462)
  %i.ga = load i64, ptr %i.cg, align 8, !alias.scope !14465, !noalias !14401, !noundef !27 ; 2 uses
  %.not.i.i.i.i.i = icmp ugt i64 %.sroa.0.0.i.i, %i.ga
  br i1 %.not.i.i.i.i.i, label %bb.as, label %bb.at, !prof !29

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2056, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2057) #43
          to label %.noexc149 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc149:                                        ; preds = %bb.as
  unreachable

bb.at:                                            ; preds = %bb.ar
  call void @llvm.experimental.noalias.scope.decl(metadata !14466)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !14469
  store i64 %.sroa.0.0.i.i, ptr %i.r, align 8, !noalias !14470
  %i.gb = load i64, ptr %i.cf, align 8, !alias.scope !14471, !noalias !14401, !noundef !27 ; 3 uses
  %.not.i.i.i.i.i28.i = icmp ugt i64 %.sroa.0.0.i.i, %i.gb
  br i1 %.not.i.i.i.i.i28.i, label %bb.au, label %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17h1040aee0a5d4d8aeE.exit.i.i", !prof !29

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !14470
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !14470
  store i64 %i.gb, ptr %i.p, align 8, !noalias !14470
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !14470
  store ptr %i.r, ptr %i.o, align 8, !noalias !14470
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hfbad01e72c46968eE", ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !14470
  %i.gc = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %i.p, ptr %i.gc, align 8, !noalias !14470
  %.sroa.46.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hfbad01e72c46968eE", ptr %.sroa.46.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !14470
  store ptr @1430, ptr %i.q, align 8, !noalias !14470
  %i.gd = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 2, ptr %i.gd, align 8, !noalias !14470
  %i.ge = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store ptr null, ptr %i.ge, align 8, !noalias !14470
  %i.gf = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.o, ptr %i.gf, align 8, !noalias !14470
  %i.gg = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store i64 2, ptr %i.gg, align 8, !noalias !14470
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1431) #43
          to label %.noexc150 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc150:                                        ; preds = %bb.au
  unreachable

"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17h1040aee0a5d4d8aeE.exit.i.i": ; preds = %bb.at
  %i.gh = sub nuw i64 %i.gb, %.sroa.0.0.i.i
  store i64 %i.gh, ptr %i.cf, align 8, !alias.scope !14471, !noalias !14401
  %i.gi = load ptr, ptr %i.cp, align 8, !alias.scope !14471, !noalias !14401, !noundef !27
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 %.sroa.0.0.i.i
  store ptr %i.gj, ptr %i.cp, align 8, !alias.scope !14471, !noalias !14401
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !14469
  %i.gk = sub nuw i64 %i.ga, %.sroa.0.0.i.i
  store i64 %i.gk, ptr %i.cg, align 8, !alias.scope !14465, !noalias !14401
  br label %.thread227

bb.av:                                            ; preds = %"_ZN106_$LT$actix_tls..accept..rustls_0_23..TlsStream$LT$IO$GT$$u20$as$u20$tokio..io..async_write..AsyncWrite$GT$19poll_write_vectored17h8d4e2c7956a65500E.exit.thread.thread.i"
  %.not.i.i = icmp ult i64 %i.fz, %i.fx
  br i1 %.not.i.i, label %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17hc53c079e50df91cdE.exit.i.i", label %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17hc53c079e50df91cdE.exit9.i.i"

"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17hc53c079e50df91cdE.exit.i.i": ; preds = %bb.av
  %i.gl = add i64 %i.fz, %i.fy
  store i64 %i.gl, ptr %i.ce, align 8, !alias.scope !14472, !noalias !14401
  %i.gm = sub nuw i64 %i.fx, %i.fz
  br label %bb.ar

"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17hc53c079e50df91cdE.exit9.i.i": ; preds = %bb.av
  %i.gn = add i64 %i.fy, %i.fx
  store i64 %i.gn, ptr %i.ce, align 8, !alias.scope !14475, !noalias !14401
  br label %.thread227

bb.aw:                                            ; preds = %.noexc144, %.noexc143, %bb.x, %.noexc141
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  br label %bb.ag

bb.ax:                                            ; preds = %.thread.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !14401
  br label %.thread246

.loopexit253:                                     ; preds = %.noexc148, %"_ZN106_$LT$actix_tls..accept..rustls_0_23..TlsStream$LT$IO$GT$$u20$as$u20$tokio..io..async_write..AsyncWrite$GT$19poll_write_vectored17h8d4e2c7956a65500E.exit.thread.thread12.i"
  %.sroa.6.1.i.i.i415.i = phi ptr [ %i.fq, %"_ZN106_$LT$actix_tls..accept..rustls_0_23..TlsStream$LT$IO$GT$$u20$as$u20$tokio..io..async_write..AsyncWrite$GT$19poll_write_vectored17h8d4e2c7956a65500E.exit.thread.thread12.i" ], [ %i.fv, %.noexc148 ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.1.i.i.i415.i) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !14401
  br label %.thread246

.thread227:                                       ; preds = %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17hc53c079e50df91cdE.exit9.i.i", %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17h1040aee0a5d4d8aeE.exit.i.i"
  %i.go = icmp eq ptr %.sroa.6.1.i.i.i4.ph.i, null
  br i1 %i.go, label %.thread218, label %.backedge.backedge

bb.ay:                                            ; preds = %.split
  %i.gp = load atomic i64, ptr @_ZN12tracing_core8metadata9MAX_LEVEL17h3c62bc6fa7dc27b1E monotonic, align 8
  %i.gq = icmp eq i64 %i.gp, 0
  br i1 %i.gq, label %bb.az, label %.thread224

bb.az:                                            ; preds = %bb.ay
  %i.gr = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @"_ZN2h25codec12framed_write24FramedWrite$LT$T$C$B$GT$5flush10__CALLSITE17hd933acc6750a64a1E", i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.gr, label %bb.ba [
    i8 0, label %.thread224
    i8 1, label %.thread221
    i8 2, label %.thread221
  ], !prof !390

bb.ba:                                            ; preds = %bb.az
  %i.gs = invoke noundef i8 @_ZN12tracing_core8callsite15DefaultCallsite8register17hfea5cd845fb2ec3aE(ptr noundef nonnull align 8 @"_ZN2h25codec12framed_write24FramedWrite$LT$T$C$B$GT$5flush10__CALLSITE17hd933acc6750a64a1E")
          to label %bb.bb unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

bb.bb:                                            ; preds = %bb.ba
  %i.gt = icmp eq i8 %i.gs, 0
  br i1 %i.gt, label %.thread224, label %.thread221

.thread221:                                       ; preds = %bb.az, %bb.az, %bb.bb
  %.sroa.036.0223 = phi i8 [ %i.gs, %bb.bb ], [ %i.gr, %bb.az ], [ %i.gr, %bb.az ]
  %i.gu = load ptr, ptr @"_ZN2h25codec12framed_write24FramedWrite$LT$T$C$B$GT$5flush10__CALLSITE17hd933acc6750a64a1E", align 8, !nonnull !27, !align !148, !noundef !27
  %i.gv = invoke noundef zeroext i1 @_ZN7tracing15__macro_support12__is_enabled17ha8d49a956677b3d5E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.gu, i8 noundef %.sroa.036.0223)
          to label %bb.bc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.bc:                                            ; preds = %.thread221
  br i1 %i.gv, label %bb.bd, label %.thread224

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  %i.gw = load ptr, ptr @"_ZN2h25codec12framed_write24FramedWrite$LT$T$C$B$GT$5flush10__CALLSITE17hd933acc6750a64a1E", align 8, !nonnull !27, !align !148, !noundef !27 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 48
  store i64 1, ptr %i.al, align 8
  store ptr @707, ptr %.sroa.038.sroa.4.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.038.sroa.5.0..sroa_idx, align 8
  store ptr %i.gx, ptr %.sroa.439.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  invoke void @_ZN12tracing_core5event5Event8dispatch17hf7c16d63cd6ca6adE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.gw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.al)
          to label %.noexc154 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc154:                                        ; preds = %bb.bd
  %i.gy = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9063ca422f1e9098E monotonic, align 1, !noalias !14478
  %i.gz = icmp eq i8 %i.gy, 0
  br i1 %i.gz, label %bb.be, label %bb.bw

bb.be:                                            ; preds = %.noexc154
  %i.ha = load atomic i64, ptr @_ZN3log20MAX_LOG_LEVEL_FILTER17h390a9bab74993d26E monotonic, align 8, !noalias !14478 ; 2 uses
  %i.hb = icmp ult i64 %i.ha, 6
  call void @llvm.assume(i1 %i.hb)
  %i.hc = icmp samesign ugt i64 %i.ha, 4
  br i1 %i.hc, label %bb.bf, label %bb.bw

bb.bf:                                            ; preds = %bb.be
  %i.hd = load ptr, ptr @"_ZN2h25codec12framed_write24FramedWrite$LT$T$C$B$GT$5flush10__CALLSITE17hd933acc6750a64a1E", align 8, !noalias !14478, !nonnull !27, !align !148, !noundef !27 ; 3 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 32
  %i.hf = load ptr, ptr %i.he, align 8, !nonnull !27, !align !206, !noundef !27
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hd, i64 40
  %i.hh = load i64, ptr %i.hg, align 8, !noundef !27
  store i64 5, ptr %i.n, align 8, !noalias !14478
  store ptr %i.hf, ptr %.sroa.52.0..sroa_idx.i152, align 8, !noalias !14478
  store i64 %i.hh, ptr %.sroa.7.0..sroa_idx.i153, align 8, !noalias !14478
  %i.hi = invoke { ptr, ptr } @_ZN3log6logger17hcebe01820b13d6ccE()
          to label %.noexc155 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc155:                                        ; preds = %bb.bf
  %i.hj = extractvalue { ptr, ptr } %i.hi, 0      ; 2 uses
  %i.hk = extractvalue { ptr, ptr } %i.hi, 1      ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 24
  %i.hm = load ptr, ptr %i.hl, align 8, !invariant.load !27, !nonnull !27
  %i.hn = invoke noundef zeroext i1 %i.hm(ptr noundef align 1 %i.hj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n)
          to label %.noexc156 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !14481

.noexc156:                                        ; preds = %.noexc155
  br i1 %i.hn, label %bb.bg, label %bb.bw

bb.bg:                                            ; preds = %.noexc156
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !14478
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !noalias !14478
  invoke void @_ZN7tracing15__macro_support13__tracing_log17he6e71def31f38619E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.hd, ptr noundef nonnull align 1 %i.hj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.hk, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.al)
          to label %.noexc157 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc157:                                        ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !14478
  br label %bb.bw

.thread224:                                       ; preds = %bb.az, %bb.ay, %bb.bc, %bb.bb
  %i.ho = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9063ca422f1e9098E monotonic, align 1
  %i.hp = icmp eq i8 %i.ho, 0
  br i1 %i.hp, label %bb.bh, label %bb.bn

bb.bh:                                            ; preds = %.thread224
  %i.hq = load atomic i64, ptr @_ZN3log20MAX_LOG_LEVEL_FILTER17h390a9bab74993d26E monotonic, align 8 ; 2 uses
  %i.hr = icmp ult i64 %i.hq, 6
  call void @llvm.assume(i1 %i.hr)
  %i.hs = icmp samesign ugt i64 %i.hq, 4
  br i1 %i.hs, label %bb.bi, label %bb.bn

bb.bi:                                            ; preds = %bb.bh
  %i.ht = load ptr, ptr @"_ZN2h25codec12framed_write24FramedWrite$LT$T$C$B$GT$5flush10__CALLSITE17hd933acc6750a64a1E", align 8, !nonnull !27, !align !148, !noundef !27 ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 32
  %i.hv = load ptr, ptr %i.hu, align 8, !nonnull !27, !align !206, !noundef !27
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ht, i64 40
  %i.hx = load i64, ptr %i.hw, align 8, !noundef !27
  store i64 5, ptr %i.ak, align 8
  store ptr %i.hv, ptr %.sroa.5115.0..sroa_idx, align 8
  store i64 %i.hx, ptr %.sroa.7116.0..sroa_idx, align 8
  %i.hy = invoke { ptr, ptr } @_ZN3log6logger17hcebe01820b13d6ccE()
          to label %bb.bj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

bb.bj:                                            ; preds = %bb.bi
  %i.hz = extractvalue { ptr, ptr } %i.hy, 0      ; 2 uses
  %i.ia = extractvalue { ptr, ptr } %i.hy, 1      ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 24
  %i.ic = load ptr, ptr %i.ib, align 8, !invariant.load !27, !nonnull !27
  %i.id = invoke noundef zeroext i1 %i.ic(ptr noundef align 1 %i.hz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ak)
          to label %bb.bk unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.bk:                                            ; preds = %bb.bj
  br i1 %i.id, label %bb.bl, label %bb.bn

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  %i.ie = load ptr, ptr @"_ZN2h25codec12framed_write24FramedWrite$LT$T$C$B$GT$5flush10__CALLSITE17hd933acc6750a64a1E", align 8, !nonnull !27, !align !148, !noundef !27
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 48
  store i64 1, ptr %i.aj, align 8
  store ptr @707, ptr %.sroa.494.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.595.0..sroa_idx, align 8
  store ptr %i.if, ptr %i.ch, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i64 24, i1 false)
  invoke void @_ZN7tracing15__macro_support13__tracing_log17he6e71def31f38619E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ht, ptr noundef nonnull align 1 %i.hz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ia, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.aa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aj)
          to label %bb.bm unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bk, %bb.bm, %bb.bh, %.thread224, %bb.bw
  call void @llvm.experimental.noalias.scope.decl(metadata !14482)
  call void @llvm.experimental.noalias.scope.decl(metadata !14485)
  %.val.i160 = load i64, ptr %i.cd, align 8, !alias.scope !14487, !noalias !14490, !noundef !27 ; 3 uses
  %.val19.i = load i64, ptr %i.ce, align 8, !alias.scope !14487, !noalias !14490, !noundef !27 ; 5 uses
  %i.ig = icmp ugt i64 %.val.i160, %.val19.i
  br i1 %i.ig, label %bb.bo, label %.thread218

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !14492
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bp, %bb.bo
  %i.ih = phi i64 [ 0, %bb.bo ], [ %i.it, %bb.bp ] ; 5 uses
  %i.ii = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.ih ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.ii, align 8, !noalias !14492
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  store i64 0, ptr %i.ij, align 8, !noalias !14492
  %i.ik = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.ih ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %i.il, align 8, !noalias !14492
  %i.im = getelementptr inbounds nuw i8, ptr %i.ik, i64 24
  store i64 0, ptr %i.im, align 8, !noalias !14492
end_hunk_3
begin_hunk_4_@_ZN3std2io19default_read_to_end16small_probe_read17hc457fa00165552a2E:bb.a

.noexc:                                           ; preds = %bb.g
  call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hef594eaabfc18d82E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.p, i64 noundef %i.k, i64 noundef 1, i64 noundef 1)
  %.pre.i.i = load i64, ptr %i.o, align 8, !alias.scope !19198
  br label %bb.h

bb.h:                                             ; preds = %.noexc, %bb.g
  %i.t = phi i64 [ %i.p, %bb.g ], [ %.pre.i.i, %.noexc ] ; 3 uses
  %i.u = icmp sgt i64 %i.t, -1
  call void @llvm.assume(i1 %i.u)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !19198, !nonnull !27, !noundef !27
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.t
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.x, ptr nonnull readonly align 1 %i.b, i64 %i.k, i1 false), !noalias !19198
  %i.y = add nuw i64 %i.t, %i.k
  store i64 %i.y, ptr %i.o, align 8, !alias.scope !19198
  %i.z = inttoptr i64 %i.k to ptr
  br label %.loopexit

.loopexit:                                        ; preds = %bb.i, %.split, %.split27, %.split29, %.thread45, %bb.h
  %.sroa.3.0 = phi ptr [ %i.z, %bb.h ], [ inttoptr (i64 55834574851 to ptr), %.thread45 ], [ %i.i, %.split29 ], [ %i.i, %.split27 ], [ %i.i, %.split ], [ %i.i, %bb.i ]
  %.sroa.0.0 = phi i64 [ 0, %bb.h ], [ 1, %.thread45 ], [ 1, %.split29 ], [ 1, %.split27 ], [ 1, %.split ], [ 1, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.aa = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.ab = insertvalue { i64, ptr } %i.aa, ptr %.sroa.3.0, 1
  ret { i64, ptr } %i.ab

.split:                                           ; preds = %bb.d
  %.mask = and i64 %i.l, -4294967296
  %i.ac = icmp eq i64 %.mask, 17179869184
  br i1 %i.ac, label %"_ZN4core3ptr78drop_in_place$LT$core..result..Result$LT$usize$C$std..io..error..Error$GT$$GT$17h7307017e72abf188E.exit", label %.loopexit

.split29:                                         ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.ae = load i8, ptr %i.ad, align 8, !range !15114, !noundef !27
  %i.af = icmp eq i8 %i.ae, 35
  br i1 %i.af, label %"_ZN4core3ptr78drop_in_place$LT$core..result..Result$LT$usize$C$std..io..error..Error$GT$$GT$17h7307017e72abf188E.exit", label %.loopexit

.split27:                                         ; preds = %bb.d
  %i.ag = getelementptr i8, ptr %i.i, i64 -1      ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ag) ]
  %i.ah = getelementptr i8, ptr %i.i, i64 15
  %i.ai = load i8, ptr %i.ah, align 8, !range !15114, !noundef !27
  %i.aj = icmp eq i8 %i.ai, 35
  br i1 %i.aj, label %bb.j, label %.loopexit

bb.i:                                             ; preds = %bb.d
  %i.ak = icmp ult ptr %i.i, inttoptr (i64 180388626432 to ptr)
  call void @llvm.assume(i1 %i.ak)
  %.mask33 = and i64 %i.l, -4294967296
  %i.al = icmp eq i64 %.mask33, 150323855360
  br i1 %i.al, label %"_ZN4core3ptr78drop_in_place$LT$core..result..Result$LT$usize$C$std..io..error..Error$GT$$GT$17h7307017e72abf188E.exit", label %.loopexit

bb.j:                                             ; preds = %.split27
  %.val.i.i.i.i.i.i = load ptr, ptr %i.ag, align 8, !noalias !19199 ; 5 uses
  %i.am = getelementptr i8, ptr %i.i, i64 7
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.am, align 8, !noalias !19199, !nonnull !27, !align !148, !noundef !27 ; 3 uses
  %i.an = load ptr, ptr %.val1.i.i.i.i.i.i, align 8, !invariant.load !27, !noalias !19199 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i) ]
  invoke void %i.an(ptr noundef nonnull %.val.i.i.i.i.i.i)
          to label %bb.l unwind label %bb.m, !noalias !19199

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !range !28, !invariant.load !27, !noalias !19199
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hf9f3542050d139d7E.exit.i.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i": ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i) ]
  call void @mi_free(ptr noundef nonnull %.val.i.i.i.i.i.i) #38, !noalias !19199
  br label %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hf9f3542050d139d7E.exit.i.i.i.i.i"

bb.m:                                             ; preds = %bb.k
  %i.ar = landingpad { ptr, i32 }
          cleanup
  %i.as = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i, i64 8
  %i.at = load i64, ptr %i.as, align 8, !range !28, !invariant.load !27, !noalias !19199
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %common.resume, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i.i": ; preds = %bb.m
  call void @mi_free(ptr noundef nonnull %.val.i.i.i.i.i.i) #38, !noalias !19199
  br label %common.resume

common.resume:                                    ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i.i", %bb.m
  call void @mi_free(ptr noundef nonnull %i.ag) #38, !noalias !19199
  resume { ptr, i32 } %i.ar

"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hf9f3542050d139d7E.exit.i.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i", %bb.l
  call void @mi_free(ptr noundef nonnull %i.ag) #38, !noalias !19199
  br label %"_ZN4core3ptr78drop_in_place$LT$core..result..Result$LT$usize$C$std..io..error..Error$GT$$GT$17h7307017e72abf188E.exit"

"_ZN4core3ptr78drop_in_place$LT$core..result..Result$LT$usize$C$std..io..error..Error$GT$$GT$17h7307017e72abf188E.exit": ; preds = %bb.i, %.split29, %.split, %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hf9f3542050d139d7E.exit.i.i.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !19183
  store ptr %i.b, ptr %i.a, align 8, !noalias !19183
  store i64 32, ptr %i.c, align 8, !noalias !19183
  store i64 0, ptr %i.d, align 8, !noalias !19183
  store i64 32, ptr %i.e, align 8, !noalias !19183
  %i.av = call { i64, ptr } @"_ZN87_$LT$tokio..net..tcp..stream..TcpStream$u20$as$u20$tokio..io..async_read..AsyncRead$GT$9poll_read17haec2f891d9ee9700E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %.0.val, ptr noalias noundef nonnull align 8 dereferenceable(32) %.8.val, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a), !noalias !19187 ; 2 uses
  %i.aw = extractvalue { i64, ptr } %i.av, 0
  %i.ax = trunc nuw i64 %i.aw to i1
  br i1 %i.ax, label %.thread45, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, ptr } @_ZN3std2io19default_read_to_end17hdd7509ea6ecec56fE(ptr %.0.val, ptr %.8.val, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i64 noundef range(i64 0, 2) %1, i64 %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 12 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !27 ; 7 uses
  %i.f = icmp sgt i64 %i.e, -1
  tail call void @llvm.assume(i1 %i.f)
  %i.g = load i64, ptr %0, align 8, !range !28, !noundef !27 ; 5 uses
  %i.h = trunc nuw i64 %1 to i1                   ; 2 uses
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ugt i64 %2, -1025
  br i1 %i.i, label %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h32db865e015a98b7E.exit.thread", label %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h32db865e015a98b7E.exit", !prof !29

"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h32db865e015a98b7E.exit": ; preds = %bb.b
  %i.j = add nuw i64 %2, 1024                     ; 3 uses
  %i.k = and i64 %i.j, 8191                       ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  %i.m = sub i64 %2, %i.k
  %i.n = add i64 %i.m, 9216                       ; 2 uses
  %.not = icmp ult i64 %i.n, %i.j
  %.sroa.5.1.i = select i1 %.not, i64 8192, i64 %i.n
  %.sroa.010.2 = select i1 %i.l, i64 %i.j, i64 %.sroa.5.1.i ; 2 uses
  %i.o = icmp eq i64 %2, 0
  br i1 %i.o, label %bb.c, label %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h32db865e015a98b7E.exit.thread"

bb.c:                                             ; preds = %bb.a, %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h32db865e015a98b7E.exit"
  %.sroa.010.1 = phi i64 [ %.sroa.010.2, %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h32db865e015a98b7E.exit" ], [ 8192, %bb.a ] ; 2 uses
  %.sroa.019.1 = xor i1 %i.h, true                ; 2 uses
  %i.p = sub nsw i64 %i.g, %i.e
  %i.q = icmp ult i64 %i.p, 32
  br i1 %i.q, label %bb.d, label %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h32db865e015a98b7E.exit.thread"

"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h32db865e015a98b7E.exit.thread": ; preds = %"._ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h32db865e015a98b7E.exit.thread_crit_edge", %bb.b, %bb.c, %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h32db865e015a98b7E.exit"
  %.pre84 = phi i64 [ %.pre84.pre, %"._ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h32db865e015a98b7E.exit.thread_crit_edge" ], [ %i.g, %bb.c ], [ %i.g, %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h32db865e015a98b7E.exit" ], [ %i.g, %bb.b ]
  %.pre = phi i64 [ %.pre.pre, %"._ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h32db865e015a98b7E.exit.thread_crit_edge" ], [ %i.e, %bb.c ], [ %i.e, %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h32db865e015a98b7E.exit" ], [ %i.e, %bb.b ]
  %.sroa.019.3 = phi i1 [ %.sroa.019.1, %"._ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h32db865e015a98b7E.exit.thread_crit_edge" ], [ %.sroa.019.1, %bb.c ], [ false, %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h32db865e015a98b7E.exit" ], [ false, %bb.b ]
  %.sroa.010.3 = phi i64 [ %.sroa.010.1, %"._ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h32db865e015a98b7E.exit.thread_crit_edge" ], [ %.sroa.010.1, %bb.c ], [ %.sroa.010.2, %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h32db865e015a98b7E.exit" ], [ 8192, %bb.b ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  br label %.outer

.outer:                                           ; preds = %bb.af, %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h32db865e015a98b7E.exit.thread"
  %.ph = phi i64 [ %i.ba, %bb.af ], [ %.pre84, %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h32db865e015a98b7E.exit.thread" ]
  %.ph172 = phi i64 [ %i.de, %bb.af ], [ %.pre, %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h32db865e015a98b7E.exit.thread" ]
  %.sroa.018.4.ph = phi i64 [ %i.dd, %bb.af ], [ 0, %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h32db865e015a98b7E.exit.thread" ]
  %.sroa.010.4.ph = phi i64 [ %.sroa.055.0, %bb.af ], [ %.sroa.010.3, %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h32db865e015a98b7E.exit.thread" ] ; 4 uses
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.x = tail call fastcc { i64, ptr } @_ZN3std2io19default_read_to_end16small_probe_read17hc457fa00165552a2E(ptr %.0.val, ptr %.8.val, ptr noalias noundef align 8 dereferenceable(24) %0) ; 2 uses
  %i.y = extractvalue { i64, ptr } %i.x, 0
  %i.z = extractvalue { i64, ptr } %i.x, 1        ; 2 uses
  %i.aa = trunc nuw i64 %i.y to i1
  br i1 %i.aa, label %bb.ag, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = icmp eq ptr %i.z, null
  br i1 %i.ab, label %bb.ag, label %"._ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h32db865e015a98b7E.exit.thread_crit_edge"

"._ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h32db865e015a98b7E.exit.thread_crit_edge": ; preds = %bb.e
  %.pre.pre = load i64, ptr %i.d, align 8
  %.pre84.pre = load i64, ptr %0, align 8, !range !28
  br label %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h32db865e015a98b7E.exit.thread"

bb.f:                                             ; preds = %.backedge, %.outer
  %i.ac = phi i64 [ %.ph, %.outer ], [ %i.ba, %.backedge ] ; 3 uses
  %i.ad = phi i64 [ %.ph172, %.outer ], [ %i.de, %.backedge ] ; 3 uses
  %.sroa.018.4 = phi i64 [ %.sroa.018.4.ph, %.outer ], [ %i.dd, %.backedge ] ; 2 uses
  %i.ae = icmp sgt i64 %i.ad, -1
  call void @llvm.assume(i1 %i.ae)
  %i.af = icmp eq i64 %i.ad, %i.ac
  %i.ag = icmp eq i64 %i.ac, %i.g
  %or.cond80 = and i1 %i.af, %i.ag
  br i1 %or.cond80, label %bb.h, label %bb.g

thread-pre-split:                                 ; preds = %bb.i
  %.pr = load i64, ptr %0, align 8
  %.pre85 = load i64, ptr %i.d, align 8
  br label %bb.g

bb.g:                                             ; preds = %thread-pre-split, %bb.f
  %i.ah = phi i64 [ %.pr, %thread-pre-split ], [ %i.ac, %bb.f ] ; 7 uses
  %i.ai = phi i64 [ %.pre85, %thread-pre-split ], [ %i.ad, %bb.f ] ; 6 uses
  %i.aj = icmp sgt i64 %i.ai, -1
  call void @llvm.assume(i1 %i.aj)
  %i.ak = icmp eq i64 %i.ai, %i.ah
  br i1 %i.ak, label %bb.k, label %..peel.begin_crit_edge

..peel.begin_crit_edge:                           ; preds = %bb.g
  %.pre86 = load ptr, ptr %i.r, align 8
  br label %.peel.begin

bb.h:                                             ; preds = %bb.f
  %i.al = call fastcc { i64, ptr } @_ZN3std2io19default_read_to_end16small_probe_read17hc457fa00165552a2E(ptr %.0.val, ptr %.8.val, ptr noalias noundef align 8 dereferenceable(24) %0) ; 2 uses
  %i.am = extractvalue { i64, ptr } %i.al, 0
  %i.an = extractvalue { i64, ptr } %i.al, 1      ; 2 uses
  %i.ao = trunc nuw i64 %i.am to i1
  br i1 %i.ao, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h2c169de990359478E.exit.thread.loopexit.split.loop.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = icmp eq ptr %i.an, null
  br i1 %i.ap, label %bb.j, label %thread-pre-split

bb.j:                                             ; preds = %bb.i
  %i.aq = load i64, ptr %i.d, align 8, !noundef !27 ; 2 uses
  %i.ar = icmp sgt i64 %i.aq, -1
  call void @llvm.assume(i1 %i.ar)
  %i.as = sub nsw i64 %i.aq, %i.e
  br label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h2c169de990359478E.exit.thread"

bb.k:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !19202)
  call void @llvm.experimental.noalias.scope.decl(metadata !19205)
  %i.at = add nuw i64 %i.ah, 32
  %i.au = shl nuw i64 %i.ah, 1
  %.sroa.0.0.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.at, i64 %i.au) ; 5 uses
  %i.av = icmp slt i64 %.sroa.0.0.i.i.i, 0
  br i1 %i.av, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h2c169de990359478E.exit.thread", label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i, !prof !3784

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i: ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !19208
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !19208
  %i.aw = icmp eq i64 %i.ah, 0
  br i1 %i.aw, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h3a83bd277e8def63E.exit.i.i", label %bb.l

bb.l:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i
  %.val29.i.i = load ptr, ptr %i.r, align 8, !alias.scope !19208, !nonnull !27, !noundef !27
  store ptr %.val29.i.i, ptr %i.b, align 8, !alias.scope !19209, !noalias !19208
  store i64 %i.ah, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !19209, !noalias !19208
  br label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h3a83bd277e8def63E.exit.i.i"

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h3a83bd277e8def63E.exit.i.i": ; preds = %bb.l, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i
  %.sink.i.i.i = phi i64 [ 1, %bb.l ], [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i ]
  store i64 %.sink.i.i.i, ptr %i.s, align 8, !alias.scope !19209, !noalias !19208
  call fastcc void @_ZN5alloc7raw_vec11finish_grow17h6777eb6dc489659eE(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, i64 noundef 1, i64 noundef %.sroa.0.0.i.i.i, ptr noalias noundef readonly align 8 captures(address) dereferenceable(24) %i.b), !noalias !19208
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !19208
  %i.ax = load i64, ptr %i.c, align 8, !range !223, !noalias !19208, !noundef !27
  %i.ay = trunc nuw i64 %i.ax to i1
  br i1 %i.ay, label %bb.m, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h2c169de990359478E.exit"

bb.m:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h3a83bd277e8def63E.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !19208
  br label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h2c169de990359478E.exit.thread"

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h2c169de990359478E.exit": ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h3a83bd277e8def63E.exit.i.i"
  %i.az = load ptr, ptr %i.t, align 8, !noalias !19208, !nonnull !27, !noundef !27 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !19208
  store ptr %i.az, ptr %i.r, align 8, !alias.scope !19208
  store i64 %.sroa.0.0.i.i.i, ptr %0, align 8, !alias.scope !19208
  %.pre.i = sub nuw nsw i64 %.sroa.0.0.i.i.i, %i.ah
  %3 = icmp samesign ugt i64 %.pre.i, 31
  call void @llvm.assume(i1 %3)
  br label %.peel.begin

.peel.begin:                                      ; preds = %..peel.begin_crit_edge, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h2c169de990359478E.exit"
  %i.ba = phi i64 [ %i.ah, %..peel.begin_crit_edge ], [ %.sroa.0.0.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h2c169de990359478E.exit" ] ; 3 uses
  %i.bb = phi ptr [ %.pre86, %..peel.begin_crit_edge ], [ %i.az, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h2c169de990359478E.exit" ]
  %i.bc = sub nsw i64 %i.ba, %i.ai                ; 2 uses
  %.sroa.0.0.i84 = call noundef i64 @llvm.umin.i64(i64 %.sroa.010.4.ph, i64 %i.bc) ; 8 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ai ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.be = sub nuw i64 %.sroa.0.0.i84, %.sroa.018.4
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.sroa.018.4
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bf, i8 0, i64 %i.be, i1 false), !noalias !19212
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !19220
  store ptr %i.bd, ptr %i.a, align 8, !noalias !19220
  store i64 %.sroa.0.0.i84, ptr %i.u, align 8, !noalias !19220
  store i64 0, ptr %i.v, align 8, !noalias !19220
  store i64 %.sroa.0.0.i84, ptr %i.w, align 8, !noalias !19220
  %i.bg = call { i64, ptr } @"_ZN87_$LT$tokio..net..tcp..stream..TcpStream$u20$as$u20$tokio..io..async_read..AsyncRead$GT$9poll_read17haec2f891d9ee9700E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %.0.val, ptr noalias noundef nonnull align 8 dereferenceable(32) %.8.val, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a), !noalias !19226 ; 2 uses
  %i.bh = extractvalue { i64, ptr } %i.bg, 0
  %i.bi = trunc nuw i64 %i.bh to i1
  br i1 %i.bi, label %_ZN3std2io4Read8read_buf17h78d691331ac6ea85E.exit.peel, label %bb.n

bb.n:                                             ; preds = %.peel.begin
  %i.bj = extractvalue { i64, ptr } %i.bg, 1      ; 2 uses
  %.not.i.i.i.i.peel = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i.i.peel, label %.loopexit, label %_ZN3std2io4Read8read_buf17h78d691331ac6ea85E.exit.peel

_ZN3std2io4Read8read_buf17h78d691331ac6ea85E.exit.peel: ; preds = %.peel.begin, %bb.n
  %i.bk = phi ptr [ %i.bj, %bb.n ], [ inttoptr (i64 55834574851 to ptr), %.peel.begin ] ; 10 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !19220
  %i.bl = ptrtoint ptr %i.bk to i64               ; 3 uses
  %i.bm = and i64 %i.bl, 3
  switch i64 %i.bm, label %_ZN3std2io4Read8read_buf17h78d691331ac6ea85E.exit.peel.unreachabledefault [
    i64 2, label %.split.peel
    i64 3, label %bb.r
    i64 0, label %.split41.peel
    i64 1, label %.split40.peel
  ], !prof !196

.split40.peel:                                    ; preds = %_ZN3std2io4Read8read_buf17h78d691331ac6ea85E.exit.peel
  %i.bn = getelementptr i8, ptr %i.bk, i64 -1     ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bn) ]
  %i.bo = getelementptr i8, ptr %i.bk, i64 15
  %i.bp = load i8, ptr %i.bo, align 8, !range !15114, !noundef !27
  %i.bq = icmp eq i8 %i.bp, 35
  br i1 %i.bq, label %bb.o, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h2c169de990359478E.exit.thread.loopexit.split.loop.exit60"

bb.o:                                             ; preds = %.split40.peel
  %.val.i.i.i.i.i.peel = load ptr, ptr %i.bn, align 8, !noalias !19227 ; 4 uses
  %i.br = getelementptr i8, ptr %i.bk, i64 7
  %.val1.i.i.i.i.i.peel = load ptr, ptr %i.br, align 8, !noalias !19227, !nonnull !27, !align !148, !noundef !27 ; 3 uses
  %i.bs = load ptr, ptr %.val1.i.i.i.i.i.peel, align 8, !invariant.load !27, !noalias !19227 ; 2 uses
  %.not.i.i.i.i.i.i.i.peel = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i.i.i.i.i.peel, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.peel) ]
  invoke void %i.bs(ptr noundef nonnull %.val.i.i.i.i.i.peel)
          to label %bb.q unwind label %.loopexit.split-lp, !noalias !19227

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bt = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.peel, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !range !28, !invariant.load !27, !noalias !19227
  %i.bv = icmp eq i64 %i.bu, 0
  br i1 %i.bv, label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h255c5d003656fdfdE.exit.peel.sink.split", label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h255c5d003656fdfdE.exit.peel.sink.split.sink.split"

.split41.peel:                                    ; preds = %_ZN3std2io4Read8read_buf17h78d691331ac6ea85E.exit.peel
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bx = load i8, ptr %i.bw, align 8, !range !15114, !noundef !27
  %i.by = icmp eq i8 %i.bx, 35
  br i1 %i.by, label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h255c5d003656fdfdE.exit.peel.preheader", label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h2c169de990359478E.exit.thread.loopexit.split.loop.exit60"

bb.r:                                             ; preds = %_ZN3std2io4Read8read_buf17h78d691331ac6ea85E.exit.peel
  %i.bz = icmp ult ptr %i.bk, inttoptr (i64 180388626432 to ptr)
  call void @llvm.assume(i1 %i.bz)
  %.mask.peel = and i64 %i.bl, -4294967296
  %i.ca = icmp eq i64 %.mask.peel, 150323855360
  br i1 %i.ca, label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h255c5d003656fdfdE.exit.peel.preheader", label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h2c169de990359478E.exit.thread.loopexit.split.loop.exit60"

.split.peel:                                      ; preds = %_ZN3std2io4Read8read_buf17h78d691331ac6ea85E.exit.peel
  %.mask43.peel = and i64 %i.bl, -4294967296
  %i.cb = icmp eq i64 %.mask43.peel, 17179869184
  br i1 %i.cb, label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h255c5d003656fdfdE.exit.peel.preheader", label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h2c169de990359478E.exit.thread.loopexit.split.loop.exit60"

"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h255c5d003656fdfdE.exit.peel.sink.split.sink.split": ; preds = %bb.q, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i"
  %.val.i.i.i.i.i.peel.sink170 = phi ptr [ %.val.i.i.i.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i" ], [ %.val.i.i.i.i.i.peel, %bb.q ] ; 2 uses
  %.sink.ph = phi ptr [ %i.cp, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i" ], [ %i.bn, %bb.q ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.peel.sink170) ]
  call void @mi_free(ptr noundef nonnull %.val.i.i.i.i.i.peel.sink170) #38, !noalias !19227
  br label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h255c5d003656fdfdE.exit.peel.sink.split"

"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h255c5d003656fdfdE.exit.peel.sink.split": ; preds = %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h255c5d003656fdfdE.exit.peel.sink.split.sink.split", %bb.q, %bb.z
  %.sink = phi ptr [ %i.cp, %bb.z ], [ %i.bn, %bb.q ], [ %.sink.ph, %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h255c5d003656fdfdE.exit.peel.sink.split.sink.split" ]
  call void @mi_free(ptr noundef nonnull %.sink) #38, !noalias !19227
  br label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h255c5d003656fdfdE.exit.peel.preheader"

"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h255c5d003656fdfdE.exit.peel.preheader": ; preds = %.split.peel, %bb.r, %.split41.peel, %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h255c5d003656fdfdE.exit.peel.sink.split"
  br label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h255c5d003656fdfdE.exit.peel"

"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h255c5d003656fdfdE.exit.peel": ; preds = %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h255c5d003656fdfdE.exit.peel.backedge", %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h255c5d003656fdfdE.exit.peel.preheader"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !19220
  store ptr %i.bd, ptr %i.a, align 8, !noalias !19220
  store i64 %.sroa.0.0.i84, ptr %i.u, align 8, !noalias !19220
  store i64 0, ptr %i.v, align 8, !noalias !19220
  store i64 %.sroa.0.0.i84, ptr %i.w, align 8, !noalias !19220
  %i.cc = call { i64, ptr } @"_ZN87_$LT$tokio..net..tcp..stream..TcpStream$u20$as$u20$tokio..io..async_read..AsyncRead$GT$9poll_read17haec2f891d9ee9700E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %.0.val, ptr noalias noundef nonnull align 8 dereferenceable(32) %.8.val, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a), !noalias !19226 ; 2 uses
  %i.cd = extractvalue { i64, ptr } %i.cc, 0
  %i.ce = trunc nuw i64 %i.cd to i1
  br i1 %i.ce, label %_ZN3std2io4Read8read_buf17h78d691331ac6ea85E.exit.thread20, label %bb.s

bb.s:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h255c5d003656fdfdE.exit.peel"
  %i.cf = extractvalue { i64, ptr } %i.cc, 1      ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i.i, label %.loopexit, label %_ZN3std2io4Read8read_buf17h78d691331ac6ea85E.exit.thread20

.loopexit:                                        ; preds = %bb.s, %bb.n
  %i.cg = load i64, ptr %i.u, align 8, !noalias !19220, !noundef !27 ; 2 uses
  %i.ch = load i64, ptr %i.v, align 8, !noalias !19220, !noundef !27 ; 7 uses
  %.not6.i.i.i.i = icmp ugt i64 %i.ch, %i.cg
  br i1 %.not6.i.i.i.i, label %bb.t, label %bb.u, !prof !2480

bb.t:                                             ; preds = %.loopexit
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.ch, i64 noundef %i.cg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @201) #43, !noalias !19226
  unreachable

bb.u:                                             ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !19220
  %.not.i.i = icmp ult i64 %.sroa.0.0.i84, %i.ch
  br i1 %.not.i.i, label %bb.v, label %bb.ab, !prof !29

bb.v:                                             ; preds = %bb.u
  call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1011, i64 noundef 54, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1013) #43, !noalias !19230
  unreachable

_ZN3std2io4Read8read_buf17h78d691331ac6ea85E.exit.thread20: ; preds = %bb.s, %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h255c5d003656fdfdE.exit.peel"
  %i.ci = phi ptr [ inttoptr (i64 55834574851 to ptr), %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h255c5d003656fdfdE.exit.peel" ], [ %i.cf, %bb.s ] ; 10 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !19220
  %i.cj = ptrtoint ptr %i.ci to i64               ; 3 uses
  %i.ck = and i64 %i.cj, 3
  switch i64 %i.ck, label %_ZN3std2io4Read8read_buf17h78d691331ac6ea85E.exit.thread20.unreachabledefault [
    i64 2, label %.split
    i64 3, label %bb.w
    i64 0, label %.split41
    i64 1, label %.split40
  ], !prof !196

_ZN3std2io4Read8read_buf17h78d691331ac6ea85E.exit.thread20.unreachabledefault: ; preds = %_ZN3std2io4Read8read_buf17h78d691331ac6ea85E.exit.thread20
  unreachable

_ZN3std2io4Read8read_buf17h78d691331ac6ea85E.exit.peel.unreachabledefault: ; preds = %_ZN3std2io4Read8read_buf17h78d691331ac6ea85E.exit.peel
  unreachable

.split:                                           ; preds = %_ZN3std2io4Read8read_buf17h78d691331ac6ea85E.exit.thread20
  %.mask43 = and i64 %i.cj, -4294967296
  %i.cl = icmp eq i64 %.mask43, 17179869184
  br i1 %i.cl, label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h255c5d003656fdfdE.exit.peel.backedge", label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h2c169de990359478E.exit.thread.loopexit.split.loop.exit60"

.split41:                                         ; preds = %_ZN3std2io4Read8read_buf17h78d691331ac6ea85E.exit.thread20
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.cn = load i8, ptr %i.cm, align 8, !range !15114, !noundef !27
  %i.co = icmp eq i8 %i.cn, 35
  br i1 %i.co, label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h255c5d003656fdfdE.exit.peel.backedge", label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h2c169de990359478E.exit.thread.loopexit.split.loop.exit60"

.split40:                                         ; preds = %_ZN3std2io4Read8read_buf17h78d691331ac6ea85E.exit.thread20
  %i.cp = getelementptr i8, ptr %i.ci, i64 -1     ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cp) ]
  %i.cq = getelementptr i8, ptr %i.ci, i64 15
  %i.cr = load i8, ptr %i.cq, align 8, !range !15114, !noundef !27
  %i.cs = icmp eq i8 %i.cr, 35
  br i1 %i.cs, label %bb.x, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h2c169de990359478E.exit.thread.loopexit.split.loop.exit60"

bb.w:                                             ; preds = %_ZN3std2io4Read8read_buf17h78d691331ac6ea85E.exit.thread20
  %i.ct = icmp ult ptr %i.ci, inttoptr (i64 180388626432 to ptr)
  call void @llvm.assume(i1 %i.ct)
  %.mask = and i64 %i.cj, -4294967296
  %i.cu = icmp eq i64 %.mask, 150323855360
  br i1 %i.cu, label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h255c5d003656fdfdE.exit.peel.backedge", label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h2c169de990359478E.exit.thread.loopexit.split.loop.exit60"

"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h255c5d003656fdfdE.exit.peel.backedge": ; preds = %bb.w, %.split, %.split41
  br label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h255c5d003656fdfdE.exit.peel", !llvm.loop !19231

bb.x:                                             ; preds = %.split40
  %.val.i.i.i.i.i = load ptr, ptr %i.cp, align 8, !noalias !19227 ; 4 uses
  %i.cv = getelementptr i8, ptr %i.ci, i64 7
  %.val1.i.i.i.i.i = load ptr, ptr %i.cv, align 8, !noalias !19227, !nonnull !27, !align !148, !noundef !27 ; 3 uses
  %i.cw = load ptr, ptr %.val1.i.i.i.i.i, align 8, !invariant.load !27, !noalias !19227 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cw, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  invoke void %i.cw(ptr noundef nonnull %.val.i.i.i.i.i)
          to label %bb.z unwind label %.loopexit79, !noalias !19227

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.cx = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 8
  %i.cy = load i64, ptr %i.cx, align 8, !range !28, !invariant.load !27, !noalias !19227
  %i.cz = icmp eq i64 %i.cy, 0
  br i1 %i.cz, label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h255c5d003656fdfdE.exit.peel.sink.split", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i", !llvm.loop !19231
end_hunk_4
begin_hunk_5_@_ZN6brotli3enc17brotli_bit_stream12LogMetaBlock17h8d6ec10e9474062aE:bb.a

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %bb.ed
  %i.ze = phi i64 [ %i.zu, %bb.ed ], [ %i.zc, %.lr.ph.i ]
  %.sroa.04.2203.us.i = phi i64 [ %i.zl, %bb.ed ], [ %.sroa.04.0225.i, %.lr.ph.i ]
  %.sroa.023.2202.us.i = phi i64 [ %i.zk, %bb.ed ], [ %.sroa.023.0219.i, %.lr.ph.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ev), !noalias !35827
  invoke void @_ZN6brotli3enc10input_pair9InputPair8split_at17hfae0f30deb0a91f7E(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.ev, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ex, i64 noundef %i.ze)
          to label %.noexc334 unwind label %.loopexit338

.noexc334:                                        ; preds = %.lr.ph.split.us.i
  %.sroa.0.0.copyload.us.i = load i64, ptr %i.ev, align 16, !noalias !35827 ; 2 uses
  %.sroa.6.0.copyload136.us.i = load i64, ptr %.sroa.6.0..sroa_idx135.i, align 8, !noalias !35827 ; 4 uses
  %.sroa.10.sroa.0.0.copyload260.i = load i64, ptr %.sroa.10.0..sroa_idx.i321, align 16, !noalias !35827 ; 2 uses
  %.sroa.10.sroa.9.0.copyload262.i = load i64, ptr %.sroa.10.sroa.9.0..sroa.10.0..sroa_idx.sroa_idx.i, align 8, !noalias !35827 ; 2 uses
  %.sroa.13.0.copyload.us.i = load i64, ptr %.sroa.13.0..sroa_idx.i322, align 16, !noalias !35827 ; 5 uses
  %.sroa.17.0.copyload.us.i = load i64, ptr %.sroa.17.0..sroa_idx.i323, align 8, !noalias !35827 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ew, ptr noundef nonnull align 16 dereferenceable(48) %i.wa, i64 48, i1 false), !noalias !35827
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ev), !noalias !35827
  %i.zf = add i64 %.sroa.13.0.copyload.us.i, %.sroa.6.0.copyload136.us.i ; 2 uses
  %i.zg = icmp eq i64 %i.zf, 0
  br i1 %i.zg, label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17h80399f584d46abe3E.exit125.us.i, label %bb.ds

bb.ds:                                            ; preds = %.noexc334
  %i.zh = icmp eq i64 %.sroa.6.0.copyload136.us.i, 0 ; 2 uses
  br i1 %i.wf, label %bb.dx, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  br i1 %i.zh, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %bb.dt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ds), !noalias !35840
  store i64 %.sroa.0.0.copyload.us.i, ptr %i.wg, align 8, !noalias !35844
  store i64 %.sroa.6.0.copyload136.us.i, ptr %.sroa.6.0..sroa_idx141.i, align 8, !noalias !35844
  store i64 %.sroa.10.sroa.0.0.copyload260.i, ptr %.sroa.10.0..sroa_idx148.i, align 8, !noalias !35844
  store i8 1, ptr %.sroa.4.0..sroa_idx.i129.i, align 8, !noalias !35840
  store i8 2, ptr %i.ds, align 8, !noalias !35840
  invoke fastcc void @"_ZN110_$LT$brotli..enc..stride_eval..StrideEval$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17h0b64ed242f4170beE"(ptr noalias noundef nonnull align 8 dereferenceable(240) %i.hl, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.ds)
          to label %.noexc335 unwind label %.loopexit338

.noexc335:                                        ; preds = %bb.du
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds), !noalias !35840
  br label %bb.dv

bb.dv:                                            ; preds = %.noexc335, %bb.dt
  %i.zi = icmp eq i64 %.sroa.13.0.copyload.us.i, 0
  br i1 %i.zi, label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17h80399f584d46abe3E.exit125.us.i, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dr), !noalias !35840
  store i64 %.sroa.10.sroa.9.0.copyload262.i, ptr %i.wh, align 8, !noalias !35844
  store i64 %.sroa.13.0.copyload.us.i, ptr %.sroa.13.24..sroa_idx153.i, align 8, !noalias !35844
  store i64 %.sroa.17.0.copyload.us.i, ptr %.sroa.17.24..sroa_idx160.i, align 8, !noalias !35844
  store i8 1, ptr %.sroa.42.0..sroa_idx.i130.i, align 8, !noalias !35840
  store i8 2, ptr %i.dr, align 8, !noalias !35840
  invoke fastcc void @"_ZN110_$LT$brotli..enc..stride_eval..StrideEval$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17h0b64ed242f4170beE"(ptr noalias noundef nonnull align 8 dereferenceable(240) %i.hl, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.dr)
          to label %.noexc336 unwind label %.loopexit338

.noexc336:                                        ; preds = %bb.dw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dr), !noalias !35840
  br label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17h80399f584d46abe3E.exit125.us.i

bb.dx:                                            ; preds = %bb.ds
  br i1 %i.zh, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.du), !noalias !35845
  store i64 %.sroa.0.0.copyload.us.i, ptr %i.wi, align 8, !noalias !35849
  store i64 %.sroa.6.0.copyload136.us.i, ptr %.sroa.6.0..sroa_idx139.i, align 8, !noalias !35849
  store i64 %.sroa.10.sroa.0.0.copyload260.i, ptr %.sroa.10.0..sroa_idx147.i, align 8, !noalias !35849
  store i8 0, ptr %.sroa.4.0..sroa_idx.i126.i, align 8, !noalias !35845
  store i8 2, ptr %i.du, align 8, !noalias !35845
  invoke fastcc void @"_ZN110_$LT$brotli..enc..stride_eval..StrideEval$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17h0b64ed242f4170beE"(ptr noalias noundef nonnull align 8 dereferenceable(240) %i.hl, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.du)
          to label %.noexc337 unwind label %.loopexit338

.noexc337:                                        ; preds = %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.du), !noalias !35845
  br label %bb.dz

bb.dz:                                            ; preds = %.noexc337, %bb.dx
  %i.zj = icmp eq i64 %.sroa.13.0.copyload.us.i, 0
  br i1 %i.zj, label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17h80399f584d46abe3E.exit125.us.i, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dt), !noalias !35845
  store i64 %.sroa.10.sroa.9.0.copyload262.i, ptr %i.wj, align 8, !noalias !35849
  store i64 %.sroa.13.0.copyload.us.i, ptr %.sroa.13.24..sroa_idx151.i, align 8, !noalias !35849
  store i64 %.sroa.17.0.copyload.us.i, ptr %.sroa.17.24..sroa_idx158.i, align 8, !noalias !35849
  store i8 0, ptr %.sroa.42.0..sroa_idx.i127.i, align 8, !noalias !35845
  store i8 2, ptr %i.dt, align 8, !noalias !35845
  invoke fastcc void @"_ZN110_$LT$brotli..enc..stride_eval..StrideEval$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17h0b64ed242f4170beE"(ptr noalias noundef nonnull align 8 dereferenceable(240) %i.hl, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.dt)
          to label %.noexc338 unwind label %.loopexit338

.noexc338:                                        ; preds = %bb.ea
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dt), !noalias !35845
  br label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17h80399f584d46abe3E.exit125.us.i

_ZN6brotli3enc9interface16CommandProcessor13push_literals17h80399f584d46abe3E.exit125.us.i: ; preds = %.noexc338, %bb.dz, %.noexc336, %bb.dv, %.noexc334
  %i.zk = sub i64 %.sroa.023.2202.us.i, %i.zf     ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ex, ptr noundef nonnull align 8 dereferenceable(48) %i.ew, i64 48, i1 false), !noalias !35827
  %i.zl = add i64 %.sroa.04.2203.us.i, 1          ; 7 uses
  %i.zm = icmp ugt i64 %i.hy, %i.zl
  br i1 %i.zm, label %bb.eb, label %bb.ed

bb.eb:                                            ; preds = %_ZN6brotli3enc9interface16CommandProcessor13push_literals17h80399f584d46abe3E.exit125.us.i
  %i.zn = icmp ult i64 %i.zl, %i.wl
  br i1 %i.zn, label %bb.ec, label %.invoke

bb.ec:                                            ; preds = %bb.eb
  %i.zo = getelementptr inbounds nuw [4 x i8], ptr %i.wn, i64 %i.zl
  %i.zp = load i32, ptr %i.zo, align 4, !noalias !35834, !noundef !27
  %i.zq = getelementptr inbounds nuw i8, ptr %i.hw, i64 %i.zl
  %i.zr = load i8, ptr %i.zq, align 1, !noalias !35834, !noundef !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dq), !noalias !35850
  store i8 %i.zr, ptr %i.wo, align 1, !noalias !35850
  store i8 0, ptr %i.wp, align 2, !noalias !35850
  store i8 4, ptr %i.dq, align 8, !noalias !35850
  invoke fastcc void @"_ZN110_$LT$brotli..enc..stride_eval..StrideEval$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17h0b64ed242f4170beE"(ptr noalias noundef nonnull align 8 dereferenceable(240) %i.hl, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.dq)
          to label %.noexc339 unwind label %.loopexit338

.noexc339:                                        ; preds = %bb.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dq), !noalias !35850
  br label %bb.ed

bb.ed:                                            ; preds = %.noexc339, %_ZN6brotli3enc9interface16CommandProcessor13push_literals17h80399f584d46abe3E.exit125.us.i
  %.sroa.016.5.us.i = phi i32 [ %i.zp, %.noexc339 ], [ -2147483648, %_ZN6brotli3enc9interface16CommandProcessor13push_literals17h80399f584d46abe3E.exit125.us.i ] ; 2 uses
  %.pr.us.i = load i64, ptr %.sroa.7.0..sroa_idx46.i, align 8, !noalias !35827 ; 2 uses
  %i.zs = load i64, ptr %.sroa.5.0..sroa_idx39.i, align 8, !noalias !35827, !noundef !27 ; 2 uses
  %i.zt = add i64 %i.zs, %.pr.us.i                ; 2 uses
  %i.zu = zext i32 %.sroa.016.5.us.i to i64       ; 2 uses
  %i.zv = icmp ugt i64 %i.zt, %i.zu
  br i1 %i.zv, label %.lr.ph.split.us.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.gd, %bb.ed, %bb.dr
  %.lcssa174.i = phi i64 [ %.sroa.7.0.copyload.i, %bb.dr ], [ %.pr.us.i, %bb.ed ], [ %.pr.i, %bb.gd ] ; 3 uses
  %.sroa.023.2.lcssa.i = phi i64 [ %.sroa.023.0219.i, %bb.dr ], [ %i.zk, %bb.ed ], [ %i.adh, %bb.gd ]
  %.sroa.016.3.lcssa.i = phi i32 [ %.sroa.016.1222.i, %bb.dr ], [ %.sroa.016.5.us.i, %bb.ed ], [ %.sroa.016.5.i, %bb.gd ]
  %.sroa.04.2.lcssa.i = phi i64 [ %.sroa.04.0225.i, %bb.dr ], [ %i.zl, %bb.ed ], [ %i.adi, %bb.gd ]
  %.lcssa169.i = phi i64 [ %.sroa.5.0.copyload.i, %bb.dr ], [ %i.zs, %bb.ed ], [ %i.adn, %bb.gd ]
  %.lcssa.i = phi i64 [ %i.yb, %bb.dr ], [ %i.zt, %bb.ed ], [ %i.ado, %bb.gd ] ; 2 uses
  %i.zw = icmp eq i64 %.lcssa169.i, 0             ; 3 uses
  br i1 %.not170, label %bb.ei, label %bb.ee

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.gd
  %i.zx = phi i64 [ %i.adp, %bb.gd ], [ %i.zc, %.lr.ph.i ]
  %.sroa.04.2203.i = phi i64 [ %i.adi, %bb.gd ], [ %.sroa.04.0225.i, %.lr.ph.i ]
  %.sroa.023.2202.i = phi i64 [ %i.adh, %bb.gd ], [ %.sroa.023.0219.i, %.lr.ph.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ev), !noalias !35827
  invoke void @_ZN6brotli3enc10input_pair9InputPair8split_at17hfae0f30deb0a91f7E(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.ev, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ex, i64 noundef %i.zx)
          to label %.noexc340 unwind label %.loopexit.split-lp339.loopexit

.noexc340:                                        ; preds = %.lr.ph.split.i
  %.sroa.6.0.copyload136.i = load i64, ptr %.sroa.6.0..sroa_idx135.i, align 8, !noalias !35827 ; 2 uses
  %i.zy = load <2 x i64>, ptr %i.ev, align 16, !noalias !35827
  %.sroa.10.sroa.0.0.copyload.i = load i64, ptr %.sroa.10.0..sroa_idx.i321, align 16, !noalias !35827
  %.sroa.13.0.copyload.i = load i64, ptr %.sroa.13.0..sroa_idx.i322, align 16, !noalias !35827 ; 2 uses
  %i.zz = load <2 x i64>, ptr %.sroa.10.sroa.9.0..sroa.10.0..sroa_idx.sroa_idx.i, align 8, !noalias !35827
  %.sroa.17.0.copyload.i = load i64, ptr %.sroa.17.0..sroa_idx.i323, align 8, !noalias !35827
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ew, ptr noundef nonnull align 16 dereferenceable(48) %i.wa, i64 48, i1 false), !noalias !35827
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ev), !noalias !35827
  %i.aaa = add i64 %.sroa.13.0.copyload.i, %.sroa.6.0.copyload136.i ; 2 uses
  %i.aab = icmp eq i64 %i.aaa, 0
  br i1 %i.aab, label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17h80399f584d46abe3E.exit125.i, label %bb.fy

bb.ee:                                            ; preds = %._crit_edge.i
  br i1 %i.zw, label %bb.eg, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ee), !noalias !35853
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.wq, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.ex, i64 24, i1 false), !noalias !35857
  store i8 0, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !35853
  store i8 2, ptr %i.ee, align 8, !noalias !35853
  invoke fastcc void @"_ZN110_$LT$brotli..enc..stride_eval..StrideEval$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17h0b64ed242f4170beE"(ptr noalias noundef nonnull align 8 dereferenceable(240) %i.hl, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.ee)
          to label %.noexc341 unwind label %.loopexit.split-lp339.loopexit.split-lp.loopexit

.noexc341:                                        ; preds = %bb.ef
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ee), !noalias !35853
  br label %bb.eg

bb.eg:                                            ; preds = %.noexc341, %bb.ee
  %i.aac = icmp eq i64 %.lcssa174.i, 0
  br i1 %i.aac, label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17h80399f584d46abe3E.exit.i, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ed), !noalias !35853
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.wr, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.643.0..sroa_idx44.i, i64 24, i1 false), !noalias !35857
  store i8 0, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !35853
  store i8 2, ptr %i.ed, align 8, !noalias !35853
  invoke fastcc void @"_ZN110_$LT$brotli..enc..stride_eval..StrideEval$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17h0b64ed242f4170beE"(ptr noalias noundef nonnull align 8 dereferenceable(240) %i.hl, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.ed)
          to label %.noexc342 unwind label %.loopexit.split-lp339.loopexit.split-lp.loopexit

.noexc342:                                        ; preds = %bb.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ed), !noalias !35853
  br label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17h80399f584d46abe3E.exit.i

bb.ei:                                            ; preds = %._crit_edge.i
  br i1 %i.wf, label %bb.ej, label %bb.en

_ZN6brotli3enc9interface16CommandProcessor13push_literals17h80399f584d46abe3E.exit.i: ; preds = %.noexc346, %bb.ep, %.noexc344, %bb.el, %.noexc342, %bb.eg
  %i.aad = sub i64 %.sroa.023.2.lcssa.i, %.lcssa.i
  %i.aae = trunc nuw i64 %.lcssa.i to i32
  %i.aaf = sub nuw i32 %.sroa.016.3.lcssa.i, %i.aae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ex), !noalias !35827
  br label %bb.dq

bb.ej:                                            ; preds = %bb.ei
  br i1 %i.zw, label %bb.el, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ec), !noalias !35858
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.wu, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.ex, i64 24, i1 false), !noalias !35862
  store i8 0, ptr %.sroa.4.0..sroa_idx.i114.i, align 8, !noalias !35858
  store i8 2, ptr %i.ec, align 8, !noalias !35858
  invoke fastcc void @"_ZN110_$LT$brotli..enc..stride_eval..StrideEval$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17h0b64ed242f4170beE"(ptr noalias noundef nonnull align 8 dereferenceable(240) %i.hl, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.ec)
          to label %.noexc343 unwind label %.loopexit.split-lp339.loopexit.split-lp.loopexit

.noexc343:                                        ; preds = %bb.ek
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ec), !noalias !35858
  br label %bb.el

bb.el:                                            ; preds = %.noexc343, %bb.ej
  %i.aag = icmp eq i64 %.lcssa174.i, 0
  br i1 %i.aag, label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17h80399f584d46abe3E.exit.i, label %bb.em

bb.em:                                            ; preds = %bb.el
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eb), !noalias !35858
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.wv, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.643.0..sroa_idx44.i, i64 24, i1 false), !noalias !35862
  store i8 0, ptr %.sroa.42.0..sroa_idx.i115.i, align 8, !noalias !35858
  store i8 2, ptr %i.eb, align 8, !noalias !35858
  invoke fastcc void @"_ZN110_$LT$brotli..enc..stride_eval..StrideEval$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17h0b64ed242f4170beE"(ptr noalias noundef nonnull align 8 dereferenceable(240) %i.hl, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.eb)
          to label %.noexc344 unwind label %.loopexit.split-lp339.loopexit.split-lp.loopexit

.noexc344:                                        ; preds = %bb.em
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eb), !noalias !35858
  br label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17h80399f584d46abe3E.exit.i

bb.en:                                            ; preds = %bb.ei
  br i1 %i.zw, label %bb.ep, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ea), !noalias !35863
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ws, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.ex, i64 24, i1 false), !noalias !35867
  store i8 1, ptr %.sroa.4.0..sroa_idx.i117.i, align 8, !noalias !35863
  store i8 2, ptr %i.ea, align 8, !noalias !35863
  invoke fastcc void @"_ZN110_$LT$brotli..enc..stride_eval..StrideEval$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17h0b64ed242f4170beE"(ptr noalias noundef nonnull align 8 dereferenceable(240) %i.hl, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.ea)
          to label %.noexc345 unwind label %.loopexit.split-lp339.loopexit.split-lp.loopexit

.noexc345:                                        ; preds = %bb.eo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ea), !noalias !35863
  br label %bb.ep

bb.ep:                                            ; preds = %.noexc345, %bb.en
  %i.aah = icmp eq i64 %.lcssa174.i, 0
  br i1 %i.aah, label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17h80399f584d46abe3E.exit.i, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dz), !noalias !35863
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.wt, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.643.0..sroa_idx44.i, i64 24, i1 false), !noalias !35867
  store i8 1, ptr %.sroa.42.0..sroa_idx.i118.i, align 8, !noalias !35863
  store i8 2, ptr %i.dz, align 8, !noalias !35863
  invoke fastcc void @"_ZN110_$LT$brotli..enc..stride_eval..StrideEval$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17h0b64ed242f4170beE"(ptr noalias noundef nonnull align 8 dereferenceable(240) %i.hl, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.dz)
          to label %.noexc346 unwind label %.loopexit.split-lp339.loopexit.split-lp.loopexit

.noexc346:                                        ; preds = %bb.eq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dz), !noalias !35863
  br label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17h80399f584d46abe3E.exit.i

bb.er:                                            ; preds = %bb.dq
  %.sroa.0.0.i119.i = call noundef i64 @llvm.umin.i64(i64 %i.ys, i64 %.sroa.023.1.i) ; 5 uses
  %i.aai = icmp eq i64 %.sroa.0.0.i119.i, 0
  br i1 %i.aai, label %bb.eu, label %bb.et

bb.es:                                            ; preds = %bb.dq
  %i.aaj = icmp ugt i32 %i.yl, 3
  br i1 %i.aaj, label %bb.ex, label %.invoke831, !prof !222

bb.et:                                            ; preds = %bb.er
  call void @llvm.lifetime.start.p0(ptr nonnull %i.el), !noalias !35827
  %i.aak = trunc i64 %.sroa.050.0.i to i32
  %i.aal = trunc nuw i64 %.sroa.0.0.i119.i to i32
  store i32 %i.aak, ptr %i.ww, align 4, !noalias !35827
  store i32 %i.aal, ptr %i.wx, align 8, !noalias !35827
  store i8 0, ptr %i.el, align 8, !noalias !35827
  invoke fastcc void @"_ZN110_$LT$brotli..enc..stride_eval..StrideEval$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17h0b64ed242f4170beE"(ptr noalias noundef nonnull align 8 dereferenceable(240) %i.hl, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.el)
          to label %.noexc347 unwind label %.loopexit.split-lp339.loopexit.split-lp.loopexit

.noexc347:                                        ; preds = %bb.et
  call void @llvm.lifetime.end.p0(ptr nonnull %i.el), !noalias !35827
  br label %bb.eu

bb.eu:                                            ; preds = %.noexc347, %bb.er
  %i.aam = sub nuw i64 %.sroa.023.1.i, %.sroa.0.0.i119.i ; 2 uses
  %i.aan = icmp eq i64 %i.yn, 1
  %i.aao = icmp eq i64 %i.yo, 0
  %or.cond.i325 = select i1 %i.aan, i1 %i.aao, i1 false
  br i1 %or.cond.i325, label %bb.ew, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.wy, ptr noundef nonnull align 4 dereferenceable(12) %i.ek, i64 12, i1 false), !noalias !35827
  %i.aap = trunc i64 %.sroa.050.0.i to i32
  store i32 %i.aap, ptr %i.ek, align 4, !noalias !35827
  br label %bb.ew

bb.ew:                                            ; preds = %bb.fj, %bb.ev, %bb.eu
  %.sroa.054.0.i = phi i64 [ %i.abn, %bb.fj ], [ %.sroa.0.0.i119.i, %bb.eu ], [ %.sroa.0.0.i119.i, %bb.ev ]
  %.sroa.023.4.i = phi i64 [ %.sroa.023.5.i, %bb.fj ], [ %i.aam, %bb.eu ], [ %i.aam, %bb.ev ]
  %i.aaq = add i32 %.sroa.019.1221.i, -1          ; 2 uses
  %i.aar = icmp eq i32 %i.aaq, 0
  br i1 %i.aar, label %bb.fo, label %bb.fr

bb.ex:                                            ; preds = %bb.es
  %i.aas = icmp ult i32 %i.yl, 25
  br i1 %i.aas, label %bb.ey, label %.invoke831, !prof !222

bb.ey:                                            ; preds = %bb.ex
  %i.aat = xor i64 %.sroa.0.0.i113.i, -1
  %i.aau = add i64 %.sroa.050.0.i, %i.aat         ; 2 uses
  %i.aav = getelementptr inbounds nuw i8, ptr @1619, i64 %i.ys
  %i.aaw = load i8, ptr %i.aav, align 1, !noalias !35827, !noundef !27
  %i.aax = and i8 %i.aaw, 63
  %i.aay = zext nneg i8 %i.aax to i64             ; 2 uses
  %i.aaz = lshr i64 %i.aau, %i.aay                ; 2 uses
  %notmask.i = shl nsw i64 -1, %i.aay
  %i.aba = xor i64 %notmask.i, -1
  %i.abb = and i64 %i.aau, %i.aba                 ; 2 uses
  %i.abc = mul i64 %i.abb, %i.ys
  %i.abd = getelementptr inbounds nuw [4 x i8], ptr @1620, i64 %i.ys
  %i.abe = load i32, ptr %i.abd, align 4, !noalias !35827, !noundef !27
  %i.abf = zext i32 %i.abe to i64
  %i.abg = add i64 %i.abc, %i.abf                 ; 4 uses
  %i.abh = add i64 %i.abg, %i.ys                  ; 3 uses
  %i.abi = icmp uge i64 %i.abh, %i.abg
  %i.abj = icmp ult i64 %i.abh, 122785
  %or.cond112.i = and i1 %i.abi, %i.abj
  br i1 %or.cond112.i, label %bb.fa, label %bb.ez, !prof !202

bb.ez:                                            ; preds = %bb.ey
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.abg, i64 noundef %i.abh, i64 noundef 122784, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1626) #43
          to label %.noexc350 unwind label %.loopexit.split-lp339.loopexit.split-lp.loopexit.split-lp

.noexc350:                                        ; preds = %bb.ez
  unreachable

bb.fa:                                            ; preds = %bb.ey
  %i.abk = getelementptr inbounds nuw i8, ptr @_ZN19brotli_decompressor10dictionary17kBrotliDictionary17h143067f04a26e6e4E, i64 %i.abg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eu), !noalias !35827
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(38) %i.eu, i8 0, i64 38, i1 false), !noalias !35827
  %i.abl = trunc i64 %i.aaz to i32
  %i.abm = invoke noundef i32 @_ZN19brotli_decompressor9transform23TransformDictionaryWord17he8c22d3ef35a6ad0E(ptr noalias noundef nonnull align 1 %i.eu, i64 noundef 38, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.abk, i64 noundef %i.ys, i32 noundef %i.yl, i32 noundef %i.abl)
          to label %.noexc351 unwind label %.loopexit.split-lp339.loopexit.split-lp.loopexit ; 3 uses

.noexc351:                                        ; preds = %bb.fa
  %i.abn = sext i32 %i.abm to i64                 ; 5 uses
  %.not111.i = icmp ult i64 %.sroa.023.1.i, %i.abn
  br i1 %.not111.i, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %.noexc351
  %i.abo = icmp eq i64 %.sroa.023.1.i, 0
  br i1 %i.abo, label %bb.fj, label %bb.fd

bb.fc:                                            ; preds = %.noexc351
  call void @llvm.lifetime.start.p0(ptr nonnull %i.et), !noalias !35827
  %i.abp = trunc nuw nsw i32 %i.yl to i8
  %i.abq = trunc i64 %i.aaz to i8
  %i.abr = trunc i32 %i.abm to i8
  %i.abs = trunc i64 %i.abb to i32
  store i32 %i.abs, ptr %i.wz, align 4, !noalias !35827
  store i8 %i.abp, ptr %.sroa.4.0..sroa_idx.i324, align 8, !noalias !35827
  store i8 %i.abq, ptr %.sroa.564.0..sroa_idx.i, align 1, !noalias !35827
  store i8 %i.abr, ptr %.sroa.665.0..sroa_idx.i, align 2, !noalias !35827
  store i8 0, ptr %.sroa.766.0..sroa_idx.i, align 1, !noalias !35827
  store i8 1, ptr %i.et, align 8, !noalias !35827
  invoke fastcc void @"_ZN110_$LT$brotli..enc..stride_eval..StrideEval$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17h0b64ed242f4170beE"(ptr noalias noundef nonnull align 8 dereferenceable(240) %i.hl, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.et)
          to label %.noexc352 unwind label %.loopexit.split-lp339.loopexit.split-lp.loopexit

.noexc352:                                        ; preds = %bb.fc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.et), !noalias !35827
  %i.abt = sub nuw i64 %.sroa.023.1.i, %i.abn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.es), !noalias !35827
  %i.abu = icmp ult i32 %i.abm, 39
  br i1 %i.abu, label %bb.fl, label %bb.fk, !prof !222

bb.fd:                                            ; preds = %bb.fb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ep), !noalias !35827
  invoke void @_ZN6brotli3enc10input_pair9InputPair8split_at17hfae0f30deb0a91f7E(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.ep, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ez, i64 noundef %.sroa.023.1.i)
          to label %.noexc353 unwind label %.loopexit.split-lp339.loopexit.split-lp.loopexit

.noexc353:                                        ; preds = %bb.fd
  call void @llvm.experimental.noalias.scope.decl(metadata !35868)
  %i.abv = load i64, ptr %i.xb, align 8, !alias.scope !35868, !noalias !35871, !noundef !27
  %i.abw = icmp eq i64 %i.abv, 0
  br i1 %i.abw, label %bb.ff, label %bb.fe

bb.fe:                                            ; preds = %.noexc353
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dy), !noalias !35873
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.xc, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.ep, i64 24, i1 false), !noalias !35871
  store i8 0, ptr %.sroa.4.0..sroa_idx.i120.i, align 8, !noalias !35873
  store i8 2, ptr %i.dy, align 8, !noalias !35873
  invoke fastcc void @"_ZN110_$LT$brotli..enc..stride_eval..StrideEval$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17h0b64ed242f4170beE"(ptr noalias noundef nonnull align 8 dereferenceable(240) %i.hl, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.dy)
          to label %.noexc354 unwind label %.loopexit.split-lp339.loopexit.split-lp.loopexit

.noexc354:                                        ; preds = %bb.fe
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dy), !noalias !35873
  br label %bb.ff

bb.ff:                                            ; preds = %.noexc354, %.noexc353
  %i.abx = load i64, ptr %i.xd, align 8, !alias.scope !35868, !noalias !35871, !noundef !27
  %i.aby = icmp eq i64 %i.abx, 0
  br i1 %i.aby, label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17h80399f584d46abe3E.exit122.i, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dx), !noalias !35873
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.xf, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.xe, i64 24, i1 false), !noalias !35871
  store i8 0, ptr %.sroa.42.0..sroa_idx.i121.i, align 8, !noalias !35873
  store i8 2, ptr %i.dx, align 8, !noalias !35873
  invoke fastcc void @"_ZN110_$LT$brotli..enc..stride_eval..StrideEval$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17h0b64ed242f4170beE"(ptr noalias noundef nonnull align 8 dereferenceable(240) %i.hl, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.dx)
          to label %.noexc355 unwind label %.loopexit.split-lp339.loopexit.split-lp.loopexit

.noexc355:                                        ; preds = %bb.fg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dx), !noalias !35873
  br label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17h80399f584d46abe3E.exit122.i

_ZN6brotli3enc9interface16CommandProcessor13push_literals17h80399f584d46abe3E.exit122.i: ; preds = %.noexc355, %bb.ff
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ep), !noalias !35827
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eo), !noalias !35827
  store ptr %i.eu, ptr %i.eo, align 8, !noalias !35827
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.474.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !35827
  store ptr inttoptr (i64 1 to ptr), ptr %i.xg, align 8, !noalias !35827
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.477.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !35827
  call void @llvm.lifetime.start.p0(ptr nonnull %i.en), !noalias !35827
  invoke void @_ZN6brotli3enc10input_pair9InputPair8split_at17hfae0f30deb0a91f7E(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.en, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ez, i64 noundef 0)
          to label %.noexc356 unwind label %.loopexit.split-lp339.loopexit.split-lp.loopexit

.noexc356:                                        ; preds = %_ZN6brotli3enc9interface16CommandProcessor13push_literals17h80399f584d46abe3E.exit122.i
  %i.abz = invoke noundef zeroext i1 @"_ZN75_$LT$brotli..enc..input_pair..InputPair$u20$as$u20$core..cmp..PartialEq$GT$2eq17ha719365bd820edd4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.eo, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.en)
          to label %.noexc357 unwind label %.loopexit.split-lp339.loopexit.split-lp.loopexit

.noexc357:                                        ; preds = %.noexc356
  br i1 %i.abz, label %bb.fi, label %bb.fh, !prof !222

bb.fh:                                            ; preds = %.noexc357
  call void @llvm.lifetime.start.p0(ptr nonnull %i.em), !noalias !35827
  br label %.invoke833

.invoke833:                                       ; preds = %bb.fm, %bb.fh
  %.sink866 = phi ptr [ %i.eq, %bb.fm ], [ %i.em, %bb.fh ] ; 2 uses
  %i.aca = phi ptr [ %i.es, %bb.fm ], [ %i.eo, %bb.fh ]
  %i.acb = phi ptr [ %i.er, %bb.fm ], [ %i.en, %bb.fh ]
  %i.acc = phi ptr [ @1623, %bb.fm ], [ @1621, %bb.fh ]
  store ptr null, ptr %.sink866, align 8, !noalias !35827
  invoke void @_ZN4core9panicking13assert_failed17ha55082e04b90c138E(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aca, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.acb, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %.sink866, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.acc) #43
          to label %.cont834 unwind label %.loopexit.split-lp339.loopexit.split-lp.loopexit.split-lp

.cont834:                                         ; preds = %.invoke833
  unreachable

bb.fi:                                            ; preds = %.noexc357
  call void @llvm.lifetime.end.p0(ptr nonnull %i.en), !noalias !35827
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eo), !noalias !35827
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fn, %bb.fi, %bb.fb
  %.sroa.023.5.i = phi i64 [ %i.abt, %bb.fn ], [ 0, %bb.fb ], [ 0, %bb.fi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eu), !noalias !35827
  br label %bb.ew

bb.fk:                                            ; preds = %.noexc352
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eg), !noalias !35827
  store ptr @186, ptr %i.eg, align 8, !noalias !35827
  %i.acd = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  store i64 1, ptr %i.acd, align 8, !noalias !35827
  %i.ace = getelementptr inbounds nuw i8, ptr %i.eg, i64 32
  store ptr null, ptr %i.ace, align 8, !noalias !35827
  %i.acf = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.acf, align 8, !noalias !35827
  %i.acg = getelementptr inbounds nuw i8, ptr %i.eg, i64 24
  store i64 0, ptr %i.acg, align 8, !noalias !35827
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.eg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1622) #43
          to label %.noexc359 unwind label %.loopexit.split-lp339.loopexit.split-lp.loopexit.split-lp

.noexc359:                                        ; preds = %bb.fk
  unreachable

bb.fl:                                            ; preds = %.noexc352
  store ptr %i.eu, ptr %i.es, align 8, !noalias !35827
  store i64 %i.abn, ptr %.sroa.468.0..sroa_idx.i, align 8, !noalias !35827
  store i64 0, ptr %.sroa.569.0..sroa_idx.i, align 8, !noalias !35827
  store ptr inttoptr (i64 1 to ptr), ptr %i.xa, align 8, !noalias !35827
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.471.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !35827
  call void @llvm.lifetime.start.p0(ptr nonnull %i.er), !noalias !35827
  invoke void @_ZN6brotli3enc10input_pair9InputPair8split_at17hfae0f30deb0a91f7E(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.er, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ez, i64 noundef %i.abn)
          to label %.noexc360 unwind label %.loopexit.split-lp339.loopexit.split-lp.loopexit
end_hunk_5
begin_hunk_6_@_ZN6brotli3enc17brotli_bit_stream12LogMetaBlock17h8d6ec10e9474062aE:bb.a

.lr.ph.split.us.i509:                             ; preds = %.lr.ph.i495, %bb.hz
  %i.aqy = phi i64 [ %i.aro, %bb.hz ], [ %i.aqw, %.lr.ph.i495 ]
  %.sroa.04.2203.us.i510 = phi i64 [ %i.arf, %bb.hz ], [ %.sroa.04.0225.i451, %.lr.ph.i495 ]
  %.sroa.023.2202.us.i511 = phi i64 [ %i.are, %bb.hz ], [ %.sroa.023.0219.i457, %.lr.ph.i495 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dg), !noalias !35925
  invoke void @_ZN6brotli3enc10input_pair9InputPair8split_at17hfae0f30deb0a91f7E(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.di, i64 noundef %i.aqy)
          to label %.noexc528 unwind label %.loopexit323

.noexc528:                                        ; preds = %.lr.ph.split.us.i509
  %.sroa.0.0.copyload.us.i512 = load i64, ptr %i.dg, align 16, !noalias !35925 ; 2 uses
  %.sroa.6.0.copyload136.us.i513 = load i64, ptr %.sroa.6.0..sroa_idx135.i407, align 8, !noalias !35925 ; 4 uses
  %.sroa.10.sroa.0.0.copyload260.i514 = load i64, ptr %.sroa.10.0..sroa_idx.i408, align 16, !noalias !35925 ; 2 uses
  %.sroa.10.sroa.9.0.copyload262.i515 = load i64, ptr %.sroa.10.sroa.9.0..sroa.10.0..sroa_idx.sroa_idx.i447, align 8, !noalias !35925 ; 2 uses
  %.sroa.13.0.copyload.us.i516 = load i64, ptr %.sroa.13.0..sroa_idx.i409, align 16, !noalias !35925 ; 5 uses
  %.sroa.17.0.copyload.us.i517 = load i64, ptr %.sroa.17.0..sroa_idx.i410, align 8, !noalias !35925 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dh, ptr noundef nonnull align 16 dereferenceable(48) %i.anu, i64 48, i1 false), !noalias !35925
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg), !noalias !35925
  %i.aqz = add i64 %.sroa.13.0.copyload.us.i516, %.sroa.6.0.copyload136.us.i513 ; 2 uses
  %i.ara = icmp eq i64 %i.aqz, 0
  br i1 %i.ara, label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17hdd3b6b5a3a9f63baE.exit125.us.i, label %bb.ho

bb.ho:                                            ; preds = %.noexc528
  %i.arb = icmp eq i64 %.sroa.6.0.copyload136.us.i513, 0 ; 2 uses
  br i1 %i.anz, label %bb.ht, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  br i1 %i.arb, label %bb.hr, label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd), !noalias !35938
  store i64 %.sroa.0.0.copyload.us.i512, ptr %i.aoa, align 8, !noalias !35942
  store i64 %.sroa.6.0.copyload136.us.i513, ptr %.sroa.6.0..sroa_idx141.i418, align 8, !noalias !35942
  store i64 %.sroa.10.sroa.0.0.copyload260.i514, ptr %.sroa.10.0..sroa_idx148.i419, align 8, !noalias !35942
  store i8 1, ptr %.sroa.4.0..sroa_idx.i129.i420, align 8, !noalias !35938
  store i8 2, ptr %i.cd, align 8, !noalias !35938
  invoke fastcc void @"_ZN125_$LT$brotli..enc..context_map_entropy..ContextMapEntropy$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17h111377d6a234b205E"(ptr noalias noundef nonnull align 8 dereferenceable(920) %i.hk, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.cd)
          to label %.noexc529 unwind label %.loopexit323

.noexc529:                                        ; preds = %bb.hq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd), !noalias !35938
  br label %bb.hr

bb.hr:                                            ; preds = %.noexc529, %bb.hp
  %i.arc = icmp eq i64 %.sroa.13.0.copyload.us.i516, 0
  br i1 %i.arc, label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17hdd3b6b5a3a9f63baE.exit125.us.i, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc), !noalias !35938
  store i64 %.sroa.10.sroa.9.0.copyload262.i515, ptr %i.aob, align 8, !noalias !35942
  store i64 %.sroa.13.0.copyload.us.i516, ptr %.sroa.13.24..sroa_idx153.i421, align 8, !noalias !35942
  store i64 %.sroa.17.0.copyload.us.i517, ptr %.sroa.17.24..sroa_idx160.i422, align 8, !noalias !35942
  store i8 1, ptr %.sroa.42.0..sroa_idx.i130.i423, align 8, !noalias !35938
  store i8 2, ptr %i.cc, align 8, !noalias !35938
  invoke fastcc void @"_ZN125_$LT$brotli..enc..context_map_entropy..ContextMapEntropy$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17h111377d6a234b205E"(ptr noalias noundef nonnull align 8 dereferenceable(920) %i.hk, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.cc)
          to label %.noexc530 unwind label %.loopexit323

.noexc530:                                        ; preds = %bb.hs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc), !noalias !35938
  br label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17hdd3b6b5a3a9f63baE.exit125.us.i

bb.ht:                                            ; preds = %bb.ho
  br i1 %i.arb, label %bb.hv, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf), !noalias !35943
  store i64 %.sroa.0.0.copyload.us.i512, ptr %i.aoc, align 8, !noalias !35947
  store i64 %.sroa.6.0.copyload136.us.i513, ptr %.sroa.6.0..sroa_idx139.i424, align 8, !noalias !35947
  store i64 %.sroa.10.sroa.0.0.copyload260.i514, ptr %.sroa.10.0..sroa_idx147.i425, align 8, !noalias !35947
  store i8 0, ptr %.sroa.4.0..sroa_idx.i126.i426, align 8, !noalias !35943
  store i8 2, ptr %i.cf, align 8, !noalias !35943
  invoke fastcc void @"_ZN125_$LT$brotli..enc..context_map_entropy..ContextMapEntropy$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17h111377d6a234b205E"(ptr noalias noundef nonnull align 8 dereferenceable(920) %i.hk, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.cf)
          to label %.noexc531 unwind label %.loopexit323

.noexc531:                                        ; preds = %bb.hu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf), !noalias !35943
  br label %bb.hv

bb.hv:                                            ; preds = %.noexc531, %bb.ht
  %i.ard = icmp eq i64 %.sroa.13.0.copyload.us.i516, 0
  br i1 %i.ard, label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17hdd3b6b5a3a9f63baE.exit125.us.i, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce), !noalias !35943
  store i64 %.sroa.10.sroa.9.0.copyload262.i515, ptr %i.aod, align 8, !noalias !35947
  store i64 %.sroa.13.0.copyload.us.i516, ptr %.sroa.13.24..sroa_idx151.i427, align 8, !noalias !35947
  store i64 %.sroa.17.0.copyload.us.i517, ptr %.sroa.17.24..sroa_idx158.i428, align 8, !noalias !35947
  store i8 0, ptr %.sroa.42.0..sroa_idx.i127.i429, align 8, !noalias !35943
  store i8 2, ptr %i.ce, align 8, !noalias !35943
  invoke fastcc void @"_ZN125_$LT$brotli..enc..context_map_entropy..ContextMapEntropy$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17h111377d6a234b205E"(ptr noalias noundef nonnull align 8 dereferenceable(920) %i.hk, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.ce)
          to label %.noexc532 unwind label %.loopexit323

.noexc532:                                        ; preds = %bb.hw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce), !noalias !35943
  br label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17hdd3b6b5a3a9f63baE.exit125.us.i

_ZN6brotli3enc9interface16CommandProcessor13push_literals17hdd3b6b5a3a9f63baE.exit125.us.i: ; preds = %.noexc532, %bb.hv, %.noexc530, %bb.hr, %.noexc528
  %i.are = sub i64 %.sroa.023.2202.us.i511, %i.aqz ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.di, ptr noundef nonnull align 8 dereferenceable(48) %i.dh, i64 48, i1 false), !noalias !35925
  %i.arf = add i64 %.sroa.04.2203.us.i510, 1      ; 7 uses
  %i.arg = icmp ugt i64 %i.hy, %i.arf
  br i1 %i.arg, label %bb.hx, label %bb.hz

bb.hx:                                            ; preds = %_ZN6brotli3enc9interface16CommandProcessor13push_literals17hdd3b6b5a3a9f63baE.exit125.us.i
  %i.arh = icmp ult i64 %i.arf, %i.aof
  br i1 %i.arh, label %bb.hy, label %.invoke851

bb.hy:                                            ; preds = %bb.hx
  %i.ari = getelementptr inbounds nuw [4 x i8], ptr %i.aoh, i64 %i.arf
  %i.arj = load i32, ptr %i.ari, align 4, !noalias !35932, !noundef !27
  %i.ark = getelementptr inbounds nuw i8, ptr %i.hw, i64 %i.arf
  %i.arl = load i8, ptr %i.ark, align 1, !noalias !35932, !noundef !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb), !noalias !35948
  store i8 %i.arl, ptr %i.aoi, align 1, !noalias !35948
  store i8 0, ptr %i.aoj, align 2, !noalias !35948
  store i8 4, ptr %i.cb, align 8, !noalias !35948
  invoke fastcc void @"_ZN125_$LT$brotli..enc..context_map_entropy..ContextMapEntropy$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17h111377d6a234b205E"(ptr noalias noundef nonnull align 8 dereferenceable(920) %i.hk, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.cb)
          to label %.noexc533 unwind label %.loopexit323

.noexc533:                                        ; preds = %bb.hy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb), !noalias !35948
  br label %bb.hz

bb.hz:                                            ; preds = %.noexc533, %_ZN6brotli3enc9interface16CommandProcessor13push_literals17hdd3b6b5a3a9f63baE.exit125.us.i
  %.sroa.016.5.us.i518 = phi i32 [ %i.arj, %.noexc533 ], [ -2147483648, %_ZN6brotli3enc9interface16CommandProcessor13push_literals17hdd3b6b5a3a9f63baE.exit125.us.i ] ; 2 uses
  %.pr.us.i519 = load i64, ptr %.sroa.7.0..sroa_idx46.i405, align 8, !noalias !35925 ; 2 uses
  %i.arm = load i64, ptr %.sroa.5.0..sroa_idx39.i402, align 8, !noalias !35925, !noundef !27 ; 2 uses
  %i.arn = add i64 %i.arm, %.pr.us.i519           ; 2 uses
  %i.aro = zext i32 %.sroa.016.5.us.i518 to i64   ; 2 uses
  %i.arp = icmp ugt i64 %i.arn, %i.aro
  br i1 %i.arp, label %.lr.ph.split.us.i509, label %._crit_edge.i470

._crit_edge.i470:                                 ; preds = %bb.jz, %bb.hz, %bb.hn
  %.lcssa174.i471 = phi i64 [ %.sroa.7.0.copyload.i464, %bb.hn ], [ %.pr.us.i519, %bb.hz ], [ %.pr.i506, %bb.jz ] ; 3 uses
  %.sroa.023.2.lcssa.i472 = phi i64 [ %.sroa.023.0219.i457, %bb.hn ], [ %i.are, %bb.hz ], [ %i.avb, %bb.jz ]
  %.sroa.016.3.lcssa.i473 = phi i32 [ %.sroa.016.1222.i454, %bb.hn ], [ %.sroa.016.5.us.i518, %bb.hz ], [ %.sroa.016.5.i505, %bb.jz ]
  %.sroa.04.2.lcssa.i474 = phi i64 [ %.sroa.04.0225.i451, %bb.hn ], [ %i.arf, %bb.hz ], [ %i.avc, %bb.jz ]
  %.lcssa169.i475 = phi i64 [ %.sroa.5.0.copyload.i461, %bb.hn ], [ %i.arm, %bb.hz ], [ %i.avh, %bb.jz ]
  %.lcssa.i476 = phi i64 [ %i.apv, %bb.hn ], [ %i.arn, %bb.hz ], [ %i.avi, %bb.jz ] ; 2 uses
  %i.arq = icmp eq i64 %.lcssa169.i475, 0         ; 3 uses
  br i1 %.not170, label %bb.ie, label %bb.ia

.lr.ph.split.i496:                                ; preds = %.lr.ph.i495, %bb.jz
  %i.arr = phi i64 [ %i.avj, %bb.jz ], [ %i.aqw, %.lr.ph.i495 ]
  %.sroa.04.2203.i497 = phi i64 [ %i.avc, %bb.jz ], [ %.sroa.04.0225.i451, %.lr.ph.i495 ]
  %.sroa.023.2202.i498 = phi i64 [ %i.avb, %bb.jz ], [ %.sroa.023.0219.i457, %.lr.ph.i495 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dg), !noalias !35925
  invoke void @_ZN6brotli3enc10input_pair9InputPair8split_at17hfae0f30deb0a91f7E(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.di, i64 noundef %i.arr)
          to label %.noexc534 unwind label %.loopexit.split-lp324.loopexit

.noexc534:                                        ; preds = %.lr.ph.split.i496
  %.sroa.6.0.copyload136.i500 = load i64, ptr %.sroa.6.0..sroa_idx135.i407, align 8, !noalias !35925 ; 2 uses
  %i.ars = load <2 x i64>, ptr %i.dg, align 16, !noalias !35925
  %.sroa.10.sroa.0.0.copyload.i501 = load i64, ptr %.sroa.10.0..sroa_idx.i408, align 16, !noalias !35925
  %.sroa.13.0.copyload.i503 = load i64, ptr %.sroa.13.0..sroa_idx.i409, align 16, !noalias !35925 ; 2 uses
  %i.art = load <2 x i64>, ptr %.sroa.10.sroa.9.0..sroa.10.0..sroa_idx.sroa_idx.i447, align 8, !noalias !35925
  %.sroa.17.0.copyload.i504 = load i64, ptr %.sroa.17.0..sroa_idx.i410, align 8, !noalias !35925
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dh, ptr noundef nonnull align 16 dereferenceable(48) %i.anu, i64 48, i1 false), !noalias !35925
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg), !noalias !35925
  %i.aru = add i64 %.sroa.13.0.copyload.i503, %.sroa.6.0.copyload136.i500 ; 2 uses
  %i.arv = icmp eq i64 %i.aru, 0
  br i1 %i.arv, label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17hdd3b6b5a3a9f63baE.exit125.i, label %bb.ju

bb.ia:                                            ; preds = %._crit_edge.i470
  br i1 %i.arq, label %bb.ic, label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp), !noalias !35951
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aok, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.di, i64 24, i1 false), !noalias !35955
  store i8 0, ptr %.sroa.4.0..sroa_idx.i.i430, align 8, !noalias !35951
  store i8 2, ptr %i.cp, align 8, !noalias !35951
  invoke fastcc void @"_ZN125_$LT$brotli..enc..context_map_entropy..ContextMapEntropy$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17h111377d6a234b205E"(ptr noalias noundef nonnull align 8 dereferenceable(920) %i.hk, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.cp)
          to label %.noexc535 unwind label %.loopexit.split-lp324.loopexit.split-lp.loopexit

.noexc535:                                        ; preds = %bb.ib
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp), !noalias !35951
  br label %bb.ic

bb.ic:                                            ; preds = %.noexc535, %bb.ia
  %i.arw = icmp eq i64 %.lcssa174.i471, 0
  br i1 %i.arw, label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17hdd3b6b5a3a9f63baE.exit.i, label %bb.id

bb.id:                                            ; preds = %bb.ic
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co), !noalias !35951
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aol, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.643.0..sroa_idx44.i404, i64 24, i1 false), !noalias !35955
  store i8 0, ptr %.sroa.42.0..sroa_idx.i.i431, align 8, !noalias !35951
  store i8 2, ptr %i.co, align 8, !noalias !35951
  invoke fastcc void @"_ZN125_$LT$brotli..enc..context_map_entropy..ContextMapEntropy$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17h111377d6a234b205E"(ptr noalias noundef nonnull align 8 dereferenceable(920) %i.hk, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.co)
          to label %.noexc536 unwind label %.loopexit.split-lp324.loopexit.split-lp.loopexit

.noexc536:                                        ; preds = %bb.id
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co), !noalias !35951
  br label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17hdd3b6b5a3a9f63baE.exit.i

bb.ie:                                            ; preds = %._crit_edge.i470
  br i1 %i.anz, label %bb.if, label %bb.ij

_ZN6brotli3enc9interface16CommandProcessor13push_literals17hdd3b6b5a3a9f63baE.exit.i: ; preds = %.noexc540, %bb.il, %.noexc538, %bb.ih, %.noexc536, %bb.ic
  %i.arx = sub i64 %.sroa.023.2.lcssa.i472, %.lcssa.i476
  %i.ary = trunc nuw i64 %.lcssa.i476 to i32
  %i.arz = sub nuw i32 %.sroa.016.3.lcssa.i473, %i.ary
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di), !noalias !35925
  br label %bb.hm

bb.if:                                            ; preds = %bb.ie
  br i1 %i.arq, label %bb.ih, label %bb.ig

bb.ig:                                            ; preds = %bb.if
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn), !noalias !35956
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aoo, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.di, i64 24, i1 false), !noalias !35960
  store i8 0, ptr %.sroa.4.0..sroa_idx.i114.i434, align 8, !noalias !35956
  store i8 2, ptr %i.cn, align 8, !noalias !35956
  invoke fastcc void @"_ZN125_$LT$brotli..enc..context_map_entropy..ContextMapEntropy$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17h111377d6a234b205E"(ptr noalias noundef nonnull align 8 dereferenceable(920) %i.hk, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.cn)
          to label %.noexc537 unwind label %.loopexit.split-lp324.loopexit.split-lp.loopexit

.noexc537:                                        ; preds = %bb.ig
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn), !noalias !35956
  br label %bb.ih

bb.ih:                                            ; preds = %.noexc537, %bb.if
  %i.asa = icmp eq i64 %.lcssa174.i471, 0
  br i1 %i.asa, label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17hdd3b6b5a3a9f63baE.exit.i, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm), !noalias !35956
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aop, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.643.0..sroa_idx44.i404, i64 24, i1 false), !noalias !35960
  store i8 0, ptr %.sroa.42.0..sroa_idx.i115.i435, align 8, !noalias !35956
  store i8 2, ptr %i.cm, align 8, !noalias !35956
  invoke fastcc void @"_ZN125_$LT$brotli..enc..context_map_entropy..ContextMapEntropy$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17h111377d6a234b205E"(ptr noalias noundef nonnull align 8 dereferenceable(920) %i.hk, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.cm)
          to label %.noexc538 unwind label %.loopexit.split-lp324.loopexit.split-lp.loopexit

.noexc538:                                        ; preds = %bb.ii
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm), !noalias !35956
  br label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17hdd3b6b5a3a9f63baE.exit.i

bb.ij:                                            ; preds = %bb.ie
  br i1 %i.arq, label %bb.il, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl), !noalias !35961
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aom, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.di, i64 24, i1 false), !noalias !35965
  store i8 1, ptr %.sroa.4.0..sroa_idx.i117.i432, align 8, !noalias !35961
  store i8 2, ptr %i.cl, align 8, !noalias !35961
  invoke fastcc void @"_ZN125_$LT$brotli..enc..context_map_entropy..ContextMapEntropy$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17h111377d6a234b205E"(ptr noalias noundef nonnull align 8 dereferenceable(920) %i.hk, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.cl)
          to label %.noexc539 unwind label %.loopexit.split-lp324.loopexit.split-lp.loopexit

.noexc539:                                        ; preds = %bb.ik
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl), !noalias !35961
  br label %bb.il

bb.il:                                            ; preds = %.noexc539, %bb.ij
  %i.asb = icmp eq i64 %.lcssa174.i471, 0
  br i1 %i.asb, label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17hdd3b6b5a3a9f63baE.exit.i, label %bb.im

bb.im:                                            ; preds = %bb.il
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck), !noalias !35961
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aon, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.643.0..sroa_idx44.i404, i64 24, i1 false), !noalias !35965
  store i8 1, ptr %.sroa.42.0..sroa_idx.i118.i433, align 8, !noalias !35961
  store i8 2, ptr %i.ck, align 8, !noalias !35961
  invoke fastcc void @"_ZN125_$LT$brotli..enc..context_map_entropy..ContextMapEntropy$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17h111377d6a234b205E"(ptr noalias noundef nonnull align 8 dereferenceable(920) %i.hk, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.ck)
          to label %.noexc540 unwind label %.loopexit.split-lp324.loopexit.split-lp.loopexit

.noexc540:                                        ; preds = %bb.im
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck), !noalias !35961
  br label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17hdd3b6b5a3a9f63baE.exit.i

bb.in:                                            ; preds = %bb.hm
  %.sroa.0.0.i119.i480 = call noundef i64 @llvm.umin.i64(i64 %i.aqm, i64 %.sroa.023.1.i477) ; 5 uses
  %i.asc = icmp eq i64 %.sroa.0.0.i119.i480, 0
  br i1 %i.asc, label %bb.iq, label %bb.ip

bb.io:                                            ; preds = %bb.hm
  %i.asd = icmp ugt i32 %i.aqf, 3
  br i1 %i.asd, label %bb.it, label %.invoke853, !prof !222

bb.ip:                                            ; preds = %bb.in
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cw), !noalias !35925
  %i.ase = trunc i64 %.sroa.050.0.i467 to i32
  %i.asf = trunc nuw i64 %.sroa.0.0.i119.i480 to i32
  store i32 %i.ase, ptr %i.aoq, align 4, !noalias !35925
  store i32 %i.asf, ptr %i.aor, align 8, !noalias !35925
  store i8 0, ptr %i.cw, align 8, !noalias !35925
  invoke fastcc void @"_ZN125_$LT$brotli..enc..context_map_entropy..ContextMapEntropy$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17h111377d6a234b205E"(ptr noalias noundef nonnull align 8 dereferenceable(920) %i.hk, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.cw)
          to label %.noexc541 unwind label %.loopexit.split-lp324.loopexit.split-lp.loopexit

.noexc541:                                        ; preds = %bb.ip
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw), !noalias !35925
  br label %bb.iq

bb.iq:                                            ; preds = %.noexc541, %bb.in
  %i.asg = sub nuw i64 %.sroa.023.1.i477, %.sroa.0.0.i119.i480 ; 2 uses
  %i.ash = icmp eq i64 %i.aqh, 1
  %i.asi = icmp eq i64 %i.aqi, 0
  %or.cond.i481 = select i1 %i.ash, i1 %i.asi, i1 false
  br i1 %or.cond.i481, label %bb.is, label %bb.ir

bb.ir:                                            ; preds = %bb.iq
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.aos, ptr noundef nonnull align 4 dereferenceable(12) %i.cv, i64 12, i1 false), !noalias !35925
  %i.asj = trunc i64 %.sroa.050.0.i467 to i32
  store i32 %i.asj, ptr %i.cv, align 4, !noalias !35925
  br label %bb.is

bb.is:                                            ; preds = %bb.jf, %bb.ir, %bb.iq
  %.sroa.054.0.i482 = phi i64 [ %i.ath, %bb.jf ], [ %.sroa.0.0.i119.i480, %bb.iq ], [ %.sroa.0.0.i119.i480, %bb.ir ]
  %.sroa.023.4.i483 = phi i64 [ %.sroa.023.5.i494, %bb.jf ], [ %i.asg, %bb.iq ], [ %i.asg, %bb.ir ]
  %i.ask = add i32 %.sroa.019.1221.i455, -1       ; 2 uses
  %i.asl = icmp eq i32 %i.ask, 0
  br i1 %i.asl, label %bb.jk, label %bb.jn

bb.it:                                            ; preds = %bb.io
  %i.asm = icmp ult i32 %i.aqf, 25
  br i1 %i.asm, label %bb.iu, label %.invoke853, !prof !222

bb.iu:                                            ; preds = %bb.it
  %i.asn = xor i64 %.sroa.0.0.i113.i468, -1
  %i.aso = add i64 %.sroa.050.0.i467, %i.asn      ; 2 uses
  %i.asp = getelementptr inbounds nuw i8, ptr @1619, i64 %i.aqm
  %i.asq = load i8, ptr %i.asp, align 1, !noalias !35925, !noundef !27
  %i.asr = and i8 %i.asq, 63
  %i.ass = zext nneg i8 %i.asr to i64             ; 2 uses
  %i.ast = lshr i64 %i.aso, %i.ass                ; 2 uses
  %notmask.i491 = shl nsw i64 -1, %i.ass
  %i.asu = xor i64 %notmask.i491, -1
  %i.asv = and i64 %i.aso, %i.asu                 ; 2 uses
  %i.asw = mul i64 %i.asv, %i.aqm
  %i.asx = getelementptr inbounds nuw [4 x i8], ptr @1620, i64 %i.aqm
  %i.asy = load i32, ptr %i.asx, align 4, !noalias !35925, !noundef !27
  %i.asz = zext i32 %i.asy to i64
  %i.ata = add i64 %i.asw, %i.asz                 ; 4 uses
  %i.atb = add i64 %i.ata, %i.aqm                 ; 3 uses
  %i.atc = icmp uge i64 %i.atb, %i.ata
  %i.atd = icmp ult i64 %i.atb, 122785
  %or.cond112.i492 = and i1 %i.atc, %i.atd
  br i1 %or.cond112.i492, label %bb.iw, label %bb.iv, !prof !202

bb.iv:                                            ; preds = %bb.iu
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.ata, i64 noundef %i.atb, i64 noundef 122784, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1626) #43
          to label %.noexc544 unwind label %.loopexit.split-lp324.loopexit.split-lp.loopexit.split-lp

.noexc544:                                        ; preds = %bb.iv
  unreachable

bb.iw:                                            ; preds = %bb.iu
  %i.ate = getelementptr inbounds nuw i8, ptr @_ZN19brotli_decompressor10dictionary17kBrotliDictionary17h143067f04a26e6e4E, i64 %i.ata
  call void @llvm.lifetime.start.p0(ptr nonnull %i.df), !noalias !35925
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(38) %i.df, i8 0, i64 38, i1 false), !noalias !35925
  %i.atf = trunc i64 %i.ast to i32
  %i.atg = invoke noundef i32 @_ZN19brotli_decompressor9transform23TransformDictionaryWord17he8c22d3ef35a6ad0E(ptr noalias noundef nonnull align 1 %i.df, i64 noundef 38, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ate, i64 noundef %i.aqm, i32 noundef %i.aqf, i32 noundef %i.atf)
          to label %.noexc545 unwind label %.loopexit.split-lp324.loopexit.split-lp.loopexit ; 3 uses

.noexc545:                                        ; preds = %bb.iw
  %i.ath = sext i32 %i.atg to i64                 ; 5 uses
  %.not111.i493 = icmp ult i64 %.sroa.023.1.i477, %i.ath
  br i1 %.not111.i493, label %bb.ix, label %bb.iy

bb.ix:                                            ; preds = %.noexc545
  %i.ati = icmp eq i64 %.sroa.023.1.i477, 0
  br i1 %i.ati, label %bb.jf, label %bb.iz

bb.iy:                                            ; preds = %.noexc545
  call void @llvm.lifetime.start.p0(ptr nonnull %i.de), !noalias !35925
  %i.atj = trunc nuw nsw i32 %i.aqf to i8
  %i.atk = trunc i64 %i.ast to i8
  %i.atl = trunc i32 %i.atg to i8
  %i.atm = trunc i64 %i.asv to i32
  store i32 %i.atm, ptr %i.aot, align 4, !noalias !35925
  store i8 %i.atj, ptr %.sroa.4.0..sroa_idx.i436, align 8, !noalias !35925
  store i8 %i.atk, ptr %.sroa.564.0..sroa_idx.i437, align 1, !noalias !35925
  store i8 %i.atl, ptr %.sroa.665.0..sroa_idx.i438, align 2, !noalias !35925
  store i8 0, ptr %.sroa.766.0..sroa_idx.i439, align 1, !noalias !35925
  store i8 1, ptr %i.de, align 8, !noalias !35925
  invoke fastcc void @"_ZN125_$LT$brotli..enc..context_map_entropy..ContextMapEntropy$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17h111377d6a234b205E"(ptr noalias noundef nonnull align 8 dereferenceable(920) %i.hk, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.de)
          to label %.noexc546 unwind label %.loopexit.split-lp324.loopexit.split-lp.loopexit

.noexc546:                                        ; preds = %bb.iy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.de), !noalias !35925
  %i.atn = sub nuw i64 %.sroa.023.1.i477, %i.ath
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dd), !noalias !35925
  %i.ato = icmp ult i32 %i.atg, 39
  br i1 %i.ato, label %bb.jh, label %bb.jg, !prof !222

bb.iz:                                            ; preds = %bb.ix
  call void @llvm.lifetime.start.p0(ptr nonnull %i.da), !noalias !35925
  invoke void @_ZN6brotli3enc10input_pair9InputPair8split_at17hfae0f30deb0a91f7E(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.da, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.dk, i64 noundef %.sroa.023.1.i477)
          to label %.noexc547 unwind label %.loopexit.split-lp324.loopexit.split-lp.loopexit

.noexc547:                                        ; preds = %bb.iz
  call void @llvm.experimental.noalias.scope.decl(metadata !35966)
  %i.atp = load i64, ptr %i.aov, align 8, !alias.scope !35966, !noalias !35969, !noundef !27
  %i.atq = icmp eq i64 %i.atp, 0
  br i1 %i.atq, label %bb.jb, label %bb.ja

bb.ja:                                            ; preds = %.noexc547
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj), !noalias !35971
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aow, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.da, i64 24, i1 false), !noalias !35969
  store i8 0, ptr %.sroa.4.0..sroa_idx.i120.i443, align 8, !noalias !35971
  store i8 2, ptr %i.cj, align 8, !noalias !35971
  invoke fastcc void @"_ZN125_$LT$brotli..enc..context_map_entropy..ContextMapEntropy$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17h111377d6a234b205E"(ptr noalias noundef nonnull align 8 dereferenceable(920) %i.hk, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.cj)
          to label %.noexc548 unwind label %.loopexit.split-lp324.loopexit.split-lp.loopexit

.noexc548:                                        ; preds = %bb.ja
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj), !noalias !35971
  br label %bb.jb

bb.jb:                                            ; preds = %.noexc548, %.noexc547
  %i.atr = load i64, ptr %i.aox, align 8, !alias.scope !35966, !noalias !35969, !noundef !27
  %i.ats = icmp eq i64 %i.atr, 0
  br i1 %i.ats, label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17hdd3b6b5a3a9f63baE.exit122.i, label %bb.jc

bb.jc:                                            ; preds = %bb.jb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci), !noalias !35971
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aoz, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.aoy, i64 24, i1 false), !noalias !35969
  store i8 0, ptr %.sroa.42.0..sroa_idx.i121.i444, align 8, !noalias !35971
  store i8 2, ptr %i.ci, align 8, !noalias !35971
  invoke fastcc void @"_ZN125_$LT$brotli..enc..context_map_entropy..ContextMapEntropy$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17h111377d6a234b205E"(ptr noalias noundef nonnull align 8 dereferenceable(920) %i.hk, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.ci)
          to label %.noexc549 unwind label %.loopexit.split-lp324.loopexit.split-lp.loopexit

.noexc549:                                        ; preds = %bb.jc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci), !noalias !35971
  br label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17hdd3b6b5a3a9f63baE.exit122.i

_ZN6brotli3enc9interface16CommandProcessor13push_literals17hdd3b6b5a3a9f63baE.exit122.i: ; preds = %.noexc549, %bb.jb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da), !noalias !35925
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cz), !noalias !35925
  store ptr %i.df, ptr %i.cz, align 8, !noalias !35925
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.474.0..sroa_idx.i445, i8 0, i64 16, i1 false), !noalias !35925
  store ptr inttoptr (i64 1 to ptr), ptr %i.apa, align 8, !noalias !35925
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.477.0..sroa_idx.i446, i8 0, i64 16, i1 false), !noalias !35925
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cy), !noalias !35925
  invoke void @_ZN6brotli3enc10input_pair9InputPair8split_at17hfae0f30deb0a91f7E(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.cy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.dk, i64 noundef 0)
          to label %.noexc550 unwind label %.loopexit.split-lp324.loopexit.split-lp.loopexit

.noexc550:                                        ; preds = %_ZN6brotli3enc9interface16CommandProcessor13push_literals17hdd3b6b5a3a9f63baE.exit122.i
  %i.att = invoke noundef zeroext i1 @"_ZN75_$LT$brotli..enc..input_pair..InputPair$u20$as$u20$core..cmp..PartialEq$GT$2eq17ha719365bd820edd4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cy)
          to label %.noexc551 unwind label %.loopexit.split-lp324.loopexit.split-lp.loopexit

.noexc551:                                        ; preds = %.noexc550
  br i1 %i.att, label %bb.je, label %bb.jd, !prof !222

bb.jd:                                            ; preds = %.noexc551
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cx), !noalias !35925
  br label %.invoke855

.invoke855:                                       ; preds = %bb.ji, %bb.jd
  %.sink867 = phi ptr [ %i.db, %bb.ji ], [ %i.cx, %bb.jd ] ; 2 uses
  %i.atu = phi ptr [ %i.dd, %bb.ji ], [ %i.cz, %bb.jd ]
  %i.atv = phi ptr [ %i.dc, %bb.ji ], [ %i.cy, %bb.jd ]
  %i.atw = phi ptr [ @1623, %bb.ji ], [ @1621, %bb.jd ]
  store ptr null, ptr %.sink867, align 8, !noalias !35925
  invoke void @_ZN4core9panicking13assert_failed17ha55082e04b90c138E(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.atu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.atv, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %.sink867, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.atw) #43
          to label %.cont856 unwind label %.loopexit.split-lp324.loopexit.split-lp.loopexit.split-lp

.cont856:                                         ; preds = %.invoke855
  unreachable

bb.je:                                            ; preds = %.noexc551
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy), !noalias !35925
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz), !noalias !35925
  br label %bb.jf

bb.jf:                                            ; preds = %bb.jj, %bb.je, %bb.ix
  %.sroa.023.5.i494 = phi i64 [ %i.atn, %bb.jj ], [ 0, %bb.ix ], [ 0, %bb.je ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df), !noalias !35925
  br label %bb.is

bb.jg:                                            ; preds = %.noexc546
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr), !noalias !35925
  store ptr @186, ptr %i.cr, align 8, !noalias !35925
  %i.atx = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store i64 1, ptr %i.atx, align 8, !noalias !35925
  %i.aty = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  store ptr null, ptr %i.aty, align 8, !noalias !35925
  %i.atz = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.atz, align 8, !noalias !35925
  %i.aua = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  store i64 0, ptr %i.aua, align 8, !noalias !35925
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.cr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1622) #43
          to label %.noexc553 unwind label %.loopexit.split-lp324.loopexit.split-lp.loopexit.split-lp

.noexc553:                                        ; preds = %bb.jg
  unreachable

bb.jh:                                            ; preds = %.noexc546
  store ptr %i.df, ptr %i.dd, align 8, !noalias !35925
  store i64 %i.ath, ptr %.sroa.468.0..sroa_idx.i440, align 8, !noalias !35925
  store i64 0, ptr %.sroa.569.0..sroa_idx.i441, align 8, !noalias !35925
  store ptr inttoptr (i64 1 to ptr), ptr %i.aou, align 8, !noalias !35925
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.471.0..sroa_idx.i442, i8 0, i64 16, i1 false), !noalias !35925
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dc), !noalias !35925
  invoke void @_ZN6brotli3enc10input_pair9InputPair8split_at17hfae0f30deb0a91f7E(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.dc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.dk, i64 noundef %i.ath)
          to label %.noexc554 unwind label %.loopexit.split-lp324.loopexit.split-lp.loopexit
end_hunk_6
begin_hunk_7_@_ZN6brotli3enc17brotli_bit_stream12LogMetaBlock17h8d6ec10e9474062aE:bb.a

.lr.ph.split.us.i765:                             ; preds = %.lr.ph.i751, %bb.mq
  %i.bkh = phi i64 [ %i.bkx, %bb.mq ], [ %i.bkf, %.lr.ph.i751 ]
  %.sroa.04.2203.us.i766 = phi i64 [ %i.bko, %bb.mq ], [ %.sroa.04.0225.i707, %.lr.ph.i751 ]
  %.sroa.023.2202.us.i767 = phi i64 [ %i.bkn, %bb.mq ], [ %.sroa.023.0219.i713, %.lr.ph.i751 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu), !noalias !36107
  invoke void @_ZN6brotli3enc10input_pair9InputPair8split_at17hfae0f30deb0a91f7E(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.bu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bw, i64 noundef %i.bkh)
          to label %.noexc784 unwind label %.loopexit308

.noexc784:                                        ; preds = %.lr.ph.split.us.i765
  %.sroa.0.0.copyload.us.i768 = load i64, ptr %i.bu, align 16, !noalias !36107 ; 2 uses
  %.sroa.6.0.copyload136.us.i769 = load i64, ptr %.sroa.6.0..sroa_idx135.i663, align 8, !noalias !36107 ; 4 uses
  %.sroa.10.sroa.0.0.copyload260.i770 = load i64, ptr %.sroa.10.0..sroa_idx.i664, align 16, !noalias !36107 ; 2 uses
  %.sroa.10.sroa.9.0.copyload262.i771 = load i64, ptr %.sroa.10.sroa.9.0..sroa.10.0..sroa_idx.sroa_idx.i703, align 8, !noalias !36107 ; 2 uses
  %.sroa.13.0.copyload.us.i772 = load i64, ptr %.sroa.13.0..sroa_idx.i665, align 16, !noalias !36107 ; 5 uses
  %.sroa.17.0.copyload.us.i773 = load i64, ptr %.sroa.17.0..sroa_idx.i666, align 8, !noalias !36107 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bv, ptr noundef nonnull align 16 dereferenceable(48) %i.bhg, i64 48, i1 false), !noalias !36107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !36107
  %i.bki = add i64 %.sroa.13.0.copyload.us.i772, %.sroa.6.0.copyload136.us.i769 ; 2 uses
  %i.bkj = icmp eq i64 %i.bki, 0
  br i1 %i.bkj, label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17h8e105b53ad06ce26E.exit125.us.i, label %bb.mf

bb.mf:                                            ; preds = %.noexc784
  %i.bkk = icmp eq i64 %.sroa.6.0.copyload136.us.i769, 0 ; 2 uses
  br i1 %i.bhl, label %bb.mk, label %bb.mg

bb.mg:                                            ; preds = %bb.mf
  br i1 %i.bkk, label %bb.mi, label %bb.mh

bb.mh:                                            ; preds = %bb.mg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !36120
  store i64 %.sroa.0.0.copyload.us.i768, ptr %i.bhm, align 8, !noalias !36124
  store i64 %.sroa.6.0.copyload136.us.i769, ptr %.sroa.6.0..sroa_idx141.i674, align 8, !noalias !36124
  store i64 %.sroa.10.sroa.0.0.copyload260.i770, ptr %.sroa.10.0..sroa_idx148.i675, align 8, !noalias !36124
  store i8 1, ptr %.sroa.4.0..sroa_idx.i129.i676, align 8, !noalias !36120
  store i8 2, ptr %i.ar, align 8, !noalias !36120
  invoke fastcc void @"_ZN108_$LT$brotli..enc..prior_eval..PriorEval$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17h0680267794ea4894E"(ptr noalias noundef nonnull align 8 dereferenceable(296) %i.hi, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.ar)
          to label %.noexc785 unwind label %.loopexit308

.noexc785:                                        ; preds = %bb.mh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !36120
  br label %bb.mi

bb.mi:                                            ; preds = %.noexc785, %bb.mg
  %i.bkl = icmp eq i64 %.sroa.13.0.copyload.us.i772, 0
  br i1 %i.bkl, label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17h8e105b53ad06ce26E.exit125.us.i, label %bb.mj

bb.mj:                                            ; preds = %bb.mi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !36120
  store i64 %.sroa.10.sroa.9.0.copyload262.i771, ptr %i.bhn, align 8, !noalias !36124
  store i64 %.sroa.13.0.copyload.us.i772, ptr %.sroa.13.24..sroa_idx153.i677, align 8, !noalias !36124
  store i64 %.sroa.17.0.copyload.us.i773, ptr %.sroa.17.24..sroa_idx160.i678, align 8, !noalias !36124
  store i8 1, ptr %.sroa.42.0..sroa_idx.i130.i679, align 8, !noalias !36120
  store i8 2, ptr %i.aq, align 8, !noalias !36120
  invoke fastcc void @"_ZN108_$LT$brotli..enc..prior_eval..PriorEval$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17h0680267794ea4894E"(ptr noalias noundef nonnull align 8 dereferenceable(296) %i.hi, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.aq)
          to label %.noexc786 unwind label %.loopexit308

.noexc786:                                        ; preds = %bb.mj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !36120
  br label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17h8e105b53ad06ce26E.exit125.us.i

bb.mk:                                            ; preds = %bb.mf
  br i1 %i.bkk, label %bb.mm, label %bb.ml

bb.ml:                                            ; preds = %bb.mk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !36125
  store i64 %.sroa.0.0.copyload.us.i768, ptr %i.bho, align 8, !noalias !36129
  store i64 %.sroa.6.0.copyload136.us.i769, ptr %.sroa.6.0..sroa_idx139.i680, align 8, !noalias !36129
  store i64 %.sroa.10.sroa.0.0.copyload260.i770, ptr %.sroa.10.0..sroa_idx147.i681, align 8, !noalias !36129
  store i8 0, ptr %.sroa.4.0..sroa_idx.i126.i682, align 8, !noalias !36125
  store i8 2, ptr %i.at, align 8, !noalias !36125
  invoke fastcc void @"_ZN108_$LT$brotli..enc..prior_eval..PriorEval$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17h0680267794ea4894E"(ptr noalias noundef nonnull align 8 dereferenceable(296) %i.hi, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.at)
          to label %.noexc787 unwind label %.loopexit308

.noexc787:                                        ; preds = %bb.ml
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !36125
  br label %bb.mm

bb.mm:                                            ; preds = %.noexc787, %bb.mk
  %i.bkm = icmp eq i64 %.sroa.13.0.copyload.us.i772, 0
  br i1 %i.bkm, label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17h8e105b53ad06ce26E.exit125.us.i, label %bb.mn

bb.mn:                                            ; preds = %bb.mm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !36125
  store i64 %.sroa.10.sroa.9.0.copyload262.i771, ptr %i.bhp, align 8, !noalias !36129
  store i64 %.sroa.13.0.copyload.us.i772, ptr %.sroa.13.24..sroa_idx151.i683, align 8, !noalias !36129
  store i64 %.sroa.17.0.copyload.us.i773, ptr %.sroa.17.24..sroa_idx158.i684, align 8, !noalias !36129
  store i8 0, ptr %.sroa.42.0..sroa_idx.i127.i685, align 8, !noalias !36125
  store i8 2, ptr %i.as, align 8, !noalias !36125
  invoke fastcc void @"_ZN108_$LT$brotli..enc..prior_eval..PriorEval$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17h0680267794ea4894E"(ptr noalias noundef nonnull align 8 dereferenceable(296) %i.hi, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.as)
          to label %.noexc788 unwind label %.loopexit308

.noexc788:                                        ; preds = %bb.mn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !36125
  br label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17h8e105b53ad06ce26E.exit125.us.i

_ZN6brotli3enc9interface16CommandProcessor13push_literals17h8e105b53ad06ce26E.exit125.us.i: ; preds = %.noexc788, %bb.mm, %.noexc786, %bb.mi, %.noexc784
  %i.bkn = sub i64 %.sroa.023.2202.us.i767, %i.bki ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bw, ptr noundef nonnull align 8 dereferenceable(48) %i.bv, i64 48, i1 false), !noalias !36107
  %i.bko = add i64 %.sroa.04.2203.us.i766, 1      ; 7 uses
  %i.bkp = icmp ugt i64 %i.hy, %i.bko
  br i1 %i.bkp, label %bb.mo, label %bb.mq

bb.mo:                                            ; preds = %_ZN6brotli3enc9interface16CommandProcessor13push_literals17h8e105b53ad06ce26E.exit125.us.i
  %i.bkq = icmp ult i64 %i.bko, %i.bhr
  br i1 %i.bkq, label %bb.mp, label %.invoke845

bb.mp:                                            ; preds = %bb.mo
  %i.bkr = getelementptr inbounds nuw [4 x i8], ptr %i.bht, i64 %i.bko
  %i.bks = load i32, ptr %i.bkr, align 4, !noalias !36114, !noundef !27
  %i.bkt = getelementptr inbounds nuw i8, ptr %i.hw, i64 %i.bko
  %i.bku = load i8, ptr %i.bkt, align 1, !noalias !36114, !noundef !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !36130
  store i8 %i.bku, ptr %i.bhu, align 1, !noalias !36130
  store i8 0, ptr %i.bhv, align 2, !noalias !36130
  store i8 4, ptr %i.ap, align 8, !noalias !36130
  invoke fastcc void @"_ZN108_$LT$brotli..enc..prior_eval..PriorEval$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17h0680267794ea4894E"(ptr noalias noundef nonnull align 8 dereferenceable(296) %i.hi, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.ap)
          to label %.noexc789 unwind label %.loopexit308

.noexc789:                                        ; preds = %bb.mp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !36130
  br label %bb.mq

bb.mq:                                            ; preds = %.noexc789, %_ZN6brotli3enc9interface16CommandProcessor13push_literals17h8e105b53ad06ce26E.exit125.us.i
  %.sroa.016.5.us.i774 = phi i32 [ %i.bks, %.noexc789 ], [ -2147483648, %_ZN6brotli3enc9interface16CommandProcessor13push_literals17h8e105b53ad06ce26E.exit125.us.i ] ; 2 uses
  %.pr.us.i775 = load i64, ptr %.sroa.7.0..sroa_idx46.i661, align 8, !noalias !36107 ; 2 uses
  %i.bkv = load i64, ptr %.sroa.5.0..sroa_idx39.i658, align 8, !noalias !36107, !noundef !27 ; 2 uses
  %i.bkw = add i64 %i.bkv, %.pr.us.i775           ; 2 uses
  %i.bkx = zext i32 %.sroa.016.5.us.i774 to i64   ; 2 uses
  %i.bky = icmp ugt i64 %i.bkw, %i.bkx
  br i1 %i.bky, label %.lr.ph.split.us.i765, label %._crit_edge.i726

._crit_edge.i726:                                 ; preds = %bb.op, %bb.mq, %bb.me
  %.lcssa174.i727 = phi i64 [ %.sroa.7.0.copyload.i720, %bb.me ], [ %.pr.us.i775, %bb.mq ], [ %.pr.i762, %bb.op ] ; 3 uses
  %.sroa.023.2.lcssa.i728 = phi i64 [ %.sroa.023.0219.i713, %bb.me ], [ %i.bkn, %bb.mq ], [ %i.bou, %bb.op ]
  %.sroa.016.3.lcssa.i729 = phi i32 [ %.sroa.016.1222.i710, %bb.me ], [ %.sroa.016.5.us.i774, %bb.mq ], [ %.sroa.016.5.i761, %bb.op ]
  %.sroa.04.2.lcssa.i730 = phi i64 [ %.sroa.04.0225.i707, %bb.me ], [ %i.bko, %bb.mq ], [ %i.bov, %bb.op ]
  %.lcssa169.i731 = phi i64 [ %.sroa.5.0.copyload.i717, %bb.me ], [ %i.bkv, %bb.mq ], [ %i.bpa, %bb.op ]
  %.lcssa.i732 = phi i64 [ %i.bjh, %bb.me ], [ %i.bkw, %bb.mq ], [ %i.bpb, %bb.op ] ; 2 uses
  %i.bkz = icmp eq i64 %.lcssa169.i731, 0         ; 3 uses
  br i1 %.not170, label %bb.mv, label %bb.mr

.lr.ph.split.i752:                                ; preds = %.lr.ph.i751, %bb.op
  %i.bla = phi i64 [ %i.bpc, %bb.op ], [ %i.bkf, %.lr.ph.i751 ]
  %.sroa.04.2203.i753 = phi i64 [ %i.bov, %bb.op ], [ %.sroa.04.0225.i707, %.lr.ph.i751 ]
  %.sroa.023.2202.i754 = phi i64 [ %i.bou, %bb.op ], [ %.sroa.023.0219.i713, %.lr.ph.i751 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu), !noalias !36107
  invoke void @_ZN6brotli3enc10input_pair9InputPair8split_at17hfae0f30deb0a91f7E(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.bu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bw, i64 noundef %i.bla)
          to label %.noexc790 unwind label %.loopexit.split-lp309.loopexit

.noexc790:                                        ; preds = %.lr.ph.split.i752
  %.sroa.6.0.copyload136.i756 = load i64, ptr %.sroa.6.0..sroa_idx135.i663, align 8, !noalias !36107 ; 2 uses
  %i.blb = load <2 x i64>, ptr %i.bu, align 16, !noalias !36107
  %.sroa.10.sroa.0.0.copyload.i757 = load i64, ptr %.sroa.10.0..sroa_idx.i664, align 16, !noalias !36107
  %.sroa.13.0.copyload.i759 = load i64, ptr %.sroa.13.0..sroa_idx.i665, align 16, !noalias !36107 ; 2 uses
  %i.blc = load <2 x i64>, ptr %.sroa.10.sroa.9.0..sroa.10.0..sroa_idx.sroa_idx.i703, align 8, !noalias !36107
  %.sroa.17.0.copyload.i760 = load i64, ptr %.sroa.17.0..sroa_idx.i666, align 8, !noalias !36107
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bv, ptr noundef nonnull align 16 dereferenceable(48) %i.bhg, i64 48, i1 false), !noalias !36107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !36107
  %i.bld = add i64 %.sroa.13.0.copyload.i759, %.sroa.6.0.copyload136.i756 ; 2 uses
  %i.ble = icmp eq i64 %i.bld, 0
  br i1 %i.ble, label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17h8e105b53ad06ce26E.exit125.i, label %bb.ok

bb.mr:                                            ; preds = %._crit_edge.i726
  br i1 %i.bkz, label %bb.mt, label %bb.ms

bb.ms:                                            ; preds = %bb.mr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !36133
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bhw, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.bw, i64 24, i1 false), !noalias !36137
  store i8 0, ptr %.sroa.4.0..sroa_idx.i.i686, align 8, !noalias !36133
  store i8 2, ptr %i.bd, align 8, !noalias !36133
  invoke fastcc void @"_ZN108_$LT$brotli..enc..prior_eval..PriorEval$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17h0680267794ea4894E"(ptr noalias noundef nonnull align 8 dereferenceable(296) %i.hi, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.bd)
          to label %.noexc791 unwind label %.loopexit.split-lp309.loopexit.split-lp.loopexit

.noexc791:                                        ; preds = %bb.ms
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !36133
  br label %bb.mt

bb.mt:                                            ; preds = %.noexc791, %bb.mr
  %i.blf = icmp eq i64 %.lcssa174.i727, 0
  br i1 %i.blf, label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17h8e105b53ad06ce26E.exit.i, label %bb.mu

bb.mu:                                            ; preds = %bb.mt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !36133
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bhx, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.643.0..sroa_idx44.i660, i64 24, i1 false), !noalias !36137
  store i8 0, ptr %.sroa.42.0..sroa_idx.i.i687, align 8, !noalias !36133
  store i8 2, ptr %i.bc, align 8, !noalias !36133
  invoke fastcc void @"_ZN108_$LT$brotli..enc..prior_eval..PriorEval$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17h0680267794ea4894E"(ptr noalias noundef nonnull align 8 dereferenceable(296) %i.hi, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.bc)
          to label %.noexc792 unwind label %.loopexit.split-lp309.loopexit.split-lp.loopexit

.noexc792:                                        ; preds = %bb.mu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !36133
  br label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17h8e105b53ad06ce26E.exit.i

bb.mv:                                            ; preds = %._crit_edge.i726
  br i1 %i.bhl, label %bb.mw, label %bb.na

_ZN6brotli3enc9interface16CommandProcessor13push_literals17h8e105b53ad06ce26E.exit.i: ; preds = %.noexc796, %bb.nc, %.noexc794, %bb.my, %.noexc792, %bb.mt
  %i.blg = sub i64 %.sroa.023.2.lcssa.i728, %.lcssa.i732
  %i.blh = trunc nuw i64 %.lcssa.i732 to i32
  %i.bli = sub nuw i32 %.sroa.016.3.lcssa.i729, %i.blh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !noalias !36107
  br label %bb.md

bb.mw:                                            ; preds = %bb.mv
  br i1 %i.bkz, label %bb.my, label %bb.mx

bb.mx:                                            ; preds = %bb.mw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !36138
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bia, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.bw, i64 24, i1 false), !noalias !36142
  store i8 0, ptr %.sroa.4.0..sroa_idx.i114.i690, align 8, !noalias !36138
  store i8 2, ptr %i.bb, align 8, !noalias !36138
  invoke fastcc void @"_ZN108_$LT$brotli..enc..prior_eval..PriorEval$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17h0680267794ea4894E"(ptr noalias noundef nonnull align 8 dereferenceable(296) %i.hi, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.bb)
          to label %.noexc793 unwind label %.loopexit.split-lp309.loopexit.split-lp.loopexit

.noexc793:                                        ; preds = %bb.mx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !36138
  br label %bb.my

bb.my:                                            ; preds = %.noexc793, %bb.mw
  %i.blj = icmp eq i64 %.lcssa174.i727, 0
  br i1 %i.blj, label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17h8e105b53ad06ce26E.exit.i, label %bb.mz

bb.mz:                                            ; preds = %bb.my
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !36138
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bib, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.643.0..sroa_idx44.i660, i64 24, i1 false), !noalias !36142
  store i8 0, ptr %.sroa.42.0..sroa_idx.i115.i691, align 8, !noalias !36138
  store i8 2, ptr %i.ba, align 8, !noalias !36138
  invoke fastcc void @"_ZN108_$LT$brotli..enc..prior_eval..PriorEval$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17h0680267794ea4894E"(ptr noalias noundef nonnull align 8 dereferenceable(296) %i.hi, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.ba)
          to label %.noexc794 unwind label %.loopexit.split-lp309.loopexit.split-lp.loopexit

.noexc794:                                        ; preds = %bb.mz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !36138
  br label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17h8e105b53ad06ce26E.exit.i

bb.na:                                            ; preds = %bb.mv
  br i1 %i.bkz, label %bb.nc, label %bb.nb

bb.nb:                                            ; preds = %bb.na
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !36143
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bhy, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.bw, i64 24, i1 false), !noalias !36147
  store i8 1, ptr %.sroa.4.0..sroa_idx.i117.i688, align 8, !noalias !36143
  store i8 2, ptr %i.az, align 8, !noalias !36143
  invoke fastcc void @"_ZN108_$LT$brotli..enc..prior_eval..PriorEval$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17h0680267794ea4894E"(ptr noalias noundef nonnull align 8 dereferenceable(296) %i.hi, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.az)
          to label %.noexc795 unwind label %.loopexit.split-lp309.loopexit.split-lp.loopexit

.noexc795:                                        ; preds = %bb.nb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !36143
  br label %bb.nc

bb.nc:                                            ; preds = %.noexc795, %bb.na
  %i.blk = icmp eq i64 %.lcssa174.i727, 0
  br i1 %i.blk, label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17h8e105b53ad06ce26E.exit.i, label %bb.nd

bb.nd:                                            ; preds = %bb.nc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !36143
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bhz, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.643.0..sroa_idx44.i660, i64 24, i1 false), !noalias !36147
  store i8 1, ptr %.sroa.42.0..sroa_idx.i118.i689, align 8, !noalias !36143
  store i8 2, ptr %i.ay, align 8, !noalias !36143
  invoke fastcc void @"_ZN108_$LT$brotli..enc..prior_eval..PriorEval$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17h0680267794ea4894E"(ptr noalias noundef nonnull align 8 dereferenceable(296) %i.hi, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.ay)
          to label %.noexc796 unwind label %.loopexit.split-lp309.loopexit.split-lp.loopexit

.noexc796:                                        ; preds = %bb.nd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !36143
  br label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17h8e105b53ad06ce26E.exit.i

bb.ne:                                            ; preds = %bb.md
  %.sroa.0.0.i119.i736 = call noundef i64 @llvm.umin.i64(i64 %i.bjy, i64 %.sroa.023.1.i733) ; 5 uses
  %i.bll = icmp eq i64 %.sroa.0.0.i119.i736, 0
  br i1 %i.bll, label %bb.nh, label %bb.ng

bb.nf:                                            ; preds = %bb.md
  %i.blm = icmp ugt i32 %i.bjr, 3
  br i1 %i.blm, label %bb.nk, label %.invoke849, !prof !222

bb.ng:                                            ; preds = %bb.ne
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !noalias !36107
  %i.bln = trunc i64 %.sroa.050.0.i723 to i32
  %i.blo = trunc nuw i64 %.sroa.0.0.i119.i736 to i32
  store i32 %i.bln, ptr %i.bic, align 4, !noalias !36107
  store i32 %i.blo, ptr %i.bid, align 8, !noalias !36107
  store i8 0, ptr %i.bk, align 8, !noalias !36107
  invoke fastcc void @"_ZN108_$LT$brotli..enc..prior_eval..PriorEval$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17h0680267794ea4894E"(ptr noalias noundef nonnull align 8 dereferenceable(296) %i.hi, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.bk)
          to label %.noexc797 unwind label %.loopexit.split-lp309.loopexit.split-lp.loopexit

.noexc797:                                        ; preds = %bb.ng
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !36107
  br label %bb.nh

bb.nh:                                            ; preds = %.noexc797, %bb.ne
  %i.blp = sub nuw i64 %.sroa.023.1.i733, %.sroa.0.0.i119.i736 ; 2 uses
  %i.blq = icmp eq i64 %i.bjt, 1
  %i.blr = icmp eq i64 %i.bju, 0
  %or.cond.i737 = select i1 %i.blq, i1 %i.blr, i1 false
  br i1 %or.cond.i737, label %bb.nj, label %bb.ni

bb.ni:                                            ; preds = %bb.nh
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bie, ptr noundef nonnull align 4 dereferenceable(12) %i.bj, i64 12, i1 false), !noalias !36107
  %i.bls = trunc i64 %.sroa.050.0.i723 to i32
  store i32 %i.bls, ptr %i.bj, align 4, !noalias !36107
  br label %bb.nj

bb.nj:                                            ; preds = %bb.nv, %bb.ni, %bb.nh
  %.sroa.054.0.i738 = phi i64 [ %i.bmx, %bb.nv ], [ %.sroa.0.0.i119.i736, %bb.nh ], [ %.sroa.0.0.i119.i736, %bb.ni ]
  %.sroa.023.4.i739 = phi i64 [ %.sroa.023.5.i750, %bb.nv ], [ %i.blp, %bb.nh ], [ %i.blp, %bb.ni ]
  %i.blt = add i32 %.sroa.019.1221.i711, -1       ; 2 uses
  %i.blu = icmp eq i32 %i.blt, 0
  br i1 %i.blu, label %bb.oa, label %bb.od

bb.nk:                                            ; preds = %bb.nf
  %i.blv = icmp ult i32 %i.bjr, 25
  br i1 %i.blv, label %bb.nl, label %.invoke849, !prof !222

.invoke849:                                       ; preds = %bb.nk, %bb.nf, %bb.ma
  %i.blw = phi ptr [ @1615, %bb.nf ], [ @1613, %bb.ma ], [ @1617, %bb.nk ]
  %i.blx = phi i64 [ 31, %bb.nf ], [ 41, %bb.ma ], [ 31, %bb.nk ]
  %i.bly = phi ptr [ @1616, %bb.nf ], [ @1614, %bb.ma ], [ @1618, %bb.nk ]
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.blw, i64 noundef %i.blx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bly) #43
          to label %.cont850 unwind label %.body642.thread722

.cont850:                                         ; preds = %.invoke849
  unreachable

bb.nl:                                            ; preds = %bb.nk
  %i.blz = xor i64 %.sroa.0.0.i113.i724, -1
  %i.bma = add i64 %.sroa.050.0.i723, %i.blz      ; 2 uses
  %i.bmb = getelementptr inbounds nuw i8, ptr @1619, i64 %i.bjy
  %i.bmc = load i8, ptr %i.bmb, align 1, !noalias !36107, !noundef !27
  %i.bmd = and i8 %i.bmc, 63
  %i.bme = zext nneg i8 %i.bmd to i64             ; 2 uses
  %i.bmf = lshr i64 %i.bma, %i.bme                ; 2 uses
  %notmask.i747 = shl nsw i64 -1, %i.bme
  %i.bmg = xor i64 %notmask.i747, -1
  %i.bmh = and i64 %i.bma, %i.bmg                 ; 2 uses
  %i.bmi = mul i64 %i.bmh, %i.bjy
  %i.bmj = getelementptr inbounds nuw [4 x i8], ptr @1620, i64 %i.bjy
  %i.bmk = load i32, ptr %i.bmj, align 4, !noalias !36107, !noundef !27
  %i.bml = zext i32 %i.bmk to i64
  %i.bmm = add i64 %i.bmi, %i.bml                 ; 4 uses
  %i.bmn = add i64 %i.bmm, %i.bjy                 ; 3 uses
  %i.bmo = icmp uge i64 %i.bmn, %i.bmm
  %i.bmp = icmp ult i64 %i.bmn, 122785
  %or.cond112.i748 = and i1 %i.bmo, %i.bmp
  br i1 %or.cond112.i748, label %bb.nm, label %.invoke847, !prof !202

.invoke847:                                       ; preds = %bb.nl, %._crit_edge.i828
  %i.bmq = phi i64 [ 4, %._crit_edge.i828 ], [ %i.bmm, %bb.nl ]
  %i.bmr = phi i64 [ 8196, %._crit_edge.i828 ], [ %i.bmn, %bb.nl ]
  %i.bms = phi i64 [ %.val21.i, %._crit_edge.i828 ], [ 122784, %bb.nl ]
  %i.bmt = phi ptr [ @1947, %._crit_edge.i828 ], [ @1626, %bb.nl ]
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.bmq, i64 noundef %i.bmr, i64 noundef %i.bms, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bmt) #43
          to label %.cont848 unwind label %.body642.thread722

.cont848:                                         ; preds = %.invoke847
  unreachable

bb.nm:                                            ; preds = %bb.nl
  %i.bmu = getelementptr inbounds nuw i8, ptr @_ZN19brotli_decompressor10dictionary17kBrotliDictionary17h143067f04a26e6e4E, i64 %i.bmm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt), !noalias !36107
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(38) %i.bt, i8 0, i64 38, i1 false), !noalias !36107
  %i.bmv = trunc i64 %i.bmf to i32
  %i.bmw = invoke noundef i32 @_ZN19brotli_decompressor9transform23TransformDictionaryWord17he8c22d3ef35a6ad0E(ptr noalias noundef nonnull align 1 %i.bt, i64 noundef 38, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bmu, i64 noundef %i.bjy, i32 noundef %i.bjr, i32 noundef %i.bmv)
          to label %.noexc801 unwind label %.loopexit.split-lp309.loopexit.split-lp.loopexit ; 3 uses

.noexc801:                                        ; preds = %bb.nm
  %i.bmx = sext i32 %i.bmw to i64                 ; 5 uses
  %.not111.i749 = icmp ult i64 %.sroa.023.1.i733, %i.bmx
  br i1 %.not111.i749, label %bb.nn, label %bb.no

bb.nn:                                            ; preds = %.noexc801
  %i.bmy = icmp eq i64 %.sroa.023.1.i733, 0
  br i1 %i.bmy, label %bb.nv, label %bb.np

bb.no:                                            ; preds = %.noexc801
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs), !noalias !36107
  %i.bmz = trunc nuw nsw i32 %i.bjr to i8
  %i.bna = trunc i64 %i.bmf to i8
  %i.bnb = trunc i32 %i.bmw to i8
  %i.bnc = trunc i64 %i.bmh to i32
  store i32 %i.bnc, ptr %i.bif, align 4, !noalias !36107
  store i8 %i.bmz, ptr %.sroa.4.0..sroa_idx.i692, align 8, !noalias !36107
  store i8 %i.bna, ptr %.sroa.564.0..sroa_idx.i693, align 1, !noalias !36107
  store i8 %i.bnb, ptr %.sroa.665.0..sroa_idx.i694, align 2, !noalias !36107
  store i8 0, ptr %.sroa.766.0..sroa_idx.i695, align 1, !noalias !36107
  store i8 1, ptr %i.bs, align 8, !noalias !36107
  invoke fastcc void @"_ZN108_$LT$brotli..enc..prior_eval..PriorEval$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17h0680267794ea4894E"(ptr noalias noundef nonnull align 8 dereferenceable(296) %i.hi, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.bs)
          to label %.noexc802 unwind label %.loopexit.split-lp309.loopexit.split-lp.loopexit

.noexc802:                                        ; preds = %bb.no
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !36107
  %i.bnd = sub nuw i64 %.sroa.023.1.i733, %i.bmx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !noalias !36107
  %i.bne = icmp ult i32 %i.bmw, 39
  br i1 %i.bne, label %bb.nx, label %bb.nw, !prof !222

bb.np:                                            ; preds = %bb.nn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !36107
  invoke void @_ZN6brotli3enc10input_pair9InputPair8split_at17hfae0f30deb0a91f7E(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.bo, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.by, i64 noundef %.sroa.023.1.i733)
          to label %.noexc803 unwind label %.loopexit.split-lp309.loopexit.split-lp.loopexit

.noexc803:                                        ; preds = %bb.np
  call void @llvm.experimental.noalias.scope.decl(metadata !36148)
  %i.bnf = load i64, ptr %i.bih, align 8, !alias.scope !36148, !noalias !36151, !noundef !27
  %i.bng = icmp eq i64 %i.bnf, 0
  br i1 %i.bng, label %bb.nr, label %bb.nq

bb.nq:                                            ; preds = %.noexc803
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !36153
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bii, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.bo, i64 24, i1 false), !noalias !36151
  store i8 0, ptr %.sroa.4.0..sroa_idx.i120.i699, align 8, !noalias !36153
  store i8 2, ptr %i.ax, align 8, !noalias !36153
  invoke fastcc void @"_ZN108_$LT$brotli..enc..prior_eval..PriorEval$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17h0680267794ea4894E"(ptr noalias noundef nonnull align 8 dereferenceable(296) %i.hi, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.ax)
          to label %.noexc804 unwind label %.loopexit.split-lp309.loopexit.split-lp.loopexit

.noexc804:                                        ; preds = %bb.nq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !36153
  br label %bb.nr

bb.nr:                                            ; preds = %.noexc804, %.noexc803
  %i.bnh = load i64, ptr %i.bij, align 8, !alias.scope !36148, !noalias !36151, !noundef !27
  %i.bni = icmp eq i64 %i.bnh, 0
  br i1 %i.bni, label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17h8e105b53ad06ce26E.exit122.i, label %bb.ns

bb.ns:                                            ; preds = %bb.nr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !36153
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bil, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.bik, i64 24, i1 false), !noalias !36151
  store i8 0, ptr %.sroa.42.0..sroa_idx.i121.i700, align 8, !noalias !36153
  store i8 2, ptr %i.aw, align 8, !noalias !36153
  invoke fastcc void @"_ZN108_$LT$brotli..enc..prior_eval..PriorEval$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17h0680267794ea4894E"(ptr noalias noundef nonnull align 8 dereferenceable(296) %i.hi, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.aw)
          to label %.noexc805 unwind label %.loopexit.split-lp309.loopexit.split-lp.loopexit

.noexc805:                                        ; preds = %bb.ns
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !36153
  br label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17h8e105b53ad06ce26E.exit122.i

_ZN6brotli3enc9interface16CommandProcessor13push_literals17h8e105b53ad06ce26E.exit122.i: ; preds = %.noexc805, %bb.nr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !36107
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !36107
  store ptr %i.bt, ptr %i.bn, align 8, !noalias !36107
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.474.0..sroa_idx.i701, i8 0, i64 16, i1 false), !noalias !36107
  store ptr inttoptr (i64 1 to ptr), ptr %i.bim, align 8, !noalias !36107
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.477.0..sroa_idx.i702, i8 0, i64 16, i1 false), !noalias !36107
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !noalias !36107
  invoke void @_ZN6brotli3enc10input_pair9InputPair8split_at17hfae0f30deb0a91f7E(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.bm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.by, i64 noundef 0)
          to label %.noexc806 unwind label %.loopexit.split-lp309.loopexit.split-lp.loopexit

.noexc806:                                        ; preds = %_ZN6brotli3enc9interface16CommandProcessor13push_literals17h8e105b53ad06ce26E.exit122.i
  %i.bnj = invoke noundef zeroext i1 @"_ZN75_$LT$brotli..enc..input_pair..InputPair$u20$as$u20$core..cmp..PartialEq$GT$2eq17ha719365bd820edd4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bm)
          to label %.noexc807 unwind label %.loopexit.split-lp309.loopexit.split-lp.loopexit

.noexc807:                                        ; preds = %.noexc806
  br i1 %i.bnj, label %bb.nu, label %bb.nt, !prof !222

bb.nt:                                            ; preds = %.noexc807
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !36107
  br label %.invoke843

.invoke843:                                       ; preds = %bb.ny, %bb.nt
  %.sink857 = phi ptr [ %i.bp, %bb.ny ], [ %i.bl, %bb.nt ] ; 2 uses
  %i.bnk = phi ptr [ %i.br, %bb.ny ], [ %i.bn, %bb.nt ]
  %i.bnl = phi ptr [ %i.bq, %bb.ny ], [ %i.bm, %bb.nt ]
  %i.bnm = phi ptr [ @1623, %bb.ny ], [ @1621, %bb.nt ]
  store ptr null, ptr %.sink857, align 8, !noalias !36107
  invoke void @_ZN4core9panicking13assert_failed17ha55082e04b90c138E(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bnk, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bnl, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %.sink857, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bnm) #43
          to label %.cont844 unwind label %.body642.thread722

.cont844:                                         ; preds = %.invoke843
  unreachable

bb.nu:                                            ; preds = %.noexc807
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !36107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !36107
  br label %bb.nv

bb.nv:                                            ; preds = %bb.nz, %bb.nu, %bb.nn
  %.sroa.023.5.i750 = phi i64 [ %i.bnd, %bb.nz ], [ 0, %bb.nn ], [ 0, %bb.nu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !36107
  br label %bb.nj

bb.nw:                                            ; preds = %.noexc802
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !36107
  store ptr @186, ptr %i.bf, align 8, !noalias !36107
  %i.bnn = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store i64 1, ptr %i.bnn, align 8, !noalias !36107
  %i.bno = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  store ptr null, ptr %i.bno, align 8, !noalias !36107
  %i.bnp = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.bnp, align 8, !noalias !36107
  %i.bnq = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  store i64 0, ptr %i.bnq, align 8, !noalias !36107
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.bf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1622) #43
end_hunk_7
begin_hunk_8_@_ZN6brotli3enc17brotli_bit_stream12LogMetaBlock17h8d6ec10e9474062aE:bb.a

.lr.ph.split.us.i959:                             ; preds = %.lr.ph.i945, %bb.qn
  %i.bys = phi i64 [ %i.bzi, %bb.qn ], [ %i.byq, %.lr.ph.i945 ]
  %.sroa.04.2203.us.i960 = phi i64 [ %i.byz, %bb.qn ], [ %.sroa.04.0225.i901, %.lr.ph.i945 ]
  %.sroa.023.2202.us.i961 = phi i64 [ %i.byy, %bb.qn ], [ %.sroa.023.0219.i907, %.lr.ph.i945 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !36221
  invoke void @_ZN6brotli3enc10input_pair9InputPair8split_at17hfae0f30deb0a91f7E(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.ah, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aj, i64 noundef %i.bys)
          to label %.noexc978 unwind label %.loopexit

.noexc978:                                        ; preds = %.lr.ph.split.us.i959
  %.sroa.0.0.copyload.us.i962 = load i64, ptr %i.ah, align 16, !noalias !36221 ; 2 uses
  %.sroa.6.0.copyload136.us.i963 = load i64, ptr %.sroa.6.0..sroa_idx135.i857, align 8, !noalias !36221 ; 4 uses
  %.sroa.10.sroa.0.0.copyload260.i964 = load i64, ptr %.sroa.10.0..sroa_idx.i858, align 16, !noalias !36221 ; 2 uses
  %.sroa.10.sroa.9.0.copyload262.i965 = load i64, ptr %.sroa.10.sroa.9.0..sroa.10.0..sroa_idx.sroa_idx.i897, align 8, !noalias !36221 ; 2 uses
  %.sroa.13.0.copyload.us.i966 = load i64, ptr %.sroa.13.0..sroa_idx.i859, align 16, !noalias !36221 ; 5 uses
  %.sroa.17.0.copyload.us.i967 = load i64, ptr %.sroa.17.0..sroa_idx.i860, align 8, !noalias !36221 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ai, ptr noundef nonnull align 16 dereferenceable(48) %i.bvq, i64 48, i1 false), !noalias !36221
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !36221
  %i.byt = add i64 %.sroa.13.0.copyload.us.i966, %.sroa.6.0.copyload136.us.i963 ; 2 uses
  %i.byu = icmp eq i64 %i.byt, 0
  br i1 %i.byu, label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17hbd8266c51bfee977E.exit125.us.i, label %bb.qc

bb.qc:                                            ; preds = %.noexc978
  %i.byv = icmp eq i64 %.sroa.6.0.copyload136.us.i963, 0 ; 2 uses
  br i1 %i.bvt, label %bb.qh, label %bb.qd

bb.qd:                                            ; preds = %bb.qc
  br i1 %i.byv, label %bb.qf, label %bb.qe

bb.qe:                                            ; preds = %bb.qd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !36234
  store i64 %.sroa.0.0.copyload.us.i962, ptr %i.bvu, align 8, !noalias !36238
  store i64 %.sroa.6.0.copyload136.us.i963, ptr %.sroa.6.0..sroa_idx141.i868, align 8, !noalias !36238
  store i64 %.sroa.10.sroa.0.0.copyload260.i964, ptr %.sroa.10.0..sroa_idx148.i869, align 8, !noalias !36238
  store i8 1, ptr %.sroa.4.0..sroa_idx.i129.i870, align 8, !noalias !36234
  store i8 2, ptr %i.e, align 8, !noalias !36234
  invoke fastcc void @"_ZN118_$LT$brotli..enc..brotli_bit_stream..CommandQueue$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17hd3f81be25cf7c6bdE"(ptr noalias noundef nonnull align 8 dereferenceable(1656) %i.hg, ptr noalias noundef readonly align 8 captures(address) dereferenceable(56) %i.e)
          to label %.noexc979 unwind label %.loopexit

.noexc979:                                        ; preds = %bb.qe
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !36234
  br label %bb.qf

bb.qf:                                            ; preds = %.noexc979, %bb.qd
  %i.byw = icmp eq i64 %.sroa.13.0.copyload.us.i966, 0
  br i1 %i.byw, label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17hbd8266c51bfee977E.exit125.us.i, label %bb.qg

bb.qg:                                            ; preds = %bb.qf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !36234
  store i64 %.sroa.10.sroa.9.0.copyload262.i965, ptr %i.bvv, align 8, !noalias !36238
  store i64 %.sroa.13.0.copyload.us.i966, ptr %.sroa.13.24..sroa_idx153.i871, align 8, !noalias !36238
  store i64 %.sroa.17.0.copyload.us.i967, ptr %.sroa.17.24..sroa_idx160.i872, align 8, !noalias !36238
  store i8 1, ptr %.sroa.42.0..sroa_idx.i130.i873, align 8, !noalias !36234
  store i8 2, ptr %i.d, align 8, !noalias !36234
  invoke fastcc void @"_ZN118_$LT$brotli..enc..brotli_bit_stream..CommandQueue$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17hd3f81be25cf7c6bdE"(ptr noalias noundef nonnull align 8 dereferenceable(1656) %i.hg, ptr noalias noundef readonly align 8 captures(address) dereferenceable(56) %i.d)
          to label %.noexc980 unwind label %.loopexit

.noexc980:                                        ; preds = %bb.qg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !36234
  br label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17hbd8266c51bfee977E.exit125.us.i

bb.qh:                                            ; preds = %bb.qc
  br i1 %i.byv, label %bb.qj, label %bb.qi

bb.qi:                                            ; preds = %bb.qh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !36239
  store i64 %.sroa.0.0.copyload.us.i962, ptr %i.bvw, align 8, !noalias !36243
  store i64 %.sroa.6.0.copyload136.us.i963, ptr %.sroa.6.0..sroa_idx139.i874, align 8, !noalias !36243
  store i64 %.sroa.10.sroa.0.0.copyload260.i964, ptr %.sroa.10.0..sroa_idx147.i875, align 8, !noalias !36243
  store i8 0, ptr %.sroa.4.0..sroa_idx.i126.i876, align 8, !noalias !36239
  store i8 2, ptr %i.g, align 8, !noalias !36239
  invoke fastcc void @"_ZN118_$LT$brotli..enc..brotli_bit_stream..CommandQueue$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17hd3f81be25cf7c6bdE"(ptr noalias noundef nonnull align 8 dereferenceable(1656) %i.hg, ptr noalias noundef readonly align 8 captures(address) dereferenceable(56) %i.g)
          to label %.noexc981 unwind label %.loopexit

.noexc981:                                        ; preds = %bb.qi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !36239
  br label %bb.qj

bb.qj:                                            ; preds = %.noexc981, %bb.qh
  %i.byx = icmp eq i64 %.sroa.13.0.copyload.us.i966, 0
  br i1 %i.byx, label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17hbd8266c51bfee977E.exit125.us.i, label %bb.qk

bb.qk:                                            ; preds = %bb.qj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !36239
  store i64 %.sroa.10.sroa.9.0.copyload262.i965, ptr %i.bvx, align 8, !noalias !36243
  store i64 %.sroa.13.0.copyload.us.i966, ptr %.sroa.13.24..sroa_idx151.i877, align 8, !noalias !36243
  store i64 %.sroa.17.0.copyload.us.i967, ptr %.sroa.17.24..sroa_idx158.i878, align 8, !noalias !36243
  store i8 0, ptr %.sroa.42.0..sroa_idx.i127.i879, align 8, !noalias !36239
  store i8 2, ptr %i.f, align 8, !noalias !36239
  invoke fastcc void @"_ZN118_$LT$brotli..enc..brotli_bit_stream..CommandQueue$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17hd3f81be25cf7c6bdE"(ptr noalias noundef nonnull align 8 dereferenceable(1656) %i.hg, ptr noalias noundef readonly align 8 captures(address) dereferenceable(56) %i.f)
          to label %.noexc982 unwind label %.loopexit

.noexc982:                                        ; preds = %bb.qk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !36239
  br label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17hbd8266c51bfee977E.exit125.us.i

_ZN6brotli3enc9interface16CommandProcessor13push_literals17hbd8266c51bfee977E.exit125.us.i: ; preds = %.noexc982, %bb.qj, %.noexc980, %bb.qf, %.noexc978
  %i.byy = sub i64 %.sroa.023.2202.us.i961, %i.byt ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aj, ptr noundef nonnull align 8 dereferenceable(48) %i.ai, i64 48, i1 false), !noalias !36221
  %i.byz = add i64 %.sroa.04.2203.us.i960, 1      ; 7 uses
  %i.bza = icmp ugt i64 %i.hy, %i.byz
  br i1 %i.bza, label %bb.ql, label %bb.qn

bb.ql:                                            ; preds = %_ZN6brotli3enc9interface16CommandProcessor13push_literals17hbd8266c51bfee977E.exit125.us.i
  %i.bzb = icmp ult i64 %i.byz, %i.bvz
  br i1 %i.bzb, label %bb.qm, label %.invoke858

bb.qm:                                            ; preds = %bb.ql
  %i.bzc = getelementptr inbounds nuw [4 x i8], ptr %i.bwb, i64 %i.byz
  %i.bzd = load i32, ptr %i.bzc, align 4, !noalias !36228, !noundef !27
  %i.bze = getelementptr inbounds nuw i8, ptr %i.hw, i64 %i.byz
  %i.bzf = load i8, ptr %i.bze, align 1, !noalias !36228, !noundef !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !36244
  store i8 %i.bzf, ptr %i.bwc, align 1, !noalias !36244
  store i8 0, ptr %i.bwd, align 2, !noalias !36244
  store i8 4, ptr %i.c, align 8, !noalias !36244
  invoke fastcc void @"_ZN118_$LT$brotli..enc..brotli_bit_stream..CommandQueue$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17hd3f81be25cf7c6bdE"(ptr noalias noundef nonnull align 8 dereferenceable(1656) %i.hg, ptr noalias noundef readonly align 8 captures(address) dereferenceable(56) %i.c)
          to label %.noexc983 unwind label %.loopexit

.noexc983:                                        ; preds = %bb.qm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !36244
  br label %bb.qn

bb.qn:                                            ; preds = %.noexc983, %_ZN6brotli3enc9interface16CommandProcessor13push_literals17hbd8266c51bfee977E.exit125.us.i
  %.sroa.016.5.us.i968 = phi i32 [ %i.bzd, %.noexc983 ], [ -2147483648, %_ZN6brotli3enc9interface16CommandProcessor13push_literals17hbd8266c51bfee977E.exit125.us.i ] ; 2 uses
  %.pr.us.i969 = load i64, ptr %.sroa.7.0..sroa_idx46.i855, align 8, !noalias !36221 ; 2 uses
  %i.bzg = load i64, ptr %.sroa.5.0..sroa_idx39.i852, align 8, !noalias !36221, !noundef !27 ; 2 uses
  %i.bzh = add i64 %i.bzg, %.pr.us.i969           ; 2 uses
  %i.bzi = zext i32 %.sroa.016.5.us.i968 to i64   ; 2 uses
  %i.bzj = icmp ugt i64 %i.bzh, %i.bzi
  br i1 %i.bzj, label %.lr.ph.split.us.i959, label %._crit_edge.i920

._crit_edge.i920:                                 ; preds = %bb.sn, %bb.qn, %bb.qb
  %.lcssa174.i921 = phi i64 [ %.sroa.7.0.copyload.i914, %bb.qb ], [ %.pr.us.i969, %bb.qn ], [ %.pr.i956, %bb.sn ] ; 3 uses
  %.sroa.023.2.lcssa.i922 = phi i64 [ %.sroa.023.0219.i907, %bb.qb ], [ %i.byy, %bb.qn ], [ %i.ccs, %bb.sn ]
  %.sroa.016.3.lcssa.i923 = phi i32 [ %.sroa.016.1222.i904, %bb.qb ], [ %.sroa.016.5.us.i968, %bb.qn ], [ %.sroa.016.5.i955, %bb.sn ]
  %.sroa.04.2.lcssa.i924 = phi i64 [ %.sroa.04.0225.i901, %bb.qb ], [ %i.byz, %bb.qn ], [ %i.cct, %bb.sn ]
  %.lcssa169.i925 = phi i64 [ %.sroa.5.0.copyload.i911, %bb.qb ], [ %i.bzg, %bb.qn ], [ %i.ccy, %bb.sn ]
  %.lcssa.i926 = phi i64 [ %i.bxp, %bb.qb ], [ %i.bzh, %bb.qn ], [ %i.ccz, %bb.sn ] ; 2 uses
  %i.bzk = icmp eq i64 %.lcssa169.i925, 0         ; 3 uses
  br i1 %.not170, label %bb.qs, label %bb.qo

.lr.ph.split.i946:                                ; preds = %.lr.ph.i945, %bb.sn
  %i.bzl = phi i64 [ %i.cda, %bb.sn ], [ %i.byq, %.lr.ph.i945 ]
  %.sroa.04.2203.i947 = phi i64 [ %i.cct, %bb.sn ], [ %.sroa.04.0225.i901, %.lr.ph.i945 ]
  %.sroa.023.2202.i948 = phi i64 [ %i.ccs, %bb.sn ], [ %.sroa.023.0219.i907, %.lr.ph.i945 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !36221
  invoke void @_ZN6brotli3enc10input_pair9InputPair8split_at17hfae0f30deb0a91f7E(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.ah, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aj, i64 noundef %i.bzl)
          to label %.noexc984 unwind label %.loopexit.split-lp.loopexit

.noexc984:                                        ; preds = %.lr.ph.split.i946
  %.sroa.6.0.copyload136.i950 = load i64, ptr %.sroa.6.0..sroa_idx135.i857, align 8, !noalias !36221 ; 2 uses
  %i.bzm = load <2 x i64>, ptr %i.ah, align 16, !noalias !36221
  %.sroa.10.sroa.0.0.copyload.i951 = load i64, ptr %.sroa.10.0..sroa_idx.i858, align 16, !noalias !36221
  %.sroa.13.0.copyload.i953 = load i64, ptr %.sroa.13.0..sroa_idx.i859, align 16, !noalias !36221 ; 2 uses
  %i.bzn = load <2 x i64>, ptr %.sroa.10.sroa.9.0..sroa.10.0..sroa_idx.sroa_idx.i897, align 8, !noalias !36221
  %.sroa.17.0.copyload.i954 = load i64, ptr %.sroa.17.0..sroa_idx.i860, align 8, !noalias !36221
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ai, ptr noundef nonnull align 16 dereferenceable(48) %i.bvq, i64 48, i1 false), !noalias !36221
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !36221
  %i.bzo = add i64 %.sroa.13.0.copyload.i953, %.sroa.6.0.copyload136.i950 ; 2 uses
  %i.bzp = icmp eq i64 %i.bzo, 0
  br i1 %i.bzp, label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17hbd8266c51bfee977E.exit125.i, label %bb.si

bb.qo:                                            ; preds = %._crit_edge.i920
  br i1 %i.bzk, label %bb.qq, label %bb.qp

bb.qp:                                            ; preds = %bb.qo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !36247
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bwe, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.aj, i64 24, i1 false), !noalias !36251
  store i8 0, ptr %.sroa.4.0..sroa_idx.i.i880, align 8, !noalias !36247
  store i8 2, ptr %i.q, align 8, !noalias !36247
  invoke fastcc void @"_ZN118_$LT$brotli..enc..brotli_bit_stream..CommandQueue$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17hd3f81be25cf7c6bdE"(ptr noalias noundef nonnull align 8 dereferenceable(1656) %i.hg, ptr noalias noundef readonly align 8 captures(address) dereferenceable(56) %i.q)
          to label %.noexc985 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc985:                                        ; preds = %bb.qp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !36247
  br label %bb.qq

bb.qq:                                            ; preds = %.noexc985, %bb.qo
  %i.bzq = icmp eq i64 %.lcssa174.i921, 0
  br i1 %i.bzq, label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17hbd8266c51bfee977E.exit.i, label %bb.qr

bb.qr:                                            ; preds = %bb.qq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !36247
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bwf, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.643.0..sroa_idx44.i854, i64 24, i1 false), !noalias !36251
  store i8 0, ptr %.sroa.42.0..sroa_idx.i.i881, align 8, !noalias !36247
  store i8 2, ptr %i.p, align 8, !noalias !36247
  invoke fastcc void @"_ZN118_$LT$brotli..enc..brotli_bit_stream..CommandQueue$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17hd3f81be25cf7c6bdE"(ptr noalias noundef nonnull align 8 dereferenceable(1656) %i.hg, ptr noalias noundef readonly align 8 captures(address) dereferenceable(56) %i.p)
          to label %.noexc986 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc986:                                        ; preds = %bb.qr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !36247
  br label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17hbd8266c51bfee977E.exit.i

bb.qs:                                            ; preds = %._crit_edge.i920
  br i1 %i.bvt, label %bb.qt, label %bb.qx

_ZN6brotli3enc9interface16CommandProcessor13push_literals17hbd8266c51bfee977E.exit.i: ; preds = %.noexc990, %bb.qz, %.noexc988, %bb.qv, %.noexc986, %bb.qq
  %i.bzr = sub i64 %.sroa.023.2.lcssa.i922, %.lcssa.i926
  %i.bzs = trunc nuw i64 %.lcssa.i926 to i32
  %i.bzt = sub nuw i32 %.sroa.016.3.lcssa.i923, %i.bzs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !36221
  br label %bb.qa

bb.qt:                                            ; preds = %bb.qs
  br i1 %i.bzk, label %bb.qv, label %bb.qu

bb.qu:                                            ; preds = %bb.qt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !36252
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bwi, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.aj, i64 24, i1 false), !noalias !36256
  store i8 0, ptr %.sroa.4.0..sroa_idx.i114.i884, align 8, !noalias !36252
  store i8 2, ptr %i.o, align 8, !noalias !36252
  invoke fastcc void @"_ZN118_$LT$brotli..enc..brotli_bit_stream..CommandQueue$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17hd3f81be25cf7c6bdE"(ptr noalias noundef nonnull align 8 dereferenceable(1656) %i.hg, ptr noalias noundef readonly align 8 captures(address) dereferenceable(56) %i.o)
          to label %.noexc987 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc987:                                        ; preds = %bb.qu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !36252
  br label %bb.qv

bb.qv:                                            ; preds = %.noexc987, %bb.qt
  %i.bzu = icmp eq i64 %.lcssa174.i921, 0
  br i1 %i.bzu, label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17hbd8266c51bfee977E.exit.i, label %bb.qw

bb.qw:                                            ; preds = %bb.qv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !36252
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bwj, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.643.0..sroa_idx44.i854, i64 24, i1 false), !noalias !36256
  store i8 0, ptr %.sroa.42.0..sroa_idx.i115.i885, align 8, !noalias !36252
  store i8 2, ptr %i.n, align 8, !noalias !36252
  invoke fastcc void @"_ZN118_$LT$brotli..enc..brotli_bit_stream..CommandQueue$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17hd3f81be25cf7c6bdE"(ptr noalias noundef nonnull align 8 dereferenceable(1656) %i.hg, ptr noalias noundef readonly align 8 captures(address) dereferenceable(56) %i.n)
          to label %.noexc988 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc988:                                        ; preds = %bb.qw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !36252
  br label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17hbd8266c51bfee977E.exit.i

bb.qx:                                            ; preds = %bb.qs
  br i1 %i.bzk, label %bb.qz, label %bb.qy

bb.qy:                                            ; preds = %bb.qx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !36257
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bwg, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.aj, i64 24, i1 false), !noalias !36261
  store i8 1, ptr %.sroa.4.0..sroa_idx.i117.i882, align 8, !noalias !36257
  store i8 2, ptr %i.m, align 8, !noalias !36257
  invoke fastcc void @"_ZN118_$LT$brotli..enc..brotli_bit_stream..CommandQueue$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17hd3f81be25cf7c6bdE"(ptr noalias noundef nonnull align 8 dereferenceable(1656) %i.hg, ptr noalias noundef readonly align 8 captures(address) dereferenceable(56) %i.m)
          to label %.noexc989 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc989:                                        ; preds = %bb.qy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !36257
  br label %bb.qz

bb.qz:                                            ; preds = %.noexc989, %bb.qx
  %i.bzv = icmp eq i64 %.lcssa174.i921, 0
  br i1 %i.bzv, label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17hbd8266c51bfee977E.exit.i, label %bb.ra

bb.ra:                                            ; preds = %bb.qz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !36257
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bwh, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.643.0..sroa_idx44.i854, i64 24, i1 false), !noalias !36261
  store i8 1, ptr %.sroa.42.0..sroa_idx.i118.i883, align 8, !noalias !36257
  store i8 2, ptr %i.l, align 8, !noalias !36257
  invoke fastcc void @"_ZN118_$LT$brotli..enc..brotli_bit_stream..CommandQueue$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17hd3f81be25cf7c6bdE"(ptr noalias noundef nonnull align 8 dereferenceable(1656) %i.hg, ptr noalias noundef readonly align 8 captures(address) dereferenceable(56) %i.l)
          to label %.noexc990 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc990:                                        ; preds = %bb.ra
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !36257
  br label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17hbd8266c51bfee977E.exit.i

bb.rb:                                            ; preds = %bb.qa
  %.sroa.0.0.i119.i930 = call noundef i64 @llvm.umin.i64(i64 %i.byg, i64 %.sroa.023.1.i927) ; 5 uses
  %i.bzw = icmp eq i64 %.sroa.0.0.i119.i930, 0
  br i1 %i.bzw, label %bb.re, label %bb.rd

bb.rc:                                            ; preds = %bb.qa
  %i.bzx = icmp ugt i32 %i.bxz, 3
  br i1 %i.bzx, label %bb.rh, label %.invoke860, !prof !222

bb.rd:                                            ; preds = %bb.rb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !36221
  %i.bzy = trunc i64 %.sroa.050.0.i917 to i32
  %i.bzz = trunc nuw i64 %.sroa.0.0.i119.i930 to i32
  store i32 %i.bzy, ptr %i.bwk, align 4, !noalias !36221
  store i32 %i.bzz, ptr %i.bwl, align 8, !noalias !36221
  store i8 0, ptr %i.x, align 8, !noalias !36221
  invoke fastcc void @"_ZN118_$LT$brotli..enc..brotli_bit_stream..CommandQueue$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17hd3f81be25cf7c6bdE"(ptr noalias noundef nonnull align 8 dereferenceable(1656) %i.hg, ptr noalias noundef readonly align 8 captures(address) dereferenceable(56) %i.x)
          to label %.noexc991 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc991:                                        ; preds = %bb.rd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !36221
  br label %bb.re

bb.re:                                            ; preds = %.noexc991, %bb.rb
  %i.caa = sub nuw i64 %.sroa.023.1.i927, %.sroa.0.0.i119.i930 ; 2 uses
  %i.cab = icmp eq i64 %i.byb, 1
  %i.cac = icmp eq i64 %i.byc, 0
  %or.cond.i931 = select i1 %i.cab, i1 %i.cac, i1 false
  br i1 %or.cond.i931, label %bb.rg, label %bb.rf

bb.rf:                                            ; preds = %bb.re
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bwm, ptr noundef nonnull align 4 dereferenceable(12) %i.w, i64 12, i1 false), !noalias !36221
  %i.cad = trunc i64 %.sroa.050.0.i917 to i32
  store i32 %i.cad, ptr %i.w, align 4, !noalias !36221
  br label %bb.rg

bb.rg:                                            ; preds = %bb.rt, %bb.rf, %bb.re
  %.sroa.054.0.i932 = phi i64 [ %i.cbb, %bb.rt ], [ %.sroa.0.0.i119.i930, %bb.re ], [ %.sroa.0.0.i119.i930, %bb.rf ]
  %.sroa.023.4.i933 = phi i64 [ %.sroa.023.5.i944, %bb.rt ], [ %i.caa, %bb.re ], [ %i.caa, %bb.rf ]
  %i.cae = add i32 %.sroa.019.1221.i905, -1       ; 2 uses
  %i.caf = icmp eq i32 %i.cae, 0
  br i1 %i.caf, label %bb.ry, label %bb.sb

bb.rh:                                            ; preds = %bb.rc
  %i.cag = icmp ult i32 %i.bxz, 25
  br i1 %i.cag, label %bb.ri, label %.invoke860, !prof !222

bb.ri:                                            ; preds = %bb.rh
  %i.cah = xor i64 %.sroa.0.0.i113.i918, -1
  %i.cai = add i64 %.sroa.050.0.i917, %i.cah      ; 2 uses
  %i.caj = getelementptr inbounds nuw i8, ptr @1619, i64 %i.byg
  %i.cak = load i8, ptr %i.caj, align 1, !noalias !36221, !noundef !27
  %i.cal = and i8 %i.cak, 63
  %i.cam = zext nneg i8 %i.cal to i64             ; 2 uses
  %i.can = lshr i64 %i.cai, %i.cam                ; 2 uses
  %notmask.i941 = shl nsw i64 -1, %i.cam
  %i.cao = xor i64 %notmask.i941, -1
  %i.cap = and i64 %i.cai, %i.cao                 ; 2 uses
  %i.caq = mul i64 %i.cap, %i.byg
  %i.car = getelementptr inbounds nuw [4 x i8], ptr @1620, i64 %i.byg
  %i.cas = load i32, ptr %i.car, align 4, !noalias !36221, !noundef !27
  %i.cat = zext i32 %i.cas to i64
  %i.cau = add i64 %i.caq, %i.cat                 ; 4 uses
  %i.cav = add i64 %i.cau, %i.byg                 ; 3 uses
  %i.caw = icmp uge i64 %i.cav, %i.cau
  %i.cax = icmp ult i64 %i.cav, 122785
  %or.cond112.i942 = and i1 %i.caw, %i.cax
  br i1 %or.cond112.i942, label %bb.rk, label %bb.rj, !prof !202

bb.rj:                                            ; preds = %bb.ri
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.cau, i64 noundef %i.cav, i64 noundef 122784, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1626) #43
          to label %.noexc994 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc994:                                        ; preds = %bb.rj
  unreachable

bb.rk:                                            ; preds = %bb.ri
  %i.cay = getelementptr inbounds nuw i8, ptr @_ZN19brotli_decompressor10dictionary17kBrotliDictionary17h143067f04a26e6e4E, i64 %i.cau
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !36221
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(38) %i.ag, i8 0, i64 38, i1 false), !noalias !36221
  %i.caz = trunc i64 %i.can to i32
  %i.cba = invoke noundef i32 @_ZN19brotli_decompressor9transform23TransformDictionaryWord17he8c22d3ef35a6ad0E(ptr noalias noundef nonnull align 1 %i.ag, i64 noundef 38, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.cay, i64 noundef %i.byg, i32 noundef %i.bxz, i32 noundef %i.caz)
          to label %.noexc995 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 3 uses

.noexc995:                                        ; preds = %bb.rk
  %i.cbb = sext i32 %i.cba to i64                 ; 5 uses
  %.not111.i943 = icmp ult i64 %.sroa.023.1.i927, %i.cbb
  br i1 %.not111.i943, label %bb.rl, label %bb.rm

bb.rl:                                            ; preds = %.noexc995
  %i.cbc = icmp eq i64 %.sroa.023.1.i927, 0
  br i1 %i.cbc, label %bb.rt, label %bb.rn

bb.rm:                                            ; preds = %.noexc995
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !36221
  %i.cbd = trunc nuw nsw i32 %i.bxz to i8
  %i.cbe = trunc i64 %i.can to i8
  %i.cbf = trunc i32 %i.cba to i8
  %i.cbg = trunc i64 %i.cap to i32
  store i32 %i.cbg, ptr %i.bwn, align 4, !noalias !36221
  store i8 %i.cbd, ptr %.sroa.4.0..sroa_idx.i886, align 8, !noalias !36221
  store i8 %i.cbe, ptr %.sroa.564.0..sroa_idx.i887, align 1, !noalias !36221
  store i8 %i.cbf, ptr %.sroa.665.0..sroa_idx.i888, align 2, !noalias !36221
  store i8 0, ptr %.sroa.766.0..sroa_idx.i889, align 1, !noalias !36221
  store i8 1, ptr %i.af, align 8, !noalias !36221
  invoke fastcc void @"_ZN118_$LT$brotli..enc..brotli_bit_stream..CommandQueue$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17hd3f81be25cf7c6bdE"(ptr noalias noundef nonnull align 8 dereferenceable(1656) %i.hg, ptr noalias noundef readonly align 8 captures(address) dereferenceable(56) %i.af)
          to label %.noexc996 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc996:                                        ; preds = %bb.rm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !36221
  %i.cbh = sub nuw i64 %.sroa.023.1.i927, %i.cbb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !36221
  %i.cbi = icmp ult i32 %i.cba, 39
  br i1 %i.cbi, label %bb.rv, label %bb.ru, !prof !222

bb.rn:                                            ; preds = %bb.rl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !36221
  invoke void @_ZN6brotli3enc10input_pair9InputPair8split_at17hfae0f30deb0a91f7E(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.ab, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.al, i64 noundef %.sroa.023.1.i927)
          to label %.noexc997 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc997:                                        ; preds = %bb.rn
  call void @llvm.experimental.noalias.scope.decl(metadata !36262)
  %i.cbj = load i64, ptr %i.bwp, align 8, !alias.scope !36262, !noalias !36265, !noundef !27
  %i.cbk = icmp eq i64 %i.cbj, 0
  br i1 %i.cbk, label %bb.rp, label %bb.ro

bb.ro:                                            ; preds = %.noexc997
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !36267
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bwq, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.ab, i64 24, i1 false), !noalias !36265
  store i8 0, ptr %.sroa.4.0..sroa_idx.i120.i893, align 8, !noalias !36267
  store i8 2, ptr %i.k, align 8, !noalias !36267
  invoke fastcc void @"_ZN118_$LT$brotli..enc..brotli_bit_stream..CommandQueue$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17hd3f81be25cf7c6bdE"(ptr noalias noundef nonnull align 8 dereferenceable(1656) %i.hg, ptr noalias noundef readonly align 8 captures(address) dereferenceable(56) %i.k)
          to label %.noexc998 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc998:                                        ; preds = %bb.ro
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !36267
  br label %bb.rp

bb.rp:                                            ; preds = %.noexc998, %.noexc997
  %i.cbl = load i64, ptr %i.bwr, align 8, !alias.scope !36262, !noalias !36265, !noundef !27
  %i.cbm = icmp eq i64 %i.cbl, 0
  br i1 %i.cbm, label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17hbd8266c51bfee977E.exit122.i, label %bb.rq

bb.rq:                                            ; preds = %bb.rp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !36267
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bwt, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.bws, i64 24, i1 false), !noalias !36265
  store i8 0, ptr %.sroa.42.0..sroa_idx.i121.i894, align 8, !noalias !36267
  store i8 2, ptr %i.j, align 8, !noalias !36267
  invoke fastcc void @"_ZN118_$LT$brotli..enc..brotli_bit_stream..CommandQueue$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17hd3f81be25cf7c6bdE"(ptr noalias noundef nonnull align 8 dereferenceable(1656) %i.hg, ptr noalias noundef readonly align 8 captures(address) dereferenceable(56) %i.j)
          to label %.noexc999 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc999:                                        ; preds = %bb.rq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !36267
  br label %_ZN6brotli3enc9interface16CommandProcessor13push_literals17hbd8266c51bfee977E.exit122.i

_ZN6brotli3enc9interface16CommandProcessor13push_literals17hbd8266c51bfee977E.exit122.i: ; preds = %.noexc999, %bb.rp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !36221
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !36221
  store ptr %i.ag, ptr %i.aa, align 8, !noalias !36221
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.474.0..sroa_idx.i895, i8 0, i64 16, i1 false), !noalias !36221
  store ptr inttoptr (i64 1 to ptr), ptr %i.bwu, align 8, !noalias !36221
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.477.0..sroa_idx.i896, i8 0, i64 16, i1 false), !noalias !36221
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !36221
  invoke void @_ZN6brotli3enc10input_pair9InputPair8split_at17hfae0f30deb0a91f7E(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.z, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.al, i64 noundef 0)
          to label %.noexc1000 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc1000:                                       ; preds = %_ZN6brotli3enc9interface16CommandProcessor13push_literals17hbd8266c51bfee977E.exit122.i
  %i.cbn = invoke noundef zeroext i1 @"_ZN75_$LT$brotli..enc..input_pair..InputPair$u20$as$u20$core..cmp..PartialEq$GT$2eq17ha719365bd820edd4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.z)
          to label %.noexc1001 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc1001:                                       ; preds = %.noexc1000
  br i1 %i.cbn, label %bb.rs, label %bb.rr, !prof !222

bb.rr:                                            ; preds = %.noexc1001
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !36221
  br label %.invoke862

.invoke862:                                       ; preds = %bb.rw, %bb.rr
  %.sink868 = phi ptr [ %i.ac, %bb.rw ], [ %i.y, %bb.rr ] ; 2 uses
  %i.cbo = phi ptr [ %i.ae, %bb.rw ], [ %i.aa, %bb.rr ]
  %i.cbp = phi ptr [ %i.ad, %bb.rw ], [ %i.z, %bb.rr ]
  %i.cbq = phi ptr [ @1623, %bb.rw ], [ @1621, %bb.rr ]
  store ptr null, ptr %.sink868, align 8, !noalias !36221
  invoke void @_ZN4core9panicking13assert_failed17ha55082e04b90c138E(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cbo, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cbp, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %.sink868, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cbq) #43
          to label %.cont863 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont863:                                         ; preds = %.invoke862
  unreachable

bb.rs:                                            ; preds = %.noexc1001
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !36221
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !36221
  br label %bb.rt

bb.rt:                                            ; preds = %bb.rx, %bb.rs, %bb.rl
  %.sroa.023.5.i944 = phi i64 [ %i.cbh, %bb.rx ], [ 0, %bb.rl ], [ 0, %bb.rs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !36221
  br label %bb.rg

bb.ru:                                            ; preds = %.noexc996
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !36221
  br label %.invoke864

.invoke864:                                       ; preds = %bb.sp, %bb.ru
  %.sink877.sroa.phi = phi ptr [ %.sink877.sroa.gep, %bb.sp ], [ %.sink877.sroa.gep1197, %bb.ru ]
  %.sink877.sroa.phi1198 = phi ptr [ %.sink877.sroa.gep1199, %bb.sp ], [ %.sink877.sroa.gep1200, %bb.ru ]
  %.sink877.sroa.phi1201 = phi ptr [ %.sink877.sroa.gep1202, %bb.sp ], [ %.sink877.sroa.gep1203, %bb.ru ]
  %.sink877.sroa.phi1204 = phi ptr [ %.sink877.sroa.gep1205, %bb.sp ], [ %.sink877.sroa.gep1206, %bb.ru ]
  %.sink877 = phi ptr [ %i.b, %bb.sp ], [ %i.s, %bb.ru ] ; 2 uses
  %i.cbr = phi ptr [ @1644, %bb.sp ], [ @1622, %bb.ru ]
  store ptr @186, ptr %.sink877, align 8, !noalias !27
  store i64 1, ptr %.sink877.sroa.phi, align 8, !noalias !27
  store ptr null, ptr %.sink877.sroa.phi1198, align 8, !noalias !27
  store ptr inttoptr (i64 8 to ptr), ptr %.sink877.sroa.phi1201, align 8, !noalias !27
  store i64 0, ptr %.sink877.sroa.phi1204, align 8, !noalias !27
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %.sink877, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cbr) #43
          to label %.cont865 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont865:                                         ; preds = %.invoke864
  unreachable

bb.rv:                                            ; preds = %.noexc996
  store ptr %i.ag, ptr %i.ae, align 8, !noalias !36221
  store i64 %i.cbb, ptr %.sroa.468.0..sroa_idx.i890, align 8, !noalias !36221
  store i64 0, ptr %.sroa.569.0..sroa_idx.i891, align 8, !noalias !36221
end_hunk_8
begin_hunk_9_@_ZN6brotli3enc26compress_fragment_two_pass13StoreCommands17hfcc52551749eafcfE:bb.a
  %i.bw = add i32 %i.bv, 1
  store i32 %i.bw, ptr %i.bu, align 4
  %i.bx = add i64 %i.h, 1
  %exitcond49.not = icmp eq i64 %i.h, %2
  br i1 %exitcond49.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN6brotli3enc26compress_fragment_two_pass26compress_fragment_two_pass17hc4772fb9232ebc34E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1, i64 noundef %2, i1 noundef zeroext %3, ptr noalias noundef nonnull align 4 %4, i64 noundef %5, ptr noalias noundef nonnull align 1 %6, i64 noundef %7, ptr noalias noundef nonnull align 4 %8, i64 noundef %9, i64 noundef %10, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 6 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = alloca [8 x i8], align 8                 ; 6 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [8 x i8], align 8                 ; 5 uses
  %i.l = alloca [8 x i8], align 8                 ; 6 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [8 x i8], align 8                 ; 5 uses
  %i.p = alloca [8 x i8], align 8                 ; 6 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [8 x i8], align 8                 ; 5 uses
  %i.t = alloca [8 x i8], align 8                 ; 6 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = alloca [16 x i8], align 8                ; 5 uses
  %i.w = alloca [8 x i8], align 8                 ; 5 uses
  %i.x = alloca [8 x i8], align 8                 ; 6 uses
  %i.y = alloca [16 x i8], align 8                ; 5 uses
  %i.z = alloca [16 x i8], align 8                ; 5 uses
  %i.aa = alloca [8 x i8], align 8                ; 5 uses
  %i.ab = alloca [8 x i8], align 8                ; 6 uses
  %i.ac = alloca [16 x i8], align 8               ; 5 uses
  %i.ad = alloca [16 x i8], align 8               ; 5 uses
  %i.ae = alloca [8 x i8], align 8                ; 5 uses
  %i.af = alloca [8 x i8], align 8                ; 6 uses
  %i.ag = alloca [16 x i8], align 8               ; 5 uses
  %i.ah = alloca [16 x i8], align 8               ; 5 uses
  %i.ai = alloca [8 x i8], align 8                ; 5 uses
  %i.aj = alloca [8 x i8], align 8                ; 6 uses
  %i.ak = alloca [16 x i8], align 8               ; 5 uses
  %i.al = alloca [16 x i8], align 8               ; 5 uses
  %i.am = alloca [8 x i8], align 8                ; 5 uses
  %i.an = alloca [8 x i8], align 8                ; 6 uses
  %i.ao = load i64, ptr %11, align 8, !noundef !27 ; 2 uses
  %i.ap = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %10, i1 false)
  switch i64 %i.ap, label %_ZN6brotli3enc26compress_fragment_two_pass31compress_fragment_two_pass_impl17h9576e910d8219ba7E.exit36 [
    i64 55, label %.preheader
    i64 54, label %.preheader1
    i64 53, label %.preheader3
    i64 52, label %.preheader5
    i64 51, label %.preheader7
    i64 50, label %.preheader9
    i64 49, label %.preheader11
    i64 48, label %.preheader13
    i64 47, label %.preheader15
    i64 46, label %.preheader17
  ]

.preheader17:                                     ; preds = %bb.a
  %.not.i29 = icmp eq i64 %2, 0
  br i1 %.not.i29, label %_ZN6brotli3enc26compress_fragment_two_pass31compress_fragment_two_pass_impl17h9576e910d8219ba7E.exit36, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader17
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  br label %bb.bd

.preheader15:                                     ; preds = %bb.a
  %.not.i332 = icmp eq i64 %2, 0
  br i1 %.not.i332, label %_ZN6brotli3enc26compress_fragment_two_pass31compress_fragment_two_pass_impl17h9576e910d8219ba7E.exit36, label %.lr.ph35

.lr.ph35:                                         ; preds = %.preheader15
  %i.as = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  br label %bb.ax

.preheader13:                                     ; preds = %bb.a
  %.not.i736 = icmp eq i64 %2, 0
  br i1 %.not.i736, label %_ZN6brotli3enc26compress_fragment_two_pass31compress_fragment_two_pass_impl17h9576e910d8219ba7E.exit36, label %.lr.ph39

.lr.ph39:                                         ; preds = %.preheader13
  %i.au = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  br label %bb.ar

.preheader11:                                     ; preds = %bb.a
  %.not.i1140 = icmp eq i64 %2, 0
  br i1 %.not.i1140, label %_ZN6brotli3enc26compress_fragment_two_pass31compress_fragment_two_pass_impl17h9576e910d8219ba7E.exit36, label %.lr.ph43

.lr.ph43:                                         ; preds = %.preheader11
  %i.aw = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  br label %bb.al

.preheader9:                                      ; preds = %bb.a
  %.not.i1544 = icmp eq i64 %2, 0
  br i1 %.not.i1544, label %_ZN6brotli3enc26compress_fragment_two_pass31compress_fragment_two_pass_impl17h9576e910d8219ba7E.exit36, label %.lr.ph47

.lr.ph47:                                         ; preds = %.preheader9
  %i.ay = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  br label %bb.af

.preheader7:                                      ; preds = %bb.a
  %.not.i1948 = icmp eq i64 %2, 0
  br i1 %.not.i1948, label %_ZN6brotli3enc26compress_fragment_two_pass31compress_fragment_two_pass_impl17h9576e910d8219ba7E.exit36, label %.lr.ph51

.lr.ph51:                                         ; preds = %.preheader7
  %i.ba = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  br label %bb.z

.preheader5:                                      ; preds = %bb.a
  %.not.i2352 = icmp eq i64 %2, 0
  br i1 %.not.i2352, label %_ZN6brotli3enc26compress_fragment_two_pass31compress_fragment_two_pass_impl17h9576e910d8219ba7E.exit36, label %.lr.ph55

.lr.ph55:                                         ; preds = %.preheader5
  %i.bc = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  br label %bb.t

.preheader3:                                      ; preds = %bb.a
  %.not.i2756 = icmp eq i64 %2, 0
  br i1 %.not.i2756, label %_ZN6brotli3enc26compress_fragment_two_pass31compress_fragment_two_pass_impl17h9576e910d8219ba7E.exit36, label %.lr.ph59

.lr.ph59:                                         ; preds = %.preheader3
  %i.be = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  br label %bb.n

.preheader1:                                      ; preds = %bb.a
  %.not.i3160 = icmp eq i64 %2, 0
  br i1 %.not.i3160, label %_ZN6brotli3enc26compress_fragment_two_pass31compress_fragment_two_pass_impl17h9576e910d8219ba7E.exit36, label %.lr.ph63

.lr.ph63:                                         ; preds = %.preheader1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  br label %bb.h

.preheader:                                       ; preds = %bb.a
  %.not.i3564 = icmp eq i64 %2, 0
  br i1 %.not.i3564, label %_ZN6brotli3enc26compress_fragment_two_pass31compress_fragment_two_pass_impl17h9576e910d8219ba7E.exit36, label %.lr.ph67

.lr.ph67:                                         ; preds = %.preheader
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph67, %bb.g
  %.sroa.0.0.i3466 = phi i64 [ %2, %.lr.ph67 ], [ %i.bs, %bb.g ] ; 3 uses
  %.sroa.04.0.i3365 = phi i64 [ 0, %.lr.ph67 ], [ %i.br, %bb.g ] ; 6 uses
  %.sroa.0.0.i37 = call noundef i64 @llvm.umin.i64(i64 %.sroa.0.0.i3466, i64 131072) ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !37551
  store i64 0, ptr %i.d, align 8, !noalias !37551
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !37551
  store i64 0, ptr %i.c, align 8, !noalias !37551
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !37551
  store ptr %6, ptr %i.b, align 8, !noalias !37551
  store i64 %7, ptr %i.bi, align 8, !noalias !37551
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !37551
  store ptr %4, ptr %i.a, align 8, !noalias !37551
  store i64 %5, ptr %i.bj, align 8, !noalias !37551
  call void @_ZN6brotli3enc26compress_fragment_two_pass14CreateCommands17h2c75cdd6d6261205E(i64 noundef %.sroa.04.0.i3365, i64 noundef %.sroa.0.0.i37, i64 noundef %.sroa.0.0.i3466, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull align 4 %8, i64 noundef %9, i64 noundef 8, i64 noundef 4, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !37551
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !37551
  %i.bk = icmp ugt i64 %.sroa.04.0.i3365, %1
  br i1 %i.bk, label %bb.d, label %bb.c, !prof !29

bb.c:                                             ; preds = %bb.b
  %i.bl = sub nuw i64 %1, %.sroa.04.0.i3365       ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.04.0.i3365 ; 2 uses
  %i.bn = load i64, ptr %i.d, align 8, !noalias !37551, !noundef !27
  %i.bo = call noundef zeroext i1 @_ZN6brotli3enc26compress_fragment_two_pass14ShouldCompress17hf84eb601db3fe074E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bm, i64 noundef %i.bl, i64 noundef %.sroa.0.0.i37, i64 noundef %i.bn)
  br i1 %i.bo, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %.sroa.04.0.i3365, i64 noundef %1, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1811) #43
  unreachable

bb.e:                                             ; preds = %bb.c
  call void @_ZN6brotli3enc26compress_fragment_two_pass23store_meta_block_header17he3ba7a5e15937e36E(i64 noundef %.sroa.0.0.i37, i1 noundef zeroext false, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  call void @_ZN6brotli3enc26compress_fragment_two_pass15BrotliWriteBits17he01f177c2434efb8E(i64 noundef 13, i64 noundef 0, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  %i.bp = load i64, ptr %i.d, align 8, !noalias !37551, !noundef !27
  %i.bq = load i64, ptr %i.c, align 8, !noalias !37551, !noundef !27
  call fastcc void @_ZN6brotli3enc26compress_fragment_two_pass13StoreCommands17hfcc52551749eafcfE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %6, i64 noundef %7, i64 noundef %i.bp, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %4, i64 noundef %5, i64 noundef %i.bq, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  call void @_ZN6brotli3enc26compress_fragment_two_pass25EmitUncompressedMetaBlock17hbad59a42c064bddbE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bm, i64 noundef %i.bl, i64 noundef %.sroa.0.0.i37, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.br = add i64 %.sroa.0.0.i37, %.sroa.04.0.i3365
  %i.bs = sub nuw i64 %.sroa.0.0.i3466, %.sroa.0.0.i37 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !37551
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !37551
  %.not.i35 = icmp eq i64 %i.bs, 0
  br i1 %.not.i35, label %_ZN6brotli3enc26compress_fragment_two_pass31compress_fragment_two_pass_impl17h9576e910d8219ba7E.exit36, label %bb.b

bb.h:                                             ; preds = %.lr.ph63, %bb.m
  %.sroa.0.0.i3062 = phi i64 [ %2, %.lr.ph63 ], [ %i.cb, %bb.m ] ; 3 uses
  %.sroa.04.0.i2961 = phi i64 [ 0, %.lr.ph63 ], [ %i.ca, %bb.m ] ; 6 uses
  %.sroa.0.0.i38 = call noundef i64 @llvm.umin.i64(i64 %.sroa.0.0.i3062, i64 131072) ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !37560
  store i64 0, ptr %i.h, align 8, !noalias !37560
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !37560
  store i64 0, ptr %i.g, align 8, !noalias !37560
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !37560
  store ptr %6, ptr %i.f, align 8, !noalias !37560
  store i64 %7, ptr %i.bg, align 8, !noalias !37560
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !37560
  store ptr %4, ptr %i.e, align 8, !noalias !37560
  store i64 %5, ptr %i.bh, align 8, !noalias !37560
  call void @_ZN6brotli3enc26compress_fragment_two_pass14CreateCommands17h2c75cdd6d6261205E(i64 noundef %.sroa.04.0.i2961, i64 noundef %.sroa.0.0.i38, i64 noundef %.sroa.0.0.i3062, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull align 4 %8, i64 noundef %9, i64 noundef 9, i64 noundef 4, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !37560
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !37560
  %i.bt = icmp ugt i64 %.sroa.04.0.i2961, %1
  br i1 %i.bt, label %bb.j, label %bb.i, !prof !29

bb.i:                                             ; preds = %bb.h
  %i.bu = sub nuw i64 %1, %.sroa.04.0.i2961       ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.04.0.i2961 ; 2 uses
  %i.bw = load i64, ptr %i.h, align 8, !noalias !37560, !noundef !27
  %i.bx = call noundef zeroext i1 @_ZN6brotli3enc26compress_fragment_two_pass14ShouldCompress17hf84eb601db3fe074E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bv, i64 noundef %i.bu, i64 noundef %.sroa.0.0.i38, i64 noundef %i.bw)
  br i1 %i.bx, label %bb.k, label %bb.l

bb.j:                                             ; preds = %bb.h
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %.sroa.04.0.i2961, i64 noundef %1, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1811) #43
  unreachable

bb.k:                                             ; preds = %bb.i
  call void @_ZN6brotli3enc26compress_fragment_two_pass23store_meta_block_header17he3ba7a5e15937e36E(i64 noundef %.sroa.0.0.i38, i1 noundef zeroext false, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  call void @_ZN6brotli3enc26compress_fragment_two_pass15BrotliWriteBits17he01f177c2434efb8E(i64 noundef 13, i64 noundef 0, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  %i.by = load i64, ptr %i.h, align 8, !noalias !37560, !noundef !27
  %i.bz = load i64, ptr %i.g, align 8, !noalias !37560, !noundef !27
  call fastcc void @_ZN6brotli3enc26compress_fragment_two_pass13StoreCommands17hfcc52551749eafcfE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %6, i64 noundef %7, i64 noundef %i.by, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %4, i64 noundef %5, i64 noundef %i.bz, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  call void @_ZN6brotli3enc26compress_fragment_two_pass25EmitUncompressedMetaBlock17hbad59a42c064bddbE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bv, i64 noundef %i.bu, i64 noundef %.sroa.0.0.i38, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ca = add i64 %.sroa.0.0.i38, %.sroa.04.0.i2961
  %i.cb = sub nuw i64 %.sroa.0.0.i3062, %.sroa.0.0.i38 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !37560
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !37560
  %.not.i31 = icmp eq i64 %i.cb, 0
  br i1 %.not.i31, label %_ZN6brotli3enc26compress_fragment_two_pass31compress_fragment_two_pass_impl17h9576e910d8219ba7E.exit36, label %bb.h

bb.n:                                             ; preds = %.lr.ph59, %bb.s
  %.sroa.0.0.i2658 = phi i64 [ %2, %.lr.ph59 ], [ %i.ck, %bb.s ] ; 3 uses
  %.sroa.04.0.i2557 = phi i64 [ 0, %.lr.ph59 ], [ %i.cj, %bb.s ] ; 6 uses
  %.sroa.0.0.i39 = call noundef i64 @llvm.umin.i64(i64 %.sroa.0.0.i2658, i64 131072) ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !37569
  store i64 0, ptr %i.l, align 8, !noalias !37569
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !37569
  store i64 0, ptr %i.k, align 8, !noalias !37569
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !37569
  store ptr %6, ptr %i.j, align 8, !noalias !37569
  store i64 %7, ptr %i.be, align 8, !noalias !37569
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !37569
  store ptr %4, ptr %i.i, align 8, !noalias !37569
  store i64 %5, ptr %i.bf, align 8, !noalias !37569
  call void @_ZN6brotli3enc26compress_fragment_two_pass14CreateCommands17h2c75cdd6d6261205E(i64 noundef %.sroa.04.0.i2557, i64 noundef %.sroa.0.0.i39, i64 noundef %.sroa.0.0.i2658, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull align 4 %8, i64 noundef %9, i64 noundef 10, i64 noundef 4, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.l, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !37569
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !37569
  %i.cc = icmp ugt i64 %.sroa.04.0.i2557, %1
  br i1 %i.cc, label %bb.p, label %bb.o, !prof !29

bb.o:                                             ; preds = %bb.n
  %i.cd = sub nuw i64 %1, %.sroa.04.0.i2557       ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.04.0.i2557 ; 2 uses
  %i.cf = load i64, ptr %i.l, align 8, !noalias !37569, !noundef !27
  %i.cg = call noundef zeroext i1 @_ZN6brotli3enc26compress_fragment_two_pass14ShouldCompress17hf84eb601db3fe074E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ce, i64 noundef %i.cd, i64 noundef %.sroa.0.0.i39, i64 noundef %i.cf)
  br i1 %i.cg, label %bb.q, label %bb.r

bb.p:                                             ; preds = %bb.n
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %.sroa.04.0.i2557, i64 noundef %1, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1811) #43
  unreachable

bb.q:                                             ; preds = %bb.o
  call void @_ZN6brotli3enc26compress_fragment_two_pass23store_meta_block_header17he3ba7a5e15937e36E(i64 noundef %.sroa.0.0.i39, i1 noundef zeroext false, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  call void @_ZN6brotli3enc26compress_fragment_two_pass15BrotliWriteBits17he01f177c2434efb8E(i64 noundef 13, i64 noundef 0, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  %i.ch = load i64, ptr %i.l, align 8, !noalias !37569, !noundef !27
  %i.ci = load i64, ptr %i.k, align 8, !noalias !37569, !noundef !27
  call fastcc void @_ZN6brotli3enc26compress_fragment_two_pass13StoreCommands17hfcc52551749eafcfE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %6, i64 noundef %7, i64 noundef %i.ch, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %4, i64 noundef %5, i64 noundef %i.ci, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  br label %bb.s

bb.r:                                             ; preds = %bb.o
  call void @_ZN6brotli3enc26compress_fragment_two_pass25EmitUncompressedMetaBlock17hbad59a42c064bddbE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ce, i64 noundef %i.cd, i64 noundef %.sroa.0.0.i39, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.cj = add i64 %.sroa.0.0.i39, %.sroa.04.0.i2557
  %i.ck = sub nuw i64 %.sroa.0.0.i2658, %.sroa.0.0.i39 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !37569
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !37569
  %.not.i27 = icmp eq i64 %i.ck, 0
  br i1 %.not.i27, label %_ZN6brotli3enc26compress_fragment_two_pass31compress_fragment_two_pass_impl17h9576e910d8219ba7E.exit36, label %bb.n

bb.t:                                             ; preds = %.lr.ph55, %bb.y
  %.sroa.0.0.i2254 = phi i64 [ %2, %.lr.ph55 ], [ %i.ct, %bb.y ] ; 3 uses
  %.sroa.04.0.i2153 = phi i64 [ 0, %.lr.ph55 ], [ %i.cs, %bb.y ] ; 6 uses
  %.sroa.0.0.i40 = call noundef i64 @llvm.umin.i64(i64 %.sroa.0.0.i2254, i64 131072) ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !37578
  store i64 0, ptr %i.p, align 8, !noalias !37578
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !37578
  store i64 0, ptr %i.o, align 8, !noalias !37578
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !37578
  store ptr %6, ptr %i.n, align 8, !noalias !37578
  store i64 %7, ptr %i.bc, align 8, !noalias !37578
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !37578
  store ptr %4, ptr %i.m, align 8, !noalias !37578
  store i64 %5, ptr %i.bd, align 8, !noalias !37578
  call void @_ZN6brotli3enc26compress_fragment_two_pass14CreateCommands17h2c75cdd6d6261205E(i64 noundef %.sroa.04.0.i2153, i64 noundef %.sroa.0.0.i40, i64 noundef %.sroa.0.0.i2254, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull align 4 %8, i64 noundef %9, i64 noundef 11, i64 noundef 4, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.n, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.p, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.m, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !37578
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !37578
  %i.cl = icmp ugt i64 %.sroa.04.0.i2153, %1
  br i1 %i.cl, label %bb.v, label %bb.u, !prof !29

bb.u:                                             ; preds = %bb.t
  %i.cm = sub nuw i64 %1, %.sroa.04.0.i2153       ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.04.0.i2153 ; 2 uses
  %i.co = load i64, ptr %i.p, align 8, !noalias !37578, !noundef !27
  %i.cp = call noundef zeroext i1 @_ZN6brotli3enc26compress_fragment_two_pass14ShouldCompress17hf84eb601db3fe074E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.cn, i64 noundef %i.cm, i64 noundef %.sroa.0.0.i40, i64 noundef %i.co)
  br i1 %i.cp, label %bb.w, label %bb.x

bb.v:                                             ; preds = %bb.t
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %.sroa.04.0.i2153, i64 noundef %1, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1811) #43
  unreachable

bb.w:                                             ; preds = %bb.u
  call void @_ZN6brotli3enc26compress_fragment_two_pass23store_meta_block_header17he3ba7a5e15937e36E(i64 noundef %.sroa.0.0.i40, i1 noundef zeroext false, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  call void @_ZN6brotli3enc26compress_fragment_two_pass15BrotliWriteBits17he01f177c2434efb8E(i64 noundef 13, i64 noundef 0, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  %i.cq = load i64, ptr %i.p, align 8, !noalias !37578, !noundef !27
  %i.cr = load i64, ptr %i.o, align 8, !noalias !37578, !noundef !27
  call fastcc void @_ZN6brotli3enc26compress_fragment_two_pass13StoreCommands17hfcc52551749eafcfE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %6, i64 noundef %7, i64 noundef %i.cq, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %4, i64 noundef %5, i64 noundef %i.cr, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  br label %bb.y

bb.x:                                             ; preds = %bb.u
  call void @_ZN6brotli3enc26compress_fragment_two_pass25EmitUncompressedMetaBlock17hbad59a42c064bddbE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.cn, i64 noundef %i.cm, i64 noundef %.sroa.0.0.i40, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.cs = add i64 %.sroa.0.0.i40, %.sroa.04.0.i2153
  %i.ct = sub nuw i64 %.sroa.0.0.i2254, %.sroa.0.0.i40 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !37578
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !37578
  %.not.i23 = icmp eq i64 %i.ct, 0
  br i1 %.not.i23, label %_ZN6brotli3enc26compress_fragment_two_pass31compress_fragment_two_pass_impl17h9576e910d8219ba7E.exit36, label %bb.t

bb.z:                                             ; preds = %.lr.ph51, %bb.ae
  %.sroa.0.0.i1850 = phi i64 [ %2, %.lr.ph51 ], [ %i.dc, %bb.ae ] ; 3 uses
  %.sroa.04.0.i1749 = phi i64 [ 0, %.lr.ph51 ], [ %i.db, %bb.ae ] ; 6 uses
  %.sroa.0.0.i41 = call noundef i64 @llvm.umin.i64(i64 %.sroa.0.0.i1850, i64 131072) ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !37587
  store i64 0, ptr %i.t, align 8, !noalias !37587
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !37587
  store i64 0, ptr %i.s, align 8, !noalias !37587
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !37587
  store ptr %6, ptr %i.r, align 8, !noalias !37587
  store i64 %7, ptr %i.ba, align 8, !noalias !37587
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !37587
  store ptr %4, ptr %i.q, align 8, !noalias !37587
  store i64 %5, ptr %i.bb, align 8, !noalias !37587
  call void @_ZN6brotli3enc26compress_fragment_two_pass14CreateCommands17h2c75cdd6d6261205E(i64 noundef %.sroa.04.0.i1749, i64 noundef %.sroa.0.0.i41, i64 noundef %.sroa.0.0.i1850, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull align 4 %8, i64 noundef %9, i64 noundef 12, i64 noundef 4, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.r, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.t, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.q, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !37587
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !37587
  %i.cu = icmp ugt i64 %.sroa.04.0.i1749, %1
  br i1 %i.cu, label %bb.ab, label %bb.aa, !prof !29

bb.aa:                                            ; preds = %bb.z
  %i.cv = sub nuw i64 %1, %.sroa.04.0.i1749       ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.04.0.i1749 ; 2 uses
  %i.cx = load i64, ptr %i.t, align 8, !noalias !37587, !noundef !27
  %i.cy = call noundef zeroext i1 @_ZN6brotli3enc26compress_fragment_two_pass14ShouldCompress17hf84eb601db3fe074E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.cw, i64 noundef %i.cv, i64 noundef %.sroa.0.0.i41, i64 noundef %i.cx)
  br i1 %i.cy, label %bb.ac, label %bb.ad

bb.ab:                                            ; preds = %bb.z
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %.sroa.04.0.i1749, i64 noundef %1, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1811) #43
  unreachable

bb.ac:                                            ; preds = %bb.aa
  call void @_ZN6brotli3enc26compress_fragment_two_pass23store_meta_block_header17he3ba7a5e15937e36E(i64 noundef %.sroa.0.0.i41, i1 noundef zeroext false, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  call void @_ZN6brotli3enc26compress_fragment_two_pass15BrotliWriteBits17he01f177c2434efb8E(i64 noundef 13, i64 noundef 0, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  %i.cz = load i64, ptr %i.t, align 8, !noalias !37587, !noundef !27
  %i.da = load i64, ptr %i.s, align 8, !noalias !37587, !noundef !27
  call fastcc void @_ZN6brotli3enc26compress_fragment_two_pass13StoreCommands17hfcc52551749eafcfE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %6, i64 noundef %7, i64 noundef %i.cz, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %4, i64 noundef %5, i64 noundef %i.da, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  br label %bb.ae

bb.ad:                                            ; preds = %bb.aa
  call void @_ZN6brotli3enc26compress_fragment_two_pass25EmitUncompressedMetaBlock17hbad59a42c064bddbE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.cw, i64 noundef %i.cv, i64 noundef %.sroa.0.0.i41, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.db = add i64 %.sroa.0.0.i41, %.sroa.04.0.i1749
  %i.dc = sub nuw i64 %.sroa.0.0.i1850, %.sroa.0.0.i41 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !37587
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !37587
  %.not.i19 = icmp eq i64 %i.dc, 0
  br i1 %.not.i19, label %_ZN6brotli3enc26compress_fragment_two_pass31compress_fragment_two_pass_impl17h9576e910d8219ba7E.exit36, label %bb.z

bb.af:                                            ; preds = %.lr.ph47, %bb.ak
  %.sroa.0.0.i1446 = phi i64 [ %2, %.lr.ph47 ], [ %i.dl, %bb.ak ] ; 3 uses
  %.sroa.04.0.i1345 = phi i64 [ 0, %.lr.ph47 ], [ %i.dk, %bb.ak ] ; 6 uses
  %.sroa.0.0.i42 = call noundef i64 @llvm.umin.i64(i64 %.sroa.0.0.i1446, i64 131072) ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !37596
  store i64 0, ptr %i.x, align 8, !noalias !37596
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !37596
  store i64 0, ptr %i.w, align 8, !noalias !37596
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !37596
  store ptr %6, ptr %i.v, align 8, !noalias !37596
  store i64 %7, ptr %i.ay, align 8, !noalias !37596
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !37596
  store ptr %4, ptr %i.u, align 8, !noalias !37596
  store i64 %5, ptr %i.az, align 8, !noalias !37596
  call void @_ZN6brotli3enc26compress_fragment_two_pass14CreateCommands17h2c75cdd6d6261205E(i64 noundef %.sroa.04.0.i1345, i64 noundef %.sroa.0.0.i42, i64 noundef %.sroa.0.0.i1446, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull align 4 %8, i64 noundef %9, i64 noundef 13, i64 noundef 4, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.v, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.x, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !37596
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !37596
  %i.dd = icmp ugt i64 %.sroa.04.0.i1345, %1
  br i1 %i.dd, label %bb.ah, label %bb.ag, !prof !29

bb.ag:                                            ; preds = %bb.af
  %i.de = sub nuw i64 %1, %.sroa.04.0.i1345       ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.04.0.i1345 ; 2 uses
  %i.dg = load i64, ptr %i.x, align 8, !noalias !37596, !noundef !27
  %i.dh = call noundef zeroext i1 @_ZN6brotli3enc26compress_fragment_two_pass14ShouldCompress17hf84eb601db3fe074E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.df, i64 noundef %i.de, i64 noundef %.sroa.0.0.i42, i64 noundef %i.dg)
  br i1 %i.dh, label %bb.ai, label %bb.aj

bb.ah:                                            ; preds = %bb.af
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %.sroa.04.0.i1345, i64 noundef %1, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1811) #43
  unreachable

bb.ai:                                            ; preds = %bb.ag
  call void @_ZN6brotli3enc26compress_fragment_two_pass23store_meta_block_header17he3ba7a5e15937e36E(i64 noundef %.sroa.0.0.i42, i1 noundef zeroext false, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  call void @_ZN6brotli3enc26compress_fragment_two_pass15BrotliWriteBits17he01f177c2434efb8E(i64 noundef 13, i64 noundef 0, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  %i.di = load i64, ptr %i.x, align 8, !noalias !37596, !noundef !27
  %i.dj = load i64, ptr %i.w, align 8, !noalias !37596, !noundef !27
  call fastcc void @_ZN6brotli3enc26compress_fragment_two_pass13StoreCommands17hfcc52551749eafcfE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %6, i64 noundef %7, i64 noundef %i.di, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %4, i64 noundef %5, i64 noundef %i.dj, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ag
  call void @_ZN6brotli3enc26compress_fragment_two_pass25EmitUncompressedMetaBlock17hbad59a42c064bddbE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.df, i64 noundef %i.de, i64 noundef %.sroa.0.0.i42, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.dk = add i64 %.sroa.0.0.i42, %.sroa.04.0.i1345
  %i.dl = sub nuw i64 %.sroa.0.0.i1446, %.sroa.0.0.i42 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !37596
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !37596
  %.not.i15 = icmp eq i64 %i.dl, 0
  br i1 %.not.i15, label %_ZN6brotli3enc26compress_fragment_two_pass31compress_fragment_two_pass_impl17h9576e910d8219ba7E.exit36, label %bb.af

bb.al:                                            ; preds = %.lr.ph43, %bb.aq
  %.sroa.0.0.i1042 = phi i64 [ %2, %.lr.ph43 ], [ %i.du, %bb.aq ] ; 3 uses
  %.sroa.04.0.i941 = phi i64 [ 0, %.lr.ph43 ], [ %i.dt, %bb.aq ] ; 6 uses
  %.sroa.0.0.i43 = call noundef i64 @llvm.umin.i64(i64 %.sroa.0.0.i1042, i64 131072) ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !37605
  store i64 0, ptr %i.ab, align 8, !noalias !37605
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !37605
  store i64 0, ptr %i.aa, align 8, !noalias !37605
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !37605
  store ptr %6, ptr %i.z, align 8, !noalias !37605
  store i64 %7, ptr %i.aw, align 8, !noalias !37605
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !37605
  store ptr %4, ptr %i.y, align 8, !noalias !37605
  store i64 %5, ptr %i.ax, align 8, !noalias !37605
  call void @_ZN6brotli3enc26compress_fragment_two_pass14CreateCommands17h2c75cdd6d6261205E(i64 noundef %.sroa.04.0.i941, i64 noundef %.sroa.0.0.i43, i64 noundef %.sroa.0.0.i1042, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull align 4 %8, i64 noundef %9, i64 noundef 14, i64 noundef 4, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.z, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.y, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !37605
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !37605
  %i.dm = icmp ugt i64 %.sroa.04.0.i941, %1
  br i1 %i.dm, label %bb.an, label %bb.am, !prof !29

bb.am:                                            ; preds = %bb.al
  %i.dn = sub nuw i64 %1, %.sroa.04.0.i941        ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.04.0.i941 ; 2 uses
  %i.dp = load i64, ptr %i.ab, align 8, !noalias !37605, !noundef !27
  %i.dq = call noundef zeroext i1 @_ZN6brotli3enc26compress_fragment_two_pass14ShouldCompress17hf84eb601db3fe074E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.do, i64 noundef %i.dn, i64 noundef %.sroa.0.0.i43, i64 noundef %i.dp)
  br i1 %i.dq, label %bb.ao, label %bb.ap

bb.an:                                            ; preds = %bb.al
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %.sroa.04.0.i941, i64 noundef %1, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1811) #43
  unreachable

bb.ao:                                            ; preds = %bb.am
  call void @_ZN6brotli3enc26compress_fragment_two_pass23store_meta_block_header17he3ba7a5e15937e36E(i64 noundef %.sroa.0.0.i43, i1 noundef zeroext false, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  call void @_ZN6brotli3enc26compress_fragment_two_pass15BrotliWriteBits17he01f177c2434efb8E(i64 noundef 13, i64 noundef 0, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  %i.dr = load i64, ptr %i.ab, align 8, !noalias !37605, !noundef !27
  %i.ds = load i64, ptr %i.aa, align 8, !noalias !37605, !noundef !27
  call fastcc void @_ZN6brotli3enc26compress_fragment_two_pass13StoreCommands17hfcc52551749eafcfE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %6, i64 noundef %7, i64 noundef %i.dr, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %4, i64 noundef %5, i64 noundef %i.ds, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  br label %bb.aq

bb.ap:                                            ; preds = %bb.am
  call void @_ZN6brotli3enc26compress_fragment_two_pass25EmitUncompressedMetaBlock17hbad59a42c064bddbE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.do, i64 noundef %i.dn, i64 noundef %.sroa.0.0.i43, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.dt = add i64 %.sroa.0.0.i43, %.sroa.04.0.i941
  %i.du = sub nuw i64 %.sroa.0.0.i1042, %.sroa.0.0.i43 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !37605
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !37605
  %.not.i11 = icmp eq i64 %i.du, 0
  br i1 %.not.i11, label %_ZN6brotli3enc26compress_fragment_two_pass31compress_fragment_two_pass_impl17h9576e910d8219ba7E.exit36, label %bb.al

bb.ar:                                            ; preds = %.lr.ph39, %bb.aw
  %.sroa.0.0.i638 = phi i64 [ %2, %.lr.ph39 ], [ %i.ed, %bb.aw ] ; 3 uses
  %.sroa.04.0.i537 = phi i64 [ 0, %.lr.ph39 ], [ %i.ec, %bb.aw ] ; 6 uses
  %.sroa.0.0.i44 = call noundef i64 @llvm.umin.i64(i64 %.sroa.0.0.i638, i64 131072) ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !37614
  store i64 0, ptr %i.af, align 8, !noalias !37614
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !37614
  store i64 0, ptr %i.ae, align 8, !noalias !37614
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !37614
  store ptr %6, ptr %i.ad, align 8, !noalias !37614
  store i64 %7, ptr %i.au, align 8, !noalias !37614
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !37614
  store ptr %4, ptr %i.ac, align 8, !noalias !37614
  store i64 %5, ptr %i.av, align 8, !noalias !37614
  call void @_ZN6brotli3enc26compress_fragment_two_pass14CreateCommands17h2c75cdd6d6261205E(i64 noundef %.sroa.04.0.i537, i64 noundef %.sroa.0.0.i44, i64 noundef %.sroa.0.0.i638, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull align 4 %8, i64 noundef %9, i64 noundef 15, i64 noundef 6, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.af, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !37614
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !37614
  %i.dv = icmp ugt i64 %.sroa.04.0.i537, %1
  br i1 %i.dv, label %bb.at, label %bb.as, !prof !29

bb.as:                                            ; preds = %bb.ar
  %i.dw = sub nuw i64 %1, %.sroa.04.0.i537        ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.04.0.i537 ; 2 uses
  %i.dy = load i64, ptr %i.af, align 8, !noalias !37614, !noundef !27
  %i.dz = call noundef zeroext i1 @_ZN6brotli3enc26compress_fragment_two_pass14ShouldCompress17hf84eb601db3fe074E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.dx, i64 noundef %i.dw, i64 noundef %.sroa.0.0.i44, i64 noundef %i.dy)
  br i1 %i.dz, label %bb.au, label %bb.av

bb.at:                                            ; preds = %bb.ar
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %.sroa.04.0.i537, i64 noundef %1, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1811) #43
  unreachable

bb.au:                                            ; preds = %bb.as
  call void @_ZN6brotli3enc26compress_fragment_two_pass23store_meta_block_header17he3ba7a5e15937e36E(i64 noundef %.sroa.0.0.i44, i1 noundef zeroext false, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  call void @_ZN6brotli3enc26compress_fragment_two_pass15BrotliWriteBits17he01f177c2434efb8E(i64 noundef 13, i64 noundef 0, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  %i.ea = load i64, ptr %i.af, align 8, !noalias !37614, !noundef !27
  %i.eb = load i64, ptr %i.ae, align 8, !noalias !37614, !noundef !27
  call fastcc void @_ZN6brotli3enc26compress_fragment_two_pass13StoreCommands17hfcc52551749eafcfE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %6, i64 noundef %7, i64 noundef %i.ea, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %4, i64 noundef %5, i64 noundef %i.eb, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  br label %bb.aw

bb.av:                                            ; preds = %bb.as
  call void @_ZN6brotli3enc26compress_fragment_two_pass25EmitUncompressedMetaBlock17hbad59a42c064bddbE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.dx, i64 noundef %i.dw, i64 noundef %.sroa.0.0.i44, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.ec = add i64 %.sroa.0.0.i44, %.sroa.04.0.i537
  %i.ed = sub nuw i64 %.sroa.0.0.i638, %.sroa.0.0.i44 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !37614
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !37614
  %.not.i7 = icmp eq i64 %i.ed, 0
  br i1 %.not.i7, label %_ZN6brotli3enc26compress_fragment_two_pass31compress_fragment_two_pass_impl17h9576e910d8219ba7E.exit36, label %bb.ar

bb.ax:                                            ; preds = %.lr.ph35, %bb.bc
  %.sroa.0.0.i234 = phi i64 [ %2, %.lr.ph35 ], [ %i.em, %bb.bc ] ; 3 uses
  %.sroa.04.0.i133 = phi i64 [ 0, %.lr.ph35 ], [ %i.el, %bb.bc ] ; 6 uses
  %.sroa.0.0.i45 = call noundef i64 @llvm.umin.i64(i64 %.sroa.0.0.i234, i64 131072) ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !37623
  store i64 0, ptr %i.aj, align 8, !noalias !37623
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !37623
  store i64 0, ptr %i.ai, align 8, !noalias !37623
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !37623
  store ptr %6, ptr %i.ah, align 8, !noalias !37623
  store i64 %7, ptr %i.as, align 8, !noalias !37623
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !37623
  store ptr %4, ptr %i.ag, align 8, !noalias !37623
  store i64 %5, ptr %i.at, align 8, !noalias !37623
  call void @_ZN6brotli3enc26compress_fragment_two_pass14CreateCommands17h2c75cdd6d6261205E(i64 noundef %.sroa.04.0.i133, i64 noundef %.sroa.0.0.i45, i64 noundef %.sroa.0.0.i234, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull align 4 %8, i64 noundef %9, i64 noundef 16, i64 noundef 6, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !37623
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !37623
  %i.ee = icmp ugt i64 %.sroa.04.0.i133, %1
  br i1 %i.ee, label %bb.az, label %bb.ay, !prof !29

bb.ay:                                            ; preds = %bb.ax
  %i.ef = sub nuw i64 %1, %.sroa.04.0.i133        ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.04.0.i133 ; 2 uses
  %i.eh = load i64, ptr %i.aj, align 8, !noalias !37623, !noundef !27
  %i.ei = call noundef zeroext i1 @_ZN6brotli3enc26compress_fragment_two_pass14ShouldCompress17hf84eb601db3fe074E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.eg, i64 noundef %i.ef, i64 noundef %.sroa.0.0.i45, i64 noundef %i.eh)
  br i1 %i.ei, label %bb.ba, label %bb.bb

bb.az:                                            ; preds = %bb.ax
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %.sroa.04.0.i133, i64 noundef %1, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1811) #43
  unreachable

bb.ba:                                            ; preds = %bb.ay
  call void @_ZN6brotli3enc26compress_fragment_two_pass23store_meta_block_header17he3ba7a5e15937e36E(i64 noundef %.sroa.0.0.i45, i1 noundef zeroext false, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  call void @_ZN6brotli3enc26compress_fragment_two_pass15BrotliWriteBits17he01f177c2434efb8E(i64 noundef 13, i64 noundef 0, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  %i.ej = load i64, ptr %i.aj, align 8, !noalias !37623, !noundef !27
  %i.ek = load i64, ptr %i.ai, align 8, !noalias !37623, !noundef !27
  call fastcc void @_ZN6brotli3enc26compress_fragment_two_pass13StoreCommands17hfcc52551749eafcfE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %6, i64 noundef %7, i64 noundef %i.ej, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %4, i64 noundef %5, i64 noundef %i.ek, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  br label %bb.bc

bb.bb:                                            ; preds = %bb.ay
  call void @_ZN6brotli3enc26compress_fragment_two_pass25EmitUncompressedMetaBlock17hbad59a42c064bddbE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.eg, i64 noundef %i.ef, i64 noundef %.sroa.0.0.i45, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.el = add i64 %.sroa.0.0.i45, %.sroa.04.0.i133
  %i.em = sub nuw i64 %.sroa.0.0.i234, %.sroa.0.0.i45 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !37623
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !37623
  %.not.i3 = icmp eq i64 %i.em, 0
  br i1 %.not.i3, label %_ZN6brotli3enc26compress_fragment_two_pass31compress_fragment_two_pass_impl17h9576e910d8219ba7E.exit36, label %bb.ax

bb.bd:                                            ; preds = %.lr.ph, %bb.bi
  %.sroa.0.0.i31 = phi i64 [ %2, %.lr.ph ], [ %i.ev, %bb.bi ] ; 3 uses
  %.sroa.04.0.i30 = phi i64 [ 0, %.lr.ph ], [ %i.eu, %bb.bi ] ; 6 uses
  %.sroa.0.0.i46 = call noundef i64 @llvm.umin.i64(i64 %.sroa.0.0.i31, i64 131072) ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !37632
  store i64 0, ptr %i.an, align 8, !noalias !37632
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !37632
  store i64 0, ptr %i.am, align 8, !noalias !37632
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !37632
  store ptr %6, ptr %i.al, align 8, !noalias !37632
  store i64 %7, ptr %i.aq, align 8, !noalias !37632
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !37632
  store ptr %4, ptr %i.ak, align 8, !noalias !37632
  store i64 %5, ptr %i.ar, align 8, !noalias !37632
  call void @_ZN6brotli3enc26compress_fragment_two_pass14CreateCommands17h2c75cdd6d6261205E(i64 noundef %.sroa.04.0.i30, i64 noundef %.sroa.0.0.i46, i64 noundef %.sroa.0.0.i31, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull align 4 %8, i64 noundef %9, i64 noundef 17, i64 noundef 6, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.al, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.an, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !37632
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !37632
  %i.en = icmp ugt i64 %.sroa.04.0.i30, %1
  br i1 %i.en, label %bb.bf, label %bb.be, !prof !29

bb.be:                                            ; preds = %bb.bd
  %i.eo = sub nuw i64 %1, %.sroa.04.0.i30         ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.04.0.i30 ; 2 uses
  %i.eq = load i64, ptr %i.an, align 8, !noalias !37632, !noundef !27
  %i.er = call noundef zeroext i1 @_ZN6brotli3enc26compress_fragment_two_pass14ShouldCompress17hf84eb601db3fe074E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ep, i64 noundef %i.eo, i64 noundef %.sroa.0.0.i46, i64 noundef %i.eq)
  br i1 %i.er, label %bb.bg, label %bb.bh

bb.bf:                                            ; preds = %bb.bd
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %.sroa.04.0.i30, i64 noundef %1, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1811) #43
  unreachable

bb.bg:                                            ; preds = %bb.be
  call void @_ZN6brotli3enc26compress_fragment_two_pass23store_meta_block_header17he3ba7a5e15937e36E(i64 noundef %.sroa.0.0.i46, i1 noundef zeroext false, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  call void @_ZN6brotli3enc26compress_fragment_two_pass15BrotliWriteBits17he01f177c2434efb8E(i64 noundef 13, i64 noundef 0, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  %i.es = load i64, ptr %i.an, align 8, !noalias !37632, !noundef !27
  %i.et = load i64, ptr %i.am, align 8, !noalias !37632, !noundef !27
  call fastcc void @_ZN6brotli3enc26compress_fragment_two_pass13StoreCommands17hfcc52551749eafcfE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %6, i64 noundef %7, i64 noundef %i.es, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %4, i64 noundef %5, i64 noundef %i.et, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  br label %bb.bi

bb.bh:                                            ; preds = %bb.be
  call void @_ZN6brotli3enc26compress_fragment_two_pass25EmitUncompressedMetaBlock17hbad59a42c064bddbE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ep, i64 noundef %i.eo, i64 noundef %.sroa.0.0.i46, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.eu = add i64 %.sroa.0.0.i46, %.sroa.04.0.i30
  %i.ev = sub nuw i64 %.sroa.0.0.i31, %.sroa.0.0.i46 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !37632
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !37632
  %.not.i = icmp eq i64 %i.ev, 0
  br i1 %.not.i, label %_ZN6brotli3enc26compress_fragment_two_pass31compress_fragment_two_pass_impl17h9576e910d8219ba7E.exit36, label %bb.bd

_ZN6brotli3enc26compress_fragment_two_pass31compress_fragment_two_pass_impl17h9576e910d8219ba7E.exit36: ; preds = %bb.bi, %bb.bc, %bb.aw, %bb.aq, %bb.ak, %bb.ae, %bb.y, %bb.s, %bb.m, %bb.g, %.preheader17, %.preheader15, %.preheader13, %.preheader11, %.preheader9, %.preheader7, %.preheader5, %.preheader3, %.preheader1, %.preheader, %bb.a
  %i.ew = load i64, ptr %11, align 8, !noundef !27
  %i.ex = sub i64 %i.ew, %i.ao
  %i.ey = shl i64 %2, 3
  %i.ez = add i64 %i.ey, 31
  %i.fa = icmp ugt i64 %i.ex, %i.ez
  br i1 %i.fa, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %_ZN6brotli3enc26compress_fragment_two_pass31compress_fragment_two_pass_impl17h9576e910d8219ba7E.exit36
  call void @_ZN6brotli3enc26compress_fragment_two_pass17RewindBitPosition17hee65fa66ffec5be7E(i64 noundef %i.ao, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  call void @_ZN6brotli3enc26compress_fragment_two_pass25EmitUncompressedMetaBlock17hbad59a42c064bddbE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1, i64 noundef %2, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  br label %bb.bk

bb.bk:                                            ; preds = %_ZN6brotli3enc26compress_fragment_two_pass31compress_fragment_two_pass_impl17h9576e910d8219ba7E.exit36, %bb.bj
  br i1 %3, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bm, %bb.bk
  ret void

bb.bm:                                            ; preds = %bb.bk
  call void @_ZN6brotli3enc26compress_fragment_two_pass15BrotliWriteBits17he01f177c2434efb8E(i64 noundef 1, i64 noundef 1, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  call void @_ZN6brotli3enc26compress_fragment_two_pass15BrotliWriteBits17he01f177c2434efb8E(i64 noundef 1, i64 noundef 1, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  %i.fb = load i64, ptr %11, align 8, !noundef !27
  %i.fc = add i64 %i.fb, 7
  %i.fd = and i64 %i.fc, 4294967288
  store i64 %i.fd, ptr %11, align 8
  br label %bb.bl
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN6brotli3enc6encode12InitializeH617h799524e5a168f989E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(120) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(112) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load i32, ptr %i.a, align 8, !noundef !27 ; 3 uses
  %i.c = and i32 %i.b, 63
  %i.d = zext nneg i32 %i.c to i64                ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.f = load i32, ptr %i.e, align 4, !noundef !27 ; 4 uses
  %i.g = and i32 %i.f, 63                         ; 3 uses
  %i.h = zext nneg i32 %i.g to i64                ; 2 uses
  %i.i = shl nuw i64 1, %i.h                      ; 2 uses
  %i.j = shl i64 %i.i, %i.d                       ; 5 uses
  %i.k = shl i64 %i.j, 2                          ; 4 uses
  %i.l = icmp ugt i64 %i.j, 4611686018427387903
  %i.m = icmp ugt i64 %i.k, 9223372036854775804
  %or.cond.i.i.i.i = or i1 %i.l, %i.m
  br i1 %or.cond.i.i.i.i, label %bb.d, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !3784

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.a
  %i.n = icmp eq i64 %i.k, 0
  br i1 %i.n, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h76134b5592bd6506E.exit", label %bb.b

bb.b:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !37641
  %i.o = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.k, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !37641 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = ptrtoint ptr %i.o to i64
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h76134b5592bd6506E.exit"

bb.d:                                             ; preds = %bb.b, %bb.a
  %.sroa.4.0.ph.i.i = phi i64 [ 4, %bb.b ], [ 0, %bb.a ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43, !noalias !37646
  unreachable

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h76134b5592bd6506E.exit": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, %bb.c
  %.sroa.10.0.i.i = phi i64 [ %i.q, %bb.c ], [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ]
  %i.r = inttoptr i64 %.sroa.10.0.i.i to ptr      ; 3 uses
  %i.s = icmp samesign ult i64 %i.j, 2305843009213693952
  tail call void @llvm.assume(i1 %i.s)
  %i.t = shl i64 2, %i.h                          ; 3 uses
  %i.u = icmp eq i32 %i.g, 63
  %i.v = icmp ugt i64 %i.t, 9223372036854775806
  %or.cond.i.i.i.i23 = or i1 %i.u, %i.v
  br i1 %or.cond.i.i.i.i23, label %bb.e, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i24, !prof !3784

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i24: ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h76134b5592bd6506E.exit"
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !37647
  %i.w = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.t, i64 noundef range(i64 1, -9223372036854775807) 2) #38, !noalias !37647 ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.e, label %bb.g

bb.e:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i24, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h76134b5592bd6506E.exit"
  %.sroa.4.0.ph.i.i26 = phi i64 [ 2, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i24 ], [ 0, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h76134b5592bd6506E.exit" ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i26, i64 %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = icmp eq i64 %i.j, 0
  br i1 %i.z, label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i": ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r) ]
  tail call void @mi_free(ptr noundef nonnull %i.r) #38
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit"

bb.g:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i24
  %i.aa = icmp samesign ult i32 %i.g, 62
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.ac = load i32, ptr %i.ab, align 4, !noundef !27 ; 2 uses
  %i.ad = icmp eq i32 %i.ac, 0
  %. = select i1 %i.ad, i32 540, i32 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.06.0.copyload = load i32, ptr %i.ae, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 60
  %.sroa.410.0.copyload = load i32, ptr %.sroa.410.0..sroa_idx, align 4 ; 2 uses
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.512.0.copyload = load i64, ptr %.sroa.512.0..sroa_idx, align 8
  %i.af = and i32 %i.f, 31
  %i.ag = shl nuw i32 1, %i.af
  %notmask = shl nsw i64 -1, %i.d
  %i.ah = trunc i64 %notmask to i32
  %i.ai = xor i32 %i.ah, -1
  %.neg = mul i32 %.sroa.410.0.copyload, 56
  %i.aj = and i32 %.neg, 56
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = lshr i64 -1, %i.ak
  %i.am = sub i32 64, %i.f
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.an, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.r, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.j, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.sroa.06.0.copyload, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.7.sroa.0.sroa.4.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.f, ptr %.sroa.7.sroa.0.sroa.4.0..sroa.7.0..sroa_idx.sroa_idx, align 4
  %.sroa.7.sroa.0.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.b, ptr %.sroa.7.sroa.0.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.7.sroa.0.sroa.6.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %.sroa.410.0.copyload, ptr %.sroa.7.sroa.0.sroa.6.0..sroa.7.0..sroa_idx.sroa_idx, align 4
  %.sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.512.0.copyload, ptr %.sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.7.sroa.4.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.4.0..sroa.7.0..sroa_idx.sroa_idx, i8 0, i64 16, i1 false)
  store i32 1, ptr %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %i.al, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.8.sroa.4.0..sroa.8.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 %i.am, ptr %.sroa.8.sroa.4.0..sroa.8.0..sroa_idx.sroa_idx, align 8
  %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 %i.ag, ptr %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx.sroa_idx, align 4
  %.sroa.8.sroa.6.0..sroa.8.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 %i.ai, ptr %.sroa.8.sroa.6.0..sroa.8.0..sroa_idx.sroa_idx, align 8
  %.sroa.8.sroa.7.0..sroa.8.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 %i.b, ptr %.sroa.8.sroa.7.0..sroa.8.0..sroa_idx.sroa_idx, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 %., ptr %.sroa.9.0..sroa_idx, align 8
  store i64 8, ptr %0, align 8
  ret void

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i", %bb.f
  resume { ptr, i32 } %i.y
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, i64 } @_ZN6brotli3enc6encode20GetHashTableInternal17hd59a7ac31547727cE(ptr noalias noundef nonnull align 4 dereferenceable(4096) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1, i32 noundef %2, i64 noundef %3, ptr noalias nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %4) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i32 %2, 0                        ; 2 uses
  %. = select i1 %i.a, i64 32768, i64 131072
  %invariant.umin = tail call i64 @llvm.umin.i64(i64 %., i64 %3)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.sroa.014.0 = phi i64 [ 256, %bb.a ], [ %i.b, %bb.b ] ; 4 uses
  %or.cond = icmp ult i64 %.sroa.014.0, %invariant.umin
  %i.b = shl nuw nsw i64 %.sroa.014.0, 1
  br i1 %or.cond, label %bb.b, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = and i64 %.sroa.014.0, 698880
  %i.d = icmp eq i64 %i.c, 0
  %or.cond22 = and i1 %i.a, %i.d
  %i.e = zext i1 %or.cond22 to i64
  %.sroa.0.0 = shl i64 %.sroa.014.0, %i.e         ; 11 uses
  %i.f = icmp ult i64 %.sroa.0.0, 1025
  br i1 %i.f, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val = load ptr, ptr %1, align 8, !nonnull !27, !align !603, !noundef !27 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.val23 = load i64, ptr %i.g, align 8, !noundef !27 ; 3 uses
  %i.h = icmp ugt i64 %.sroa.0.0, %.val23
end_hunk_9
begin_hunk_10_@"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$15compress_stream17h3a1fcabc17cc65d3E":bb.a
  %i.bv = inttoptr i64 %.sroa.10.0.i.i115.i to ptr
  br label %bb.q

bb.p:                                             ; preds = %bb.k
  %.val85.i = load ptr, ptr %i.ax, align 8, !alias.scope !38446, !noalias !38459, !nonnull !27, !align !603, !noundef !27
  store ptr inttoptr (i64 4 to ptr), ptr %i.ax, align 8, !alias.scope !38446, !noalias !38459
  store i64 0, ptr %i.ay, align 8, !alias.scope !38446, !noalias !38459
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !alias.scope !38446, !noalias !38459, !nonnull !27, !align !206, !noundef !27
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !alias.scope !38446, !noalias !38459, !noundef !27
  store ptr inttoptr (i64 1 to ptr), ptr %i.bw, align 8, !alias.scope !38446, !noalias !38459
  store i64 0, ptr %i.by, align 8, !alias.scope !38446, !noalias !38459
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.thread95.i, %bb.f
  %.sroa.17.1.i = phi i64 [ %.sroa.0.0.i105.i, %.thread95.i ], [ %i.bz, %bb.p ], [ 0, %bb.f ] ; 8 uses
  %.sroa.010.1.i = phi ptr [ %i.bv, %.thread95.i ], [ %i.bx, %bb.p ], [ inttoptr (i64 1 to ptr), %bb.f ] ; 13 uses
  %.sroa.18.1.i = phi i64 [ %.sroa.0.0.i105.i, %.thread95.i ], [ %i.bl, %bb.p ], [ 0, %bb.f ] ; 9 uses
  %.sroa.0.1.i = phi ptr [ %i.bu, %.thread95.i ], [ %.val85.i, %bb.p ], [ inttoptr (i64 4 to ptr), %bb.f ] ; 12 uses
  %.promoted52.i = load i64, ptr %2, align 8, !alias.scope !38451, !noalias !38483
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 5512 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 5574 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 5568 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 4608
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 4736
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 5504
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 4992
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 5520 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 124
  br label %.backedge.i.outer

.backedge.i.outer:                                ; preds = %bb.v, %bb.q
  %.ph = phi i64 [ %i.eb, %bb.v ], [ %.promoted52.i, %bb.q ] ; 4 uses
  %.ph1382 = phi i64 [ %i.ec, %bb.v ], [ %i.au, %bb.q ] ; 3 uses
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.outer, %bb.r
  %i.cq = invoke fastcc noundef zeroext i1 @"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$27inject_flush_or_push_output17h28572dbcc34f56eaE"(ptr noalias noundef nonnull align 8 dereferenceable(5584) %0, ptr noalias noundef nonnull align 8 dereferenceable(8) %3, ptr noalias noundef nonnull align 1 %4, i64 noundef %5, ptr noalias noundef nonnull align 8 dereferenceable(8) %6, ptr noalias noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.r unwind label %.loopexit.i.loopexit, !noalias !38484

bb.r:                                             ; preds = %.backedge.i
  br i1 %i.cq, label %.backedge.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cr = load i64, ptr %i.ca, align 8, !alias.scope !38446, !noalias !38459, !noundef !27
  %i.cs = icmp eq i64 %i.cr, 0
  br i1 %i.cs, label %bb.t, label %bb.ar

bb.t:                                             ; preds = %bb.s
  %i.ct = load i32, ptr %i.ag, align 8, !range !23929, !alias.scope !38446, !noalias !38459, !noundef !27
  %i.cu = icmp eq i32 %i.ct, 0
  br i1 %i.cu, label %bb.u, label %bb.ar

bb.u:                                             ; preds = %bb.t
  %.sroa.0.0.i125.i = call noundef i64 @llvm.umin.i64(i64 %.ph1382, i64 %i.at) ; 6 uses
  %i.cv = icmp ule i64 %.ph1382, %i.at            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !38485
  %i.cw = load i8, ptr %i.cb, align 2, !alias.scope !38446, !noalias !38459, !noundef !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !38485
  %.sink.i = zext i8 %i.cw to i64
  store i64 %.sink.i, ptr %i.ad, align 8, !noalias !38485
  %.sroa.011.0.in.i = shl i64 %.sroa.0.0.i125.i, 1
  %.sroa.011.0.i = add i64 %.sroa.011.0.in.i, 503 ; 8 uses
  store i64 0, ptr %i.ac, align 8, !noalias !38485
  %i.cx = load i64, ptr %3, align 8, !alias.scope !38453, !noalias !38486, !noundef !27 ; 2 uses
  %.not.i = icmp ugt i64 %.sroa.011.0.i, %i.cx    ; 2 uses
  br i1 %.not.i, label %bb.w, label %bb.z

bb.v:                                             ; preds = %bb.aq, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !38485
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !38485
  br label %.backedge.i.outer

bb.w:                                             ; preds = %bb.u
  call void @llvm.experimental.noalias.scope.decl(metadata !38487)
  %i.cy = load i64, ptr %i.cc, align 8, !alias.scope !38490, !noalias !38459, !noundef !27
  %i.cz = icmp ult i64 %i.cy, %.sroa.011.0.i
  %.val65.pre.i = load ptr, ptr %i.cd, align 8, !alias.scope !38446, !noalias !38459 ; 2 uses
  %.val66.pre.i = load i64, ptr %i.ce, align 8, !alias.scope !38446, !noalias !38459 ; 2 uses
  br i1 %i.cz, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  store ptr inttoptr (i64 1 to ptr), ptr %i.cd, align 8, !alias.scope !38490, !noalias !38459
  store i64 0, ptr %i.ce, align 8, !alias.scope !38490, !noalias !38459
  %i.da = icmp eq i64 %.val66.pre.i, 0
  br i1 %i.da, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i": ; preds = %bb.x
  call void @mi_free(ptr noundef nonnull align 1 %.val65.pre.i) #38, !noalias !38491
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit.i.i"

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i", %bb.x
  %i.db = icmp slt i64 %.sroa.011.0.i, 0
  br i1 %i.db, label %bb.y, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i, !prof !3784

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i: ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit.i.i"
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !38492
  %i.dc = call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %.sroa.011.0.i, i64 noundef range(i64 1, -9223372036854775807) 1) #38, !noalias !38492 ; 3 uses
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %bb.y, label %.thread97.i

bb.y:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit.i.i"
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 1, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ], [ 0, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit.i.i" ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %.sroa.011.0.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc126.i unwind label %.loopexit.split-lp.i, !noalias !38467

.noexc126.i:                                      ; preds = %bb.y
  unreachable

.thread97.i:                                      ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  store ptr %i.dc, ptr %i.cd, align 8, !alias.scope !38490, !noalias !38459
  store i64 %.sroa.011.0.i, ptr %i.ce, align 8, !alias.scope !38490, !noalias !38459
  store i64 %.sroa.011.0.i, ptr %i.cc, align 8, !alias.scope !38490, !noalias !38459
  br label %bb.ac

bb.z:                                             ; preds = %bb.u
  %i.de = load i64, ptr %6, align 8, !alias.scope !38455, !noalias !38497, !noundef !27 ; 4 uses
  %i.df = icmp ugt i64 %i.de, %5
  br i1 %i.df, label %.invoke.i, label %bb.ab, !prof !29

bb.aa:                                            ; preds = %bb.ab, %bb.w
  %.sroa.15.0.i = phi i64 [ %i.dg, %bb.ab ], [ %.val66.pre.i, %bb.w ] ; 2 uses
  %.sroa.016.0.i = phi ptr [ %i.dh, %bb.ab ], [ %.val65.pre.i, %bb.w ]
  %.not57.i = icmp eq i64 %.sroa.15.0.i, 0
  br i1 %.not57.i, label %.invoke126.i, label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.dg = sub nuw i64 %5, %i.de
  %i.dh = getelementptr inbounds nuw i8, ptr %4, i64 %i.de
  br label %bb.aa

.invoke.i:                                        ; preds = %bb.ag, %bb.af, %bb.z
  %i.di = phi i64 [ %.ph, %bb.af ], [ %i.de, %bb.z ], [ %.ph, %bb.ag ]
  %i.dj = phi i64 [ 0, %bb.af ], [ %5, %bb.z ], [ 0, %bb.ag ] ; 2 uses
  %i.dk = phi ptr [ @1865, %bb.af ], [ @1869, %bb.z ], [ @1868, %bb.ag ]
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.di, i64 noundef %i.dj, i64 noundef %i.dj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dk) #43
          to label %.cont.i unwind label %.loopexit.split-lp.i, !noalias !38467

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.ac:                                            ; preds = %bb.aa, %.thread97.i
  %.sroa.016.0102.i = phi ptr [ %i.dc, %.thread97.i ], [ %.sroa.016.0.i, %bb.aa ] ; 6 uses
  %.sroa.15.0101.i = phi i64 [ %.sroa.011.0.i, %.thread97.i ], [ %.sroa.15.0.i, %bb.aa ] ; 7 uses
  %i.dl = load i16, ptr %i.cf, align 8, !alias.scope !38446, !noalias !38459, !noundef !27
  %i.dm = trunc i16 %i.dl to i8
  store i8 %i.dm, ptr %.sroa.016.0102.i, align 1, !noalias !38467
  %.not58.i = icmp eq i64 %.sroa.15.0101.i, 1
  br i1 %.not58.i, label %.invoke126.i, label %bb.ad

.invoke126.i:                                     ; preds = %bb.ao, %bb.am, %bb.ac, %bb.aa
  %i.dn = phi i64 [ %i.ee, %bb.am ], [ 0, %bb.aa ], [ 1, %bb.ac ], [ %i.eo, %bb.ao ]
  %i.do = phi i64 [ %.sroa.15.0101.i, %bb.am ], [ 0, %bb.aa ], [ 1, %bb.ac ], [ %.sroa.15.0101.i, %bb.ao ]
  %i.dp = phi ptr [ @1866, %bb.am ], [ @1863, %bb.aa ], [ @1864, %bb.ac ], [ @1867, %bb.ao ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.dn, i64 noundef %i.do, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dp) #43
          to label %.cont127.i unwind label %.loopexit.split-lp.i, !noalias !38467

.cont127.i:                                       ; preds = %.invoke126.i
  unreachable

bb.ad:                                            ; preds = %bb.ac
  %i.dq = load i16, ptr %i.cf, align 8, !alias.scope !38446, !noalias !38459, !noundef !27
  %i.dr = lshr i16 %i.dq, 8
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.016.0102.i, i64 1
  %i.dt = trunc nuw i16 %i.dr to i8
  store i8 %i.dt, ptr %i.ds, align 1, !noalias !38467
  %i.du = load i32, ptr %i.ai, align 8, !alias.scope !38446, !noalias !38459, !noundef !27
  %i.dv = invoke fastcc { ptr, i64 } @_ZN6brotli3enc6encode20GetHashTableInternal17hd59a7ac31547727cE(ptr noalias noundef align 4 dereferenceable(4096) %i.cg, ptr noalias noundef align 8 dereferenceable(16) %i.ch, i32 noundef %i.du, i64 noundef %.sroa.0.0.i125.i, ptr noalias noundef align 8 dereferenceable(8) %i.ac)
          to label %bb.ae unwind label %.loopexit.i.loopexit.split-lp, !noalias !38467 ; 2 uses

bb.ae:                                            ; preds = %bb.ad
  %i.dw = extractvalue { ptr, i64 } %i.dv, 0      ; 2 uses
  %i.dx = extractvalue { ptr, i64 } %i.dv, 1      ; 2 uses
  %i.dy = load i32, ptr %i.ai, align 8, !alias.scope !38446, !noalias !38459, !noundef !27
  %i.dz = icmp eq i32 %i.dy, 0
  %.not60.i = icmp eq i64 %.ph, 0                 ; 2 uses
  br i1 %i.dz, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  br i1 %.not60.i, label %bb.ah, label %.invoke.i, !prof !222

bb.ag:                                            ; preds = %bb.ae
  br i1 %.not60.i, label %bb.aj, label %.invoke.i, !prof !222

bb.ah:                                            ; preds = %bb.af
  %i.ea = load i64, ptr %i.ac, align 8, !noalias !38485, !noundef !27
  invoke fastcc void @_ZN6brotli3enc17compress_fragment22compress_fragment_fast17h6c0d553cad315c42E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0, i64 noundef %.sroa.0.0.i125.i, i1 noundef zeroext %i.cv, ptr noalias noundef nonnull align 4 %i.dw, i64 noundef %i.dx, i64 noundef %i.ea, ptr noalias noundef nonnull align 1 %i.ci, ptr noalias noundef nonnull align 2 %i.cj, ptr noalias noundef align 8 dereferenceable(8) %i.ck, ptr noalias noundef nonnull align 1 %i.cl, ptr noalias noundef align 8 dereferenceable(8) %i.ad, ptr noalias noundef nonnull align 1 %.sroa.016.0102.i, i64 noundef %.sroa.15.0101.i)
          to label %bb.ai unwind label %.loopexit.i.loopexit.split-lp

bb.ai:                                            ; preds = %bb.ah, %bb.aj
  %i.eb = add nuw nsw i64 %.sroa.0.0.i125.i, %.ph ; 2 uses
  store i64 %i.eb, ptr %2, align 8, !alias.scope !38451, !noalias !38483
  %i.ec = sub nuw i64 %.ph1382, %.sroa.0.0.i125.i ; 2 uses
  store i64 %i.ec, ptr %1, align 8, !alias.scope !38449, !noalias !38461
  %i.ed = load i64, ptr %i.ad, align 8, !noalias !38485, !noundef !27 ; 2 uses
  %i.ee = lshr i64 %i.ed, 3                       ; 8 uses
  br i1 %.not.i, label %bb.ak, label %bb.al

bb.aj:                                            ; preds = %bb.ag
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.1.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.010.1.i) ]
  %i.ef = load i64, ptr %i.ac, align 8, !noalias !38485, !noundef !27
  invoke fastcc void @_ZN6brotli3enc26compress_fragment_two_pass26compress_fragment_two_pass17hc4772fb9232ebc34E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0, i64 noundef %.sroa.0.0.i125.i, i1 noundef zeroext %i.cv, ptr noalias noundef nonnull align 4 %.sroa.0.1.i, i64 noundef %.sroa.18.1.i, ptr noalias noundef nonnull align 1 %.sroa.010.1.i, i64 noundef %.sroa.17.1.i, ptr noalias noundef nonnull align 4 %i.dw, i64 noundef %i.dx, i64 noundef %i.ef, ptr noalias noundef align 8 dereferenceable(8) %i.ad, ptr noalias noundef nonnull align 1 %.sroa.016.0102.i, i64 noundef %.sroa.15.0101.i)
          to label %bb.ai unwind label %.loopexit.i.loopexit.split-lp, !noalias !38467

bb.ak:                                            ; preds = %bb.ai
  store i32 0, ptr %i.co, align 8, !alias.scope !38446, !noalias !38459
  store i32 0, ptr %i.cp, align 4, !alias.scope !38446, !noalias !38459
  store i64 %i.ee, ptr %i.ca, align 8, !alias.scope !38446, !noalias !38459
  br label %bb.am

bb.al:                                            ; preds = %bb.ai
  %i.eg = load i64, ptr %6, align 8, !alias.scope !38455, !noalias !38497, !noundef !27
  %i.eh = add i64 %i.eg, %i.ee
  store i64 %i.eh, ptr %6, align 8, !alias.scope !38455, !noalias !38497
  %i.ei = sub i64 %i.cx, %i.ee
  store i64 %i.ei, ptr %3, align 8, !alias.scope !38453, !noalias !38486
  %i.ej = load i64, ptr %i.cm, align 8, !alias.scope !38446, !noalias !38459, !noundef !27
  %i.ek = add i64 %i.ej, %i.ee                    ; 2 uses
  store i64 %i.ek, ptr %i.cm, align 8, !alias.scope !38446, !noalias !38459
  %i.el = load i64, ptr %7, align 8, !range !223, !alias.scope !38457, !noalias !38498, !noundef !27
  %i.em = trunc nuw i64 %i.el to i1
  br i1 %i.em, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.an, %bb.al, %bb.ak
  %i.en = icmp ult i64 %i.ee, %.sroa.15.0101.i
  br i1 %i.en, label %bb.ao, label %.invoke126.i

bb.an:                                            ; preds = %bb.al
  store i64 %i.ek, ptr %i.cn, align 8, !alias.scope !38457, !noalias !38498
  br label %bb.am

bb.ao:                                            ; preds = %bb.am
  %i.eo = add nuw nsw i64 %i.ee, 1                ; 3 uses
  %i.ep = icmp ult i64 %i.eo, %.sroa.15.0101.i
  br i1 %i.ep, label %bb.ap, label %.invoke126.i

bb.ap:                                            ; preds = %bb.ao
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.016.0102.i, i64 %i.ee
  %i.er = load i8, ptr %i.eq, align 1, !noalias !38467, !noundef !27
  %i.es = zext i8 %i.er to i16
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.016.0102.i, i64 %i.eo
  %i.eu = load i8, ptr %i.et, align 1, !noalias !38467, !noundef !27
  %i.ev = zext i8 %i.eu to i16
  %i.ew = shl nuw i16 %i.ev, 8
  %i.ex = or disjoint i16 %i.ew, %i.es
  store i16 %i.ex, ptr %i.cf, align 8, !alias.scope !38446, !noalias !38459
  %i.ey = trunc i64 %i.ed to i8
  %i.ez = and i8 %i.ey, 7
  store i8 %i.ez, ptr %i.cb, align 2, !alias.scope !38446, !noalias !38459
  br i1 %i.cv, label %bb.aq, label %bb.v

bb.aq:                                            ; preds = %bb.ap
  store i32 2, ptr %i.ag, align 8, !alias.scope !38446, !noalias !38459
  br label %bb.v

bb.ar:                                            ; preds = %bb.t, %bb.s
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.1.i) ]
  switch i64 %.sroa.18.1.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i" [
    i64 131072, label %bb.as
    i64 0, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i"
  ]

bb.as:                                            ; preds = %bb.ar
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %.val82.i = load i64, ptr %i.fa, align 8, !alias.scope !38446, !noalias !38459, !noundef !27
  %i.fb = icmp eq i64 %.val82.i, 0
  br i1 %i.fb, label %bb.at, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i"

bb.at:                                            ; preds = %bb.as
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 336
  store ptr %.sroa.0.1.i, ptr %i.fc, align 8, !alias.scope !38446, !noalias !38459
  store i64 131072, ptr %i.fa, align 8, !alias.scope !38446, !noalias !38459
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.010.1.i) ]
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %.val72.i = load i64, ptr %i.fe, align 8, !alias.scope !38446, !noalias !38459, !noundef !27
  %i.ff = icmp eq i64 %.val72.i, 0
  br i1 %i.ff, label %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit130.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i129.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i129.i": ; preds = %bb.at
  %.val71.i = load ptr, ptr %i.fd, align 8, !alias.scope !38446, !noalias !38459, !nonnull !27, !noundef !27
  call void @mi_free(ptr noundef nonnull %.val71.i) #38, !noalias !38467
  br label %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit130.i"

"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit130.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i129.i", %bb.at
  store ptr %.sroa.010.1.i, ptr %i.fd, align 8, !alias.scope !38446, !noalias !38459
  store i64 %.sroa.17.1.i, ptr %i.fe, align 8, !alias.scope !38446, !noalias !38459
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit.i"

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i131.i", %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i", %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit130.i"
  %i.fg = phi i1 [ true, %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit130.i" ], [ true, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i" ], [ false, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i131.i" ]
  %.sroa.010.2.i = phi ptr [ inttoptr (i64 1 to ptr), %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit130.i" ], [ %.sroa.010.1.i, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i" ], [ %.sroa.010.1.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i131.i" ]
  %.sroa.18.2.i = phi i64 [ 0, %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit130.i" ], [ %.sroa.18.1.i, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i" ], [ %.sroa.18.1.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i131.i" ]
  %.sroa.0.2.i = phi ptr [ inttoptr (i64 4 to ptr), %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit130.i" ], [ %.sroa.0.1.i, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i" ], [ %.sroa.0.1.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i131.i" ]
  %.sroa.037.3.i = phi i1 [ true, %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit130.i" ], [ false, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i" ], [ false, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i131.i" ]
  %i.fh = load i64, ptr %i.ca, align 8, !alias.scope !38446, !noalias !38459, !noundef !27
  %i.fi = load i32, ptr %i.ag, align 8, !range !23929, !alias.scope !38446, !noalias !38459, !noundef !27
  %i.fj = icmp eq i32 %i.fi, 1
  %i.fk = icmp eq i64 %i.fh, 0
  %or.cond5.i = and i1 %i.fk, %i.fj
  br i1 %or.cond5.i, label %bb.au, label %bb.av

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i": ; preds = %bb.as, %bb.ar
  call void @mi_free(ptr noundef nonnull align 4 %.sroa.0.1.i) #38, !noalias !38467
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i"

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i", %bb.ar
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.010.1.i) ]
  %i.fl = icmp eq i64 %.sroa.17.1.i, 0
  br i1 %i.fl, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i131.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i131.i": ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i"
  call void @mi_free(ptr noundef nonnull align 1 %.sroa.010.1.i) #38, !noalias !38467
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit.i"

bb.au:                                            ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit.i"
  store i32 0, ptr %i.ag, align 8, !alias.scope !38446, !noalias !38459
  store i32 2, ptr %i.co, align 8, !alias.scope !38446, !noalias !38459
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit.i"
  br i1 %.sroa.037.3.i, label %bb.aw, label %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$20compress_stream_fast17h8a1ddd90ef6bd700E.exit"

bb.aw:                                            ; preds = %bb.av
  br i1 %i.fg, label %.thread25.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i133.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i133.i": ; preds = %bb.aw
  call void @mi_free(ptr noundef nonnull %.sroa.010.2.i) #38, !noalias !38467
  br label %.thread25.i

.thread25.i:                                      ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i133.i", %bb.aw
  %i.fm = icmp eq i64 %.sroa.18.2.i, 0
  br i1 %i.fm, label %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$20compress_stream_fast17h8a1ddd90ef6bd700E.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i135.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i135.i": ; preds = %.thread25.i
  call void @mi_free(ptr noundef nonnull %.sroa.0.2.i) #38, !noalias !38467
  br label %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$20compress_stream_fast17h8a1ddd90ef6bd700E.exit"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i137.i": ; preds = %.loopexit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.010.0.i) ]
  call void @mi_free(ptr noundef nonnull %.sroa.010.0.i) #38, !noalias !38467
  br label %.thread.i

common.resume.sink.split:                         ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i", %bb.ew, %bb.fe, %bb.kv, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i141.i"
  %.sink.i.i.sink.i.sink = phi ptr [ %.sroa.0.019.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i141.i" ], [ %i.tb, %bb.ew ], [ %i.sd, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i" ], [ %i.tq, %bb.fe ], [ %.sroa.10.0.i.i.i.i, %bb.kv ]
  %common.resume.op.ph = phi { ptr, i32 } [ %lpad.phi.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i141.i" ], [ %i.tf, %bb.ew ], [ %i.sk, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i" ], [ %i.un, %bb.fe ], [ %i.aql, %bb.kv ]
  call void @mi_free(ptr noundef nonnull %.sink.i.i.sink.i.sink) #38, !noalias !27
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %bb.el, %bb.kv, %.thread.i
  %common.resume.op = phi { ptr, i32 } [ %lpad.phi.i, %.thread.i ], [ %i.sk, %bb.el ], [ %i.aql, %bb.kv ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

.thread.i:                                        ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i137.i", %.loopexit.i
  %i.fn = icmp eq i64 %.sroa.18.0.i, 0
  br i1 %i.fn, label %common.resume, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i141.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i141.i": ; preds = %.thread.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.019.i) ]
  br label %common.resume.sink.split

bb.ax:                                            ; preds = %bb.c, %bb.e
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 11 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 13 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 4 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 5512 ; 4 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 11 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 268 ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 5570 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 5574 ; 7 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 10 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 15 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 15 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 5568 ; 6 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 5573 ; 6 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 233
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 9 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 5 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 4 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 230 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 5572
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 13 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 11 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 5544 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 5575 ; 5 uses
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 5576 ; 4 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 4 uses
end_hunk_10
begin_hunk_11_@"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$15compress_stream17h3a1fcabc17cc65d3E":bb.a
  %i.adh = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.adh, align 8, !noalias !38863
  %i.adi = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 0, ptr %i.adi, align 8, !noalias !38863
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @289) #43, !noalias !38864
  unreachable

bb.hm:                                            ; preds = %"_ZN118_$LT$brotli..enc..backward_references..BasicHasher$LT$T$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17hb43b78ff21f41fbdE.exit.i.i.i"
  %i.adj = sub nuw i64 %i.qr, %i.ade
  call void @llvm.experimental.noalias.scope.decl(metadata !38865)
  %i.adk = icmp ugt i64 %i.adj, 7
  br i1 %i.adk, label %"_ZN128_$LT$brotli..enc..backward_references..H54Sub$LT$AllocU32$GT$$u20$as$u20$brotli..enc..backward_references..BasicHashComputer$GT$9HashBytes17h50b87e2b70829287E.exit.i7.i.i.i", label %bb.hn, !prof !222

bb.hn:                                            ; preds = %bb.hm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !38868
  store ptr @186, ptr %i.d, align 8, !noalias !38868
  %i.adl = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %i.adl, align 8, !noalias !38868
  %i.adm = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr null, ptr %i.adm, align 8, !noalias !38868
  %i.adn = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.adn, align 8, !noalias !38868
  %i.ado = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 0, ptr %i.ado, align 8, !noalias !38868
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1522) #43, !noalias !38871
  unreachable

"_ZN128_$LT$brotli..enc..backward_references..H54Sub$LT$AllocU32$GT$$u20$as$u20$brotli..enc..backward_references..BasicHashComputer$GT$9HashBytes17h50b87e2b70829287E.exit.i7.i.i.i": ; preds = %bb.hm
  %i.adp = getelementptr inbounds nuw i8, ptr %i.qs, i64 %i.ade
  %.sroa.0.0.copyload.i.i8.i26.i.i = load i64, ptr %i.adp, align 1, !alias.scope !38872, !noalias !38876
  %i.adq = mul i64 %.sroa.0.0.copyload.i.i8.i26.i.i, 3866266742567714048
  %i.adr = lshr i64 %i.adq, 44
  %i.ads = lshr i64 %i.add, 3
  %i.adt = and i64 %i.ads, 3
  %i.adu = add nuw nsw i64 %i.adr, %i.adt         ; 3 uses
  %i.adv = icmp ugt i64 %.val7.i.i, %i.adu
  br i1 %i.adv, label %"_ZN118_$LT$brotli..enc..backward_references..BasicHasher$LT$T$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17hb43b78ff21f41fbdE.exit9.i.i.i", label %bb.ho

bb.ho:                                            ; preds = %"_ZN128_$LT$brotli..enc..backward_references..H54Sub$LT$AllocU32$GT$$u20$as$u20$brotli..enc..backward_references..BasicHashComputer$GT$9HashBytes17h50b87e2b70829287E.exit.i7.i.i.i"
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.adu, i64 noundef %.val7.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @290) #43, !noalias !38864
  unreachable

"_ZN118_$LT$brotli..enc..backward_references..BasicHasher$LT$T$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17hb43b78ff21f41fbdE.exit9.i.i.i": ; preds = %"_ZN128_$LT$brotli..enc..backward_references..H54Sub$LT$AllocU32$GT$$u20$as$u20$brotli..enc..backward_references..BasicHashComputer$GT$9HashBytes17h50b87e2b70829287E.exit.i7.i.i.i"
  %i.adw = trunc nuw i64 %i.add to i32
  %i.adx = getelementptr inbounds nuw [4 x i8], ptr %.val6.i.i, i64 %i.adu
  store i32 %i.adw, ptr %i.adx, align 4, !noalias !38864
  %i.ady = add nsw i64 %i.qv, -1                  ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !38878)
  %i.adz = and i64 %i.ady, %i.qt                  ; 3 uses
  %.not.i10.i27.i.i = icmp ugt i64 %i.adz, %i.qr
  br i1 %.not.i10.i27.i.i, label %bb.hp, label %bb.hq, !prof !29

bb.hp:                                            ; preds = %"_ZN118_$LT$brotli..enc..backward_references..BasicHasher$LT$T$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17hb43b78ff21f41fbdE.exit9.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !38881
  store ptr @186, ptr %i.c, align 8, !noalias !38881
  %i.aea = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %i.aea, align 8, !noalias !38881
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %i.aeb, align 8, !noalias !38881
  %i.aec = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.aec, align 8, !noalias !38881
  %i.aed = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 0, ptr %i.aed, align 8, !noalias !38881
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @289) #43, !noalias !38882
  unreachable

bb.hq:                                            ; preds = %"_ZN118_$LT$brotli..enc..backward_references..BasicHasher$LT$T$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17hb43b78ff21f41fbdE.exit9.i.i.i"
  %i.aee = sub nuw i64 %i.qr, %i.adz
  call void @llvm.experimental.noalias.scope.decl(metadata !38883)
  %i.aef = icmp ugt i64 %i.aee, 7
  br i1 %i.aef, label %"_ZN128_$LT$brotli..enc..backward_references..H54Sub$LT$AllocU32$GT$$u20$as$u20$brotli..enc..backward_references..BasicHashComputer$GT$9HashBytes17h50b87e2b70829287E.exit.i11.i.i.i", label %bb.hr, !prof !222

bb.hr:                                            ; preds = %bb.hq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !38886
  store ptr @186, ptr %i.b, align 8, !noalias !38886
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.aeg, align 8, !noalias !38886
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.aeh, align 8, !noalias !38886
  %i.aei = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.aei, align 8, !noalias !38886
  %i.aej = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.aej, align 8, !noalias !38886
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1522) #43, !noalias !38889
  unreachable

"_ZN128_$LT$brotli..enc..backward_references..H54Sub$LT$AllocU32$GT$$u20$as$u20$brotli..enc..backward_references..BasicHashComputer$GT$9HashBytes17h50b87e2b70829287E.exit.i11.i.i.i": ; preds = %bb.hq
  %i.aek = getelementptr inbounds nuw i8, ptr %i.qs, i64 %i.adz
  %.sroa.0.0.copyload.i.i12.i28.i.i = load i64, ptr %i.aek, align 1, !alias.scope !38890, !noalias !38894
  %i.ael = mul i64 %.sroa.0.0.copyload.i.i12.i28.i.i, 3866266742567714048
  %i.aem = lshr i64 %i.ael, 44
  %i.aen = lshr i64 %i.ady, 3
  %i.aeo = and i64 %i.aen, 3
  %i.aep = add nuw nsw i64 %i.aem, %i.aeo         ; 3 uses
  %i.aeq = icmp ugt i64 %.val7.i.i, %i.aep
  br i1 %i.aeq, label %"_ZN118_$LT$brotli..enc..backward_references..BasicHasher$LT$T$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17hb43b78ff21f41fbdE.exit13.i.i.i", label %bb.hs

bb.hs:                                            ; preds = %"_ZN128_$LT$brotli..enc..backward_references..H54Sub$LT$AllocU32$GT$$u20$as$u20$brotli..enc..backward_references..BasicHashComputer$GT$9HashBytes17h50b87e2b70829287E.exit.i11.i.i.i"
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.aep, i64 noundef %.val7.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @290) #43, !noalias !38882
  unreachable

"_ZN118_$LT$brotli..enc..backward_references..BasicHasher$LT$T$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17hb43b78ff21f41fbdE.exit13.i.i.i": ; preds = %"_ZN128_$LT$brotli..enc..backward_references..H54Sub$LT$AllocU32$GT$$u20$as$u20$brotli..enc..backward_references..BasicHashComputer$GT$9HashBytes17h50b87e2b70829287E.exit.i11.i.i.i"
  %i.aer = trunc nuw i64 %i.ady to i32
  %i.aes = getelementptr inbounds nuw [4 x i8], ptr %.val6.i.i, i64 %i.aep
  store i32 %i.aer, ptr %i.aes, align 4, !noalias !38882
  br label %"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$21StitchToPreviousBlock17hca03a08fefb7b981E.exit.i"

bb.ht:                                            ; preds = %_ZN6brotli3enc6encode12hasher_setup17h394ea38a5e69b412E.exit.i
  %i.aet = icmp ugt i32 %.sroa.0.021.i, 2
  %i.aeu = icmp ugt i32 %.sroa.023.0.i, 2
  %or.cond.i29.i.i = and i1 %i.aet, %i.aeu
  br i1 %or.cond.i29.i.i, label %bb.hu, label %"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$21StitchToPreviousBlock17hca03a08fefb7b981E.exit.i"

bb.hu:                                            ; preds = %bb.ht
  %i.aev = add nsw i64 %i.qv, -3
  call fastcc void @"_ZN137_$LT$brotli..enc..backward_references..AdvHasher$LT$Specialization$C$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17hf6592f478bdd1690E"(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.hg, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.qs, i64 noundef %i.qr, i64 noundef range(i64 0, 4294967296) %i.qt, i64 noundef %i.aev), !noalias !38505
  %i.aew = add nsw i64 %i.qv, -2
  call fastcc void @"_ZN137_$LT$brotli..enc..backward_references..AdvHasher$LT$Specialization$C$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17hf6592f478bdd1690E"(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.hg, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.qs, i64 noundef %i.qr, i64 noundef range(i64 0, 4294967296) %i.qt, i64 noundef %i.aew), !noalias !38505
  %i.aex = add nsw i64 %i.qv, -1
  call fastcc void @"_ZN137_$LT$brotli..enc..backward_references..AdvHasher$LT$Specialization$C$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17hf6592f478bdd1690E"(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.hg, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.qs, i64 noundef %i.qr, i64 noundef range(i64 0, 4294967296) %i.qt, i64 noundef %i.aex), !noalias !38505
  br label %"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$21StitchToPreviousBlock17hca03a08fefb7b981E.exit.i"

bb.hv:                                            ; preds = %_ZN6brotli3enc6encode12hasher_setup17h394ea38a5e69b412E.exit.i
  %i.aey = icmp ugt i32 %.sroa.0.021.i, 2
  %i.aez = icmp ugt i32 %.sroa.023.0.i, 2
  %or.cond.i30.i.i = and i1 %i.aey, %i.aez
  br i1 %or.cond.i30.i.i, label %bb.hw, label %"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$21StitchToPreviousBlock17hca03a08fefb7b981E.exit.i"

bb.hw:                                            ; preds = %bb.hv
  %i.afa = add nsw i64 %i.qv, -3
  call fastcc void @"_ZN137_$LT$brotli..enc..backward_references..AdvHasher$LT$Specialization$C$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17h7d9ce1d43ae38d9fE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(88) %i.hg, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.qs, i64 noundef %i.qr, i64 noundef range(i64 0, 4294967296) %i.qt, i64 noundef %i.afa), !noalias !38505
  %i.afb = add nsw i64 %i.qv, -2
  call fastcc void @"_ZN137_$LT$brotli..enc..backward_references..AdvHasher$LT$Specialization$C$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17h7d9ce1d43ae38d9fE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(88) %i.hg, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.qs, i64 noundef %i.qr, i64 noundef range(i64 0, 4294967296) %i.qt, i64 noundef %i.afb), !noalias !38505
  %i.afc = add nsw i64 %i.qv, -1
  call fastcc void @"_ZN137_$LT$brotli..enc..backward_references..AdvHasher$LT$Specialization$C$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17h7d9ce1d43ae38d9fE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(88) %i.hg, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.qs, i64 noundef %i.qr, i64 noundef range(i64 0, 4294967296) %i.qt, i64 noundef %i.afc), !noalias !38505
  br label %"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$21StitchToPreviousBlock17hca03a08fefb7b981E.exit.i"

bb.hx:                                            ; preds = %_ZN6brotli3enc6encode12hasher_setup17h394ea38a5e69b412E.exit.i
  %i.afd = icmp ugt i32 %.sroa.0.021.i, 2
  %i.afe = icmp ugt i32 %.sroa.023.0.i, 2
  %or.cond.i31.i.i = and i1 %i.afd, %i.afe
  br i1 %or.cond.i31.i.i, label %bb.hy, label %"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$21StitchToPreviousBlock17hca03a08fefb7b981E.exit.i"

bb.hy:                                            ; preds = %bb.hx
  %i.aff = add nsw i64 %i.qv, -3
  call fastcc void @"_ZN137_$LT$brotli..enc..backward_references..AdvHasher$LT$Specialization$C$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17hed7b662d138796abE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(88) %i.hg, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.qs, i64 noundef %i.qr, i64 noundef range(i64 0, 4294967296) %i.qt, i64 noundef %i.aff), !noalias !38505
  %i.afg = add nsw i64 %i.qv, -2
  call fastcc void @"_ZN137_$LT$brotli..enc..backward_references..AdvHasher$LT$Specialization$C$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17hed7b662d138796abE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(88) %i.hg, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.qs, i64 noundef %i.qr, i64 noundef range(i64 0, 4294967296) %i.qt, i64 noundef %i.afg), !noalias !38505
  %i.afh = add nsw i64 %i.qv, -1
  call fastcc void @"_ZN137_$LT$brotli..enc..backward_references..AdvHasher$LT$Specialization$C$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17hed7b662d138796abE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(88) %i.hg, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.qs, i64 noundef %i.qr, i64 noundef range(i64 0, 4294967296) %i.qt, i64 noundef %i.afh), !noalias !38505
  br label %"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$21StitchToPreviousBlock17hca03a08fefb7b981E.exit.i"

bb.hz:                                            ; preds = %_ZN6brotli3enc6encode12hasher_setup17h394ea38a5e69b412E.exit.i
  %i.afi = icmp ugt i32 %.sroa.0.021.i, 6
  %i.afj = icmp ugt i32 %.sroa.023.0.i, 2
  %or.cond.i32.i.i = and i1 %i.afi, %i.afj
  br i1 %or.cond.i32.i.i, label %bb.ia, label %"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$21StitchToPreviousBlock17hca03a08fefb7b981E.exit.i"

bb.ia:                                            ; preds = %bb.hz
  %i.afk = add nsw i64 %i.qv, -3
  call fastcc void @"_ZN137_$LT$brotli..enc..backward_references..AdvHasher$LT$Specialization$C$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17hc6ac719cc82f1cb5E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(112) %i.hg, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.qs, i64 noundef %i.qr, i64 noundef range(i64 0, 4294967296) %i.qt, i64 noundef %i.afk), !noalias !38505
  %i.afl = add nsw i64 %i.qv, -2
  call fastcc void @"_ZN137_$LT$brotli..enc..backward_references..AdvHasher$LT$Specialization$C$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17hc6ac719cc82f1cb5E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(112) %i.hg, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.qs, i64 noundef %i.qr, i64 noundef range(i64 0, 4294967296) %i.qt, i64 noundef %i.afl), !noalias !38505
  %i.afm = add nsw i64 %i.qv, -1
  call fastcc void @"_ZN137_$LT$brotli..enc..backward_references..AdvHasher$LT$Specialization$C$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17hc6ac719cc82f1cb5E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(112) %i.hg, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.qs, i64 noundef %i.qr, i64 noundef range(i64 0, 4294967296) %i.qt, i64 noundef %i.afm), !noalias !38505
  br label %"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$21StitchToPreviousBlock17hca03a08fefb7b981E.exit.i"

bb.ib:                                            ; preds = %_ZN6brotli3enc6encode12hasher_setup17h394ea38a5e69b412E.exit.i
  %i.afn = icmp ugt i32 %.sroa.0.021.i, 2
  %i.afo = icmp ugt i32 %.sroa.023.0.i, 2
  %or.cond.i33.i.i = and i1 %i.afn, %i.afo
  br i1 %or.cond.i33.i.i, label %bb.ic, label %"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$21StitchToPreviousBlock17hca03a08fefb7b981E.exit.i"

bb.ic:                                            ; preds = %bb.ib
  %i.afp = add nsw i64 %i.qv, -3
  call fastcc void @"_ZN113_$LT$brotli..enc..backward_references..H9$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17h6804a41f46fdae5fE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(88) %i.hg, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.qs, i64 noundef %i.qr, i64 noundef range(i64 0, 4294967296) %i.qt, i64 noundef %i.afp), !noalias !38505
  %i.afq = add nsw i64 %i.qv, -2
  call fastcc void @"_ZN113_$LT$brotli..enc..backward_references..H9$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17h6804a41f46fdae5fE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(88) %i.hg, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.qs, i64 noundef %i.qr, i64 noundef range(i64 0, 4294967296) %i.qt, i64 noundef %i.afq), !noalias !38505
  %i.afr = add nsw i64 %i.qv, -1
  call fastcc void @"_ZN113_$LT$brotli..enc..backward_references..H9$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17h6804a41f46fdae5fE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(88) %i.hg, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.qs, i64 noundef %i.qr, i64 noundef range(i64 0, 4294967296) %i.qt, i64 noundef %i.afr), !noalias !38505
  br label %"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$21StitchToPreviousBlock17hca03a08fefb7b981E.exit.i"

bb.id:                                            ; preds = %_ZN6brotli3enc6encode12hasher_setup17h394ea38a5e69b412E.exit.i
  %i.afs = load i64, ptr %i.hh, align 8, !alias.scope !38657, !noalias !38660, !noundef !27
  call void @llvm.experimental.noalias.scope.decl(metadata !38896)
  %i.aft = icmp ugt i32 %.sroa.0.021.i, 2
  %i.afu = icmp ugt i32 %.sroa.023.0.i, 127
  %or.cond.i34.i.i = select i1 %i.aft, i1 %i.afu, i1 false
  br i1 %or.cond.i34.i.i, label %.lr.ph.i.i.i, label %"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$21StitchToPreviousBlock17hca03a08fefb7b981E.exit.i"

.lr.ph.i.i.i:                                     ; preds = %bb.id
  %i.afv = add nsw i64 %i.qv, -128                ; 2 uses
  %i.afw = add nuw nsw i64 %i.afv, %i.qw
  %.sroa.0.0.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.afw, i64 range(i64 0, 4294967296) %i.qv)
  %i.afx = load i64, ptr %i.hi, align 8, !alias.scope !38899, !noalias !38900, !noundef !27
  br label %bb.ie

bb.ie:                                            ; preds = %bb.ie, %.lr.ph.i.i.i
  %.sroa.01.05.i.i.i = phi i64 [ %i.afv, %.lr.ph.i.i.i ], [ %i.afy, %bb.ie ] ; 3 uses
  %i.afy = add nuw nsw i64 %.sroa.01.05.i.i.i, 1  ; 2 uses
  %i.afz = sub nuw nsw i64 %i.qv, %.sroa.01.05.i.i.i
  %.sroa.0.0.i4.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.afz, i64 15)
  %i.aga = sub i64 %i.afx, %.sroa.0.0.i4.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !38902
  store i64 0, ptr %i.a, align 8, !noalias !38902
  %i.agb = call fastcc noundef i64 @_ZN6brotli3enc19backward_references19hash_to_binary_tree22StoreAndFindMatchesH1017h1a8db7e0f3094503E(ptr noalias noundef nonnull readonly align 8 dereferenceable(104) %i.hg, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.qs, i64 noundef %i.qr, i64 noundef %.sroa.01.05.i.i.i, i64 noundef range(i64 0, 4294967296) %i.qt, i64 noundef %i.afs, i64 noundef 128, i64 noundef %i.aga, ptr noalias noundef align 8 dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 inttoptr (i64 8 to ptr), i64 noundef 0), !noalias !38505 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !38902
  %i.agc = icmp samesign ult i64 %i.afy, %.sroa.0.0.i.i.i.i
  br i1 %i.agc, label %bb.ie, label %"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$21StitchToPreviousBlock17hca03a08fefb7b981E.exit.i"

"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$21StitchToPreviousBlock17hca03a08fefb7b981E.exit.i": ; preds = %bb.ie, %bb.id, %bb.ic, %bb.ib, %bb.ia, %bb.hz, %bb.hy, %bb.hx, %bb.hw, %bb.hv, %bb.hu, %bb.ht, %"_ZN118_$LT$brotli..enc..backward_references..BasicHasher$LT$T$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17hb43b78ff21f41fbdE.exit13.i.i.i", %bb.hf, %"_ZN118_$LT$brotli..enc..backward_references..BasicHasher$LT$T$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17h51ce669fdbdd8ef7E.exit13.i.i.i", %bb.gr, %"_ZN118_$LT$brotli..enc..backward_references..BasicHasher$LT$T$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17hcbcbdfc39e04f6aaE.exit13.i.i.i", %bb.gd, %"_ZN118_$LT$brotli..enc..backward_references..BasicHasher$LT$T$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17h028119853d0aedb2E.exit13.i.i.i", %bb.fp
  %.val164.i = load ptr, ptr %i.ft, align 8, !alias.scope !38502, !noalias !38505, !nonnull !27, !align !206, !noundef !27
  %.val165.i = load i64, ptr %i.gk, align 8, !alias.scope !38502, !noalias !38505, !noundef !27
  %i.agd = load i64, ptr %i.fx, align 8, !alias.scope !38502, !noalias !38505, !noundef !27 ; 3 uses
  %i.age = trunc i64 %i.agd to i32                ; 3 uses
  %i.agf = icmp ugt i64 %i.agd, 3221225471
  br i1 %i.agf, label %bb.ih, label %bb.ig

bb.if:                                            ; preds = %bb.dp
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.qf, i64 noundef %.val129.i, i64 noundef %.val129.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1855) #43, !noalias !38505
  unreachable

bb.ig:                                            ; preds = %bb.ih, %"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$21StitchToPreviousBlock17hca03a08fefb7b981E.exit.i"
  %.sroa.025.0.i = phi i32 [ %i.agr, %bb.ih ], [ %i.age, %"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$21StitchToPreviousBlock17hca03a08fefb7b981E.exit.i" ]
  %i.agg = zext i32 %.sroa.025.0.i to i64
  %i.agh = load i64, ptr %i.fo, align 8, !alias.scope !38502, !noalias !38505, !noundef !27
  %i.agi = sub i64 %i.agh, %i.agd
  %i.agj = call noundef i8 @_ZN6brotli3enc6encode17ChooseContextMode17h6a63f239b9ccfc8aE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.gd, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val164.i, i64 noundef %.val165.i, i64 noundef %i.agg, i64 noundef %i.qt, i64 noundef %i.agi), !noalias !38505
  %i.agk = load i64, ptr %i.gt, align 8, !alias.scope !38502, !noalias !38505, !noundef !27 ; 2 uses
  %i.agl = icmp eq i64 %i.agk, 0
  br i1 %i.agl, label %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$19extend_last_command17h098e8c64304e41a4E.exit.i", label %bb.ii

bb.ih:                                            ; preds = %"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$21StitchToPreviousBlock17hca03a08fefb7b981E.exit.i"
  %i.agm = and i32 %i.age, 1073741823
  %i.agn = shl i32 %i.age, 1
  %i.ago = ashr exact i32 %i.agn, 1
  %i.agp = and i32 %i.ago, -1073741824
  %i.agq = or disjoint i32 %i.agp, %i.agm
  %i.agr = xor i32 %i.agq, -2147483648
  br label %bb.ig

bb.ii:                                            ; preds = %bb.ig
  %i.ags = load i64, ptr %i.hk, align 8, !alias.scope !38502, !noalias !38505, !noundef !27
  %i.agt = icmp eq i64 %i.ags, 0
  br i1 %i.agt, label %bb.ij, label %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$19extend_last_command17h098e8c64304e41a4E.exit.i"

"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$19extend_last_command17h098e8c64304e41a4E.exit.i": ; preds = %_ZN6brotli3enc7command20combine_length_codes17h931ddf81d3f771e2E.exit.i.i, %_ZN6brotli3enc7command7Command21restore_distance_code17h056ad2badf720d62E.exit.i.i, %bb.ii, %bb.ig
  %.pre-phi51.i = phi i64 [ %.pre50.i, %_ZN6brotli3enc7command20combine_length_codes17h931ddf81d3f771e2E.exit.i.i ], [ %i.qv, %_ZN6brotli3enc7command7Command21restore_distance_code17h056ad2badf720d62E.exit.i.i ], [ %i.qv, %bb.ii ], [ %i.qv, %bb.ig ]
  %.pre-phi.i = phi i64 [ %.pre49.i, %_ZN6brotli3enc7command20combine_length_codes17h931ddf81d3f771e2E.exit.i.i ], [ %i.qw, %_ZN6brotli3enc7command7Command21restore_distance_code17h056ad2badf720d62E.exit.i.i ], [ %i.qw, %bb.ii ], [ %i.qw, %bb.ig ]
  %.val126.i = load ptr, ptr %i.ft, align 8, !alias.scope !38502, !noalias !38505, !nonnull !27, !align !206, !noundef !27
  %.val127.i = load i64, ptr %i.gk, align 8, !alias.scope !38502, !noalias !38505, !noundef !27 ; 4 uses
  %i.agu = load i64, ptr %i.gl, align 8, !alias.scope !38502, !noalias !38505, !noundef !27 ; 4 uses
  %i.agv = icmp ugt i64 %i.agu, %.val127.i
  br i1 %i.agv, label %bb.jj, label %bb.ji, !prof !29

bb.ij:                                            ; preds = %bb.ii
  call void @llvm.experimental.noalias.scope.decl(metadata !38903)
  %.val18.i.i = load i64, ptr %i.gw, align 8, !alias.scope !38906, !noalias !38907, !noundef !27 ; 2 uses
  %i.agw = add i64 %i.agk, -1                     ; 3 uses
  %i.agx = icmp ult i64 %i.agw, %.val18.i.i
  br i1 %i.agx, label %bb.ik, label %bb.im

bb.ik:                                            ; preds = %bb.ij
  %.val17.i.i = load ptr, ptr %i.gv, align 8, !alias.scope !38906, !noalias !38907, !nonnull !27, !align !603, !noundef !27
  %i.agy = getelementptr inbounds nuw [16 x i8], ptr %.val17.i.i, i64 %i.agw ; 5 uses
  %i.agz = load i32, ptr %i.fu, align 4, !alias.scope !38906, !noalias !38907, !noundef !27 ; 2 uses
  %i.aha = load i32, ptr %i.gz, align 4, !alias.scope !38906, !noalias !38907, !noundef !27
  %i.ahb = and i32 %i.aha, 63
  %i.ahc = zext nneg i32 %i.ahb to i64
  %i.ahd = shl nuw i64 1, %i.ahc
  %i.ahe = add i64 %i.ahd, -16
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.agy, i64 4 ; 2 uses
  %i.ahg = load i32, ptr %i.ahf, align 4, !noalias !38910, !noundef !27 ; 4 uses
  %i.ahh = and i32 %i.ahg, 33554431               ; 3 uses
  %i.ahi = zext nneg i32 %i.ahh to i64
  %i.ahj = load i64, ptr %i.fp, align 8, !alias.scope !38906, !noalias !38907, !noundef !27
  %i.ahk = sub i64 %i.ahj, %i.ahi
  %..i.i = call i64 @llvm.umin.i64(i64 %i.ahk, i64 %i.ahe)
  %i.ahl = load i32, ptr %i.hl, align 8, !alias.scope !38906, !noalias !38907, !noundef !27
  %i.ahm = sext i32 %i.ahl to i64                 ; 3 uses
  %i.ahn = getelementptr i8, ptr %i.agy, i64 14
  %.val20.i.i = load i16, ptr %i.ahn, align 2, !noalias !38910, !noundef !27 ; 2 uses
  %.val22.i.i = load i32, ptr %i.hm, align 4, !alias.scope !38906, !noalias !38907, !noundef !27 ; 2 uses
  %i.aho = and i16 %.val20.i.i, 1023              ; 2 uses
  %i.ahp = zext nneg i16 %i.aho to i32            ; 3 uses
  %i.ahq = add i32 %.val22.i.i, 16                ; 2 uses
  %i.ahr = icmp sgt i32 %i.ahq, %i.ahp
  br i1 %i.ahr, label %_ZN6brotli3enc7command7Command21restore_distance_code17h056ad2badf720d62E.exit.i.i, label %bb.il

bb.il:                                            ; preds = %bb.ik
  %.val21.i.i = load i32, ptr %i.hn, align 8, !alias.scope !38906, !noalias !38907
  %i.ahs = getelementptr i8, ptr %i.agy, i64 8
  %.val19.i.i = load i32, ptr %i.ahs, align 4, !noalias !38910
  %i.aht = lshr i16 %.val20.i.i, 10
  %i.ahu = and i32 %.val21.i.i, 31                ; 3 uses
  %notmask.i.i.i = shl nsw i32 -1, %i.ahu
  %i.ahv = xor i32 %notmask.i.i.i, -1
  %i.ahw = sub i32 %i.ahp, %.val22.i.i
  %i.ahx = add i32 %i.ahw, -16                    ; 2 uses
  %i.ahy = lshr i32 %i.ahx, %i.ahu
  %i.ahz = and i32 %i.ahx, %i.ahv
  %i.aia = and i32 %i.ahy, 1
  %i.aib = or disjoint i32 %i.aia, 2
  %i.aic = and i16 %i.aht, 31
  %i.aid = zext nneg i16 %i.aic to i32
  %i.aie = shl i32 %i.aib, %i.aid
  %i.aif = add i32 %.val19.i.i, -4
  %i.aig = add i32 %i.aif, %i.aie
  %i.aih = shl i32 %i.aig, %i.ahu
  %i.aii = add i32 %i.ahz, %i.ahq
  %i.aij = add i32 %i.aii, %i.aih
  br label %_ZN6brotli3enc7command7Command21restore_distance_code17h056ad2badf720d62E.exit.i.i

_ZN6brotli3enc7command7Command21restore_distance_code17h056ad2badf720d62E.exit.i.i: ; preds = %bb.il, %bb.ik
  %.sroa.0.0.i23.i.i = phi i32 [ %i.aij, %bb.il ], [ %i.ahp, %bb.ik ] ; 2 uses
  %i.aik = icmp ult i32 %.sroa.0.0.i23.i.i, 16
  %i.ail = zext i32 %.sroa.0.0.i23.i.i to i64
  %i.aim = add nsw i64 %i.ail, -15
  %i.ain = icmp eq i64 %i.aim, %i.ahm
  %or.cond.i.i = or i1 %i.aik, %i.ain
  br i1 %or.cond.i.i, label %bb.in, label %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$19extend_last_command17h098e8c64304e41a4E.exit.i"

bb.im:                                            ; preds = %bb.ij
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.agw, i64 noundef %.val18.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1860) #43, !noalias !38910
  unreachable

bb.in:                                            ; preds = %_ZN6brotli3enc7command7Command21restore_distance_code17h056ad2badf720d62E.exit.i.i
  %.not.i201.i = icmp ult i64 %..i.i, %i.ahm
  br i1 %.not.i201.i, label %.loopexit.i.i, label %thread-pre-split.i.i

.loopexit.loopexit.i.i:                           ; preds = %bb.jh, %bb.jf
  %.sroa.012.1.i = phi i32 [ %i.alm, %bb.jh ], [ %.sroa.012.3.i, %bb.jf ]
  %.sroa.0.2.i28 = phi i32 [ 0, %bb.jh ], [ %.sroa.0.4.i, %bb.jf ]
  %i.aio = phi i32 [ %i.amc, %bb.jh ], [ %i.aln, %bb.jf ] ; 2 uses
  %.pre.i.i = and i32 %i.aio, 33554431
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %thread-pre-split.i.i, %.loopexit.loopexit.i.i, %bb.in
  %.sroa.012.2.i = phi i32 [ %.sroa.023.0.i, %bb.in ], [ %.sroa.023.0.i, %thread-pre-split.i.i ], [ %.sroa.012.1.i, %.loopexit.loopexit.i.i ]
  %.sroa.0.322.i = phi i32 [ %.sroa.0.021.i, %bb.in ], [ 0, %thread-pre-split.i.i ], [ %.sroa.0.2.i28, %.loopexit.loopexit.i.i ]
  %.pre-phi.i.i = phi i32 [ %i.ahh, %bb.in ], [ %i.ahh, %thread-pre-split.i.i ], [ %.pre.i.i, %.loopexit.loopexit.i.i ]
  %i.aip = phi i32 [ %i.ahg, %bb.in ], [ %i.ahg, %thread-pre-split.i.i ], [ %i.aio, %.loopexit.loopexit.i.i ]
  %i.aiq = load i32, ptr %i.agy, align 4, !noalias !38910, !noundef !27 ; 7 uses
  %i.air = zext i32 %i.aiq to i64                 ; 2 uses
  %i.ais = lshr i32 %i.aip, 25
  %i.ait = add nuw nsw i32 %i.ais, %.pre-phi.i.i  ; 5 uses
  %i.aiu = zext nneg i32 %i.ait to i64            ; 2 uses
  %i.aiv = icmp eq i16 %i.aho, 0
  %i.aiw = icmp ult i32 %i.aiq, 6
  br i1 %i.aiw, label %bb.ip, label %bb.io

bb.io:                                            ; preds = %.loopexit.i.i
  %i.aix = icmp ult i32 %i.aiq, 130
  br i1 %i.aix, label %bb.ir, label %bb.iq

bb.ip:                                            ; preds = %.loopexit.i.i
  %i.aiy = trunc nuw nsw i32 %i.aiq to i16
  br label %_ZN6brotli3enc7command19GetInsertLengthCode17h1ca61d45192cbfcfE.exit.i.i

bb.iq:                                            ; preds = %bb.io
  %i.aiz = icmp ult i32 %i.aiq, 2114
  br i1 %i.aiz, label %bb.it, label %bb.is

bb.ir:                                            ; preds = %bb.io
  %i.aja = add nsw i64 %i.air, -2                 ; 2 uses
  %i.ajb = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aja, i1 false)
  %i.ajc = trunc nuw nsw i64 %i.ajb to i32
  %i.ajd = xor i32 %i.ajc, 63
  %i.aje = add nsw i32 %i.ajd, -1                 ; 2 uses
  %i.ajf = shl nuw nsw i32 %i.aje, 1
  %i.ajg = zext nneg i32 %i.ajf to i64
  %i.ajh = zext nneg i32 %i.aje to i64
  %i.aji = lshr i64 %i.aja, %i.ajh
  %i.ajj = add nuw nsw i64 %i.aji, %i.ajg
  %i.ajk = trunc nuw nsw i64 %i.ajj to i16
  %i.ajl = add nuw nsw i16 %i.ajk, 2
  br label %_ZN6brotli3enc7command19GetInsertLengthCode17h1ca61d45192cbfcfE.exit.i.i

bb.is:                                            ; preds = %bb.iq
  %i.ajm = icmp ult i32 %i.aiq, 6210
  br i1 %i.ajm, label %_ZN6brotli3enc7command19GetInsertLengthCode17h1ca61d45192cbfcfE.exit.i.i, label %bb.iu

bb.it:                                            ; preds = %bb.iq
  %i.ajn = add nsw i64 %i.air, -66
  %i.ajo = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ajn, i1 false)
  %i.ajp = trunc nuw nsw i64 %i.ajo to i16
  %i.ajq = xor i16 %i.ajp, 63
  %i.ajr = add nuw nsw i16 %i.ajq, 10
  br label %_ZN6brotli3enc7command19GetInsertLengthCode17h1ca61d45192cbfcfE.exit.i.i

bb.iu:                                            ; preds = %bb.is
  %i.ajs = icmp ult i32 %i.aiq, 22594
  %..i.i202.i = select i1 %i.ajs, i16 22, i16 23
  br label %_ZN6brotli3enc7command19GetInsertLengthCode17h1ca61d45192cbfcfE.exit.i.i

_ZN6brotli3enc7command19GetInsertLengthCode17h1ca61d45192cbfcfE.exit.i.i: ; preds = %bb.iu, %bb.it, %bb.is, %bb.ir, %bb.ip
  %.sroa.0.0.i12.i.i = phi i16 [ %i.aiy, %bb.ip ], [ %i.ajl, %bb.ir ], [ %i.ajr, %bb.it ], [ %..i.i202.i, %bb.iu ], [ 21, %bb.is ] ; 3 uses
  %i.ajt = icmp samesign ult i32 %i.ait, 10
  br i1 %i.ajt, label %bb.iw, label %bb.iv

bb.iv:                                            ; preds = %_ZN6brotli3enc7command19GetInsertLengthCode17h1ca61d45192cbfcfE.exit.i.i
end_hunk_11
begin_hunk_12_@"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$25update_last_processed_pos17hd00d3837a5c8f5ecE":bb.a
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.sroa.0.0 = phi i32 [ %i.n, %bb.c ], [ %i.c, %bb.a ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.f = load i64, ptr %i.e, align 8, !noundef !27 ; 3 uses
  %i.g = trunc i64 %i.f to i32                    ; 3 uses
  %i.h = icmp ugt i64 %i.f, 3221225471
  br i1 %i.h, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = and i32 %i.c, 1073741823
  %i.j = shl i32 %i.c, 1
  %i.k = ashr exact i32 %i.j, 1
  %i.l = and i32 %i.k, -1073741824
  %i.m = or disjoint i32 %i.l, %i.i
  %i.n = xor i32 %i.m, -2147483648
  br label %bb.b

bb.d:                                             ; preds = %bb.e, %bb.b
  %.sroa.02.0 = phi i32 [ %i.u, %bb.e ], [ %i.g, %bb.b ]
  store i64 %i.f, ptr %i.a, align 8
  %i.o = icmp ult i32 %.sroa.02.0, %.sroa.0.0
  ret i1 %i.o

bb.e:                                             ; preds = %bb.b
  %i.p = and i32 %i.g, 1073741823
  %i.q = shl i32 %i.g, 1
  %i.r = ashr exact i32 %i.q, 1
  %i.s = and i32 %i.r, -1073741824
  %i.t = or disjoint i32 %i.s, %i.p
  %i.u = xor i32 %i.t, -2147483648
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$27inject_flush_or_push_output17h28572dbcc34f56eaE"(ptr noalias noundef nonnull align 8 dereferenceable(5584) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef nonnull writeonly align 1 captures(none) %2, i64 noundef %3, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(8) %4, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %5) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5560
  %i.b = load i32, ptr %i.a, align 8, !range !23929, !noundef !27
  %i.c = icmp ne i32 %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 5574 ; 2 uses
  %i.e = load i8, ptr %i.d, align 2               ; 7 uses
  %i.f = icmp eq i8 %i.e, 0
  %or.cond = select i1 %i.c, i1 true, i1 %i.f
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 5512 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !noundef !27 ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  %i.j = load i64, ptr %1, align 8                ; 3 uses
  %i.k = icmp eq i64 %i.j, 0
  %or.cond5 = select i1 %i.i, i1 true, i1 %i.k
  br i1 %or.cond5, label %bb.n, label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 5568 ; 2 uses
  %i.m = load i16, ptr %i.l, align 8, !alias.scope !38937, !noundef !27
  %i.n = zext i16 %i.m to i32
  store i16 0, ptr %i.l, align 8, !alias.scope !38937
  store i8 0, ptr %i.d, align 2, !alias.scope !38937
  %i.o = and i8 %i.e, 31
  %i.p = zext nneg i8 %i.o to i32
  %i.q = shl i32 6, %i.p                          ; 2 uses
  %i.r = or i32 %i.q, %i.n                        ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.t = load i32, ptr %i.s, align 8, !range !15262, !alias.scope !38937, !noundef !27
  %i.u = icmp eq i32 %i.t, 2
  br i1 %i.u, label %.thread29.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 304
  %.val.i = load ptr, ptr %i.v, align 8, !alias.scope !38937, !nonnull !27, !align !206, !noundef !27
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 312
  %.val23.i = load i64, ptr %i.w, align 8, !alias.scope !38937, !noundef !27
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 5528
  %i.y = tail call { ptr, i64 } @_ZN6brotli3enc6encode18GetNextOutInternal17h163bd09a2afd3dd7E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.s, ptr noalias noundef nonnull align 1 %.val.i, i64 noundef %.val23.i, ptr noalias noundef nonnull align 1 dereferenceable(16) %i.x) ; 2 uses
  %i.z = extractvalue { ptr, i64 } %i.y, 1        ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 5512
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !38937, !noundef !27 ; 5 uses
  %i.ac = icmp ugt i64 %i.ab, %i.z
  br i1 %i.ac, label %bb.e, label %bb.f, !prof !29

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.ab, i64 noundef %i.z, i64 noundef %i.z, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1870) #43
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ad = extractvalue { ptr, i64 } %i.y, 0       ; 2 uses
  %i.ae = sub nuw i64 %i.z, %i.ab                 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ab ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ad) ]
  %.not.i = icmp eq i64 %i.z, %i.ab
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = trunc i32 %i.r to i8
  store i8 %i.ag, ptr %i.af, align 1
  %i.ah = icmp ugt i8 %i.e, 2
  br i1 %i.ah, label %bb.i, label %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$25inject_byte_padding_block17hc715d49c6b66c089E.exit"

.thread29.i:                                      ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 5528 ; 2 uses
  store i32 1, ptr %i.s, align 8, !alias.scope !38937
  store i32 0, ptr %i.ai, align 4, !alias.scope !38937
  %i.ak = trunc i32 %i.r to i8
  store i8 %i.ak, ptr %i.aj, align 8, !alias.scope !38937
  %i.al = icmp ugt i8 %i.e, 2
  br i1 %i.al, label %.thread45.i, label %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$25inject_byte_padding_block17hc715d49c6b66c089E.exit"

bb.h:                                             ; preds = %bb.f
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1871) #43
  unreachable

bb.i:                                             ; preds = %bb.g
  %.not22.i = icmp eq i64 %i.ae, 1
  br i1 %.not22.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = lshr i32 %i.r, 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  %i.ao = trunc i32 %i.am to i8
  store i8 %i.ao, ptr %i.an, align 1
  %i.ap = icmp ugt i8 %i.e, 10
  br i1 %i.ap, label %bb.l, label %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$25inject_byte_padding_block17hc715d49c6b66c089E.exit"

.thread45.i:                                      ; preds = %.thread29.i
  %i.aq = lshr i32 %i.r, 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 5529
  %i.as = trunc i32 %i.aq to i8
  store i8 %i.as, ptr %i.ar, align 1, !alias.scope !38937
  %i.at = icmp ugt i8 %i.e, 10
  br i1 %i.at, label %.thread50.i, label %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$25inject_byte_padding_block17hc715d49c6b66c089E.exit"

bb.k:                                             ; preds = %bb.i
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef 1, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1872) #43
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.au = icmp ugt i64 %i.ae, 2
  br i1 %i.au, label %.thread50.i, label %bb.m

.thread50.i:                                      ; preds = %bb.l, %.thread45.i
  %.sroa.09.02833414853.i = phi ptr [ %i.af, %bb.l ], [ %i.aj, %.thread45.i ]
  %i.av = lshr i32 %i.q, 16
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.09.02833414853.i, i64 2
  %i.ax = trunc i32 %i.av to i8
  store i8 %i.ax, ptr %i.aw, align 1
  br label %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$25inject_byte_padding_block17hc715d49c6b66c089E.exit"

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef 2, i64 noundef %i.ae, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1873) #43
  unreachable

"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$25inject_byte_padding_block17hc715d49c6b66c089E.exit": ; preds = %bb.g, %.thread29.i, %bb.j, %.thread45.i, %.thread50.i
  %i.ay = zext i8 %i.e to i64
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 5512 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !alias.scope !38937, !noundef !27
  %i.bb = add nuw nsw i64 %i.ay, 13
  %i.bc = lshr i64 %i.bb, 3
  %i.bd = add i64 %i.ba, %i.bc
  store i64 %i.bd, ptr %i.az, align 8, !alias.scope !38937
  br label %bb.n

bb.n:                                             ; preds = %bb.t, %bb.u, %bb.b, %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$25inject_byte_padding_block17hc715d49c6b66c089E.exit"
  %.sroa.0.0 = phi i1 [ true, %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$25inject_byte_padding_block17hc715d49c6b66c089E.exit" ], [ false, %bb.b ], [ true, %bb.u ], [ true, %bb.t ]
  ret i1 %.sroa.0.0

bb.o:                                             ; preds = %bb.b
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 %i.h) ; 8 uses
  %i.be = load i64, ptr %4, align 8, !noundef !27 ; 4 uses
  %i.bf = add i64 %i.be, %.sroa.0.0.i             ; 4 uses
  %i.bg = icmp ult i64 %i.bf, %i.be
  %.not = icmp ugt i64 %i.bf, %3
  %or.cond14 = or i1 %i.bg, %.not
  br i1 %or.cond14, label %bb.q, label %bb.p, !prof !2480

bb.p:                                             ; preds = %bb.o
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 304
  %.val = load ptr, ptr %i.bi, align 8, !nonnull !27, !align !206, !noundef !27
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 312
  %.val15 = load i64, ptr %i.bj, align 8, !noundef !27
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 5528
  %i.bl = tail call { ptr, i64 } @_ZN6brotli3enc6encode18GetNextOutInternal17h163bd09a2afd3dd7E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.bh, ptr noalias noundef nonnull align 1 %.val, i64 noundef %.val15, ptr noalias noundef nonnull align 1 dereferenceable(16) %i.bk) ; 2 uses
  %i.bm = extractvalue { ptr, i64 } %i.bl, 1      ; 2 uses
  %.not13 = icmp ugt i64 %.sroa.0.0.i, %i.bm
  br i1 %.not13, label %bb.s, label %bb.r, !prof !2480

bb.q:                                             ; preds = %bb.o
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.be, i64 noundef %i.bf, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1875) #43
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.bn = extractvalue { ptr, i64 } %i.bl, 0
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 %i.be
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bo, ptr nonnull readonly align 1 %i.bn, i64 %.sroa.0.0.i, i1 false), !alias.scope !38940, !noalias !38944
  store i64 %i.bf, ptr %4, align 8
  %i.bp = sub nuw i64 %i.j, %.sroa.0.0.i
  store i64 %i.bp, ptr %1, align 8
  %i.bq = load i32, ptr %i.bh, align 8, !range !15262, !noundef !27
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.bs = icmp eq i32 %i.bq, 2
  br i1 %i.bs, label %bb.t, label %.sink.split

bb.s:                                             ; preds = %bb.p
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %.sroa.0.0.i, i64 noundef %i.bm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1874) #43
  unreachable

.sink.split:                                      ; preds = %bb.r
  %i.bt = trunc i64 %.sroa.0.0.i to i32
  %i.bu = load i32, ptr %i.br, align 4, !noundef !27
  %i.bv = add i32 %i.bu, %i.bt
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %.sink.split
  %.sroa.6.0 = phi i32 [ undef, %bb.r ], [ %i.bv, %.sink.split ]
  store i32 %.sroa.6.0, ptr %i.br, align 4
  %i.bw = load i64, ptr %i.g, align 8, !noundef !27
  %i.bx = sub i64 %i.bw, %.sroa.0.0.i
  store i64 %i.bx, ptr %i.g, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 5520 ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !noundef !27
  %i.ca = add i64 %i.bz, %.sroa.0.0.i             ; 2 uses
  store i64 %i.ca, ptr %i.by, align 8
  %i.cb = load i64, ptr %5, align 8, !range !223, !noundef !27
  %i.cc = trunc nuw i64 %i.cb to i1
  br i1 %i.cc, label %bb.u, label %bb.n

bb.u:                                             ; preds = %bb.t
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.ca, ptr %i.cd, align 8
  br label %bb.n
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i64 0, 257) i64 @_ZN6brotli3enc7cluster22BrotliHistogramCombine17h357bcc83faeb8dfbE(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef %1, ptr noalias nofree noundef nonnull align 4 captures(none) %2, i64 noundef %3, ptr noalias nofree noundef nonnull align 4 captures(none) %4, i64 noundef %5, ptr noalias nofree noundef nonnull align 4 captures(none) %6, i64 noundef %7, ptr noalias nofree noundef nonnull align 4 captures(none) %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef range(i64 64, 257) %12, i64 noundef %13) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8
  %.not84.not = icmp eq i64 %10, 0
  br i1 %.not84.not, label %.outer._crit_edge, label %.preheader4

.loopexit5:                                       ; preds = %bb.al, %.preheader4
  %i.c = icmp ult i64 %.sroa.055.163, %10
  %i.d = add i64 %.sroa.055.163, 1
  br i1 %i.c, label %.preheader4, label %.preheader3

.preheader4:                                      ; preds = %bb.a, %.loopexit5
  %.sroa.055.163 = phi i64 [ %i.d, %.loopexit5 ], [ 1, %bb.a ] ; 6 uses
  %.sroa.055.062 = phi i64 [ %.sroa.055.163, %.loopexit5 ], [ 0, %bb.a ] ; 3 uses
  %i.e = icmp ult i64 %.sroa.055.163, %10
  br i1 %i.e, label %.lr.ph, label %.loopexit5

.lr.ph:                                           ; preds = %.preheader4
  %i.f = icmp ult i64 %.sroa.055.062, %7
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.sroa.055.062
  br i1 %i.f, label %.lr.ph.split.preheader, label %bb.ak

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %umax = tail call i64 @llvm.umax.i64(i64 %.sroa.055.163, i64 %7) ; 2 uses
  br label %.lr.ph.split

.preheader3:                                      ; preds = %.loopexit5
  %.not255 = icmp eq i64 %10, 1
  br i1 %.not255, label %.outer._crit_edge, label %.lr.ph76.lr.ph

.lr.ph76.lr.ph:                                   ; preds = %.preheader3
  %.not = icmp eq i64 %9, 0
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %.not85 = icmp eq i64 %11, 0
  br i1 %.not, label %bb.c, label %.lr.ph76.preheader

.lr.ph76.preheader:                               ; preds = %.lr.ph76.lr.ph
  %i.k = add i64 %5, 1
  %i.l = add i64 %7, 1
  %i.m = add i64 %11, -1
  %i.n = tail call i64 @llvm.umin.i64(i64 %5, i64 %i.m)
  %i.o = add i64 %i.n, 1                          ; 3 uses
  %min.iters.check336 = icmp ult i64 %i.o, 9
  %i.p = and i64 %i.o, 7                          ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  %i.r = select i1 %i.q, i64 8, i64 %i.p
  %n.vec338 = sub i64 %i.o, %i.r                  ; 3 uses
  %i.s = add i64 %n.vec338, 1
  br label %.lr.ph76

.outer.loopexit:                                  ; preds = %bb.b
  %i.t = icmp ugt i64 %.sroa.0.075, %12
  br i1 %i.t, label %.lr.ph76, label %.outer._crit_edge

.lr.ph76:                                         ; preds = %.lr.ph76.preheader, %.outer.loopexit
  %.sroa.0.0.ph82 = phi i64 [ %.sroa.0.075, %.outer.loopexit ], [ %10, %.lr.ph76.preheader ] ; 3 uses
  %.sroa.09.0.ph81 = phi float [ f0x7E967699, %.outer.loopexit ], [ 0.000000e+00, %.lr.ph76.preheader ]
  %.sroa.010.0.ph80 = phi i64 [ %12, %.outer.loopexit ], [ 1, %.lr.ph76.preheader ] ; 2 uses
  %i.u = add i64 %.sroa.0.0.ph82, -2
  br label %bb.b

.loopexit:                                        ; preds = %bb.p
  %i.v = icmp ugt i64 %i.di, %.sroa.010.0.ph80
  %indvar.next = add i64 %indvar, 1
  br i1 %i.v, label %bb.b, label %.outer._crit_edge.loopexit

.outer._crit_edge.loopexit:                       ; preds = %.loopexit
  %i.w = add i64 %.sroa.0.0.ph82, -1
  %umin.le = tail call i64 @llvm.umin.i64(i64 %.sroa.010.0.ph80, i64 %i.w)
  br label %.outer._crit_edge

.outer._crit_edge:                                ; preds = %.outer.loopexit, %.outer._crit_edge.loopexit, %bb.a, %.preheader3
  %.sroa.0.0.lcssa = phi i64 [ %umin.le, %.outer._crit_edge.loopexit ], [ %10, %.preheader3 ], [ 0, %bb.a ], [ %.sroa.0.075, %.outer.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i64 %.sroa.0.0.lcssa

bb.b:                                             ; preds = %.lr.ph76, %.loopexit
  %indvar = phi i64 [ 0, %.lr.ph76 ], [ %indvar.next, %.loopexit ] ; 2 uses
  %.sroa.0.075 = phi i64 [ %.sroa.0.0.ph82, %.lr.ph76 ], [ %i.di, %.loopexit ] ; 7 uses
  %i.x = load float, ptr %i.h, align 4, !noundef !27
  %i.y = fcmp ult float %i.x, %.sroa.09.0.ph81
  br i1 %i.y, label %bb.d, label %.outer.loopexit

bb.c:                                             ; preds = %.lr.ph76.lr.ph
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1893) #43
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.z = load i32, ptr %8, align 4, !noundef !27  ; 13 uses
  %i.aa = load i32, ptr %i.i, align 4, !noundef !27 ; 6 uses
  %i.ab = zext i32 %i.z to i64                    ; 6 uses
  %i.ac = zext i32 %i.aa to i64                   ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38946)
  %i.ad = icmp ugt i64 %1, %i.ac
  br i1 %i.ad, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr [2832 x i8], ptr %0, i64 %i.ac ; 8 uses
  %i.af = icmp ugt i64 %1, %i.ab
  br i1 %i.af, label %vector.memcheck, label %bb.g

bb.f:                                             ; preds = %bb.d
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef range(i64 0, 4294967296) %i.ac, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1935) #43, !noalias !38946
  unreachable

vector.memcheck:                                  ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 2816 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !alias.scope !38949, !noundef !27
  %i.ai = getelementptr inbounds nuw [2832 x i8], ptr %0, i64 %i.ab ; 9 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 2816 ; 3 uses
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !38952, !noundef !27
  %i.al = add i64 %i.ak, %i.ah
  store i64 %i.al, ptr %i.aj, align 8, !alias.scope !38955
  %bound0 = icmp ult ptr %i.ai, %i.ag
  %bound1 = icmp ult ptr %i.ae, %i.aj
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph361, label %vector.body363

vector.body363:                                   ; preds = %vector.memcheck, %vector.body363
  %index364 = phi i64 [ %index.next369.1, %vector.body363 ], [ 0, %vector.memcheck ] ; 4 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %index364 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %wide.load365 = load <4 x i32>, ptr %i.am, align 8, !alias.scope !38958, !noalias !38961
  %wide.load366 = load <4 x i32>, ptr %i.an, align 8, !alias.scope !38958, !noalias !38961
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %index364 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %wide.load367 = load <4 x i32>, ptr %i.ao, align 8, !alias.scope !38963
  %wide.load368 = load <4 x i32>, ptr %i.ap, align 8, !alias.scope !38963
  %i.aq = add <4 x i32> %wide.load367, %wide.load365
  %i.ar = add <4 x i32> %wide.load368, %wide.load366
  store <4 x i32> %i.aq, ptr %i.am, align 8, !alias.scope !38958, !noalias !38961
  store <4 x i32> %i.ar, ptr %i.an, align 8, !alias.scope !38958, !noalias !38961
  %index.next369 = or disjoint i64 %index364, 8   ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %index.next369 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 2 uses
  %wide.load365.1 = load <4 x i32>, ptr %i.as, align 8, !alias.scope !38958, !noalias !38961
  %wide.load366.1 = load <4 x i32>, ptr %i.at, align 8, !alias.scope !38958, !noalias !38961
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %index.next369 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %wide.load367.1 = load <4 x i32>, ptr %i.au, align 8, !alias.scope !38963
  %wide.load368.1 = load <4 x i32>, ptr %i.av, align 8, !alias.scope !38963
  %i.aw = add <4 x i32> %wide.load367.1, %wide.load365.1
  %i.ax = add <4 x i32> %wide.load368.1, %wide.load366.1
  store <4 x i32> %i.aw, ptr %i.as, align 8, !alias.scope !38958, !noalias !38961
  store <4 x i32> %i.ax, ptr %i.at, align 8, !alias.scope !38958, !noalias !38961
  %index.next369.1 = add nuw nsw i64 %index364, 16 ; 2 uses
  %i.ay = icmp eq i64 %index.next369.1, 704
  br i1 %i.ay, label %_ZN6brotli3enc9histogram25HistogramSelfAddHistogram17h8ccdc31e791fac2aE.exit, label %vector.body363, !llvm.loop !38964

bb.g:                                             ; preds = %bb.e
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef range(i64 0, 4294967296) %i.ab, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1936) #43, !noalias !38946
  unreachable

scalar.ph361:                                     ; preds = %vector.memcheck, %scalar.ph361
  %.sroa.01.09.i = phi i64 [ %i.br, %scalar.ph361 ], [ 0, %vector.memcheck ] ; 6 uses
  %i.az = or disjoint i64 %.sroa.01.09.i, 1       ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.sroa.01.09.i ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 8, !alias.scope !38946, !noundef !27
end_hunk_12
begin_hunk_13_@_ZN6brotli3enc7cluster27BrotliCompareAndPushToQueue17h0214dbf8139ad6afE:bb.a
  %i.i = zext i32 %i.h to i64                     ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.e
  %i.k = load i32, ptr %i.j, align 4, !noundef !27 ; 3 uses
  %i.l = zext i32 %i.k to i64                     ; 2 uses
  %i.m = add nuw nsw i64 %i.l, %i.i               ; 3 uses
  %i.n = uitofp i32 %i.h to float                 ; 2 uses
  %i.o = icmp ult i32 %i.h, 256
  br i1 %i.o, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = tail call nnan float @llvm.log2.f32(float %i.n)
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.sroa.0.0.i = phi float [ %i.t, %bb.h ], [ %i.p, %bb.f ]
  %i.q = uitofp i32 %i.k to float                 ; 2 uses
  %i.r = icmp ult i32 %i.k, 256
  br i1 %i.r, label %bb.k, label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw [4 x i8], ptr @_ZN6brotli3enc11log_table_86logs_817hcdfb6f7171a9ff1cE, i64 %i.i
  %i.t = load float, ptr %i.s, align 4, !noundef !27
  br label %bb.g

bb.i:                                             ; preds = %bb.g
  %i.u = tail call nnan float @llvm.log2.f32(float %i.q)
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  %.sroa.01.0.i = phi float [ %i.y, %bb.k ], [ %i.u, %bb.i ]
  %i.v = uitofp nneg i64 %i.m to float            ; 2 uses
  %i.w = icmp samesign ult i64 %i.m, 256
  br i1 %i.w, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw [4 x i8], ptr @_ZN6brotli3enc11log_table_86logs_817hcdfb6f7171a9ff1cE, i64 %i.l
  %i.y = load float, ptr %i.x, align 4, !noundef !27
  br label %bb.j

bb.l:                                             ; preds = %bb.j
  %i.z = tail call nnan float @llvm.log2.f32(float %i.v)
  br label %_ZN6brotli3enc7cluster15ClusterCostDiff17h6882c287a27a40caE.exit

bb.m:                                             ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr @_ZN6brotli3enc11log_table_86logs_817hcdfb6f7171a9ff1cE, i64 %i.m
  %i.ab = load float, ptr %i.aa, align 4, !noundef !27
  br label %_ZN6brotli3enc7cluster15ClusterCostDiff17h6882c287a27a40caE.exit

_ZN6brotli3enc7cluster15ClusterCostDiff17h6882c287a27a40caE.exit: ; preds = %bb.l, %bb.m
  %.sroa.02.0.i = phi float [ %i.ab, %bb.m ], [ %i.z, %bb.l ]
  %i.ac = fmul float %.sroa.0.0.i, %i.n
  %i.ad = fmul float %.sroa.01.0.i, %i.q
  %i.ae = fadd float %i.ac, %i.ad
  %i.af = fmul float %.sroa.02.0.i, %i.v
  %i.ag = fsub float %i.ae, %i.af
  %i.ah = icmp ugt i64 %1, %i.c
  br i1 %i.ah, label %bb.o, label %bb.p

bb.n:                                             ; preds = %bb.c
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.e, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1917) #43
  unreachable

bb.o:                                             ; preds = %_ZN6brotli3enc7cluster15ClusterCostDiff17h6882c287a27a40caE.exit
  %i.ai = getelementptr inbounds nuw [1040 x i8], ptr %0, i64 %i.c ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1032
  %i.ak = load float, ptr %i.aj, align 8, !alias.scope !39027, !noundef !27 ; 2 uses
  %i.al = icmp ugt i64 %1, %i.e
  br i1 %i.al, label %bb.q, label %bb.r

bb.p:                                             ; preds = %_ZN6brotli3enc7cluster15ClusterCostDiff17h6882c287a27a40caE.exit
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.c, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1918) #43
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.am = fmul float %i.ag, 5.000000e-01
  %i.an = fsub float %i.am, %i.ak
  %i.ao = getelementptr inbounds nuw [1040 x i8], ptr %0, i64 %i.e ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 1032
  %i.aq = load float, ptr %i.ap, align 8, !alias.scope !39030, !noundef !27 ; 2 uses
  %i.ar = fsub float %i.an, %i.aq                 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 1024
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !39033, !noundef !27
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %._crit_edge, label %bb.t

._crit_edge:                                      ; preds = %bb.q
  %.pre = load i64, ptr %9, align 8
  br label %bb.s

bb.r:                                             ; preds = %bb.o
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.e, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1919) #43
  unreachable

bb.s:                                             ; preds = %_ZN6brotli3enc9histogram21HistogramAddHistogram17h8a3e084d90ebfcb6E.exit, %._crit_edge, %bb.t
  %i.av = phi i64 [ %.pre2, %bb.t ], [ %.pre, %._crit_edge ], [ %.pre2, %_ZN6brotli3enc9histogram21HistogramAddHistogram17h8a3e084d90ebfcb6E.exit ] ; 11 uses
  %.sroa.10.0 = phi float [ %i.ak, %bb.t ], [ %i.aq, %._crit_edge ], [ %i.br, %_ZN6brotli3enc9histogram21HistogramAddHistogram17h8a3e084d90ebfcb6E.exit ] ; 3 uses
  %i.aw = fadd float %i.ar, %.sroa.10.0           ; 4 uses
  %.not55 = icmp eq i64 %i.av, 0
  br i1 %.not55, label %bb.z, label %bb.y

bb.t:                                             ; preds = %bb.q
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ao, i64 1024
  %i.ay = load i64, ptr %i.ax, align 8, !alias.scope !39036, !noundef !27 ; 2 uses
  %i.az = icmp eq i64 %i.ay, 0
  %.pre2 = load i64, ptr %9, align 8              ; 3 uses
  br i1 %i.az, label %bb.s, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ba = icmp eq i64 %.pre2, 0
  br i1 %i.ba, label %vector.ph, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.not = icmp eq i64 %8, 0
  br i1 %.not, label %bb.x, label %bb.w

vector.ph:                                        ; preds = %bb.u, %bb.w
  %.sroa.030.0 = phi float [ %i.bw, %bb.w ], [ f0x7E967699, %bb.u ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1040) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(1040) %i.ai, i64 1040, i1 false), !alias.scope !39039
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 1024 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !alias.scope !39043, !noalias !39046, !noundef !27
  %i.bd = add i64 %i.bc, %i.ay
  store i64 %i.bd, ptr %i.bb, align 8, !alias.scope !39049
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ] ; 4 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.be, align 8
  %wide.load18 = load <4 x i32>, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %index ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %wide.load19 = load <4 x i32>, ptr %i.bg, align 8
  %wide.load20 = load <4 x i32>, ptr %i.bh, align 8
  %i.bi = add <4 x i32> %wide.load19, %wide.load
  %i.bj = add <4 x i32> %wide.load20, %wide.load18
  store <4 x i32> %i.bi, ptr %i.be, align 8
  store <4 x i32> %i.bj, ptr %i.bf, align 8
  %index.next = or disjoint i64 %index, 8         ; 2 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index.next ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 2 uses
  %wide.load.1 = load <4 x i32>, ptr %i.bk, align 8
  %wide.load18.1 = load <4 x i32>, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %index.next ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %wide.load19.1 = load <4 x i32>, ptr %i.bm, align 8
  %wide.load20.1 = load <4 x i32>, ptr %i.bn, align 8
  %i.bo = add <4 x i32> %wide.load19.1, %wide.load.1
  %i.bp = add <4 x i32> %wide.load20.1, %wide.load18.1
  store <4 x i32> %i.bo, ptr %i.bk, align 8
  store <4 x i32> %i.bp, ptr %i.bl, align 8
  %index.next.1 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.bq = icmp eq i64 %index.next.1, 256
  br i1 %i.bq, label %_ZN6brotli3enc9histogram21HistogramAddHistogram17h8a3e084d90ebfcb6E.exit, label %vector.body, !llvm.loop !39052

_ZN6brotli3enc9histogram21HistogramAddHistogram17h8a3e084d90ebfcb6E.exit: ; preds = %vector.body
  %i.br = call fastcc noundef float @_ZN6brotli3enc8bit_cost20BrotliPopulationCost17h56fd6c289f2ade0fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(1040) %i.a) ; 2 uses
  %i.bs = fsub float %.sroa.030.0, %i.ar
  %i.bt = fcmp olt float %i.br, %i.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.bt, label %bb.s, label %bb.al

bb.w:                                             ; preds = %bb.v
  %i.bu = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.bv = load float, ptr %i.bu, align 4, !noundef !27
  %i.bw = tail call float @llvm.maxnum.f32(float %i.bv, float 0.000000e+00)
  br label %vector.ph

bb.x:                                             ; preds = %bb.v
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1920) #43
  unreachable

bb.y:                                             ; preds = %bb.s
  %.not56 = icmp eq i64 %8, 0
  br i1 %.not56, label %bb.ab, label %bb.aa

bb.z:                                             ; preds = %.split, %bb.s, %bb.ac
  %i.bx = icmp ult i64 %i.av, %6
  br i1 %i.bx, label %bb.ae, label %bb.al

bb.aa:                                            ; preds = %bb.y
  %i.by = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 2 uses
  %i.bz = load float, ptr %i.by, align 4, !noundef !27 ; 2 uses
  %i.ca = fcmp une float %i.bz, %i.aw
  br i1 %i.ca, label %.split, label %bb.ac

bb.ab:                                            ; preds = %bb.y
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1921) #43
  unreachable

.split:                                           ; preds = %bb.aa
  %i.cb = fcmp ogt float %i.bz, %i.aw
  br i1 %i.cb, label %bb.ad, label %bb.z

bb.ac:                                            ; preds = %bb.aa
  %i.cc = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.cd = load i32, ptr %i.cc, align 4, !noundef !27
  %i.ce = load i32, ptr %7, align 4, !noundef !27
  %i.cf = sub i32 %i.cd, %i.ce
  %i.cg = sub nuw i32 %spec.select, %spec.select57
  %i.ch = icmp ugt i32 %i.cf, %i.cg
  br i1 %i.ch, label %bb.ad, label %bb.z

bb.ad:                                            ; preds = %.split, %bb.ac
  %i.ci = icmp ult i64 %i.av, %6
  br i1 %i.ci, label %bb.ah, label %bb.ak

bb.ae:                                            ; preds = %bb.z
  %i.cj = icmp ult i64 %i.av, %8
  br i1 %i.cj, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %i.av ; 4 uses
  store i32 %spec.select57, ptr %i.ck, align 4
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  store i32 %spec.select, ptr %.sroa.434.0..sroa_idx, align 4
  %.sroa.535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store float %.sroa.10.0, ptr %.sroa.535.0..sroa_idx, align 4
  %.sroa.636.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 12
  store float %i.aw, ptr %.sroa.636.0..sroa_idx, align 4
  %i.cl = add nuw i64 %i.av, 1
  store i64 %i.cl, ptr %9, align 8
  br label %bb.al

bb.ag:                                            ; preds = %bb.ae
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.av, i64 noundef %8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1922) #43
  unreachable

bb.ah:                                            ; preds = %bb.ad
  %i.cm = icmp ult i64 %i.av, %8
  br i1 %i.cm, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.cn = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %i.av
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cn, ptr noundef nonnull align 4 dereferenceable(16) %7, i64 16, i1 false)
  %i.co = add nuw i64 %i.av, 1
  store i64 %i.co, ptr %9, align 8
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.av, i64 noundef %8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1923) #43
  unreachable

bb.ak:                                            ; preds = %bb.ai, %bb.ad
  store i32 %spec.select57, ptr %7, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %spec.select, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store float %.sroa.10.0, ptr %.sroa.5.0..sroa_idx, align 4
  store float %i.aw, ptr %i.by, align 4
  br label %bb.al

bb.al:                                            ; preds = %_ZN6brotli3enc9histogram21HistogramAddHistogram17h8a3e084d90ebfcb6E.exit, %bb.ak, %bb.z, %bb.af, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN6brotli3enc7cluster27BrotliCompareAndPushToQueue17h32e3a6562c56f671E(ptr noalias noundef nonnull readonly align 8 captures(none) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 4 captures(none) %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i64 noundef %6, ptr noalias nofree noundef nonnull align 4 captures(none) %7, i64 noundef %8, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(8) %9) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [2832 x i8], align 8              ; 7 uses
  %i.b = icmp eq i32 %4, %5
  br i1 %i.b, label %bb.al, label %bb.b

bb.b:                                             ; preds = %bb.a
  %spec.select = tail call i32 @llvm.umax.i32(i32 %5, i32 %4) ; 4 uses
  %spec.select57 = tail call i32 @llvm.umin.i32(i32 %5, i32 %4) ; 4 uses
  %i.c = zext i32 %spec.select57 to i64           ; 6 uses
  %i.d = icmp ugt i64 %3, %i.c
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = zext i32 %spec.select to i64             ; 6 uses
  %i.f = icmp ugt i64 %3, %i.e
  br i1 %i.f, label %bb.e, label %bb.n

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.c, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1916) #43
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.c
  %i.h = load i32, ptr %i.g, align 4, !noundef !27 ; 3 uses
  %i.i = zext i32 %i.h to i64                     ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.e
  %i.k = load i32, ptr %i.j, align 4, !noundef !27 ; 3 uses
  %i.l = zext i32 %i.k to i64                     ; 2 uses
  %i.m = add nuw nsw i64 %i.l, %i.i               ; 3 uses
  %i.n = uitofp i32 %i.h to float                 ; 2 uses
  %i.o = icmp ult i32 %i.h, 256
  br i1 %i.o, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = tail call nnan float @llvm.log2.f32(float %i.n)
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.sroa.0.0.i = phi float [ %i.t, %bb.h ], [ %i.p, %bb.f ]
  %i.q = uitofp i32 %i.k to float                 ; 2 uses
  %i.r = icmp ult i32 %i.k, 256
  br i1 %i.r, label %bb.k, label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw [4 x i8], ptr @_ZN6brotli3enc11log_table_86logs_817hcdfb6f7171a9ff1cE, i64 %i.i
  %i.t = load float, ptr %i.s, align 4, !noundef !27
  br label %bb.g

bb.i:                                             ; preds = %bb.g
  %i.u = tail call nnan float @llvm.log2.f32(float %i.q)
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  %.sroa.01.0.i = phi float [ %i.y, %bb.k ], [ %i.u, %bb.i ]
  %i.v = uitofp nneg i64 %i.m to float            ; 2 uses
  %i.w = icmp samesign ult i64 %i.m, 256
  br i1 %i.w, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw [4 x i8], ptr @_ZN6brotli3enc11log_table_86logs_817hcdfb6f7171a9ff1cE, i64 %i.l
  %i.y = load float, ptr %i.x, align 4, !noundef !27
  br label %bb.j

bb.l:                                             ; preds = %bb.j
  %i.z = tail call nnan float @llvm.log2.f32(float %i.v)
  br label %_ZN6brotli3enc7cluster15ClusterCostDiff17h6882c287a27a40caE.exit

bb.m:                                             ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr @_ZN6brotli3enc11log_table_86logs_817hcdfb6f7171a9ff1cE, i64 %i.m
  %i.ab = load float, ptr %i.aa, align 4, !noundef !27
  br label %_ZN6brotli3enc7cluster15ClusterCostDiff17h6882c287a27a40caE.exit

_ZN6brotli3enc7cluster15ClusterCostDiff17h6882c287a27a40caE.exit: ; preds = %bb.l, %bb.m
  %.sroa.02.0.i = phi float [ %i.ab, %bb.m ], [ %i.z, %bb.l ]
  %i.ac = fmul float %.sroa.0.0.i, %i.n
  %i.ad = fmul float %.sroa.01.0.i, %i.q
  %i.ae = fadd float %i.ac, %i.ad
  %i.af = fmul float %.sroa.02.0.i, %i.v
  %i.ag = fsub float %i.ae, %i.af
  %i.ah = icmp ugt i64 %1, %i.c
  br i1 %i.ah, label %bb.o, label %bb.p

bb.n:                                             ; preds = %bb.c
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.e, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1917) #43
  unreachable

bb.o:                                             ; preds = %_ZN6brotli3enc7cluster15ClusterCostDiff17h6882c287a27a40caE.exit
  %i.ai = getelementptr inbounds nuw [2832 x i8], ptr %0, i64 %i.c ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 2824
  %i.ak = load float, ptr %i.aj, align 8, !alias.scope !39053, !noundef !27 ; 2 uses
  %i.al = icmp ugt i64 %1, %i.e
  br i1 %i.al, label %bb.q, label %bb.r

bb.p:                                             ; preds = %_ZN6brotli3enc7cluster15ClusterCostDiff17h6882c287a27a40caE.exit
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.c, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1918) #43
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.am = fmul float %i.ag, 5.000000e-01
  %i.an = fsub float %i.am, %i.ak
  %i.ao = getelementptr inbounds nuw [2832 x i8], ptr %0, i64 %i.e ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 2824
  %i.aq = load float, ptr %i.ap, align 8, !alias.scope !39056, !noundef !27 ; 2 uses
  %i.ar = fsub float %i.an, %i.aq                 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 2816
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !39059, !noundef !27
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %._crit_edge, label %bb.t

._crit_edge:                                      ; preds = %bb.q
  %.pre = load i64, ptr %9, align 8
  br label %bb.s

bb.r:                                             ; preds = %bb.o
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.e, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1919) #43
  unreachable

bb.s:                                             ; preds = %_ZN6brotli3enc9histogram21HistogramAddHistogram17h186846fca064014bE.exit, %._crit_edge, %bb.t
  %i.av = phi i64 [ %.pre2, %bb.t ], [ %.pre, %._crit_edge ], [ %.pre2, %_ZN6brotli3enc9histogram21HistogramAddHistogram17h186846fca064014bE.exit ] ; 11 uses
  %.sroa.10.0 = phi float [ %i.ak, %bb.t ], [ %i.aq, %._crit_edge ], [ %i.br, %_ZN6brotli3enc9histogram21HistogramAddHistogram17h186846fca064014bE.exit ] ; 3 uses
  %i.aw = fadd float %i.ar, %.sroa.10.0           ; 4 uses
  %.not55 = icmp eq i64 %i.av, 0
  br i1 %.not55, label %bb.z, label %bb.y

bb.t:                                             ; preds = %bb.q
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ao, i64 2816
  %i.ay = load i64, ptr %i.ax, align 8, !alias.scope !39062, !noundef !27 ; 2 uses
  %i.az = icmp eq i64 %i.ay, 0
  %.pre2 = load i64, ptr %9, align 8              ; 3 uses
  br i1 %i.az, label %bb.s, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ba = icmp eq i64 %.pre2, 0
  br i1 %i.ba, label %vector.ph, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.not = icmp eq i64 %8, 0
  br i1 %.not, label %bb.x, label %bb.w

vector.ph:                                        ; preds = %bb.u, %bb.w
  %.sroa.030.0 = phi float [ %i.bw, %bb.w ], [ f0x7E967699, %bb.u ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2832) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(2832) %i.ai, i64 2832, i1 false), !alias.scope !39065
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 2816 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !alias.scope !39069, !noalias !39072, !noundef !27
  %i.bd = add i64 %i.bc, %i.ay
  store i64 %i.bd, ptr %i.bb, align 8, !alias.scope !39075
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ] ; 4 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.be, align 8
  %wide.load18 = load <4 x i32>, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %index ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %wide.load19 = load <4 x i32>, ptr %i.bg, align 8
  %wide.load20 = load <4 x i32>, ptr %i.bh, align 8
  %i.bi = add <4 x i32> %wide.load19, %wide.load
  %i.bj = add <4 x i32> %wide.load20, %wide.load18
  store <4 x i32> %i.bi, ptr %i.be, align 8
  store <4 x i32> %i.bj, ptr %i.bf, align 8
  %index.next = or disjoint i64 %index, 8         ; 2 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index.next ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 2 uses
  %wide.load.1 = load <4 x i32>, ptr %i.bk, align 8
  %wide.load18.1 = load <4 x i32>, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %index.next ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %wide.load19.1 = load <4 x i32>, ptr %i.bm, align 8
  %wide.load20.1 = load <4 x i32>, ptr %i.bn, align 8
  %i.bo = add <4 x i32> %wide.load19.1, %wide.load.1
  %i.bp = add <4 x i32> %wide.load20.1, %wide.load18.1
  store <4 x i32> %i.bo, ptr %i.bk, align 8
  store <4 x i32> %i.bp, ptr %i.bl, align 8
  %index.next.1 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.bq = icmp eq i64 %index.next.1, 704
  br i1 %i.bq, label %_ZN6brotli3enc9histogram21HistogramAddHistogram17h186846fca064014bE.exit, label %vector.body, !llvm.loop !39078

_ZN6brotli3enc9histogram21HistogramAddHistogram17h186846fca064014bE.exit: ; preds = %vector.body
  %i.br = call fastcc noundef float @_ZN6brotli3enc8bit_cost20BrotliPopulationCost17ha8491ed593501ad1E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2832) %i.a) ; 2 uses
  %i.bs = fsub float %.sroa.030.0, %i.ar
  %i.bt = fcmp olt float %i.br, %i.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.bt, label %bb.s, label %bb.al

bb.w:                                             ; preds = %bb.v
  %i.bu = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.bv = load float, ptr %i.bu, align 4, !noundef !27
  %i.bw = tail call float @llvm.maxnum.f32(float %i.bv, float 0.000000e+00)
  br label %vector.ph

bb.x:                                             ; preds = %bb.v
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1920) #43
  unreachable

bb.y:                                             ; preds = %bb.s
  %.not56 = icmp eq i64 %8, 0
  br i1 %.not56, label %bb.ab, label %bb.aa

bb.z:                                             ; preds = %.split, %bb.s, %bb.ac
  %i.bx = icmp ult i64 %i.av, %6
  br i1 %i.bx, label %bb.ae, label %bb.al

bb.aa:                                            ; preds = %bb.y
  %i.by = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 2 uses
  %i.bz = load float, ptr %i.by, align 4, !noundef !27 ; 2 uses
  %i.ca = fcmp une float %i.bz, %i.aw
  br i1 %i.ca, label %.split, label %bb.ac

bb.ab:                                            ; preds = %bb.y
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1921) #43
  unreachable

.split:                                           ; preds = %bb.aa
  %i.cb = fcmp ogt float %i.bz, %i.aw
  br i1 %i.cb, label %bb.ad, label %bb.z

bb.ac:                                            ; preds = %bb.aa
  %i.cc = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.cd = load i32, ptr %i.cc, align 4, !noundef !27
  %i.ce = load i32, ptr %7, align 4, !noundef !27
  %i.cf = sub i32 %i.cd, %i.ce
  %i.cg = sub nuw i32 %spec.select, %spec.select57
  %i.ch = icmp ugt i32 %i.cf, %i.cg
  br i1 %i.ch, label %bb.ad, label %bb.z

bb.ad:                                            ; preds = %.split, %bb.ac
  %i.ci = icmp ult i64 %i.av, %6
  br i1 %i.ci, label %bb.ah, label %bb.ak

bb.ae:                                            ; preds = %bb.z
  %i.cj = icmp ult i64 %i.av, %8
  br i1 %i.cj, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %i.av ; 4 uses
  store i32 %spec.select57, ptr %i.ck, align 4
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  store i32 %spec.select, ptr %.sroa.434.0..sroa_idx, align 4
  %.sroa.535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store float %.sroa.10.0, ptr %.sroa.535.0..sroa_idx, align 4
  %.sroa.636.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 12
  store float %i.aw, ptr %.sroa.636.0..sroa_idx, align 4
  %i.cl = add nuw i64 %i.av, 1
  store i64 %i.cl, ptr %9, align 8
  br label %bb.al

bb.ag:                                            ; preds = %bb.ae
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.av, i64 noundef %8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1922) #43
  unreachable

bb.ah:                                            ; preds = %bb.ad
  %i.cm = icmp ult i64 %i.av, %8
  br i1 %i.cm, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.cn = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %i.av
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cn, ptr noundef nonnull align 4 dereferenceable(16) %7, i64 16, i1 false)
  %i.co = add nuw i64 %i.av, 1
  store i64 %i.co, ptr %9, align 8
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.av, i64 noundef %8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1923) #43
  unreachable

bb.ak:                                            ; preds = %bb.ai, %bb.ad
  store i32 %spec.select57, ptr %7, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %spec.select, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store float %.sroa.10.0, ptr %.sroa.5.0..sroa_idx, align 4
  store float %i.aw, ptr %i.by, align 4
  br label %bb.al

bb.al:                                            ; preds = %_ZN6brotli3enc9histogram21HistogramAddHistogram17h186846fca064014bE.exit, %bb.ak, %bb.z, %bb.af, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN6brotli3enc7cluster27BrotliCompareAndPushToQueue17h766e51aa9200a005E(ptr noalias noundef nonnull readonly align 8 captures(none) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 4 captures(none) %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i64 noundef %6, ptr noalias nofree noundef nonnull align 4 captures(none) %7, i64 noundef %8, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(8) %9) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [2192 x i8], align 8              ; 7 uses
  %i.b = icmp eq i32 %4, %5
  br i1 %i.b, label %bb.al, label %bb.b

bb.b:                                             ; preds = %bb.a
  %spec.select = tail call i32 @llvm.umax.i32(i32 %5, i32 %4) ; 4 uses
  %spec.select57 = tail call i32 @llvm.umin.i32(i32 %5, i32 %4) ; 4 uses
  %i.c = zext i32 %spec.select57 to i64           ; 6 uses
  %i.d = icmp ugt i64 %3, %i.c
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = zext i32 %spec.select to i64             ; 6 uses
  %i.f = icmp ugt i64 %3, %i.e
  br i1 %i.f, label %bb.e, label %bb.n

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.c, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1916) #43
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.c
  %i.h = load i32, ptr %i.g, align 4, !noundef !27 ; 3 uses
  %i.i = zext i32 %i.h to i64                     ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.e
  %i.k = load i32, ptr %i.j, align 4, !noundef !27 ; 3 uses
  %i.l = zext i32 %i.k to i64                     ; 2 uses
  %i.m = add nuw nsw i64 %i.l, %i.i               ; 3 uses
  %i.n = uitofp i32 %i.h to float                 ; 2 uses
  %i.o = icmp ult i32 %i.h, 256
  br i1 %i.o, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = tail call nnan float @llvm.log2.f32(float %i.n)
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.sroa.0.0.i = phi float [ %i.t, %bb.h ], [ %i.p, %bb.f ]
  %i.q = uitofp i32 %i.k to float                 ; 2 uses
  %i.r = icmp ult i32 %i.k, 256
  br i1 %i.r, label %bb.k, label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw [4 x i8], ptr @_ZN6brotli3enc11log_table_86logs_817hcdfb6f7171a9ff1cE, i64 %i.i
  %i.t = load float, ptr %i.s, align 4, !noundef !27
  br label %bb.g

bb.i:                                             ; preds = %bb.g
  %i.u = tail call nnan float @llvm.log2.f32(float %i.q)
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  %.sroa.01.0.i = phi float [ %i.y, %bb.k ], [ %i.u, %bb.i ]
  %i.v = uitofp nneg i64 %i.m to float            ; 2 uses
  %i.w = icmp samesign ult i64 %i.m, 256
  br i1 %i.w, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw [4 x i8], ptr @_ZN6brotli3enc11log_table_86logs_817hcdfb6f7171a9ff1cE, i64 %i.l
  %i.y = load float, ptr %i.x, align 4, !noundef !27
  br label %bb.j

bb.l:                                             ; preds = %bb.j
  %i.z = tail call nnan float @llvm.log2.f32(float %i.v)
  br label %_ZN6brotli3enc7cluster15ClusterCostDiff17h6882c287a27a40caE.exit

bb.m:                                             ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr @_ZN6brotli3enc11log_table_86logs_817hcdfb6f7171a9ff1cE, i64 %i.m
  %i.ab = load float, ptr %i.aa, align 4, !noundef !27
  br label %_ZN6brotli3enc7cluster15ClusterCostDiff17h6882c287a27a40caE.exit

_ZN6brotli3enc7cluster15ClusterCostDiff17h6882c287a27a40caE.exit: ; preds = %bb.l, %bb.m
  %.sroa.02.0.i = phi float [ %i.ab, %bb.m ], [ %i.z, %bb.l ]
  %i.ac = fmul float %.sroa.0.0.i, %i.n
  %i.ad = fmul float %.sroa.01.0.i, %i.q
  %i.ae = fadd float %i.ac, %i.ad
  %i.af = fmul float %.sroa.02.0.i, %i.v
  %i.ag = fsub float %i.ae, %i.af
  %i.ah = icmp ugt i64 %1, %i.c
  br i1 %i.ah, label %bb.o, label %bb.p

bb.n:                                             ; preds = %bb.c
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.e, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1917) #43
  unreachable

bb.o:                                             ; preds = %_ZN6brotli3enc7cluster15ClusterCostDiff17h6882c287a27a40caE.exit
  %i.ai = getelementptr inbounds nuw [2192 x i8], ptr %0, i64 %i.c ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 2184
  %i.ak = load float, ptr %i.aj, align 8, !alias.scope !39079, !noundef !27 ; 2 uses
  %i.al = icmp ugt i64 %1, %i.e
  br i1 %i.al, label %bb.q, label %bb.r

bb.p:                                             ; preds = %_ZN6brotli3enc7cluster15ClusterCostDiff17h6882c287a27a40caE.exit
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.c, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1918) #43
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.am = fmul float %i.ag, 5.000000e-01
  %i.an = fsub float %i.am, %i.ak
  %i.ao = getelementptr inbounds nuw [2192 x i8], ptr %0, i64 %i.e ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 2184
  %i.aq = load float, ptr %i.ap, align 8, !alias.scope !39082, !noundef !27 ; 2 uses
  %i.ar = fsub float %i.an, %i.aq                 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 2176
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !39085, !noundef !27
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %._crit_edge, label %bb.t

._crit_edge:                                      ; preds = %bb.q
  %.pre = load i64, ptr %9, align 8
  br label %bb.s

bb.r:                                             ; preds = %bb.o
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.e, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1919) #43
  unreachable

bb.s:                                             ; preds = %_ZN6brotli3enc9histogram21HistogramAddHistogram17hbf6f595fe81a9aafE.exit, %._crit_edge, %bb.t
  %i.av = phi i64 [ %.pre2, %bb.t ], [ %.pre, %._crit_edge ], [ %.pre2, %_ZN6brotli3enc9histogram21HistogramAddHistogram17hbf6f595fe81a9aafE.exit ] ; 11 uses
  %.sroa.10.0 = phi float [ %i.ak, %bb.t ], [ %i.aq, %._crit_edge ], [ %i.br, %_ZN6brotli3enc9histogram21HistogramAddHistogram17hbf6f595fe81a9aafE.exit ] ; 3 uses
  %i.aw = fadd float %i.ar, %.sroa.10.0           ; 4 uses
  %.not55 = icmp eq i64 %i.av, 0
  br i1 %.not55, label %bb.z, label %bb.y

bb.t:                                             ; preds = %bb.q
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ao, i64 2176
  %i.ay = load i64, ptr %i.ax, align 8, !alias.scope !39088, !noundef !27 ; 2 uses
  %i.az = icmp eq i64 %i.ay, 0
  %.pre2 = load i64, ptr %9, align 8              ; 3 uses
  br i1 %i.az, label %bb.s, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ba = icmp eq i64 %.pre2, 0
  br i1 %i.ba, label %vector.ph, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.not = icmp eq i64 %8, 0
  br i1 %.not, label %bb.x, label %bb.w

vector.ph:                                        ; preds = %bb.u, %bb.w
  %.sroa.030.0 = phi float [ %i.bw, %bb.w ], [ f0x7E967699, %bb.u ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2192) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(2192) %i.ai, i64 2192, i1 false), !alias.scope !39091
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 2176 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !alias.scope !39095, !noalias !39098, !noundef !27
  %i.bd = add i64 %i.bc, %i.ay
  store i64 %i.bd, ptr %i.bb, align 8, !alias.scope !39101
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ] ; 4 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.be, align 8
  %wide.load18 = load <4 x i32>, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %index ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %wide.load19 = load <4 x i32>, ptr %i.bg, align 8
  %wide.load20 = load <4 x i32>, ptr %i.bh, align 8
  %i.bi = add <4 x i32> %wide.load19, %wide.load
  %i.bj = add <4 x i32> %wide.load20, %wide.load18
  store <4 x i32> %i.bi, ptr %i.be, align 8
  store <4 x i32> %i.bj, ptr %i.bf, align 8
  %index.next = or disjoint i64 %index, 8         ; 2 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index.next ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 2 uses
  %wide.load.1 = load <4 x i32>, ptr %i.bk, align 8
  %wide.load18.1 = load <4 x i32>, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %index.next ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %wide.load19.1 = load <4 x i32>, ptr %i.bm, align 8
  %wide.load20.1 = load <4 x i32>, ptr %i.bn, align 8
  %i.bo = add <4 x i32> %wide.load19.1, %wide.load.1
  %i.bp = add <4 x i32> %wide.load20.1, %wide.load18.1
  store <4 x i32> %i.bo, ptr %i.bk, align 8
  store <4 x i32> %i.bp, ptr %i.bl, align 8
  %index.next.1 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.bq = icmp eq i64 %index.next.1, 544
  br i1 %i.bq, label %_ZN6brotli3enc9histogram21HistogramAddHistogram17hbf6f595fe81a9aafE.exit, label %vector.body, !llvm.loop !39104

_ZN6brotli3enc9histogram21HistogramAddHistogram17hbf6f595fe81a9aafE.exit: ; preds = %vector.body
  %i.br = call fastcc noundef float @_ZN6brotli3enc8bit_cost20BrotliPopulationCost17h6e6faa88087b3713E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2192) %i.a) ; 2 uses
  %i.bs = fsub float %.sroa.030.0, %i.ar
  %i.bt = fcmp olt float %i.br, %i.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.bt, label %bb.s, label %bb.al

bb.w:                                             ; preds = %bb.v
  %i.bu = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.bv = load float, ptr %i.bu, align 4, !noundef !27
  %i.bw = tail call float @llvm.maxnum.f32(float %i.bv, float 0.000000e+00)
  br label %vector.ph

bb.x:                                             ; preds = %bb.v
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1920) #43
  unreachable

bb.y:                                             ; preds = %bb.s
  %.not56 = icmp eq i64 %8, 0
  br i1 %.not56, label %bb.ab, label %bb.aa

bb.z:                                             ; preds = %.split, %bb.s, %bb.ac
  %i.bx = icmp ult i64 %i.av, %6
  br i1 %i.bx, label %bb.ae, label %bb.al

bb.aa:                                            ; preds = %bb.y
  %i.by = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 2 uses
  %i.bz = load float, ptr %i.by, align 4, !noundef !27 ; 2 uses
  %i.ca = fcmp une float %i.bz, %i.aw
  br i1 %i.ca, label %.split, label %bb.ac

bb.ab:                                            ; preds = %bb.y
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1921) #43
  unreachable

.split:                                           ; preds = %bb.aa
  %i.cb = fcmp ogt float %i.bz, %i.aw
  br i1 %i.cb, label %bb.ad, label %bb.z

bb.ac:                                            ; preds = %bb.aa
  %i.cc = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.cd = load i32, ptr %i.cc, align 4, !noundef !27
  %i.ce = load i32, ptr %7, align 4, !noundef !27
  %i.cf = sub i32 %i.cd, %i.ce
  %i.cg = sub nuw i32 %spec.select, %spec.select57
  %i.ch = icmp ugt i32 %i.cf, %i.cg
  br i1 %i.ch, label %bb.ad, label %bb.z

bb.ad:                                            ; preds = %.split, %bb.ac
  %i.ci = icmp ult i64 %i.av, %6
  br i1 %i.ci, label %bb.ah, label %bb.ak

bb.ae:                                            ; preds = %bb.z
  %i.cj = icmp ult i64 %i.av, %8
  br i1 %i.cj, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %i.av ; 4 uses
  store i32 %spec.select57, ptr %i.ck, align 4
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  store i32 %spec.select, ptr %.sroa.434.0..sroa_idx, align 4
  %.sroa.535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store float %.sroa.10.0, ptr %.sroa.535.0..sroa_idx, align 4
  %.sroa.636.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 12
  store float %i.aw, ptr %.sroa.636.0..sroa_idx, align 4
  %i.cl = add nuw i64 %i.av, 1
  store i64 %i.cl, ptr %9, align 8
  br label %bb.al

bb.ag:                                            ; preds = %bb.ae
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.av, i64 noundef %8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1922) #43
  unreachable

bb.ah:                                            ; preds = %bb.ad
  %i.cm = icmp ult i64 %i.av, %8
  br i1 %i.cm, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.cn = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %i.av
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cn, ptr noundef nonnull align 4 dereferenceable(16) %7, i64 16, i1 false)
  %i.co = add nuw i64 %i.av, 1
  store i64 %i.co, ptr %9, align 8
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.av, i64 noundef %8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1923) #43
  unreachable

bb.ak:                                            ; preds = %bb.ai, %bb.ad
  store i32 %spec.select57, ptr %7, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %spec.select, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store float %.sroa.10.0, ptr %.sroa.5.0..sroa_idx, align 4
  store float %i.aw, ptr %i.by, align 4
  br label %bb.al

bb.al:                                            ; preds = %_ZN6brotli3enc9histogram21HistogramAddHistogram17hbf6f595fe81a9aafE.exit, %bb.ak, %bb.z, %bb.af, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef float @_ZN6brotli3enc8bit_cost20BrotliPopulationCost17h56fd6c289f2ade0fE(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(1040) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 4                ; 8 uses
  %i.b = alloca [40 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, i8 0, i64 40, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !39105, !noundef !27 ; 5 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.r, label %.preheader4

.preheader4:                                      ; preds = %bb.a, %bb.f
  %i.f = phi i64 [ %i.q, %bb.f ], [ 1, %bb.a ]    ; 4 uses
  %.sroa.01.08 = phi i64 [ %.sroa.01.2.1, %bb.f ], [ 0, %bb.a ] ; 6 uses
  %.sroa.038.07 = phi i64 [ %i.j, %bb.f ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.038.07
  %i.h = load i32, ptr %i.g, align 4, !noundef !27
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %.preheader4.1, label %bb.c

bb.b:                                             ; preds = %bb.f
  switch i64 %.sroa.01.2.1, label %.thread [
    i64 1, label %bb.r
    i64 2, label %bb.i
    i64 3, label %bb.j
    i64 4, label %bb.k
  ]

bb.c:                                             ; preds = %.preheader4
  %i.i = icmp samesign ult i64 %.sroa.01.08, 5
  br i1 %i.i, label %bb.g, label %bb.h

.preheader4.1:                                    ; preds = %bb.g, %.preheader4
  %.sroa.01.2 = phi i64 [ %i.s, %bb.g ], [ %.sroa.01.08, %.preheader4 ] ; 6 uses
  %i.j = add nuw nsw i64 %i.f, 1
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.f
  %i.l = load i32, ptr %i.k, align 4, !noundef !27
  %.not.1 = icmp eq i32 %i.l, 0
  br i1 %.not.1, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.preheader4.1
  %i.m = icmp samesign ult i64 %.sroa.01.2, 5
  br i1 %i.m, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.01.2
  store i64 %i.f, ptr %i.n, align 8
  %i.o = add nuw nsw i64 %.sroa.01.2, 1
  %i.p = icmp eq i64 %.sroa.01.2, 4
  br i1 %i.p, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e, %.preheader4.1
  %.sroa.01.2.1 = phi i64 [ %i.o, %bb.e ], [ %.sroa.01.2, %.preheader4.1 ] ; 2 uses
  %i.q = add nuw nsw i64 %i.f, 2                  ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.q, 257
  br i1 %exitcond.not.1, label %bb.b, label %.preheader4

bb.g:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.01.08
  store i64 %.sroa.038.07, ptr %i.r, align 8
  %i.s = add nuw nsw i64 %.sroa.01.08, 1
  %i.t = icmp eq i64 %.sroa.01.08, 4
  br i1 %i.t, label %.thread, label %.preheader4.1

bb.h:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.08.lcssa = phi i64 [ %.sroa.01.08, %bb.c ], [ %.sroa.01.2, %bb.d ]
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.01.08.lcssa, i64 noundef 5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1925) #43
  unreachable

.thread:                                          ; preds = %bb.g, %bb.e, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %i.a, i8 0, i64 72, i1 false)
  %i.u = icmp ult i64 %i.d, 256
  br i1 %i.u, label %bb.y, label %bb.w

bb.i:                                             ; preds = %bb.b
  %i.v = uitofp i64 %i.d to float
  %i.w = fadd float %i.v, 2.000000e+01
  br label %bb.r

bb.j:                                             ; preds = %bb.b
  %i.x = load i64, ptr %i.b, align 8, !noundef !27 ; 3 uses
  %i.y = icmp ult i64 %i.x, 256
  br i1 %i.y, label %bb.l, label %bb.m

bb.k:                                             ; preds = %bb.b
  %i.z = load i64, ptr %i.b, align 8, !noundef !27 ; 3 uses
  %i.aa = icmp ult i64 %i.z, 256
  br i1 %i.aa, label %bb.t, label %bb.s

bb.l:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.x
  %i.ac = load i32, ptr %i.ab, align 4, !noundef !27 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !27 ; 3 uses
  %i.af = icmp ult i64 %i.ae, 256
  br i1 %i.af, label %bb.n, label %bb.o

bb.m:                                             ; preds = %bb.j
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.x, i64 noundef 256, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1926) #43
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !noundef !27 ; 3 uses
  %i.ai = icmp ult i64 %i.ah, 256
  br i1 %i.ai, label %bb.p, label %bb.q

bb.o:                                             ; preds = %bb.l
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ae, i64 noundef 256, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1927) #43
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ae
  %i.ak = load i32, ptr %i.aj, align 4, !noundef !27 ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ah
  %i.am = load i32, ptr %i.al, align 4, !noundef !27 ; 2 uses
  %.sroa.0.0.i = tail call noundef i32 @llvm.umax.i32(i32 %i.am, i32 %i.ak)
  %.sroa.0.0.i71 = tail call noundef i32 @llvm.umax.i32(i32 %.sroa.0.0.i, i32 %i.ac)
  %i.an = add i32 %i.ak, %i.ac
  %i.ao = add i32 %i.an, %i.am
  %i.ap = shl i32 %i.ao, 1
  %i.aq = uitofp i32 %i.ap to float
  %i.ar = fadd float %i.aq, 2.800000e+01
  %i.as = uitofp i32 %.sroa.0.0.i71 to float
  %i.at = fsub float %i.ar, %i.as
  br label %bb.r

bb.q:                                             ; preds = %bb.n
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ah, i64 noundef 256, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1928) #43
  unreachable

.lr.ph:                                           ; preds = %bb.v
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bq
  %i.av = load i32, ptr %i.au, align 4, !noundef !27 ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bt
  %i.ax = load i32, ptr %i.aw, align 4, !noundef !27 ; 2 uses
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.bo, i32 %i.bj) ; 2 uses
  %spec.select85 = tail call i32 @llvm.umin.i32(i32 %i.bo, i32 %i.bj) ; 2 uses
  %.sroa.0.2 = tail call i32 @llvm.umax.i32(i32 %i.av, i32 %spec.select) ; 2 uses
  %.sroa.19.5 = tail call i32 @llvm.umin.i32(i32 %i.av, i32 %spec.select) ; 2 uses
  %.sroa.0.3 = tail call i32 @llvm.umax.i32(i32 %i.ax, i32 %.sroa.0.2) ; 2 uses
  %.sroa.27.5 = tail call i32 @llvm.umin.i32(i32 %i.ax, i32 %.sroa.0.2) ; 2 uses
end_hunk_13
begin_hunk_14_@"_ZN73_$LT$indexmap..inner..Core$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$10clone_from17hdb4f672457e046a6E":bb.a
  %i.cs = sub nsw i64 %i.cm, %i.cq
  tail call fastcc void @"_ZN8indexmap5inner17Core$LT$K$C$V$GT$15reserve_entries17h4bf27c1e01d5462aE"(ptr noalias noundef align 8 dereferenceable(56) %0, i64 noundef %i.cs)
  br label %bb.o

bb.o:                                             ; preds = %"_ZN76_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$10clone_from17h3ac5d4eae2d40ac0E.exit", %bb.n
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39649)
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !alias.scope !39649, !noalias !39652, !nonnull !27, !noundef !27 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39654)
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.cw = load i64, ptr %i.cv, align 8, !alias.scope !39654, !noalias !39657, !noundef !27 ; 4 uses
  %i.cx = icmp ugt i64 %i.cm, %i.cw
  br i1 %i.cx, label %"._ZN4core3ptr103drop_in_place$LT$$u5b$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$u5d$$GT$17hb95c9bb0b8ddab51E.exit.i.thread_crit_edge", label %bb.p

"._ZN4core3ptr103drop_in_place$LT$$u5b$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$u5d$$GT$17hb95c9bb0b8ddab51E.exit.i.thread_crit_edge": ; preds = %bb.o
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre109 = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !39654, !noalias !39657
  br label %"_ZN4core3ptr103drop_in_place$LT$$u5b$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$u5d$$GT$17hb95c9bb0b8ddab51E.exit.i.thread"

bb.p:                                             ; preds = %bb.o
  %i.cy = sub nuw i64 %i.cw, %i.cm                ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !alias.scope !39654, !noalias !39657, !nonnull !27, !noundef !27 ; 3 uses
  %i.db = getelementptr inbounds nuw [104 x i8], ptr %i.da, i64 %i.cm ; 2 uses
  store i64 %i.cm, ptr %i.cv, align 8, !alias.scope !39654, !noalias !39657
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39659), !noalias !39649
  %i.dc = icmp eq i64 %i.cw, %i.cm
  br i1 %i.dc, label %"_ZN4core3ptr103drop_in_place$LT$$u5b$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$u5d$$GT$17hb95c9bb0b8ddab51E.exit.i.thread", label %.lr.ph151

"_ZN4core3ptr93drop_in_place$LT$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h5c3d78b59fcbabc0E.exit.i.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i.i"
  %i.dd = icmp eq i64 %i.df, %i.cy
  br i1 %i.dd, label %"_ZN4core3ptr103drop_in_place$LT$$u5b$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$u5d$$GT$17hb95c9bb0b8ddab51E.exit.i.thread", label %.lr.ph151

.lr.ph151:                                        ; preds = %bb.p, %"_ZN4core3ptr93drop_in_place$LT$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h5c3d78b59fcbabc0E.exit.i.i"
  %.sroa.0.0.i.i150 = phi i64 [ %i.df, %"_ZN4core3ptr93drop_in_place$LT$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h5c3d78b59fcbabc0E.exit.i.i" ], [ 0, %bb.p ] ; 2 uses
  %i.de = getelementptr inbounds nuw [104 x i8], ptr %i.db, i64 %.sroa.0.0.i.i150 ; 3 uses
  %i.df = add i64 %.sroa.0.0.i.i150, 1            ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39662), !noalias !39649
  %.val.i.i.i = load i64, ptr %i.de, align 8, !alias.scope !39665, !noalias !39666
  %i.dg = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.dg, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i.i", label %bb.q

bb.q:                                             ; preds = %.lr.ph151
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %.val1.i.i.i = load ptr, ptr %i.dh, align 8, !alias.scope !39665, !noalias !39666, !nonnull !27, !noundef !27
  tail call void @mi_free(ptr noundef nonnull %.val1.i.i.i) #38, !noalias !39667, !inline_history !39668
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i.i": ; preds = %bb.q, %.lr.ph151
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h41dc6884427696aaE"(ptr noalias noundef readonly align 8 dereferenceable(72) %i.di)
          to label %"_ZN4core3ptr93drop_in_place$LT$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h5c3d78b59fcbabc0E.exit.i.i" unwind label %.body.i.i, !noalias !39666, !inline_history !39669

bb.r:                                             ; preds = %.lr.ph153
  %i.dj = add i64 %.sroa.0.1.i.i152, 1            ; 2 uses
  %i.dk = icmp eq i64 %i.dj, %i.cy
  br i1 %i.dk, label %common.resume82, label %.lr.ph153

.body.i.i:                                        ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i.i"
  %i.dl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dm = icmp eq i64 %i.df, %i.cy
  br i1 %i.dm, label %common.resume82, label %.lr.ph153

.lr.ph153:                                        ; preds = %.body.i.i, %bb.r
  %.sroa.0.1.i.i152 = phi i64 [ %i.dj, %bb.r ], [ %i.df, %.body.i.i ] ; 2 uses
  %i.dn = getelementptr inbounds nuw [104 x i8], ptr %i.db, i64 %.sroa.0.1.i.i152
  invoke fastcc void @"_ZN4core3ptr93drop_in_place$LT$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h5c3d78b59fcbabc0E"(ptr noalias noundef readonly align 8 dereferenceable(104) %i.dn) #44
          to label %bb.r unwind label %bb.s, !noalias !39666, !inline_history !39668

bb.s:                                             ; preds = %.lr.ph153
  %i.do = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45, !noalias !39670, !inline_history !39668
  unreachable

"_ZN4core3ptr103drop_in_place$LT$$u5b$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$u5d$$GT$17hb95c9bb0b8ddab51E.exit.i.thread": ; preds = %"_ZN4core3ptr93drop_in_place$LT$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h5c3d78b59fcbabc0E.exit.i.i", %bb.p, %"._ZN4core3ptr103drop_in_place$LT$$u5b$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$u5d$$GT$17hb95c9bb0b8ddab51E.exit.i.thread_crit_edge"
  %i.dp = phi ptr [ %.pre109, %"._ZN4core3ptr103drop_in_place$LT$$u5b$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$u5d$$GT$17hb95c9bb0b8ddab51E.exit.i.thread_crit_edge" ], [ %i.da, %bb.p ], [ %i.da, %"_ZN4core3ptr93drop_in_place$LT$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h5c3d78b59fcbabc0E.exit.i.i" ] ; 2 uses
  %i.dq = phi i64 [ %i.cw, %"._ZN4core3ptr103drop_in_place$LT$$u5b$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$u5d$$GT$17hb95c9bb0b8ddab51E.exit.i.thread_crit_edge" ], [ %i.cm, %bb.p ], [ %i.cm, %"_ZN4core3ptr93drop_in_place$LT$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h5c3d78b59fcbabc0E.exit.i.i" ] ; 7 uses
  %.idx29 = mul nuw nsw i64 %i.dq, 104
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cu, i64 %.idx29
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.not = icmp eq i64 %i.dq, 0
  br i1 %.not, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17hb53f78d293d0ad16E.exit.i", label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %"_ZN4core3ptr103drop_in_place$LT$$u5b$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$u5d$$GT$17hb95c9bb0b8ddab51E.exit.i.thread"
  %i.dt = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.du = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %"_ZN68_$LT$indexmap..Bucket$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$10clone_from17h1297d9ae55936d40E.exit"
  %.sroa.0.0.i3.i38 = phi i64 [ %i.eq, %"_ZN68_$LT$indexmap..Bucket$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$10clone_from17h1297d9ae55936d40E.exit" ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.dv = getelementptr inbounds nuw [104 x i8], ptr %i.dp, i64 %.sroa.0.0.i3.i38 ; 3 uses
  %i.dw = getelementptr inbounds nuw [104 x i8], ptr %i.cu, i64 %.sroa.0.0.i3.i38 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39671)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39674)
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 96
  %i.dy = load i64, ptr %i.dx, align 8, !alias.scope !39674, !noalias !39676, !noundef !27
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 96
  store i64 %i.dy, ptr %i.dz, align 8, !alias.scope !39671, !noalias !39677
  tail call void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$10clone_from17h3b1113510cb58582E"(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.dv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.dw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1475), !noalias !39678, !inline_history !39679
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dv, i64 24 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dw, i64 24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !39680
  call void @llvm.experimental.noalias.scope.decl(metadata !39684)
  call void @llvm.experimental.noalias.scope.decl(metadata !39687)
  %i.ec = load i64, ptr %i.eb, align 8, !range !3235, !alias.scope !39687, !noalias !39689, !noundef !27 ; 2 uses
  %i.ed = xor i64 %i.ec, -9223372036854775808
  %i.ee = icmp slt i64 %i.ec, 0
  %i.ef = select i1 %i.ee, i64 %i.ed, i64 5
  switch i64 %i.ef, label %bb.t [
    i64 0, label %bb.u
    i64 1, label %bb.v
    i64 2, label %bb.w
    i64 3, label %bb.x
    i64 4, label %bb.y
    i64 5, label %bb.z
  ]

bb.t:                                             ; preds = %.lr.ph
  unreachable

bb.u:                                             ; preds = %.lr.ph
  store i64 -9223372036854775808, ptr %i.e, align 8, !alias.scope !39684, !noalias !39690
  br label %"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h065ff73d52a9cb78E.exit"

bb.v:                                             ; preds = %.lr.ph
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.eb, i64 72, i1 false), !alias.scope !39691, !noalias !39692
  br label %"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h065ff73d52a9cb78E.exit"

bb.w:                                             ; preds = %.lr.ph
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.eb, i64 72, i1 false), !alias.scope !39691, !noalias !39692
  br label %"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h065ff73d52a9cb78E.exit"

bb.x:                                             ; preds = %.lr.ph
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dw, i64 32
  call void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.du, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.eg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1402), !noalias !39692, !inline_history !39693
  store i64 -9223372036854775805, ptr %i.e, align 8, !alias.scope !39684, !noalias !39690
  br label %"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h065ff73d52a9cb78E.exit"

bb.y:                                             ; preds = %.lr.ph
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dw, i64 48
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dw, i64 40
  %i.ej = load ptr, ptr %i.ei, align 8, !alias.scope !39694, !noalias !39697, !nonnull !27, !noundef !27
  %i.ek = load i64, ptr %i.eh, align 8, !alias.scope !39694, !noalias !39697, !noundef !27
  call fastcc void @"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hd8d25ff8c983adfeE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.du, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ej, i64 noundef %i.ek), !noalias !39690, !inline_history !39693
  store i64 -9223372036854775804, ptr %i.e, align 8, !alias.scope !39684, !noalias !39690
  br label %"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h065ff73d52a9cb78E.exit"

bb.z:                                             ; preds = %.lr.ph
  call void @llvm.experimental.noalias.scope.decl(metadata !39699), !noalias !39692
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !39702
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dt, ptr noundef nonnull align 8 dereferenceable(32) @86, i64 32, i1 false), !noalias !39702
  store i64 0, ptr %i.b, align 8, !noalias !39702
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !39702
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !39702
  invoke fastcc void @"_ZN73_$LT$indexmap..inner..Core$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$10clone_from17hdb4f672457e046a6E"(ptr noalias noundef align 8 dereferenceable(56) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.eb)
          to label %"_ZN79_$LT$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0d3ab4d5721ea478E.exit.i" unwind label %bb.aa, !noalias !39709, !inline_history !39710

bb.aa:                                            ; preds = %bb.z
  %i.el = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr98drop_in_place$LT$indexmap..inner..Core$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h00ef09d73cf7b48fE"(ptr noalias noundef align 8 dereferenceable(56) %i.b) #44
          to label %common.resume82 unwind label %bb.ab, !noalias !39711, !inline_history !39710

bb.ab:                                            ; preds = %bb.aa
  %i.em = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45, !noalias !39711, !inline_history !39710
  unreachable

"_ZN79_$LT$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0d3ab4d5721ea478E.exit.i": ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false), !noalias !39690
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !39702
  %i.en = getelementptr inbounds nuw i8, ptr %i.dw, i64 80
  %i.eo = load <2 x i64>, ptr %i.en, align 8, !alias.scope !39712, !noalias !39713
  store <2 x i64> %i.eo, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !39684, !noalias !39690
  br label %"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h065ff73d52a9cb78E.exit"

"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h065ff73d52a9cb78E.exit": ; preds = %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %"_ZN79_$LT$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0d3ab4d5721ea478E.exit.i"
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h41dc6884427696aaE"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.ea)
          to label %"_ZN68_$LT$indexmap..Bucket$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$10clone_from17h1297d9ae55936d40E.exit" unwind label %bb.ac, !noalias !39678, !inline_history !39714

bb.ac:                                            ; preds = %"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h065ff73d52a9cb78E.exit"
  %i.ep = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ea, ptr noundef nonnull align 8 dereferenceable(72) %i.e, i64 72, i1 false), !noalias !39715
  br label %common.resume82

"_ZN68_$LT$indexmap..Bucket$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$10clone_from17h1297d9ae55936d40E.exit": ; preds = %"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h065ff73d52a9cb78E.exit"
  %i.eq = add nuw nsw i64 %.sroa.0.0.i3.i38, 1    ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ea, ptr noundef nonnull align 8 dereferenceable(72) %i.e, i64 72, i1 false), !noalias !39715
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !39680
  %exitcond.not = icmp eq i64 %i.eq, %i.dq
  br i1 %exitcond.not, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17hb53f78d293d0ad16E.exit.i", label %.lr.ph

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17hb53f78d293d0ad16E.exit.i": ; preds = %"_ZN68_$LT$indexmap..Bucket$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$10clone_from17h1297d9ae55936d40E.exit", %"_ZN4core3ptr103drop_in_place$LT$$u5b$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$u5d$$GT$17hb95c9bb0b8ddab51E.exit.i.thread"
  %.idx30 = sub nuw nsw i64 %i.cm, %i.dq          ; 3 uses
  %i.er = load i64, ptr %0, align 8, !range !28, !alias.scope !39716, !noalias !39649, !noundef !27
  %i.es = sub nsw i64 %i.er, %i.dq
  %i.et = icmp ugt i64 %.idx30, %i.es
  br i1 %i.et, label %bb.ad, label %bb.ae, !prof !29

bb.ad:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17hb53f78d293d0ad16E.exit.i"
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hef594eaabfc18d82E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.dq, i64 noundef %.idx30, i64 noundef 8, i64 noundef 104), !noalias !39649, !inline_history !39721
  %.pre = load ptr, ptr %i.ds, align 8, !alias.scope !39722, !noalias !39649
  br label %bb.ae

.body:                                            ; preds = %.body80, %bb.ar, %bb.af
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ez, %bb.af ], [ %eh.lpad-body, %bb.ar ], [ %eh.lpad-body, %.body80 ]
  store i64 %.sroa.617.0, ptr %i.cv, align 8, !noalias !39725
  br label %common.resume82

bb.ae:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17hb53f78d293d0ad16E.exit.i", %bb.ad
  %i.eu = phi ptr [ %i.dp, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17hb53f78d293d0ad16E.exit.i" ], [ %.pre, %bb.ad ]
  %i.ev = icmp eq i64 %i.dq, %i.cm
  br i1 %i.ev, label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h8305f58903ae0ae8E.exit", label %.preheader

.preheader:                                       ; preds = %bb.ae
  %i.ew = load i64, ptr %i.cv, align 8, !alias.scope !39722, !noalias !39649, !noundef !27
  %.sroa.021.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.021, i64 24
  %i.ex = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.4.0..sroa_idx.i.i.i72 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx.i.i.i73 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.42.0..sroa_idx.i77 = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.ey = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  br label %bb.ag

bb.af:                                            ; preds = %bb.ag
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ag:                                            ; preds = %.preheader, %_ZN4core3ops8function5FnMut8call_mut17h454f304c85c11aeaE.exit.i
  %.sroa.617.0 = phi i64 [ %i.fv, %_ZN4core3ops8function5FnMut8call_mut17h454f304c85c11aeaE.exit.i ], [ %i.ew, %.preheader ] ; 3 uses
  %.sroa.06.0.i = phi i64 [ %i.fw, %_ZN4core3ops8function5FnMut8call_mut17h454f304c85c11aeaE.exit.i ], [ 0, %.preheader ] ; 2 uses
  %i.fa = getelementptr inbounds nuw [104 x i8], ptr %i.dr, i64 %.sroa.06.0.i ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !39732), !noalias !39735
  call void @llvm.experimental.noalias.scope.decl(metadata !39736), !noalias !39735
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 96
  %i.fc = load i64, ptr %i.fb, align 8, !alias.scope !39739, !noalias !39740, !noundef !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !39743
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.fa, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1476)
          to label %.noexc.i3 unwind label %bb.af, !noalias !39725, !inline_history !39744

.noexc.i3:                                        ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !39743
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 24 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !39745)
  call void @llvm.experimental.noalias.scope.decl(metadata !39748)
  %i.fe = load i64, ptr %i.fd, align 8, !range !3235, !alias.scope !39748, !noalias !39750, !noundef !27 ; 2 uses
  %i.ff = xor i64 %i.fe, -9223372036854775808
  %i.fg = icmp slt i64 %i.fe, 0
  %i.fh = select i1 %i.fg, i64 %i.ff, i64 5
  switch i64 %i.fh, label %bb.ah [
    i64 0, label %bb.ai
    i64 1, label %bb.aj
    i64 2, label %bb.ak
    i64 3, label %bb.al
    i64 4, label %bb.am
    i64 5, label %bb.an
  ]

bb.ah:                                            ; preds = %.noexc.i3
  unreachable

bb.ai:                                            ; preds = %.noexc.i3
  store i64 -9223372036854775808, ptr %i.c, align 8, !alias.scope !39745, !noalias !39751
  br label %_ZN4core3ops8function5FnMut8call_mut17h454f304c85c11aeaE.exit.i

bb.aj:                                            ; preds = %.noexc.i3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.fd, i64 72, i1 false), !alias.scope !39752, !noalias !39740
  br label %_ZN4core3ops8function5FnMut8call_mut17h454f304c85c11aeaE.exit.i

bb.ak:                                            ; preds = %.noexc.i3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.fd, i64 72, i1 false), !alias.scope !39752, !noalias !39740
  br label %_ZN4core3ops8function5FnMut8call_mut17h454f304c85c11aeaE.exit.i

bb.al:                                            ; preds = %.noexc.i3
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fa, i64 32
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ey, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fi, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1402)
          to label %.noexc unwind label %bb.aq, !inline_history !39753

.noexc:                                           ; preds = %bb.al
  store i64 -9223372036854775805, ptr %i.c, align 8, !alias.scope !39745, !noalias !39751
  br label %_ZN4core3ops8function5FnMut8call_mut17h454f304c85c11aeaE.exit.i

bb.am:                                            ; preds = %.noexc.i3
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fa, i64 48
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fa, i64 40
  %i.fl = load ptr, ptr %i.fk, align 8, !alias.scope !39754, !noalias !39757, !nonnull !27, !noundef !27
  %i.fm = load i64, ptr %i.fj, align 8, !alias.scope !39754, !noalias !39757, !noundef !27
  invoke fastcc void @"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hd8d25ff8c983adfeE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ey, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.fl, i64 noundef %i.fm)
          to label %.noexc79 unwind label %bb.aq, !inline_history !39753

.noexc79:                                         ; preds = %bb.am
  store i64 -9223372036854775804, ptr %i.c, align 8, !alias.scope !39745, !noalias !39751
  br label %_ZN4core3ops8function5FnMut8call_mut17h454f304c85c11aeaE.exit.i

bb.an:                                            ; preds = %.noexc.i3
  call void @llvm.experimental.noalias.scope.decl(metadata !39759), !noalias !39740
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !39762
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ex, ptr noundef nonnull align 8 dereferenceable(32) @86, i64 32, i1 false), !noalias !39762
  store i64 0, ptr %i.a, align 8, !noalias !39762
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i72, align 8, !noalias !39762
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i73, align 8, !noalias !39762
  invoke fastcc void @"_ZN73_$LT$indexmap..inner..Core$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$10clone_from17hdb4f672457e046a6E"(ptr noalias noundef align 8 dereferenceable(56) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.fd)
          to label %"_ZN79_$LT$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0d3ab4d5721ea478E.exit.i74" unwind label %bb.ao, !noalias !39769, !inline_history !39770

bb.ao:                                            ; preds = %bb.an
  %i.fn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr98drop_in_place$LT$indexmap..inner..Core$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h00ef09d73cf7b48fE"(ptr noalias noundef align 8 dereferenceable(56) %i.a) #44
          to label %.body80 unwind label %bb.ap, !noalias !39771, !inline_history !39770

bb.ap:                                            ; preds = %bb.ao
  %i.fo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45, !noalias !39771, !inline_history !39770
  unreachable

"_ZN79_$LT$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0d3ab4d5721ea478E.exit.i74": ; preds = %bb.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false), !noalias !39751
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !39762
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fa, i64 80
  %i.fq = load <2 x i64>, ptr %i.fp, align 8, !alias.scope !39772, !noalias !39773
  store <2 x i64> %i.fq, ptr %.sroa.42.0..sroa_idx.i77, align 8, !alias.scope !39745, !noalias !39751
  br label %_ZN4core3ops8function5FnMut8call_mut17h454f304c85c11aeaE.exit.i

bb.aq:                                            ; preds = %bb.am, %bb.al
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %.body80

.body80:                                          ; preds = %bb.ao, %bb.aq
  %eh.lpad-body = phi { ptr, i32 } [ %i.fr, %bb.aq ], [ %i.fn, %bb.ao ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !39774), !noalias !39735
  %.val.i.i4 = load i64, ptr %i.d, align 8, !alias.scope !39774, !noalias !39740
  %i.fs = icmp eq i64 %.val.i.i4, 0
  br i1 %i.fs, label %.body, label %bb.ar

bb.ar:                                            ; preds = %.body80
  %i.ft = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val1.i.i = load ptr, ptr %i.ft, align 8, !alias.scope !39774, !noalias !39740, !nonnull !27, !noundef !27
  call void @mi_free(ptr noundef nonnull %.val1.i.i) #38, !noalias !39777, !inline_history !39778
  br label %.body

_ZN4core3ops8function5FnMut8call_mut17h454f304c85c11aeaE.exit.i: ; preds = %"_ZN79_$LT$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0d3ab4d5721ea478E.exit.i74", %.noexc79, %.noexc, %bb.ak, %bb.aj, %bb.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.021, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.021.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !39743
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !39743
  %i.fu = getelementptr inbounds nuw [104 x i8], ptr %i.eu, i64 %.sroa.617.0 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.fu, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.021, i64 96, i1 false)
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fu, i64 96
  store i64 %i.fc, ptr %.sroa.424.0..sroa_idx, align 8, !noalias !39779
  %i.fv = add i64 %.sroa.617.0, 1                 ; 2 uses
  %i.fw = add nuw i64 %.sroa.06.0.i, 1            ; 2 uses
  %i.fx = icmp eq i64 %i.fw, %.idx30
  br i1 %i.fx, label %bb.as, label %bb.ag

bb.as:                                            ; preds = %_ZN4core3ops8function5FnMut8call_mut17h454f304c85c11aeaE.exit.i
  store i64 %i.fv, ptr %i.cv, align 8, !noalias !39725
  br label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h8305f58903ae0ae8E.exit"

"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h8305f58903ae0ae8E.exit": ; preds = %bb.ae, %bb.as
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN74_$LT$bytes..bytes_mut..BytesMut$u20$as$u20$bytes..buf..buf_mut..BufMut$GT$3put17had9b95de9bfbeb29E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noalias noundef nonnull align 8 dereferenceable(56) %1, i64 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 9 uses
  %i.h = alloca [40 x i8], align 8                ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %2, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %.val.i.i.i = load i64, ptr %i.l, align 8, !noundef !27
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %.val1.i.i.i = load i64, ptr %i.m, align 8, !noundef !27
  %.sroa.0.0.i.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %.val1.i.i.i, i64 %.val.i.i.i)
  %.sroa.0.0.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %2, i64 %.sroa.0.0.i.i.i.i.i) ; 5 uses
  %.not34 = icmp eq i64 %.sroa.0.0.i.i.i, 0
  br i1 %.not34, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.o = load i64, ptr %i.n, align 8, !noundef !27 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
end_hunk_14
begin_hunk_15_@"_ZN74_$LT$bytes..bytes_mut..BytesMut$u20$as$u20$bytes..buf..buf_mut..BufMut$GT$3put17had9b95de9bfbeb29E":bb.a
bb.d:                                             ; preds = %"_ZN77_$LT$bytes..buf..take..Take$LT$T$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$13copy_to_bytes17hdf3202915cd9bf4bE.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 32, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !noundef !27
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  %i.z = load i64, ptr %i.y, align 8, !noundef !27 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !39784)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !39784, !noalias !39787, !noundef !27 ; 2 uses
  %i.ac = load i64, ptr %i.n, align 8, !alias.scope !39784, !noalias !39787, !noundef !27
  %i.ad = sub i64 %i.ac, %i.ab
  %.not.i17 = icmp ugt i64 %i.z, %i.ad
  br i1 %.not.i17, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ae = invoke noundef zeroext i1 @_ZN5bytes9bytes_mut8BytesMut13reserve_inner17h73e0ed6d42572173E(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.z, i1 noundef zeroext true)
          to label %.noexc unwind label %bb.j     ; 0 uses

.noexc:                                           ; preds = %bb.e
  %.pre.i = load i64, ptr %i.aa, align 8, !alias.scope !39784, !noalias !39787
  br label %bb.f

bb.f:                                             ; preds = %.noexc, %bb.d
  %i.af = phi i64 [ %i.ab, %bb.d ], [ %.pre.i, %.noexc ]
  %i.ag = load ptr, ptr %0, align 8, !alias.scope !39784, !noalias !39787, !nonnull !27, !noundef !27
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.af
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ah, ptr nonnull readonly align 1 %i.x, i64 %i.z, i1 false)
  %i.ai = load i64, ptr %i.n, align 8, !alias.scope !39784, !noalias !39787, !noundef !27
  %i.aj = load i64, ptr %i.aa, align 8, !alias.scope !39784, !noalias !39787, !noundef !27 ; 2 uses
  %i.ak = sub i64 %i.ai, %i.aj                    ; 2 uses
  %i.al = icmp ugt i64 %i.z, %i.ak
  br i1 %i.al, label %bb.g, label %bb.k, !prof !29

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !39789
  store i64 %i.z, ptr %i.f, align 8, !noalias !39789
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %i.ak, ptr %i.am, align 8, !noalias !39789
  invoke void @_ZN5bytes13panic_advance17hadc1578990b3691cE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f) #43
          to label %.noexc18 unwind label %bb.j

.noexc18:                                         ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %"_ZN77_$LT$bytes..buf..take..Take$LT$T$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$13copy_to_bytes17hdf3202915cd9bf4bE.exit"
  %i.an = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  invoke void @"_ZN68_$LT$bytes..bytes_mut..BytesMut$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbef4de1915e8c443E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %0)
          to label %"_ZN4core3ptr47drop_in_place$LT$bytes..bytes_mut..BytesMut$GT$17h1b9136e447aa1cf5E.exit" unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.an, i64 32, i1 false)
  br label %"_ZN4core3ptr40drop_in_place$LT$bytes..bytes..Bytes$GT$17h502274557bcf9bdcE.exit"

"_ZN4core3ptr47drop_in_place$LT$bytes..bytes_mut..BytesMut$GT$17h1b9136e447aa1cf5E.exit": ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.an, i64 32, i1 false)
  br label %.loopexit

bb.j:                                             ; preds = %bb.g, %bb.e
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !39790)
  call void @llvm.experimental.noalias.scope.decl(metadata !39793)
  %i.aq = load ptr, ptr %i.g, align 8, !alias.scope !39796, !nonnull !27, !align !148, !noundef !27
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !noalias !39796, !nonnull !27, !noundef !27
  %i.at = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.au = load ptr, ptr %i.w, align 8, !alias.scope !39796, !noundef !27
  %i.av = load i64, ptr %i.y, align 8, !alias.scope !39796, !noundef !27
  invoke void %i.as(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.at, ptr noundef %i.au, i64 noundef %i.av)
          to label %"_ZN4core3ptr40drop_in_place$LT$bytes..bytes..Bytes$GT$17h502274557bcf9bdcE.exit" unwind label %bb.l, !inline_history !1185

bb.k:                                             ; preds = %bb.f
  %i.aw = add i64 %i.aj, %i.z
  store i64 %i.aw, ptr %i.aa, align 8, !alias.scope !39784, !noalias !39787
  call void @llvm.experimental.noalias.scope.decl(metadata !39797)
  call void @llvm.experimental.noalias.scope.decl(metadata !39800)
  %i.ax = load ptr, ptr %i.g, align 8, !alias.scope !39803, !nonnull !27, !align !148, !noundef !27
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.az = load ptr, ptr %i.ay, align 8, !noalias !39803, !nonnull !27, !noundef !27
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.bb = load ptr, ptr %i.w, align 8, !alias.scope !39803, !noundef !27
  %i.bc = load i64, ptr %i.y, align 8, !alias.scope !39803, !noundef !27
  call void %i.az(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ba, ptr noundef %i.bb, i64 noundef %i.bc), !inline_history !1177
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %.loopexit

bb.l:                                             ; preds = %bb.j
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45
  unreachable

bb.m:                                             ; preds = %bb.c
  %i.be = tail call noundef zeroext i1 @_ZN5bytes9bytes_mut8BytesMut13reserve_inner17h73e0ed6d42572173E(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.sroa.0.0.i.i.i, i1 noundef zeroext true) ; 0 uses
  %.val.i.i.i2146.pre = load i64, ptr %i.l, align 8
  %.val1.i.i.i2247.pre = load i64, ptr %i.m, align 8
  %.pre69 = tail call noundef i64 @llvm.umin.i64(i64 %.val1.i.i.i2247.pre, i64 %.val.i.i.i2146.pre)
  %.pre70 = tail call noundef i64 @llvm.umin.i64(i64 %2, i64 %.pre69) ; 2 uses
  %.not3550 = icmp eq i64 %.pre70, 0
  br i1 %.not3550, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.m
  %.sroa.0.0.i.i.i2449.pre-phi79 = phi i64 [ %.pre70, %bb.m ], [ %.sroa.0.0.i.i.i, %bb.c ]
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.val.i.i.i.i.pre = load ptr, ptr %i.bf, align 8
  %.pre = load i64, ptr %i.s, align 8, !alias.scope !39804, !noalias !39807
  %.pre68 = load i64, ptr %i.n, align 8, !alias.scope !39804, !noalias !39807
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %"_ZN77_$LT$bytes..buf..take..Take$LT$T$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17h32634646f072c685E.exit"
  %i.bg = phi i64 [ %.pre68, %.lr.ph ], [ %i.bo, %"_ZN77_$LT$bytes..buf..take..Take$LT$T$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17h32634646f072c685E.exit" ]
  %i.bh = phi i64 [ %.pre, %.lr.ph ], [ %i.bt, %"_ZN77_$LT$bytes..buf..take..Take$LT$T$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17h32634646f072c685E.exit" ] ; 2 uses
  %.val.i.i.i.i = phi ptr [ %.val.i.i.i.i.pre, %.lr.ph ], [ %i.cd, %"_ZN77_$LT$bytes..buf..take..Take$LT$T$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17h32634646f072c685E.exit" ]
  %.sroa.0.0.i.i.i2451 = phi i64 [ %.sroa.0.0.i.i.i2449.pre-phi79, %.lr.ph ], [ %.sroa.0.0.i.i.i24, %"_ZN77_$LT$bytes..buf..take..Take$LT$T$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17h32634646f072c685E.exit" ] ; 13 uses
  %i.bi = phi i64 [ %2, %.lr.ph ], [ %i.cf, %"_ZN77_$LT$bytes..buf..take..Take$LT$T$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17h32634646f072c685E.exit" ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39804)
  %i.bj = sub i64 %i.bg, %i.bh
  %.not.i27 = icmp ugt i64 %.sroa.0.0.i.i.i2451, %i.bj
  br i1 %.not.i27, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bk = tail call noundef zeroext i1 @_ZN5bytes9bytes_mut8BytesMut13reserve_inner17h73e0ed6d42572173E(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.sroa.0.0.i.i.i2451, i1 noundef zeroext true), !noalias !39807 ; 0 uses
  %.pre.i28 = load i64, ptr %i.s, align 8, !alias.scope !39804, !noalias !39807
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bl = phi i64 [ %i.bh, %bb.n ], [ %.pre.i28, %bb.o ]
  %i.bm = load ptr, ptr %0, align 8, !alias.scope !39804, !noalias !39807, !nonnull !27, !noundef !27
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bl
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bn, ptr nonnull readonly align 1 %.val.i.i.i.i, i64 %.sroa.0.0.i.i.i2451, i1 false)
  %i.bo = load i64, ptr %i.n, align 8, !alias.scope !39804, !noalias !39807, !noundef !27 ; 2 uses
  %i.bp = load i64, ptr %i.s, align 8, !alias.scope !39804, !noalias !39807, !noundef !27 ; 2 uses
  %i.bq = sub i64 %i.bo, %i.bp                    ; 2 uses
  %i.br = icmp ugt i64 %.sroa.0.0.i.i.i2451, %i.bq
  br i1 %i.br, label %bb.q, label %bb.r, !prof !29

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !39809
  store i64 %.sroa.0.0.i.i.i2451, ptr %i.e, align 8, !noalias !39809
  %i.bs = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.bq, ptr %i.bs, align 8, !noalias !39809
  call void @_ZN5bytes13panic_advance17hadc1578990b3691cE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e) #43, !noalias !39807
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.bt = add i64 %i.bp, %.sroa.0.0.i.i.i2451     ; 2 uses
  store i64 %i.bt, ptr %i.s, align 8, !alias.scope !39804, !noalias !39807
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39810)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39813)
  %i.bu = load i64, ptr %i.m, align 8, !alias.scope !39816, !noalias !39817, !noundef !27 ; 2 uses
  %.not.i.i.i.i = icmp ugt i64 %.sroa.0.0.i.i.i2451, %i.bu
  br i1 %.not.i.i.i.i, label %bb.s, label %bb.t, !prof !29

bb.s:                                             ; preds = %bb.r
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2056, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2057) #43, !noalias !39820
  unreachable

bb.t:                                             ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39821)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !39820
  store i64 %.sroa.0.0.i.i.i2451, ptr %i.d, align 8, !noalias !39824
  %i.bv = load i64, ptr %i.l, align 8, !alias.scope !39825, !noalias !39817, !noundef !27 ; 3 uses
  %.not.i.i.i.i.i = icmp ugt i64 %.sroa.0.0.i.i.i2451, %i.bv
  br i1 %.not.i.i.i.i.i, label %bb.u, label %"_ZN77_$LT$bytes..buf..take..Take$LT$T$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17h32634646f072c685E.exit", !prof !29

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !39824
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !39824
  store i64 %i.bv, ptr %i.b, align 8, !noalias !39824
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !39824
  store ptr %i.d, ptr %i.a, align 8, !noalias !39824
  %.sroa.42.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hfbad01e72c46968eE", ptr %.sroa.42.0..sroa_idx.i.i.i.i.i, align 8, !noalias !39824
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.bw, align 8, !noalias !39824
  %.sroa.46.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hfbad01e72c46968eE", ptr %.sroa.46.0..sroa_idx.i.i.i.i.i, align 8, !noalias !39824
  store ptr @1430, ptr %i.c, align 8, !noalias !39824
  %i.bx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 2, ptr %i.bx, align 8, !noalias !39824
  %i.by = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %i.by, align 8, !noalias !39824
  %i.bz = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.a, ptr %i.bz, align 8, !noalias !39824
  %i.ca = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 2, ptr %i.ca, align 8, !noalias !39824
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1431) #43, !noalias !39824
  unreachable

"_ZN77_$LT$bytes..buf..take..Take$LT$T$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17h32634646f072c685E.exit": ; preds = %bb.t
  %i.cb = sub nuw i64 %i.bv, %.sroa.0.0.i.i.i2451 ; 2 uses
  store i64 %i.cb, ptr %i.l, align 8, !alias.scope !39825, !noalias !39817
  %i.cc = load ptr, ptr %i.bf, align 8, !alias.scope !39825, !noalias !39817, !noundef !27
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.sroa.0.0.i.i.i2451 ; 2 uses
  store ptr %i.cd, ptr %i.bf, align 8, !alias.scope !39825, !noalias !39817
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !39820
  %i.ce = sub nuw i64 %i.bu, %.sroa.0.0.i.i.i2451 ; 2 uses
  store i64 %i.ce, ptr %i.m, align 8, !alias.scope !39816, !noalias !39817
  %i.cf = sub nuw i64 %i.bi, %.sroa.0.0.i.i.i2451 ; 2 uses
  %.sroa.0.0.i.i.i.i.i23 = tail call noundef i64 @llvm.umin.i64(i64 %i.ce, i64 %i.cb)
  %.sroa.0.0.i.i.i24 = tail call noundef i64 @llvm.umin.i64(i64 %i.cf, i64 %.sroa.0.0.i.i.i.i.i23) ; 2 uses
  %.not35 = icmp eq i64 %.sroa.0.0.i.i.i24, 0
  br i1 %.not35, label %.loopexit, label %bb.n

"_ZN4core3ptr40drop_in_place$LT$bytes..bytes..Bytes$GT$17h502274557bcf9bdcE.exit": ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.ao, %bb.i ], [ %i.ap, %bb.j ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN75_$LT$anyhow..wrapper..MessageError$LT$M$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h6fbd0baafae00465E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39826)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !39826, !noalias !39829, !nonnull !27, !noundef !27
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !39826, !noalias !39829, !noundef !27
  %i.e = tail call noundef zeroext i1 @"_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17h310aa922679ce93dE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !39826
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN76_$LT$std..sync..poison..PoisonError$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h4c6f35825fd4db47E"(ptr noalias readonly align 8 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_ZN4core3fmt9Formatter12debug_struct17heb67a1f9f98d9089E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2050, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_ZN4core3fmt8builders11DebugStruct21finish_non_exhaustive17h515ebfc4fec2cbcbE(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN76_$LT$std..sync..poison..PoisonError$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h5e3a5838624557abE"(ptr noalias readonly align 8 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_ZN4core3fmt9Formatter12debug_struct17heb67a1f9f98d9089E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2050, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_ZN4core3fmt8builders11DebugStruct21finish_non_exhaustive17h515ebfc4fec2cbcbE(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN76_$LT$std..sync..poison..PoisonError$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h7b165e99d4c79dacE"(ptr noalias readonly align 8 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_ZN4core3fmt9Formatter12debug_struct17heb67a1f9f98d9089E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2050, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_ZN4core3fmt8builders11DebugStruct21finish_non_exhaustive17h515ebfc4fec2cbcbE(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN76_$LT$std..sync..poison..PoisonError$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hd5b2bca3346d3c8eE"(ptr noalias readonly align 8 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_ZN4core3fmt9Formatter12debug_struct17heb67a1f9f98d9089E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2050, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_ZN4core3fmt8builders11DebugStruct21finish_non_exhaustive17h515ebfc4fec2cbcbE(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN76_$LT$tracing_subscriber..fmt..format..Writer$u20$as$u20$core..fmt..Write$GT$10write_char17hd7bc37f5f40e749bE"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !27, !align !206, !noundef !27
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !27, !align !148, !noundef !27
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !27, !nonnull !27
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 1 %i.a, i32 noundef %1)
  ret i1 %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN76_$LT$tracing_subscriber..fmt..format..Writer$u20$as$u20$core..fmt..Write$GT$9write_fmt17he6bfb97c9a84c32aE"(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN18tracing_subscriber3fmt6format6Writer9write_fmt17hc142c55bec60ce66E(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %1)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN76_$LT$tracing_subscriber..fmt..format..Writer$u20$as$u20$core..fmt..Write$GT$9write_str17hb3f7048feed47d91E"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !27, !align !206, !noundef !27
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !27, !align !148, !noundef !27
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !27, !nonnull !27
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 1 %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2)
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN77_$LT$anyhow..wrapper..MessageError$LT$M$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h52f88e1d5e69e3f9E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39831)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !39831, !noalias !39834, !nonnull !27, !noundef !27
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !39831, !noalias !39834, !noundef !27
  %i.e = tail call noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hc26b542d45893745E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !39831
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN77_$LT$h2..proto..streams..flow_control..Window$u20$as$u20$core..fmt..Debug$GT$3fmt17h3078a3be82a7d930E"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2059, i64 noundef 6, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2058)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN79_$LT$tracing_core..field..DisplayValue$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h3fa210be14972efaE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !27, !align !206, !noundef !27
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !27, !align !148, !noundef !27
  %i.b = getelementptr inbounds nuw i8, ptr %.val1, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !invariant.load !27, !noalias !39836, !nonnull !27
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !inline_history !39839
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN79_$LT$tracing_core..field..DisplayValue$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h5bb36519bc25a36cE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !27, !align !148, !noundef !27 ; 2 uses
  %.val.i = load ptr, ptr %.val, align 8, !noalias !39840, !nonnull !27, !align !206, !noundef !27
  %i.a = getelementptr i8, ptr %.val, i64 8
  %.val1.i = load ptr, ptr %i.a, align 8, !noalias !39840, !nonnull !27, !align !148, !noundef !27
  %i.b = getelementptr inbounds nuw i8, ptr %.val1.i, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !invariant.load !27, !noalias !39843, !nonnull !27
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 1 %.val.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !inline_history !39846
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN79_$LT$tracing_core..field..DisplayValue$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h6eda86a6fb5a207eE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !27, !align !206, !noundef !27
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !27, !align !148, !noundef !27
  %i.b = getelementptr inbounds nuw i8, ptr %.val1, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !invariant.load !27, !noalias !39847, !nonnull !27
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !inline_history !39850
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN79_$LT$tracing_core..field..DisplayValue$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hb45f063278bab2a1E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef zeroext i1 @"_ZN85_$LT$tracing_subscriber..fmt..format..TimingDisplay$u20$as$u20$core..fmt..Display$GT$3fmt17hc46175c2b22abb29E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN79_$LT$tracing_core..field..DisplayValue$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hce0b311ee68e9148E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !27, !align !148, !noundef !27 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39851)
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !39851, !noalias !39854, !nonnull !27, !noundef !27
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !39851, !noalias !39854, !noundef !27
  %i.e = tail call noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hc26b542d45893745E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !39851
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN79_$LT$tracing_core..field..DisplayValue$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hdb91a6490ff408b0E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39858)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !39858, !noalias !39861, !nonnull !27, !align !148, !noundef !27 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39863)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !39863, !noalias !39866, !nonnull !27, !align !206, !noundef !27
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !39863, !noalias !39866, !noundef !27
  %i.e = tail call noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hc26b542d45893745E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !39868
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN79_$LT$tracing_core..field..DisplayValue$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17heebd41ac01e6748cE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !27, !align !603, !noundef !27
  %i.a = tail call noundef zeroext i1 @"_ZN79_$LT$h2..proto..streams..flow_control..Window$u20$as$u20$core..fmt..Display$GT$3fmt17h4568a7aff60a3a37E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %.val, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN79_$LT$tracing_core..field..DisplayValue$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hfb771e53bbe294e9E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
end_hunk_15
