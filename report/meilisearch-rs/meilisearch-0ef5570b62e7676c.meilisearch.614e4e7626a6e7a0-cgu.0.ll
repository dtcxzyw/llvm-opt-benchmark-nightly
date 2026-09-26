Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/meilisearch-0ef5570b62e7676c.meilisearch.614e4e7626a6e7a0-cgu.0?download=true
inline.NumInlined: 17146
inline.NumDeleted: 6832
loop-unroll.NumCompletelyUnrolled: 149
loop-unroll.NumRuntimeUnrolled: 76
loop-unroll.NumUnrolled: 284
begin_hunk_0_@_ZN6brotli3enc19backward_references2hq11UpdateNodes17h912b83bf12bcd350E:bb.a
  %i.lf = and i32 %i.le, 192
  %i.lg = add nuw nsw i32 %i.lb, %i.lf
  %i.lh = trunc i32 %i.lg to i16                  ; 2 uses
  %i.li = or disjoint i16 %i.kx, %i.lh
  %i.lj = zext i16 %i.li to i64                   ; 2 uses
  %i.lk = icmp ult i16 %i.lh, 704
  br i1 %i.lk, label %bb.bg, label %bb.bh

bb.bf:                                            ; preds = %_ZN6brotli3enc7command17GetCopyLengthCode17h0e9c4af72170ff0cE.exit
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.kt, i64 noundef 24, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1737) #43
  unreachable

bb.bg:                                            ; preds = %bb.be
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr @_ZN6brotli3enc9constants10kCopyExtra17h02bcab7a3a35c8e6E, i64 %i.kv
  %i.lm = load i32, ptr %i.ll, align 4, !noundef !45
  %i.ln = uitofp i32 %i.lm to float
  %i.lo = fadd float %i.jq, %i.ln
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.lj
  %i.lq = load float, ptr %i.lp, align 4, !noundef !45
  %i.lr = fadd float %i.lq, %i.lo                 ; 2 uses
  %i.ls = add i64 %.sroa.033.1293, %2             ; 3 uses
  %i.lt = icmp ult i64 %i.ls, %16
  br i1 %i.lt, label %bb.bi, label %bb.bj

bb.bh:                                            ; preds = %bb.be
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.lj, i64 noundef 704, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1738) #43
  unreachable

bb.bi:                                            ; preds = %bb.bg
  %i.lu = getelementptr inbounds nuw [20 x i8], ptr %15, i64 %i.ls ; 5 uses
  %i.lv = load i32, ptr %i.lu, align 4, !range !125, !noundef !45
  %i.lw = icmp eq i32 %i.lv, 0
  br i1 %i.lw, label %bb.bk, label %bb.bl

bb.bj:                                            ; preds = %bb.bg
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ls, i64 noundef %16, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1743) #43
  unreachable

bb.bk:                                            ; preds = %bb.bi
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lu, i64 4 ; 2 uses
  %i.ly = load float, ptr %i.lx, align 4, !noundef !45
  %i.lz = fcmp olt float %i.lr, %i.ly
  br i1 %i.lz, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bm, %bb.bi
  %.sroa.07.6 = phi i64 [ %.sroa.0.0.i125, %bb.bm ], [ %.sroa.07.5294, %bb.bk ], [ %.sroa.07.5294, %bb.bi ] ; 2 uses
  %i.ma = add i64 %.sroa.033.1293, 1
  %exitcond389.not = icmp eq i64 %.sroa.033.1293, %i.jr
  br i1 %exitcond389.not, label %.loopexit, label %bb.az

bb.bm:                                            ; preds = %bb.bk
  %i.mb = add nuw nsw i64 %.sroa.033.1293, 9
  %i.mc = sub i64 %i.mb, %.sroa.042.0
  %i.md = shl nsw i64 %i.mc, 25
  %i.me = or i64 %i.md, %.sroa.033.1293
  %i.mf = getelementptr inbounds nuw i8, ptr %i.lu, i64 8
  %i.mg = trunc i64 %i.me to i32
  store i32 %i.mg, ptr %i.mf, align 4
  %i.mh = getelementptr inbounds nuw i8, ptr %i.lu, i64 12
  store i32 %i.in, ptr %i.mh, align 4
  %i.mi = getelementptr inbounds nuw i8, ptr %i.lu, i64 16
  store i32 %i.ea, ptr %i.mi, align 4
  store float %i.lr, ptr %i.lx, align 4
  %.sroa.0.0.i125 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.033.1293, i64 %.sroa.07.5294)
  br label %bb.bl
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN6brotli3enc19backward_references2hq12EvaluateNode17hf4bbd34eaae1782fE(i64 noundef range(i64 0, 4294967296) %0, i64 noundef %1, i64 noundef range(i64 -15, 9223372036854775793) %2, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %3, ptr nofree readonly captures(none) %.16.val, i64 %.24.val, ptr noalias noundef nonnull align 8 dereferenceable(264) %4, ptr noalias nofree noundef nonnull align 4 captures(address, read_provenance) %5, i64 noundef range(i64 1, 0) %6) unnamed_addr #3 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = icmp ult i64 %1, %6
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw [20 x i8], ptr %5, i64 %1 ; 7 uses
  %i.d = load i32, ptr %i.c, align 4, !range !125, !noundef !45
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %1, i64 noundef %6, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1744) #43
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.g = load float, ptr %i.f, align 4, !noundef !45
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %.sroa.0.0 = phi float [ %i.g, %bb.d ], [ 0.000000e+00, %bb.b ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36326)
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.i = load i32, ptr %i.h, align 4, !alias.scope !36326, !noundef !45
  %i.j = and i32 %i.i, 33554431                   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.l = load i32, ptr %i.k, align 4, !alias.scope !36326, !noundef !45 ; 2 uses
  %i.m = and i32 %i.l, 134217727
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.o = load i32, ptr %i.n, align 4, !alias.scope !36326, !noundef !45 ; 2 uses
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
  %i.af = load i32, ptr %i.ae, align 4, !range !125, !alias.scope !36326, !noundef !45
  %i.ag = icmp eq i32 %i.af, 2
  br i1 %i.ag, label %bb.l, label %_ZN6brotli3enc19backward_references2hq23ComputeDistanceShortcut17h874cc0a1454c5946E.exit

bb.k:                                             ; preds = %bb.g
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.x, i64 noundef range(i64 1, 0) %6, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1758) #43, !noalias !36326
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !alias.scope !36326, !noundef !45
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
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %1, i64 noundef %.24.val, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1763) #43
  unreachable

"_ZN6brotli3enc19backward_references2hq29ZopfliCostModel$LT$AllocF$GT$17get_literal_costs17hf5624ff4da68ef36E.exit6": ; preds = %_ZN6brotli3enc19backward_references2hq23ComputeDistanceShortcut17h874cc0a1454c5946E.exit
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %.16.val, i64 %1
  %i.al = load float, ptr %i.ak, align 4, !noundef !45
  %i.am = load float, ptr %.16.val, align 4, !noundef !45
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
  %i.e = load i32, ptr %i.d, align 8, !noundef !45
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
  %i.y = phi i64 [ %i.aw, %bb.h ], [ 1, %.lr.ph.split.us ] ; 5 uses
  %i.z = sub i64 %6, %.sroa.012.0124.us.us        ; 2 uses
  %i.aa = icmp ugt i64 %i.z, %8
  br i1 %i.aa, label %._crit_edge, label %bb.a

bb.a:                                             ; preds = %.lr.ph.split.us.split.us
  %i.ab = and i64 %.sroa.012.0124.us.us, %4       ; 5 uses
  %i.ac = icmp ult i64 %i.ab, %3
  br i1 %i.ac, label %bb.b, label %.split134.us

bb.b:                                             ; preds = %bb.a
  %i.ad = load i8, ptr %i.t, align 1, !noundef !45
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 %i.ab ; 2 uses
  %i.af = load i8, ptr %i.ae, align 1, !noundef !45
  %i.ag = icmp eq i8 %i.ad, %i.af
  br i1 %i.ag, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.ah = add nuw nsw i64 %i.ab, 1                ; 3 uses
  %i.ai = icmp ult i64 %i.ah, %3
  br i1 %i.ai, label %bb.d, label %.split142.us

bb.d:                                             ; preds = %bb.c
  %i.aj = load i8, ptr %i.v, align 1, !noundef !45
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 %i.ah
  %i.al = load i8, ptr %i.ak, align 1, !noundef !45
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
  %i.at = and i64 %i.z, 4294967295
  %i.au = or disjoint i64 %i.as, %i.at
  store i64 %i.au, ptr %i.ar, align 8
  %i.av = add nuw i64 %.sroa.03.0123.us.us, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e, %bb.d, %bb.b
  %i.aw = phi i64 [ %i.ao, %bb.g ], [ %i.y, %bb.e ], [ %i.y, %bb.d ], [ %i.y, %bb.b ] ; 3 uses
  %.sroa.03.1.us.us = phi i64 [ %i.av, %bb.g ], [ %.sroa.03.0123.us.us, %bb.e ], [ %.sroa.03.0123.us.us, %bb.d ], [ %.sroa.03.0123.us.us, %bb.b ] ; 2 uses
  %.sroa.012.0.us.us = add i64 %.sroa.012.0124.us.us, -1 ; 2 uses
  %i.ax = icmp ugt i64 %.sroa.012.0.us.us, %spec.select
  %i.ay = icmp ult i64 %i.aw, 3
  %or.cond.us.us = select i1 %i.ax, i1 %i.ay, i1 false
  br i1 %or.cond.us.us, label %.lr.ph.split.us.split.us, label %._crit_edge

.lr.ph.split.us.split.split:                      ; preds = %.lr.ph.split.us, %bb.k
  %.sroa.012.0124.us = phi i64 [ %.sroa.012.0.us, %bb.k ], [ %.sroa.012.0121, %.lr.ph.split.us ] ; 3 uses
  %i.az = sub i64 %6, %.sroa.012.0124.us
  %i.ba = icmp ugt i64 %i.az, %8
  br i1 %i.ba, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %.lr.ph.split.us.split.split
  %i.bb = and i64 %.sroa.012.0124.us, %4          ; 3 uses
  %i.bc = icmp ult i64 %i.bb, %3
  br i1 %i.bc, label %bb.j, label %.split134.us

bb.j:                                             ; preds = %bb.i
  %i.bd = load i8, ptr %i.t, align 1, !noundef !45
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 %i.bb
  %i.bf = load i8, ptr %i.be, align 1, !noundef !45
  %i.bg = icmp eq i8 %i.bd, %i.bf
  br i1 %i.bg, label %.split138.us, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.sroa.012.0.us = add i64 %.sroa.012.0124.us, -1 ; 2 uses
  %i.bh = icmp ugt i64 %.sroa.012.0.us, %spec.select
  br i1 %i.bh, label %.lr.ph.split.us.split.split, label %._crit_edge

._crit_edge:                                      ; preds = %bb.k, %.lr.ph.split.us.split.split, %bb.h, %.lr.ph.split.us.split.us, %.lr.ph.split, %.split
  %.lcssa115 = phi i64 [ 1, %.split ], [ 1, %.lr.ph.split ], [ %i.y, %.lr.ph.split.us.split.us ], [ %i.aw, %bb.h ], [ 1, %.lr.ph.split.us.split.split ], [ 1, %bb.k ] ; 2 uses
  %.sroa.03.0.lcssa = phi i64 [ 0, %.split ], [ 0, %.lr.ph.split ], [ %.sroa.03.0123.us.us, %.lr.ph.split.us.split.us ], [ %.sroa.03.1.us.us, %bb.h ], [ 0, %.lr.ph.split.us.split.split ], [ 0, %bb.k ] ; 5 uses
  store i64 %.lcssa115, ptr %i.c, align 8
  %i.bi = icmp ult i64 %.lcssa115, %7
  br i1 %i.bi, label %bb.m, label %12

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.bj = icmp eq i64 %8, 0
  br i1 %i.bj, label %._crit_edge, label %bb.l

bb.l:                                             ; preds = %.lr.ph.split
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.p, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1748) #43
  unreachable

.split134.us:                                     ; preds = %bb.i, %bb.a
  %.us-phi156 = phi i64 [ %i.ab, %bb.a ], [ %i.bb, %bb.i ]
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.us-phi156, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1749) #43
  unreachable

.split138.us:                                     ; preds = %bb.j
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.u, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1750) #43
  unreachable

.split142.us:                                     ; preds = %bb.c
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ah, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1751) #43
  unreachable

.split146.us:                                     ; preds = %bb.f
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.03.0123.us.us, i64 noundef %11, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1752) #43
  unreachable

bb.m:                                             ; preds = %._crit_edge
  %.not = icmp ugt i64 %.sroa.03.0.lcssa, %11
  br i1 %.not, label %bb.n, label %17, !prof !47

12:                                               ; preds = %._crit_edge, %17
  %.sroa.03.2 = phi i64 [ %21, %17 ], [ %.sroa.03.0.lcssa, %._crit_edge ] ; 4 uses
  br label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @186, ptr %i.a, align 8
  %13 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %13, align 8
  %14 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %14, align 8
  %15 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %15, align 8
  %16 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %16, align 8
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1753) #43
  unreachable

17:                                               ; preds = %bb.m
  %18 = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %.sroa.03.0.lcssa
  %19 = sub nuw i64 %11, %.sroa.03.0.lcssa
  %20 = call fastcc noundef i64 @_ZN6brotli3enc19backward_references19hash_to_binary_tree22StoreAndFindMatchesH1017h1a8db7e0f3094503E(ptr noalias noundef align 8 dereferenceable(104) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3, i64 noundef %6, i64 noundef %4, i64 noundef %5, i64 noundef %7, i64 noundef %8, ptr noalias noundef align 8 dereferenceable(8) %i.c, ptr noalias noundef nonnull align 8 %18, i64 noundef %19)
  %21 = add i64 %20, %.sroa.03.0.lcssa
  br label %12

bb.o:                                             ; preds = %12, %bb.o
  %.sroa.0.0191 = phi i64 [ 0, %12 ], [ %spec.select79, %bb.o ] ; 3 uses
  %22 = icmp eq i64 %.sroa.0.0191, 37             ; 2 uses
  %23 = add nuw nsw i64 %.sroa.0.0191, 1
  %spec.select79 = select i1 %22, i64 37, i64 %23 ; 2 uses
  %24 = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.sroa.0.0191
  store i32 268435455, ptr %24, align 4
  %.not.i = icmp samesign ugt i64 %spec.select79, 37
  %or.cond82 = select i1 %22, i1 true, i1 %.not.i
  br i1 %or.cond82, label %bb.p, label %bb.o

bb.p:                                             ; preds = %bb.o
  %25 = load i64, ptr %i.c, align 8, !noundef !45
  %26 = add i64 %25, 1
  %.sroa.0.0.i51 = tail call noundef i64 @llvm.umax.i64(i64 %26, i64 4) ; 3 uses
  %.not48 = icmp eq ptr %1, null
  br i1 %.not48, label %.loopexit, label %bb.q

.loopexit:                                        ; preds = %bb.x, %bb.v, %bb.r, %bb.p
  %.sroa.03.3 = phi i64 [ %.sroa.03.2, %bb.r ], [ %.sroa.03.2, %bb.p ], [ %.sroa.03.2, %bb.v ], [ %.sroa.03.5, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i64 %.sroa.03.3

bb.q:                                             ; preds = %bb.p
  %i.bk = icmp ugt i64 %i.p, %3
  br i1 %i.bk, label %bb.s, label %bb.r, !prof !47

bb.r:                                             ; preds = %bb.q
  %i.bl = sub nuw i64 %3, %i.p
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 %i.p
  %i.bn = call noundef i32 @_ZN6brotli3enc11static_dict36BrotliFindAllStaticDictionaryMatches17h37bb93a29a74e0aeE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bm, i64 noundef %i.bl, i64 noundef %.sroa.0.0.i51, i64 noundef %7, ptr noalias noundef nonnull align 4 %i.b, i64 noundef 38)
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %.loopexit, label %bb.t

bb.s:                                             ; preds = %bb.q
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.p, i64 noundef %3, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1757) #43
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.bp = getelementptr inbounds nuw i8, ptr %9, i64 103
  %i.bq = load i8, ptr %i.bp, align 1, !range !52, !noundef !45
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %bb.v, label %bb.u, !prof !58

bb.u:                                             ; preds = %bb.t
  call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1754, i64 noundef 39, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1755) #43
  unreachable

bb.v:                                             ; preds = %bb.t
  %.sroa.0.0.i52 = call noundef i64 @llvm.umin.i64(i64 %7, i64 37) ; 3 uses
  %.not.i53192 = icmp ugt i64 %.sroa.0.0.i51, %.sroa.0.0.i52
  br i1 %.not.i53192, label %.loopexit, label %.lr.ph196

.lr.ph196:                                        ; preds = %bb.v
  %i.bs = add i64 %8, 1
  %i.bt = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.bu = load i64, ptr %i.bt, align 8
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph196, %bb.x
  %.sroa.03.4194 = phi i64 [ %.sroa.03.2, %.lr.ph196 ], [ %.sroa.03.5, %bb.x ] ; 6 uses
  %.sroa.057.0193 = phi i64 [ %.sroa.0.0.i51, %.lr.ph196 ], [ %spec.select81, %bb.x ] ; 5 uses
  %i.bv = icmp uge i64 %.sroa.057.0193, %.sroa.0.0.i52 ; 2 uses
  %not. = xor i1 %i.bv, true
  %i.bw = zext i1 %not. to i64
  %spec.select81 = add nuw nsw i64 %.sroa.057.0193, %i.bw ; 2 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.sroa.057.0193
  %i.by = load i32, ptr %i.bx, align 4, !noundef !45 ; 3 uses
  %i.bz = icmp ult i32 %i.by, 268435455
  br i1 %i.bz, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.aa, %bb.y, %bb.w
  %.sroa.03.5 = phi i64 [ %i.cn, %bb.aa ], [ %.sroa.03.4194, %bb.y ], [ %.sroa.03.4194, %bb.w ] ; 2 uses
  %.not.i53 = icmp ugt i64 %spec.select81, %.sroa.0.0.i52
  %or.cond83 = select i1 %i.bv, i1 true, i1 %.not.i53
  br i1 %or.cond83, label %.loopexit, label %bb.w

bb.y:                                             ; preds = %bb.w
  %i.ca = lshr i32 %i.by, 5
  %i.cb = zext nneg i32 %i.ca to i64
  %i.cc = add i64 %i.bs, %i.cb                    ; 2 uses
  %.not49 = icmp ugt i64 %i.cc, %i.bu
  br i1 %.not49, label %bb.x, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cd = icmp ult i64 %.sroa.03.4194, %11
  br i1 %i.cd, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %.sroa.03.4194
  %i.cf = and i32 %i.by, 31
  %i.cg = zext nneg i32 %i.cf to i64              ; 2 uses
  %i.ch = and i64 %i.cc, 4294967295
  %i.ci = icmp eq i64 %.sroa.057.0193, %i.cg
  %i.cj = shl nuw nsw i64 %i.cg, 32
  %.sroa.0.0.i = select i1 %i.ci, i64 0, i64 %i.cj
  %i.ck = shl nuw nsw i64 %.sroa.057.0193, 37
  %i.cl = or disjoint i64 %.sroa.0.0.i, %i.ck
  %i.cm = or disjoint i64 %i.cl, %i.ch
  store i64 %i.cm, ptr %i.ce, align 8, !noalias !36329
  %i.cn = add nuw i64 %.sroa.03.4194, 1
  br label %bb.x

bb.ab:                                            ; preds = %bb.z
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.03.4194, i64 noundef %11, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1756) #43
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN6brotli3enc19backward_references2hq29ZopfliCostModel$LT$AllocF$GT$22set_from_literal_costs17h95506b278b736b3bE"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(2864) %0, i64 noundef range(i64 0, 4294967296) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3, i64 noundef range(i64 0, 4294967296) %4) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val24 = load ptr, ptr %i.a, align 8, !nonnull !45, !align !70, !noundef !45 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val25 = load i64, ptr %i.b, align 8, !noundef !45 ; 3 uses
  %.val = load ptr, ptr %0, align 8, !nonnull !45, !align !70, !noundef !45
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val23 = load i64, ptr %i.c, align 8, !noundef !45 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2848
  %i.f = load i64, ptr %i.e, align 8, !noundef !45 ; 3 uses
  %i.g = icmp eq i64 %.val25, 0
  br i1 %i.g, label %bb.c, label %bb.b, !prof !47

bb.b:                                             ; preds = %bb.a
  %i.h = add i64 %.val25, -1                      ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val24, i64 4
  tail call void @_ZN6brotli3enc12literal_cost33BrotliEstimateBitCostsForLiterals17he65d90bf60059144E(i64 noundef %1, i64 noundef %i.f, i64 noundef %4, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3, ptr noalias noundef nonnull align 4 %i.i, i64 noundef %i.h)
  store float 0.000000e+00, ptr %.val24, align 4
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %.preheader.preheader, label %.lr.ph

.preheader.preheader:                             ; preds = %bb.o, %bb.b
  br label %.preheader

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 1, i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1774) #43
  unreachable

.lr.ph:                                           ; preds = %bb.b, %bb.o
  %i.j = phi float [ %i.aq, %bb.o ], [ 0.000000e+00, %bb.b ] ; 2 uses
  %.sroa.0.028 = phi float [ %i.as, %bb.o ], [ 0.000000e+00, %bb.b ]
  %.sroa.010.027 = phi i64 [ %i.k, %bb.o ], [ 0, %bb.b ] ; 2 uses
  %i.k = add nuw i64 %.sroa.010.027, 1            ; 4 uses
  %exitcond.not = icmp eq i64 %.sroa.010.027, %i.h
  br i1 %exitcond.not, label %bb.p, label %bb.o

bb.d:                                             ; preds = %bb.n
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2856
  %i.m = load i32, ptr %i.l, align 8, !noundef !45 ; 2 uses
  %i.n = zext i32 %i.m to i64
  %.not32 = icmp eq i32 %i.m, 0
  br i1 %.not32, label %._crit_edge, label %.lr.ph31

.preheader:                                       ; preds = %bb.n, %.preheader.preheader
  %.sroa.012.029 = phi i64 [ 0, %.preheader.preheader ], [ %i.af, %bb.n ] ; 6 uses
  %i.o = or disjoint i64 %.sroa.012.029, 1        ; 2 uses
  %i.p = add nuw nsw i64 %.sroa.012.029, 11       ; 2 uses
  %i.q = icmp samesign ult i64 %.sroa.012.029, 245
  br i1 %i.q, label %bb.k, label %bb.j

._crit_edge:                                      ; preds = %bb.h, %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 2860
  store float f0x405D6754, ptr %i.r, align 4
  ret void

.lr.ph31:                                         ; preds = %bb.d, %bb.h
  %.sroa.014.030 = phi i64 [ %i.s, %bb.h ], [ 0, %bb.d ] ; 5 uses
  %i.s = add nuw nsw i64 %.sroa.014.030, 1        ; 2 uses
  %i.t = add nuw nsw i64 %.sroa.014.030, 20       ; 2 uses
  %i.u = icmp samesign ult i64 %.sroa.014.030, 236
  br i1 %i.u, label %bb.g, label %bb.e

bb.e:                                             ; preds = %.lr.ph31
  %i.v = uitofp nneg i64 %i.t to float
  %i.w = tail call float @llvm.log2.f32(float %i.v)
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %.sroa.09.0 = phi float [ %i.y, %bb.g ], [ %i.w, %bb.e ]
  %exitcond37.not = icmp eq i64 %.sroa.014.030, %.val23
  br i1 %exitcond37.not, label %bb.i, label %bb.h

bb.g:                                             ; preds = %.lr.ph31
  %i.x = getelementptr inbounds nuw [4 x i8], ptr @_ZN6brotli3enc11log_table_86logs_817hcdfb6f7171a9ff1cE, i64 %i.t
  %i.y = load float, ptr %i.x, align 4, !noundef !45
  br label %bb.f

bb.h:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %.sroa.014.030
  store float %.sroa.09.0, ptr %i.z, align 4
  %exitcond38.not = icmp eq i64 %i.s, %i.n
  br i1 %exitcond38.not, label %._crit_edge, label %.lr.ph31

bb.i:                                             ; preds = %bb.f
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.val23, i64 noundef %.val23, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1772) #43
  unreachable

bb.j:                                             ; preds = %.preheader
  %i.aa = uitofp nneg i64 %i.p to float
  %i.ab = tail call float @llvm.log2.f32(float %i.aa)
  br label %.preheader.1

bb.k:                                             ; preds = %.preheader
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr @_ZN6brotli3enc11log_table_86logs_817hcdfb6f7171a9ff1cE, i64 %i.p
  %i.ad = load float, ptr %i.ac, align 4, !noundef !45
  br label %.preheader.1

.preheader.1:                                     ; preds = %bb.j, %bb.k
  %.sroa.06.0 = phi float [ %i.ad, %bb.k ], [ %i.ab, %bb.j ]
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.sroa.012.029
  store float %.sroa.06.0, ptr %i.ae, align 8
  %i.af = add nuw nsw i64 %.sroa.012.029, 2       ; 2 uses
  %i.ag = add nuw nsw i64 %.sroa.012.029, 12      ; 2 uses
  %i.ah = icmp samesign ult i64 %i.o, 245
  br i1 %i.ah, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.preheader.1
  %i.ai = uitofp nneg i64 %i.ag to float
  %i.aj = tail call float @llvm.log2.f32(float %i.ai)
  br label %bb.n

bb.m:                                             ; preds = %.preheader.1
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr @_ZN6brotli3enc11log_table_86logs_817hcdfb6f7171a9ff1cE, i64 %i.ag
end_hunk_0
begin_hunk_1_@"_ZN94_$LT$actix_http..h2..HandshakeWithTimeout$LT$T$GT$$u20$as$u20$core..future..future..Future$GT$4poll17h4500024112ab0602E":bb.a
  %i.os = load ptr, ptr @"_ZN83_$LT$h2..server..Handshake$LT$T$C$B$GT$$u20$as$u20$core..future..future..Future$GT$4poll10__CALLSITE17h0ae75733b897a671E", align 8, !noalias !40711, !nonnull !45, !align !48, !noundef !45 ; 3 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 32
  %i.ou = load ptr, ptr %i.ot, align 8, !noalias !40713, !nonnull !45, !align !55, !noundef !45
  %i.ov = getelementptr inbounds nuw i8, ptr %i.os, i64 40
  %i.ow = load i64, ptr %i.ov, align 8, !noalias !40713, !noundef !45
  store i64 5, ptr %i.cg, align 8, !noalias !40711
  %.sroa.5167.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store ptr %i.ou, ptr %.sroa.5167.0..sroa_idx.i, align 8, !noalias !40711
  %.sroa.7168.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  store i64 %i.ow, ptr %.sroa.7168.0..sroa_idx.i, align 8, !noalias !40711
  %i.ox = invoke { ptr, ptr } @_ZN3log6logger17hcebe01820b13d6ccE()
          to label %bb.do unwind label %.loopexit.split-lp.i, !noalias !40713 ; 2 uses

bb.do:                                            ; preds = %bb.dn
  %i.oy = extractvalue { ptr, ptr } %i.ox, 0      ; 2 uses
  %i.oz = extractvalue { ptr, ptr } %i.ox, 1      ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 24
  %i.pb = load ptr, ptr %i.pa, align 8, !invariant.load !45, !noalias !40713, !nonnull !45
  %i.pc = invoke noundef zeroext i1 %i.pb(ptr noundef align 1 %i.oy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cg)
          to label %bb.dp unwind label %.loopexit.split-lp.i, !noalias !40713

bb.dp:                                            ; preds = %bb.do
  br i1 %i.pc, label %bb.dq, label %bb.dt

bb.dq:                                            ; preds = %bb.dp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf), !noalias !40711
  %i.pd = load ptr, ptr @"_ZN83_$LT$h2..server..Handshake$LT$T$C$B$GT$$u20$as$u20$core..future..future..Future$GT$4poll10__CALLSITE17h0ae75733b897a671E", align 8, !noalias !40711, !nonnull !45, !align !48, !noundef !45
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce), !noalias !40711
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd), !noalias !40711
  store ptr @2112, ptr %i.cd, align 8, !noalias !40711
  store ptr %i.cd, ptr %i.ce, align 8, !noalias !40711
  %i.pf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store ptr @777, ptr %i.pf, align 8, !noalias !40711
  store i64 1, ptr %i.cf, align 8, !noalias !40711
  %.sroa.4117.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store ptr %i.ce, ptr %.sroa.4117.0..sroa_idx.i, align 8, !noalias !40711
  %.sroa.5118.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  store i64 1, ptr %.sroa.5118.0..sroa_idx.i, align 8, !noalias !40711
  %i.pg = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  store ptr %i.pe, ptr %i.pg, align 8, !noalias !40711
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !40711
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %i.cg, i64 24, i1 false), !noalias !40711
  invoke void @_ZN7tracing15__macro_support13__tracing_log17he6e71def31f38619E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.os, ptr noundef nonnull align 1 %i.oy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.oz, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.ay, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cf)
          to label %bb.dr unwind label %.loopexit.split-lp.i, !noalias !40713

bb.dr:                                            ; preds = %bb.dq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !40711
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd), !noalias !40711
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce), !noalias !40711
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf), !noalias !40711
  br label %bb.dt

bb.ds:                                            ; preds = %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj), !noalias !40711
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch), !noalias !40711
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci), !noalias !40711
  br label %bb.dt

bb.dt:                                            ; preds = %.thread344.i, %bb.dm, %bb.dp, %bb.dr, %bb.ds, %bb.fn, %bb.bx
  %.sroa.14.2 = phi ptr [ %.sroa.14.1, %bb.fn ], [ %.sroa.10256.0.i, %bb.bx ], [ undef, %bb.ds ], [ undef, %bb.dr ], [ undef, %bb.dp ], [ undef, %bb.dm ], [ undef, %.thread344.i ] ; 2 uses
  %.sroa.9.2 = phi i8 [ %.sroa.9.1, %bb.fn ], [ %.sroa.6.0.i, %bb.bx ], [ undef, %bb.ds ], [ undef, %bb.dr ], [ undef, %bb.dp ], [ undef, %bb.dm ], [ undef, %.thread344.i ] ; 2 uses
  %.sroa.0.1 = phi i64 [ %.sroa.0.0, %bb.fn ], [ 2, %bb.bx ], [ 3, %bb.ds ], [ 3, %bb.dr ], [ 3, %bb.dp ], [ 3, %bb.dm ], [ 3, %.thread344.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !40765)
  %i.ph = load i64, ptr %i.cr, align 8, !range !56, !alias.scope !40765, !noalias !40766, !noundef !45
  %.not.i.i234.i = icmp eq i64 %i.ph, 2
  br i1 %.not.i.i234.i, label %.noexc237.i, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.pi = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  invoke void @_ZN12tracing_core10dispatcher8Dispatch4exit17h66a7948e4d957dc0E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.cr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.pi)
          to label %.noexc237.i unwind label %bb.g, !noalias !40713

.noexc237.i:                                      ; preds = %bb.du, %bb.dt
  %i.pj = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9063ca422f1e9098E monotonic, align 1, !noalias !40766
  %i.pk = icmp eq i8 %i.pj, 0
  br i1 %i.pk, label %bb.dv, label %"_ZN83_$LT$h2..server..Handshake$LT$T$C$B$GT$$u20$as$u20$core..future..future..Future$GT$4poll17h0a04576ac50ffc70E.exit"

bb.dv:                                            ; preds = %.noexc237.i
  %i.pl = load ptr, ptr %i.db, align 8, !alias.scope !40765, !noalias !40766, !align !48, !noundef !45 ; 3 uses
  %.not4.i.i235.i = icmp eq ptr %i.pl, null
  br i1 %.not4.i.i235.i, label %"_ZN83_$LT$h2..server..Handshake$LT$T$C$B$GT$$u20$as$u20$core..future..future..Future$GT$4poll17h0a04576ac50ffc70E.exit", label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !40767
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !40767
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !40767
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 16
  %i.pn = load ptr, ptr %i.pm, align 8, !noalias !40768, !nonnull !45, !align !55, !noundef !45
  %i.po = getelementptr inbounds nuw i8, ptr %i.pl, i64 24
  %i.pp = load i64, ptr %i.po, align 8, !noalias !40768, !noundef !45
  store ptr %i.pn, ptr %i.o, align 8, !noalias !40767
  %i.pq = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %i.pp, ptr %i.pq, align 8, !noalias !40767
  store ptr %i.o, ptr %i.p, align 8, !noalias !40767
  %.sroa.43.0..sroa_idx.i.i236.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h46d4d467e9bdcd5cE", ptr %.sroa.43.0..sroa_idx.i.i236.i, align 8, !noalias !40767
  store ptr @2094, ptr %i.q, align 8, !noalias !40767
  %i.pr = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 2, ptr %i.pr, align 8, !noalias !40767
  %i.ps = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store ptr null, ptr %i.ps, align 8, !noalias !40767
  %i.pt = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.p, ptr %i.pt, align 8, !noalias !40767
  %i.pu = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store i64 1, ptr %i.pu, align 8, !noalias !40767
  invoke fastcc void @_ZN7tracing4span4Span3log17hac48bcd7604f5552E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.cr, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2095, i64 noundef 21, ptr noalias noundef readonly align 8 captures(address) dereferenceable(48) %i.q)
          to label %.noexc238.i unwind label %bb.g

.noexc238.i:                                      ; preds = %bb.dw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !40767
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !40767
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !40767
  br label %"_ZN83_$LT$h2..server..Handshake$LT$T$C$B$GT$$u20$as$u20$core..future..future..Future$GT$4poll17h0a04576ac50ffc70E.exit"

"_ZN91_$LT$tracing..instrument..Instrumented$LT$T$GT$$u20$as$u20$core..future..future..Future$GT$4poll17h9563bbf15aebb6faE.exit.i": ; preds = %.noexc225.i, %bb.bt, %.noexc224.i
  switch i64 %i.lf, label %bb.dz [
    i64 3, label %bb.dy
    i64 2, label %bb.dx
  ]

bb.dx:                                            ; preds = %"_ZN91_$LT$tracing..instrument..Instrumented$LT$T$GT$$u20$as$u20$core..future..future..Future$GT$4poll17h9563bbf15aebb6faE.exit.i"
  %i.pv = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %.sroa.853.i.sroa.0.0.copyload = load i8, ptr %i.pv, align 8, !noalias !40711
  %.sroa.853.i.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.853.i.sroa.7, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.853.i.sroa.7.0..sroa_idx, i64 7, i1 false), !noalias !40711
  %.sroa.853.i.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %.sroa.853.i.sroa.8.0.copyload = load ptr, ptr %.sroa.853.i.sroa.8.0..sroa_idx, align 8, !noalias !40711
  %.sroa.853.i.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.853.i.sroa.9, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.853.i.sroa.9.0..sroa_idx, i64 24, i1 false), !noalias !40711
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !40711
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.13, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.853.i.sroa.7, i64 7, i1 false), !noalias !40763
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.15, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.853.i.sroa.9, i64 24, i1 false), !noalias !40763
  br label %bb.fr

bb.dy:                                            ; preds = %"_ZN91_$LT$tracing..instrument..Instrumented$LT$T$GT$$u20$as$u20$core..future..future..Future$GT$4poll17h9563bbf15aebb6faE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !40711
  br label %bb.fr

bb.dz:                                            ; preds = %"_ZN91_$LT$tracing..instrument..Instrumented$LT$T$GT$$u20$as$u20$core..future..future..Future$GT$4poll17h9563bbf15aebb6faE.exit.i"
  %.sroa.4142.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %.sroa.853.i.sroa.0.0.copyload66 = load i8, ptr %.sroa.4142.0..sroa_idx.i, align 8, !noalias !40711
  %.sroa.853.i.sroa.7.0..sroa.4142.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.853.i.sroa.7, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.853.i.sroa.7.0..sroa.4142.0..sroa_idx.i.sroa_idx, i64 7, i1 false), !noalias !40711
  %.sroa.853.i.sroa.8.0..sroa.4142.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %.sroa.853.i.sroa.8.0.copyload68 = load ptr, ptr %.sroa.853.i.sroa.8.0..sroa.4142.0..sroa_idx.i.sroa_idx, align 8, !noalias !40711
  %.sroa.853.i.sroa.9.0..sroa.4142.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.853.i.sroa.9, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.853.i.sroa.9.0..sroa.4142.0..sroa_idx.i.sroa_idx, i64 24, i1 false), !noalias !40711
  %.sroa.5143.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2032) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(2032) %.sroa.5143.0..sroa_idx.i, i64 2032, i1 false), !noalias !40711
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !40711
  %.sroa.463.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store i8 %.sroa.853.i.sroa.0.0.copyload66, ptr %.sroa.463.0..sroa_idx.i, align 8, !noalias !40711
  %.sroa.853.i.sroa.7.0..sroa.463.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.853.i.sroa.7.0..sroa.463.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.853.i.sroa.7, i64 7, i1 false), !noalias !40711
  %.sroa.853.i.sroa.8.0..sroa.463.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store ptr %.sroa.853.i.sroa.8.0.copyload68, ptr %.sroa.853.i.sroa.8.0..sroa.463.0..sroa_idx.i.sroa_idx, align 8, !noalias !40711
  %.sroa.853.i.sroa.9.0..sroa.463.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.853.i.sroa.9.0..sroa.463.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.853.i.sroa.9, i64 24, i1 false), !noalias !40711
  store i64 %i.lf, ptr %i.bn, align 8, !noalias !40711
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.853.i.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.853.i.sroa.9)
  invoke fastcc void @"_ZN4core3ptr157drop_in_place$LT$h2..server..Handshaking$LT$actix_tls..accept..rustls_0_23..TlsStream$LT$tokio..net..tcp..stream..TcpStream$GT$$C$bytes..bytes..Bytes$GT$$GT$17hb987a730105197f2E"(ptr noalias noundef align 8 dereferenceable(2128) %i.fl)
          to label %bb.ea unwind label %bb.fq, !noalias !40713

bb.ea:                                            ; preds = %bb.dz
  store i64 5, ptr %i.fl, align 8, !alias.scope !40710, !noalias !40712
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !40711
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !noalias !40711
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2080) %i.bk, ptr noundef nonnull align 8 dereferenceable(2080) %i.bn, i64 2080, i1 false), !noalias !40711
  %i.pw = invoke noundef i32 @"_ZN81_$LT$h2..frame..stream_id..StreamId$u20$as$u20$core..convert..From$LT$u32$GT$$GT$4from17he6b3d4fe7502e6a4E"(i32 noundef 2)
          to label %bb.eb unwind label %bb.fp, !noalias !40713

bb.eb:                                            ; preds = %bb.ea
  %i.px = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.py = load i64, ptr %i.px, align 8, !alias.scope !40710, !noalias !40712, !noundef !45
  %i.pz = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.qa = load i64, ptr %i.pz, align 8, !alias.scope !40710, !noalias !40712, !noundef !45
  %i.qb = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.qc = load i32, ptr %i.qb, align 8, !range !83, !alias.scope !40710, !noalias !40712, !noundef !45
  %i.qd = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.qe = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.qf = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.qg = load i8, ptr %i.qf, align 8, !alias.scope !40769, !noalias !40770, !noundef !45
  %i.qh = load i32, ptr %i.qe, align 8, !range !104, !alias.scope !40769, !noalias !40770, !noundef !45 ; 2 uses
  %i.qi = trunc nuw i32 %i.qh to i1
  %i.qj = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.qk = load i32, ptr %i.qj, align 4, !alias.scope !40769, !noalias !40770
  %.sroa.5.0.i.i = select i1 %i.qi, i32 %i.qk, i32 undef
  %i.ql = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.qm = load i32, ptr %i.ql, align 8, !range !104, !alias.scope !40769, !noalias !40770, !noundef !45 ; 2 uses
  %i.qn = trunc nuw i32 %i.qm to i1               ; 2 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.qp = load i32, ptr %i.qo, align 4, !alias.scope !40769, !noalias !40770
  %.sroa.52.0.i.i = select i1 %i.qn, i32 %i.qp, i32 undef ; 2 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.qr = load i32, ptr %i.qq, align 8, !range !104, !alias.scope !40769, !noalias !40770, !noundef !45 ; 3 uses
  %i.qs = trunc nuw i32 %i.qr to i1               ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.qu = load i32, ptr %i.qt, align 4, !alias.scope !40769, !noalias !40770
  %.sroa.54.0.i.i = select i1 %i.qs, i32 %i.qu, i32 undef ; 2 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.qw = load i32, ptr %i.qv, align 8, !range !104, !alias.scope !40769, !noalias !40770, !noundef !45 ; 2 uses
  %i.qx = trunc nuw i32 %i.qw to i1               ; 2 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.qz = load i32, ptr %i.qy, align 4, !alias.scope !40769, !noalias !40770 ; 2 uses
  %.sroa.56.0.i.i = select i1 %i.qx, i32 %i.qz, i32 undef
  %i.ra = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.rb = load i32, ptr %i.ra, align 8, !range !104, !alias.scope !40769, !noalias !40770, !noundef !45 ; 2 uses
  %i.rc = trunc nuw i32 %i.rb to i1
  %i.rd = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.re = load i32, ptr %i.rd, align 4, !alias.scope !40769, !noalias !40770
  %.sroa.58.0.i.i = select i1 %i.rc, i32 %i.re, i32 undef
  %i.rf = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.rg = load i32, ptr %i.rf, align 8, !range !104, !alias.scope !40769, !noalias !40770, !noundef !45 ; 2 uses
  %i.rh = trunc nuw i32 %i.rg to i1
  %i.ri = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.rj = load i32, ptr %i.ri, align 4, !alias.scope !40769, !noalias !40770
  %.sroa.510.0.i.i = select i1 %i.rh, i32 %i.rj, i32 undef
  %i.rk = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.rl = load i32, ptr %i.rk, align 8, !range !104, !alias.scope !40769, !noalias !40770, !noundef !45 ; 2 uses
  %i.rm = trunc nuw i32 %i.rl to i1               ; 2 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.ro = load i32, ptr %i.rn, align 4, !alias.scope !40769, !noalias !40770
  %.sroa.512.0.i.i = select i1 %i.rm, i32 %i.ro, i32 undef ; 2 uses
  %.sroa.26283.56.insert.ext.i = zext i8 %i.qg to i32
  %.sroa.0276.0.insert.ext.i = zext nneg i32 %i.qh to i64
  %.sroa.0276.4.insert.ext.i = zext i32 %.sroa.5.0.i.i to i64
  %.sroa.0276.4.insert.shift.i = shl nuw i64 %.sroa.0276.4.insert.ext.i, 32
  %.sroa.0276.4.insert.insert.i = or disjoint i64 %.sroa.0276.4.insert.shift.i, %.sroa.0276.0.insert.ext.i
  call void @llvm.experimental.noalias.scope.decl(metadata !40771)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !40772
  %.sroa.0.0.i.i.i = select i1 %i.qx, i32 %i.qz, i32 65535
  %i.rp = icmp ne i32 %.sroa.52.0.i.i, 0
  %not..i.i.i = xor i1 %i.qn, true
  %narrow.i.i.i = select i1 %not..i.i.i, i1 true, i1 %i.rp
  %.sroa.03.0.i.i.i = zext i1 %narrow.i.i.i to i8
  %i.rq = icmp ne i32 %.sroa.512.0.i.i, 0
  %narrow17.i.i.i = select i1 %i.rm, i1 %i.rq, i1 false
  %.sroa.05.0.i.i.i = zext i1 %narrow17.i.i.i to i8
  %i.rr = zext i32 %.sroa.54.0.i.i to i64
  %.sroa.5.0.i.i.i = select i1 %i.qs, i64 %i.rr, i64 undef
  %.sroa.07.0.i.i.i = zext nneg i32 %i.qr to i64
  %i.rs = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  store i32 %.sroa.0.0.i.i.i, ptr %i.rs, align 8, !alias.scope !40773, !noalias !40774
  %i.rt = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  store i64 0, ptr %i.rt, align 8, !alias.scope !40773, !noalias !40774
  %i.ru = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  store i64 %i.py, ptr %i.ru, align 8, !alias.scope !40773, !noalias !40774
  %i.rv = getelementptr inbounds nuw i8, ptr %i.n, i64 84
  store i32 %i.pw, ptr %i.rv, align 4, !alias.scope !40773, !noalias !40774
  %i.rw = getelementptr inbounds nuw i8, ptr %i.n, i64 92
  store i8 %.sroa.03.0.i.i.i, ptr %i.rw, align 4, !alias.scope !40773, !noalias !40774
  %i.rx = getelementptr inbounds nuw i8, ptr %i.n, i64 93
  store i8 %.sroa.05.0.i.i.i, ptr %i.rx, align 1, !alias.scope !40773, !noalias !40774
  %i.ry = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store i64 %i.qa, ptr %i.ry, align 8, !alias.scope !40773, !noalias !40774
  %i.rz = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store i32 %i.qc, ptr %i.rz, align 8, !alias.scope !40773, !noalias !40774
  %i.sa = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.sb = load <2 x i64>, ptr %i.qd, align 8, !alias.scope !40710, !noalias !40712
  store <2 x i64> %i.sb, ptr %i.sa, align 8, !alias.scope !40773, !noalias !40774
  %i.sc = getelementptr inbounds nuw i8, ptr %i.n, i64 88
  store i32 65535, ptr %i.sc, align 8, !alias.scope !40773, !noalias !40774
  store i64 %.sroa.07.0.i.i.i, ptr %i.n, align 8, !alias.scope !40773, !noalias !40774
  %i.sd = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %.sroa.5.0.i.i.i, ptr %i.sd, align 8, !alias.scope !40773, !noalias !40774
  %i.se = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.sf = load <2 x i64>, ptr %1, align 8, !alias.scope !40710, !noalias !40712
  store <2 x i64> %i.sf, ptr %i.se, align 8, !alias.scope !40773, !noalias !40774
  %i.sg = invoke fastcc { ptr, ptr } @"_ZN2h25proto7streams7streams20Streams$LT$B$C$P$GT$3new17h76ffac9b2b58ea76E"(ptr noalias noundef align 8 captures(address) dereferenceable(96) %i.n)
          to label %bb.ee unwind label %bb.er, !noalias !40775 ; 2 uses

bb.ec:                                            ; preds = %bb.el, %bb.ed
  %.pn.i.i = phi { ptr, i32 } [ %i.sh, %bb.ed ], [ %i.sx, %bb.el ]
  invoke fastcc void @"_ZN4core3ptr103drop_in_place$LT$h2..proto..streams..streams..Streams$LT$bytes..bytes..Bytes$C$h2..server..Peer$GT$$GT$17hc7dac64eafe43c41E"(ptr noalias noundef align 8 dereferenceable(16) %i.k) #44
          to label %bb.eq unwind label %bb.eo, !noalias !40775

bb.ed:                                            ; preds = %bb.ej, %.thread45.i.i, %bb.eg
  %i.sh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ec

bb.ee:                                            ; preds = %bb.eb
  %i.si = extractvalue { ptr, ptr } %i.sg, 0      ; 2 uses
  %i.sj = extractvalue { ptr, ptr } %i.sg, 1      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !40772
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !40772
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2080) %i.m, ptr noundef nonnull align 8 dereferenceable(2080) %i.bk, i64 2080, i1 false), !noalias !40776
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !40772
  %i.sk = getelementptr inbounds nuw i8, ptr %i.l, i64 17
  store i8 2, ptr %i.sk, align 1, !noalias !40772
  %i.sl = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i8 0, ptr %i.sl, align 8, !noalias !40772
  store ptr null, ptr %i.l, align 8, !noalias !40772
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !40772
  store ptr %i.si, ptr %i.k, align 8, !noalias !40772
  %i.sm = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.sj, ptr %i.sm, align 8, !noalias !40772
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !40772
  %i.sn = load atomic i64, ptr @_ZN12tracing_core8metadata9MAX_LEVEL17h3c62bc6fa7dc27b1E monotonic, align 8, !noalias !40772
  %i.so = icmp ult i64 %i.sn, 2
  br i1 %i.so, label %bb.ef, label %.thread49.i.i

bb.ef:                                            ; preds = %bb.ee
  %i.sp = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @"_ZN2h25proto10connection27Connection$LT$T$C$P$C$B$GT$3new10__CALLSITE17h0ef1bfcb779c1c64E", i64 16) monotonic, align 8, !noalias !40772 ; 3 uses
  switch i8 %i.sp, label %bb.eg [
    i8 0, label %.thread49.i.i
    i8 1, label %.thread45.i.i
    i8 2, label %.thread45.i.i
  ], !prof !64

bb.eg:                                            ; preds = %bb.ef
  %i.sq = invoke noundef i8 @_ZN12tracing_core8callsite15DefaultCallsite8register17hfea5cd845fb2ec3aE(ptr noundef nonnull align 8 @"_ZN2h25proto10connection27Connection$LT$T$C$P$C$B$GT$3new10__CALLSITE17h0ef1bfcb779c1c64E")
          to label %bb.eh unwind label %bb.ed, !noalias !40775 ; 2 uses

bb.eh:                                            ; preds = %bb.eg
  %.not.i240.i = icmp eq i8 %i.sq, 0
  br i1 %.not.i240.i, label %.thread49.i.i, label %.thread45.i.i

.thread45.i.i:                                    ; preds = %bb.ef, %bb.eh, %bb.ef
  %.sroa.08.048.i.i = phi i8 [ %i.sq, %bb.eh ], [ %i.sp, %bb.ef ], [ %i.sp, %bb.ef ]
  %i.sr = load ptr, ptr @"_ZN2h25proto10connection27Connection$LT$T$C$P$C$B$GT$3new10__CALLSITE17h0ef1bfcb779c1c64E", align 8, !noalias !40772, !nonnull !45, !align !48, !noundef !45
  %i.ss = invoke noundef zeroext i1 @_ZN7tracing15__macro_support12__is_enabled17ha8d49a956677b3d5E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.sr, i8 noundef %.sroa.08.048.i.i)
          to label %bb.ei unwind label %bb.ed, !noalias !40775

bb.ei:                                            ; preds = %.thread45.i.i
  br i1 %i.ss, label %bb.ej, label %.thread49.i.i

bb.ej:                                            ; preds = %bb.ei
  %i.st = load ptr, ptr @"_ZN2h25proto10connection27Connection$LT$T$C$P$C$B$GT$3new10__CALLSITE17h0ef1bfcb779c1c64E", align 8, !noalias !40772, !nonnull !45, !align !48, !noundef !45 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !40772
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !40772
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !40772
  store ptr @776, ptr %i.g, align 8, !noalias !40772
  store ptr %i.g, ptr %i.h, align 8, !noalias !40772
  %i.sv = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @777, ptr %i.sv, align 8, !noalias !40772
  store i64 1, ptr %i.i, align 8, !noalias !40772
  %.sroa.426.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.h, ptr %.sroa.426.0..sroa_idx.i.i, align 8, !noalias !40772
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !40772
  %i.sw = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr %i.su, ptr %i.sw, align 8, !noalias !40772
  invoke void @_ZN7tracing4span4Span3new17hf7eba8cb0dd6baa4E(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.st, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i)
          to label %bb.ep unwind label %bb.ed, !noalias !40775

bb.ek:                                            ; preds = %bb.en, %.thread49.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull align 8 dereferenceable(40) %i.f, i64 40, i1 false), !noalias !40772
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !40772
  br label %bb.es

bb.el:                                            ; preds = %bb.em
  %i.sx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$tracing..span..Span$GT$17h3b60b4793e7fa7f8E"(ptr noalias noundef align 8 dereferenceable(40) %i.f) #44
          to label %bb.ec unwind label %bb.eo, !noalias !40775

.thread49.i.i:                                    ; preds = %bb.ei, %bb.eh, %bb.ef, %bb.ee
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !40772
  %i.sy = load ptr, ptr @"_ZN2h25proto10connection27Connection$LT$T$C$P$C$B$GT$3new10__CALLSITE17h0ef1bfcb779c1c64E", align 8, !noalias !40772, !nonnull !45, !align !48, !noundef !45 ; 2 uses
  store i64 2, ptr %i.f, align 8, !noalias !40772
  %i.sz = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr %i.sy, ptr %i.sz, align 8, !noalias !40772
  %i.ta = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9063ca422f1e9098E monotonic, align 1, !noalias !40772
  %i.tb = icmp eq i8 %i.ta, 0
  br i1 %i.tb, label %bb.em, label %bb.ek

bb.em:                                            ; preds = %.thread49.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !40772
  %i.tc = getelementptr inbounds nuw i8, ptr %i.sy, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !40772
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !40772
  store ptr @776, ptr %i.c, align 8, !noalias !40772
  store ptr %i.c, ptr %i.d, align 8, !noalias !40772
  %i.td = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @777, ptr %i.td, align 8, !noalias !40772
  store i64 1, ptr %i.e, align 8, !noalias !40772
  %.sroa.430.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.d, ptr %.sroa.430.0..sroa_idx.i.i, align 8, !noalias !40772
  %.sroa.531.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 1, ptr %.sroa.531.0..sroa_idx.i.i, align 8, !noalias !40772
  %i.te = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %i.tc, ptr %i.te, align 8, !noalias !40772
  %i.tf = invoke noundef align 8 dereferenceable(40) ptr @_ZN7tracing4span4Span10record_all17hb9e98382ea24c54cE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e)
          to label %bb.en unwind label %bb.el, !noalias !40775 ; 0 uses

bb.en:                                            ; preds = %bb.em
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !40772
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !40772
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !40772
  br label %bb.ek

bb.eo:                                            ; preds = %bb.er, %"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$h2..frame..go_away..GoAway$GT$$GT$17h5ed69fd7cf4b572bE.exit.i.i", %bb.eq, %bb.el, %bb.ec
  %i.tg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45, !noalias !40777
  unreachable

bb.ep:                                            ; preds = %bb.ej
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !40772
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !40772
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !40772
  br label %bb.es

bb.eq:                                            ; preds = %bb.ec
  invoke fastcc void @"_ZN4core3ptr51drop_in_place$LT$h2..proto..ping_pong..PingPong$GT$17h4fbc33de66f9f12cE"(ptr noalias noundef align 8 dereferenceable(32) %i.l) #44
          to label %"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$h2..frame..go_away..GoAway$GT$$GT$17h5ed69fd7cf4b572bE.exit.i.i" unwind label %bb.eo, !noalias !40775

"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$h2..frame..go_away..GoAway$GT$$GT$17h5ed69fd7cf4b572bE.exit.i.i": ; preds = %bb.eq
  invoke fastcc void @"_ZN4core3ptr201drop_in_place$LT$h2..codec..Codec$LT$actix_tls..accept..rustls_0_23..TlsStream$LT$tokio..net..tcp..stream..TcpStream$GT$$C$h2..proto..streams..prioritize..Prioritized$LT$bytes..bytes..Bytes$GT$$GT$$GT$17h0dac335a18740b3eE"(ptr noalias noundef align 8 dereferenceable(2080) %i.m) #44
          to label %.body.i unwind label %bb.eo, !noalias !40775

bb.er:                                            ; preds = %bb.eb
  %i.th = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr201drop_in_place$LT$h2..codec..Codec$LT$actix_tls..accept..rustls_0_23..TlsStream$LT$tokio..net..tcp..stream..TcpStream$GT$$C$h2..proto..streams..prioritize..Prioritized$LT$bytes..bytes..Bytes$GT$$GT$$GT$17h0dac335a18740b3eE"(ptr noalias noundef nonnull align 8 dereferenceable(2080) %i.bk) #44
          to label %.body.i unwind label %bb.eo, !noalias !40777

bb.es:                                            ; preds = %bb.ep, %bb.ek
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 2232
  store ptr null, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !40778
  %.sroa.0.sroa.0.i.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 2176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.sroa.0.i.sroa.11.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false), !noalias !40778
  %.sroa.10.sroa.4.0..sroa.10.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 2276
  store i64 %.sroa.0276.4.insert.insert.i, ptr %.sroa.10.sroa.4.0..sroa.10.0..sroa_idx.sroa_idx.i.i, align 4, !noalias !40778
  %.sroa.421.i.sroa.4.0..sroa.10.sroa.4.0..sroa.10.0..sroa_idx.sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 2284
  store i32 %i.qm, ptr %.sroa.421.i.sroa.4.0..sroa.10.sroa.4.0..sroa.10.0..sroa_idx.sroa_idx.i.sroa_idx.i, align 4, !noalias !40778
  %.sroa.421.i.sroa.5.0..sroa.10.sroa.4.0..sroa.10.0..sroa_idx.sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 2288
  store i32 %.sroa.52.0.i.i, ptr %.sroa.421.i.sroa.5.0..sroa.10.sroa.4.0..sroa.10.0..sroa_idx.sroa_idx.i.sroa_idx.i, align 8, !noalias !40778
  %.sroa.421.i.sroa.6.0..sroa.10.sroa.4.0..sroa.10.0..sroa_idx.sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 2292
  store i32 %i.qr, ptr %.sroa.421.i.sroa.6.0..sroa.10.sroa.4.0..sroa.10.0..sroa_idx.sroa_idx.i.sroa_idx.i, align 4, !noalias !40778
  %.sroa.421.i.sroa.7.0..sroa.10.sroa.4.0..sroa.10.0..sroa_idx.sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 2296
  store i32 %.sroa.54.0.i.i, ptr %.sroa.421.i.sroa.7.0..sroa.10.sroa.4.0..sroa.10.0..sroa_idx.sroa_idx.i.sroa_idx.i, align 8, !noalias !40778
  %.sroa.421.i.sroa.8.0..sroa.10.sroa.4.0..sroa.10.0..sroa_idx.sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 2300
  store i32 %i.qw, ptr %.sroa.421.i.sroa.8.0..sroa.10.sroa.4.0..sroa.10.0..sroa_idx.sroa_idx.i.sroa_idx.i, align 4, !noalias !40778
  %.sroa.421.i.sroa.9.0..sroa.10.sroa.4.0..sroa.10.0..sroa_idx.sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 2304
  store i32 %.sroa.56.0.i.i, ptr %.sroa.421.i.sroa.9.0..sroa.10.sroa.4.0..sroa.10.0..sroa_idx.sroa_idx.i.sroa_idx.i, align 8, !noalias !40778
  %.sroa.421.i.sroa.10.0..sroa.10.sroa.4.0..sroa.10.0..sroa_idx.sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 2308
end_hunk_1
begin_hunk_2_@"_ZN94_$LT$actix_http..h2..HandshakeWithTimeout$LT$T$GT$$u20$as$u20$core..future..future..Future$GT$4poll17hcc9c574be08bb60dE":bb.a
  %i.ou = load ptr, ptr @"_ZN83_$LT$h2..server..Handshake$LT$T$C$B$GT$$u20$as$u20$core..future..future..Future$GT$4poll10__CALLSITE17h0ae75733b897a671E", align 8, !noalias !40845, !nonnull !45, !align !48, !noundef !45 ; 3 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 32
  %i.ow = load ptr, ptr %i.ov, align 8, !noalias !40847, !nonnull !45, !align !55, !noundef !45
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ou, i64 40
  %i.oy = load i64, ptr %i.ox, align 8, !noalias !40847, !noundef !45
  store i64 5, ptr %i.cg, align 8, !noalias !40845
  %.sroa.5167.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store ptr %i.ow, ptr %.sroa.5167.0..sroa_idx.i, align 8, !noalias !40845
  %.sroa.7168.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  store i64 %i.oy, ptr %.sroa.7168.0..sroa_idx.i, align 8, !noalias !40845
  %i.oz = invoke { ptr, ptr } @_ZN3log6logger17hcebe01820b13d6ccE()
          to label %bb.dp unwind label %.loopexit.split-lp.i, !noalias !40847 ; 2 uses

bb.dp:                                            ; preds = %bb.do
  %i.pa = extractvalue { ptr, ptr } %i.oz, 0      ; 2 uses
  %i.pb = extractvalue { ptr, ptr } %i.oz, 1      ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 24
  %i.pd = load ptr, ptr %i.pc, align 8, !invariant.load !45, !noalias !40847, !nonnull !45
  %i.pe = invoke noundef zeroext i1 %i.pd(ptr noundef align 1 %i.pa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cg)
          to label %bb.dq unwind label %.loopexit.split-lp.i, !noalias !40847

bb.dq:                                            ; preds = %bb.dp
  br i1 %i.pe, label %bb.dr, label %bb.du

bb.dr:                                            ; preds = %bb.dq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf), !noalias !40845
  %i.pf = load ptr, ptr @"_ZN83_$LT$h2..server..Handshake$LT$T$C$B$GT$$u20$as$u20$core..future..future..Future$GT$4poll10__CALLSITE17h0ae75733b897a671E", align 8, !noalias !40845, !nonnull !45, !align !48, !noundef !45
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce), !noalias !40845
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd), !noalias !40845
  store ptr @2112, ptr %i.cd, align 8, !noalias !40845
  store ptr %i.cd, ptr %i.ce, align 8, !noalias !40845
  %i.ph = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store ptr @777, ptr %i.ph, align 8, !noalias !40845
  store i64 1, ptr %i.cf, align 8, !noalias !40845
  %.sroa.4117.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store ptr %i.ce, ptr %.sroa.4117.0..sroa_idx.i, align 8, !noalias !40845
  %.sroa.5118.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  store i64 1, ptr %.sroa.5118.0..sroa_idx.i, align 8, !noalias !40845
  %i.pi = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  store ptr %i.pg, ptr %i.pi, align 8, !noalias !40845
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !40845
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %i.cg, i64 24, i1 false), !noalias !40845
  invoke void @_ZN7tracing15__macro_support13__tracing_log17he6e71def31f38619E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ou, ptr noundef nonnull align 1 %i.pa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.pb, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.ay, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cf)
          to label %bb.ds unwind label %.loopexit.split-lp.i, !noalias !40847

bb.ds:                                            ; preds = %bb.dr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !40845
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd), !noalias !40845
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce), !noalias !40845
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf), !noalias !40845
  br label %bb.du

bb.dt:                                            ; preds = %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj), !noalias !40845
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch), !noalias !40845
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci), !noalias !40845
  br label %bb.du

bb.du:                                            ; preds = %.thread349.i, %bb.dn, %bb.dq, %bb.ds, %bb.dt, %bb.fo, %bb.bx
  %.sroa.14.2 = phi ptr [ %.sroa.14.1, %bb.fo ], [ %.sroa.10261.0.i, %bb.bx ], [ undef, %bb.dt ], [ undef, %bb.ds ], [ undef, %bb.dq ], [ undef, %bb.dn ], [ undef, %.thread349.i ] ; 2 uses
  %.sroa.9.2 = phi i8 [ %.sroa.9.1, %bb.fo ], [ %.sroa.6.0.i, %bb.bx ], [ undef, %bb.dt ], [ undef, %bb.ds ], [ undef, %bb.dq ], [ undef, %bb.dn ], [ undef, %.thread349.i ] ; 2 uses
  %.sroa.0.1 = phi i64 [ %.sroa.0.0, %bb.fo ], [ 2, %bb.bx ], [ 3, %bb.dt ], [ 3, %bb.ds ], [ 3, %bb.dq ], [ 3, %bb.dn ], [ 3, %.thread349.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !40900)
  %i.pj = load i64, ptr %i.cr, align 8, !range !56, !alias.scope !40900, !noalias !40901, !noundef !45
  %.not.i.i236.i = icmp eq i64 %i.pj, 2
  br i1 %.not.i.i236.i, label %.noexc239.i, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.pk = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  invoke void @_ZN12tracing_core10dispatcher8Dispatch4exit17h66a7948e4d957dc0E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.cr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.pk)
          to label %.noexc239.i unwind label %bb.g, !noalias !40847

.noexc239.i:                                      ; preds = %bb.dv, %bb.du
  %i.pl = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9063ca422f1e9098E monotonic, align 1, !noalias !40901
  %i.pm = icmp eq i8 %i.pl, 0
  br i1 %i.pm, label %bb.dw, label %"_ZN83_$LT$h2..server..Handshake$LT$T$C$B$GT$$u20$as$u20$core..future..future..Future$GT$4poll17h4568ffa26fb42e10E.exit"

bb.dw:                                            ; preds = %.noexc239.i
  %i.pn = load ptr, ptr %i.db, align 8, !alias.scope !40900, !noalias !40901, !align !48, !noundef !45 ; 3 uses
  %.not4.i.i237.i = icmp eq ptr %i.pn, null
  br i1 %.not4.i.i237.i, label %"_ZN83_$LT$h2..server..Handshake$LT$T$C$B$GT$$u20$as$u20$core..future..future..Future$GT$4poll17h4568ffa26fb42e10E.exit", label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !40902
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !40902
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !40902
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 16
  %i.pp = load ptr, ptr %i.po, align 8, !noalias !40903, !nonnull !45, !align !55, !noundef !45
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pn, i64 24
  %i.pr = load i64, ptr %i.pq, align 8, !noalias !40903, !noundef !45
  store ptr %i.pp, ptr %i.o, align 8, !noalias !40902
  %i.ps = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %i.pr, ptr %i.ps, align 8, !noalias !40902
  store ptr %i.o, ptr %i.p, align 8, !noalias !40902
  %.sroa.43.0..sroa_idx.i.i238.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h46d4d467e9bdcd5cE", ptr %.sroa.43.0..sroa_idx.i.i238.i, align 8, !noalias !40902
  store ptr @2094, ptr %i.q, align 8, !noalias !40902
  %i.pt = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 2, ptr %i.pt, align 8, !noalias !40902
  %i.pu = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store ptr null, ptr %i.pu, align 8, !noalias !40902
  %i.pv = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.p, ptr %i.pv, align 8, !noalias !40902
  %i.pw = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store i64 1, ptr %i.pw, align 8, !noalias !40902
  invoke fastcc void @_ZN7tracing4span4Span3log17hac48bcd7604f5552E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.cr, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2095, i64 noundef 21, ptr noalias noundef readonly align 8 captures(address) dereferenceable(48) %i.q)
          to label %.noexc240.i unwind label %bb.g

.noexc240.i:                                      ; preds = %bb.dx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !40902
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !40902
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !40902
  br label %"_ZN83_$LT$h2..server..Handshake$LT$T$C$B$GT$$u20$as$u20$core..future..future..Future$GT$4poll17h4568ffa26fb42e10E.exit"

"_ZN91_$LT$tracing..instrument..Instrumented$LT$T$GT$$u20$as$u20$core..future..future..Future$GT$4poll17he0520685c1698652E.exit.i": ; preds = %.noexc225.i, %bb.bt, %.noexc224.i
  switch i64 %i.lf, label %bb.ea [
    i64 3, label %bb.dz
    i64 2, label %bb.dy
  ]

bb.dy:                                            ; preds = %"_ZN91_$LT$tracing..instrument..Instrumented$LT$T$GT$$u20$as$u20$core..future..future..Future$GT$4poll17he0520685c1698652E.exit.i"
  %i.px = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %.sroa.853.i.sroa.0.0.copyload = load i8, ptr %i.px, align 8, !noalias !40845
  %.sroa.853.i.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.853.i.sroa.7, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.853.i.sroa.7.0..sroa_idx, i64 7, i1 false), !noalias !40845
  %.sroa.853.i.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %.sroa.853.i.sroa.8.0.copyload = load ptr, ptr %.sroa.853.i.sroa.8.0..sroa_idx, align 8, !noalias !40845
  %.sroa.853.i.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.853.i.sroa.9, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.853.i.sroa.9.0..sroa_idx, i64 24, i1 false), !noalias !40845
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !40845
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.13, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.853.i.sroa.7, i64 7, i1 false), !noalias !40897
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.15, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.853.i.sroa.9, i64 24, i1 false), !noalias !40897
  br label %bb.fs

bb.dz:                                            ; preds = %"_ZN91_$LT$tracing..instrument..Instrumented$LT$T$GT$$u20$as$u20$core..future..future..Future$GT$4poll17he0520685c1698652E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !40845
  br label %bb.fs

bb.ea:                                            ; preds = %"_ZN91_$LT$tracing..instrument..Instrumented$LT$T$GT$$u20$as$u20$core..future..future..Future$GT$4poll17he0520685c1698652E.exit.i"
  %.sroa.4142.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %.sroa.853.i.sroa.0.0.copyload66 = load i8, ptr %.sroa.4142.0..sroa_idx.i, align 8, !noalias !40845
  %.sroa.853.i.sroa.7.0..sroa.4142.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.853.i.sroa.7, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.853.i.sroa.7.0..sroa.4142.0..sroa_idx.i.sroa_idx, i64 7, i1 false), !noalias !40845
  %.sroa.853.i.sroa.8.0..sroa.4142.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %.sroa.853.i.sroa.8.0.copyload68 = load ptr, ptr %.sroa.853.i.sroa.8.0..sroa.4142.0..sroa_idx.i.sroa_idx, align 8, !noalias !40845
  %.sroa.853.i.sroa.9.0..sroa.4142.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.853.i.sroa.9, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.853.i.sroa.9.0..sroa.4142.0..sroa_idx.i.sroa_idx, i64 24, i1 false), !noalias !40845
  %.sroa.5143.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(856) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(856) %.sroa.5143.0..sroa_idx.i, i64 856, i1 false), !noalias !40845
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !40845
  %.sroa.463.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store i8 %.sroa.853.i.sroa.0.0.copyload66, ptr %.sroa.463.0..sroa_idx.i, align 8, !noalias !40845
  %.sroa.853.i.sroa.7.0..sroa.463.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.853.i.sroa.7.0..sroa.463.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.853.i.sroa.7, i64 7, i1 false), !noalias !40845
  %.sroa.853.i.sroa.8.0..sroa.463.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store ptr %.sroa.853.i.sroa.8.0.copyload68, ptr %.sroa.853.i.sroa.8.0..sroa.463.0..sroa_idx.i.sroa_idx, align 8, !noalias !40845
  %.sroa.853.i.sroa.9.0..sroa.463.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.853.i.sroa.9.0..sroa.463.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.853.i.sroa.9, i64 24, i1 false), !noalias !40845
  store i64 %i.lf, ptr %i.bn, align 8, !noalias !40845
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.853.i.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.853.i.sroa.9)
  invoke fastcc void @"_ZN4core3ptr108drop_in_place$LT$h2..server..Handshaking$LT$tokio..net..tcp..stream..TcpStream$C$bytes..bytes..Bytes$GT$$GT$17hb468604377a9318bE"(ptr noalias noundef align 8 dereferenceable(952) %i.fl)
          to label %bb.eb unwind label %bb.fr, !noalias !40847

bb.eb:                                            ; preds = %bb.ea
  store i64 5, ptr %i.fl, align 8, !alias.scope !40844, !noalias !40846
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !40845
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !noalias !40845
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(904) %i.bk, ptr noundef nonnull align 8 dereferenceable(904) %i.bn, i64 904, i1 false), !noalias !40845
  %i.py = invoke noundef i32 @"_ZN81_$LT$h2..frame..stream_id..StreamId$u20$as$u20$core..convert..From$LT$u32$GT$$GT$4from17he6b3d4fe7502e6a4E"(i32 noundef 2)
          to label %bb.ec unwind label %bb.fq, !noalias !40847

bb.ec:                                            ; preds = %bb.eb
  %i.pz = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.qa = load i64, ptr %i.pz, align 8, !alias.scope !40844, !noalias !40846, !noundef !45
  %i.qb = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.qc = load i64, ptr %i.qb, align 8, !alias.scope !40844, !noalias !40846, !noundef !45
  %i.qd = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.qe = load i32, ptr %i.qd, align 8, !range !83, !alias.scope !40844, !noalias !40846, !noundef !45
  %i.qf = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.qg = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.qh = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.qi = load i8, ptr %i.qh, align 8, !alias.scope !40904, !noalias !40905, !noundef !45
  %i.qj = load i32, ptr %i.qg, align 8, !range !104, !alias.scope !40904, !noalias !40905, !noundef !45 ; 2 uses
  %i.qk = trunc nuw i32 %i.qj to i1
  %i.ql = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.qm = load i32, ptr %i.ql, align 4, !alias.scope !40904, !noalias !40905
  %.sroa.5.0.i.i = select i1 %i.qk, i32 %i.qm, i32 undef
  %i.qn = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.qo = load i32, ptr %i.qn, align 8, !range !104, !alias.scope !40904, !noalias !40905, !noundef !45 ; 2 uses
  %i.qp = trunc nuw i32 %i.qo to i1               ; 2 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.qr = load i32, ptr %i.qq, align 4, !alias.scope !40904, !noalias !40905
  %.sroa.52.0.i.i = select i1 %i.qp, i32 %i.qr, i32 undef ; 2 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.qt = load i32, ptr %i.qs, align 8, !range !104, !alias.scope !40904, !noalias !40905, !noundef !45 ; 3 uses
  %i.qu = trunc nuw i32 %i.qt to i1               ; 2 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.qw = load i32, ptr %i.qv, align 4, !alias.scope !40904, !noalias !40905
  %.sroa.54.0.i.i = select i1 %i.qu, i32 %i.qw, i32 undef ; 2 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.qy = load i32, ptr %i.qx, align 8, !range !104, !alias.scope !40904, !noalias !40905, !noundef !45 ; 2 uses
  %i.qz = trunc nuw i32 %i.qy to i1               ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.rb = load i32, ptr %i.ra, align 4, !alias.scope !40904, !noalias !40905 ; 2 uses
  %.sroa.56.0.i.i = select i1 %i.qz, i32 %i.rb, i32 undef
  %i.rc = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.rd = load i32, ptr %i.rc, align 8, !range !104, !alias.scope !40904, !noalias !40905, !noundef !45 ; 2 uses
  %i.re = trunc nuw i32 %i.rd to i1
  %i.rf = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.rg = load i32, ptr %i.rf, align 4, !alias.scope !40904, !noalias !40905
  %.sroa.58.0.i.i = select i1 %i.re, i32 %i.rg, i32 undef
  %i.rh = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ri = load i32, ptr %i.rh, align 8, !range !104, !alias.scope !40904, !noalias !40905, !noundef !45 ; 2 uses
  %i.rj = trunc nuw i32 %i.ri to i1
  %i.rk = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.rl = load i32, ptr %i.rk, align 4, !alias.scope !40904, !noalias !40905
  %.sroa.510.0.i.i = select i1 %i.rj, i32 %i.rl, i32 undef
  %i.rm = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.rn = load i32, ptr %i.rm, align 8, !range !104, !alias.scope !40904, !noalias !40905, !noundef !45 ; 2 uses
  %i.ro = trunc nuw i32 %i.rn to i1               ; 2 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.rq = load i32, ptr %i.rp, align 4, !alias.scope !40904, !noalias !40905
  %.sroa.512.0.i.i = select i1 %i.ro, i32 %i.rq, i32 undef ; 2 uses
  %.sroa.26288.56.insert.ext.i = zext i8 %i.qi to i32
  %.sroa.0281.0.insert.ext.i = zext nneg i32 %i.qj to i64
  %.sroa.0281.4.insert.ext.i = zext i32 %.sroa.5.0.i.i to i64
  %.sroa.0281.4.insert.shift.i = shl nuw i64 %.sroa.0281.4.insert.ext.i, 32
  %.sroa.0281.4.insert.insert.i = or disjoint i64 %.sroa.0281.4.insert.shift.i, %.sroa.0281.0.insert.ext.i
  call void @llvm.experimental.noalias.scope.decl(metadata !40906)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !40907
  %.sroa.0.0.i.i.i = select i1 %i.qz, i32 %i.rb, i32 65535
  %i.rr = icmp ne i32 %.sroa.52.0.i.i, 0
  %not..i.i.i = xor i1 %i.qp, true
  %narrow.i.i.i = select i1 %not..i.i.i, i1 true, i1 %i.rr
  %.sroa.03.0.i.i.i = zext i1 %narrow.i.i.i to i8
  %i.rs = icmp ne i32 %.sroa.512.0.i.i, 0
  %narrow17.i.i.i = select i1 %i.ro, i1 %i.rs, i1 false
  %.sroa.05.0.i.i.i = zext i1 %narrow17.i.i.i to i8
  %i.rt = zext i32 %.sroa.54.0.i.i to i64
  %.sroa.5.0.i.i.i = select i1 %i.qu, i64 %i.rt, i64 undef
  %.sroa.07.0.i.i.i = zext nneg i32 %i.qt to i64
  %i.ru = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  store i32 %.sroa.0.0.i.i.i, ptr %i.ru, align 8, !alias.scope !40908, !noalias !40909
  %i.rv = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  store i64 0, ptr %i.rv, align 8, !alias.scope !40908, !noalias !40909
  %i.rw = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  store i64 %i.qa, ptr %i.rw, align 8, !alias.scope !40908, !noalias !40909
  %i.rx = getelementptr inbounds nuw i8, ptr %i.n, i64 84
  store i32 %i.py, ptr %i.rx, align 4, !alias.scope !40908, !noalias !40909
  %i.ry = getelementptr inbounds nuw i8, ptr %i.n, i64 92
  store i8 %.sroa.03.0.i.i.i, ptr %i.ry, align 4, !alias.scope !40908, !noalias !40909
  %i.rz = getelementptr inbounds nuw i8, ptr %i.n, i64 93
  store i8 %.sroa.05.0.i.i.i, ptr %i.rz, align 1, !alias.scope !40908, !noalias !40909
  %i.sa = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store i64 %i.qc, ptr %i.sa, align 8, !alias.scope !40908, !noalias !40909
  %i.sb = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store i32 %i.qe, ptr %i.sb, align 8, !alias.scope !40908, !noalias !40909
  %i.sc = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.sd = load <2 x i64>, ptr %i.qf, align 8, !alias.scope !40844, !noalias !40846
  store <2 x i64> %i.sd, ptr %i.sc, align 8, !alias.scope !40908, !noalias !40909
  %i.se = getelementptr inbounds nuw i8, ptr %i.n, i64 88
  store i32 65535, ptr %i.se, align 8, !alias.scope !40908, !noalias !40909
  store i64 %.sroa.07.0.i.i.i, ptr %i.n, align 8, !alias.scope !40908, !noalias !40909
  %i.sf = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %.sroa.5.0.i.i.i, ptr %i.sf, align 8, !alias.scope !40908, !noalias !40909
  %i.sg = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.sh = load <2 x i64>, ptr %1, align 8, !alias.scope !40844, !noalias !40846
  store <2 x i64> %i.sh, ptr %i.sg, align 8, !alias.scope !40908, !noalias !40909
  %i.si = invoke fastcc { ptr, ptr } @"_ZN2h25proto7streams7streams20Streams$LT$B$C$P$GT$3new17h76ffac9b2b58ea76E"(ptr noalias noundef align 8 captures(address) dereferenceable(96) %i.n)
          to label %bb.ef unwind label %bb.es, !noalias !40910 ; 2 uses

bb.ed:                                            ; preds = %bb.em, %bb.ee
  %.pn.i.i = phi { ptr, i32 } [ %i.sj, %bb.ee ], [ %i.sz, %bb.em ]
  invoke fastcc void @"_ZN4core3ptr103drop_in_place$LT$h2..proto..streams..streams..Streams$LT$bytes..bytes..Bytes$C$h2..server..Peer$GT$$GT$17hc7dac64eafe43c41E"(ptr noalias noundef align 8 dereferenceable(16) %i.k) #44
          to label %bb.er unwind label %bb.ep, !noalias !40910

bb.ee:                                            ; preds = %bb.ek, %.thread48.i.i, %bb.eh
  %i.sj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ed

bb.ef:                                            ; preds = %bb.ec
  %i.sk = extractvalue { ptr, ptr } %i.si, 0      ; 2 uses
  %i.sl = extractvalue { ptr, ptr } %i.si, 1      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !40907
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !40907
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(904) %i.m, ptr noundef nonnull align 8 dereferenceable(904) %i.bk, i64 904, i1 false), !noalias !40911
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !40907
  %i.sm = getelementptr inbounds nuw i8, ptr %i.l, i64 17
  store i8 2, ptr %i.sm, align 1, !noalias !40907
  %i.sn = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i8 0, ptr %i.sn, align 8, !noalias !40907
  store ptr null, ptr %i.l, align 8, !noalias !40907
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !40907
  store ptr %i.sk, ptr %i.k, align 8, !noalias !40907
  %i.so = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.sl, ptr %i.so, align 8, !noalias !40907
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !40907
  %i.sp = load atomic i64, ptr @_ZN12tracing_core8metadata9MAX_LEVEL17h3c62bc6fa7dc27b1E monotonic, align 8, !noalias !40907
  %i.sq = icmp ult i64 %i.sp, 2
  br i1 %i.sq, label %bb.eg, label %.thread52.i.i

bb.eg:                                            ; preds = %bb.ef
  %i.sr = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @"_ZN2h25proto10connection27Connection$LT$T$C$P$C$B$GT$3new10__CALLSITE17h0ef1bfcb779c1c64E", i64 16) monotonic, align 8, !noalias !40907 ; 3 uses
  switch i8 %i.sr, label %bb.eh [
    i8 0, label %.thread52.i.i
    i8 1, label %.thread48.i.i
    i8 2, label %.thread48.i.i
  ], !prof !64

bb.eh:                                            ; preds = %bb.eg
  %i.ss = invoke noundef i8 @_ZN12tracing_core8callsite15DefaultCallsite8register17hfea5cd845fb2ec3aE(ptr noundef nonnull align 8 @"_ZN2h25proto10connection27Connection$LT$T$C$P$C$B$GT$3new10__CALLSITE17h0ef1bfcb779c1c64E")
          to label %bb.ei unwind label %bb.ee, !noalias !40910 ; 2 uses

bb.ei:                                            ; preds = %bb.eh
  %.not.i242.i = icmp eq i8 %i.ss, 0
  br i1 %.not.i242.i, label %.thread52.i.i, label %.thread48.i.i

.thread48.i.i:                                    ; preds = %bb.eg, %bb.ei, %bb.eg
  %.sroa.08.051.i.i = phi i8 [ %i.ss, %bb.ei ], [ %i.sr, %bb.eg ], [ %i.sr, %bb.eg ]
  %i.st = load ptr, ptr @"_ZN2h25proto10connection27Connection$LT$T$C$P$C$B$GT$3new10__CALLSITE17h0ef1bfcb779c1c64E", align 8, !noalias !40907, !nonnull !45, !align !48, !noundef !45
  %i.su = invoke noundef zeroext i1 @_ZN7tracing15__macro_support12__is_enabled17ha8d49a956677b3d5E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.st, i8 noundef %.sroa.08.051.i.i)
          to label %bb.ej unwind label %bb.ee, !noalias !40910

bb.ej:                                            ; preds = %.thread48.i.i
  br i1 %i.su, label %bb.ek, label %.thread52.i.i

bb.ek:                                            ; preds = %bb.ej
  %i.sv = load ptr, ptr @"_ZN2h25proto10connection27Connection$LT$T$C$P$C$B$GT$3new10__CALLSITE17h0ef1bfcb779c1c64E", align 8, !noalias !40907, !nonnull !45, !align !48, !noundef !45 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !40907
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sv, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !40907
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !40907
  store ptr @776, ptr %i.g, align 8, !noalias !40907
  store ptr %i.g, ptr %i.h, align 8, !noalias !40907
  %i.sx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @777, ptr %i.sx, align 8, !noalias !40907
  store i64 1, ptr %i.i, align 8, !noalias !40907
  %.sroa.426.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.h, ptr %.sroa.426.0..sroa_idx.i.i, align 8, !noalias !40907
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !40907
  %i.sy = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr %i.sw, ptr %i.sy, align 8, !noalias !40907
  invoke void @_ZN7tracing4span4Span3new17hf7eba8cb0dd6baa4E(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.sv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i)
          to label %bb.eq unwind label %bb.ee, !noalias !40910

bb.el:                                            ; preds = %bb.eo, %.thread52.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull align 8 dereferenceable(40) %i.f, i64 40, i1 false), !noalias !40907
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !40907
  br label %bb.et

bb.em:                                            ; preds = %bb.en
  %i.sz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$tracing..span..Span$GT$17h3b60b4793e7fa7f8E"(ptr noalias noundef align 8 dereferenceable(40) %i.f) #44
          to label %bb.ed unwind label %bb.ep, !noalias !40910

.thread52.i.i:                                    ; preds = %bb.ej, %bb.ei, %bb.eg, %bb.ef
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !40907
  %i.ta = load ptr, ptr @"_ZN2h25proto10connection27Connection$LT$T$C$P$C$B$GT$3new10__CALLSITE17h0ef1bfcb779c1c64E", align 8, !noalias !40907, !nonnull !45, !align !48, !noundef !45 ; 2 uses
  store i64 2, ptr %i.f, align 8, !noalias !40907
  %i.tb = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr %i.ta, ptr %i.tb, align 8, !noalias !40907
  %i.tc = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9063ca422f1e9098E monotonic, align 1, !noalias !40907
  %i.td = icmp eq i8 %i.tc, 0
  br i1 %i.td, label %bb.en, label %bb.el

bb.en:                                            ; preds = %.thread52.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !40907
  %i.te = getelementptr inbounds nuw i8, ptr %i.ta, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !40907
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !40907
  store ptr @776, ptr %i.c, align 8, !noalias !40907
  store ptr %i.c, ptr %i.d, align 8, !noalias !40907
  %i.tf = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @777, ptr %i.tf, align 8, !noalias !40907
  store i64 1, ptr %i.e, align 8, !noalias !40907
  %.sroa.430.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.d, ptr %.sroa.430.0..sroa_idx.i.i, align 8, !noalias !40907
  %.sroa.531.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 1, ptr %.sroa.531.0..sroa_idx.i.i, align 8, !noalias !40907
  %i.tg = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %i.te, ptr %i.tg, align 8, !noalias !40907
  %i.th = invoke noundef align 8 dereferenceable(40) ptr @_ZN7tracing4span4Span10record_all17hb9e98382ea24c54cE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e)
          to label %bb.eo unwind label %bb.em, !noalias !40910 ; 0 uses

bb.eo:                                            ; preds = %bb.en
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !40907
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !40907
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !40907
  br label %bb.el

bb.ep:                                            ; preds = %bb.es, %"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$h2..frame..go_away..GoAway$GT$$GT$17h5ed69fd7cf4b572bE.exit.i.i", %bb.er, %bb.em, %bb.ed
  %i.ti = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45, !noalias !40912
  unreachable

bb.eq:                                            ; preds = %bb.ek
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !40907
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !40907
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !40907
  br label %bb.et

bb.er:                                            ; preds = %bb.ed
  invoke fastcc void @"_ZN4core3ptr51drop_in_place$LT$h2..proto..ping_pong..PingPong$GT$17h4fbc33de66f9f12cE"(ptr noalias noundef align 8 dereferenceable(32) %i.l) #44
          to label %"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$h2..frame..go_away..GoAway$GT$$GT$17h5ed69fd7cf4b572bE.exit.i.i" unwind label %bb.ep, !noalias !40910

"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$h2..frame..go_away..GoAway$GT$$GT$17h5ed69fd7cf4b572bE.exit.i.i": ; preds = %bb.er
  invoke fastcc void @"_ZN4core3ptr214drop_in_place$LT$h2..codec..framed_read..FramedRead$LT$h2..codec..framed_write..FramedWrite$LT$tokio..net..tcp..stream..TcpStream$C$h2..proto..streams..prioritize..Prioritized$LT$bytes..bytes..Bytes$GT$$GT$$GT$$GT$17hf88cbdce963517e9E"(ptr noalias noundef nonnull align 8 dereferenceable(904) %i.m)
          to label %.body.i unwind label %bb.ep, !noalias !40910

bb.es:                                            ; preds = %bb.ec
  %i.tj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr214drop_in_place$LT$h2..codec..framed_read..FramedRead$LT$h2..codec..framed_write..FramedWrite$LT$tokio..net..tcp..stream..TcpStream$C$h2..proto..streams..prioritize..Prioritized$LT$bytes..bytes..Bytes$GT$$GT$$GT$$GT$17hf88cbdce963517e9E"(ptr noalias noundef nonnull align 8 dereferenceable(904) %i.bk)
          to label %.body.i unwind label %bb.ep, !noalias !40912

bb.et:                                            ; preds = %bb.eq, %bb.el
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 1056
  store ptr null, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !40913
  %.sroa.0.sroa.0.i.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 1000
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.sroa.0.i.sroa.11.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false), !noalias !40913
  %.sroa.10.sroa.4.0..sroa.10.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 1100
  store i64 %.sroa.0281.4.insert.insert.i, ptr %.sroa.10.sroa.4.0..sroa.10.0..sroa_idx.sroa_idx.i.i, align 4, !noalias !40913
  %.sroa.421.i.sroa.4.0..sroa.10.sroa.4.0..sroa.10.0..sroa_idx.sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 1108
  store i32 %i.qo, ptr %.sroa.421.i.sroa.4.0..sroa.10.sroa.4.0..sroa.10.0..sroa_idx.sroa_idx.i.sroa_idx.i, align 4, !noalias !40913
  %.sroa.421.i.sroa.5.0..sroa.10.sroa.4.0..sroa.10.0..sroa_idx.sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 1112
  store i32 %.sroa.52.0.i.i, ptr %.sroa.421.i.sroa.5.0..sroa.10.sroa.4.0..sroa.10.0..sroa_idx.sroa_idx.i.sroa_idx.i, align 8, !noalias !40913
  %.sroa.421.i.sroa.6.0..sroa.10.sroa.4.0..sroa.10.0..sroa_idx.sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 1116
  store i32 %i.qt, ptr %.sroa.421.i.sroa.6.0..sroa.10.sroa.4.0..sroa.10.0..sroa_idx.sroa_idx.i.sroa_idx.i, align 4, !noalias !40913
  %.sroa.421.i.sroa.7.0..sroa.10.sroa.4.0..sroa.10.0..sroa_idx.sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 1120
  store i32 %.sroa.54.0.i.i, ptr %.sroa.421.i.sroa.7.0..sroa.10.sroa.4.0..sroa.10.0..sroa_idx.sroa_idx.i.sroa_idx.i, align 8, !noalias !40913
  %.sroa.421.i.sroa.8.0..sroa.10.sroa.4.0..sroa.10.0..sroa_idx.sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 1124
  store i32 %i.qy, ptr %.sroa.421.i.sroa.8.0..sroa.10.sroa.4.0..sroa.10.0..sroa_idx.sroa_idx.i.sroa_idx.i, align 4, !noalias !40913
  %.sroa.421.i.sroa.9.0..sroa.10.sroa.4.0..sroa.10.0..sroa_idx.sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 1128
  store i32 %.sroa.56.0.i.i, ptr %.sroa.421.i.sroa.9.0..sroa.10.sroa.4.0..sroa.10.0..sroa_idx.sroa_idx.i.sroa_idx.i, align 8, !noalias !40913
  %.sroa.421.i.sroa.10.0..sroa.10.sroa.4.0..sroa.10.0..sroa_idx.sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 1132
end_hunk_2
