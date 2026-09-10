Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pingora-rs/original/pingora_core-a5e7685b4b87ec55.pingora_core.ebac96924b791bb8-cgu.15?download=true
inline.NumInlined: 991
inline.NumDeleted: 375
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_RINvNtNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references2hq11UpdateNodesNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core:bb.a
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc9constants10kCopyExtra, i64 %i.kl
  %i.lc = load i32, ptr %i.lb, align 4, !noundef !4
  %i.ld = uitofp i32 %i.lc to float
  %i.le = fadd float %i.jf, %i.ld
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.kz
  %i.lg = load float, ptr %i.lf, align 4, !noundef !4
  %i.lh = fadd float %i.lg, %i.le                 ; 2 uses
  %i.li = add i64 %.sroa.048.2261, %2             ; 3 uses
  %i.lj = icmp ult i64 %i.li, %16
  br i1 %i.lj, label %bb.bl, label %bb.bm

bb.bk:                                            ; preds = %bb.bh
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.kz, i64 noundef 704, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @129) #29
  unreachable

bb.bl:                                            ; preds = %bb.bj
  %i.lk = getelementptr inbounds nuw [20 x i8], ptr %15, i64 %i.li ; 5 uses
  %i.ll = load i32, ptr %i.lk, align 4, !range !11, !noundef !4
  %i.lm = icmp eq i32 %i.ll, 0
  br i1 %i.lm, label %bb.bn, label %bb.bo

bb.bm:                                            ; preds = %bb.bj
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.li, i64 noundef %16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @134) #29
  unreachable

bb.bn:                                            ; preds = %bb.bl
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lk, i64 4 ; 2 uses
  %i.lo = load float, ptr %i.ln, align 4, !noundef !4
  %i.lp = fcmp olt float %i.lh, %i.lo
  br i1 %i.lp, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bp, %bb.bl
  %.sroa.0.8 = phi i64 [ %..i128, %bb.bp ], [ %.sroa.0.7262, %bb.bn ], [ %.sroa.0.7262, %bb.bl ] ; 2 uses
  %i.lq = add i64 %.sroa.048.2261, 1
  %exitcond.not = icmp eq i64 %.sroa.048.2261, %i.jg
  br i1 %exitcond.not, label %._crit_edge265, label %bb.bc

bb.bp:                                            ; preds = %bb.bn
  %i.lr = add nuw nsw i64 %.sroa.048.2261, 9
  %i.ls = sub i64 %i.lr, %.sroa.055.0
  %i.lt = shl nsw i64 %i.ls, 25
  %i.lu = or i64 %i.lt, %.sroa.048.2261
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lk, i64 8
  %i.lw = trunc i64 %i.lu to i32
  store i32 %i.lw, ptr %i.lv, align 4
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lk, i64 12
  store i32 %i.ic, ptr %i.lx, align 4
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lk, i64 16
  store i32 %i.dr, ptr %i.ly, align 4
  store float %i.lh, ptr %i.ln, align 4
  %..i128 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.048.2261, i64 %.sroa.0.7262)
  br label %bb.bo
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references2hq12EvaluateNodeNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core(i64 noundef %0, i64 noundef %1, i64 noundef range(i64 -15, 9223372036854775793) %2, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %3, i64 noundef range(i64 0, 2305843009213693952) %4, ptr nofree readonly captures(none) %.16.val, i64 %.24.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(264) %5, ptr noalias nofree noundef nonnull align 4 captures(address, read_provenance) %6, i64 noundef range(i64 1, 461168601842738791) %7) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = icmp ult i64 %1, %7
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw [20 x i8], ptr %6, i64 %1 ; 7 uses
  %i.d = load i32, ptr %i.c, align 4, !range !11, !noundef !4
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %1, i64 noundef %7, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @135) #29
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.g = load float, ptr %i.f, align 4, !noundef !4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %.sroa.0.0 = phi float [ %i.g, %bb.d ], [ 0.000000e+00, %bb.b ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !781)
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.i = load i32, ptr %i.h, align 4, !alias.scope !781, !noundef !4
  %i.j = and i32 %i.i, 33554431                   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.l = load i32, ptr %i.k, align 4, !alias.scope !781, !noundef !4 ; 2 uses
  %i.m = and i32 %i.l, 134217727
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.o = load i32, ptr %i.n, align 4, !alias.scope !781, !noundef !4 ; 2 uses
  %i.p = icmp eq i64 %1, 0
  br i1 %i.p, label %_RNvNtNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references2hq23ComputeDistanceShortcut.exit, label %bb.f

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
  %i.x = sub nsw i64 %1, %i.w                     ; 3 uses
  %i.y = icmp ult i64 %i.x, %7
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
  br label %_RNvNtNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references2hq23ComputeDistanceShortcut.exit

bb.j:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw [20 x i8], ptr %6, i64 %i.x ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !range !11, !alias.scope !781, !noundef !4
  %i.ag = icmp eq i32 %i.af, 2
  br i1 %i.ag, label %bb.l, label %_RNvNtNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references2hq23ComputeDistanceShortcut.exit

bb.k:                                             ; preds = %bb.g
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.x, i64 noundef range(i64 1, 461168601842738791) %7, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @217) #29, !noalias !781
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !alias.scope !781, !noundef !4
  br label %_RNvNtNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references2hq23ComputeDistanceShortcut.exit

_RNvNtNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references2hq23ComputeDistanceShortcut.exit: ; preds = %bb.e, %bb.i, %bb.j, %bb.l
  %.sroa.0.0.i = phi i32 [ 0, %bb.e ], [ %i.ad, %bb.i ], [ %i.ai, %bb.l ], [ 0, %bb.j ]
  store i32 2, ptr %i.c, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %.sroa.0.0.i, ptr %.sroa.4.0..sroa_idx, align 4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.16.val) ]
  %i.aj = icmp ult i64 %1, %.24.val
  br i1 %i.aj, label %_RINvNtNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references2hq30ZopfliCostModelGetLiteralCostsNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core.exit6, label %bb.m

bb.m:                                             ; preds = %_RNvNtNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references2hq23ComputeDistanceShortcut.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %1, i64 noundef %.24.val, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @151) #29
  unreachable

_RINvNtNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references2hq30ZopfliCostModelGetLiteralCostsNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core.exit6: ; preds = %_RNvNtNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references2hq23ComputeDistanceShortcut.exit
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %.16.val, i64 %1
  %i.al = load float, ptr %i.ak, align 4, !noundef !4
  %i.am = load float, ptr %.16.val, align 4, !noundef !4
  %i.an = fsub float %i.al, %i.am                 ; 2 uses
  %i.ao = fcmp ugt float %.sroa.0.0, %i.an
  br i1 %i.ao, label %bb.n, label %_RINvNtNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references2hq30ZopfliCostModelGetLiteralCostsNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core.exit

_RINvNtNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references2hq30ZopfliCostModelGetLiteralCostsNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core.exit: ; preds = %_RINvNtNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references2hq30ZopfliCostModelGetLiteralCostsNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core.exit6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ap = fsub float %.sroa.0.0, %i.an
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %1, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store float %i.ap, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store float %.sroa.0.0, ptr %i.as, align 4
  call void @_RNvNtNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references2hq20ComputeDistanceCache(i64 noundef %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %3, i64 noundef %4, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %6, i64 noundef %7, ptr noalias nofree noundef nonnull align 4 %i.a, i64 noundef 4)
  call void @_RNvNtNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references2hq17StartPosQueuePush(ptr noalias nofree noundef nonnull align 8 dereferenceable(264) %5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references2hq30ZopfliCostModelGetLiteralCostsNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core.exit6, %_RINvNtNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references2hq30ZopfliCostModelGetLiteralCostsNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef i64 @_RINvNtNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references2hq17FindAllMatchesH10NtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocINtNtB4_19hash_to_binary_tree10H10BucketsB1e_ENtB2c_16H10DefaultParamsECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %8, ptr noalias nofree noundef nonnull writeonly align 8 captures(none) %9, i64 noundef range(i64 0, 1152921504606846976) %10) unnamed_addr #0 personality ptr @rust_eh_personality {
.split:
  %i.a = alloca [152 x i8], align 16              ; 16 uses
  %i.b = alloca [8 x i8], align 8                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.d = load i32, ptr %i.c, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store <4 x i32> splat (i32 268435455), ptr %i.a, align 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store <4 x i32> splat (i32 268435455), ptr %i.e, align 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  store <4 x i32> splat (i32 268435455), ptr %i.f, align 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  store <4 x i32> splat (i32 268435455), ptr %i.g, align 16
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  store <4 x i32> splat (i32 268435455), ptr %i.h, align 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 2 uses
  store <4 x i32> splat (i32 268435455), ptr %i.i, align 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 96 ; 2 uses
  store <4 x i32> splat (i32 268435455), ptr %i.j, align 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 112 ; 2 uses
  store <4 x i32> splat (i32 268435455), ptr %i.k, align 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 128 ; 2 uses
  store <4 x i32> splat (i32 268435455), ptr %i.l, align 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 144 ; 2 uses
  store i32 268435455, ptr %i.m, align 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 148 ; 2 uses
  store i32 268435455, ptr %i.n, align 4
  %i.o = and i64 %5, %4                           ; 9 uses
  %i.p = icmp eq i32 %i.d, 11
  %. = select i1 %i.p, i64 64, i64 16
  %spec.select = tail call i64 @llvm.usub.sat.i64(i64 %5, i64 %.) ; 3 uses
  %.sroa.012.089 = add i64 %5, -1                 ; 3 uses
  %i.q = icmp ugt i64 %.sroa.012.089, %spec.select
  br i1 %i.q, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.split
  %i.r = icmp ult i64 %i.o, %3
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 %i.o ; 3 uses
  %i.t = add i64 %i.o, 1                          ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 %i.t
  %i.v = sub nuw nsw i64 %3, %i.o
  br i1 %i.r, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.w = icmp samesign ult i64 %i.t, %3
  br i1 %i.w, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us, %bb.h
  %.sroa.012.092.us.us = phi i64 [ %.sroa.012.0.us.us, %bb.h ], [ %.sroa.012.089, %.lr.ph.split.us ] ; 3 uses
  %.sroa.03.091.us.us = phi i64 [ %.sroa.03.1.us.us, %bb.h ], [ 0, %.lr.ph.split.us ] ; 8 uses
  %i.x = phi i64 [ %i.at, %bb.h ], [ 1, %.lr.ph.split.us ] ; 5 uses
  %i.y = sub i64 %5, %.sroa.012.092.us.us         ; 2 uses
  %i.z = icmp ugt i64 %i.y, %7
  br i1 %i.z, label %._crit_edge, label %bb.a

bb.a:                                             ; preds = %.lr.ph.split.us.split.us
  %i.aa = and i64 %.sroa.012.092.us.us, %4        ; 5 uses
  %i.ab = icmp ult i64 %i.aa, %3
  br i1 %i.ab, label %bb.b, label %.split102.us

bb.b:                                             ; preds = %bb.a
  %i.ac = load i8, ptr %i.s, align 1, !noundef !4
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 %i.aa ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 1, !noundef !4
  %.not.us.us = icmp eq i8 %i.ac, %i.ae
  br i1 %.not.us.us, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.af = add nuw nsw i64 %i.aa, 1                ; 3 uses
  %i.ag = icmp ult i64 %i.af, %3
  br i1 %i.ag, label %bb.d, label %.split110.us

bb.d:                                             ; preds = %bb.c
  %i.ah = load i8, ptr %i.u, align 1, !noundef !4
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 %i.af
  %i.aj = load i8, ptr %i.ai, align 1, !noundef !4
  %.not45.us.us = icmp eq i8 %i.ah, %i.aj
  br i1 %.not45.us.us, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ak = sub nuw nsw i64 %3, %i.aa
  %i.al = tail call noundef i64 @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc11static_dict24FindMatchLengthWithLimit(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ad, i64 noundef %i.ak, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.s, i64 noundef %i.v, i64 noundef %6) ; 3 uses
  %i.am = icmp ugt i64 %i.al, %i.x
  br i1 %i.am, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.an = icmp ult i64 %.sroa.03.091.us.us, %10
  br i1 %i.an, label %bb.g, label %.split114.us

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %.sroa.03.091.us.us
  %i.ap = shl i64 %i.al, 37
  %i.aq = and i64 %i.y, 4294967295
  %i.ar = or disjoint i64 %i.ap, %i.aq
  store i64 %i.ar, ptr %i.ao, align 8
  %i.as = add nuw nsw i64 %.sroa.03.091.us.us, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e, %bb.d, %bb.b
  %i.at = phi i64 [ %i.x, %bb.b ], [ %i.x, %bb.d ], [ %i.al, %bb.g ], [ %i.x, %bb.e ] ; 3 uses
  %.sroa.03.1.us.us = phi i64 [ %.sroa.03.091.us.us, %bb.b ], [ %.sroa.03.091.us.us, %bb.d ], [ %i.as, %bb.g ], [ %.sroa.03.091.us.us, %bb.e ] ; 2 uses
  %.sroa.012.0.us.us = add i64 %.sroa.012.092.us.us, -1 ; 2 uses
  %i.au = icmp ugt i64 %.sroa.012.0.us.us, %spec.select
  %i.av = icmp ult i64 %i.at, 3
  %or.cond.us.us = select i1 %i.au, i1 %i.av, i1 false
  br i1 %or.cond.us.us, label %.lr.ph.split.us.split.us, label %._crit_edge

.lr.ph.split.us.split.split:                      ; preds = %.lr.ph.split.us, %bb.k
  %.sroa.012.092.us = phi i64 [ %.sroa.012.0.us, %bb.k ], [ %.sroa.012.089, %.lr.ph.split.us ] ; 3 uses
  %i.aw = sub i64 %5, %.sroa.012.092.us
  %i.ax = icmp ugt i64 %i.aw, %7
  br i1 %i.ax, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %.lr.ph.split.us.split.split
  %i.ay = and i64 %.sroa.012.092.us, %4           ; 3 uses
  %i.az = icmp ult i64 %i.ay, %3
  br i1 %i.az, label %bb.j, label %.split102.us

bb.j:                                             ; preds = %bb.i
  %i.ba = load i8, ptr %i.s, align 1, !noundef !4
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 %i.ay
  %i.bc = load i8, ptr %i.bb, align 1, !noundef !4
  %.not.us = icmp eq i8 %i.ba, %i.bc
  br i1 %.not.us, label %.split106.us, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.sroa.012.0.us = add i64 %.sroa.012.092.us, -1 ; 2 uses
  %i.bd = icmp ugt i64 %.sroa.012.0.us, %spec.select
  br i1 %i.bd, label %.lr.ph.split.us.split.split, label %._crit_edge

._crit_edge:                                      ; preds = %bb.k, %.lr.ph.split.us.split.split, %bb.h, %.lr.ph.split.us.split.us, %.lr.ph.split, %.split
  %.lcssa83 = phi i64 [ 1, %.split ], [ 1, %.lr.ph.split ], [ %i.x, %.lr.ph.split.us.split.us ], [ %i.at, %bb.h ], [ 1, %.lr.ph.split.us.split.split ], [ 1, %bb.k ] ; 3 uses
  %.sroa.03.0.lcssa = phi i64 [ 0, %.split ], [ 0, %.lr.ph.split ], [ %.sroa.03.091.us.us, %.lr.ph.split.us.split.us ], [ %.sroa.03.1.us.us, %bb.h ], [ 0, %.lr.ph.split.us.split.split ], [ 0, %bb.k ] ; 5 uses
  store i64 %.lcssa83, ptr %i.b, align 8
  %i.be = icmp ult i64 %.lcssa83, %6
  br i1 %i.be, label %bb.m, label %bb.o

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.bf = icmp eq i64 %7, 0
  br i1 %i.bf, label %._crit_edge, label %bb.l

bb.l:                                             ; preds = %.lr.ph.split
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.o, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @141) #29
  unreachable

.split102.us:                                     ; preds = %bb.i, %bb.a
  %.us-phi124 = phi i64 [ %i.aa, %bb.a ], [ %i.ay, %bb.i ]
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.us-phi124, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @142) #29
  unreachable

.split106.us:                                     ; preds = %bb.j
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.t, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @143) #29
  unreachable

.split110.us:                                     ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.af, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @144) #29
  unreachable

.split114.us:                                     ; preds = %bb.f
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.03.091.us.us, i64 noundef %10, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #29
  unreachable

bb.m:                                             ; preds = %._crit_edge
  %.not.i = icmp ugt i64 %.sroa.03.0.lcssa, %10
  br i1 %.not.i, label %bb.n, label %_RNvMNtCskKLDkoKarTP_4core5sliceSy12split_at_mutCskeugdADtBsi_12pingora_core.exit, !prof !6

bb.n:                                             ; preds = %bb.m
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @179, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @146) #29, !noalias !787
  unreachable

_RNvMNtCskKLDkoKarTP_4core5sliceSy12split_at_mutCskeugdADtBsi_12pingora_core.exit: ; preds = %bb.m
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %.sroa.03.0.lcssa
  %i.bh = sub nuw nsw i64 %10, %.sroa.03.0.lcssa
  %i.bi = call fastcc noundef i64 @_RINvNtNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references19hash_to_binary_tree22StoreAndFindMatchesH10NtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocINtB2_10H10BucketsB1B_ENtB2_16H10DefaultParamsECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 dereferenceable(96) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, i64 noundef %5, i64 noundef %4, i64 noundef %6, i64 noundef %7, ptr noalias nofree noundef align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull align 8 %i.bg, i64 noundef %i.bh)
  %i.bj = add i64 %i.bi, %.sroa.03.0.lcssa
  %.pre = load i64, ptr %i.b, align 8
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge, %_RNvMNtCskKLDkoKarTP_4core5sliceSy12split_at_mutCskeugdADtBsi_12pingora_core.exit
  %i.bk = phi i64 [ %.pre, %_RNvMNtCskKLDkoKarTP_4core5sliceSy12split_at_mutCskeugdADtBsi_12pingora_core.exit ], [ %.lcssa83, %._crit_edge ]
  %.sroa.03.2 = phi i64 [ %i.bj, %_RNvMNtCskKLDkoKarTP_4core5sliceSy12split_at_mutCskeugdADtBsi_12pingora_core.exit ], [ %.sroa.03.0.lcssa, %._crit_edge ] ; 4 uses
  store <4 x i32> splat (i32 268435455), ptr %i.a, align 16
  store <4 x i32> splat (i32 268435455), ptr %i.e, align 16
  store <4 x i32> splat (i32 268435455), ptr %i.f, align 16
  store <4 x i32> splat (i32 268435455), ptr %i.g, align 16
  store <4 x i32> splat (i32 268435455), ptr %i.h, align 16
  store <4 x i32> splat (i32 268435455), ptr %i.i, align 16
  store <4 x i32> splat (i32 268435455), ptr %i.j, align 16
  store <4 x i32> splat (i32 268435455), ptr %i.k, align 16
  store <4 x i32> splat (i32 268435455), ptr %i.l, align 16
  store i32 268435455, ptr %i.m, align 16
  store i32 268435455, ptr %i.n, align 4
  %i.bl = add i64 %i.bk, 1
  %..i = tail call noundef i64 @llvm.umax.i64(i64 %i.bl, i64 4) ; 3 uses
  %.not46 = icmp eq ptr %1, null
  br i1 %.not46, label %.loopexit, label %bb.p

.loopexit:                                        ; preds = %bb.w, %bb.u, %bb.q, %bb.o
  %.sroa.03.3 = phi i64 [ %.sroa.03.2, %bb.q ], [ %.sroa.03.2, %bb.o ], [ %.sroa.03.2, %bb.u ], [ %.sroa.03.5, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i64 %.sroa.03.3

bb.p:                                             ; preds = %bb.o
  %i.bm = icmp ugt i64 %i.o, %3
  br i1 %i.bm, label %bb.r, label %bb.q, !prof !6

bb.q:                                             ; preds = %bb.p
  %i.bn = sub nuw nsw i64 %3, %i.o
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 %i.o
  %i.bp = call noundef i32 @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc11static_dict36BrotliFindAllStaticDictionaryMatches(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bo, i64 noundef %i.bn, i64 noundef %..i, i64 noundef %6, ptr noalias nofree noundef nonnull align 4 %i.a, i64 noundef 38)
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %.loopexit, label %bb.s

bb.r:                                             ; preds = %bb.p
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.o, i64 noundef %3, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @150) #29
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.br = getelementptr inbounds nuw i8, ptr %8, i64 101
  %i.bs = load i8, ptr %i.br, align 1, !range !18, !noundef !4
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %bb.u, label %bb.t, !prof !19

bb.t:                                             ; preds = %bb.s
  call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @147, i64 noundef 39, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @148) #29
  unreachable
end_hunk_0
