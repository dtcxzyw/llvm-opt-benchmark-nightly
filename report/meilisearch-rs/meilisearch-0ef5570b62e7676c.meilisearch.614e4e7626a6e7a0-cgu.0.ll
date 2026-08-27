Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/meilisearch-0ef5570b62e7676c.meilisearch.614e4e7626a6e7a0-cgu.0?download=true
inline.NumInlined: 17146
inline.NumDeleted: 6832
loop-unroll.NumCompletelyUnrolled: 148
loop-unroll.NumRuntimeUnrolled: 82
loop-unroll.NumUnrolled: 290
begin_hunk_0_@_ZN6brotli3enc19backward_references2hq12EvaluateNode17hf4bbd34eaae1782fE:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.g = load float, ptr %i.f, align 4, !noundef !27
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %.sroa.0.0 = phi float [ %i.g, %bb.d ], [ 0.000000e+00, %bb.b ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36342)
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.i = load i32, ptr %i.h, align 4, !alias.scope !36342, !noundef !27
  %i.j = and i32 %i.i, 33554431                   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.l = load i32, ptr %i.k, align 4, !alias.scope !36342, !noundef !27 ; 2 uses
  %i.m = and i32 %i.l, 134217727
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.o = load i32, ptr %i.n, align 4, !alias.scope !36342, !noundef !27 ; 2 uses
  %i.p = icmp eq i64 %1, 0
  br i1 %i.p, label %_ZN6brotli3enc19backward_references2hq23ComputeDistanceShortcut17h874cc0a1454c5946E.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = zext nneg i32 %i.j to i64
  %i.r = zext i32 %i.o to i64                     ; 2 uses
  %i.s = add nuw nsw i64 %i.r, %i.q
  %i.t = add i64 %1, %0
  %i.u = icmp ule i64 %i.s, %i.t
  %i.v = icmp uge i64 %2, %i.r
  %or.cond.i = and i1 %i.v, %i.u
  br i1 %or.cond.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %narrow.i = add nuw nsw i32 %i.m, %i.j
  %i.w = zext nneg i32 %narrow.i to i64
  %i.x = sub i64 %1, %i.w                         ; 3 uses
  %i.y = icmp ult i64 %i.x, %6
  br i1 %i.y, label %bb.j, label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.z = lshr i32 %i.l, 27                        ; 2 uses
  %i.aa = icmp eq i32 %i.z, 0
  %i.ab = add i32 %i.o, 15
  %i.ac = add nsw i32 %i.z, -1
  %.sroa.02.0.i = select i1 %i.aa, i32 %i.ab, i32 %i.ac
  %.not.i = icmp eq i32 %.sroa.02.0.i, 0
  br i1 %.not.i, label %bb.g, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = trunc i64 %1 to i32
  br label %_ZN6brotli3enc19backward_references2hq23ComputeDistanceShortcut17h874cc0a1454c5946E.exit

bb.j:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw [20 x i8], ptr %5, i64 %i.x ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !range !15246, !alias.scope !36342, !noundef !27
  %i.ag = icmp eq i32 %i.af, 2
  br i1 %i.ag, label %bb.l, label %_ZN6brotli3enc19backward_references2hq23ComputeDistanceShortcut17h874cc0a1454c5946E.exit

bb.k:                                             ; preds = %bb.g
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.x, i64 noundef range(i64 1, 0) %6, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1760) #43, !noalias !36342
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !alias.scope !36342, !noundef !27
  br label %_ZN6brotli3enc19backward_references2hq23ComputeDistanceShortcut17h874cc0a1454c5946E.exit

_ZN6brotli3enc19backward_references2hq23ComputeDistanceShortcut17h874cc0a1454c5946E.exit: ; preds = %bb.e, %bb.i, %bb.j, %bb.l
  %.sroa.0.0.i = phi i32 [ 0, %bb.e ], [ %i.ad, %bb.i ], [ %i.ai, %bb.l ], [ 0, %bb.j ]
  store i32 2, ptr %i.c, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %.sroa.0.0.i, ptr %.sroa.4.0..sroa_idx, align 4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.16.val) ]
  %i.aj = icmp ult i64 %1, %.24.val
  br i1 %i.aj, label %"_ZN6brotli3enc19backward_references2hq29ZopfliCostModel$LT$AllocF$GT$17get_literal_costs17hf5624ff4da68ef36E.exit6", label %bb.m

bb.m:                                             ; preds = %_ZN6brotli3enc19backward_references2hq23ComputeDistanceShortcut17h874cc0a1454c5946E.exit
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %1, i64 noundef %.24.val, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1765) #43
  unreachable

"_ZN6brotli3enc19backward_references2hq29ZopfliCostModel$LT$AllocF$GT$17get_literal_costs17hf5624ff4da68ef36E.exit6": ; preds = %_ZN6brotli3enc19backward_references2hq23ComputeDistanceShortcut17h874cc0a1454c5946E.exit
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %.16.val, i64 %1
  %i.al = load float, ptr %i.ak, align 4, !noundef !27
  %i.am = load float, ptr %.16.val, align 4, !noundef !27
  %i.an = fsub float %i.al, %i.am                 ; 2 uses
  %i.ao = fcmp ugt float %.sroa.0.0, %i.an
  br i1 %i.ao, label %bb.n, label %"_ZN6brotli3enc19backward_references2hq29ZopfliCostModel$LT$AllocF$GT$17get_literal_costs17hf5624ff4da68ef36E.exit"

"_ZN6brotli3enc19backward_references2hq29ZopfliCostModel$LT$AllocF$GT$17get_literal_costs17hf5624ff4da68ef36E.exit": ; preds = %"_ZN6brotli3enc19backward_references2hq29ZopfliCostModel$LT$AllocF$GT$17get_literal_costs17hf5624ff4da68ef36E.exit6"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ap = fsub float %.sroa.0.0, %i.an
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %1, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store float %i.ap, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store float %.sroa.0.0, ptr %i.as, align 4
  call void @_ZN6brotli3enc19backward_references2hq20ComputeDistanceCache17hb778d3737a798c6aE(i64 noundef %1, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %3, i64 noundef 16, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %5, i64 noundef %6, ptr noalias noundef nonnull align 4 %i.a, i64 noundef 4)
  call void @_ZN6brotli3enc19backward_references2hq13StartPosQueue4push17hfb5ef7c96d67ff19E(ptr noalias noundef nonnull align 8 dereferenceable(264) %4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.n

bb.n:                                             ; preds = %"_ZN6brotli3enc19backward_references2hq29ZopfliCostModel$LT$AllocF$GT$17get_literal_costs17hf5624ff4da68ef36E.exit6", %"_ZN6brotli3enc19backward_references2hq29ZopfliCostModel$LT$AllocF$GT$17get_literal_costs17hf5624ff4da68ef36E.exit"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef i64 @_ZN6brotli3enc19backward_references2hq17FindAllMatchesH1017hde6636636d51df5aE(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3, i64 noundef range(i64 0, 4294967296) %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(112) %9, ptr noalias nofree noundef nonnull writeonly align 8 captures(none) %10, i64 noundef %11) unnamed_addr #3 personality ptr @rust_eh_personality {
.split:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [152 x i8], align 16              ; 16 uses
  %i.c = alloca [8 x i8], align 8                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 72
  %i.e = load i32, ptr %i.d, align 8, !noundef !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store <4 x i32> splat (i32 268435455), ptr %i.b, align 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store <4 x i32> splat (i32 268435455), ptr %i.f, align 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store <4 x i32> splat (i32 268435455), ptr %i.g, align 16
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store <4 x i32> splat (i32 268435455), ptr %i.h, align 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store <4 x i32> splat (i32 268435455), ptr %i.i, align 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store <4 x i32> splat (i32 268435455), ptr %i.j, align 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store <4 x i32> splat (i32 268435455), ptr %i.k, align 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store <4 x i32> splat (i32 268435455), ptr %i.l, align 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  store <4 x i32> splat (i32 268435455), ptr %i.m, align 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  store i32 268435455, ptr %i.n, align 16
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 148
  store i32 268435455, ptr %i.o, align 4
  %i.p = and i64 %6, %4                           ; 9 uses
  %i.q = icmp eq i32 %i.e, 11
  %. = select i1 %i.q, i64 64, i64 16
  %spec.select = tail call i64 @llvm.usub.sat.i64(i64 %6, i64 %.) ; 3 uses
  %.sroa.012.0121 = add i64 %6, -1                ; 3 uses
  %i.r = icmp ugt i64 %.sroa.012.0121, %spec.select
  br i1 %i.r, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.split
  %i.s = icmp ult i64 %i.p, %3
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.p ; 3 uses
  %i.u = add nuw nsw i64 %i.p, 1                  ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 %i.u
  %i.w = sub nuw i64 %3, %i.p
  br i1 %i.s, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.x = icmp ult i64 %i.u, %3
  br i1 %i.x, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us, %bb.h
  %.sroa.012.0124.us.us = phi i64 [ %.sroa.012.0.us.us, %bb.h ], [ %.sroa.012.0121, %.lr.ph.split.us ] ; 3 uses
  %.sroa.03.0123.us.us = phi i64 [ %.sroa.03.1.us.us, %bb.h ], [ 0, %.lr.ph.split.us ] ; 8 uses
  %i.y = phi i64 [ %i.av, %bb.h ], [ 1, %.lr.ph.split.us ] ; 5 uses
  %i.z = sub i64 %6, %.sroa.012.0124.us.us        ; 2 uses
  %i.aa = icmp ugt i64 %i.z, %8
  br i1 %i.aa, label %._crit_edge, label %bb.a

bb.a:                                             ; preds = %.lr.ph.split.us.split.us
  %i.ab = and i64 %.sroa.012.0124.us.us, %4       ; 5 uses
  %i.ac = icmp ult i64 %i.ab, %3
  br i1 %i.ac, label %bb.b, label %.split134.us

bb.b:                                             ; preds = %bb.a
  %i.ad = load i8, ptr %i.t, align 1, !noundef !27
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 %i.ab ; 2 uses
  %i.af = load i8, ptr %i.ae, align 1, !noundef !27
  %i.ag = icmp eq i8 %i.ad, %i.af
  br i1 %i.ag, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.ah = add nuw nsw i64 %i.ab, 1                ; 3 uses
  %i.ai = icmp ult i64 %i.ah, %3
  br i1 %i.ai, label %bb.d, label %.split142.us

bb.d:                                             ; preds = %bb.c
  %i.aj = load i8, ptr %i.v, align 1, !noundef !27
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 %i.ah
  %i.al = load i8, ptr %i.ak, align 1, !noundef !27
  %i.am = icmp eq i8 %i.aj, %i.al
  br i1 %i.am, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.an = sub nuw i64 %3, %i.ab
  %i.ao = tail call noundef i64 @_ZN6brotli3enc11static_dict24FindMatchLengthWithLimit17h50d1a297b15ad288E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ae, i64 noundef %i.an, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.t, i64 noundef %i.w, i64 noundef %7) ; 3 uses
  %i.ap = icmp ugt i64 %i.ao, %i.y
  br i1 %i.ap, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.aq = icmp ult i64 %.sroa.03.0123.us.us, %11
  br i1 %i.aq, label %bb.g, label %.split146.us

bb.g:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %.sroa.03.0123.us.us
  %i.as = shl i64 %i.ao, 37
  %12 = and i64 %i.z, 4294967295
  %i.at = or disjoint i64 %i.as, %12
  store i64 %i.at, ptr %i.ar, align 8
  %i.au = add nuw i64 %.sroa.03.0123.us.us, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e, %bb.d, %bb.b
  %i.av = phi i64 [ %i.ao, %bb.g ], [ %i.y, %bb.e ], [ %i.y, %bb.d ], [ %i.y, %bb.b ] ; 3 uses
  %.sroa.03.1.us.us = phi i64 [ %i.au, %bb.g ], [ %.sroa.03.0123.us.us, %bb.e ], [ %.sroa.03.0123.us.us, %bb.d ], [ %.sroa.03.0123.us.us, %bb.b ] ; 2 uses
  %.sroa.012.0.us.us = add i64 %.sroa.012.0124.us.us, -1 ; 2 uses
  %i.aw = icmp ugt i64 %.sroa.012.0.us.us, %spec.select
  %i.ax = icmp ult i64 %i.av, 3
  %or.cond.us.us = select i1 %i.aw, i1 %i.ax, i1 false
  br i1 %or.cond.us.us, label %.lr.ph.split.us.split.us, label %._crit_edge

.lr.ph.split.us.split.split:                      ; preds = %.lr.ph.split.us, %bb.k
  %.sroa.012.0124.us = phi i64 [ %.sroa.012.0.us, %bb.k ], [ %.sroa.012.0121, %.lr.ph.split.us ] ; 3 uses
  %i.ay = sub i64 %6, %.sroa.012.0124.us
  %i.az = icmp ugt i64 %i.ay, %8
  br i1 %i.az, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %.lr.ph.split.us.split.split
  %i.ba = and i64 %.sroa.012.0124.us, %4          ; 3 uses
  %i.bb = icmp ult i64 %i.ba, %3
  br i1 %i.bb, label %bb.j, label %.split134.us

bb.j:                                             ; preds = %bb.i
  %i.bc = load i8, ptr %i.t, align 1, !noundef !27
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 %i.ba
  %i.be = load i8, ptr %i.bd, align 1, !noundef !27
  %i.bf = icmp eq i8 %i.bc, %i.be
  br i1 %i.bf, label %.split138.us, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.sroa.012.0.us = add i64 %.sroa.012.0124.us, -1 ; 2 uses
  %i.bg = icmp ugt i64 %.sroa.012.0.us, %spec.select
  br i1 %i.bg, label %.lr.ph.split.us.split.split, label %._crit_edge

._crit_edge:                                      ; preds = %bb.k, %.lr.ph.split.us.split.split, %bb.h, %.lr.ph.split.us.split.us, %.lr.ph.split, %.split
  %.lcssa115 = phi i64 [ 1, %.split ], [ 1, %.lr.ph.split ], [ %i.y, %.lr.ph.split.us.split.us ], [ %i.av, %bb.h ], [ 1, %.lr.ph.split.us.split.split ], [ 1, %bb.k ] ; 2 uses
  %.sroa.03.0.lcssa = phi i64 [ 0, %.split ], [ 0, %.lr.ph.split ], [ %.sroa.03.0123.us.us, %.lr.ph.split.us.split.us ], [ %.sroa.03.1.us.us, %bb.h ], [ 0, %.lr.ph.split.us.split.split ], [ 0, %bb.k ] ; 5 uses
  store i64 %.lcssa115, ptr %i.c, align 8
  %i.bh = icmp ult i64 %.lcssa115, %7
  br i1 %i.bh, label %bb.m, label %bb.n

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.bi = icmp eq i64 %8, 0
  br i1 %i.bi, label %._crit_edge, label %bb.l

bb.l:                                             ; preds = %.lr.ph.split
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.p, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1750) #43
  unreachable

.split134.us:                                     ; preds = %bb.i, %bb.a
  %.us-phi156 = phi i64 [ %i.ab, %bb.a ], [ %i.ba, %bb.i ]
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.us-phi156, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1751) #43
  unreachable

.split138.us:                                     ; preds = %bb.j
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.u, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1752) #43
  unreachable

.split142.us:                                     ; preds = %bb.c
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ah, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1753) #43
  unreachable

.split146.us:                                     ; preds = %bb.f
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.03.0123.us.us, i64 noundef %11, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1754) #43
  unreachable

bb.m:                                             ; preds = %._crit_edge
  %.not = icmp ugt i64 %.sroa.03.0.lcssa, %11
  br i1 %.not, label %bb.o, label %bb.p, !prof !29

bb.n:                                             ; preds = %._crit_edge, %bb.p
  %.sroa.03.2 = phi i64 [ %i.bq, %bb.p ], [ %.sroa.03.0.lcssa, %._crit_edge ] ; 4 uses
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @186, ptr %i.a, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.bj, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.bm, align 8
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1755) #43
  unreachable

bb.p:                                             ; preds = %bb.m
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %.sroa.03.0.lcssa
  %i.bo = sub nuw i64 %11, %.sroa.03.0.lcssa
  %i.bp = call fastcc noundef i64 @_ZN6brotli3enc19backward_references19hash_to_binary_tree22StoreAndFindMatchesH1017h1a8db7e0f3094503E(ptr noalias noundef align 8 dereferenceable(104) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3, i64 noundef %6, i64 noundef %4, i64 noundef %5, i64 noundef %7, i64 noundef %8, ptr noalias noundef align 8 dereferenceable(8) %i.c, ptr noalias noundef nonnull align 8 %i.bn, i64 noundef %i.bo)
  %i.bq = add i64 %i.bp, %.sroa.03.0.lcssa
  br label %bb.n

bb.q:                                             ; preds = %bb.n, %bb.q
  %.sroa.0.0191 = phi i64 [ 0, %bb.n ], [ %spec.select79, %bb.q ] ; 3 uses
  %i.br = icmp eq i64 %.sroa.0.0191, 37           ; 2 uses
  %i.bs = add nuw nsw i64 %.sroa.0.0191, 1
  %spec.select79 = select i1 %i.br, i64 37, i64 %i.bs ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.sroa.0.0191
  store i32 268435455, ptr %i.bt, align 4
  %.not.i = icmp samesign ugt i64 %spec.select79, 37
  %or.cond82 = select i1 %i.br, i1 true, i1 %.not.i
  br i1 %or.cond82, label %bb.r, label %bb.q

bb.r:                                             ; preds = %bb.q
  %i.bu = load i64, ptr %i.c, align 8, !noundef !27
  %i.bv = add i64 %i.bu, 1
  %.sroa.0.0.i51 = tail call noundef i64 @llvm.umax.i64(i64 %i.bv, i64 4) ; 3 uses
  %.not48 = icmp eq ptr %1, null
  br i1 %.not48, label %.loopexit, label %bb.s

.loopexit:                                        ; preds = %bb.z, %bb.x, %bb.t, %bb.r
  %.sroa.03.3 = phi i64 [ %.sroa.03.2, %bb.t ], [ %.sroa.03.2, %bb.r ], [ %.sroa.03.2, %bb.x ], [ %.sroa.03.5, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i64 %.sroa.03.3

bb.s:                                             ; preds = %bb.r
  %i.bw = icmp ugt i64 %i.p, %3
  br i1 %i.bw, label %bb.u, label %bb.t, !prof !29

bb.t:                                             ; preds = %bb.s
  %i.bx = sub nuw i64 %3, %i.p
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 %i.p
  %i.bz = call noundef i32 @_ZN6brotli3enc11static_dict36BrotliFindAllStaticDictionaryMatches17h37bb93a29a74e0aeE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.by, i64 noundef %i.bx, i64 noundef %.sroa.0.0.i51, i64 noundef %7, ptr noalias noundef nonnull align 4 %i.b, i64 noundef 38)
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %.loopexit, label %bb.v

bb.u:                                             ; preds = %bb.s
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.p, i64 noundef %3, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1759) #43
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.cb = getelementptr inbounds nuw i8, ptr %9, i64 103
  %i.cc = load i8, ptr %i.cb, align 1, !range !188, !noundef !27
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %bb.x, label %bb.w, !prof !222

bb.w:                                             ; preds = %bb.v
  call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1756, i64 noundef 39, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1757) #43
  unreachable

bb.x:                                             ; preds = %bb.v
  %.sroa.0.0.i52 = call noundef i64 @llvm.umin.i64(i64 %7, i64 37) ; 3 uses
  %.not.i53192 = icmp ugt i64 %.sroa.0.0.i51, %.sroa.0.0.i52
  br i1 %.not.i53192, label %.loopexit, label %.lr.ph196

.lr.ph196:                                        ; preds = %bb.x
  %i.ce = add i64 %8, 1
  %i.cf = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.cg = load i64, ptr %i.cf, align 8
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph196, %bb.z
  %.sroa.03.4194 = phi i64 [ %.sroa.03.2, %.lr.ph196 ], [ %.sroa.03.5, %bb.z ] ; 6 uses
  %.sroa.057.0193 = phi i64 [ %.sroa.0.0.i51, %.lr.ph196 ], [ %spec.select81, %bb.z ] ; 5 uses
  %i.ch = icmp uge i64 %.sroa.057.0193, %.sroa.0.0.i52 ; 2 uses
  %not. = xor i1 %i.ch, true
  %i.ci = zext i1 %not. to i64
  %spec.select81 = add nuw nsw i64 %.sroa.057.0193, %i.ci ; 2 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.sroa.057.0193
  %i.ck = load i32, ptr %i.cj, align 4, !noundef !27 ; 3 uses
  %i.cl = icmp ult i32 %i.ck, 268435455
  br i1 %i.cl, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.ac, %bb.aa, %bb.y
  %.sroa.03.5 = phi i64 [ %i.cz, %bb.ac ], [ %.sroa.03.4194, %bb.aa ], [ %.sroa.03.4194, %bb.y ] ; 2 uses
  %.not.i53 = icmp ugt i64 %spec.select81, %.sroa.0.0.i52
  %or.cond83 = select i1 %i.ch, i1 true, i1 %.not.i53
  br i1 %or.cond83, label %.loopexit, label %bb.y

bb.aa:                                            ; preds = %bb.y
  %i.cm = lshr i32 %i.ck, 5
  %i.cn = zext nneg i32 %i.cm to i64
  %i.co = add i64 %i.ce, %i.cn                    ; 2 uses
  %.not49 = icmp ugt i64 %i.co, %i.cg
  br i1 %.not49, label %bb.z, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cp = icmp ult i64 %.sroa.03.4194, %11
  br i1 %i.cp, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %.sroa.03.4194
  %i.cr = and i32 %i.ck, 31
  %i.cs = zext nneg i32 %i.cr to i64              ; 2 uses
  %i.ct = and i64 %i.co, 4294967295
  %i.cu = icmp eq i64 %.sroa.057.0193, %i.cs
  %i.cv = shl nuw nsw i64 %i.cs, 32
  %.sroa.0.0.i = select i1 %i.cu, i64 0, i64 %i.cv
  %i.cw = shl nuw nsw i64 %.sroa.057.0193, 37
  %i.cx = or disjoint i64 %.sroa.0.0.i, %i.cw
  %i.cy = or disjoint i64 %i.cx, %i.ct
  store i64 %i.cy, ptr %i.cq, align 8, !noalias !36345
  %i.cz = add nuw i64 %.sroa.03.4194, 1
  br label %bb.z
end_hunk_0
