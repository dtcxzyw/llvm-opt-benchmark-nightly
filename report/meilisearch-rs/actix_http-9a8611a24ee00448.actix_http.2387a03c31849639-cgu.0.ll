Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/actix_http-9a8611a24ee00448.actix_http.2387a03c31849639-cgu.0?download=true
inline.NumInlined: 6414
inline.NumDeleted: 2069
loop-unroll.NumCompletelyUnrolled: 167
loop-unroll.NumRuntimeUnrolled: 60
loop-unroll.NumUnrolled: 291
begin_hunk_0_@_ZN6brotli3enc19backward_references2hq11UpdateNodes17h4f2858d9233b885bE:bb.a
  %i.lf = and i32 %i.le, 192
  %i.lg = add nuw nsw i32 %i.lb, %i.lf
  %i.lh = trunc i32 %i.lg to i16                  ; 2 uses
  %i.li = or disjoint i16 %i.kx, %i.lh
  %i.lj = zext i16 %i.li to i64                   ; 2 uses
  %i.lk = icmp ult i16 %i.lh, 704
  br i1 %i.lk, label %bb.bg, label %bb.bh

bb.bf:                                            ; preds = %_ZN6brotli3enc7command17GetCopyLengthCode17h0e9c4af72170ff0cE.exit
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.kt, i64 noundef 24, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1083) #46
  unreachable

bb.bg:                                            ; preds = %bb.be
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr @_ZN6brotli3enc9constants10kCopyExtra17h02bcab7a3a35c8e6E, i64 %i.kv
  %i.lm = load i32, ptr %i.ll, align 4, !noundef !21
  %i.ln = uitofp i32 %i.lm to float
  %i.lo = fadd float %i.jq, %i.ln
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.lj
  %i.lq = load float, ptr %i.lp, align 4, !noundef !21
  %i.lr = fadd float %i.lq, %i.lo                 ; 2 uses
  %i.ls = add i64 %.sroa.033.1293, %2             ; 3 uses
  %i.lt = icmp ult i64 %i.ls, %16
  br i1 %i.lt, label %bb.bi, label %bb.bj

bb.bh:                                            ; preds = %bb.be
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.lj, i64 noundef 704, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1084) #46
  unreachable

bb.bi:                                            ; preds = %bb.bg
  %i.lu = getelementptr inbounds nuw [20 x i8], ptr %15, i64 %i.ls ; 5 uses
  %i.lv = load i32, ptr %i.lu, align 4, !range !59, !noundef !21
  %i.lw = icmp eq i32 %i.lv, 0
  br i1 %i.lw, label %bb.bk, label %bb.bl

bb.bj:                                            ; preds = %bb.bg
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ls, i64 noundef %16, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1089) #46
  unreachable

bb.bk:                                            ; preds = %bb.bi
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lu, i64 4 ; 2 uses
  %i.ly = load float, ptr %i.lx, align 4, !noundef !21
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
define internal fastcc void @_ZN6brotli3enc19backward_references2hq12EvaluateNode17h262f247b8e84bb2aE(i64 noundef range(i64 0, 4294967296) %0, i64 noundef %1, i64 noundef range(i64 -15, 9223372036854775793) %2, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %3, ptr nofree readonly captures(none) %.16.val, i64 %.24.val, ptr noalias noundef nonnull align 8 dereferenceable(264) %4, ptr noalias nofree noundef nonnull align 4 captures(address, read_provenance) %5, i64 noundef range(i64 1, 0) %6) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = icmp ult i64 %1, %6
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw [20 x i8], ptr %5, i64 %1 ; 7 uses
  %i.d = load i32, ptr %i.c, align 4, !range !59, !noundef !21
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %1, i64 noundef %6, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1090) #46
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.g = load float, ptr %i.f, align 4, !noundef !21
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %.sroa.0.0 = phi float [ %i.g, %bb.d ], [ 0.000000e+00, %bb.b ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10183)
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.i = load i32, ptr %i.h, align 4, !alias.scope !10183, !noundef !21
  %i.j = and i32 %i.i, 33554431                   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.l = load i32, ptr %i.k, align 4, !alias.scope !10183, !noundef !21 ; 2 uses
  %i.m = and i32 %i.l, 134217727
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.o = load i32, ptr %i.n, align 4, !alias.scope !10183, !noundef !21 ; 2 uses
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
  %i.af = load i32, ptr %i.ae, align 4, !range !59, !alias.scope !10183, !noundef !21
  %i.ag = icmp eq i32 %i.af, 2
  br i1 %i.ag, label %bb.l, label %_ZN6brotli3enc19backward_references2hq23ComputeDistanceShortcut17h874cc0a1454c5946E.exit

bb.k:                                             ; preds = %bb.g
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.x, i64 noundef range(i64 1, 0) %6, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1104) #46, !noalias !10183
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !alias.scope !10183, !noundef !21
  br label %_ZN6brotli3enc19backward_references2hq23ComputeDistanceShortcut17h874cc0a1454c5946E.exit

_ZN6brotli3enc19backward_references2hq23ComputeDistanceShortcut17h874cc0a1454c5946E.exit: ; preds = %bb.e, %bb.i, %bb.j, %bb.l
  %.sroa.0.0.i = phi i32 [ 0, %bb.e ], [ %i.ad, %bb.i ], [ %i.ai, %bb.l ], [ 0, %bb.j ]
  store i32 2, ptr %i.c, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %.sroa.0.0.i, ptr %.sroa.4.0..sroa_idx, align 4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.16.val) ]
  %i.aj = icmp ult i64 %1, %.24.val
  br i1 %i.aj, label %"_ZN6brotli3enc19backward_references2hq29ZopfliCostModel$LT$AllocF$GT$17get_literal_costs17h4fdbbb71ef6cc5ddE.exit6", label %bb.m

bb.m:                                             ; preds = %_ZN6brotli3enc19backward_references2hq23ComputeDistanceShortcut17h874cc0a1454c5946E.exit
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %1, i64 noundef %.24.val, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1109) #46
  unreachable

"_ZN6brotli3enc19backward_references2hq29ZopfliCostModel$LT$AllocF$GT$17get_literal_costs17h4fdbbb71ef6cc5ddE.exit6": ; preds = %_ZN6brotli3enc19backward_references2hq23ComputeDistanceShortcut17h874cc0a1454c5946E.exit
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %.16.val, i64 %1
  %i.al = load float, ptr %i.ak, align 4, !noundef !21
  %i.am = load float, ptr %.16.val, align 4, !noundef !21
  %i.an = fsub float %i.al, %i.am                 ; 2 uses
  %i.ao = fcmp ugt float %.sroa.0.0, %i.an
  br i1 %i.ao, label %bb.n, label %"_ZN6brotli3enc19backward_references2hq29ZopfliCostModel$LT$AllocF$GT$17get_literal_costs17h4fdbbb71ef6cc5ddE.exit"

"_ZN6brotli3enc19backward_references2hq29ZopfliCostModel$LT$AllocF$GT$17get_literal_costs17h4fdbbb71ef6cc5ddE.exit": ; preds = %"_ZN6brotli3enc19backward_references2hq29ZopfliCostModel$LT$AllocF$GT$17get_literal_costs17h4fdbbb71ef6cc5ddE.exit6"
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

bb.n:                                             ; preds = %"_ZN6brotli3enc19backward_references2hq29ZopfliCostModel$LT$AllocF$GT$17get_literal_costs17h4fdbbb71ef6cc5ddE.exit6", %"_ZN6brotli3enc19backward_references2hq29ZopfliCostModel$LT$AllocF$GT$17get_literal_costs17h4fdbbb71ef6cc5ddE.exit"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef i64 @_ZN6brotli3enc19backward_references2hq17FindAllMatchesH1017hc6675d4ed8901c08E(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3, i64 noundef range(i64 0, 4294967296) %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(112) %9, ptr noalias nofree noundef nonnull writeonly align 8 captures(none) %10, i64 noundef %11) unnamed_addr #0 personality ptr @rust_eh_personality {
.split:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [152 x i8], align 16              ; 16 uses
  %i.c = alloca [8 x i8], align 8                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 72
  %i.e = load i32, ptr %i.d, align 8, !noundef !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store <4 x i32> splat (i32 268435455), ptr %i.b, align 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store <4 x i32> splat (i32 268435455), ptr %i.f, align 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  store <4 x i32> splat (i32 268435455), ptr %i.g, align 16
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  store <4 x i32> splat (i32 268435455), ptr %i.h, align 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  store <4 x i32> splat (i32 268435455), ptr %i.i, align 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 2 uses
  store <4 x i32> splat (i32 268435455), ptr %i.j, align 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  store <4 x i32> splat (i32 268435455), ptr %i.k, align 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 2 uses
  store <4 x i32> splat (i32 268435455), ptr %i.l, align 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 148
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
  %i.ad = load i8, ptr %i.t, align 1, !noundef !21
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 %i.ab ; 2 uses
  %i.af = load i8, ptr %i.ae, align 1, !noundef !21
  %i.ag = icmp eq i8 %i.ad, %i.af
  br i1 %i.ag, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.ah = add nuw nsw i64 %i.ab, 1                ; 3 uses
  %i.ai = icmp ult i64 %i.ah, %3
  br i1 %i.ai, label %bb.d, label %.split142.us

bb.d:                                             ; preds = %bb.c
  %i.aj = load i8, ptr %i.v, align 1, !noundef !21
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 %i.ah
  %i.al = load i8, ptr %i.ak, align 1, !noundef !21
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
  %i.bd = load i8, ptr %i.t, align 1, !noundef !21
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 %i.bb
  %i.bf = load i8, ptr %i.be, align 1, !noundef !21
  %i.bg = icmp eq i8 %i.bd, %i.bf
  br i1 %i.bg, label %.split138.us, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.sroa.012.0.us = add i64 %.sroa.012.0124.us, -1 ; 2 uses
  %i.bh = icmp ugt i64 %.sroa.012.0.us, %spec.select
  br i1 %i.bh, label %.lr.ph.split.us.split.split, label %._crit_edge

._crit_edge:                                      ; preds = %bb.k, %.lr.ph.split.us.split.split, %bb.h, %.lr.ph.split.us.split.us, %.lr.ph.split, %.split
  %.lcssa115 = phi i64 [ 1, %.split ], [ 1, %.lr.ph.split ], [ %i.y, %.lr.ph.split.us.split.us ], [ %i.aw, %bb.h ], [ 1, %.lr.ph.split.us.split.split ], [ 1, %bb.k ] ; 3 uses
  %.sroa.03.0.lcssa = phi i64 [ 0, %.split ], [ 0, %.lr.ph.split ], [ %.sroa.03.0123.us.us, %.lr.ph.split.us.split.us ], [ %.sroa.03.1.us.us, %bb.h ], [ 0, %.lr.ph.split.us.split.split ], [ 0, %bb.k ] ; 5 uses
  store i64 %.lcssa115, ptr %i.c, align 8
  %i.bi = icmp ult i64 %.lcssa115, %7
  br i1 %i.bi, label %bb.m, label %bb.n

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.bj = icmp eq i64 %8, 0
  br i1 %i.bj, label %._crit_edge, label %bb.l

bb.l:                                             ; preds = %.lr.ph.split
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.p, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1094) #46
  unreachable

.split134.us:                                     ; preds = %bb.i, %bb.a
  %.us-phi156 = phi i64 [ %i.ab, %bb.a ], [ %i.bb, %bb.i ]
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.us-phi156, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1095) #46
  unreachable

.split138.us:                                     ; preds = %bb.j
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.u, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1096) #46
  unreachable

.split142.us:                                     ; preds = %bb.c
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ah, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1097) #46
  unreachable

.split146.us:                                     ; preds = %bb.f
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.03.0123.us.us, i64 noundef %11, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1098) #46
  unreachable

bb.m:                                             ; preds = %._crit_edge
  %.not = icmp ugt i64 %.sroa.03.0.lcssa, %11
  br i1 %.not, label %bb.o, label %bb.p, !prof !30

bb.n:                                             ; preds = %._crit_edge, %bb.p
  %12 = phi i64 [ %.pre, %bb.p ], [ %.lcssa115, %._crit_edge ]
  %.sroa.03.2 = phi i64 [ %21, %bb.p ], [ %.sroa.03.0.lcssa, %._crit_edge ] ; 4 uses
  store <4 x i32> splat (i32 268435455), ptr %i.b, align 16
  store <4 x i32> splat (i32 268435455), ptr %i.f, align 16
  store <4 x i32> splat (i32 268435455), ptr %i.g, align 16
  store <4 x i32> splat (i32 268435455), ptr %i.h, align 16
  store <4 x i32> splat (i32 268435455), ptr %i.i, align 16
  store <4 x i32> splat (i32 268435455), ptr %i.j, align 16
  store <4 x i32> splat (i32 268435455), ptr %i.k, align 16
  store <4 x i32> splat (i32 268435455), ptr %i.l, align 16
  store <4 x i32> splat (i32 268435455), ptr %i.m, align 16
  store i32 268435455, ptr %i.n, align 16
  store i32 268435455, ptr %i.o, align 4
  %13 = add i64 %12, 1
  %.sroa.0.0.i51 = tail call noundef i64 @llvm.umax.i64(i64 %13, i64 4) ; 3 uses
  %.not48 = icmp eq ptr %1, null
  br i1 %.not48, label %.loopexit, label %bb.q

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @230, ptr %i.a, align 8
  %14 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %14, align 8
  %15 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %15, align 8
  %16 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %16, align 8
  %17 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %17, align 8
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1099) #46
  unreachable

bb.p:                                             ; preds = %bb.m
  %18 = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %.sroa.03.0.lcssa
  %19 = sub nuw i64 %11, %.sroa.03.0.lcssa
  %20 = call fastcc noundef i64 @_ZN6brotli3enc19backward_references19hash_to_binary_tree22StoreAndFindMatchesH1017h6da75ee1bd1869baE(ptr noalias noundef align 8 dereferenceable(104) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3, i64 noundef %6, i64 noundef %4, i64 noundef %5, i64 noundef %7, i64 noundef %8, ptr noalias noundef align 8 dereferenceable(8) %i.c, ptr noalias noundef nonnull align 8 %18, i64 noundef %19)
  %21 = add i64 %20, %.sroa.03.0.lcssa
  %.pre = load i64, ptr %i.c, align 8
  br label %bb.n

.loopexit:                                        ; preds = %bb.x, %bb.v, %bb.r, %bb.n
  %.sroa.03.3 = phi i64 [ %.sroa.03.2, %bb.r ], [ %.sroa.03.2, %bb.n ], [ %.sroa.03.2, %bb.v ], [ %.sroa.03.5, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i64 %.sroa.03.3

bb.q:                                             ; preds = %bb.n
  %i.bk = icmp ugt i64 %i.p, %3
  br i1 %i.bk, label %bb.s, label %bb.r, !prof !30

bb.r:                                             ; preds = %bb.q
  %i.bl = sub nuw i64 %3, %i.p
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 %i.p
  %i.bn = call noundef i32 @_ZN6brotli3enc11static_dict36BrotliFindAllStaticDictionaryMatches17h37bb93a29a74e0aeE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bm, i64 noundef %i.bl, i64 noundef %.sroa.0.0.i51, i64 noundef %7, ptr noalias noundef nonnull align 4 %i.b, i64 noundef 38)
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %.loopexit, label %bb.t

bb.s:                                             ; preds = %bb.q
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.p, i64 noundef %3, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1103) #46
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.bp = getelementptr inbounds nuw i8, ptr %9, i64 103
  %i.bq = load i8, ptr %i.bp, align 1, !range !38, !noundef !21
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %bb.v, label %bb.u, !prof !31

bb.u:                                             ; preds = %bb.t
  call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1100, i64 noundef 39, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1101) #46
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
  %i.by = load i32, ptr %i.bx, align 4, !noundef !21 ; 3 uses
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
  store i64 %i.cm, ptr %i.ce, align 8, !noalias !10186
  %i.cn = add nuw i64 %.sroa.03.4194, 1
  br label %bb.x

bb.ab:                                            ; preds = %bb.z
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.03.4194, i64 noundef %11, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1102) #46
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN6brotli3enc19backward_references2hq29ZopfliCostModel$LT$AllocF$GT$22set_from_literal_costs17hba1cebbfc31022b8E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(2864) %0, i64 noundef range(i64 0, 4294967296) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3, i64 noundef range(i64 0, 4294967296) %4) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val24 = load ptr, ptr %i.a, align 8, !nonnull !21, !align !28, !noundef !21 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val25 = load i64, ptr %i.b, align 8, !noundef !21 ; 3 uses
  %.val = load ptr, ptr %0, align 8, !nonnull !21, !align !28, !noundef !21
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val23 = load i64, ptr %i.c, align 8, !noundef !21 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2848
  %i.f = load i64, ptr %i.e, align 8, !noundef !21 ; 3 uses
  %i.g = icmp eq i64 %.val25, 0
  br i1 %i.g, label %bb.c, label %bb.b, !prof !30

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
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 1, i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1120) #46
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
  %i.m = load i32, ptr %i.l, align 8, !noundef !21 ; 2 uses
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
  %i.y = load float, ptr %i.x, align 4, !noundef !21
  br label %bb.f

bb.h:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %.sroa.014.030
  store float %.sroa.09.0, ptr %i.z, align 4
  %exitcond38.not = icmp eq i64 %i.s, %i.n
  br i1 %exitcond38.not, label %._crit_edge, label %.lr.ph31

bb.i:                                             ; preds = %bb.f
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.val23, i64 noundef %.val23, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1118) #46
  unreachable

bb.j:                                             ; preds = %.preheader
  %i.aa = uitofp nneg i64 %i.p to float
  %i.ab = tail call float @llvm.log2.f32(float %i.aa)
  br label %.preheader.1

bb.k:                                             ; preds = %.preheader
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr @_ZN6brotli3enc11log_table_86logs_817hcdfb6f7171a9ff1cE, i64 %i.p
  %i.ad = load float, ptr %i.ac, align 4, !noundef !21
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
