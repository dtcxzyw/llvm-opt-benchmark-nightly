Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_layout-dbf6d821f089d5d9.typst_layout.57215e5c6dfa9aa8-cgu.0?download=true
inline.NumInlined: 19601
inline.NumDeleted: 9837
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumRuntimeUnrolled: 55
loop-unroll.NumUnrolled: 106
begin_hunk_0_@_RNCNvNtCs7tN9tvpkfrg_12typst_layout6shapes22corners_control_points0B5_:bb.a
  %.sroa.16.0..sroa_idx134 = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %.sroa.17.0..sroa_idx140 = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %.sroa.18.0..sroa_idx146 = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %.sroa.19.0..sroa_idx152 = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !41, !align !46, !noundef !41 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !nonnull !41, !align !46, !noundef !41 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 160
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 240
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e, %bb.d, %bb.c
  %.sroa.02.095 = phi ptr [ %i.p, %bb.c ], [ %i.y, %bb.d ], [ %i.ah, %bb.e ], [ %i.i, %bb.b ] ; 11 uses
  %.sroa.0.0.i.i.sroa.speculated5059708193.in = phi ptr [ %i.a, %bb.c ], [ %.sroa.4.0..sroa_idx, %bb.d ], [ %.sroa.5.0..sroa_idx, %bb.e ], [ %.sroa.6.0..sroa_idx, %bb.b ]
  %.in209 = phi ptr [ %i.k, %bb.c ], [ %.sroa.14.0..sroa_idx120, %bb.d ], [ %.sroa.16.0..sroa_idx134, %bb.e ], [ %.sroa.18.0..sroa_idx, %bb.b ]
  %.in210 = phi ptr [ %.sroa.13.0..sroa_idx112, %bb.c ], [ %.sroa.15.0..sroa_idx126, %bb.d ], [ %.sroa.17.0..sroa_idx140, %bb.e ], [ %.sroa.19.0..sroa_idx, %bb.b ]
  %.in211 = phi ptr [ %.sroa.14.0..sroa_idx118, %bb.c ], [ %.sroa.16.0..sroa_idx132, %bb.d ], [ %.sroa.18.0..sroa_idx146, %bb.e ], [ %i.c, %bb.b ]
  %.in212 = phi ptr [ %.sroa.15.0..sroa_idx124, %bb.c ], [ %.sroa.17.0..sroa_idx138, %bb.d ], [ %.sroa.19.0..sroa_idx152, %bb.e ], [ %.sroa.13.0..sroa_idx, %bb.b ]
  %.in = phi ptr [ %i.m, %bb.c ], [ %i.u, %bb.d ], [ %i.ad, %bb.e ], [ %i.e, %bb.b ]
  %.in107 = phi ptr [ %i.n, %bb.c ], [ %i.v, %bb.d ], [ %i.ae, %bb.e ], [ %i.f, %bb.b ]
  %.sroa.012.0 = phi ptr [ %i.q, %bb.c ], [ %i.z, %bb.d ], [ %i.ai, %bb.e ], [ %i.h, %bb.b ] ; 10 uses
  %i.aj = load double, ptr %.in212, align 8
  %i.ak = load i64, ptr %.in211, align 8
  %i.al = load double, ptr %.in210, align 8
  %i.am = load i64, ptr %.in209, align 8
  %.sroa.0.0.i.i.sroa.speculated5059708193 = load double, ptr %.sroa.0.0.i.i.sroa.speculated5059708193.in, align 8
  %i.an = load double, ptr %.in107, align 8, !noundef !41
  %i.ao = load double, ptr %.in, align 8, !noundef !41
  %i.ap = load i64, ptr %.sroa.02.095, align 8, !range !60, !noundef !41 ; 2 uses
  %.not = icmp eq i64 %i.ap, -2
  %i.aq = load i64, ptr %.sroa.012.0, align 8, !range !60, !noundef !41
  %i.ar = icmp eq i64 %i.aq, -2                   ; 2 uses
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %i.ar, label %bb.i, label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.as = zext i1 %i.ar to i8
  br label %bb.i

bb.i:                                             ; preds = %bb.v, %bb.u, %bb.n, %bb.s, %bb.g, %bb.h
  %.sroa.026.0 = phi i8 [ 0, %bb.u ], [ %spec.select, %bb.v ], [ 0, %bb.g ], [ %i.as, %bb.h ], [ 0, %bb.s ], [ 0, %bb.n ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %.sroa.0.0.i.i.sroa.speculated5059708193, ptr %i.at, align 8
  store i64 %i.ak, ptr %0, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.aj, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.am, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.al, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 %2, ptr %i.ax, align 1
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %i.ao, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 48
  store double %i.an, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 %.sroa.026.0, ptr %i.ba, align 8
  ret void

bb.j:                                             ; preds = %bb.g
  %.not38 = icmp eq i64 %i.ap, -1
  br i1 %.not38, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.02.095, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !noundef !41 ; 2 uses
  %i.bd = icmp ult i64 %i.bc, 1152921504606846976
  tail call void @llvm.assume(i1 %i.bd)
  %i.be = icmp eq i64 %i.bc, 0
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.sroa.022.0 = phi i1 [ %i.be, %bb.k ], [ true, %bb.j ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.02.095, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.012.0, i64 32
  %i.bh = tail call fastcc noundef zeroext i1 @_RNvXs7_NtNtCsdaEETE4DqmE_13typst_library9visualize5paintNtB5_5PaintNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bg) #59
  br i1 %i.bh, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bi = load i64, ptr %.sroa.02.095, align 8, !range !70, !noundef !41
  %.not39 = icmp eq i64 %i.bi, -1
  %i.bj = load i64, ptr %.sroa.012.0, align 8, !range !70, !noundef !41
  %i.bk = icmp eq i64 %i.bj, -1                   ; 2 uses
  br i1 %.not39, label %_RNvXst_NtNtCsdaEETE4DqmE_13typst_library9visualize6strokeINtB5_11DashPatternNtNtNtB9_6layout3abs3AbsB1c_ENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs7tN9tvpkfrg_12typst_layout.exit, label %bb.o

bb.n:                                             ; preds = %bb.o, %bb.l
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.02.095, i64 72
  %i.bm = load i8, ptr %i.bl, align 8, !range !48, !noundef !41
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.012.0, i64 72
  %i.bo = load i8, ptr %i.bn, align 8, !range !48, !noundef !41
  %i.bp = icmp eq i8 %i.bm, %i.bo
  br i1 %i.bp, label %bb.s, label %bb.i

bb.o:                                             ; preds = %bb.m
  br i1 %i.bk, label %bb.n, label %bb.p

_RNvXst_NtNtCsdaEETE4DqmE_13typst_library9visualize6strokeINtB5_11DashPatternNtNtNtB9_6layout3abs3AbsB1c_ENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs7tN9tvpkfrg_12typst_layout.exit: ; preds = %.lr.ph.i.i, %bb.m, %.loopexit.i, %bb.p
  %.sroa.025.0.in = phi i1 [ %i.bk, %bb.m ], [ %i.cl, %.loopexit.i ], [ false, %bb.p ], [ false, %.lr.ph.i.i ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.02.095, i64 72
  %i.br = load i8, ptr %i.bq, align 8, !range !48, !noundef !41
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.012.0, i64 72
  %i.bt = load i8, ptr %i.bs, align 8, !range !48, !noundef !41
  %i.bu = icmp eq i8 %i.br, %i.bt
  br i1 %i.bu, label %bb.t, label %bb.u

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19118)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19119)
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.02.095, i64 16
  %i.bw = load i64, ptr %i.bv, align 8, !alias.scope !19118, !noalias !19119, !noundef !41 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.012.0, i64 16
  %i.by = load i64, ptr %i.bx, align 8, !alias.scope !19119, !noalias !19118, !noundef !41
  %i.bz = icmp eq i64 %i.bw, %i.by
  br i1 %i.bz, label %bb.q, label %_RNvXst_NtNtCsdaEETE4DqmE_13typst_library9visualize6strokeINtB5_11DashPatternNtNtNtB9_6layout3abs3AbsB1c_ENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs7tN9tvpkfrg_12typst_layout.exit

bb.q:                                             ; preds = %bb.p
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.012.0, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !alias.scope !19119, !noalias !19118, !nonnull !41, !noundef !41
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.02.095, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !alias.scope !19118, !noalias !19119, !nonnull !41, !noundef !41
  %i.ce = icmp eq i64 %i.bw, 0
  br i1 %i.ce, label %.loopexit.i, label %.lr.ph.i.i

bb.r:                                             ; preds = %.lr.ph.i.i
  %i.cf = add nuw i64 %.sroa.01.05.i.i, 1         ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.cf, %i.bw
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.q, %bb.r
  %.sroa.01.05.i.i = phi i64 [ %i.cf, %bb.r ], [ 0, %bb.q ] ; 3 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %.sroa.01.05.i.i
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %.sroa.01.05.i.i
  %i.ci = tail call noundef zeroext i1 @_RNvXs3_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cg, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ch), !noalias !19120
  br i1 %i.ci, label %bb.r, label %_RNvXst_NtNtCsdaEETE4DqmE_13typst_library9visualize6strokeINtB5_11DashPatternNtNtNtB9_6layout3abs3AbsB1c_ENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs7tN9tvpkfrg_12typst_layout.exit

.loopexit.i:                                      ; preds = %bb.r, %bb.q
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.02.095, i64 24
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.012.0, i64 24
  %i.cl = tail call noundef zeroext i1 @_RNvXs3_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ck)
  br label %_RNvXst_NtNtCsdaEETE4DqmE_13typst_library9visualize6strokeINtB5_11DashPatternNtNtNtB9_6layout3abs3AbsB1c_ENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs7tN9tvpkfrg_12typst_layout.exit

bb.s:                                             ; preds = %bb.n
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.02.095, i64 56
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.012.0, i64 56
  %i.co = tail call noundef zeroext i1 @_RNvXs3_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cm, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cn) ; 0 uses
  br label %bb.i

bb.t:                                             ; preds = %_RNvXst_NtNtCsdaEETE4DqmE_13typst_library9visualize6strokeINtB5_11DashPatternNtNtNtB9_6layout3abs3AbsB1c_ENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs7tN9tvpkfrg_12typst_layout.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.02.095, i64 56
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.012.0, i64 56
  %i.cr = tail call noundef zeroext i1 @_RNvXs3_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cp, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cq)
  %i.cs = zext i1 %i.cr to i8
  br label %bb.u

bb.u:                                             ; preds = %_RNvXst_NtNtCsdaEETE4DqmE_13typst_library9visualize6strokeINtB5_11DashPatternNtNtNtB9_6layout3abs3AbsB1c_ENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs7tN9tvpkfrg_12typst_layout.exit, %bb.t
  %.sroa.026.1 = phi i8 [ %i.cs, %bb.t ], [ 0, %_RNvXst_NtNtCsdaEETE4DqmE_13typst_library9visualize6strokeINtB5_11DashPatternNtNtNtB9_6layout3abs3AbsB1c_ENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs7tN9tvpkfrg_12typst_layout.exit ]
  br i1 %.sroa.025.0.in, label %bb.v, label %bb.i

bb.v:                                             ; preds = %bb.u
  %spec.select = select i1 %.sroa.022.0, i8 1, i8 %.sroa.026.1
  br label %bb.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef double @_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math6fenced26relative_to_from_fragments0B7_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 16 captures(none) dereferenceable(304) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 8 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !41, !noundef !41
  %i.e = load i8, ptr %i.d, align 1, !range !54, !noundef !41
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %1, align 16, !range !95, !noundef !41
  %i.h = tail call i64 @llvm.usub.sat.i64(i64 %i.g, i64 1)
  switch i64 %i.h, label %bb.u [
    i64 0, label %bb.s
    i64 1, label %bb.t
  ]

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !41, !align !46, !noundef !41 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !41, !align !46, !noundef !41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  %i.m = getelementptr i8, ptr %i.j, i64 8
  %.val = load ptr, ptr %i.m, align 8             ; 2 uses
  %i.n = getelementptr i8, ptr %i.j, i64 16
  %.val34 = load i64, ptr %i.n, align 8           ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19146)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !19147
  %i.o = load i64, ptr %1, align 16, !range !95, !alias.scope !19146, !noalias !19148, !noundef !41 ; 3 uses
  %i.p = icmp samesign ult i64 %i.o, 2
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.r = load ptr, ptr %i.q, align 16, !alias.scope !19146, !noalias !19148, !nonnull !41, !noundef !41 ; 2 uses
  %i.s = atomicrmw add ptr %i.r, i64 1 monotonic, align 8, !noalias !19147
  %i.t = icmp slt i64 %i.s, 0
  br i1 %i.t, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  %.not.i = icmp eq i64 %.val34, 0
  br i1 %.not.i, label %bb.h, label %bb.i, !prof !44

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.trap()
  unreachable

bb.g:                                             ; preds = %._crit_edge.i, %bb.d
  %i.u = phi ptr [ %i.r, %bb.d ], [ %storemerge.pre.i, %._crit_edge.i ] ; 5 uses
  store ptr %i.u, ptr %i.a, align 8, !noalias !19147
  %i.v = tail call i64 @llvm.usub.sat.i64(i64 %i.o, i64 1) ; 2 uses
  switch i64 %i.v, label %bb.k [
    i64 0, label %bb.m
    i64 1, label %bb.l
  ]

bb.h:                                             ; preds = %bb.e
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @295) #53, !noalias !19147
  unreachable

bb.i:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.w = getelementptr [8 x i8], ptr %.val, i64 %.val34
  %i.x = getelementptr i8, ptr %i.w, i64 -8       ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !noalias !19147, !nonnull !41, !noundef !41
  %i.z = atomicrmw add ptr %i.y, i64 1 monotonic, align 8, !noalias !19147
  %i.aa = icmp slt i64 %i.z, 0
  br i1 %i.aa, label %bb.j, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.i
  %storemerge.pre.i = load ptr, ptr %i.x, align 8, !noalias !19147
  br label %bb.g

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.trap()
  unreachable

bb.k:                                             ; preds = %bb.g
  %i.ab = invoke fastcc { double, double } @_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_clonedNtNtBa_4text8TextElemKh5_ECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.p unwind label %bb.n, !noalias !19146 ; 2 uses

bb.l:                                             ; preds = %bb.g
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.g
  %.sink.i = phi i64 [ 56, %bb.l ], [ 232, %bb.g ]
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 %.sink.i
  %.sroa.4.0.i = load double, ptr %i.ac, align 8, !alias.scope !19146, !noalias !19148, !noundef !41
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment4font.exit

bb.n:                                             ; preds = %bb.p, %bb.k
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ae = atomicrmw sub ptr %i.u, i64 1 release, align 8, !noalias !19149
  %i.af = icmp eq i64 %i.ae, 1
  br i1 %i.af, label %bb.o, label %common.resume

bb.o:                                             ; preds = %bb.n
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library4text4font17FontInstanceInnerE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #58
          to label %common.resume unwind label %bb.q, !noalias !19147

bb.p:                                             ; preds = %bb.k
  %i.ag = extractvalue { double, double } %i.ab, 0
  %i.ah = extractvalue { double, double } %i.ab, 1
  %i.ai = invoke noundef double @_RNvXs8_NtCsdaEETE4DqmE_13typst_library4textNtB5_8TextSizeNtNtNtB7_11foundations6styles7Resolve7resolve(double noundef %i.ag, double noundef %i.ah, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment4font.exit unwind label %bb.n, !noalias !19146

bb.q:                                             ; preds = %bb.o
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55, !noalias !19147
  unreachable

common.resume:                                    ; preds = %bb.w, %bb.v, %bb.n, %bb.o
  %common.resume.op = phi { ptr, i32 } [ %i.ad, %bb.n ], [ %i.ad, %bb.o ], [ %i.as, %bb.v ], [ %i.as, %bb.w ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment4font.exit: ; preds = %bb.m, %bb.p
  %.sroa.0.0.i = phi double [ %.sroa.4.0.i, %bb.m ], [ %i.ai, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !19147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.u, ptr %i.c, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 184 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.u, i64 192
  %i.am = load atomic i32, ptr %i.al acquire, align 4, !noalias !19150
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit, label %bb.r, !prof !43

bb.r:                                             ; preds = %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment4font.exit
  invoke fastcc void @_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE10initializeNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout(ptr noundef nonnull align 8 %i.ak, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c)
          to label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit unwind label %bb.v

bb.s:                                             ; preds = %bb.b
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ap = load double, ptr %i.ao, align 8, !noundef !41
  br label %bb.u

bb.t:                                             ; preds = %bb.b
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ar = load double, ptr %i.aq, align 8, !noundef !41
  br label %bb.u

bb.u:                                             ; preds = %bb.b, %bb.s, %bb.t, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceECs7tN9tvpkfrg_12typst_layout.exit37
  %.sroa.0.0 = phi double [ %spec.store.select4, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceECs7tN9tvpkfrg_12typst_layout.exit37 ], [ %i.ar, %bb.t ], [ %i.ap, %bb.s ], [ 0.000000e+00, %bb.b ]
  ret double %.sroa.0.0

bb.v:                                             ; preds = %bb.r, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !19151)
  call void @llvm.experimental.noalias.scope.decl(metadata !19152)
  call void @llvm.experimental.noalias.scope.decl(metadata !19153)
  %i.at = load ptr, ptr %i.c, align 8, !alias.scope !19154, !nonnull !41, !noundef !41
  %i.au = atomicrmw sub ptr %i.at, i64 1 release, align 8, !noalias !19154
  %i.av = icmp eq i64 %i.au, 1
  br i1 %i.av, label %bb.w, label %common.resume

bb.w:                                             ; preds = %bb.v
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library4text4font17FontInstanceInnerE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #58
          to label %common.resume unwind label %bb.z

_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment4font.exit, %bb.r
  %i.aw = load ptr, ptr %i.ak, align 8, !nonnull !41, !noundef !41
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load double, ptr %i.ax, align 8, !noundef !41
  %i.az = fmul double %.sroa.0.0.i, %i.ay         ; 2 uses
  %i.ba = call double @llvm.fabs.f64(double %i.az)
  %i.bb = fcmp one double %i.ba, +inf
  %spec.store.select5 = select i1 %i.bb, double %i.az, double 0.000000e+00 ; 2 uses
  switch i64 %i.v, label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit [
    i64 0, label %.thread
    i64 1, label %.thread41.a
  ]

.thread:                                          ; preds = %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit
  %2 = trunc nuw i64 %i.o to i1                   ; 2 uses
  %spec.select.v = select i1 %2, i64 8, i64 72
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit.sink.split

.thread41.a:                                      ; preds = %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %3 = load i64, ptr %i.bc, align 8, !range !49, !noundef !41
  %4 = trunc nuw i64 %3 to i1                     ; 2 uses
  %spec.select33.v = select i1 %4, i64 16, i64 40
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit.sink.split

_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit.sink.split: ; preds = %.thread, %.thread41.a
  %spec.select33.v.sink = phi i64 [ %spec.select33.v, %.thread41.a ], [ %spec.select.v, %.thread ]
  %.sink53 = phi i64 [ 40, %.thread41.a ], [ 72, %.thread ]
  %.sink51 = phi i64 [ 16, %.thread41.a ], [ 8, %.thread ]
  %.sink = phi i1 [ %4, %.thread41.a ], [ %2, %.thread ]
  %spec.select33 = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select33.v.sink
  %.sroa.028.2 = load double, ptr %spec.select33, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 %.sink53
  %i.be = load double, ptr %i.bd, align 8, !alias.scope !19155, !noundef !41 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 %.sink51
  %i.bg = load double, ptr %i.bf, align 8, !alias.scope !19155
  %.sroa.012.0.i = select i1 %.sink, double %i.bg, double %i.be ; 2 uses
  %i.bh = fneg double %.sroa.012.0.i
  %i.bi = fcmp uno double %.sroa.012.0.i, 0.000000e+00
  %spec.store.select2.i = select i1 %i.bi, double 0.000000e+00, double %i.bh
  %i.bj = fadd double %i.be, %spec.store.select2.i ; 2 uses
  %.inv.i = fcmp ord double %i.bj, 0.000000e+00
  %spec.store.select3.i = select i1 %.inv.i, double %i.bj, double 0.000000e+00
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit

_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit: ; preds = %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit.sink.split, %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit
  %.sroa.028.140 = phi double [ 0.000000e+00, %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit ], [ %.sroa.028.2, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit.sink.split ]
  %.sroa.0.0.i36 = phi double [ 0.000000e+00, %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit ], [ %spec.store.select3.i, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit.sink.split ]
  %i.bk = fsub double %.sroa.028.140, %spec.store.select5 ; 2 uses
  %.inv = fcmp ord double %i.bk, 0.000000e+00
  %spec.store.select2 = select i1 %.inv, double %i.bk, double 0.000000e+00
  %i.bl = fadd double %spec.store.select5, %.sroa.0.0.i36 ; 2 uses
  %.inv31 = fcmp ord double %i.bl, 0.000000e+00
  %spec.store.select3 = select i1 %.inv31, double %i.bl, double 0.000000e+00
  %i.bm = invoke noundef double @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout3absNtB2_3Abs3max(double noundef %spec.store.select2, double noundef %spec.store.select3)
          to label %bb.x unwind label %bb.v

bb.x:                                             ; preds = %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit
  %i.bn = fmul double %i.bm, 2.000000e+00         ; 2 uses
  %.inv32 = fcmp ord double %i.bn, 0.000000e+00
  %spec.store.select4 = select i1 %.inv32, double %i.bn, double 0.000000e+00
  call void @llvm.experimental.noalias.scope.decl(metadata !19156)
  call void @llvm.experimental.noalias.scope.decl(metadata !19157)
  call void @llvm.experimental.noalias.scope.decl(metadata !19158)
  %i.bo = load ptr, ptr %i.c, align 8, !alias.scope !19159, !nonnull !41, !noundef !41
  %i.bp = atomicrmw sub ptr %i.bo, i64 1 release, align 8, !noalias !19159
  %i.bq = icmp eq i64 %i.bp, 1
  br i1 %i.bq, label %bb.y, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceECs7tN9tvpkfrg_12typst_layout.exit37

bb.y:                                             ; preds = %bb.x
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library4text4font17FontInstanceInnerE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #58
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceECs7tN9tvpkfrg_12typst_layout.exit37

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceECs7tN9tvpkfrg_12typst_layout.exit37: ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.u

bb.z:                                             ; preds = %bb.w
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout6inline4deco8decorates_0B7_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, double noundef %1, double noundef %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [176 x i8], align 16              ; 11 uses
  %i.b = alloca [176 x i8], align 16              ; 11 uses
  %i.c = alloca [80 x i8], align 8                ; 4 uses
  %.sroa.0.sroa.0.sroa.7 = alloca [80 x i8], align 8 ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = load ptr, ptr %0, align 8, !nonnull !41, !align !46, !noundef !41
  %i.f = load double, ptr %i.e, align 8, !noundef !41
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !41, !align !46, !noundef !41
  %i.i = load double, ptr %i.h, align 8, !noundef !41
  %i.j = fadd double %i.f, %i.i                   ; 2 uses
  %.inv = fcmp ord double %i.j, 0.000000e+00
  %spec.store.select = select i1 %.inv, double %i.j, double 0.000000e+00 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.k = fneg double %1
  %i.l = fcmp uno double %1, 0.000000e+00
  %spec.store.select1 = select i1 %i.l, double 0.000000e+00, double %i.k
  %i.m = fadd double %2, %spec.store.select1      ; 2 uses
  %.inv20 = fcmp ord double %i.m, 0.000000e+00
  %spec.store.select2 = select i1 %.inv20, double %i.m, double 0.000000e+00 ; 4 uses
  store double %spec.store.select2, ptr %i.d, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store double 0.000000e+00, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !41, !align !46, !noundef !41
  %i.q = call noundef i8 @_RNvXs5_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p)
  %i.r = icmp sgt i8 %i.q, -1
  br i1 %i.r, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !41, !noundef !41
  %i.u = load i8, ptr %i.t, align 1, !range !54, !noundef !41
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.sroa.0.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !41, !align !46, !noundef !41
  invoke fastcc void @_RNvXsC_NtNtCsdaEETE4DqmE_13typst_library9visualize6strokeNtB5_11FixedStrokeNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.x)
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %bb.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.e:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = bitcast double %spec.store.select2 to i64
  %i.aa = inttoptr i64 %i.z to ptr
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5shape8GeometryECs7tN9tvpkfrg_12typst_layout(i64 -9223372036854775808, ptr %i.aa) #54
  resume { ptr, i32 } %i.y

bb.f:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.sroa.0.sroa.7, ptr noundef nonnull align 8 dereferenceable(80) %i.c, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !41, !align !46, !noundef !41 ; 2 uses
  br i1 %3, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 -9223372036854775808, ptr %i.ad, align 16
  %.sroa.0.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store double %spec.store.select2, ptr %.sroa.0.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store double 0.000000e+00, ptr %.sroa.0.sroa.0.sroa.6.0..sroa_idx, align 16
  %.sroa.0.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.sroa.0.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.sroa.0.sroa.7, i64 80, i1 false)
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store i32 -1, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store i8 0, ptr %.sroa.7.0..sroa_idx, align 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.ae, align 8
  store i64 2, ptr %i.a, align 16
  call void @_RNvMs_NtNtCsdaEETE4DqmE_13typst_library6layout5frameNtB4_5Frame4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ac, double noundef %1, double noundef %spec.store.select, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(176) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 -9223372036854775808, ptr %i.af, align 16
  %.sroa.0.sroa.0.sroa.5.0..sroa_idx23 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store double %spec.store.select2, ptr %.sroa.0.sroa.0.sroa.5.0..sroa_idx23, align 8
  %.sroa.0.sroa.0.sroa.6.0..sroa_idx25 = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store double 0.000000e+00, ptr %.sroa.0.sroa.0.sroa.6.0..sroa_idx25, align 16
  %.sroa.0.sroa.0.sroa.7.0..sroa_idx27 = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.sroa.0.sroa.7.0..sroa_idx27, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.sroa.0.sroa.7, i64 80, i1 false)
  %.sroa.0.sroa.6.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  store i32 -1, ptr %.sroa.0.sroa.6.0..sroa_idx16, align 8
  %.sroa.7.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  store i8 0, ptr %.sroa.7.0..sroa_idx3, align 16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.ag, align 8
  store i64 2, ptr %i.b, align 16
  call void @_RNvMs_NtNtCsdaEETE4DqmE_13typst_library6layout5frameNtB4_5Frame7prepend(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ac, double noundef %1, double noundef %spec.store.select, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(176) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.sroa.0.sroa.7)
  br label %bb.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout6inline4line13collect_items0B7_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i64 noundef %1, i64 noundef %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 16              ; 4 uses
  %i.b = alloca [104 x i8], align 8               ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 9 uses
  %i.d = alloca [112 x i8], align 16              ; 15 uses
  %i.e = load ptr, ptr %0, align 8, !nonnull !41, !align !46, !noundef !41 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 6 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !41 ; 5 uses
  %i.h = icmp ult i64 %i.g, 384307168202282326
  tail call void @llvm.assume(i1 %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !41, !align !46, !noundef !41
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !41, !align !46, !noundef !41 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !41, !align !46, !noundef !41 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !41, !align !46, !noundef !41 ; 4 uses
  %.val = load i64, ptr %i.n, align 8             ; 3 uses
  %i.q = getelementptr i8, ptr %i.n, i64 8
  %.val1 = load i64, ptr %i.q, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19217)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19218)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19219)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19220)
  %i.r = icmp ne i64 %1, 0
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !19221, !noalias !19222
  %i.u = icmp ult i64 %1, %i.t
  %or.cond.i.i = select i1 %i.r, i1 %i.u, i1 false
  br i1 %or.cond.i.i, label %bb.b, label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout6inline7prepareNtB2_11Preparation5slice.exit.i

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !19221, !noalias !19222, !nonnull !41, !noundef !41
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %1
  %i.y = load i64, ptr %i.x, align 8, !noalias !19223, !noundef !41
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout6inline7prepareNtB2_11Preparation5slice.exit.i

_RNvMNtNtCs7tN9tvpkfrg_12typst_layout6inline7prepareNtB2_11Preparation5slice.exit.i: ; preds = %bb.b, %bb.a
  %.sroa.0.0.i.i = phi i64 [ 0, %bb.a ], [ %i.y, %bb.b ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !19221, !noalias !19222, !nonnull !41, !noundef !41 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !19221, !noalias !19222, !noundef !41
  %i.ad = getelementptr inbounds nuw [128 x i8], ptr %i.aa, i64 %i.ac ; 2 uses
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = getelementptr i8, ptr %i.e, i64 8       ; 3 uses
end_hunk_0
begin_hunk_1_@_RNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose19layout_line_numbers:bb.a
  switch i8 %.sroa.046.0, label %default.unreachable [
    i8 0, label %bb.df
    i8 1, label %bb.dg
    i8 2, label %bb.dh
  ]

bb.df:                                            ; preds = %bb.de
  br label %bb.dh

bb.dg:                                            ; preds = %bb.de
  %i.kp = fmul nnan double %spec.store.select7, 5.000000e-01
  br label %bb.dh

bb.dh:                                            ; preds = %bb.de, %bb.dg, %bb.df
  %.sroa.080.0 = phi double [ 0.000000e+00, %bb.df ], [ %i.kp, %bb.dg ], [ %spec.store.select7, %bb.de ]
  %i.kq = fadd double %spec.store.select3, %.sroa.080.0 ; 2 uses
  %.inv96 = fcmp ord double %i.kq, 0.000000e+00
  %spec.store.select9 = select i1 %.inv96, double %i.kq, double 0.000000e+00
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ab, ptr noundef nonnull align 8 dereferenceable(48) %i.ae, i64 48, i1 false)
  invoke void @_RNvMs_NtNtCsdaEETE4DqmE_13typst_library6layout5frameNtB4_5Frame10push_frame(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %5, double noundef %spec.store.select9, double noundef %.sroa.5.0.copyload, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.ab)
          to label %bb.di unwind label %bb.cs

bb.di:                                            ; preds = %bb.dh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  %i.kr = icmp eq ptr %i.ih, %i.dn
  br i1 %i.kr, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsRINtNtNtNtB13_11foundations7content6packed6PackedNtNtNtB13_5model3par13ParLineMarkerENtNtB11_5frame5FrameEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.thread, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsRINtNtNtNtB13_11foundations7content6packed6PackedNtNtNtB13_5model3par13ParLineMarkerENtNtB11_5frame5FrameEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit

.loopexit:                                        ; preds = %bb.cu, %bb.db, %bb.cr
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ih, ptr %.sroa.439.0..sroa_idx, align 8
  br label %bb.dj

.loopexit.split-lp:                               ; preds = %bb.cy
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.dj

bb.dj:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !42834)
  %i.ks = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !42835)
  call void @llvm.experimental.noalias.scope.decl(metadata !42836)
  %i.kt = load ptr, ptr %i.ks, align 8, !alias.scope !42837, !nonnull !41, !noundef !41
  %i.ku = atomicrmw sub ptr %i.kt, i64 1 release, align 8, !noalias !42837
  %i.kv = icmp eq i64 %i.ku, 1
  br i1 %i.kv, label %bb.dk, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit143

bb.dk:                                            ; preds = %bb.dj
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashINtNtB7_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1L_5frame9FrameItemEEEE9drop_slowB1N_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ks) #58
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit143 unwind label %bb.cd

.thread34:                                        ; preds = %.thread29.thread.thread, %.thread44.loopexit, %.thread44.loopexit.split-lp, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit151, %.thread29.thread, %bb.bq, %bb.cb, %bb.cc, %bb.bz, %bb.by
  %.pn.pn37 = phi { ptr, i32 } [ %.pn48.pn.i27, %.thread29.thread ], [ %.pn46.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit151 ], [ %i.hl, %bb.cb ], [ %i.hc, %bb.bz ], [ %i.hc, %bb.by ], [ %i.hl, %bb.cc ], [ %.pn48.pn.i27, %bb.bq ], [ %lpad.loopexit193, %.thread44.loopexit ], [ %lpad.loopexit.split-lp194, %.thread44.loopexit.split-lp ], [ %lpad.loopexit85, %.thread29.thread.thread ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsRINtNtNtNtB1f_11foundations7content6packed6PackedNtNtNtB1f_5model3par13ParLineMarkerENtNtB1d_5frame5FrameEEECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aj) #54
          to label %.thread38 unwind label %bb.cd

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB1f_11foundations7content6packed6PackedNtNtNtB1f_5model3par13ParLineMarkerEEEECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.ci, %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtBM_11foundations7content6packed6PackedNtNtNtBM_5model3par13ParLineMarkerEEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  br label %bb.q
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtCs7tN9tvpkfrg_12typst_layout4grid8rowspans18subtract_end_sizes(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, double noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 9 uses
  %i.d = alloca [8 x i8], align 8                 ; 6 uses
  store double %1, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store double 0.000000e+00, ptr %i.c, align 8
  %i.e = call noundef i8 @_RNvXs5_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c)
  %i.f = icmp sgt i8 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !41 ; 2 uses
  %i.j = load i64, ptr %0, align 8, !range !45
  %.promoted = load i64, ptr %i.g, align 8        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not29 = icmp eq i64 %.promoted, 0
  br i1 %.not29, label %.loopexit, label %.lr.ph31

._crit_edge:                                      ; preds = %bb.f, %bb.a
  %storemerge.lcssa = phi double [ %1, %bb.a ], [ %spec.store.select3, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.loopexit

bb.b:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not = icmp eq i64 %i.ac, 0
  br i1 %.not, label %.loopexit, label %.lr.ph31

.loopexit:                                        ; preds = %bb.b, %.lr.ph31, %.lr.ph, %._crit_edge
  %storemerge23 = phi double [ %storemerge.lcssa, %._crit_edge ], [ %1, %.lr.ph ], [ %storemerge2430, %.lr.ph31 ], [ %spec.store.select3, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store double 0.000000e+00, ptr %i.b, align 8
  %i.k = call noundef i8 @_RNvXs5_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  %i.l = icmp sgt i8 %i.k, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.l, label %bb.c, label %bb.d

.lr.ph31:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2430 = phi double [ %spec.store.select3, %bb.b ], [ %1, %.lr.ph ] ; 2 uses
  %i.m = phi i64 [ %i.ac, %bb.b ], [ %.promoted, %.lr.ph ] ; 3 uses
  %i.n = getelementptr [8 x i8], ptr %i.i, i64 %i.m
  %i.o = getelementptr i8, ptr %i.n, i64 -8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.p = load double, ptr %i.o, align 8, !noundef !41
  store double %i.p, ptr %i.a, align 8
  %i.q = call noundef i8 @_RNvXs5_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d)
  %i.r = icmp slt i8 %i.q, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.r, label %bb.f, label %.loopexit

bb.c:                                             ; preds = %.loopexit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noundef !41 ; 2 uses
  %.not20 = icmp eq i64 %i.t, 0
  br i1 %.not20, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.loopexit, %bb.c, %bb.e
  ret void

bb.e:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !41, !noundef !41
  %i.w = getelementptr [8 x i8], ptr %i.v, i64 %i.t
  %i.x = getelementptr i8, ptr %i.w, i64 -8       ; 2 uses
  %i.y = load double, ptr %i.x, align 8, !noundef !41
  %i.z = fneg double %storemerge23
  %i.aa = fcmp uno double %storemerge23, 0.000000e+00
  %spec.store.select = select i1 %i.aa, double 0.000000e+00, double %i.z
  %i.ab = fadd double %spec.store.select, %i.y    ; 2 uses
  %.inv = fcmp ord double %i.ab, 0.000000e+00
  %spec.store.select1 = select i1 %.inv, double %i.ab, double 0.000000e+00
  store double %spec.store.select1, ptr %i.x, align 8
  br label %bb.d

bb.f:                                             ; preds = %.lr.ph31
  %i.ac = add nsw i64 %i.m, -1                    ; 5 uses
  store i64 %i.ac, ptr %i.g, align 8
  %i.ad = icmp samesign ult i64 %i.ac, %i.j
  call void @llvm.assume(i1 %i.ad)
  %i.ae = icmp ult i64 %i.m, 1152921504606846977
  call void @llvm.assume(i1 %i.ae)
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.ac
  %i.ag = load double, ptr %i.af, align 8, !noundef !41 ; 2 uses
  %i.ah = fneg double %i.ag
  %i.ai = fcmp uno double %i.ag, 0.000000e+00
  %spec.store.select2 = select i1 %i.ai, double 0.000000e+00, double %i.ah
  %i.aj = fadd double %storemerge2430, %spec.store.select2 ; 2 uses
  %.inv21 = fcmp ord double %i.aj, 0.000000e+00
  %spec.store.select3 = select i1 %.inv21, double %i.aj, double 0.000000e+00 ; 4 uses
  store double %spec.store.select3, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store double 0.000000e+00, ptr %i.c, align 8
  %i.ak = call noundef i8 @_RNvXs5_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c)
  %i.al = icmp sgt i8 %i.ak, 0
  br i1 %i.al, label %bb.b, label %._crit_edge
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { double, double } @_RNvNtNtCs7tN9tvpkfrg_12typst_layout4math3run11measure_row(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 384307168202282326) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.idx = mul nuw nsw i64 %1, 24
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 3 uses
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB8_6filter6FilterINtNtB8_7flatten7FlatMapINtNtNtBc_5slice4iter4IterINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEIB1C_B2y_ENCNvNtB2C_3run11measure_row0ENCB3M_s_0ENCB3M_s0_0ENtNtNtBa_6traits8iterator8Iterator6reduceNCB3M_s1_0EB2E_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEINtNtNtBa_5slice4iter4IterB1x_EuINtNtNtBa_3ops12control_flow11ControlFlowRB1x_ENCNvNtB1B_3run11measure_row0NCINvNvMsg_NtB6_7flattenINtB4s_13FlattenCompatppE13iter_try_fold7flattenB2y_uB34_NCINvNvXsi_B4s_B4F_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenB2y_uB34_NCINvNvB5T_4find5checkB3J_QNCB3R_s_0E0E0E0E0B1D_.exit.loopexit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.c = icmp eq ptr %i.e, %i.a
  br i1 %i.c, label %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB8_6filter6FilterINtNtB8_7flatten7FlatMapINtNtNtBc_5slice4iter4IterINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEIB1C_B2y_ENCNvNtB2C_3run11measure_row0ENCB3M_s_0ENCB3M_s0_0ENtNtNtBa_6traits8iterator8Iterator6reduceNCB3M_s1_0EB2E_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.a, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEINtNtNtBa_5slice4iter4IterB1x_EuINtNtNtBa_3ops12control_flow11ControlFlowRB1x_ENCNvNtB1B_3run11measure_row0NCINvNvMsg_NtB6_7flattenINtB4s_13FlattenCompatppE13iter_try_fold7flattenB2y_uB34_NCINvNvXsi_B4s_B4F_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenB2y_uB34_NCINvNvB5T_4find5checkB3J_QNCB3R_s_0E0E0E0E0B1D_.exit.loopexit.i.i.i.i.i.i.i.i.i.i
  %i.d = phi ptr [ %i.e, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEINtNtNtBa_5slice4iter4IterB1x_EuINtNtNtBa_3ops12control_flow11ControlFlowRB1x_ENCNvNtB1B_3run11measure_row0NCINvNvMsg_NtB6_7flattenINtB4s_13FlattenCompatppE13iter_try_fold7flattenB2y_uB34_NCINvNvXsi_B4s_B4F_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenB2y_uB34_NCINvNvB5T_4find5checkB3J_QNCB3R_s_0E0E0E0E0B1D_.exit.loopexit.i.i.i.i.i.i.i.i.i.i ], [ %0, %bb.a ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 5 uses
  %i.f = getelementptr i8, ptr %i.d, i64 8
  %.val7.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !noalias !42904, !nonnull !41, !noundef !41 ; 2 uses
  %i.g = getelementptr i8, ptr %i.d, i64 16
  %.val8.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.g, align 8, !noalias !42904, !noundef !41 ; 2 uses
  %.idx58 = mul nuw nsw i64 %.val8.i.i.i.i.i.i.i.i.i.i, 304
  %i.h = getelementptr inbounds nuw i8, ptr %.val7.i.i.i.i.i.i.i.i.i.i, i64 %.idx58 ; 3 uses
  %i.i = icmp eq i64 %.val8.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.i, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEINtNtNtBa_5slice4iter4IterB1x_EuINtNtNtBa_3ops12control_flow11ControlFlowRB1x_ENCNvNtB1B_3run11measure_row0NCINvNvMsg_NtB6_7flattenINtB4s_13FlattenCompatppE13iter_try_fold7flattenB2y_uB34_NCINvNvXsi_B4s_B4F_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenB2y_uB34_NCINvNvB5T_4find5checkB3J_QNCB3R_s_0E0E0E0E0B1D_.exit.loopexit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.j = icmp eq ptr %i.l, %i.h
  br i1 %i.j, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEINtNtNtBa_5slice4iter4IterB1x_EuINtNtNtBa_3ops12control_flow11ControlFlowRB1x_ENCNvNtB1B_3run11measure_row0NCINvNvMsg_NtB6_7flattenINtB4s_13FlattenCompatppE13iter_try_fold7flattenB2y_uB34_NCINvNvXsi_B4s_B4F_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenB2y_uB34_NCINvNvB5T_4find5checkB3J_QNCB3R_s_0E0E0E0E0B1D_.exit.loopexit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %bb.b
  %i.k = phi ptr [ %i.l, %bb.b ], [ %.val7.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 304 ; 5 uses
  %i.m = load i64, ptr %i.k, align 16, !range !95, !alias.scope !42905, !noalias !42906, !noundef !41 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.m, 4
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.b, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph
  %i.n = tail call i64 @llvm.usub.sat.i64(i64 %i.m, i64 1)
  switch i64 %i.n, label %bb.c [
    i64 0, label %.thread.i.i.i
    i64 1, label %.thread4.i.i.i.a
  ]

.thread.i.i.i:                                    ; preds = %.loopexit.i.i
  %2 = trunc nuw i64 %i.m to i1                   ; 2 uses
  %spec.select.v.i.i.i = select i1 %2, i64 8, i64 72
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit.sink.split.i.i.i

.thread4.i.i.i.a:                                 ; preds = %.loopexit.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %3 = load i64, ptr %i.o, align 8, !range !49, !alias.scope !42907, !noalias !42908, !noundef !41
  %4 = trunc nuw i64 %3 to i1                     ; 2 uses
  %spec.select6.v.i.i.i = select i1 %4, i64 16, i64 40
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit.sink.split.i.i.i

_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit.sink.split.i.i.i: ; preds = %.thread4.i.i.i.a, %.thread.i.i.i
  %spec.select.v.sink.i.i.i = phi i64 [ %spec.select.v.i.i.i, %.thread.i.i.i ], [ %spec.select6.v.i.i.i, %.thread4.i.i.i.a ]
  %.sink16.i.i.i = phi i64 [ 72, %.thread.i.i.i ], [ 40, %.thread4.i.i.i.a ]
  %.sink14.i.i.i = phi i64 [ 8, %.thread.i.i.i ], [ 16, %.thread4.i.i.i.a ]
  %.sink.i.i.i = phi i1 [ %2, %.thread.i.i.i ], [ %4, %.thread4.i.i.i.a ]
  %spec.select.i.i.i.a = getelementptr inbounds nuw i8, ptr %i.k, i64 %spec.select.v.sink.i.i.i
  %.sroa.0.0.i.i.i.a = load double, ptr %spec.select.i.i.i.a, align 8, !alias.scope !42907, !noalias !42908
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sink16.i.i.i
  %i.q = load double, ptr %i.p, align 8, !alias.scope !42909, !noalias !42908, !noundef !41 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sink14.i.i.i
  %i.s = load double, ptr %i.r, align 8, !alias.scope !42909, !noalias !42908
  %.sroa.022.0.i.i.i.i.a = select i1 %.sink.i.i.i, double %i.s, double %i.q ; 2 uses
  %i.t = fneg double %.sroa.022.0.i.i.i.i.a
  %i.u = fcmp uno double %.sroa.022.0.i.i.i.i.a, 0.000000e+00
  %spec.store.select.i.i.i.i.a = select i1 %i.u, double 0.000000e+00, double %i.t
  %i.v = fadd double %i.q, %spec.store.select.i.i.i.i.a ; 2 uses
  %.inv23.i.i.i.i.a = fcmp ord double %i.v, 0.000000e+00
  %spec.store.select1.i.i.i.i.a = select i1 %.inv23.i.i.i.i.a, double %i.v, double 0.000000e+00
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.i.i, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit.sink.split.i.i.i
  %.sroa.7.0.ph.i = phi double [ %spec.store.select1.i.i.i.i.a, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit.sink.split.i.i.i ], [ 0.000000e+00, %.loopexit.i.i ] ; 2 uses
  %.sroa.5.0.ph.i = phi double [ %.sroa.0.0.i.i.i.a, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit.sink.split.i.i.i ], [ 0.000000e+00, %.loopexit.i.i ] ; 2 uses
  %i.w = icmp eq ptr %i.l, %i.h
  br i1 %i.w, label %_RNCINvNvXsi_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentETNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB3w_ENCINvNtBc_6filter11filter_foldRB2u_B3v_NCNvNtB2y_3run11measure_rows_0NCINvNtBc_3map8map_foldB4T_B3v_B3v_NCB54_s0_0NCB54_s1_0E0E0E0B2A_.exit.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = ptrtoint ptr %i.h to i64
  %i.y = ptrtoint ptr %i.l to i64
  %i.z = sub nuw i64 %i.x, %i.y
  %i.aa = udiv exact i64 %i.z, 304
  br label %bb.e

bb.e:                                             ; preds = %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters6filter11filter_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB2C_ENCNvNtB1F_3run11measure_rows_0NCINvNtBV_3map8map_foldB1A_B2B_B2B_NCB3x_s0_0NCB3x_s1_0E0E0INtB7_5FnMutTB2B_B1A_EE8call_mutB1H_.exit.i.i.i.i.i.i.i.i, %bb.d
  %.sroa.05.0.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %i.ao, %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters6filter11filter_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB2C_ENCNvNtB1F_3run11measure_rows_0NCINvNtBV_3map8map_foldB1A_B2B_B2B_NCB3x_s0_0NCB3x_s1_0E0E0INtB7_5FnMutTB2B_B1A_EE8call_mutB1H_.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.6.0.i.i.i.i.i.i.i.i = phi double [ %.sroa.7.0.ph.i, %bb.d ], [ %.pn1.i.i.i.i.i.i.i.i.i.i, %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters6filter11filter_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB2C_ENCNvNtB1F_3run11measure_rows_0NCINvNtBV_3map8map_foldB1A_B2B_B2B_NCB3x_s0_0NCB3x_s1_0E0E0INtB7_5FnMutTB2B_B1A_EE8call_mutB1H_.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.02.0.i.i.i.i.i.i.i.i = phi double [ %.sroa.5.0.ph.i, %bb.d ], [ %.pn3.i.i.i.i.i.i.i.i.i.i, %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters6filter11filter_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB2C_ENCNvNtB1F_3run11measure_rows_0NCINvNtBV_3map8map_foldB1A_B2B_B2B_NCB3x_s0_0NCB3x_s1_0E0E0INtB7_5FnMutTB2B_B1A_EE8call_mutB1H_.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ab = getelementptr inbounds nuw [304 x i8], ptr %i.l, i64 %.sroa.05.0.i.i.i.i.i.i.i.i ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42910)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42911)
  %i.ac = load i64, ptr %i.ab, align 16, !range !95, !alias.scope !42912, !noalias !42913, !noundef !41 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ac, 4
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters6filter11filter_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB2C_ENCNvNtB1F_3run11measure_rows_0NCINvNtBV_3map8map_foldB1A_B2B_B2B_NCB3x_s0_0NCB3x_s1_0E0E0INtB7_5FnMutTB2B_B1A_EE8call_mutB1H_.exit.i.i.i.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42914)
  %i.ad = tail call i64 @llvm.usub.sat.i64(i64 %i.ac, i64 1)
  switch i64 %i.ad, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB1W_EB1V_NCNvNtBZ_3run11measure_rows0_0NCB2V_s1_0E0B11_.exit.i.i.i.i.i.i.i.i.i.i [
    i64 0, label %.thread.i.i.i.i.i.i.i.i.i.i.i.i
    i64 1, label %.thread4.i.i.i.i.i.i.i.i.i.i.i.i.a
  ]

.thread.i.i.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.f
  %5 = trunc nuw i64 %i.ac to i1                  ; 2 uses
  %spec.select.v.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %5, i64 8, i64 72
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i

.thread4.i.i.i.i.i.i.i.i.i.i.i.i.a:               ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %6 = load i64, ptr %i.ae, align 8, !range !49, !alias.scope !42915, !noalias !42913, !noundef !41
  %7 = trunc nuw i64 %6 to i1                     ; 2 uses
  %spec.select6.v.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %7, i64 16, i64 40
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i

_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.thread4.i.i.i.i.i.i.i.i.i.i.i.i.a, %.thread.i.i.i.i.i.i.i.i.i.i.i.i
  %spec.select.v.sink.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %spec.select.v.i.i.i.i.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i.i.i.i.i.i ], [ %spec.select6.v.i.i.i.i.i.i.i.i.i.i.i.i, %.thread4.i.i.i.i.i.i.i.i.i.i.i.i.a ]
  %.sink16.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 72, %.thread.i.i.i.i.i.i.i.i.i.i.i.i ], [ 40, %.thread4.i.i.i.i.i.i.i.i.i.i.i.i.a ]
  %.sink14.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 8, %.thread.i.i.i.i.i.i.i.i.i.i.i.i ], [ 16, %.thread4.i.i.i.i.i.i.i.i.i.i.i.i.a ]
  %.sink.i.i.i.i.i.i.i.i.i.i.i.i = phi i1 [ %5, %.thread.i.i.i.i.i.i.i.i.i.i.i.i ], [ %7, %.thread4.i.i.i.i.i.i.i.i.i.i.i.i.a ]
  %spec.select.i.i.i.i.i.i.i.i.i.i.i.i.a = getelementptr inbounds nuw i8, ptr %i.ab, i64 %spec.select.v.sink.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.a = load double, ptr %spec.select.i.i.i.i.i.i.i.i.i.i.i.i.a, align 8, !alias.scope !42915, !noalias !42913
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.sink16.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ag = load double, ptr %i.af, align 8, !alias.scope !42916, !noalias !42913, !noundef !41 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.sink14.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ai = load double, ptr %i.ah, align 8, !alias.scope !42916, !noalias !42913
  %.sroa.022.0.i.i.i.i.i.i.i.i.i.i.i.i.i.a = select i1 %.sink.i.i.i.i.i.i.i.i.i.i.i.i, double %i.ai, double %i.ag ; 2 uses
  %i.aj = fneg double %.sroa.022.0.i.i.i.i.i.i.i.i.i.i.i.i.i.a
  %i.ak = fcmp uno double %.sroa.022.0.i.i.i.i.i.i.i.i.i.i.i.i.i.a, 0.000000e+00
  %spec.store.select.i.i.i.i.i.i.i.i.i.i.i.i.i.a = select i1 %i.ak, double 0.000000e+00, double %i.aj
  %i.al = fadd double %i.ag, %spec.store.select.i.i.i.i.i.i.i.i.i.i.i.i.i.a ; 2 uses
  %.inv23.i.i.i.i.i.i.i.i.i.i.i.i.i.a = fcmp ord double %i.al, 0.000000e+00
  %spec.store.select1.i.i.i.i.i.i.i.i.i.i.i.i.i.a = select i1 %.inv23.i.i.i.i.i.i.i.i.i.i.i.i.i.a, double %i.al, double 0.000000e+00
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB1W_EB1V_NCNvNtBZ_3run11measure_rows0_0NCB2V_s1_0E0B11_.exit.i.i.i.i.i.i.i.i.i.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB1W_EB1V_NCNvNtBZ_3run11measure_rows0_0NCB2V_s1_0E0B11_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i, %bb.f
  %.sroa.0.13.i.i.i.i.i.i.i.i.i.i.i.i = phi double [ 0.000000e+00, %bb.f ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.a, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i = phi double [ 0.000000e+00, %bb.f ], [ %spec.store.select1.i.i.i.i.i.i.i.i.i.i.i.i.i.a, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.am = tail call noundef double @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout3absNtB2_3Abs3max(double noundef %.sroa.02.0.i.i.i.i.i.i.i.i, double noundef %.sroa.0.13.i.i.i.i.i.i.i.i.i.i.i.i), !noalias !42917
  %i.an = tail call noundef double @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout3absNtB2_3Abs3max(double noundef %.sroa.6.0.i.i.i.i.i.i.i.i, double noundef %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i), !noalias !42917
  br label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters6filter11filter_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB2C_ENCNvNtB1F_3run11measure_rows_0NCINvNtBV_3map8map_foldB1A_B2B_B2B_NCB3x_s0_0NCB3x_s1_0E0E0INtB7_5FnMutTB2B_B1A_EE8call_mutB1H_.exit.i.i.i.i.i.i.i.i

_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters6filter11filter_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB2C_ENCNvNtB1F_3run11measure_rows_0NCINvNtBV_3map8map_foldB1A_B2B_B2B_NCB3x_s0_0NCB3x_s1_0E0E0INtB7_5FnMutTB2B_B1A_EE8call_mutB1H_.exit.i.i.i.i.i.i.i.i: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB1W_EB1V_NCNvNtBZ_3run11measure_rows0_0NCB2V_s1_0E0B11_.exit.i.i.i.i.i.i.i.i.i.i, %bb.e
  %.pn3.i.i.i.i.i.i.i.i.i.i = phi double [ %i.am, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB1W_EB1V_NCNvNtBZ_3run11measure_rows0_0NCB2V_s1_0E0B11_.exit.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.02.0.i.i.i.i.i.i.i.i, %bb.e ] ; 2 uses
  %.pn1.i.i.i.i.i.i.i.i.i.i = phi double [ %i.an, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB1W_EB1V_NCNvNtBZ_3run11measure_rows0_0NCB2V_s1_0E0B11_.exit.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.6.0.i.i.i.i.i.i.i.i, %bb.e ] ; 2 uses
  %i.ao = add nuw i64 %.sroa.05.0.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ap = icmp eq i64 %i.ao, %i.aa
  br i1 %i.ap, label %_RNCINvNvXsi_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentETNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB3w_ENCINvNtBc_6filter11filter_foldRB2u_B3v_NCNvNtB2y_3run11measure_rows_0NCINvNtBc_3map8map_foldB4T_B3v_B3v_NCB54_s0_0NCB54_s1_0E0E0E0B2A_.exit.i.i.i.i.i.i, label %bb.e

_RNCINvNvXsi_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentETNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB3w_ENCINvNtBc_6filter11filter_foldRB2u_B3v_NCNvNtB2y_3run11measure_rows_0NCINvNtBc_3map8map_foldB4T_B3v_B3v_NCB54_s0_0NCB54_s1_0E0E0E0B2A_.exit.i.i.i.i.i.i: ; preds = %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters6filter11filter_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB2C_ENCNvNtB1F_3run11measure_rows_0NCINvNtBV_3map8map_foldB1A_B2B_B2B_NCB3x_s0_0NCB3x_s1_0E0E0INtB7_5FnMutTB2B_B1A_EE8call_mutB1H_.exit.i.i.i.i.i.i.i.i, %bb.c
  %.sroa.8.0.i.i.i.i.i.i = phi double [ %.sroa.7.0.ph.i, %bb.c ], [ %.pn1.i.i.i.i.i.i.i.i.i.i, %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters6filter11filter_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB2C_ENCNvNtB1F_3run11measure_rows_0NCINvNtBV_3map8map_foldB1A_B2B_B2B_NCB3x_s0_0NCB3x_s1_0E0E0INtB7_5FnMutTB2B_B1A_EE8call_mutB1H_.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i = phi double [ %.sroa.5.0.ph.i, %bb.c ], [ %.pn3.i.i.i.i.i.i.i.i.i.i, %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters6filter11filter_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB2C_ENCNvNtB1F_3run11measure_rows_0NCINvNtBV_3map8map_foldB1A_B2B_B2B_NCB3x_s0_0NCB3x_s1_0E0E0INtB7_5FnMutTB2B_B1A_EE8call_mutB1H_.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.aq = icmp eq ptr %i.e, %i.a
  br i1 %i.aq, label %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB8_6filter6FilterINtNtB8_7flatten7FlatMapINtNtNtBc_5slice4iter4IterINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEIB1C_B2y_ENCNvNtB2C_3run11measure_row0ENCB3M_s_0ENCB3M_s0_0ENtNtNtBa_6traits8iterator8Iterator6reduceNCB3M_s1_0EB2E_.exit, label %bb.g

bb.g:                                             ; preds = %_RNCINvNvXsi_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentETNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB3w_ENCINvNtBc_6filter11filter_foldRB2u_B3v_NCNvNtB2y_3run11measure_rows_0NCINvNtBc_3map8map_foldB4T_B3v_B3v_NCB54_s0_0NCB54_s1_0E0E0E0B2A_.exit.i.i.i.i.i.i
  %i.ar = ptrtoint ptr %i.a to i64
  %i.as = ptrtoint ptr %i.e to i64
  %i.at = sub nuw i64 %i.ar, %i.as
  %i.au = udiv exact i64 %i.at, 24
  br label %bb.h

bb.h:                                             ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEINtNtNtBa_5slice4iter4IterB1s_ETNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB2Z_ENCNvNtB1w_3run11measure_row0NCINvNvMsg_NtB6_7flattenINtB4v_13FlattenCompatppE9iter_fold7flattenB2t_B2Y_NCINvNvXsi_B4v_B4I_NtNtNtB8_6traits8iterator8Iterator4fold7flattenB2t_B2Y_NCINvNtB6_6filter11filter_foldRB1s_B2Y_NCB3U_s_0NCIB2_B7d_B2Y_B2Y_NCB3U_s0_0NCB3U_s1_0E0E0E0E0E0B1y_.exit.i.i.i.i.i.i.i.i, %bb.g
  %.sroa.05.0.i.i20.i.i.i.i.i.i = phi i64 [ 0, %bb.g ], [ %i.bo, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEINtNtNtBa_5slice4iter4IterB1s_ETNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB2Z_ENCNvNtB1w_3run11measure_row0NCINvNvMsg_NtB6_7flattenINtB4v_13FlattenCompatppE9iter_fold7flattenB2t_B2Y_NCINvNvXsi_B4v_B4I_NtNtNtB8_6traits8iterator8Iterator4fold7flattenB2t_B2Y_NCINvNtB6_6filter11filter_foldRB1s_B2Y_NCB3U_s_0NCIB2_B7d_B2Y_B2Y_NCB3U_s0_0NCB3U_s1_0E0E0E0E0E0B1y_.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.6.0.i.i21.i.i.i.i.i.i = phi double [ %.sroa.8.0.i.i.i.i.i.i, %bb.g ], [ %.pn14.i.i.i.i.i.i.i.i.i.i.i.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEINtNtNtBa_5slice4iter4IterB1s_ETNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB2Z_ENCNvNtB1w_3run11measure_row0NCINvNvMsg_NtB6_7flattenINtB4v_13FlattenCompatppE9iter_fold7flattenB2t_B2Y_NCINvNvXsi_B4v_B4I_NtNtNtB8_6traits8iterator8Iterator4fold7flattenB2t_B2Y_NCINvNtB6_6filter11filter_foldRB1s_B2Y_NCB3U_s_0NCIB2_B7d_B2Y_B2Y_NCB3U_s0_0NCB3U_s1_0E0E0E0E0E0B1y_.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.02.0.i.i22.i.i.i.i.i.i = phi double [ %.sroa.0.0.i.i.i.i.i.i, %bb.g ], [ %.pn16.i.i.i.i.i.i.i.i.i.i.i.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEINtNtNtBa_5slice4iter4IterB1s_ETNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB2Z_ENCNvNtB1w_3run11measure_row0NCINvNvMsg_NtB6_7flattenINtB4v_13FlattenCompatppE9iter_fold7flattenB2t_B2Y_NCINvNvXsi_B4v_B4I_NtNtNtB8_6traits8iterator8Iterator4fold7flattenB2t_B2Y_NCINvNtB6_6filter11filter_foldRB1s_B2Y_NCB3U_s_0NCIB2_B7d_B2Y_B2Y_NCB3U_s0_0NCB3U_s1_0E0E0E0E0E0B1y_.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.av = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %.sroa.05.0.i.i20.i.i.i.i.i.i ; 2 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 8
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.aw, align 8, !noalias !42913, !nonnull !41, !noundef !41
  %i.ax = getelementptr i8, ptr %i.av, i64 16
  %.val14.i.i.i.i.i.i.i.i = load i64, ptr %i.ax, align 8, !noalias !42913, !noundef !41 ; 2 uses
  %i.ay = icmp eq i64 %.val14.i.i.i.i.i.i.i.i, 0
  br i1 %i.ay, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEINtNtNtBa_5slice4iter4IterB1s_ETNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB2Z_ENCNvNtB1w_3run11measure_row0NCINvNvMsg_NtB6_7flattenINtB4v_13FlattenCompatppE9iter_fold7flattenB2t_B2Y_NCINvNvXsi_B4v_B4I_NtNtNtB8_6traits8iterator8Iterator4fold7flattenB2t_B2Y_NCINvNtB6_6filter11filter_foldRB1s_B2Y_NCB3U_s_0NCIB2_B7d_B2Y_B2Y_NCB3U_s0_0NCB3U_s1_0E0E0E0E0E0B1y_.exit.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.h, %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters6filter11filter_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB2C_ENCNvNtB1F_3run11measure_rows_0NCINvNtBV_3map8map_foldB1A_B2B_B2B_NCB3x_s0_0NCB3x_s1_0E0E0INtB7_5FnMutTB2B_B1A_EE8call_mutB1H_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.05.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bm, %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters6filter11filter_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB2C_ENCNvNtB1F_3run11measure_rows_0NCINvNtBV_3map8map_foldB1A_B2B_B2B_NCB3x_s0_0NCB3x_s1_0E0E0INtB7_5FnMutTB2B_B1A_EE8call_mutB1H_.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.h ] ; 2 uses
  %.sroa.6.0.i.i.i.i.i.i.i.i.i.i.i.i = phi double [ %.pn1.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters6filter11filter_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB2C_ENCNvNtB1F_3run11measure_rows_0NCINvNtBV_3map8map_foldB1A_B2B_B2B_NCB3x_s0_0NCB3x_s1_0E0E0INtB7_5FnMutTB2B_B1A_EE8call_mutB1H_.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.6.0.i.i21.i.i.i.i.i.i, %bb.h ] ; 2 uses
  %.sroa.02.0.i.i.i.i.i.i.i.i.i.i.i.i = phi double [ %.pn3.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters6filter11filter_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB2C_ENCNvNtB1F_3run11measure_rows_0NCINvNtBV_3map8map_foldB1A_B2B_B2B_NCB3x_s0_0NCB3x_s1_0E0E0INtB7_5FnMutTB2B_B1A_EE8call_mutB1H_.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.02.0.i.i22.i.i.i.i.i.i, %bb.h ] ; 2 uses
  %i.az = getelementptr inbounds nuw [304 x i8], ptr %.val.i.i.i.i.i.i.i.i, i64 %.sroa.05.0.i.i.i.i.i.i.i.i.i.i.i.i ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42918)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42919)
  %i.ba = load i64, ptr %i.az, align 16, !range !95, !alias.scope !42920, !noalias !42913, !noundef !41 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ba, 4
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters6filter11filter_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB2C_ENCNvNtB1F_3run11measure_rows_0NCINvNtBV_3map8map_foldB1A_B2B_B2B_NCB3x_s0_0NCB3x_s1_0E0E0INtB7_5FnMutTB2B_B1A_EE8call_mutB1H_.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %.preheader.i.i.i.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42921)
  %i.bb = tail call i64 @llvm.usub.sat.i64(i64 %i.ba, i64 1)
  switch i64 %i.bb, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB1W_EB1V_NCNvNtBZ_3run11measure_rows0_0NCB2V_s1_0E0B11_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i [
    i64 0, label %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
    i64 1, label %.thread4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.a
  ]

.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:          ; preds = %bb.i
  %8 = trunc nuw i64 %i.ba to i1                  ; 2 uses
  %spec.select.v.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %8, i64 8, i64 72
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.thread4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.a:       ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %9 = load i64, ptr %i.bc, align 8, !range !49, !alias.scope !42922, !noalias !42913, !noundef !41
  %10 = trunc nuw i64 %9 to i1                    ; 2 uses
  %spec.select6.v.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %10, i64 16, i64 40
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.thread4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.a, %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %spec.select.v.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %spec.select.v.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %spec.select6.v.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.thread4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.a ]
  %.sink16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 72, %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 40, %.thread4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.a ]
  %.sink14.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 8, %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 16, %.thread4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.a ]
  %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i1 [ %8, %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %10, %.thread4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.a ]
  %spec.select.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.a = getelementptr inbounds nuw i8, ptr %i.az, i64 %spec.select.v.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.a = load double, ptr %spec.select.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.a, align 8, !alias.scope !42922, !noalias !42913
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 %.sink16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.be = load double, ptr %i.bd, align 8, !alias.scope !42923, !noalias !42913, !noundef !41 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.az, i64 %.sink14.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bg = load double, ptr %i.bf, align 8, !alias.scope !42923, !noalias !42913
  %.sroa.022.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.a = select i1 %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, double %i.bg, double %i.be ; 2 uses
  %i.bh = fneg double %.sroa.022.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.a
  %i.bi = fcmp uno double %.sroa.022.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.a, 0.000000e+00
  %spec.store.select.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.a = select i1 %i.bi, double 0.000000e+00, double %i.bh
  %i.bj = fadd double %i.be, %spec.store.select.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.a ; 2 uses
  %.inv23.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.a = fcmp ord double %i.bj, 0.000000e+00
  %spec.store.select1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.a = select i1 %.inv23.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.a, double %i.bj, double 0.000000e+00
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB1W_EB1V_NCNvNtBZ_3run11measure_rows0_0NCB2V_s1_0E0B11_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB1W_EB1V_NCNvNtBZ_3run11measure_rows0_0NCB2V_s1_0E0B11_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.i
  %.sroa.0.13.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi double [ 0.000000e+00, %bb.i ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.a, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi double [ 0.000000e+00, %bb.i ], [ %spec.store.select1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.a, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.bk = tail call noundef double @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout3absNtB2_3Abs3max(double noundef %.sroa.02.0.i.i.i.i.i.i.i.i.i.i.i.i, double noundef %.sroa.0.13.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i), !noalias !42924
  %i.bl = tail call noundef double @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout3absNtB2_3Abs3max(double noundef %.sroa.6.0.i.i.i.i.i.i.i.i.i.i.i.i, double noundef %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i), !noalias !42924
  br label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters6filter11filter_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB2C_ENCNvNtB1F_3run11measure_rows_0NCINvNtBV_3map8map_foldB1A_B2B_B2B_NCB3x_s0_0NCB3x_s1_0E0E0INtB7_5FnMutTB2B_B1A_EE8call_mutB1H_.exit.i.i.i.i.i.i.i.i.i.i.i.i

_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters6filter11filter_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB2C_ENCNvNtB1F_3run11measure_rows_0NCINvNtBV_3map8map_foldB1A_B2B_B2B_NCB3x_s0_0NCB3x_s1_0E0E0INtB7_5FnMutTB2B_B1A_EE8call_mutB1H_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB1W_EB1V_NCNvNtBZ_3run11measure_rows0_0NCB2V_s1_0E0B11_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i
  %.pn3.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi double [ %i.bk, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB1W_EB1V_NCNvNtBZ_3run11measure_rows0_0NCB2V_s1_0E0B11_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.02.0.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.pn1.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi double [ %i.bl, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB1W_EB1V_NCNvNtBZ_3run11measure_rows0_0NCB2V_s1_0E0B11_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.6.0.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.bm = add nuw i64 %.sroa.05.0.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.bn = icmp eq i64 %i.bm, %.val14.i.i.i.i.i.i.i.i
  br i1 %i.bn, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEINtNtNtBa_5slice4iter4IterB1s_ETNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB2Z_ENCNvNtB1w_3run11measure_row0NCINvNvMsg_NtB6_7flattenINtB4v_13FlattenCompatppE9iter_fold7flattenB2t_B2Y_NCINvNvXsi_B4v_B4I_NtNtNtB8_6traits8iterator8Iterator4fold7flattenB2t_B2Y_NCINvNtB6_6filter11filter_foldRB1s_B2Y_NCB3U_s_0NCIB2_B7d_B2Y_B2Y_NCB3U_s0_0NCB3U_s1_0E0E0E0E0E0B1y_.exit.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEINtNtNtBa_5slice4iter4IterB1s_ETNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB2Z_ENCNvNtB1w_3run11measure_row0NCINvNvMsg_NtB6_7flattenINtB4v_13FlattenCompatppE9iter_fold7flattenB2t_B2Y_NCINvNvXsi_B4v_B4I_NtNtNtB8_6traits8iterator8Iterator4fold7flattenB2t_B2Y_NCINvNtB6_6filter11filter_foldRB1s_B2Y_NCB3U_s_0NCIB2_B7d_B2Y_B2Y_NCB3U_s0_0NCB3U_s1_0E0E0E0E0E0B1y_.exit.i.i.i.i.i.i.i.i: ; preds = %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters6filter11filter_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB2C_ENCNvNtB1F_3run11measure_rows_0NCINvNtBV_3map8map_foldB1A_B2B_B2B_NCB3x_s0_0NCB3x_s1_0E0E0INtB7_5FnMutTB2B_B1A_EE8call_mutB1H_.exit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.h
  %.pn16.i.i.i.i.i.i.i.i.i.i.i.i = phi double [ %.sroa.02.0.i.i22.i.i.i.i.i.i, %bb.h ], [ %.pn3.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters6filter11filter_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB2C_ENCNvNtB1F_3run11measure_rows_0NCINvNtBV_3map8map_foldB1A_B2B_B2B_NCB3x_s0_0NCB3x_s1_0E0E0INtB7_5FnMutTB2B_B1A_EE8call_mutB1H_.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.pn14.i.i.i.i.i.i.i.i.i.i.i.i = phi double [ %.sroa.6.0.i.i21.i.i.i.i.i.i, %bb.h ], [ %.pn1.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters6filter11filter_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB2C_ENCNvNtB1F_3run11measure_rows_0NCINvNtBV_3map8map_foldB1A_B2B_B2B_NCB3x_s0_0NCB3x_s1_0E0E0INtB7_5FnMutTB2B_B1A_EE8call_mutB1H_.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.bo = add nuw i64 %.sroa.05.0.i.i20.i.i.i.i.i.i, 1 ; 2 uses
  %i.bp = icmp eq i64 %i.bo, %i.au
  br i1 %i.bp, label %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB8_6filter6FilterINtNtB8_7flatten7FlatMapINtNtNtBc_5slice4iter4IterINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEIB1C_B2y_ENCNvNtB2C_3run11measure_row0ENCB3M_s_0ENCB3M_s0_0ENtNtNtBa_6traits8iterator8Iterator6reduceNCB3M_s1_0EB2E_.exit, label %bb.h

_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB8_6filter6FilterINtNtB8_7flatten7FlatMapINtNtNtBc_5slice4iter4IterINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEIB1C_B2y_ENCNvNtB2C_3run11measure_row0ENCB3M_s_0ENCB3M_s0_0ENtNtNtBa_6traits8iterator8Iterator6reduceNCB3M_s1_0EB2E_.exit: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEINtNtNtBa_5slice4iter4IterB1x_EuINtNtNtBa_3ops12control_flow11ControlFlowRB1x_ENCNvNtB1B_3run11measure_row0NCINvNvMsg_NtB6_7flattenINtB4s_13FlattenCompatppE13iter_try_fold7flattenB2y_uB34_NCINvNvXsi_B4s_B4F_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenB2y_uB34_NCINvNvB5T_4find5checkB3J_QNCB3R_s_0E0E0E0E0B1D_.exit.loopexit.i.i.i.i.i.i.i.i.i.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEINtNtNtBa_5slice4iter4IterB1s_ETNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB2Z_ENCNvNtB1w_3run11measure_row0NCINvNvMsg_NtB6_7flattenINtB4v_13FlattenCompatppE9iter_fold7flattenB2t_B2Y_NCINvNvXsi_B4v_B4I_NtNtNtB8_6traits8iterator8Iterator4fold7flattenB2t_B2Y_NCINvNtB6_6filter11filter_foldRB1s_B2Y_NCB3U_s_0NCIB2_B7d_B2Y_B2Y_NCB3U_s0_0NCB3U_s1_0E0E0E0E0E0B1y_.exit.i.i.i.i.i.i.i.i, %bb.a, %_RNCINvNvXsi_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentETNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB3w_ENCINvNtBc_6filter11filter_foldRB2u_B3v_NCNvNtB2y_3run11measure_rows_0NCINvNtBc_3map8map_foldB4T_B3v_B3v_NCB54_s0_0NCB54_s1_0E0E0E0B2A_.exit.i.i.i.i.i.i
  %.sroa.3.0 = phi double [ 0.000000e+00, %bb.a ], [ %.sroa.8.0.i.i.i.i.i.i, %_RNCINvNvXsi_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentETNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB3w_ENCINvNtBc_6filter11filter_foldRB2u_B3v_NCNvNtB2y_3run11measure_rows_0NCINvNtBc_3map8map_foldB4T_B3v_B3v_NCB54_s0_0NCB54_s1_0E0E0E0B2A_.exit.i.i.i.i.i.i ], [ %.pn14.i.i.i.i.i.i.i.i.i.i.i.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEINtNtNtBa_5slice4iter4IterB1s_ETNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB2Z_ENCNvNtB1w_3run11measure_row0NCINvNvMsg_NtB6_7flattenINtB4v_13FlattenCompatppE9iter_fold7flattenB2t_B2Y_NCINvNvXsi_B4v_B4I_NtNtNtB8_6traits8iterator8Iterator4fold7flattenB2t_B2Y_NCINvNtB6_6filter11filter_foldRB1s_B2Y_NCB3U_s_0NCIB2_B7d_B2Y_B2Y_NCB3U_s0_0NCB3U_s1_0E0E0E0E0E0B1y_.exit.i.i.i.i.i.i.i.i ], [ 0.000000e+00, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEINtNtNtBa_5slice4iter4IterB1x_EuINtNtNtBa_3ops12control_flow11ControlFlowRB1x_ENCNvNtB1B_3run11measure_row0NCINvNvMsg_NtB6_7flattenINtB4s_13FlattenCompatppE13iter_try_fold7flattenB2y_uB34_NCINvNvXsi_B4s_B4F_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenB2y_uB34_NCINvNvB5T_4find5checkB3J_QNCB3R_s_0E0E0E0E0B1D_.exit.loopexit.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.0.0 = phi double [ 0.000000e+00, %bb.a ], [ %.sroa.0.0.i.i.i.i.i.i, %_RNCINvNvXsi_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentETNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB3w_ENCINvNtBc_6filter11filter_foldRB2u_B3v_NCNvNtB2y_3run11measure_rows_0NCINvNtBc_3map8map_foldB4T_B3v_B3v_NCB54_s0_0NCB54_s1_0E0E0E0B2A_.exit.i.i.i.i.i.i ], [ %.pn16.i.i.i.i.i.i.i.i.i.i.i.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEINtNtNtBa_5slice4iter4IterB1s_ETNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB2Z_ENCNvNtB1w_3run11measure_row0NCINvNvMsg_NtB6_7flattenINtB4v_13FlattenCompatppE9iter_fold7flattenB2t_B2Y_NCINvNvXsi_B4v_B4I_NtNtNtB8_6traits8iterator8Iterator4fold7flattenB2t_B2Y_NCINvNtB6_6filter11filter_foldRB1s_B2Y_NCB3U_s_0NCIB2_B7d_B2Y_B2Y_NCB3U_s0_0NCB3U_s1_0E0E0E0E0E0B1y_.exit.i.i.i.i.i.i.i.i ], [ 0.000000e+00, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEINtNtNtBa_5slice4iter4IterB1x_EuINtNtNtBa_3ops12control_flow11ControlFlowRB1x_ENCNvNtB1B_3run11measure_row0NCINvNvMsg_NtB6_7flattenINtB4s_13FlattenCompatppE13iter_try_fold7flattenB2y_uB34_NCINvNvXsi_B4s_B4F_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenB2y_uB34_NCINvNvB5T_4find5checkB3J_QNCB3R_s_0E0E0E0E0B1D_.exit.loopexit.i.i.i.i.i.i.i.i.i.i ]
  %i.bq = insertvalue { double, double } poison, double %.sroa.0.0, 0
  %i.br = insertvalue { double, double } %i.bq, double %.sroa.3.0, 1
  ret { double, double } %i.br
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtCs7tN9tvpkfrg_12typst_layout4math3run16layout_multiline(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(80) %2, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.45.i.i.i.i = alloca [40 x i8], align 8   ; 6 uses
  %i.c = alloca [64 x i8], align 8                ; 7 uses
  %i.d = alloca [64 x i8], align 8                ; 7 uses
  %i.e = alloca [64 x i8], align 8                ; 7 uses
  %i.f = alloca [48 x i8], align 8                ; 8 uses
  %i.g = alloca [56 x i8], align 8                ; 13 uses
  %i.h = alloca [16 x i8], align 16               ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 9 uses
  %i.j = alloca [32 x i8], align 8                ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 10 uses
  %i.l = alloca [1 x i8], align 1                 ; 5 uses
  %i.m = alloca [16 x i8], align 16               ; 4 uses
  %i.n = alloca [16 x i8], align 16               ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.080 = alloca [24 x i8], align 8          ; 4 uses
  %i.q = alloca [32 x i8], align 8                ; 8 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
  %i.t = alloca [24 x i8], align 8                ; 12 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load i64, ptr %i.u, align 8, !noundef !41 ; 4 uses
  %i.w = icmp ult i64 %i.v, 384307168202282326
  tail call void @llvm.assume(i1 %i.w)
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.not = icmp eq i64 %i.v, 0
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !41 ; 3 uses
  br i1 %.not, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtNtNtCsdaEETE4DqmE_13typst_library4math2ir9multiline10AlignedRowE6map_orjNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math3run16layout_multiline0EB25_.exit.thread, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtNtNtCsdaEETE4DqmE_13typst_library4math2ir9multiline10AlignedRowE6map_orjNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math3run16layout_multiline0EB25_.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtNtNtCsdaEETE4DqmE_13typst_library4math2ir9multiline10AlignedRowE6map_orjNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math3run16layout_multiline0EB25_.exit: ; preds = %bb.a
  %i.z = getelementptr i8, ptr %i.y, i64 16
  %.val.i = load i64, ptr %i.z, align 8, !alias.scope !43017, !noundef !41 ; 8 uses
  %i.aa = icmp ult i64 %.val.i, 64051194700380388
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = icmp eq i64 %.val.i, 0
  br i1 %i.ab, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtNtNtCsdaEETE4DqmE_13typst_library4math2ir9multiline10AlignedRowE6map_orjNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math3run16layout_multiline0EB25_.exit.thread, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtNtNtCsdaEETE4DqmE_13typst_library4math2ir9multiline10AlignedRowE6map_orjNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math3run16layout_multiline0EB25_.exit.thread: ; preds = %bb.a, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtNtNtCsdaEETE4DqmE_13typst_library4math2ir9multiline10AlignedRowE6map_orjNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math3run16layout_multiline0EB25_.exit
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, i8 0, i64 16, i1 false)
  store i64 0, ptr %0, align 8
  %.sroa.4.0..sroa_idx70 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx70, align 8
  %.sroa.5.0..sroa_idx71 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx71, align 8
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEECs7tN9tvpkfrg_12typst_layout.exit52

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtNtNtCsdaEETE4DqmE_13typst_library4math2ir9multiline10AlignedRowE6map_orjNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math3run16layout_multiline0EB25_.exit
  %i.ac = shl nuw nsw i64 %.val.i, 3              ; 6 uses
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !noalias !43018
  %i.ad = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.ac, i64 noundef range(i64 1, 17) 8) #56, !noalias !43018 ; 9 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.b, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i

bb.b:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.ac) #57, !noalias !43019
  unreachable

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i
  %.not113 = icmp eq i64 %.val.i, 1
  br i1 %.not113, label %_RINvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_elemNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs7tN9tvpkfrg_12typst_layout.exit, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i
  %i.af = add nsw i64 %i.ac, -8                   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ad, i8 0, i64 %i.af, i1 false), !noalias !43020
  %scevgep.i = getelementptr i8, ptr %i.ad, i64 %i.af
  br label %_RINvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_elemNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs7tN9tvpkfrg_12typst_layout.exit

_RINvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_elemNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %.lr.ph.i.preheader.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i
  %.sroa.0.0.lcssa29.i.i = phi ptr [ %scevgep.i, %.lr.ph.i.preheader.i ], [ %i.ad, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i ]
  store double 0.000000e+00, ptr %.sroa.0.0.lcssa29.i.i, align 8, !noalias !43020
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.ag = mul nuw nsw i64 %i.v, 24                ; 3 uses
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !noalias !43021
  %i.ah = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.ag, i64 noundef range(i64 1, -9223372036854775807) 8) #56, !noalias !43021 ; 3 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.c, label %.lr.ph

.body:                                            ; preds = %.thread, %bb.af, %bb.ag, %bb.bi, %bb.i, %bb.h, %.body.thread
  %.pn37111 = phi { ptr, i32 } [ %i.aj, %.body.thread ], [ %.pn.pn.i, %bb.af ], [ %.pn95, %.thread ], [ %i.bf, %bb.h ], [ %i.he, %bb.bi ], [ %.pn.pn.i, %bb.ag ], [ %i.bf, %bb.i ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ad, i64 noundef %i.ac, i64 noundef range(i64 1, -9223372036854775807) 8) #56, !noalias !43022
  resume { ptr, i32 } %.pn37111

.body.thread:                                     ; preds = %bb.c
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.c:                                             ; preds = %_RINvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_elemNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs7tN9tvpkfrg_12typst_layout.exit
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.ag) #57
          to label %bb.v unwind label %.body.thread

.lr.ph:                                           ; preds = %_RINvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_elemNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs7tN9tvpkfrg_12typst_layout.exit
  store i64 %i.v, ptr %i.t, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 4 uses
  store ptr %i.ah, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  store i64 0, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ag
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.p
  %i.an = phi ptr [ %i.ah, %.lr.ph ], [ %i.bt, %bb.p ]
  %.val1.i47 = phi i64 [ 0, %.lr.ph ], [ %i.bv, %bb.p ] ; 4 uses
  %.sroa.01.0137 = phi ptr [ %i.y, %.lr.ph ], [ %i.ao, %bb.p ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.01.0137, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  invoke fastcc void @_RNvNtNtCs7tN9tvpkfrg_12typst_layout4math3run18layout_aligned_row(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.s, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.01.0137, ptr noalias nofree noundef align 8 dereferenceable(80) %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %3)
          to label %bb.f unwind label %.thread96.loopexit

._crit_edge:                                      ; preds = %bb.p
  %i.ap = invoke noundef align 8 ptr @_RNvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB5_10StyleChain4find(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(216) @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library4math8equation1__NtB9_12EquationElemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE, i8 noundef 6)
          to label %.noexc unwind label %.thread96.loopexit.split-lp ; 4 uses

.noexc:                                           ; preds = %._crit_edge
  %.not.i.i42 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i42, label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_clonedNtNtNtBa_4math8equation12EquationElemKh6_ECs7tN9tvpkfrg_12typst_layout.exit.thread, label %bb.e

bb.e:                                             ; preds = %.noexc
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43023)
  %i.aq = load ptr, ptr %i.ap, align 8, !alias.scope !43023, !noalias !43024, !nonnull !41, !noundef !41 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !43023, !noalias !43024, !nonnull !41, !align !46, !noundef !41
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  %i.au = load ptr, ptr %i.at, align 8, !invariant.load !41, !noalias !43025, !nonnull !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !43025
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !invariant.load !41, !noalias !43025, !nonnull !41
  invoke void %i.aw(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.n, ptr noundef nonnull %i.aq) #59
          to label %.noexc44 unwind label %.thread96.loopexit.split-lp, !inline_history !34

.noexc44:                                         ; preds = %bb.e
  %i.ax = load i128, ptr %i.n, align 16, !noalias !43025, !noundef !41
  %i.ay = icmp eq i128 %i.ax, 149776027455858313211364231028671503831
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !43025
  br i1 %i.ay, label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_clonedNtNtNtBa_4math8equation12EquationElemKh6_ECs7tN9tvpkfrg_12typst_layout.exit, label %.invoke, !prof !43

.thread96.loopexit:                               ; preds = %bb.d
  %lpad.loopexit115 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.thread96.loopexit.split-lp:                      ; preds = %.invoke, %bb.ab, %bb.z, %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_clonedNtNtNtBa_4math8equation12EquationElemKh6_ECs7tN9tvpkfrg_12typst_layout.exit.thread, %bb.e, %._crit_edge, %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_clonedNtNtNtBa_6layout5align9AlignElemKh0_ECs7tN9tvpkfrg_12typst_layout.exit, %bb.ac, %bb.y
  %lpad.loopexit.split-lp116 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.f:                                             ; preds = %bb.d
  %i.az = load i64, ptr %i.s, align 8, !range !70, !noundef !41 ; 2 uses
  %i.ba = icmp eq i64 %i.az, -1
  %i.bb = load ptr, ptr %.sroa.424.0..sroa_idx, align 8, !nonnull !41, !noundef !41 ; 4 uses
  %i.bc = load i64, ptr %.sroa.525.0..sroa_idx, align 8 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br i1 %i.ba, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bb, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bc, ptr %i.be, align 8
  store i64 -1, ptr %0, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43026)
  %.val.i46 = load ptr, ptr %i.ak, align 8, !alias.scope !43026, !nonnull !41, !noundef !41 ; 3 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs1xwejQucwHj_5alloc3vec3VecIBD_NtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEEB1j_(ptr noalias nofree noundef nonnull readonly align 8 %.val.i46, i64 noundef %.val1.i47)
          to label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecIBw_IBw_NtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBT_.exit.i unwind label %bb.h, !noalias !43026
end_hunk_1
begin_hunk_2_@_RNvNtNtCs7tN9tvpkfrg_12typst_layout4math4line11layout_line:bb.a

bb.j:                                             ; preds = %bb.h
  %.sroa.6106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %.sroa.447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.sroa.447.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(280) %.sroa.6106.0..sroa_idx, i64 280, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  store i64 %i.ag, ptr %i.y, align 16
  %.sroa.245.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  store ptr %i.aj, ptr %.sroa.245.0..sroa_idx, align 8
  %.sroa.346.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store i64 %i.al, ptr %.sroa.346.0..sroa_idx, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.am = load i64, ptr %0, align 16, !range !95, !noundef !41
  %i.an = icmp samesign ult i64 %i.am, 2
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.sink = select i1 %i.an, ptr %i.ao, ptr %2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %.sink, i64 24, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val171 = load ptr, ptr %i.ap, align 8         ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val172 = load i64, ptr %i.aq, align 8         ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !43276)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !43277
  %i.ar = icmp samesign ult i64 %i.ag, 2
  br i1 %i.ar, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %i.y, i64 224
  %i.at = load ptr, ptr %i.as, align 16, !alias.scope !43276, !noalias !43278, !nonnull !41, !noundef !41 ; 2 uses
  %i.au = atomicrmw add ptr %i.at, i64 1 monotonic, align 8, !noalias !43277
  %i.av = icmp slt i64 %i.au, 0
  br i1 %i.av, label %bb.m, label %bb.n

bb.l:                                             ; preds = %bb.j
  %.not.i = icmp eq i64 %.val172, 0
  br i1 %.not.i, label %.invoke, label %bb.o, !prof !44

bb.m:                                             ; preds = %bb.k
  call void @llvm.trap()
  unreachable

bb.n:                                             ; preds = %._crit_edge.i, %bb.k
  %i.aw = phi ptr [ %i.at, %bb.k ], [ %storemerge.pre.i, %._crit_edge.i ] ; 5 uses
  store ptr %i.aw, ptr %i.f, align 8, !noalias !43277
  %i.ax = call i64 @llvm.usub.sat.i64(i64 %i.ag, i64 1)
  switch i64 %i.ax, label %bb.q [
    i64 0, label %bb.s
    i64 1, label %bb.r
  ]

.invoke:                                          ; preds = %bb.ao, %bb.l
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @295) #53
          to label %.cont unwind label %.thread305

.cont:                                            ; preds = %.invoke
  unreachable

bb.o:                                             ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val171) ]
  %i.ay = getelementptr [8 x i8], ptr %.val171, i64 %.val172
  %i.az = getelementptr i8, ptr %i.ay, i64 -8     ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !noalias !43277, !nonnull !41, !noundef !41
  %i.bb = atomicrmw add ptr %i.ba, i64 1 monotonic, align 8, !noalias !43277
  %i.bc = icmp slt i64 %i.bb, 0
  br i1 %i.bc, label %bb.p, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.o
  %storemerge.pre.i = load ptr, ptr %i.az, align 8, !noalias !43277
  br label %bb.n

bb.p:                                             ; preds = %bb.o
  call void @llvm.trap()
  unreachable

bb.q:                                             ; preds = %bb.n
  %i.bd = invoke fastcc { double, double } @_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_clonedNtNtBa_4text8TextElemKh5_ECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.s)
          to label %bb.v unwind label %bb.t, !noalias !43276 ; 2 uses

bb.r:                                             ; preds = %bb.n
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.n
  %.sink.i.sroa.phi = phi ptr [ %.sink.i.sroa.gep, %bb.r ], [ %.sink.i.sroa.gep241, %bb.n ]
  %.sroa.4.0.i = load double, ptr %.sink.i.sroa.phi, align 8, !alias.scope !43276, !noalias !43278, !noundef !41
  br label %bb.x

bb.t:                                             ; preds = %bb.v, %bb.q
  %i.be = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bf = atomicrmw sub ptr %i.aw, i64 1 release, align 8, !noalias !43279
  %i.bg = icmp eq i64 %i.bf, 1
  br i1 %i.bg, label %bb.u, label %.thread298

bb.u:                                             ; preds = %bb.t
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library4text4font17FontInstanceInnerE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) #58
          to label %.thread298 unwind label %bb.w, !noalias !43277

bb.v:                                             ; preds = %bb.q
  %i.bh = extractvalue { double, double } %i.bd, 0
  %i.bi = extractvalue { double, double } %i.bd, 1
  %i.bj = invoke noundef double @_RNvXs8_NtCsdaEETE4DqmE_13typst_library4textNtB5_8TextSizeNtNtNtB7_11foundations6styles7Resolve7resolve(double noundef %i.bh, double noundef %i.bi, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.s)
          to label %bb.x unwind label %bb.t, !noalias !43276

bb.w:                                             ; preds = %bb.u
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55, !noalias !43277
  unreachable

bb.x:                                             ; preds = %bb.v, %bb.s
  %.sroa.0.0.i = phi double [ %.sroa.4.0.i, %bb.s ], [ %i.bj, %bb.v ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !43277
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store ptr %i.aw, ptr %i.t, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aw, i64 184 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.aw, i64 192
  %i.bn = load atomic i32, ptr %i.bm acquire, align 4, !noalias !43280
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit, label %bb.y, !prof !43

bb.y:                                             ; preds = %bb.x
  invoke fastcc void @_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE10initializeNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout(ptr noundef nonnull align 8 %i.bl, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.t)
          to label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit unwind label %bb.z

bb.z:                                             ; preds = %bb.ac, %bb.ab, %bb.y
  %i.bp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !43281)
  call void @llvm.experimental.noalias.scope.decl(metadata !43282)
  call void @llvm.experimental.noalias.scope.decl(metadata !43283)
  %i.bq = load ptr, ptr %i.t, align 8, !alias.scope !43284, !nonnull !41, !noundef !41
  %i.br = atomicrmw sub ptr %i.bq, i64 1 release, align 8, !noalias !43284
  %i.bs = icmp eq i64 %i.br, 1
  br i1 %i.bs, label %bb.aa, label %.thread298

bb.aa:                                            ; preds = %bb.z
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library4text4font17FontInstanceInnerE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.t) #58
          to label %.thread298 unwind label %bb.ai

_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.x, %bb.y
  %i.bt = load ptr, ptr %i.bl, align 8, !nonnull !41, !noundef !41
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 304
  %i.bv = load double, ptr %i.bu, align 8, !noundef !41
  %i.bw = fmul double %.sroa.0.0.i, %i.bv         ; 2 uses
  %i.bx = call double @llvm.fabs.f64(double %i.bw)
  %i.by = fcmp one double %i.bx, +inf
  %spec.store.select19 = select i1 %i.by, double %i.bw, double 0.000000e+00 ; 2 uses
  %i.bz = load ptr, ptr %i.t, align 8, !nonnull !41, !noundef !41 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 184 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 192
  %i.cc = load atomic i32, ptr %i.cb acquire, align 4, !noalias !43285
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit176, label %bb.ab, !prof !43

bb.ab:                                            ; preds = %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit
  invoke fastcc void @_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE10initializeNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout(ptr noundef nonnull align 8 %i.ca, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.t)
          to label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit176 unwind label %bb.z

_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit176: ; preds = %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit, %bb.ab
  %i.ce = load ptr, ptr %i.ca, align 8, !nonnull !41, !noundef !41
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 296
  %i.cg = load double, ptr %i.cf, align 8, !noundef !41
  %i.ch = fmul double %.sroa.0.0.i, %i.cg         ; 2 uses
  %i.ci = call double @llvm.fabs.f64(double %i.ch)
  %i.cj = fcmp one double %i.ci, +inf
  %spec.store.select20 = select i1 %i.cj, double %i.ch, double 0.000000e+00 ; 3 uses
  %i.ck = load ptr, ptr %i.t, align 8, !nonnull !41, !noundef !41 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 184 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 192
  %i.cn = load atomic i32, ptr %i.cm acquire, align 4, !noalias !43286
  %i.co = icmp eq i32 %i.cn, 0
  br i1 %i.co, label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit178, label %bb.ac, !prof !43

bb.ac:                                            ; preds = %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit176
  invoke fastcc void @_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE10initializeNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout(ptr noundef nonnull align 8 %i.cl, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.t)
          to label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit178 unwind label %bb.z

_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit178: ; preds = %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit176, %bb.ac
  %i.cp = load ptr, ptr %i.cl, align 8, !nonnull !41, !noundef !41
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 288
  %i.cr = load double, ptr %i.cq, align 8, !noundef !41
  %i.cs = fmul double %.sroa.0.0.i, %i.cr         ; 2 uses
  %i.ct = call double @llvm.fabs.f64(double %i.cs)
  %i.cu = fcmp one double %i.ct, +inf
  %spec.store.select21 = select i1 %i.cu, double %i.cs, double 0.000000e+00
  %i.cv = fadd double %spec.store.select19, %spec.store.select20
  %i.cw = fadd double %i.cv, %spec.store.select21 ; 3 uses
  %i.cx = fmul nnan double %spec.store.select20, 5.000000e-01
  %i.cy = fadd double %spec.store.select19, %i.cx
  %i.cz = load i64, ptr %i.y, align 16, !range !95, !alias.scope !43287, !noundef !41 ; 2 uses
  %i.da = call i64 @llvm.usub.sat.i64(i64 %i.cz, i64 1)
  switch i64 %i.da, label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6ascent.exit [
    i64 0, label %bb.ad
    i64 1, label %bb.ae
  ]

bb.ad:                                            ; preds = %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit178
  %4 = trunc nuw i64 %i.cz to i1
  %spec.select.v.i = select i1 %4, i64 8, i64 72
  br label %.sink.split.i

bb.ae:                                            ; preds = %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit178
  %i.db = load i64, ptr %.sroa.245.0..sroa_idx, align 8, !range !49, !alias.scope !43287, !noundef !41
  %i.dc = trunc nuw i64 %i.db to i1
  %spec.select6.v.i = select i1 %i.dc, i64 16, i64 40
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.ae, %bb.ad
  %spec.select6.v.sink.i = phi i64 [ %spec.select6.v.i, %bb.ae ], [ %spec.select.v.i, %bb.ad ]
  %spec.select6.i = getelementptr inbounds nuw i8, ptr %i.y, i64 %spec.select6.v.sink.i
  %.sroa.0.2.i = load double, ptr %spec.select6.i, align 8, !alias.scope !43287
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6ascent.exit

_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6ascent.exit: ; preds = %.sink.split.i, %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit178
  %.sroa.0.1.i = phi double [ 0.000000e+00, %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit178 ], [ %.sroa.0.2.i, %.sink.split.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !43288)
  call void @llvm.experimental.noalias.scope.decl(metadata !43289)
  call void @llvm.experimental.noalias.scope.decl(metadata !43290)
  %i.dd = load ptr, ptr %i.t, align 8, !alias.scope !43291, !nonnull !41, !noundef !41
  %i.de = atomicrmw sub ptr %i.dd, i64 1 release, align 8, !noalias !43291
  %i.df = icmp eq i64 %i.de, 1
  br i1 %i.df, label %bb.af, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceECs7tN9tvpkfrg_12typst_layout.exit180

bb.af:                                            ; preds = %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6ascent.exit
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library4text4font17FontInstanceInnerE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.t) #58
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceECs7tN9tvpkfrg_12typst_layout.exit180 unwind label %.thread305

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceECs7tN9tvpkfrg_12typst_layout.exit180: ; preds = %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6ascent.exit, %bb.af
  %i.dg = fadd double %i.cw, %.sroa.0.1.i         ; 2 uses
  %.inv146 = fcmp ord double %i.dg, 0.000000e+00
  %spec.store.select7 = select i1 %.inv146, double %i.dg, double 0.000000e+00
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.ag

bb.ag:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceECs7tN9tvpkfrg_12typst_layout.exit213, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceECs7tN9tvpkfrg_12typst_layout.exit180
  %.sroa.063.0 = phi double [ %.sroa.0.1.i208, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceECs7tN9tvpkfrg_12typst_layout.exit213 ], [ %spec.store.select7, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceECs7tN9tvpkfrg_12typst_layout.exit180 ]
  %.sroa.362.0 = phi double [ 0.000000e+00, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceECs7tN9tvpkfrg_12typst_layout.exit213 ], [ %i.cw, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceECs7tN9tvpkfrg_12typst_layout.exit180 ]
  %.sroa.360.0 = phi double [ %spec.store.select15315, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceECs7tN9tvpkfrg_12typst_layout.exit213 ], [ %i.cy, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceECs7tN9tvpkfrg_12typst_layout.exit180 ]
  %.sroa.056.0 = phi double [ %i.ge, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceECs7tN9tvpkfrg_12typst_layout.exit213 ], [ %i.cw, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceECs7tN9tvpkfrg_12typst_layout.exit180 ] ; 3 uses
  %.sroa.048.0 = phi double [ %spec.store.select23, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceECs7tN9tvpkfrg_12typst_layout.exit213 ], [ %spec.store.select20, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceECs7tN9tvpkfrg_12typst_layout.exit180 ] ; 2 uses
  %.sroa.0100.0 = phi double [ %spec.store.select16, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceECs7tN9tvpkfrg_12typst_layout.exit213 ], [ 0.000000e+00, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceECs7tN9tvpkfrg_12typst_layout.exit180 ] ; 3 uses
  %i.dh = load i64, ptr %i.y, align 16, !range !95, !alias.scope !43292, !noundef !41
  %i.di = call i64 @llvm.usub.sat.i64(i64 %i.dh, i64 1)
  switch i64 %i.di, label %default.unreachable397 [
    i64 0, label %bb.bj
    i64 1, label %bb.bk
    i64 2, label %bb.ah
    i64 3, label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment12is_text_like.exit
  ]

default.unreachable397:                           ; preds = %bb.cc, %bb.ag
  unreachable

bb.ah:                                            ; preds = %bb.ag
  %i.dj = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.dk = load double, ptr %i.dj, align 8, !alias.scope !43292, !noundef !41
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment12is_text_like.exit

bb.ai:                                            ; preds = %bb.dh, %bb.dg, %bb.bd, %bb.aa, %.thread298, %.thread378, %bb.df
  %i.dl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55
  unreachable

bb.aj:                                            ; preds = %bb.al, %bb.i
  %.sroa.4.0 = phi i64 [ %i.dt, %bb.al ], [ %i.al, %bb.i ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %i.dr, %bb.al ], [ %i.aj, %bb.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  %i.dm = load ptr, ptr %i.z, align 8, !alias.scope !43293, !noundef !41
  %i.dn = icmp eq ptr %i.dm, null
  br i1 %i.dn, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit.sink.split

bb.ak:                                            ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.do = load i64, ptr %i.x, align 16, !range !83, !noundef !41 ; 4 uses
  %i.dp = icmp eq i64 %i.do, -1
  %i.dq = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8            ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.dt = load i64, ptr %i.ds, align 16           ; 2 uses
  br i1 %i.dp, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.aj

bb.am:                                            ; preds = %bb.ak
  %.sroa.672.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.sroa.433.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(280) %.sroa.672.0..sroa_idx, i64 280, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  store i64 %i.do, ptr %i.y, align 16
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  store ptr %i.dr, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store i64 %i.dt, ptr %.sroa.3.0..sroa_idx, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.du = load i64, ptr %0, align 16, !range !95, !noundef !41
  %i.dv = icmp samesign ult i64 %i.du, 2
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.sink398 = select i1 %i.dv, ptr %i.dw, ptr %2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %.sink398, i64 24, i1 false)
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val169 = load ptr, ptr %i.dx, align 8         ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val170 = load i64, ptr %i.dy, align 8         ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !43294)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !43295
  %i.dz = icmp samesign ult i64 %i.do, 2
  br i1 %i.dz, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.ea = getelementptr inbounds nuw i8, ptr %i.y, i64 224
  %i.eb = load ptr, ptr %i.ea, align 16, !alias.scope !43294, !noalias !43296, !nonnull !41, !noundef !41 ; 2 uses
  %i.ec = atomicrmw add ptr %i.eb, i64 1 monotonic, align 8, !noalias !43295
  %i.ed = icmp slt i64 %i.ec, 0
  br i1 %i.ed, label %bb.ap, label %bb.aq

bb.ao:                                            ; preds = %bb.am
  %.not.i182 = icmp eq i64 %.val170, 0
  br i1 %.not.i182, label %.invoke, label %bb.ar, !prof !44

bb.ap:                                            ; preds = %bb.an
  call void @llvm.trap()
  unreachable

bb.aq:                                            ; preds = %._crit_edge.i183, %bb.an
  %i.ee = phi ptr [ %i.eb, %bb.an ], [ %storemerge.pre.i184, %._crit_edge.i183 ] ; 5 uses
  store ptr %i.ee, ptr %i.e, align 8, !noalias !43295
  %i.ef = call i64 @llvm.usub.sat.i64(i64 %i.do, i64 1)
  switch i64 %i.ef, label %bb.at [
    i64 0, label %bb.av
    i64 1, label %bb.au
  ]

bb.ar:                                            ; preds = %bb.ao
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val169) ]
  %i.eg = getelementptr [8 x i8], ptr %.val169, i64 %.val170
  %i.eh = getelementptr i8, ptr %i.eg, i64 -8     ; 2 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !noalias !43295, !nonnull !41, !noundef !41
  %i.ej = atomicrmw add ptr %i.ei, i64 1 monotonic, align 8, !noalias !43295
  %i.ek = icmp slt i64 %i.ej, 0
  br i1 %i.ek, label %bb.as, label %._crit_edge.i183

._crit_edge.i183:                                 ; preds = %bb.ar
  %storemerge.pre.i184 = load ptr, ptr %i.eh, align 8, !noalias !43295
  br label %bb.aq

bb.as:                                            ; preds = %bb.ar
  call void @llvm.trap()
  unreachable

bb.at:                                            ; preds = %bb.aq
  %i.el = invoke fastcc { double, double } @_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_clonedNtNtBa_4text8TextElemKh5_ECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.v)
          to label %bb.ay unwind label %bb.aw, !noalias !43294 ; 2 uses

bb.au:                                            ; preds = %bb.aq
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.aq
  %.sink.i185.sroa.phi = phi ptr [ %.sink.i.sroa.gep, %bb.au ], [ %.sink.i.sroa.gep241, %bb.aq ]
  %.sroa.4.0.i186 = load double, ptr %.sink.i185.sroa.phi, align 8, !alias.scope !43294, !noalias !43296, !noundef !41
  br label %bb.ba

bb.aw:                                            ; preds = %bb.ay, %bb.at
  %i.em = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.en = atomicrmw sub ptr %i.ee, i64 1 release, align 8, !noalias !43297
  %i.eo = icmp eq i64 %i.en, 1
  br i1 %i.eo, label %bb.ax, label %.thread298

bb.ax:                                            ; preds = %bb.aw
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library4text4font17FontInstanceInnerE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #58
          to label %.thread298 unwind label %bb.az, !noalias !43295

bb.ay:                                            ; preds = %bb.at
  %i.ep = extractvalue { double, double } %i.el, 0
  %i.eq = extractvalue { double, double } %i.el, 1
  %i.er = invoke noundef double @_RNvXs8_NtCsdaEETE4DqmE_13typst_library4textNtB5_8TextSizeNtNtNtB7_11foundations6styles7Resolve7resolve(double noundef %i.ep, double noundef %i.eq, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.v)
          to label %bb.ba unwind label %bb.aw, !noalias !43294

bb.az:                                            ; preds = %bb.ax
  %i.es = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55, !noalias !43295
  unreachable

bb.ba:                                            ; preds = %bb.ay, %bb.av
  %.sroa.0.0.i187 = phi double [ %.sroa.4.0.i186, %bb.av ], [ %i.er, %bb.ay ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !43295
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store ptr %i.ee, ptr %i.w, align 8
  %i.et = getelementptr inbounds nuw i8, ptr %i.ee, i64 184 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ee, i64 192
  %i.ev = load atomic i32, ptr %i.eu acquire, align 4, !noalias !43298
  %i.ew = icmp eq i32 %i.ev, 0
  br i1 %i.ew, label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit195, label %bb.bb, !prof !43

bb.bb:                                            ; preds = %bb.ba
  invoke fastcc void @_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE10initializeNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout(ptr noundef nonnull align 8 %i.et, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.w)
          to label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit195 unwind label %bb.bc

bb.bc:                                            ; preds = %bb.bf, %bb.be, %bb.bb
  %i.ex = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !43299)
  call void @llvm.experimental.noalias.scope.decl(metadata !43300)
  call void @llvm.experimental.noalias.scope.decl(metadata !43301)
  %i.ey = load ptr, ptr %i.w, align 8, !alias.scope !43302, !nonnull !41, !noundef !41
  %i.ez = atomicrmw sub ptr %i.ey, i64 1 release, align 8, !noalias !43302
  %i.fa = icmp eq i64 %i.ez, 1
  br i1 %i.fa, label %bb.bd, label %.thread298

bb.bd:                                            ; preds = %bb.bc
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library4text4font17FontInstanceInnerE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.w) #58
          to label %.thread298 unwind label %bb.ai

_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit195: ; preds = %bb.ba, %bb.bb
  %i.fb = load ptr, ptr %i.et, align 8, !nonnull !41, !noundef !41
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 328
  %i.fd = load double, ptr %i.fc, align 8, !noundef !41
  %i.fe = fmul double %.sroa.0.0.i187, %i.fd      ; 2 uses
  %i.ff = call double @llvm.fabs.f64(double %i.fe)
  %i.fg = fcmp one double %i.ff, +inf
  %spec.store.select22 = select i1 %i.fg, double %i.fe, double 0.000000e+00
  %i.fh = load ptr, ptr %i.w, align 8, !nonnull !41, !noundef !41 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 184 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 192
  %i.fk = load atomic i32, ptr %i.fj acquire, align 4, !noalias !43303
  %i.fl = icmp eq i32 %i.fk, 0
  br i1 %i.fl, label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit199, label %bb.be, !prof !43

bb.be:                                            ; preds = %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit195
  invoke fastcc void @_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE10initializeNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout(ptr noundef nonnull align 8 %i.fi, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.w)
          to label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit199 unwind label %bb.bc

_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit199: ; preds = %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit195, %bb.be
  %i.fm = load ptr, ptr %i.fi, align 8, !nonnull !41, !noundef !41
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 320
  %i.fo = load double, ptr %i.fn, align 8, !noundef !41
  %i.fp = fmul double %.sroa.0.0.i187, %i.fo      ; 2 uses
  %i.fq = call double @llvm.fabs.f64(double %i.fp)
  %i.fr = fcmp one double %i.fq, +inf
  %spec.store.select23 = select i1 %i.fr, double %i.fp, double 0.000000e+00 ; 5 uses
  %i.fs = load ptr, ptr %i.w, align 8, !nonnull !41, !noundef !41 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 184 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 192
  %i.fv = load atomic i32, ptr %i.fu acquire, align 4, !noalias !43304
  %i.fw = icmp eq i32 %i.fv, 0
  br i1 %i.fw, label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit201, label %bb.bf, !prof !43

bb.bf:                                            ; preds = %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit199
  invoke fastcc void @_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE10initializeNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout(ptr noundef nonnull align 8 %i.ft, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.w)
          to label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit201 unwind label %bb.bc

_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit201: ; preds = %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit199, %bb.bf
  %i.fx = load ptr, ptr %i.ft, align 8, !nonnull !41, !noundef !41
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 312
  %i.fz = load double, ptr %i.fy, align 8, !noundef !41
  %i.ga = fmul double %.sroa.0.0.i187, %i.fz      ; 2 uses
  %i.gb = call double @llvm.fabs.f64(double %i.ga)
  %i.gc = fcmp one double %i.gb, +inf
  %spec.store.select24 = select i1 %i.gc, double %i.ga, double 0.000000e+00 ; 4 uses
  %i.gd = fadd double %spec.store.select22, %spec.store.select23
  %i.ge = fadd double %i.gd, %spec.store.select24
  %i.gf = load i64, ptr %i.y, align 16, !range !95, !alias.scope !43305, !noundef !41 ; 2 uses
  %i.gg = call i64 @llvm.usub.sat.i64(i64 %i.gf, i64 1) ; 2 uses
  switch i64 %i.gg, label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6height.exit [
    i64 0, label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6height.exit.thread
    i64 1, label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6height.exit.thread316
  ]

_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6height.exit.thread: ; preds = %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit201
  %i.gh = getelementptr inbounds nuw i8, ptr %i.y, i64 72
  %i.gi = load double, ptr %i.gh, align 8, !alias.scope !43305, !noundef !41
  %i.gj = fadd double %spec.store.select24, %i.gi ; 2 uses
  %.inv152309 = fcmp ord double %i.gj, 0.000000e+00
  %spec.store.select13310 = select i1 %.inv152309, double %i.gj, double 0.000000e+00
  %i.gk = fmul nnan double %spec.store.select23, 5.000000e-01
  %i.gl = fadd double %i.gk, %spec.store.select13310 ; 2 uses
  %.inv154311 = fcmp ord double %i.gl, 0.000000e+00
  %spec.store.select15312 = select i1 %.inv154311, double %i.gl, double 0.000000e+00
  %5 = trunc nuw i64 %i.gf to i1
  %spec.select.v.i209 = select i1 %5, i64 8, i64 72
  br label %.sink.split.i204

_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6height.exit.thread316: ; preds = %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit201
  %i.gm = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.gn = load double, ptr %i.gm, align 8, !alias.scope !43305, !noundef !41
  %i.go = fadd double %spec.store.select24, %i.gn ; 2 uses
  %.inv152318 = fcmp ord double %i.go, 0.000000e+00
  %spec.store.select13319 = select i1 %.inv152318, double %i.go, double 0.000000e+00
  %i.gp = fmul nnan double %spec.store.select23, 5.000000e-01
  %i.gq = fadd double %i.gp, %spec.store.select13319 ; 2 uses
  %.inv154320 = fcmp ord double %i.gq, 0.000000e+00
  %spec.store.select15321 = select i1 %.inv154320, double %i.gq, double 0.000000e+00
  %i.gr = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !range !49, !alias.scope !43306, !noundef !41
  %i.gs = trunc nuw i64 %i.gr to i1
  %spec.select6.v.i203 = select i1 %i.gs, i64 16, i64 40
  br label %.sink.split.i204

_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6height.exit: ; preds = %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit201
  %i.gt = fadd double %spec.store.select24, 0.000000e+00
  %i.gu = fmul nnan double %spec.store.select23, 5.000000e-01
  %i.gv = fadd double %i.gu, %i.gt
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6ascent.exit210

.sink.split.i204:                                 ; preds = %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6height.exit.thread316, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6height.exit.thread
  %spec.store.select15313 = phi double [ %spec.store.select15321, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6height.exit.thread316 ], [ %spec.store.select15312, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6height.exit.thread ]
  %spec.select6.v.sink.i205 = phi i64 [ %spec.select6.v.i203, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6height.exit.thread316 ], [ %spec.select.v.i209, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6height.exit.thread ]
  %spec.select6.i206 = getelementptr inbounds nuw i8, ptr %i.y, i64 %spec.select6.v.sink.i205
  %.sroa.0.2.i207 = load double, ptr %spec.select6.i206, align 8, !alias.scope !43306
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6ascent.exit210

_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6ascent.exit210: ; preds = %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6height.exit, %.sink.split.i204
  %spec.store.select15315 = phi double [ %i.gv, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6height.exit ], [ %spec.store.select15313, %.sink.split.i204 ]
  %.sroa.0.1.i208 = phi double [ 0.000000e+00, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6height.exit ], [ %.sroa.0.2.i207, %.sink.split.i204 ]
  switch i64 %i.gg, label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment18italics_correction.exit [
    i64 0, label %bb.bg
    i64 1, label %bb.bh
  ]

bb.bg:                                            ; preds = %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6ascent.exit210
  %i.gw = getelementptr inbounds nuw i8, ptr %i.y, i64 264
  %i.gx = load double, ptr %i.gw, align 8, !alias.scope !43307, !noundef !41
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment18italics_correction.exit

bb.bh:                                            ; preds = %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6ascent.exit210
  %i.gy = getelementptr inbounds nuw i8, ptr %i.y, i64 80
  %i.gz = load double, ptr %i.gy, align 16, !alias.scope !43307, !noundef !41
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment18italics_correction.exit

_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment18italics_correction.exit: ; preds = %bb.bh, %bb.bg, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6ascent.exit210
  %.sroa.0.0.i211 = phi double [ %i.gz, %bb.bh ], [ %i.gx, %bb.bg ], [ 0.000000e+00, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6ascent.exit210 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !43308)
  call void @llvm.experimental.noalias.scope.decl(metadata !43309)
  call void @llvm.experimental.noalias.scope.decl(metadata !43310)
  %i.ha = load ptr, ptr %i.w, align 8, !alias.scope !43311, !nonnull !41, !noundef !41
  %i.hb = atomicrmw sub ptr %i.ha, i64 1 release, align 8, !noalias !43311
  %i.hc = icmp eq i64 %i.hb, 1
  br i1 %i.hc, label %bb.bi, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceECs7tN9tvpkfrg_12typst_layout.exit213

bb.bi:                                            ; preds = %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment18italics_correction.exit
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library4text4font17FontInstanceInnerE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.w) #58
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceECs7tN9tvpkfrg_12typst_layout.exit213 unwind label %.thread305

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceECs7tN9tvpkfrg_12typst_layout.exit213: ; preds = %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment18italics_correction.exit, %bb.bi
  %i.hd = fcmp uno double %.sroa.0.0.i211, 0.000000e+00
  %i.he = fneg double %.sroa.0.0.i211
  %spec.store.select16 = select i1 %i.hd, double 0.000000e+00, double %i.he
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.ag

_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment12is_text_like.exit: ; preds = %bb.ag, %bb.ah
  %.sroa.0.0.i181.ph = phi double [ 0.000000e+00, %bb.ag ], [ %i.dk, %bb.ah ] ; 2 uses
  %i.hf = fadd double %.sroa.056.0, 0.000000e+00
  %i.hg = fadd double %.sroa.0100.0, %.sroa.0.0.i181.ph ; 2 uses
  %.inv156 = fcmp ord double %i.hg, 0.000000e+00
  %spec.store.select18 = select i1 %.inv156, double %i.hg, double 0.000000e+00
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment18italics_correction.exit218

bb.bj:                                            ; preds = %bb.ag
  %i.hh = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  %i.hi = load double, ptr %i.hh, align 16, !alias.scope !43292, !noundef !41 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.y, i64 72
  %i.hk = load double, ptr %i.hj, align 8, !alias.scope !43312, !noundef !41
  %i.hl = fadd double %.sroa.056.0, %i.hk         ; 2 uses
  %.inv155330 = fcmp ord double %i.hl, 0.000000e+00
  %spec.store.select17331 = select i1 %.inv155330, double %i.hl, double 0.000000e+00
  %i.hm = fadd double %.sroa.0100.0, %i.hi        ; 2 uses
  %.inv156332 = fcmp ord double %i.hm, 0.000000e+00
  %spec.store.select18333 = select i1 %.inv156332, double %i.hm, double 0.000000e+00
  %i.hn = getelementptr inbounds nuw i8, ptr %i.y, i64 288
  %i.ho = load i8, ptr %i.hn, align 16, !range !54, !alias.scope !43313, !noundef !41
  %i.hp = xor i8 %i.ho, 1
  %i.hq = getelementptr inbounds nuw i8, ptr %i.y, i64 264
  %i.hr = load double, ptr %i.hq, align 8, !alias.scope !43314, !noundef !41
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment18italics_correction.exit218

bb.bk:                                            ; preds = %bb.ag
  %i.hs = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.ht = load double, ptr %i.hs, align 16, !alias.scope !43292, !noundef !41 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.hv = load double, ptr %i.hu, align 8, !alias.scope !43312, !noundef !41
  %i.hw = fadd double %.sroa.056.0, %i.hv         ; 2 uses
  %.inv155343 = fcmp ord double %i.hw, 0.000000e+00
  %spec.store.select17344 = select i1 %.inv155343, double %i.hw, double 0.000000e+00
  %i.hx = fadd double %.sroa.0100.0, %i.ht        ; 2 uses
  %.inv156345 = fcmp ord double %i.hx, 0.000000e+00
  %spec.store.select18346 = select i1 %.inv156345, double %i.hx, double 0.000000e+00
  %i.hy = getelementptr inbounds nuw i8, ptr %i.y, i64 104
  %i.hz = load i8, ptr %i.hy, align 8, !range !54, !alias.scope !43313, !noundef !41
  %i.ia = getelementptr inbounds nuw i8, ptr %i.y, i64 80
  %i.ib = load double, ptr %i.ia, align 16, !alias.scope !43314, !noundef !41
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment18italics_correction.exit218

_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment18italics_correction.exit218: ; preds = %bb.bk, %bb.bj, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment12is_text_like.exit
  %.sroa.0.0.i216361 = phi i8 [ %i.hz, %bb.bk ], [ %i.hp, %bb.bj ], [ 0, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment12is_text_like.exit ]
  %.sroa.0.0.i181324335359 = phi double [ %i.ht, %bb.bk ], [ %i.hi, %bb.bj ], [ %.sroa.0.0.i181.ph, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment12is_text_like.exit ]
  %spec.store.select17337357 = phi double [ %spec.store.select17344, %bb.bk ], [ %spec.store.select17331, %bb.bj ], [ %i.hf, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment12is_text_like.exit ]
  %spec.store.select18339355 = phi double [ %spec.store.select18346, %bb.bk ], [ %spec.store.select18333, %bb.bj ], [ %spec.store.select18, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment12is_text_like.exit ]
  %.sroa.0.0.i217 = phi double [ %i.ib, %bb.bk ], [ %i.hr, %bb.bj ], [ 0.000000e+00, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment12is_text_like.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  invoke void @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout5frameNtB2_5Frame4soft(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.r, double noundef %.sroa.0.0.i181324335359, double noundef %spec.store.select17337357, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @608)
          to label %bb.bl unwind label %.thread305

bb.bl:                                            ; preds = %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment18italics_correction.exit218
  store i64 1, ptr %i.r, align 8
  %i.ic = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store double %.sroa.063.0, ptr %i.ic, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  invoke fastcc void @_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment10into_frame(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.q, ptr noalias nofree noundef readonly align 16 captures(address) dereferenceable(304) %i.y)
          to label %bb.bm unwind label %.split.thread

.thread384:                                       ; preds = %.thread378, %bb.bx
  %.sroa.068.0 = phi i1 [ %.sroa.068.3.lpad-body, %bb.bx ], [ %.sroa.068.2382, %.thread378 ]
  %.pn161 = phi { ptr, i32 } [ %eh.lpad-body236, %bb.bx ], [ %.pn159383, %.thread378 ] ; 2 uses
  br i1 %.sroa.068.0, label %.thread384.thread, label %.thread295

.split.thread:                                    ; preds = %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain7get_refNtNtBa_4text8TextElemKh6_ECs7tN9tvpkfrg_12typst_layout.exit, %bb.br, %bb.bm, %bb.bl, %bb.bn, %bb.bo, %bb.bp
  %lpad.thr_comm373 = landingpad { ptr, i32 }
          cleanup
  br label %.thread384.thread

.split:                                           ; preds = %bb.de
  %lpad.thr_comm.split-lp374 = landingpad { ptr, i32 }
          cleanup
  br label %.thread295

bb.bm:                                            ; preds = %bb.bl
  invoke void @_RNvMs_NtNtCsdaEETE4DqmE_13typst_library6layout5frameNtB4_5Frame10push_frame(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.r, double noundef 0.000000e+00, double noundef %.sroa.362.0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.q)
          to label %bb.bn unwind label %.split.thread

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.id = invoke noundef align 8 ptr @_RNvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB5_10StyleChain4find(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(216) @_RNvNvXs0_NvNtCsdaEETE4DqmE_13typst_library4text1__NtB9_8TextElemNtNtNtNtBb_11foundations7content7element13NativeElement4ELEM6VTABLE, i8 noundef 6)
          to label %.noexc220 unwind label %.split.thread ; 4 uses

.noexc220:                                        ; preds = %bb.bn
  %.not.i.i = icmp eq ptr %i.id, null
  br i1 %.not.i.i, label %bb.bq, label %bb.bo

bb.bo:                                            ; preds = %.noexc220
  call void @llvm.experimental.noalias.scope.decl(metadata !43315)
  %i.ie = load ptr, ptr %i.id, align 8, !alias.scope !43315, !noalias !43316, !nonnull !41, !noundef !41 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  %i.ig = load ptr, ptr %i.if, align 8, !alias.scope !43315, !noalias !43316, !nonnull !41, !align !46, !noundef !41
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 40
  %i.ii = load ptr, ptr %i.ih, align 8, !invariant.load !41, !noalias !43317, !nonnull !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !43317
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 24
  %i.ik = load ptr, ptr %i.ij, align 8, !invariant.load !41, !noalias !43317, !nonnull !41
  invoke void %i.ik(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noundef nonnull %i.ie) #59
          to label %.noexc221 unwind label %.split.thread, !inline_history !22

.noexc221:                                        ; preds = %bb.bo
  %i.il = load i128, ptr %i.d, align 16, !noalias !43317, !noundef !41
  %i.im = icmp eq i128 %i.il, 153318861352820877800452183104041730188
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !43317
  br i1 %i.im, label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain7get_refNtNtBa_4text8TextElemKh6_ECs7tN9tvpkfrg_12typst_layout.exit, label %bb.bp, !prof !43

bb.bp:                                            ; preds = %.noexc221
  invoke void @_RNvNtNtCsdaEETE4DqmE_13typst_library11foundations6styles16block_wrong_type(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(216) @_RNvNvXs0_NvNtCsdaEETE4DqmE_13typst_library4text1__NtB9_8TextElemNtNtNtNtBb_11foundations7content7element13NativeElement4ELEM6VTABLE, i8 noundef 6, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.id) #57
          to label %.noexc222 unwind label %.split.thread

.noexc222:                                        ; preds = %bb.bp
  unreachable

bb.bq:                                            ; preds = %.noexc220
  %i.in = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvXsc_NvNtCsdaEETE4DqmE_13typst_library4text1__NtBb_8TextElemINtNtNtNtBd_11foundations7content5field16SettablePropertyKh6_E5FIELDs_04LOCK, i64 24) acquire, align 8, !noalias !43318
  %i.io = icmp eq i32 %i.in, 0
  br i1 %i.io, label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain7get_refNtNtBa_4text8TextElemKh6_ECs7tN9tvpkfrg_12typst_layout.exit, label %bb.br, !prof !43

bb.br:                                            ; preds = %bb.bq
  invoke fastcc void @_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockNtNtNtCsdaEETE4DqmE_13typst_library9visualize5paint5PaintE10initializeNCINvB2_11get_or_initFEBT_E0zECs7tN9tvpkfrg_12typst_layout()
          to label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain7get_refNtNtBa_4text8TextElemKh6_ECs7tN9tvpkfrg_12typst_layout.exit unwind label %.split.thread

_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain7get_refNtNtBa_4text8TextElemKh6_ECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.bq, %.noexc221, %bb.br
  %.sroa.0.0.i219 = phi ptr [ %i.ie, %.noexc221 ], [ @_RNvNCNvXsc_NvNtCsdaEETE4DqmE_13typst_library4text1__NtBb_8TextElemINtNtNtNtBd_11foundations7content5field16SettablePropertyKh6_E5FIELDs_04LOCK, %bb.bq ], [ @_RNvNCNvXsc_NvNtCsdaEETE4DqmE_13typst_library4text1__NtBb_8TextElemINtNtNtNtBd_11foundations7content5field16SettablePropertyKh6_E5FIELDs_04LOCK, %bb.br ]
  invoke void @_RNvMNtNtCsdaEETE4DqmE_13typst_library9visualize5paintNtB2_5Paint13as_decoration(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.0.0.i219)
          to label %bb.bs unwind label %.split.thread

end_hunk_2
begin_hunk_3_@_RNvNtNtCs7tN9tvpkfrg_12typst_layout4math6accent13layout_accent:bb.a
    i64 1, label %bb.s
  ]

bb.o:                                             ; preds = %bb.l
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @295) #53
          to label %.noexc197 unwind label %.body.thread314

.noexc197:                                        ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val195) ]
  %i.ax = getelementptr [8 x i8], ptr %.val195, i64 %.val196
  %i.ay = getelementptr i8, ptr %i.ax, i64 -8     ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !noalias !44218, !nonnull !41, !noundef !41
  %i.ba = atomicrmw add ptr %i.az, i64 1 monotonic, align 8, !noalias !44218
  %i.bb = icmp slt i64 %i.ba, 0
  br i1 %i.bb, label %bb.q, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.p
  %storemerge.pre.i = load ptr, ptr %i.ay, align 8, !noalias !44218
  br label %bb.n

bb.q:                                             ; preds = %bb.p
  call void @llvm.trap()
  unreachable

bb.r:                                             ; preds = %bb.n
  %i.bc = invoke fastcc { double, double } @_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_clonedNtNtBa_4text8TextElemKh5_ECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.r)
          to label %bb.w unwind label %bb.u, !noalias !44217 ; 2 uses

bb.s:                                             ; preds = %bb.n
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.n
  %.sink.i.sroa.phi = phi ptr [ %.sink.i.sroa.gep, %bb.s ], [ %.sink.i.sroa.gep271, %bb.n ]
  %.sroa.4.0.i = load double, ptr %.sink.i.sroa.phi, align 8, !alias.scope !44217, !noalias !44219, !noundef !41
  br label %bb.y

bb.u:                                             ; preds = %bb.w, %bb.r
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.be = atomicrmw sub ptr %i.av, i64 1 release, align 8, !noalias !44220
  %i.bf = icmp eq i64 %i.be, 1
  br i1 %i.bf, label %bb.v, label %.body.thread

bb.v:                                             ; preds = %bb.u
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library4text4font17FontInstanceInnerE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #58
          to label %.body.thread unwind label %bb.x, !noalias !44218

bb.w:                                             ; preds = %bb.r
  %i.bg = extractvalue { double, double } %i.bc, 0
  %i.bh = extractvalue { double, double } %i.bc, 1
  %i.bi = invoke noundef double @_RNvXs8_NtCsdaEETE4DqmE_13typst_library4textNtB5_8TextSizeNtNtNtB7_11foundations6styles7Resolve7resolve(double noundef %i.bg, double noundef %i.bh, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.r)
          to label %bb.y unwind label %bb.u, !noalias !44217

bb.x:                                             ; preds = %bb.v
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55, !noalias !44218
  unreachable

.noexc201:                                        ; preds = %bb.ac, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit266
  br i1 %.sroa.068.2, label %.body.thread, label %bb.e

.body.thread314:                                  ; preds = %bb.at, %bb.o
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body:                                            ; preds = %bb.co
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.y:                                             ; preds = %bb.w, %bb.t
  %.sroa.0.0.i = phi double [ %.sroa.4.0.i, %bb.t ], [ %i.bi, %bb.w ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !44218
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store ptr %i.av, ptr %i.s, align 8
  %i.bk = load i64, ptr %i.u, align 16, !range !95, !alias.scope !44221, !noundef !41
  %i.bl = call i64 @llvm.usub.sat.i64(i64 %i.bk, i64 1)
  switch i64 %i.bl, label %default.unreachable [
    i64 0, label %bb.z
    i64 1, label %bb.aa
    i64 2, label %bb.ab
    i64 3, label %._crit_edge.i198
  ]

bb.z:                                             ; preds = %bb.y
  %i.bm = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  %i.bn = load <2 x double>, ptr %i.bm, align 16, !alias.scope !44221
  br label %bb.ae

bb.aa:                                            ; preds = %bb.y
  %i.bo = getelementptr inbounds nuw i8, ptr %i.u, i64 88
  %i.bp = load <2 x double>, ptr %i.bo, align 8, !alias.scope !44221
  br label %bb.ae

default.unreachable:                              ; preds = %bb.bj, %bb.be, %bb.ba, %bb.au, %bb.ag, %bb.y
  unreachable

bb.ab:                                            ; preds = %bb.y
  %i.bq = load double, ptr %.sroa.439.0..sroa_idx, align 8, !alias.scope !44221, !noundef !41
  %i.br = fmul double %i.bq, 5.000000e-01         ; 3 uses
  %.inv12.i = fcmp ord double %i.br, 0.000000e+00
  %spec.store.select13.i = select i1 %.inv12.i, double %i.br, double 0.000000e+00
  br label %._crit_edge.i198

._crit_edge.i198:                                 ; preds = %bb.y, %bb.ab
  %spec.store.select14.i = phi double [ %spec.store.select13.i, %bb.ab ], [ 0.000000e+00, %bb.y ]
  %.sroa.09.0.i = phi double [ %i.br, %bb.ab ], [ 0.000000e+00, %bb.y ] ; 2 uses
  %.inv10.i = fcmp ord double %.sroa.09.0.i, 0.000000e+00
  %spec.store.select1.i = select i1 %.inv10.i, double %.sroa.09.0.i, double 0.000000e+00
  %i.bs = insertelement <2 x double> poison, double %spec.store.select14.i, i64 0
  %i.bt = insertelement <2 x double> %i.bs, double %spec.store.select1.i, i64 1
  br label %bb.ae

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit266: ; preds = %.body259, %bb.cl, %bb.ay, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit, %bb.ct, %bb.cs, %bb.ad
  %.sroa.068.2 = phi i1 [ true, %bb.ad ], [ false, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit ], [ %.sroa.068.4320, %bb.cs ], [ true, %bb.ay ], [ %.sroa.068.4320, %bb.ct ], [ false, %.body259 ], [ false, %bb.cl ]
  %.pn.pn.pn = phi { ptr, i32 } [ %i.bx, %bb.ad ], [ %lpad.thr_comm346, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit ], [ %.pn321, %bb.cs ], [ %i.ed, %bb.ay ], [ %.pn321, %bb.ct ], [ %lpad.thr_comm.split-lp347, %.body259 ], [ %i.kb, %bb.cl ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !44222)
  call void @llvm.experimental.noalias.scope.decl(metadata !44223)
  call void @llvm.experimental.noalias.scope.decl(metadata !44224)
  %i.bu = load ptr, ptr %i.s, align 8, !alias.scope !44225, !nonnull !41, !noundef !41
  %i.bv = atomicrmw sub ptr %i.bu, i64 1 release, align 8, !noalias !44225
  %i.bw = icmp eq i64 %i.bv, 1
  br i1 %i.bw, label %bb.ac, label %.noexc201

bb.ac:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit266
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library4text4font17FontInstanceInnerE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.s) #58
          to label %.noexc201 unwind label %bb.cr

bb.ad:                                            ; preds = %bb.af, %_RNvMs1_NtNtNtCsdaEETE4DqmE_13typst_library4math2ir4itemNtB5_8MathItem21set_stretch_font_size.exit, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6ascent.exit
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit266

bb.ae:                                            ; preds = %._crit_edge.i198, %bb.aa, %bb.z
  %i.by = phi <2 x double> [ %i.bt, %._crit_edge.i198 ], [ %i.bn, %bb.z ], [ %i.bp, %bb.aa ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.bz = getelementptr inbounds nuw i8, ptr %i.av, i64 184 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.av, i64 192
  %i.cb = load atomic i32, ptr %i.ca acquire, align 4, !noalias !44226
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit, label %bb.af, !prof !43

bb.af:                                            ; preds = %bb.ae
  invoke fastcc void @_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE10initializeNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout(ptr noundef nonnull align 8 %i.bz, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.s)
          to label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit unwind label %bb.ad

_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.ae, %bb.af
  %i.cd = load ptr, ptr %i.bz, align 8, !nonnull !41, !noundef !41
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %i.cf = load double, ptr %i.ce, align 8, !noundef !41
  %i.cg = fmul double %.sroa.0.0.i, %i.cf         ; 2 uses
  %i.ch = call double @llvm.fabs.f64(double %i.cg)
  %i.ci = fcmp one double %i.ch, +inf
  %spec.store.select29 = select i1 %i.ci, double %i.cg, double 0.000000e+00
  store double %spec.store.select29, ptr %i.q, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  br i1 %i.ab, label %bb.ak, label %bb.ag

bb.ag:                                            ; preds = %bb.an, %bb.ao, %bb.ap, %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit
  %i.ck = load i64, ptr %i.u, align 16, !range !95, !alias.scope !44227, !noundef !41
  %i.cl = call i64 @llvm.usub.sat.i64(i64 %i.ck, i64 1)
  switch i64 %i.cl, label %default.unreachable [
    i64 0, label %bb.ah
    i64 1, label %bb.ai
    i64 2, label %bb.aj
    i64 3, label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment5width.exit
  ]

bb.ah:                                            ; preds = %bb.ag
  %i.cm = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %i.cn = load double, ptr %i.cm, align 16, !alias.scope !44227, !noundef !41
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment5width.exit

bb.ai:                                            ; preds = %bb.ag
  %i.co = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.cp = load double, ptr %i.co, align 16, !alias.scope !44227, !noundef !41
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment5width.exit

bb.aj:                                            ; preds = %bb.ag
  %i.cq = load double, ptr %.sroa.439.0..sroa_idx, align 8, !alias.scope !44227, !noundef !41
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment5width.exit

bb.ak:                                            ; preds = %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.cr = load i64, ptr %i.u, align 16, !range !95, !alias.scope !44228, !noundef !41 ; 2 uses
  %i.cs = call i64 @llvm.usub.sat.i64(i64 %i.cr, i64 1)
  switch i64 %i.cs, label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6ascent.exit [
    i64 0, label %bb.al
    i64 1, label %bb.am
  ]

bb.al:                                            ; preds = %bb.ak
  %4 = trunc nuw i64 %i.cr to i1
  %spec.select.v.i = select i1 %4, i64 8, i64 72
  br label %.sink.split.i

bb.am:                                            ; preds = %bb.ak
  %i.ct = load i64, ptr %.sroa.439.0..sroa_idx, align 8, !range !49, !alias.scope !44228, !noundef !41
  %i.cu = trunc nuw i64 %i.ct to i1
  %spec.select6.v.i = select i1 %i.cu, i64 16, i64 40
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.am, %bb.al
  %spec.select6.v.sink.i = phi i64 [ %spec.select6.v.i, %bb.am ], [ %spec.select.v.i, %bb.al ]
  %spec.select6.i = getelementptr inbounds nuw i8, ptr %i.u, i64 %spec.select6.v.sink.i
  %.sroa.0.2.i = load double, ptr %spec.select6.i, align 8, !alias.scope !44228
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6ascent.exit

_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6ascent.exit: ; preds = %.sink.split.i, %bb.ak
  %.sroa.0.1.i = phi double [ 0.000000e+00, %bb.ak ], [ %.sroa.0.2.i, %.sink.split.i ]
  store double %.sroa.0.1.i, ptr %i.p, align 8
  %i.cv = invoke noundef i8 @_RNvXs5_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.q)
          to label %bb.an unwind label %bb.ad

bb.an:                                            ; preds = %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6ascent.exit
  %i.cw = icmp sgt i8 %i.cv, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br i1 %i.cw, label %bb.ao, label %bb.ag

bb.ao:                                            ; preds = %bb.an
  %i.cx = load i64, ptr %i.cj, align 16, !range !95, !noundef !41
  %i.cy = icmp samesign ult i64 %i.cx, 2
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.da = load i64, ptr %i.cz, align 16, !range !113
  %i.db = icmp eq i64 %i.da, 14
  %or.cond = select i1 %i.cy, i1 %i.db, i1 false
  br i1 %or.cond, label %bb.ap, label %bb.ag

bb.ap:                                            ; preds = %bb.ao
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.dd = load ptr, ptr %i.dc, align 8, !nonnull !41, !noundef !41
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 257
  store i8 1, ptr %i.de, align 1
  br label %bb.ag

_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment5width.exit: ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.ag
  %.sroa.0.0.i203 = phi double [ %i.cn, %bb.ah ], [ %i.cp, %bb.ai ], [ %i.cq, %bb.aj ], [ 0.000000e+00, %bb.ag ]
  call void @llvm.experimental.noalias.scope.decl(metadata !44229)
  %i.df = load i64, ptr %i.cj, align 16, !range !95, !alias.scope !44229, !noundef !41
  %i.dg = icmp samesign ult i64 %i.df, 2
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.di = load i64, ptr %i.dh, align 16, !range !113, !alias.scope !44229
  %i.dj = icmp eq i64 %i.di, 14
  %or.cond.i = select i1 %i.dg, i1 %i.dj, i1 false
  br i1 %or.cond.i, label %bb.aq, label %_RNvMs1_NtNtNtCsdaEETE4DqmE_13typst_library4math2ir4itemNtB5_8MathItem21set_stretch_font_size.exit

bb.aq:                                            ; preds = %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment5width.exit
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.dl = load ptr, ptr %i.dk, align 8, !alias.scope !44229, !nonnull !41, !noundef !41 ; 5 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %.sroa.044.0.copyload.i = load i64, ptr %i.dm, align 8, !noalias !44229
  %.sroa.546.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dl, i64 72 ; 2 uses
  %.sroa.546.0.copyload.i = load i64, ptr %.sroa.546.0..sroa_idx.i, align 8, !noalias !44229 ; 2 uses
  %.sroa.647.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dl, i64 80 ; 2 uses
  %.sroa.647.0.copyload.i = load double, ptr %.sroa.647.0..sroa_idx.i, align 8, !noalias !44229
  %.not.i205 = icmp ne i64 %.sroa.044.0.copyload.i, 2 ; 2 uses
  %.not4.i = icmp eq i64 %.sroa.546.0.copyload.i, 0
  %or.cond60.i = select i1 %.not.i205, i1 %.not4.i, i1 false ; 2 uses
  %.sroa.511.0.i = select i1 %or.cond60.i, i64 1, i64 %.sroa.546.0.copyload.i
  %.sroa.6.0.i = select i1 %or.cond60.i, double %.sroa.0.0.i203, double %.sroa.647.0.copyload.i
  store i64 %.sroa.511.0.i, ptr %.sroa.546.0..sroa_idx.i, align 8, !noalias !44229
  store double %.sroa.6.0.i, ptr %.sroa.647.0..sroa_idx.i, align 8, !noalias !44229
  %.sroa.518.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dl, i64 88 ; 2 uses
  %.sroa.518.0.copyload.i = load i64, ptr %.sroa.518.0..sroa_idx.i, align 8, !noalias !44230 ; 2 uses
  %.sroa.619.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dl, i64 96 ; 2 uses
  %.sroa.619.0.copyload.i = load double, ptr %.sroa.619.0..sroa_idx.i, align 8, !noalias !44230
  %.not4.i208 = icmp eq i64 %.sroa.518.0.copyload.i, 0
  %or.cond21.i = select i1 %.not.i205, i1 %.not4.i208, i1 false ; 2 uses
  %.sroa.7.0.i = select i1 %or.cond21.i, double %.sroa.0.0.i, double %.sroa.619.0.copyload.i
  %.sroa.57.0.i = select i1 %or.cond21.i, i64 1, i64 %.sroa.518.0.copyload.i
  store i64 %.sroa.57.0.i, ptr %.sroa.518.0..sroa_idx.i, align 8, !noalias !44230
  store double %.sroa.7.0.i, ptr %.sroa.619.0..sroa_idx.i, align 8, !noalias !44230
  br label %_RNvMs1_NtNtNtCsdaEETE4DqmE_13typst_library4math2ir4itemNtB5_8MathItem21set_stretch_font_size.exit

_RNvMs1_NtNtNtCsdaEETE4DqmE_13typst_library4math2ir4itemNtB5_8MathItem21set_stretch_font_size.exit: ; preds = %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment5width.exit, %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  invoke fastcc void @_RNvMNtCs7tN9tvpkfrg_12typst_layout4mathNtB2_11MathContext20layout_into_fragment(ptr noalias nofree noundef align 16 captures(none) dereferenceable(304) %i.o, ptr noalias nofree noundef align 8 dereferenceable(80) %1, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(144) %i.cj, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c)
          to label %bb.ar unwind label %bb.ad

bb.ar:                                            ; preds = %_RNvMs1_NtNtNtCsdaEETE4DqmE_13typst_library4math2ir4itemNtB5_8MathItem21set_stretch_font_size.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.dn = load i64, ptr %i.o, align 16, !range !83, !noundef !41 ; 3 uses
  %i.do = icmp eq i64 %i.dn, -1
  %i.dp = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8            ; 7 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ds = load i64, ptr %i.dr, align 16           ; 7 uses
  br i1 %i.do, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.experimental.noalias.scope.decl(metadata !44231)
  call void @llvm.experimental.noalias.scope.decl(metadata !44232)
  call void @llvm.experimental.noalias.scope.decl(metadata !44233)
  %i.dt = load ptr, ptr %i.s, align 8, !alias.scope !44234, !nonnull !41, !noundef !41
  %i.du = atomicrmw sub ptr %i.dt, i64 1 release, align 8, !noalias !44234
  %i.dv = icmp eq i64 %i.du, 1
  br i1 %i.dv, label %bb.at, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceECs7tN9tvpkfrg_12typst_layout.exit210

bb.at:                                            ; preds = %bb.as
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library4text4font17FontInstanceInnerE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.s) #58
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceECs7tN9tvpkfrg_12typst_layout.exit210 unwind label %.body.thread314

bb.au:                                            ; preds = %bb.ar
  %.sroa.679.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.679.0..sroa_idx, i64 56, i1 false)
  %.sroa.679.sroa.4.0..sroa.679.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  %i.dw = load <2 x double>, ptr %.sroa.679.sroa.4.0..sroa.679.0..sroa_idx.sroa_idx, align 16 ; 3 uses
  %.sroa.679.sroa.6.0..sroa.679.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(208) %.sroa.11, ptr noundef nonnull align 16 dereferenceable(208) %.sroa.679.sroa.6.0..sroa.679.0..sroa_idx.sroa_idx, i64 208, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.dx = ptrtoint ptr %i.dq to i64               ; 2 uses
  %i.dy = call i64 @llvm.usub.sat.i64(i64 %i.dn, i64 1)
  switch i64 %i.dy, label %default.unreachable [
    i64 0, label %bb.av
    i64 1, label %bb.aw
    i64 2, label %bb.ax
    i64 3, label %._crit_edge.i211
  ]

bb.av:                                            ; preds = %bb.au
  %i.dz = extractelement <2 x double> %i.dw, i64 0
  br label %._crit_edge.i211

bb.aw:                                            ; preds = %bb.au
  %i.ea = extractelement <2 x double> %i.dw, i64 1
  br label %._crit_edge.i211

bb.ax:                                            ; preds = %bb.au
  %i.eb = bitcast i64 %i.dx to double
  %i.ec = fmul double %i.eb, 5.000000e-01         ; 2 uses
  %.inv12.i218 = fcmp ord double %i.ec, 0.000000e+00
  %spec.store.select13.i219 = select i1 %.inv12.i218, double %i.ec, double 0.000000e+00
  br label %._crit_edge.i211

bb.ay:                                            ; preds = %._crit_edge.i211
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit266

._crit_edge.i211:                                 ; preds = %bb.au, %bb.ax, %bb.aw, %bb.av
  %.sroa.0.0.i217 = phi double [ %i.ea, %bb.aw ], [ %i.dz, %bb.av ], [ %spec.store.select13.i219, %bb.ax ], [ 0.000000e+00, %bb.au ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i64 %i.dn, ptr %i.m, align 16
  %.sroa.5.0..sroa_idx355 = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %i.dx, ptr %.sroa.5.0..sroa_idx355, align 8
  %.sroa.7.0..sroa_idx356 = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 %i.ds, ptr %.sroa.7.0..sroa_idx356, align 16
  %.sroa.8.0..sroa_idx357 = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8.0..sroa_idx357, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8, i64 56, i1 false)
  %.sroa.9.0..sroa_idx358 = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  store <2 x double> %i.dw, ptr %.sroa.9.0..sroa_idx358, align 16
  %.sroa.11.0..sroa_idx360 = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(208) %.sroa.11.0..sroa_idx360, ptr noundef nonnull align 16 dereferenceable(208) %.sroa.11, i64 208, i1 false)
  invoke fastcc void @_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment10into_frame(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.n, ptr noalias nofree noundef readonly align 16 captures(address) dereferenceable(304) %i.m)
          to label %bb.az unwind label %bb.ay

bb.az:                                            ; preds = %._crit_edge.i211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.ee = extractelement <2 x double> %i.by, i64 0
  %i.ef = extractelement <2 x double> %i.by, i64 1
  %. = select i1 %i.ab, double %i.ee, double %i.ef ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 290
  %i.eh = load i8, ptr %i.eg, align 2, !range !54, !noundef !41
  %i.ei = trunc nuw i8 %i.eh to i1                ; 2 uses
  br i1 %i.ei, label %bb.be, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ej = load i64, ptr %i.u, align 16, !range !95, !alias.scope !44235, !noundef !41
  %i.ek = call i64 @llvm.usub.sat.i64(i64 %i.ej, i64 1)
  switch i64 %i.ek, label %default.unreachable [
    i64 0, label %bb.bb
    i64 1, label %bb.bc
    i64 2, label %bb.bd
    i64 3, label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment5width.exit224
  ]

bb.bb:                                            ; preds = %bb.ba
  %i.el = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %i.em = load double, ptr %i.el, align 16, !alias.scope !44235, !noundef !41
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment5width.exit224

bb.bc:                                            ; preds = %bb.ba
  %i.en = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.eo = load double, ptr %i.en, align 16, !alias.scope !44235, !noundef !41
end_hunk_3
begin_hunk_4_@_RNvNtNtCs7tN9tvpkfrg_12typst_layout4math6accent13layout_accent:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.eq = fneg double %.
  %i.er = fcmp uno double %., 0.000000e+00
  %spec.store.select4 = select i1 %i.er, double 0.000000e+00, double %i.eq ; 2 uses
  %i.es = fadd double %spec.store.select4, %.sroa.0.0.i217 ; 2 uses
  %.inv170 = fcmp ord double %i.es, 0.000000e+00
  %spec.store.select7 = select i1 %.inv170, double %i.es, double 0.000000e+00 ; 5 uses
  store double %spec.store.select7, ptr %i.l, align 8
  %i.et = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.eu = load double, ptr %i.et, align 8, !noundef !41
  %i.ev = load i64, ptr %i.u, align 16, !range !95, !alias.scope !44236, !noundef !41
  %i.ew = call i64 @llvm.usub.sat.i64(i64 %i.ev, i64 1)
  switch i64 %i.ew, label %default.unreachable [
    i64 0, label %bb.bf
    i64 1, label %bb.bg
    i64 2, label %bb.bh
    i64 3, label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment5width.exit227
  ]

bb.bf:                                            ; preds = %bb.be
  %i.ex = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %i.ey = load double, ptr %i.ex, align 16, !alias.scope !44236, !noundef !41
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment5width.exit227

bb.bg:                                            ; preds = %bb.be
  %i.ez = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.fa = load double, ptr %i.ez, align 16, !alias.scope !44236, !noundef !41
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment5width.exit227

bb.bh:                                            ; preds = %bb.be
  %i.fb = load double, ptr %.sroa.439.0..sroa_idx, align 8, !alias.scope !44236, !noundef !41
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment5width.exit227

.thread:                                          ; preds = %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment5width.exit227, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment5width.exit230, %bb.bn, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6ascent.exit243, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment12base_descent.exit, %bb.bv
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %bb.cs

_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment5width.exit224: ; preds = %bb.bd, %bb.bc, %bb.bb, %bb.ba
  %.sroa.0.0.i222 = phi double [ %i.em, %bb.bb ], [ %i.eo, %bb.bc ], [ %i.ep, %bb.bd ], [ 0.000000e+00, %bb.ba ]
  %i.fd = fneg double %.sroa.0.0.i217
  %i.fe = fcmp uno double %.sroa.0.0.i217, 0.000000e+00
  %spec.store.select5 = select i1 %i.fe, double 0.000000e+00, double %i.fd
  %i.ff = fadd double %., %spec.store.select5     ; 2 uses
  %.inv = fcmp ord double %i.ff, 0.000000e+00
  %spec.store.select6 = select i1 %.inv, double %i.ff, double 0.000000e+00
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bq, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment5width.exit224
  %.sroa.056.0 = phi double [ %.sroa.056.1, %bb.bq ], [ %spec.store.select6, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment5width.exit224 ]
  %.sroa.055.0 = phi double [ %spec.store.select15, %bb.bq ], [ %.sroa.0.0.i222, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment5width.exit224 ]
  %.sroa.0163.0 = phi double [ %.sroa.0163.1, %bb.bq ], [ 0.000000e+00, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment5width.exit224 ]
  br i1 %i.ab, label %bb.bu, label %bb.br

_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment5width.exit227: ; preds = %bb.bh, %bb.bg, %bb.bf, %bb.be
  %.sroa.0.0.i225 = phi double [ %i.ey, %bb.bf ], [ %i.fa, %bb.bg ], [ %i.fb, %bb.bh ], [ 0.000000e+00, %bb.be ]
  %i.fg = fcmp uno double %.sroa.0.0.i217, 0.000000e+00
  %i.fh = fneg double %.sroa.0.0.i217
  %spec.store.select8 = select i1 %i.fg, double 0.000000e+00, double %i.fh
  %i.fi = fadd double %spec.store.select8, %i.eu  ; 2 uses
  %.inv171 = fcmp ord double %i.fi, 0.000000e+00
  %spec.store.select9 = select i1 %.inv171, double %i.fi, double 0.000000e+00
  %i.fj = fadd double %spec.store.select4, %.sroa.0.0.i225 ; 2 uses
  %.inv172 = fcmp ord double %i.fj, 0.000000e+00
  %.neg = fneg double %i.fj
  %i.fk = select i1 %.inv172, double %.neg, double -0.000000e+00 ; 2 uses
  %.inv173 = fcmp ord double %i.fk, 0.000000e+00
  %spec.store.select12 = select i1 %.inv173, double %i.fk, double 0.000000e+00
  %i.fl = fadd double %spec.store.select9, %spec.store.select12 ; 2 uses
  %.inv174 = fcmp ord double %i.fl, 0.000000e+00
  %spec.store.select13 = select i1 %.inv174, double %i.fl, double 0.000000e+00
  %i.fm = invoke noundef double @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout3absNtB2_3Abs3max(double noundef %spec.store.select7, double noundef 0.000000e+00)
          to label %bb.bj unwind label %.thread

bb.bj:                                            ; preds = %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment5width.exit227
  %i.fn = load i64, ptr %i.u, align 16, !range !95, !alias.scope !44237, !noundef !41
  %i.fo = call i64 @llvm.usub.sat.i64(i64 %i.fn, i64 1)
  switch i64 %i.fo, label %default.unreachable [
    i64 0, label %bb.bk
    i64 1, label %bb.bl
    i64 2, label %bb.bm
    i64 3, label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment5width.exit230
  ]

bb.bk:                                            ; preds = %bb.bj
  %i.fp = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %i.fq = load double, ptr %i.fp, align 16, !alias.scope !44237, !noundef !41
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment5width.exit230

bb.bl:                                            ; preds = %bb.bj
  %i.fr = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.fs = load double, ptr %i.fr, align 16, !alias.scope !44237, !noundef !41
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment5width.exit230

bb.bm:                                            ; preds = %bb.bj
  %i.ft = load double, ptr %.sroa.439.0..sroa_idx, align 8, !alias.scope !44237, !noundef !41
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment5width.exit230

_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment5width.exit230: ; preds = %bb.bm, %bb.bl, %bb.bk, %bb.bj
  %.sroa.0.0.i228 = phi double [ %i.fq, %bb.bk ], [ %i.fs, %bb.bl ], [ %i.ft, %bb.bm ], [ 0.000000e+00, %bb.bj ]
  %i.fu = invoke noundef double @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout3absNtB2_3Abs3max(double noundef %spec.store.select13, double noundef 0.000000e+00)
          to label %bb.bn unwind label %.thread

bb.bn:                                            ; preds = %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment5width.exit230
  %i.fv = fadd double %i.fm, %.sroa.0.0.i228      ; 2 uses
  %.inv175 = fcmp ord double %i.fv, 0.000000e+00
  %spec.store.select14 = select i1 %.inv175, double %i.fv, double 0.000000e+00
  %i.fw = fadd double %i.fu, %spec.store.select14 ; 2 uses
  %.inv176 = fcmp ord double %i.fw, 0.000000e+00
  %spec.store.select15 = select i1 %.inv176, double %i.fw, double 0.000000e+00
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store double 0.000000e+00, ptr %i.k, align 8
  %i.fx = invoke noundef i8 @_RNvXs5_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.k)
          to label %bb.bo unwind label %.thread

bb.bo:                                            ; preds = %bb.bn
  %i.fy = icmp slt i8 %i.fx, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br i1 %i.fy, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.fz = fneg double %spec.store.select7
  %i.ga = fcmp uno double %spec.store.select7, 0.000000e+00
  %spec.store.select16 = select i1 %i.ga, double 0.000000e+00, double %i.fz
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bo, %bb.bp
  %.sroa.056.1 = phi double [ %spec.store.select16, %bb.bp ], [ 0.000000e+00, %bb.bo ]
  %.sroa.0163.1 = phi double [ 0.000000e+00, %bb.bp ], [ %spec.store.select7, %bb.bo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.bi

bb.br:                                            ; preds = %bb.bi
  %i.gb = load i64, ptr %i.n, align 8, !range !49, !noundef !41
  %i.gc = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.gd = load double, ptr %i.gc, align 8, !noundef !41 ; 2 uses
  %i.ge = trunc nuw i64 %i.gb to i1
  %i.gf = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.gg = load double, ptr %i.gf, align 8
  %.sroa.0165.0 = select i1 %i.ge, double %i.gg, double %i.gd ; 2 uses
  %i.gh = load i64, ptr %i.u, align 16, !range !95, !alias.scope !44238, !noundef !41 ; 2 uses
  %i.gi = call i64 @llvm.usub.sat.i64(i64 %i.gh, i64 1)
  switch i64 %i.gi, label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6height.exit [
    i64 0, label %bb.bs
    i64 1, label %bb.bt
  ]

bb.bs:                                            ; preds = %bb.br
  %i.gj = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  %i.gk = load double, ptr %i.gj, align 8, !alias.scope !44238, !noundef !41
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6height.exit

bb.bt:                                            ; preds = %bb.br
  %i.gl = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.gm = load double, ptr %i.gl, align 8, !alias.scope !44238, !noundef !41
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6height.exit

bb.bu:                                            ; preds = %bb.bi
  %i.gn = load ptr, ptr %i.s, align 8, !nonnull !41, !noundef !41 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 184 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gn, i64 192
  %i.gq = load atomic i32, ptr %i.gp acquire, align 4, !noalias !44239
  %i.gr = icmp eq i32 %i.gq, 0
  br i1 %i.gr, label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit233, label %bb.bv, !prof !43

bb.bv:                                            ; preds = %bb.bu
  invoke fastcc void @_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE10initializeNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout(ptr noundef nonnull align 8 %i.go, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.s)
          to label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit233 unwind label %.thread

_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6height.exit: ; preds = %bb.bt, %bb.bs, %bb.br
  %.sroa.0.0.i231 = phi double [ %i.gm, %bb.bt ], [ %i.gk, %bb.bs ], [ 0.000000e+00, %bb.br ]
  %i.gs = fcmp uno double %.sroa.0165.0, 0.000000e+00
  %i.gt = fneg double %.sroa.0165.0
  %spec.store.select17 = select i1 %i.gs, double 0.000000e+00, double %i.gt ; 2 uses
  %i.gu = fadd double %spec.store.select17, %.sroa.0.0.i231 ; 2 uses
  %.inv177 = fcmp ord double %i.gu, 0.000000e+00
  %spec.store.select18 = select i1 %.inv177, double %i.gu, double 0.000000e+00
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bz, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6height.exit
  %i.gv = phi i64 [ %.pre, %bb.bz ], [ %i.gh, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6height.exit ] ; 5 uses
  %i.gw = phi double [ %i.hp, %bb.bz ], [ %i.gd, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6height.exit ] ; 3 uses
  %.sroa.0144.0 = phi double [ %spec.store.select25, %bb.bz ], [ %spec.store.select17, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6height.exit ] ; 3 uses
  %.sroa.362.0 = phi double [ %spec.store.select26, %bb.bz ], [ 0.000000e+00, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6height.exit ] ; 2 uses
  %.sroa.3.0 = phi double [ 0.000000e+00, %bb.bz ], [ %spec.store.select18, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6height.exit ]
  %i.gx = call i64 @llvm.usub.sat.i64(i64 %i.gv, i64 1) ; 4 uses
  switch i64 %i.gx, label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6height.exit235 [
    i64 0, label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6height.exit235.thread
    i64 1, label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6height.exit235.thread330
  ]

_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6height.exit235.thread: ; preds = %bb.bw
  %i.gy = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  %i.gz = load double, ptr %i.gy, align 8, !alias.scope !44240, !noundef !41
  %i.ha = fadd double %.sroa.0144.0, %i.gw        ; 2 uses
  %.inv184323 = fcmp ord double %i.ha, 0.000000e+00
  %spec.store.select19324 = select i1 %.inv184323, double %i.ha, double 0.000000e+00
  %i.hb = fadd double %spec.store.select19324, %i.gz ; 2 uses
  %.inv185325 = fcmp ord double %i.hb, 0.000000e+00
  %spec.store.select27326 = select i1 %.inv185325, double %i.hb, double 0.000000e+00
  %5 = trunc nuw i64 %i.gv to i1
  %spec.select.v.i250 = select i1 %5, i64 8, i64 72
  br label %.sink.split.i245

_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6height.exit235.thread330: ; preds = %bb.bw
  %i.hc = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.hd = load double, ptr %i.hc, align 8, !alias.scope !44240, !noundef !41
  %i.he = fadd double %.sroa.0144.0, %i.gw        ; 2 uses
  %.inv184332 = fcmp ord double %i.he, 0.000000e+00
  %spec.store.select19333 = select i1 %.inv184332, double %i.he, double 0.000000e+00
  %i.hf = fadd double %spec.store.select19333, %i.hd ; 2 uses
  %.inv185334 = fcmp ord double %i.hf, 0.000000e+00
  %spec.store.select27335 = select i1 %.inv185334, double %i.hf, double 0.000000e+00
  %i.hg = load i64, ptr %.sroa.439.0..sroa_idx, align 8, !range !49, !alias.scope !44241, !noundef !41
  %i.hh = trunc nuw i64 %i.hg to i1
  %spec.select6.v.i244 = select i1 %i.hh, i64 16, i64 40
  br label %.sink.split.i245

_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit233: ; preds = %bb.bu, %bb.bv
  %i.hi = load ptr, ptr %i.go, align 8, !nonnull !41, !noundef !41
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 24
  %i.hk = load double, ptr %i.hj, align 8, !noundef !41
  %i.hl = fmul double %.sroa.0.0.i, %i.hk         ; 2 uses
  %i.hm = call double @llvm.fabs.f64(double %i.hl)
  %i.hn = fcmp one double %i.hm, +inf
  %spec.store.select30 = select i1 %i.hn, double %i.hl, double 0.000000e+00
  %i.ho = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.hp = load double, ptr %i.ho, align 8, !noundef !41 ; 4 uses
  %i.hq = load i64, ptr %i.n, align 8, !range !49, !noundef !41
  %i.hr = trunc nuw i64 %i.hq to i1
  %i.hs = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.ht = load double, ptr %i.hs, align 8
  %.sroa.0131.0 = select i1 %i.hr, double %i.ht, double %i.hp ; 2 uses
  %i.hu = fneg double %.sroa.0131.0
  %i.hv = fcmp uno double %.sroa.0131.0, 0.000000e+00
  %spec.store.select21 = select i1 %i.hv, double 0.000000e+00, double %i.hu
  %i.hw = fadd double %i.hp, %spec.store.select21 ; 2 uses
  %.inv179 = fcmp ord double %i.hw, 0.000000e+00
  %.neg180 = fneg double %i.hw
  %i.hx = select i1 %.inv179, double %.neg180, double -0.000000e+00 ; 2 uses
  %.inv181 = fcmp ord double %i.hx, 0.000000e+00
  %spec.store.select23 = select i1 %.inv181, double %i.hx, double 0.000000e+00
  %i.hy = load i64, ptr %i.u, align 16, !range !95, !alias.scope !44242, !noundef !41 ; 2 uses
  %i.hz = call i64 @llvm.usub.sat.i64(i64 %i.hy, i64 1)
  switch i64 %i.hz, label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6ascent.exit243 [
    i64 0, label %bb.bx
    i64 1, label %bb.by
  ]

bb.bx:                                            ; preds = %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit233
  %6 = trunc nuw i64 %i.hy to i1
  %spec.select.v.i242 = select i1 %6, i64 8, i64 72
  br label %.sink.split.i237

bb.by:                                            ; preds = %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit233
  %i.ia = load i64, ptr %.sroa.439.0..sroa_idx, align 8, !range !49, !alias.scope !44242, !noundef !41
  %i.ib = trunc nuw i64 %i.ia to i1
  %spec.select6.v.i236 = select i1 %i.ib, i64 16, i64 40
  br label %.sink.split.i237

.sink.split.i237:                                 ; preds = %bb.by, %bb.bx
  %spec.select6.v.sink.i238 = phi i64 [ %spec.select6.v.i236, %bb.by ], [ %spec.select.v.i242, %bb.bx ]
  %spec.select6.i239 = getelementptr inbounds nuw i8, ptr %i.u, i64 %spec.select6.v.sink.i238
  %.sroa.0.2.i240 = load double, ptr %spec.select6.i239, align 8, !alias.scope !44242
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6ascent.exit243

_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6ascent.exit243: ; preds = %.sink.split.i237, %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit233
  %.sroa.0.1.i241 = phi double [ 0.000000e+00, %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit233 ], [ %.sroa.0.2.i240, %.sink.split.i237 ]
  %i.ic = invoke noundef double @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout3absNtB2_3Abs3min(double noundef %.sroa.0.1.i241, double noundef %spec.store.select30)
          to label %bb.bz unwind label %.thread   ; 2 uses

bb.bz:                                            ; preds = %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6ascent.exit243
  %i.id = fneg double %i.ic
  %i.ie = fcmp uno double %i.ic, 0.000000e+00
  %spec.store.select24 = select i1 %i.ie, double 0.000000e+00, double %i.id
  %i.if = fadd double %spec.store.select23, %spec.store.select24 ; 2 uses
  %.inv182 = fcmp ord double %i.if, 0.000000e+00
  %spec.store.select25 = select i1 %.inv182, double %i.if, double 0.000000e+00 ; 2 uses
  %i.ig = fadd double %spec.store.select25, %i.hp ; 2 uses
  %.inv183 = fcmp ord double %i.ig, 0.000000e+00
  %spec.store.select26 = select i1 %.inv183, double %i.ig, double 0.000000e+00
  %.pre = load i64, ptr %i.u, align 16, !range !95, !alias.scope !44240
  br label %bb.bw

_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6height.exit235: ; preds = %bb.bw
  %i.ih = fadd double %.sroa.0144.0, %i.gw        ; 2 uses
  %.inv184 = fcmp ord double %i.ih, 0.000000e+00
  %i.ii = fadd double %i.ih, 0.000000e+00
  %i.ij = select i1 %.inv184, double %i.ii, double 0.000000e+00 ; 2 uses
  %.inv185 = fcmp ord double %i.ij, 0.000000e+00
  %spec.store.select27 = select i1 %.inv185, double %i.ij, double 0.000000e+00
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6ascent.exit251

.sink.split.i245:                                 ; preds = %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6height.exit235.thread330, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6height.exit235.thread
  %spec.store.select27327 = phi double [ %spec.store.select27335, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6height.exit235.thread330 ], [ %spec.store.select27326, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6height.exit235.thread ]
  %spec.select6.v.sink.i246 = phi i64 [ %spec.select6.v.i244, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6height.exit235.thread330 ], [ %spec.select.v.i250, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6height.exit235.thread ]
  %spec.select6.i247 = getelementptr inbounds nuw i8, ptr %i.u, i64 %spec.select6.v.sink.i246
  %.sroa.0.2.i248 = load double, ptr %spec.select6.i247, align 8, !alias.scope !44241
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6ascent.exit251

_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6ascent.exit251: ; preds = %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6height.exit235, %.sink.split.i245
  %spec.store.select27329 = phi double [ %spec.store.select27, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6height.exit235 ], [ %spec.store.select27327, %.sink.split.i245 ]
  %.sroa.0.1.i249 = phi double [ 0.000000e+00, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6height.exit235 ], [ %.sroa.0.2.i248, %.sink.split.i245 ]
  %i.ik = fadd double %.sroa.362.0, %.sroa.0.1.i249 ; 2 uses
  %.inv186 = fcmp ord double %i.ik, 0.000000e+00
  %spec.store.select28 = select i1 %.inv186, double %i.ik, double 0.000000e+00
  br i1 %i.ei, label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment12is_text_like.exit, label %bb.ca

bb.ca:                                            ; preds = %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6ascent.exit251
  switch i64 %i.gx, label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment11base_ascent.exit [
    i64 0, label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment12is_text_like.exit.thread
    i64 1, label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment12is_text_like.exit.thread367
  ]

_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment12is_text_like.exit.thread: ; preds = %bb.ca
  %i.il = getelementptr inbounds nuw i8, ptr %i.u, i64 288
  %i.im = load i8, ptr %i.il, align 16, !range !54, !alias.scope !44243, !noundef !41
  %i.in = xor i8 %i.im, 1
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment18italics_correction.exit.thread340

_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment12is_text_like.exit.thread367: ; preds = %bb.ca
  %i.io = getelementptr inbounds nuw i8, ptr %i.u, i64 104
  %i.ip = load i8, ptr %i.io, align 8, !range !54, !alias.scope !44243, !noundef !41
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment18italics_correction.exit.thread

_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment12is_text_like.exit: ; preds = %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6ascent.exit251
  switch i64 %i.gx, label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment11base_ascent.exit [
    i64 0, label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment18italics_correction.exit.thread340
    i64 1, label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment18italics_correction.exit.thread
  ]

_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment18italics_correction.exit.thread340: ; preds = %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment12is_text_like.exit.thread, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment12is_text_like.exit
  %.sroa.064.0365 = phi i8 [ %i.in, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment12is_text_like.exit.thread ], [ 0, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment12is_text_like.exit ]
  %i.iq = getelementptr inbounds nuw i8, ptr %i.u, i64 264
  %i.ir = load double, ptr %i.iq, align 8, !alias.scope !44244, !noundef !41
  %7 = trunc nuw i64 %i.gv to i1
  %spec.select.v.i254 = select i1 %7, i64 8, i64 72
  br label %.sink.split.i255

_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment18italics_correction.exit.thread: ; preds = %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment12is_text_like.exit.thread367, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment12is_text_like.exit
  %.sroa.064.0369 = phi i8 [ %i.ip, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment12is_text_like.exit.thread367 ], [ 0, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment12is_text_like.exit ]
  %i.is = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  %i.it = load double, ptr %i.is, align 16, !alias.scope !44244, !noundef !41
  br label %.sink.split.i255

.sink.split.i255:                                 ; preds = %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment18italics_correction.exit.thread, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment18italics_correction.exit.thread340
  %.sroa.064.0364 = phi i8 [ %.sroa.064.0365, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment18italics_correction.exit.thread340 ], [ %.sroa.064.0369, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment18italics_correction.exit.thread ]
  %.sroa.0.0.i253338 = phi double [ %i.ir, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment18italics_correction.exit.thread340 ], [ %i.it, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment18italics_correction.exit.thread ]
  %spec.select.v.sink.i = phi i64 [ %spec.select.v.i254, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment18italics_correction.exit.thread340 ], [ 64, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment18italics_correction.exit.thread ]
  %spec.select.i = getelementptr inbounds nuw i8, ptr %i.u, i64 %spec.select.v.sink.i
  %.sroa.0.1.i256 = load double, ptr %spec.select.i, align 8, !alias.scope !44245
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment11base_ascent.exit

_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment11base_ascent.exit: ; preds = %bb.ca, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment12is_text_like.exit, %.sink.split.i255
  %.sroa.064.0366 = phi i8 [ %.sroa.064.0364, %.sink.split.i255 ], [ 0, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment12is_text_like.exit ], [ 0, %bb.ca ]
  %.sroa.0.0.i253339 = phi double [ %.sroa.0.0.i253338, %.sink.split.i255 ], [ 0.000000e+00, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment12is_text_like.exit ], [ 0.000000e+00, %bb.ca ]
  %.sroa.0.0.i257 = phi double [ %.sroa.0.1.i256, %.sink.split.i255 ], [ 0.000000e+00, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment12is_text_like.exit ], [ 0.000000e+00, %bb.ca ]
  %i.iu = icmp eq i64 %i.gv, 2
  br i1 %i.iu, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment11base_ascent.exit
  %i.iv = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  %i.iw = load double, ptr %i.iv, align 8, !alias.scope !44246, !noundef !41
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment12base_descent.exit

bb.cc:                                            ; preds = %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment11base_ascent.exit
  switch i64 %i.gx, label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment12base_descent.exit [
    i64 0, label %bb.cd
    i64 1, label %bb.ce
  ]

bb.cd:                                            ; preds = %bb.cc
  %i.ix = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  %i.iy = load double, ptr %i.ix, align 8, !alias.scope !44247, !noundef !41 ; 2 uses
  %i.iz = trunc nuw i64 %i.gv to i1
  %i.ja = load double, ptr %.sroa.439.0..sroa_idx, align 8, !alias.scope !44247
  %.sroa.022.0.i.i = select i1 %i.iz, double %i.ja, double %i.iy ; 2 uses
  %i.jb = fneg double %.sroa.022.0.i.i
  %i.jc = fcmp uno double %.sroa.022.0.i.i, 0.000000e+00
  %spec.store.select.i.i = select i1 %i.jc, double 0.000000e+00, double %i.jb
  %i.jd = fadd double %i.iy, %spec.store.select.i.i ; 2 uses
  %.inv23.i.i = fcmp ord double %i.jd, 0.000000e+00
  %spec.store.select1.i.i = select i1 %.inv23.i.i, double %i.jd, double 0.000000e+00
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment12base_descent.exit

bb.ce:                                            ; preds = %bb.cc
  %i.je = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.jf = load double, ptr %i.je, align 8, !alias.scope !44247, !noundef !41 ; 2 uses
  %i.jg = load i64, ptr %.sroa.439.0..sroa_idx, align 8, !range !49, !alias.scope !44247, !noundef !41
  %i.jh = trunc nuw i64 %i.jg to i1
  %i.ji = load double, ptr %.sroa.5.0..sroa_idx, align 16, !alias.scope !44247
  %.sroa.012.0.i.i = select i1 %i.jh, double %i.ji, double %i.jf ; 2 uses
  %i.jj = fneg double %.sroa.012.0.i.i
  %i.jk = fcmp uno double %.sroa.012.0.i.i, 0.000000e+00
  %spec.store.select2.i.i = select i1 %i.jk, double 0.000000e+00, double %i.jj
  %i.jl = fadd double %i.jf, %spec.store.select2.i.i ; 2 uses
  %.inv.i.i = fcmp ord double %i.jl, 0.000000e+00
  %spec.store.select3.i.i = select i1 %.inv.i.i, double %i.jl, double 0.000000e+00
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment12base_descent.exit

_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment12base_descent.exit: ; preds = %bb.ce, %bb.cd, %bb.cc, %bb.cb
  %.sroa.0.0.i258 = phi double [ %i.iw, %bb.cb ], [ %spec.store.select3.i.i, %bb.ce ], [ %spec.store.select1.i.i, %bb.cd ], [ 0.000000e+00, %bb.cc ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke void @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout5frameNtB2_5Frame4soft(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.j, double noundef %.sroa.055.0, double noundef %spec.store.select27329, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @624)
          to label %bb.cf unwind label %.thread

bb.cf:                                            ; preds = %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment12base_descent.exit
  store i64 1, ptr %i.j, align 8
  %i.jm = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store double %spec.store.select28, ptr %i.jm, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(304) %i.h, ptr noundef nonnull align 16 dereferenceable(304) %i.u, i64 304, i1 false)
  invoke fastcc void @_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment10into_frame(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.i, ptr noalias nofree noundef readonly align 16 captures(address) dereferenceable(304) %i.h)
          to label %bb.cg unwind label %bb.cp

.body259:                                         ; preds = %bb.ci
  %lpad.thr_comm.split-lp347 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit266

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  invoke void @_RNvMs_NtNtCsdaEETE4DqmE_13typst_library6layout5frameNtB4_5Frame10push_frame(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.j, double noundef %.sroa.0163.0, double noundef %.sroa.362.0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.i)
          to label %bb.ch unwind label %bb.cp

bb.ch:                                            ; preds = %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(48) %i.n, i64 48, i1 false)
  invoke void @_RNvMs_NtNtCsdaEETE4DqmE_13typst_library6layout5frameNtB4_5Frame10push_frame(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.j, double noundef %.sroa.056.0, double noundef %.sroa.3.0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.g)
          to label %bb.ci unwind label %bb.cp

bb.ci:                                            ; preds = %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %i.j, i64 48, i1 false)
  %i.jn = getelementptr inbounds nuw i8, ptr %3, i64 45
  %.val = load i8, ptr %i.jn, align 1
  %i.jo = getelementptr inbounds nuw i8, ptr %3, i64 46
  %.val194 = load i8, ptr %i.jo, align 2
  invoke fastcc void @_RNvMs1_NtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB5_13FrameFragment3new(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %i.f, i8 %.val, i8 %.val194, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %2, ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.e)
          to label %bb.cj unwind label %.body259

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.jp = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !44248
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.jp, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false)
  %i.jq = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.jr = load double, ptr %i.jq, align 8, !alias.scope !44249, !noalias !44250, !noundef !41
  %i.js = getelementptr inbounds nuw i8, ptr %i.f, i64 98
  %i.jt = load i8, ptr %i.js, align 2, !range !136, !alias.scope !44249, !noalias !44250, !noundef !41
  %i.ju = getelementptr inbounds nuw i8, ptr %i.f, i64 97
  %i.jv = load i8, ptr %i.ju, align 1, !range !116, !alias.scope !44249, !noalias !44250, !noundef !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.experimental.noalias.scope.decl(metadata !44251)
  %i.jw = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !44252)
  call void @llvm.experimental.noalias.scope.decl(metadata !44253)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store double %i.jr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !44254, !noalias !44251
  %.sroa.5.0..sroa_idx272 = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store double %.sroa.0.0.i257, ptr %.sroa.5.0..sroa_idx272, align 16, !alias.scope !44254, !noalias !44251
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store double %.sroa.0.0.i258, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !44254, !noalias !44251
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store double %.sroa.0.0.i253339, ptr %.sroa.7.0..sroa_idx, align 16, !alias.scope !44254, !noalias !44251
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store <2 x double> %i.by, ptr %.sroa.8.0..sroa_idx, align 8, !alias.scope !44254, !noalias !44251
  %.sroa.10273.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store i8 %.sroa.064.0366, ptr %.sroa.10273.0..sroa_idx, align 8, !alias.scope !44254, !noalias !44251
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 105
  store i8 %i.jv, ptr %.sroa.11.0..sroa_idx, align 1, !alias.scope !44254, !noalias !44251
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 106
  store i8 %i.jt, ptr %.sroa.12.0..sroa_idx, align 2, !alias.scope !44254, !noalias !44251
  store i64 2, ptr %i.a, align 16, !alias.scope !44255, !noalias !44256
  call void @llvm.experimental.noalias.scope.decl(metadata !44257)
  %i.jx = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.jy = load i64, ptr %i.jx, align 8, !alias.scope !44258, !noalias !44259, !noundef !41 ; 3 uses
  %i.jz = load i64, ptr %i.jw, align 8, !range !45, !alias.scope !44258, !noalias !44259, !noundef !41
  %i.ka = icmp eq i64 %i.jy, %i.jz
  br i1 %i.ka, label %bb.ck, label %bb.cn

bb.ck:                                            ; preds = %bb.cj
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.jw)
          to label %bb.cn unwind label %bb.cl, !noalias !44259

bb.cl:                                            ; preds = %bb.ck
  %i.kb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEBH_(ptr noalias nofree noundef nonnull align 16 dereferenceable(304) %i.a) #54
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit266 unwind label %bb.cm, !noalias !44260

bb.cm:                                            ; preds = %bb.cl
  %i.kc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55, !noalias !44260
  unreachable

bb.cn:                                            ; preds = %bb.ck, %bb.cj
  %i.kd = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ke = load ptr, ptr %i.kd, align 8, !alias.scope !44258, !noalias !44259, !nonnull !41, !noundef !41
  %i.kf = getelementptr inbounds nuw [304 x i8], ptr %i.ke, i64 %i.jy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(304) %i.kf, ptr noundef nonnull align 16 dereferenceable(304) %i.a, i64 304, i1 false), !noalias !44260
  %i.kg = add i64 %i.jy, 1
  store i64 %i.kg, ptr %i.jx, align 8, !alias.scope !44258, !noalias !44259
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !44248
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.experimental.noalias.scope.decl(metadata !44261)
  call void @llvm.experimental.noalias.scope.decl(metadata !44262)
  call void @llvm.experimental.noalias.scope.decl(metadata !44263)
  %i.kh = load ptr, ptr %i.s, align 8, !alias.scope !44264, !nonnull !41, !noundef !41
  %i.ki = atomicrmw sub ptr %i.kh, i64 1 release, align 8, !noalias !44264
  %i.kj = icmp eq i64 %i.ki, 1
  br i1 %i.kj, label %bb.co, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceECs7tN9tvpkfrg_12typst_layout.exit262

bb.co:                                            ; preds = %bb.cn
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library4text4font17FontInstanceInnerE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.s) #58
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceECs7tN9tvpkfrg_12typst_layout.exit262 unwind label %.body

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceECs7tN9tvpkfrg_12typst_layout.exit262: ; preds = %bb.cn, %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.kk = load ptr, ptr %i.v, align 8, !alias.scope !44265, !noundef !41
  %i.kl = icmp eq ptr %i.kk, null
  br i1 %i.kl, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit270, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit270.sink.split

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit270.sink.split: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceECs7tN9tvpkfrg_12typst_layout.exit262, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEBH_.exit
  %.sroa.4.0.ph = phi i64 [ %.sroa.4.1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEBH_.exit ], [ undef, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceECs7tN9tvpkfrg_12typst_layout.exit262 ]
  %.sroa.0.0.ph = phi ptr [ %.sroa.0.1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEBH_.exit ], [ null, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceECs7tN9tvpkfrg_12typst_layout.exit262 ]
end_hunk_4
begin_hunk_5_@_RNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts13layout_primes:bb.a
  store i8 %i.bj, ptr %.sroa.11.0..sroa_idx, align 1, !alias.scope !44978, !noalias !44975
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 106
  store i8 %i.bh, ptr %.sroa.12.0..sroa_idx, align 2, !alias.scope !44978, !noalias !44975
  store i64 2, ptr %i.a, align 16, !alias.scope !44979, !noalias !44980
  call void @llvm.experimental.noalias.scope.decl(metadata !44981)
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !44982, !noalias !44983, !noundef !41 ; 3 uses
  %i.bs = load i64, ptr %i.bm, align 8, !range !45, !alias.scope !44982, !noalias !44983, !noundef !41
  %i.bt = icmp eq i64 %i.br, %i.bs
  br i1 %i.bt, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bm)
          to label %bb.t unwind label %bb.r, !noalias !44983

bb.r:                                             ; preds = %bb.q
  %i.bu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEBH_(ptr noalias nofree noundef nonnull align 16 dereferenceable(304) %i.a) #54
          to label %.body.thread unwind label %bb.s, !noalias !44984

bb.s:                                             ; preds = %bb.r
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55, !noalias !44984
  unreachable

bb.t:                                             ; preds = %bb.q, %bb.p
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bx = load ptr, ptr %i.bw, align 8, !alias.scope !44982, !noalias !44983, !nonnull !41, !noundef !41
  %i.by = getelementptr inbounds nuw [304 x i8], ptr %i.bx, i64 %i.br
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(304) %i.by, ptr noundef nonnull align 16 dereferenceable(304) %i.a, i64 304, i1 false), !noalias !44984
  %i.bz = add i64 %i.br, 1
  store i64 %i.bz, ptr %i.bq, align 8, !alias.scope !44982, !noalias !44983
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !44972
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !44985)
  %i.ca = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !44986)
  call void @llvm.experimental.noalias.scope.decl(metadata !44987)
  %i.cb = load ptr, ptr %i.ca, align 8, !alias.scope !44988, !nonnull !41, !noundef !41
  %i.cc = atomicrmw sub ptr %i.cb, i64 1 release, align 8, !noalias !44988
  %i.cd = icmp eq i64 %i.cc, 1
  br i1 %i.cd, label %bb.u, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit30

bb.u:                                             ; preds = %bb.t
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashINtNtB7_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1L_5frame9FrameItemEEEE9drop_slowB1N_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ca) #58
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit30 unwind label %bb.f

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit30: ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.ce = load ptr, ptr %i.i, align 8, !alias.scope !44989, !noundef !41
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit27, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit27.sink.split

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit27.sink.split: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit30, %bb.h
  call void @_RNvXs_CsiNFdexS2GJ6_12typst_timingNtB4_11TimingScopeNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.i)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit27

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit27: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit27.sink.split, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit30, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

bb.v:                                             ; preds = %bb.n
  %i.cg = trunc nuw i64 %i.ay to i1
  %.sroa.5.0.i = select i1 %i.cg, double %i.az, double undef
  %i.ch = load i8, ptr %i.ap, align 8, !range !54, !alias.scope !44970, !noalias !44969, !noundef !41
  store <2 x double> %i.ax, ptr %i.aq, align 8, !alias.scope !44969, !noalias !44970
  store i64 %i.ay, ptr %i.d, align 8, !alias.scope !44969, !noalias !44970
  store double %.sroa.5.0.i, ptr %i.ar, align 8, !alias.scope !44969, !noalias !44970
  store ptr %i.ba, ptr %i.as, align 8, !alias.scope !44969, !noalias !44970
  store i8 %i.ch, ptr %i.at, align 8, !alias.scope !44969, !noalias !44970
  %i.ci = uitofp i64 %.sroa.015.036 to double
  %i.cj = fmul nnan double %i.ci, 5.000000e-01
  %i.ck = extractelement <2 x double> %i.ax, i64 0
  %i.cl = fmul double %i.cj, %i.ck                ; 2 uses
  %.inv23 = fcmp ord double %i.cl, 0.000000e+00
  %spec.store.select2 = select i1 %.inv23, double %i.cl, double 0.000000e+00
  invoke void @_RNvMs_NtNtCsdaEETE4DqmE_13typst_library6layout5frameNtB4_5Frame10push_frame(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.e, double noundef %spec.store.select2, double noundef 0.000000e+00, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.d)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %exitcond.not = icmp eq i64 %i.aw, %i.w
  br i1 %exitcond.not, label %._crit_edge, label %bb.n

bb.x:                                             ; preds = %bb.v
  %i.cm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !44990)
  %i.cn = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !44991)
  call void @llvm.experimental.noalias.scope.decl(metadata !44992)
  %i.co = load ptr, ptr %i.cn, align 8, !alias.scope !44993, !nonnull !41, !noundef !41
  %i.cp = atomicrmw sub ptr %i.co, i64 1 release, align 8, !noalias !44993
  %i.cq = icmp eq i64 %i.cp, 1
  br i1 %i.cq, label %bb.y, label %.body.thread

bb.y:                                             ; preds = %bb.x
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashINtNtB7_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1L_5frame9FrameItemEEEE9drop_slowB1N_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cn) #58
          to label %.body.thread unwind label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.k, %bb.e
  %i.cr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit, %bb.e
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts14layout_scripts(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(1008) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(80) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 9 uses
  %i.e = alloca [48 x i8], align 8                ; 6 uses
  %i.f = alloca [8 x i8], align 8                 ; 5 uses
  %i.g = alloca [16 x i8], align 16               ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [304 x i8], align 16              ; 6 uses
  %i.k = alloca [48 x i8], align 8                ; 4 uses
  %i.l = alloca [104 x i8], align 8               ; 4 uses
  %i.m = alloca [48 x i8], align 8                ; 4 uses
  %i.n = alloca [304 x i8], align 16              ; 6 uses
  %i.o = alloca [48 x i8], align 8                ; 4 uses
  %i.p = alloca [304 x i8], align 16              ; 6 uses
  %i.q = alloca [304 x i8], align 16              ; 4 uses
  %i.r = alloca [48 x i8], align 8                ; 4 uses
  %i.s = alloca [304 x i8], align 16              ; 6 uses
  %i.t = alloca [304 x i8], align 16              ; 4 uses
  %i.u = alloca [48 x i8], align 8                ; 4 uses
  %i.v = alloca [304 x i8], align 16              ; 6 uses
  %i.w = alloca [304 x i8], align 16              ; 4 uses
  %i.x = alloca [48 x i8], align 8                ; 4 uses
  %i.y = alloca [304 x i8], align 16              ; 6 uses
  %i.z = alloca [304 x i8], align 16              ; 4 uses
  %i.aa = alloca [48 x i8], align 8               ; 4 uses
  %i.ab = alloca [304 x i8], align 16             ; 6 uses
  %i.ac = alloca [48 x i8], align 8               ; 4 uses
  %i.ad = alloca [48 x i8], align 8               ; 14 uses
  %i.ae = alloca [8 x i8], align 8                ; 25 uses
  %i.af = alloca [304 x i8], align 16             ; 26 uses
  %i.ag = alloca [304 x i8], align 16             ; 21 uses
  %i.ah = alloca [304 x i8], align 16             ; 26 uses
  %i.ai = alloca [304 x i8], align 16             ; 27 uses
  %i.aj = alloca [304 x i8], align 16             ; 19 uses
  %i.ak = alloca [304 x i8], align 16             ; 24 uses
  %i.al = alloca [24 x i8], align 8               ; 4 uses
  %i.am = alloca [24 x i8], align 8               ; 4 uses
  %i.an = alloca [24 x i8], align 8               ; 4 uses
  %i.ao = alloca [24 x i8], align 8               ; 4 uses
  %i.ap = alloca [24 x i8], align 8               ; 4 uses
  %i.aq = alloca [24 x i8], align 8               ; 4 uses
  %i.ar = alloca [24 x i8], align 8               ; 4 uses
  %i.as = alloca [304 x i8], align 16             ; 7 uses
  %i.at = alloca [304 x i8], align 16             ; 7 uses
  %i.au = alloca [304 x i8], align 16             ; 7 uses
  %i.av = alloca [304 x i8], align 16             ; 7 uses
  %i.aw = alloca [304 x i8], align 16             ; 7 uses
  %i.ax = alloca [304 x i8], align 16             ; 7 uses
  %i.ay = alloca [304 x i8], align 16             ; 42 uses
  %i.az = alloca [24 x i8], align 8               ; 7 uses
  %.sroa.8254 = alloca [280 x i8], align 8        ; 5 uses
  %.sroa.11243 = alloca [280 x i8], align 8       ; 5 uses
  %i.ba = alloca [304 x i8], align 16             ; 11 uses
  %.sroa.8213 = alloca [280 x i8], align 8        ; 5 uses
  %.sroa.11202 = alloca [280 x i8], align 8       ; 5 uses
  %i.bb = alloca [304 x i8], align 16             ; 13 uses
  %.sroa.8172 = alloca [280 x i8], align 8        ; 5 uses
  %.sroa.11161 = alloca [280 x i8], align 8       ; 5 uses
  %i.bc = alloca [304 x i8], align 16             ; 17 uses
  %i.bd = alloca [304 x i8], align 16             ; 26 uses
  %.sroa.8131 = alloca [280 x i8], align 8        ; 5 uses
  %.sroa.11120 = alloca [280 x i8], align 8       ; 5 uses
  %i.be = alloca [304 x i8], align 16             ; 19 uses
  %.sroa.0 = alloca [1520 x i8], align 16         ; 10 uses
  %.sroa.18 = alloca [280 x i8], align 8          ; 6 uses
  %i.bf = alloca [304 x i8], align 16             ; 8 uses
  %i.bg = alloca [304 x i8], align 16             ; 15 uses
  %.sroa.869 = alloca [280 x i8], align 8         ; 5 uses
  %.sroa.1158 = alloca [280 x i8], align 8        ; 5 uses
  %i.bh = alloca [304 x i8], align 16             ; 17 uses
  %.sroa.830 = alloca [280 x i8], align 8         ; 5 uses
  %.sroa.11 = alloca [280 x i8], align 8          ; 5 uses
  %i.bi = alloca [304 x i8], align 16             ; 14 uses
  %i.bj = alloca [32 x i8], align 8               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj)
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bl = load i64, ptr %i.bk, align 8, !range !53, !noundef !41
  %i.bm = load atomic i8, ptr @_RNvCsiNFdexS2GJ6_12typst_timing7ENABLED monotonic, align 1
  %.not = icmp eq i8 %i.bm, 0
  %.sink.i.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.ay, i64 56
  %.sink.i.i.sroa.gep468 = getelementptr inbounds nuw i8, ptr %i.ay, i64 232
  %.sink36.i.i.i.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 13 uses
  %.sink36.i.i.i.i.sroa.gep469 = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 4 uses
  %.sink19.i.i.i.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.ay, i64 80 ; 2 uses
  %.sink19.i.i.i.i.sroa.gep471 = getelementptr inbounds nuw i8, ptr %i.ay, i64 264 ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.bj, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @_RNvMCsiNFdexS2GJ6_12typst_timingNtB2_11TimingScope8new_impl(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.bj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @637, i64 noundef 19, i64 noundef %i.bl)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.830)
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 16, !range !83, !noundef !41
  %.not365 = icmp eq i64 %i.bo, -1
  br i1 %.not365, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !45419
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull readonly align 8 dereferenceable(24) %2, i64 24, i1 false), !noalias !45420
  invoke fastcc void @_RNvMNtCs7tN9tvpkfrg_12typst_layout4mathNtB2_11MathContext20layout_into_fragment(ptr noalias nofree noundef nonnull align 16 captures(none) dereferenceable(304) %i.ax, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %1, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(144) %i.bn, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.aq)
          to label %bb.i unwind label %bb.h, !inline_history !44999

bb.f:                                             ; preds = %bb.d, %bb.k
  %.sroa.915.0 = phi i64 [ %.sroa.727.0.copyload, %bb.k ], [ undef, %bb.d ]
  %.sroa.7.0 = phi ptr [ %.sroa.624.0.copyload, %bb.k ], [ undef, %bb.d ]
  %.sroa.08.0 = phi i64 [ %.sroa.022.0.copyload, %bb.k ], [ -1, %bb.d ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.830)
  %.sroa.634.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 24 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.sroa.634.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(280) %.sroa.11, i64 280, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  store i64 %.sroa.08.0, ptr %i.bi, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 2 uses
  store ptr %.sroa.7.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 2 uses
  store i64 %.sroa.915.0, ptr %.sroa.5.0..sroa_idx, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1158)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.869)
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 16, !range !83, !noundef !41
  %.not366 = icmp eq i64 %i.bq, -1
  br i1 %.not366, label %bb.m, label %bb.l

.thread503:                                       ; preds = %bb.ld, %bb.lf, %.thread495, %bb.on, %bb.n, %bb.h
  %.pn390 = phi { ptr, i32 } [ %i.bt, %bb.h ], [ %.pn388, %bb.on ], [ %.pn388, %bb.n ], [ %lpad.thr_comm.split-lp, %.thread495 ], [ %.pn243.i, %bb.lf ], [ %.pn243.i, %bb.ld ]
  %i.br = load ptr, ptr %i.bj, align 8, !alias.scope !45421, !noundef !41
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit, label %bb.g

bb.g:                                             ; preds = %.thread503
  invoke void @_RNvXs_CsiNFdexS2GJ6_12typst_timingNtB4_11TimingScopeNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bj)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit unwind label %bb.mr

bb.h:                                             ; preds = %bb.ol, %bb.oj, %bb.oi, %bb.e
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %.thread503

bb.i:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !45419
  %.sroa.022.0.copyload = load i64, ptr %i.ax, align 16 ; 2 uses
  %.sroa.624.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.sroa.624.0.copyload = load ptr, ptr %.sroa.624.0..sroa_idx, align 8 ; 3 uses
  %.sroa.727.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %.sroa.727.0.copyload = load i64, ptr %.sroa.727.0..sroa_idx, align 16 ; 2 uses
  %.sroa.830.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.sroa.830, ptr noundef nonnull align 8 dereferenceable(280) %.sroa.830.0..sroa_idx, i64 280, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  %i.bu = icmp eq i64 %.sroa.022.0.copyload, -1
  br i1 %i.bu, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.624.0.copyload) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.830)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB13_.exit463

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.sroa.11, ptr noundef nonnull align 8 dereferenceable(280) %.sroa.830, i64 280, i1 false)
  br label %bb.f

bb.l:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !45422
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull readonly align 8 dereferenceable(24) %2, i64 24, i1 false), !noalias !45423
  invoke fastcc void @_RNvMNtCs7tN9tvpkfrg_12typst_layout4mathNtB2_11MathContext20layout_into_fragment(ptr noalias nofree noundef nonnull align 16 captures(none) dereferenceable(304) %i.aw, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %1, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(144) %i.bp, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ap)
          to label %bb.p unwind label %bb.o, !inline_history !45007

bb.m:                                             ; preds = %bb.f, %bb.r
  %i.bv = phi i64 [ %.pre, %bb.r ], [ %.sroa.08.0, %bb.f ] ; 2 uses
  %.sroa.953.0 = phi i64 [ %.sroa.766.0.copyload, %bb.r ], [ undef, %bb.f ]
  %.sroa.748.0 = phi ptr [ %.sroa.663.0.copyload, %bb.r ], [ undef, %bb.f ] ; 2 uses
  %.sroa.045.0 = phi i64 [ %.sroa.061.0.copyload, %bb.r ], [ -1, %bb.f ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.869)
  %.sroa.675.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 24 ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.sroa.675.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(280) %.sroa.1158, i64 280, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1158)
  store i64 %.sroa.045.0, ptr %i.bh, align 16
  %.sroa.473.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr %.sroa.748.0, ptr %.sroa.473.0..sroa_idx, align 8
  %.sroa.574.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 16 ; 3 uses
  store i64 %.sroa.953.0, ptr %.sroa.574.0..sroa_idx, align 16
  %.not367 = icmp eq i64 %i.bv, -1
  %i.bw = ptrtoint ptr %.sroa.748.0 to i64
  %i.bx = bitcast i64 %i.bw to double
  br i1 %.not367, label %_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts14layout_scriptss0_0B7_.exit, label %bb.s

bb.n:                                             ; preds = %bb.om, %bb.w, %bb.o
  %.sroa.0261.0 = phi i8 [ %.sroa.0261.1, %bb.o ], [ %.sroa.0261.2474, %bb.om ], [ %.sroa.0261.4484, %bb.w ]
  %.pn388 = phi { ptr, i32 } [ %i.bz, %bb.o ], [ %.pn386475, %bb.om ], [ %.pn384485, %bb.w ] ; 2 uses
  %i.by = trunc nuw i8 %.sroa.0261.0 to i1
  br i1 %i.by, label %bb.on, label %.thread503

bb.o:                                             ; preds = %bb.oe, %bb.oc, %bb.ob, %bb.aj, %bb.ah, %bb.ag, %bb.l
  %.sroa.0261.1 = phi i8 [ 1, %bb.aj ], [ %.sroa.0261.7, %bb.oe ], [ 1, %bb.l ], [ 1, %bb.ag ], [ 1, %bb.ah ], [ %.sroa.0261.7, %bb.ob ], [ %.sroa.0261.7, %bb.oc ]
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.p:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !45422
  %.sroa.061.0.copyload = load i64, ptr %i.aw, align 16 ; 2 uses
  %.sroa.663.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.sroa.663.0.copyload = load ptr, ptr %.sroa.663.0..sroa_idx, align 8 ; 3 uses
  %.sroa.766.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %.sroa.766.0.copyload = load i64, ptr %.sroa.766.0..sroa_idx, align 16 ; 2 uses
  %.sroa.869.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.sroa.869, ptr noundef nonnull align 8 dereferenceable(280) %.sroa.869.0..sroa_idx, i64 280, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  %i.ca = icmp eq i64 %.sroa.061.0.copyload, -1
  br i1 %i.ca, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.663.0.copyload) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.869)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1158)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB13_.exit

bb.r:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.sroa.1158, ptr noundef nonnull align 8 dereferenceable(280) %.sroa.869, i64 280, i1 false)
  %.pre = load i64, ptr %i.bi, align 16, !range !83
  br label %bb.m

bb.s:                                             ; preds = %bb.m
  %i.cb = call i64 @llvm.usub.sat.i64(i64 %i.bv, i64 1)
  switch i64 %i.cb, label %default.unreachable.i [
    i64 0, label %bb.t
    i64 1, label %bb.u
    i64 2, label %bb.v
    i64 3, label %_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts14layout_scriptss0_0B7_.exit
  ]

default.unreachable.i:                            ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.s
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bi, i64 64
  %i.cd = load double, ptr %i.cc, align 16, !alias.scope !45424, !noundef !41
  br label %_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts14layout_scriptss0_0B7_.exit

bb.u:                                             ; preds = %bb.s
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.cf = load double, ptr %i.ce, align 16, !alias.scope !45424, !noundef !41
  br label %_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts14layout_scriptss0_0B7_.exit

bb.v:                                             ; preds = %bb.s
  %i.cg = load double, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !45424, !noundef !41
  br label %_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts14layout_scriptss0_0B7_.exit

_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts14layout_scriptss0_0B7_.exit: ; preds = %bb.v, %bb.u, %bb.t, %bb.s, %bb.m
  %.sroa.076.0 = phi double [ 0.000000e+00, %bb.m ], [ %i.cd, %bb.t ], [ %i.cf, %bb.u ], [ %i.cg, %bb.v ], [ 0.000000e+00, %bb.s ]
  %.not368 = icmp eq i64 %.sroa.045.0, -1
  br i1 %.not368, label %_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts14layout_scriptss1_0B7_.exit, label %bb.x

bb.w:                                             ; preds = %.thread
  br i1 %.sroa.0260.2483, label %bb.om, label %bb.n

.split.thread:                                    ; preds = %bb.nx, %_RNvMs1_NtNtNtCsdaEETE4DqmE_13typst_library4math2ir4itemNtB5_8MathItem23set_stretch_relative_to.exit, %_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts14layout_scriptss1_0B7_.exit, %bb.nu, %bb.nv
  %.sroa.0261.3.ph = phi i8 [ %.sroa.0261.7, %bb.nv ], [ %.sroa.0261.7, %bb.nu ], [ 1, %_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts14layout_scriptss1_0B7_.exit ], [ 1, %_RNvMs1_NtNtNtCsdaEETE4DqmE_13typst_library4math2ir4itemNtB5_8MathItem23set_stretch_relative_to.exit ], [ %.sroa.0261.7, %bb.nx ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb.om

.thread495:                                       ; preds = %bb.mn, %bb.mo, %bb.mq
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread503

bb.x:                                             ; preds = %_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts14layout_scriptss0_0B7_.exit
  %i.ch = call i64 @llvm.usub.sat.i64(i64 %.sroa.045.0, i64 1)
  switch i64 %i.ch, label %default.unreachable.i395 [
    i64 0, label %bb.y
    i64 1, label %bb.z
end_hunk_5
begin_hunk_6_@_RNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts14layout_scripts:bb.a
  %i.gz = load i64, ptr %i.af, align 16, !range !83, !noalias !45461
  %.not.i.i278.3.i = icmp eq i64 %i.gz, -1
  %or.cond237.i = select i1 %or.cond236.i, i1 %.not.i.i278.3.i, i1 false
  br i1 %or.cond237.i, label %bb.et, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterRINtNtBb_6option6OptionNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtB1h_7scripts18layout_attachments0EB1j_.exit.i

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterRINtNtBb_6option6OptionNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtB1h_7scripts18layout_attachments0EB1j_.exit.i: ; preds = %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_clonedNtNtNtBa_4math8equation12EquationElemKh8_ECs7tN9tvpkfrg_12typst_layout.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !45491)
  call void @llvm.experimental.noalias.scope.decl(metadata !45492)
  %i.ha = load ptr, ptr %i.ae, align 8, !alias.scope !45491, !noalias !45493, !nonnull !41, !noundef !41 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 184 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ha, i64 192
  %i.hd = load atomic i32, ptr %i.hc acquire, align 4, !noalias !45494
  %i.he = icmp eq i32 %i.hd, 0
  br i1 %i.he, label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit.i.i, label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit.sink.split.i.i, !prof !43

_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit.sink.split.i.i: ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterRINtNtBb_6option6OptionNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtB1h_7scripts18layout_attachments0EB1j_.exit.i
  invoke fastcc void @_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE10initializeNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout(ptr noundef nonnull align 8 %i.hb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ae)
          to label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !45461

_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit.i.i: ; preds = %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit.sink.split.i.i, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterRINtNtBb_6option6OptionNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtB1h_7scripts18layout_attachments0EB1j_.exit.i
  %i.hf = load ptr, ptr %i.hb, align 8, !noalias !45493, !nonnull !41, !noundef !41
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 %.sroa.0.1.i.i
  %.sroa.0232.0.i.i = load double, ptr %i.hg, align 8, !noalias !45493, !noundef !41
  %i.hh = fmul double %.sroa.0.0.i.i, %.sroa.0232.0.i.i ; 2 uses
  %i.hi = call double @llvm.fabs.f64(double %i.hh)
  %i.hj = fcmp one double %i.hi, +inf
  %spec.store.select33.i.i = select i1 %i.hj, double %i.hh, double 0.000000e+00
  %i.hk = load ptr, ptr %i.ae, align 8, !alias.scope !45491, !noalias !45493, !nonnull !41, !noundef !41 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 184 ; 14 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hk, i64 192 ; 7 uses
  %i.hn = load atomic i32, ptr %i.hm acquire, align 4, !noalias !45495
  %i.ho = icmp eq i32 %i.hn, 0
  br i1 %i.ho, label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit279.i.i, label %bb.ct, !prof !43

bb.ct:                                            ; preds = %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit.i.i
  invoke fastcc void @_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE10initializeNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout(ptr noundef nonnull align 8 %i.hl, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ae)
          to label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit279.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !45461

_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit279.i.i: ; preds = %bb.ct, %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit.i.i
  %i.hp = load ptr, ptr %i.hl, align 8, !noalias !45493, !nonnull !41, !noundef !41
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 80
  %i.hr = load double, ptr %i.hq, align 8, !noalias !45493, !noundef !41
  %i.hs = fmul double %.sroa.0.0.i.i, %i.hr       ; 2 uses
  %i.ht = call double @llvm.fabs.f64(double %i.hs)
  %i.hu = fcmp one double %i.ht, +inf
  %spec.store.select37.i.i = select i1 %i.hu, double %i.hs, double 0.000000e+00 ; 2 uses
  %i.hv = load atomic i32, ptr %i.hm acquire, align 8, !noalias !45496
  %i.hw = icmp eq i32 %i.hv, 0
  br i1 %i.hw, label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit280.i.i, label %bb.cu, !prof !43

bb.cu:                                            ; preds = %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit279.i.i
  invoke fastcc void @_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE10initializeNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout(ptr noundef nonnull align 8 %i.hl, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ae)
          to label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit280.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !45461

_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit280.i.i: ; preds = %bb.cu, %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit279.i.i
  %i.hx = load ptr, ptr %i.hl, align 8, !noalias !45493, !nonnull !41, !noundef !41
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 104
  %i.hz = load double, ptr %i.hy, align 8, !noalias !45493, !noundef !41
  %i.ia = fmul double %.sroa.0.0.i.i, %i.hz       ; 2 uses
  %i.ib = call double @llvm.fabs.f64(double %i.ia)
  %i.ic = fcmp one double %i.ib, +inf
  %spec.store.select34.i.i = select i1 %i.ic, double %i.ia, double 0.000000e+00
  %i.id = load atomic i32, ptr %i.hm acquire, align 8, !noalias !45497
  %i.ie = icmp eq i32 %i.id, 0
  br i1 %i.ie, label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit281.i.i, label %bb.cv, !prof !43

bb.cv:                                            ; preds = %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit280.i.i
  invoke fastcc void @_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE10initializeNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout(ptr noundef nonnull align 8 %i.hl, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ae)
          to label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit281.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !45461

_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit281.i.i: ; preds = %bb.cv, %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit280.i.i
  %i.if = load ptr, ptr %i.hl, align 8, !noalias !45493, !nonnull !41, !noundef !41
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 88
  %i.ih = load double, ptr %i.ig, align 8, !noalias !45493, !noundef !41
  %i.ii = fmul double %.sroa.0.0.i.i, %i.ih       ; 2 uses
  %i.ij = call double @llvm.fabs.f64(double %i.ii)
  %i.ik = fcmp one double %i.ij, +inf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !45494
  %i.il = load atomic i32, ptr %i.hm acquire, align 8, !noalias !45498
  %i.im = icmp eq i32 %i.il, 0
  br i1 %i.im, label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit282.i.i, label %bb.cw, !prof !43

bb.cw:                                            ; preds = %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit281.i.i
  invoke fastcc void @_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE10initializeNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout(ptr noundef nonnull align 8 %i.hl, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ae)
          to label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit282.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !45461

_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit282.i.i: ; preds = %bb.cw, %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit281.i.i
  %i.in = load ptr, ptr %i.hl, align 8, !noalias !45493, !nonnull !41, !noundef !41
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 96
  %i.ip = load double, ptr %i.io, align 8, !noalias !45493, !noundef !41
  %i.iq = fmul double %.sroa.0.0.i.i, %i.ip       ; 2 uses
  %i.ir = call double @llvm.fabs.f64(double %i.iq)
  %i.is = fcmp one double %i.ir, +inf
  %spec.store.select35.i.i = select i1 %i.is, double %i.iq, double 0.000000e+00 ; 2 uses
  store double %spec.store.select35.i.i, ptr %i.f, align 8, !noalias !45494
  %i.it = load atomic i32, ptr %i.hm acquire, align 8, !noalias !45499
  %i.iu = icmp eq i32 %i.it, 0
  br i1 %i.iu, label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit283.i.i, label %bb.cx, !prof !43

bb.cx:                                            ; preds = %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit282.i.i
  invoke fastcc void @_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE10initializeNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout(ptr noundef nonnull align 8 %i.hl, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ae)
          to label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit283.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !45461

_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit283.i.i: ; preds = %bb.cx, %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit282.i.i
  %i.iv = load ptr, ptr %i.hl, align 8, !noalias !45493, !nonnull !41, !noundef !41
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 40
  %i.ix = load double, ptr %i.iw, align 8, !noalias !45493, !noundef !41
  %i.iy = fmul double %.sroa.0.0.i.i, %i.ix       ; 2 uses
  %i.iz = call double @llvm.fabs.f64(double %i.iy)
  %i.ja = fcmp one double %i.iz, +inf
  %spec.store.select38.i.i = select i1 %i.ja, double %i.iy, double 0.000000e+00
  %i.jb = load atomic i32, ptr %i.hm acquire, align 8, !noalias !45500
  %i.jc = icmp eq i32 %i.jb, 0
  br i1 %i.jc, label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit284.i.i, label %bb.cy, !prof !43

bb.cy:                                            ; preds = %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit283.i.i
  invoke fastcc void @_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE10initializeNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout(ptr noundef nonnull align 8 %i.hl, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ae)
          to label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit284.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !45461

_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit284.i.i: ; preds = %bb.cy, %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit283.i.i
  %i.jd = load ptr, ptr %i.hl, align 8, !noalias !45493, !nonnull !41, !noundef !41
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 48
  %i.jf = load double, ptr %i.je, align 8, !noalias !45493, !noundef !41
  %i.jg = fmul double %.sroa.0.0.i.i, %i.jf       ; 2 uses
  %i.jh = call double @llvm.fabs.f64(double %i.jg)
  %i.ji = fcmp one double %i.jh, +inf
  %i.jj = load atomic i32, ptr %i.hm acquire, align 8, !noalias !45501
  %i.jk = icmp eq i32 %i.jj, 0
  br i1 %i.jk, label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit285.i.i, label %bb.cz, !prof !43

bb.cz:                                            ; preds = %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit284.i.i
  invoke fastcc void @_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE10initializeNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout(ptr noundef nonnull align 8 %i.hl, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ae)
          to label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit285.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !45461

_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit285.i.i: ; preds = %bb.cz, %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit284.i.i
  %i.jl = load ptr, ptr %i.hl, align 8, !noalias !45493, !nonnull !41, !noundef !41
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 56
  %i.jn = load double, ptr %i.jm, align 8, !noalias !45493, !noundef !41
  %i.jo = fmul double %.sroa.0.0.i.i, %i.jn       ; 2 uses
  %i.jp = call double @llvm.fabs.f64(double %i.jo)
  %i.jq = fcmp one double %i.jp, +inf
  %spec.store.select40.i.i = select i1 %i.jq, double %i.jo, double 0.000000e+00
  %i.jr = load i64, ptr %i.ay, align 16, !range !95, !alias.scope !45502, !noalias !45503, !noundef !41 ; 5 uses
  %i.js = call i64 @llvm.usub.sat.i64(i64 %i.jr, i64 1) ; 3 uses
  switch i64 %i.js, label %bb.dc [
    i64 0, label %bb.da
    i64 1, label %bb.db
  ]

bb.da:                                            ; preds = %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit285.i.i
  %i.jt = getelementptr inbounds nuw i8, ptr %i.ay, i64 288
  %i.ju = load i8, ptr %i.jt, align 16, !range !54, !alias.scope !45502, !noalias !45503, !noundef !41
  %i.jv = xor i8 %i.ju, 1
  br label %bb.dc

bb.db:                                            ; preds = %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit285.i.i
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ay, i64 104
  %i.jx = load i8, ptr %i.jw, align 8, !range !54, !alias.scope !45502, !noalias !45503, !noundef !41
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da, %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit285.i.i
  %.sroa.044.0.i.i = phi i8 [ %i.jx, %bb.db ], [ %i.jv, %bb.da ], [ 0, %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit285.i.i ] ; 2 uses
  %i.jy = load i64, ptr %i.ak, align 16, !range !83, !noalias !45493, !noundef !41
  %.not.i279.i = icmp eq i64 %i.jy, -1
  %i.jz = load i64, ptr %i.ai, align 16, !range !83, !noalias !45461
  %.not242.i.i = icmp eq i64 %i.jz, -1
  %or.cond159.i = select i1 %.not.i279.i, i1 %.not242.i.i, i1 false
  br i1 %or.cond159.i, label %.noexc292.i, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  switch i64 %i.js, label %bb.de [
    i64 1, label %.sink.split.i.i
    i64 0, label %bb.df
  ]

.noexc292.i:                                      ; preds = %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit295.i.i, %bb.dc
  %.sroa.0218.0.i.i = phi double [ 0.000000e+00, %bb.dc ], [ %i.le, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit295.i.i ]
  %i.ka = load i64, ptr %i.ah, align 16, !range !83, !noalias !45493, !noundef !41
  %.not248.i.i = icmp eq i64 %i.ka, -1
  %i.kb = load i64, ptr %i.af, align 16, !range !83, !noalias !45461
  %.not249.i.i = icmp eq i64 %i.kb, -1
  %or.cond160.i = select i1 %.not248.i.i, i1 %.not249.i.i, i1 false
  br i1 %or.cond160.i, label %.noexc296.i, label %bb.do

.sink.split.i.i:                                  ; preds = %bb.df, %bb.dd
  %spec.select.v.sink.i.i = phi i64 [ %spec.select.v.i.i, %bb.df ], [ 64, %bb.dd ]
  %spec.select.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 %spec.select.v.sink.i.i
  %.sroa.0238.1.i.i = load double, ptr %spec.select.i.i, align 8, !alias.scope !45502, !noalias !45503
  br label %bb.de

bb.de:                                            ; preds = %.sink.split.i.i, %bb.dd
  %.sroa.0238.0.i.i = phi double [ 0.000000e+00, %bb.dd ], [ %.sroa.0238.1.i.i, %.sink.split.i.i ]
  %i.kc = invoke noundef double @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout3absNtB2_3Abs3max(double noundef 0.000000e+00, double noundef %spec.store.select33.i.i)
          to label %.noexc289.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !45461

.noexc289.i:                                      ; preds = %bb.de
  %i.kd = trunc nuw i8 %.sroa.044.0.i.i to i1
  br i1 %i.kd, label %bb.dh, label %bb.dg

bb.df:                                            ; preds = %bb.dd
  %4 = trunc nuw i64 %i.jr to i1
  %spec.select.v.i.i = select i1 %4, i64 8, i64 72
  br label %.sink.split.i.i

bb.dg:                                            ; preds = %.noexc289.i
  %.neg.i.i = fneg double %i.ii
  %i.ke = select i1 %i.ik, double %.neg.i.i, double -0.000000e+00 ; 2 uses
  %.inv.i.i = fcmp ord double %i.ke, 0.000000e+00
  %spec.store.select8.i.i = select i1 %.inv.i.i, double %i.ke, double 0.000000e+00
  %i.kf = fadd double %spec.store.select8.i.i, %.sroa.0238.0.i.i ; 2 uses
  %.inv243.i.i = fcmp ord double %i.kf, 0.000000e+00
  %spec.store.select9.i.i = select i1 %.inv243.i.i, double %i.kf, double 0.000000e+00
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %.noexc289.i
  %.sroa.046.0.i.i = phi double [ %spec.store.select9.i.i, %bb.dg ], [ 0.000000e+00, %.noexc289.i ]
  %i.kg = invoke noundef double @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout3absNtB2_3Abs3max(double noundef %i.kc, double noundef %.sroa.046.0.i.i)
          to label %.noexc290.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !45461

.noexc290.i:                                      ; preds = %bb.dh
  %i.kh = load i64, ptr %i.ak, align 16, !range !83, !noalias !45493, !noundef !41 ; 3 uses
  %.not244.i.i = icmp eq i64 %i.kh, -1
  br i1 %.not244.i.i, label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit.i.i, label %bb.di

bb.di:                                            ; preds = %.noexc290.i
  %i.ki = call i64 @llvm.usub.sat.i64(i64 %i.kh, i64 1)
  switch i64 %i.ki, label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit.i.i [
    i64 0, label %bb.dj
    i64 1, label %bb.dk
  ]

bb.dj:                                            ; preds = %bb.di
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ak, i64 72
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit.sink.split.i.i

bb.dk:                                            ; preds = %bb.di
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %i.kl = load i64, ptr %.sink368.i.sroa.gep65.i, align 8, !range !49, !alias.scope !45504, !noalias !45493, !noundef !41
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit.sink.split.i.i

_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit.sink.split.i.i: ; preds = %bb.dk, %bb.dj
  %.sink369.i.i = phi i64 [ %i.kl, %bb.dk ], [ %i.kh, %bb.dj ]
  %.sink368.i.sroa.phi.i = phi ptr [ %.sink368.i.sroa.gep.i, %bb.dk ], [ %.sink368.i.sroa.gep65.i, %bb.dj ]
  %.sink366.in.i.i = phi ptr [ %i.kk, %bb.dk ], [ %i.kj, %bb.dj ]
  %.sink366.i.i = load double, ptr %.sink366.in.i.i, align 8, !alias.scope !45504, !noalias !45493, !noundef !41 ; 2 uses
  %i.km = trunc nuw i64 %.sink369.i.i to i1
  %i.kn = load double, ptr %.sink368.i.sroa.phi.i, align 8, !alias.scope !45504, !noalias !45493
  %.sroa.012.0.i.i.i = select i1 %i.km, double %i.kn, double %.sink366.i.i ; 2 uses
  %i.ko = fneg double %.sroa.012.0.i.i.i
  %i.kp = fcmp uno double %.sroa.012.0.i.i.i, 0.000000e+00
  %spec.store.select2.i.i.i = select i1 %i.kp, double 0.000000e+00, double %i.ko
  %i.kq = fadd double %.sink366.i.i, %spec.store.select2.i.i.i ; 2 uses
  %.inv.i.i.i = fcmp ord double %i.kq, 0.000000e+00
  %spec.store.select3.i.i.i = select i1 %.inv.i.i.i, double %i.kq, double 0.000000e+00
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit.i.i

_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit.i.i: ; preds = %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit.sink.split.i.i, %bb.di, %.noexc290.i
  %.sroa.0233.0.i.i = phi double [ 0.000000e+00, %.noexc290.i ], [ 0.000000e+00, %bb.di ], [ %spec.store.select3.i.i.i, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit.sink.split.i.i ]
  %i.kr = fadd double %spec.store.select37.i.i, %.sroa.0233.0.i.i ; 2 uses
  %.inv245.i.i = fcmp ord double %i.kr, 0.000000e+00
  %spec.store.select10.i.i = select i1 %.inv245.i.i, double %i.kr, double 0.000000e+00
  %i.ks = invoke noundef double @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout3absNtB2_3Abs3max(double noundef %i.kg, double noundef %spec.store.select10.i.i)
          to label %.noexc291.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !45461

.noexc291.i:                                      ; preds = %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit.i.i
  %i.kt = load i64, ptr %i.ai, align 16, !range !83, !noalias !45493, !noundef !41 ; 3 uses
  %.not246.i.i = icmp eq i64 %i.kt, -1
  br i1 %.not246.i.i, label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit295.i.i, label %bb.dl

bb.dl:                                            ; preds = %.noexc291.i
  %i.ku = call i64 @llvm.usub.sat.i64(i64 %i.kt, i64 1)
  switch i64 %i.ku, label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit295.i.i [
    i64 0, label %bb.dm
    i64 1, label %bb.dn
  ]

bb.dm:                                            ; preds = %bb.dl
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ai, i64 72
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit295.sink.split.i.i

bb.dn:                                            ; preds = %bb.dl
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  %i.kx = load i64, ptr %.sink377.i.sroa.gep59.i, align 8, !range !49, !alias.scope !45505, !noalias !45493, !noundef !41
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit295.sink.split.i.i

_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit295.sink.split.i.i: ; preds = %bb.dn, %bb.dm
  %.sink378.i.i = phi i64 [ %i.kx, %bb.dn ], [ %i.kt, %bb.dm ]
  %.sink377.i.sroa.phi.i = phi ptr [ %.sink377.i.sroa.gep.i, %bb.dn ], [ %.sink377.i.sroa.gep59.i, %bb.dm ]
  %.sink375.in.i.i = phi ptr [ %i.kw, %bb.dn ], [ %i.kv, %bb.dm ]
  %.sink375.i.i = load double, ptr %.sink375.in.i.i, align 8, !alias.scope !45505, !noalias !45493, !noundef !41 ; 2 uses
  %i.ky = trunc nuw i64 %.sink378.i.i to i1
  %i.kz = load double, ptr %.sink377.i.sroa.phi.i, align 8, !alias.scope !45505, !noalias !45493
  %.sroa.012.0.i286.i.i = select i1 %i.ky, double %i.kz, double %.sink375.i.i ; 2 uses
  %i.la = fneg double %.sroa.012.0.i286.i.i
  %i.lb = fcmp uno double %.sroa.012.0.i286.i.i, 0.000000e+00
  %spec.store.select2.i287.i.i = select i1 %i.lb, double 0.000000e+00, double %i.la
  %i.lc = fadd double %.sink375.i.i, %spec.store.select2.i287.i.i ; 2 uses
  %.inv.i288.i.i = fcmp ord double %i.lc, 0.000000e+00
  %spec.store.select3.i289.i.i = select i1 %.inv.i288.i.i, double %i.lc, double 0.000000e+00
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit295.i.i

_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit295.i.i: ; preds = %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit295.sink.split.i.i, %bb.dl, %.noexc291.i
  %.sroa.0234.0.i.i = phi double [ 0.000000e+00, %.noexc291.i ], [ 0.000000e+00, %bb.dl ], [ %spec.store.select3.i289.i.i, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit295.sink.split.i.i ]
  %i.ld = fadd double %spec.store.select37.i.i, %.sroa.0234.0.i.i ; 2 uses
  %.inv247.i.i = fcmp ord double %i.ld, 0.000000e+00
  %spec.store.select11.i.i = select i1 %.inv247.i.i, double %i.ld, double 0.000000e+00
  %i.le = invoke noundef double @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout3absNtB2_3Abs3max(double noundef %i.ks, double noundef %spec.store.select11.i.i)
          to label %.noexc292.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !45461

bb.do:                                            ; preds = %.noexc292.i
  %i.lf = icmp eq i64 %i.jr, 2
  br i1 %i.lf, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ay, i64 72
  %i.lh = load double, ptr %i.lg, align 8, !alias.scope !45506, !noalias !45503, !noundef !41
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment12base_descent.exit.i.i

bb.dq:                                            ; preds = %bb.do
  switch i64 %i.js, label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment12base_descent.exit.i.i [
    i64 0, label %bb.dr
    i64 1, label %bb.ds
  ]

bb.dr:                                            ; preds = %bb.dq
  %i.li = getelementptr inbounds nuw i8, ptr %i.ay, i64 72
  %i.lj = load double, ptr %i.li, align 8, !alias.scope !45507, !noalias !45503, !noundef !41 ; 2 uses
  %i.lk = trunc nuw i64 %i.jr to i1
  %i.ll = load double, ptr %.sink36.i.i.i.i.sroa.gep, align 8, !alias.scope !45507, !noalias !45503
  %.sroa.022.0.i.i.i.i = select i1 %i.lk, double %i.ll, double %i.lj ; 2 uses
  %i.lm = fneg double %.sroa.022.0.i.i.i.i
  %i.ln = fcmp uno double %.sroa.022.0.i.i.i.i, 0.000000e+00
  %spec.store.select.i.i.i.i = select i1 %i.ln, double 0.000000e+00, double %i.lm
  %i.lo = fadd double %i.lj, %spec.store.select.i.i.i.i ; 2 uses
  %.inv23.i.i.i.i = fcmp ord double %i.lo, 0.000000e+00
  %spec.store.select1.i.i.i.i = select i1 %.inv23.i.i.i.i, double %i.lo, double 0.000000e+00
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment12base_descent.exit.i.i

bb.ds:                                            ; preds = %bb.dq
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.lq = load double, ptr %i.lp, align 8, !alias.scope !45507, !noalias !45503, !noundef !41 ; 2 uses
  %i.lr = load i64, ptr %.sink36.i.i.i.i.sroa.gep, align 8, !range !49, !alias.scope !45507, !noalias !45503, !noundef !41
  %i.ls = trunc nuw i64 %i.lr to i1
  %i.lt = load double, ptr %.sink36.i.i.i.i.sroa.gep469, align 16, !alias.scope !45507, !noalias !45503
  %.sroa.012.0.i.i.i.i = select i1 %i.ls, double %i.lt, double %i.lq ; 2 uses
  %i.lu = fneg double %.sroa.012.0.i.i.i.i
  %i.lv = fcmp uno double %.sroa.012.0.i.i.i.i, 0.000000e+00
  %spec.store.select2.i.i.i.i = select i1 %i.lv, double 0.000000e+00, double %i.lu
  %i.lw = fadd double %i.lq, %spec.store.select2.i.i.i.i ; 2 uses
  %.inv.i.i.i.i = fcmp ord double %i.lw, 0.000000e+00
  %spec.store.select3.i.i.i.i = select i1 %.inv.i.i.i.i, double %i.lw, double 0.000000e+00
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment12base_descent.exit.i.i

_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment12base_descent.exit.i.i: ; preds = %bb.ds, %bb.dr, %bb.dq, %bb.dp
  %.sroa.0.0.i296.i.i = phi double [ %i.lh, %bb.dp ], [ %spec.store.select3.i.i.i.i, %bb.ds ], [ %spec.store.select1.i.i.i.i, %bb.dr ], [ 0.000000e+00, %bb.dq ]
  %i.lx = invoke noundef double @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout3absNtB2_3Abs3max(double noundef 0.000000e+00, double noundef %spec.store.select38.i.i)
          to label %.noexc293.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !45461

.noexc293.i:                                      ; preds = %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment12base_descent.exit.i.i
  %i.ly = trunc nuw i8 %.sroa.044.0.i.i to i1
  br i1 %i.ly, label %bb.du, label %bb.dt

.noexc296.i:                                      ; preds = %bb.ea, %.noexc292.i
  %.sroa.0225.0.i.i = phi double [ 0.000000e+00, %.noexc292.i ], [ %i.ms, %bb.ea ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !45494
  %.sroa.5164.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store ptr %i.ak, ptr %.sroa.5164.0..sroa_idx.i.i, align 8, !noalias !45494
  %.sroa.6165.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %i.ah, ptr %.sroa.6165.0..sroa_idx.i.i, align 8, !noalias !45494
  %.sroa.7166.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %i.ai, ptr %.sroa.7166.0..sroa_idx.i.i, align 8, !noalias !45494
  %.sroa.8167.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr %i.af, ptr %.sroa.8167.0..sroa_idx.i.i, align 8, !noalias !45494
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  %i.ma = getelementptr inbounds nuw i8, ptr %i.ai, i64 72
  %i.mb = insertelement <2 x double> poison, double %.sroa.0225.0.i.i, i64 0
  %i.mc = insertelement <2 x double> %i.mb, double %.sroa.0218.0.i.i, i64 1
  %i.md = insertelement <2 x double> poison, double %spec.store.select35.i.i, i64 0
  %i.me = insertelement <2 x double> %i.md, double %spec.store.select34.i.i, i64 1
  br label %.lr.ph.i.i

bb.dt:                                            ; preds = %.noexc293.i
  %i.mf = fadd double %spec.store.select40.i.i, %.sroa.0.0.i296.i.i ; 2 uses
  %.inv250.i.i = fcmp ord double %i.mf, 0.000000e+00
  %spec.store.select12.i.i = select i1 %.inv250.i.i, double %i.mf, double 0.000000e+00
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %.noexc293.i
  %.sroa.052.0.i.i = phi double [ %spec.store.select12.i.i, %bb.dt ], [ 0.000000e+00, %.noexc293.i ]
  %i.mg = invoke noundef double @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout3absNtB2_3Abs3max(double noundef %i.lx, double noundef %.sroa.052.0.i.i)
          to label %.noexc294.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !45461

.noexc294.i:                                      ; preds = %bb.du
  %i.mh = load i64, ptr %i.ah, align 16, !range !83, !noalias !45493, !noundef !41 ; 3 uses
  %.not251.i.i = icmp eq i64 %i.mh, -1
  br i1 %.not251.i.i, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %.noexc294.i
  %i.mi = call i64 @llvm.usub.sat.i64(i64 %i.mh, i64 1)
  switch i64 %i.mi, label %bb.dw [
    i64 0, label %bb.dx
    i64 1, label %bb.dy
  ]

.sink.split379.i.i:                               ; preds = %bb.dy, %bb.dx
  %spec.select272.v.sink.i.i = phi i64 [ %spec.select272.v.i.i, %bb.dx ], [ %spec.select273.v.i.i, %bb.dy ]
  %spec.select272.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 %spec.select272.v.sink.i.i
  %.sroa.0115.0.i.i = load double, ptr %spec.select272.i.i, align 8, !noalias !45493
  br label %bb.dw

bb.dw:                                            ; preds = %.sink.split379.i.i, %bb.dv, %.noexc294.i
  %.sroa.0235.0.i.i = phi double [ 0.000000e+00, %.noexc294.i ], [ 0.000000e+00, %bb.dv ], [ %.sroa.0115.0.i.i, %.sink.split379.i.i ]
  %.neg252.i.i = fneg double %i.jg
  %i.mj = select i1 %i.ji, double %.neg252.i.i, double -0.000000e+00 ; 2 uses
  %.inv253.i.i = fcmp ord double %i.mj, 0.000000e+00
  %spec.store.select13.i.i = select i1 %.inv253.i.i, double %i.mj, double 0.000000e+00 ; 2 uses
  %i.mk = fadd double %spec.store.select13.i.i, %.sroa.0235.0.i.i ; 2 uses
  %.inv254.i.i = fcmp ord double %i.mk, 0.000000e+00
  %spec.store.select14.i.i = select i1 %.inv254.i.i, double %i.mk, double 0.000000e+00
  %i.ml = invoke noundef double @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout3absNtB2_3Abs3max(double noundef %i.mg, double noundef %spec.store.select14.i.i)
          to label %.noexc295.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !45461

.noexc295.i:                                      ; preds = %bb.dw
  %i.mm = load i64, ptr %i.af, align 16, !range !83, !noalias !45493, !noundef !41 ; 3 uses
  %.not255.i.i = icmp eq i64 %i.mm, -1
  br i1 %.not255.i.i, label %bb.ea, label %bb.dz

bb.dx:                                            ; preds = %bb.dv
  %5 = trunc nuw i64 %i.mh to i1
  %spec.select272.v.i.i = select i1 %5, i64 8, i64 72
  br label %.sink.split379.i.i

bb.dy:                                            ; preds = %bb.dv
  %i.mn = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.mo = load i64, ptr %i.mn, align 8, !range !49, !noalias !45493, !noundef !41
  %i.mp = trunc nuw i64 %i.mo to i1
  %spec.select273.v.i.i = select i1 %i.mp, i64 16, i64 40
  br label %.sink.split379.i.i

bb.dz:                                            ; preds = %.noexc295.i
  %i.mq = call i64 @llvm.usub.sat.i64(i64 %i.mm, i64 1)
  switch i64 %i.mq, label %bb.ea [
    i64 0, label %bb.eb
    i64 1, label %bb.ec
  ]

.sink.split380.i.i:                               ; preds = %bb.ec, %bb.eb
  %spec.select274.v.sink.i.i = phi i64 [ %spec.select274.v.i.i, %bb.eb ], [ %spec.select275.v.i.i, %bb.ec ]
  %spec.select274.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 %spec.select274.v.sink.i.i
  %.sroa.0128.0.i.i = load double, ptr %spec.select274.i.i, align 8, !noalias !45493
  br label %bb.ea

bb.ea:                                            ; preds = %.sink.split380.i.i, %bb.dz, %.noexc295.i
  %.sroa.0236.0.i.i = phi double [ 0.000000e+00, %.noexc295.i ], [ 0.000000e+00, %bb.dz ], [ %.sroa.0128.0.i.i, %.sink.split380.i.i ]
  %i.mr = fadd double %spec.store.select13.i.i, %.sroa.0236.0.i.i ; 2 uses
  %.inv256.i.i = fcmp ord double %i.mr, 0.000000e+00
  %spec.store.select16.i.i = select i1 %.inv256.i.i, double %i.mr, double 0.000000e+00
  %i.ms = invoke noundef double @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout3absNtB2_3Abs3max(double noundef %i.ml, double noundef %spec.store.select16.i.i)
          to label %.noexc296.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !45461

bb.eb:                                            ; preds = %bb.dz
  %6 = trunc nuw i64 %i.mm to i1
  %spec.select274.v.i.i = select i1 %6, i64 8, i64 72
  br label %.sink.split380.i.i

bb.ec:                                            ; preds = %bb.dz
  %i.mt = load i64, ptr %.sroa.16.1520..sroa_idx, align 8, !range !49, !noalias !45493, !noundef !41
  %i.mu = trunc nuw i64 %i.mt to i1
  %spec.select275.v.i.i = select i1 %i.mu, i64 16, i64 40
  br label %.sink.split380.i.i

bb.ed:                                            ; preds = %bb.em
  %i.mv = load i64, ptr %i.ai, align 16, !range !83, !noalias !45493, !noundef !41 ; 3 uses
  %.not258.i.i = icmp eq i64 %i.mv, -1
  br i1 %.not258.i.i, label %.loopexit162.i, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.mw = load i64, ptr %i.af, align 16, !range !83, !noalias !45493, !noundef !41 ; 3 uses
  %.not259.i.i = icmp eq i64 %i.mw, -1
  br i1 %.not259.i.i, label %.loopexit162.i, label %bb.en

.outer.i.i:                                       ; preds = %bb.es, %bb.ef, %.lr.ph.i.i
  %i.mx = phi i64 [ %.lcssa184.i, %bb.es ], [ %i.nd, %.lr.ph.i.i ], [ %i.nd, %bb.ef ]
  %i.my = phi <2 x double> [ %i.qa, %bb.es ], [ %i.mz, %.lr.ph.i.i ], [ %i.mz, %bb.ef ] ; 2 uses
  %.not.i321.i.i = icmp eq i64 %i.mx, 2
  br i1 %.not.i321.i.i, label %.loopexit162.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.outer.i.i, %.noexc296.i
  %.ph332.i.i = phi i64 [ 0, %.noexc296.i ], [ 1, %.outer.i.i ] ; 2 uses
  %i.mz = phi <2 x double> [ %i.mc, %.noexc296.i ], [ %i.my, %.outer.i.i ] ; 9 uses
  %i.na = extractelement <2 x double> %i.mz, i64 0 ; 2 uses
  %i.nb = fneg double %i.na
  %i.nc = fcmp uno double %i.na, 0.000000e+00
  %spec.store.select19.i.i = select i1 %i.nc, double 0.000000e+00, double %i.nb ; 2 uses
  %i.nd = add nuw nsw i64 %.ph332.i.i, 1          ; 4 uses
  %i.ne = getelementptr inbounds nuw [16 x i8], ptr %.sroa.5164.0..sroa_idx.i.i, i64 %.ph332.i.i ; 2 uses
  %i.nf = load ptr, ptr %i.ne, align 8, !alias.scope !45508, !noalias !45494, !nonnull !41, !align !59, !noundef !41 ; 5 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.ne, i64 8
  %i.nh = load ptr, ptr %i.ng, align 8, !alias.scope !45508, !noalias !45494, !nonnull !41, !align !59, !noundef !41 ; 3 uses
  %i.ni = load i64, ptr %i.nf, align 16, !range !83, !noalias !45493, !noundef !41 ; 3 uses
  %.not258.i.peel.i = icmp eq i64 %i.ni, -1
  br i1 %.not258.i.peel.i, label %.outer.i.i, label %bb.ef

bb.ef:                                            ; preds = %.lr.ph.i.i
  %i.nj = load i64, ptr %i.nh, align 16, !range !83, !noalias !45493, !noundef !41 ; 3 uses
  %.not259.i.peel.i = icmp eq i64 %i.nj, -1
  br i1 %.not259.i.peel.i, label %.outer.i.i, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.nk = call i64 @llvm.usub.sat.i64(i64 %i.ni, i64 1)
  switch i64 %i.nk, label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit307.i.peel.i [
    i64 0, label %bb.ei
    i64 1, label %bb.eh
  ]

bb.eh:                                            ; preds = %bb.eg
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nf, i64 8
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nf, i64 40
  %i.nn = load i64, ptr %i.nl, align 8, !range !49, !alias.scope !45509, !noalias !45493, !noundef !41
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit307.sink.split.i.peel.i

bb.ei:                                            ; preds = %bb.eg
  %i.no = getelementptr inbounds nuw i8, ptr %i.nf, i64 72
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit307.sink.split.i.peel.i

_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit307.sink.split.i.peel.i: ; preds = %bb.ei, %bb.eh
  %.sink389.i.peel.i = phi i64 [ %i.nn, %bb.eh ], [ %i.ni, %bb.ei ]
  %.sink388.i.peel.i = phi i64 [ 16, %bb.eh ], [ 8, %bb.ei ]
  %.sink386.in.i.peel.i = phi ptr [ %i.nm, %bb.eh ], [ %i.no, %bb.ei ]
  %.sink386.i.peel.i = load double, ptr %.sink386.in.i.peel.i, align 8, !alias.scope !45509, !noalias !45493, !noundef !41 ; 2 uses
  %i.np = trunc nuw i64 %.sink389.i.peel.i to i1
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nf, i64 %.sink388.i.peel.i
  %i.nr = load double, ptr %i.nq, align 8, !alias.scope !45509, !noalias !45493
  %.sroa.012.0.i298.i.peel.i = select i1 %i.np, double %i.nr, double %.sink386.i.peel.i ; 2 uses
  %i.ns = fneg double %.sroa.012.0.i298.i.peel.i
  %i.nt = fcmp uno double %.sroa.012.0.i298.i.peel.i, 0.000000e+00
  %spec.store.select2.i299.i.peel.i = select i1 %i.nt, double 0.000000e+00, double %i.ns
  %i.nu = fadd double %.sink386.i.peel.i, %spec.store.select2.i299.i.peel.i ; 2 uses
  %.inv.i300.i.peel.i = fcmp ord double %i.nu, 0.000000e+00
  %spec.store.select3.i301.i.peel.i = select i1 %.inv.i300.i.peel.i, double %i.nu, double 0.000000e+00
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit307.i.peel.i

_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit307.i.peel.i: ; preds = %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit307.sink.split.i.peel.i, %bb.eg
  %.sroa.0.0.i302.i.peel.i = phi double [ 0.000000e+00, %bb.eg ], [ %spec.store.select3.i301.i.peel.i, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit307.sink.split.i.peel.i ] ; 2 uses
  %i.nv = fneg double %.sroa.0.0.i302.i.peel.i
  %i.nw = fcmp uno double %.sroa.0.0.i302.i.peel.i, 0.000000e+00
  %spec.store.select17.i.peel.i = select i1 %i.nw, double 0.000000e+00, double %i.nv
  %i.nx = extractelement <2 x double> %i.mz, i64 1 ; 2 uses
  %i.ny = fadd double %i.nx, %spec.store.select17.i.peel.i ; 2 uses
  %.inv260.i.peel.i = fcmp ord double %i.ny, 0.000000e+00
  %spec.store.select18.i.peel.i = select i1 %.inv260.i.peel.i, double %i.ny, double 0.000000e+00 ; 2 uses
  %i.nz = call i64 @llvm.usub.sat.i64(i64 %i.nj, i64 1)
  switch i64 %i.nz, label %bb.el [
    i64 0, label %bb.ek
    i64 1, label %bb.ej
  ]

bb.ej:                                            ; preds = %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit307.i.peel.i
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nh, i64 8
  %i.ob = load i64, ptr %i.oa, align 8, !range !49, !noalias !45493, !noundef !41
  %i.oc = trunc nuw i64 %i.ob to i1
  %spec.select277.v.i.peel.i = select i1 %i.oc, i64 16, i64 40
  br label %.sink.split390.i.peel.i

bb.ek:                                            ; preds = %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit307.i.peel.i
  %7 = trunc nuw i64 %i.nj to i1
  %spec.select276.v.i.peel.i = select i1 %7, i64 8, i64 72
  br label %.sink.split390.i.peel.i

.sink.split390.i.peel.i:                          ; preds = %bb.ek, %bb.ej
  %spec.select277.v.sink.i.peel.i = phi i64 [ %spec.select277.v.i.peel.i, %bb.ej ], [ %spec.select276.v.i.peel.i, %bb.ek ]
  %spec.select277.i.peel.i = getelementptr inbounds nuw i8, ptr %i.nh, i64 %spec.select277.v.sink.i.peel.i
  %.sroa.0237.2.i.peel.i = load double, ptr %spec.select277.i.peel.i, align 8, !noalias !45493
  br label %bb.el

bb.el:                                            ; preds = %.sink.split390.i.peel.i, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit307.i.peel.i
  %.sroa.0237.1.i.peel.i = phi double [ 0.000000e+00, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit307.i.peel.i ], [ %.sroa.0237.2.i.peel.i, %.sink.split390.i.peel.i ]
  %i.od = fadd double %spec.store.select19.i.i, %.sroa.0237.1.i.peel.i ; 2 uses
  %.inv261.i.peel.i = fcmp ord double %i.od, 0.000000e+00
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !45494
  %.neg262.i.peel.i = fneg double %i.od
  %i.oe = select i1 %.inv261.i.peel.i, double %.neg262.i.peel.i, double -0.000000e+00 ; 2 uses
  %.inv263.i.peel.i = fcmp ord double %i.oe, 0.000000e+00
  %spec.store.select21.i.peel.i = select i1 %.inv263.i.peel.i, double %i.oe, double 0.000000e+00
  %i.of = fadd double %spec.store.select18.i.peel.i, %spec.store.select21.i.peel.i ; 2 uses
  %.inv264.i.peel.i = fcmp ord double %i.of, 0.000000e+00
  %spec.store.select22.i.peel.i = select i1 %.inv264.i.peel.i, double %i.of, double 0.000000e+00 ; 2 uses
  store double %spec.store.select22.i.peel.i, ptr %i.d, align 8, !noalias !45494
  %i.og = invoke noundef i8 @_RNvXs5_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f)
          to label %.noexc297.peel.i unwind label %.loopexit.loopexit.split-lp.i, !noalias !45461

.noexc297.peel.i:                                 ; preds = %bb.el
  %i.oh = icmp sgt i8 %i.og, -1
  br i1 %i.oh, label %bb.em, label %.noexc.i.i

bb.em:                                            ; preds = %.noexc297.peel.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !45494
  %.not.i.i280.peel.i = icmp eq i64 %i.nd, 2
  br i1 %.not.i.i280.peel.i, label %.loopexit162.i, label %bb.ed

bb.en:                                            ; preds = %bb.ee
  %i.oi = call i64 @llvm.usub.sat.i64(i64 %i.mv, i64 1)
  switch i64 %i.oi, label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit307.i.i [
    i64 0, label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit307.sink.split.i.i
    i64 1, label %bb.eo
  ]

bb.eo:                                            ; preds = %bb.en
  %i.oj = load i64, ptr %.sink377.i.sroa.gep59.i, align 8, !range !49, !alias.scope !45509, !noalias !45493, !noundef !41
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit307.sink.split.i.i

_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit307.sink.split.i.i: ; preds = %bb.eo, %bb.en
  %.sink389.i.i = phi i64 [ %i.oj, %bb.eo ], [ %i.mv, %bb.en ]
  %.sink388.i.sroa.phi.i = phi ptr [ %.sink377.i.sroa.gep.i, %bb.eo ], [ %.sink377.i.sroa.gep59.i, %bb.en ]
  %.sink386.in.i.i = phi ptr [ %i.lz, %bb.eo ], [ %i.ma, %bb.en ]
  %.sink386.i.i = load double, ptr %.sink386.in.i.i, align 8, !alias.scope !45509, !noalias !45493, !noundef !41 ; 2 uses
  %i.ok = trunc nuw i64 %.sink389.i.i to i1
  %i.ol = load double, ptr %.sink388.i.sroa.phi.i, align 8, !alias.scope !45509, !noalias !45493
  %.sroa.012.0.i298.i.i = select i1 %i.ok, double %i.ol, double %.sink386.i.i ; 2 uses
  %i.om = fneg double %.sroa.012.0.i298.i.i
  %i.on = fcmp uno double %.sroa.012.0.i298.i.i, 0.000000e+00
  %spec.store.select2.i299.i.i = select i1 %i.on, double 0.000000e+00, double %i.om
  %i.oo = fadd double %.sink386.i.i, %spec.store.select2.i299.i.i ; 2 uses
  %.inv.i300.i.i = fcmp ord double %i.oo, 0.000000e+00
  %spec.store.select3.i301.i.i = select i1 %.inv.i300.i.i, double %i.oo, double 0.000000e+00
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit307.i.i

_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit307.i.i: ; preds = %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit307.sink.split.i.i, %bb.en
  %.sroa.0.0.i302.i.i = phi double [ 0.000000e+00, %bb.en ], [ %spec.store.select3.i301.i.i, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit307.sink.split.i.i ] ; 2 uses
  %i.op = fneg double %.sroa.0.0.i302.i.i
  %i.oq = fcmp uno double %.sroa.0.0.i302.i.i, 0.000000e+00
  %spec.store.select17.i.i = select i1 %i.oq, double 0.000000e+00, double %i.op
  %i.or = fadd double %i.nx, %spec.store.select17.i.i ; 2 uses
  %.inv260.i.i = fcmp ord double %i.or, 0.000000e+00
  %spec.store.select18.i.i = select i1 %.inv260.i.i, double %i.or, double 0.000000e+00 ; 2 uses
  %i.os = call i64 @llvm.usub.sat.i64(i64 %i.mw, i64 1)
  switch i64 %i.os, label %bb.er [
    i64 0, label %bb.ep
    i64 1, label %bb.eq
  ]

bb.ep:                                            ; preds = %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit307.i.i
  %8 = trunc nuw i64 %i.mw to i1
  %spec.select276.v.i.i = select i1 %8, i64 8, i64 72
  br label %.sink.split390.i.i

bb.eq:                                            ; preds = %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit307.i.i
  %i.ot = load i64, ptr %.sroa.16.1520..sroa_idx, align 8, !range !49, !noalias !45493, !noundef !41
  %i.ou = trunc nuw i64 %i.ot to i1
  %spec.select277.v.i.i = select i1 %i.ou, i64 16, i64 40
  br label %.sink.split390.i.i

.sink.split390.i.i:                               ; preds = %bb.eq, %bb.ep
  %spec.select277.v.sink.i.i = phi i64 [ %spec.select277.v.i.i, %bb.eq ], [ %spec.select276.v.i.i, %bb.ep ]
  %spec.select277.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 %spec.select277.v.sink.i.i
  %.sroa.0237.2.i.i = load double, ptr %spec.select277.i.i, align 8, !noalias !45493
  br label %bb.er

bb.er:                                            ; preds = %.sink.split390.i.i, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit307.i.i
  %.sroa.0237.1.i.i = phi double [ 0.000000e+00, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit307.i.i ], [ %.sroa.0237.2.i.i, %.sink.split390.i.i ]
  %i.ov = fadd double %spec.store.select19.i.i, %.sroa.0237.1.i.i ; 2 uses
  %.inv261.i.i = fcmp ord double %i.ov, 0.000000e+00
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !45494
  %.neg262.i.i = fneg double %i.ov
  %i.ow = select i1 %.inv261.i.i, double %.neg262.i.i, double -0.000000e+00 ; 2 uses
  %.inv263.i.i = fcmp ord double %i.ow, 0.000000e+00
  %spec.store.select21.i.i = select i1 %.inv263.i.i, double %i.ow, double 0.000000e+00
  %i.ox = fadd double %spec.store.select18.i.i, %spec.store.select21.i.i ; 2 uses
  %.inv264.i.i = fcmp ord double %i.ox, 0.000000e+00
  %spec.store.select22.i.i = select i1 %.inv264.i.i, double %i.ox, double 0.000000e+00 ; 2 uses
  store double %spec.store.select22.i.i, ptr %i.d, align 8, !noalias !45494
  %i.oy = invoke noundef i8 @_RNvXs5_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f)
          to label %.noexc297.i unwind label %.loopexit.loopexit.i, !noalias !45461

.noexc297.i:                                      ; preds = %bb.er
  %i.oz = icmp sgt i8 %i.oy, -1
  br i1 %i.oz, label %.loopexit162.loopexit.loopexit.i, label %.noexc.i.i

.noexc.i.i:                                       ; preds = %.noexc297.i, %.noexc297.peel.i
  %spec.store.select22.i.lcssa188.i = phi double [ %spec.store.select22.i.peel.i, %.noexc297.peel.i ], [ %spec.store.select22.i.i, %.noexc297.i ]
  %spec.store.select18.i.lcssa186.i = phi double [ %spec.store.select18.i.peel.i, %.noexc297.peel.i ], [ %spec.store.select18.i.i, %.noexc297.i ]
  %.lcssa184.i = phi i64 [ %i.nd, %.noexc297.peel.i ], [ 2, %.noexc297.i ]
  %i.pa = insertelement <2 x double> poison, double %spec.store.select22.i.lcssa188.i, i64 0
  %i.pb = insertelement <2 x double> %i.pa, double %spec.store.select18.i.lcssa186.i, i64 1 ; 2 uses
  %i.pc = fneg <2 x double> %i.pb
  %i.pd = fcmp uno <2 x double> %i.pb, zeroinitializer
  %i.pe = select <2 x i1> %i.pd, <2 x double> zeroinitializer, <2 x double> %i.pc
  %i.pf = fadd <2 x double> %i.me, %i.pe          ; 2 uses
  %i.pg = fcmp ord <2 x double> %i.pf, zeroinitializer
  %i.ph = select <2 x i1> %i.pg, <2 x double> %i.pf, <2 x double> zeroinitializer ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !45494
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !45494
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !45494
  %i.pi = extractelement <2 x double> %i.ph, i64 1 ; 2 uses
  store double %i.pi, ptr %i.c, align 8, !noalias !45494
  store double 0.000000e+00, ptr %i.b, align 8, !noalias !45494
  %i.pj = extractelement <2 x double> %i.ph, i64 0 ; 3 uses
  store double %i.pj, ptr %i.a, align 8, !noalias !45494
  %i.pk = invoke noundef range(i8 -1, 2) i8 @_RNvXs5_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %.noexc298.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !45461

.noexc298.i:                                      ; preds = %.noexc.i.i
  %i.pl = icmp slt i8 %i.pk, 1
  br i1 %i.pl, label %.noexc310.i.i, label %.noexc309.i.i, !prof !43

.noexc309.i.i:                                    ; preds = %.noexc298.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @920, i64 noundef 28, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @922) #53
          to label %.noexc299.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !45461

.noexc299.i:                                      ; preds = %.noexc309.i.i
  unreachable

.noexc310.i.i:                                    ; preds = %.noexc298.i
  %i.pm = invoke noundef range(i8 -1, 2) i8 @_RNvXs5_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
          to label %.noexc300.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !45461

.noexc300.i:                                      ; preds = %.noexc310.i.i
  %i.pn = icmp slt i8 %i.pm, 0
  br i1 %i.pn, label %bb.es, label %.noexc311.i.i

.noexc311.i.i:                                    ; preds = %.noexc300.i
  %i.po = invoke noundef range(i8 -1, 2) i8 @_RNvXs5_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %.noexc301.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !45461

.noexc301.i:                                      ; preds = %.noexc311.i.i
  %i.pp = icmp sgt i8 %i.po, 0
  %..i.i.i = select i1 %i.pp, double %i.pj, double %i.pi
  br label %bb.es

bb.es:                                            ; preds = %.noexc301.i, %.noexc300.i
  %.sroa.0.0.i308.i.i = phi double [ %..i.i.i, %.noexc301.i ], [ 0.000000e+00, %.noexc300.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !45494
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !45494
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !45494
  %i.pq = fneg double %.sroa.0.0.i308.i.i
  %i.pr = fcmp uno double %.sroa.0.0.i308.i.i, 0.000000e+00
  %spec.store.select27.i.i = select i1 %i.pr, double 0.000000e+00, double %i.pq
  %i.ps = fadd double %i.pj, %spec.store.select27.i.i ; 2 uses
  %.inv267.i.i = fcmp ord double %i.ps, 0.000000e+00
  %i.pt = fmul double %i.ps, 5.000000e-01
  %i.pu = select i1 %.inv267.i.i, double %i.pt, double 0.000000e+00 ; 2 uses
  %.inv268.i.i = fcmp ord double %i.pu, 0.000000e+00
  %spec.store.select29.i.i = select i1 %.inv268.i.i, double %i.pu, double 0.000000e+00 ; 2 uses
  %i.pv = fadd double %.sroa.0.0.i308.i.i, %spec.store.select29.i.i ; 2 uses
  %.inv269.i.i = fcmp ord double %i.pv, 0.000000e+00
  %spec.store.select30.i.i = select i1 %.inv269.i.i, double %i.pv, double 0.000000e+00
  %i.pw = insertelement <2 x double> poison, double %spec.store.select29.i.i, i64 0
  %i.px = insertelement <2 x double> %i.pw, double %spec.store.select30.i.i, i64 1
  %i.py = fadd <2 x double> %i.mz, %i.px          ; 2 uses
  %i.pz = fcmp ord <2 x double> %i.py, zeroinitializer
  %i.qa = select <2 x i1> %i.pz, <2 x double> %i.py, <2 x double> zeroinitializer
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !45494
  br label %.outer.i.i

.loopexit162.loopexit.loopexit.i:                 ; preds = %.noexc297.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !45494
  br label %.loopexit162.i

.loopexit162.i:                                   ; preds = %bb.em, %.outer.i.i, %bb.ee, %bb.ed, %.loopexit162.loopexit.loopexit.i
  %i.qb = phi <2 x double> [ %i.mz, %.loopexit162.loopexit.loopexit.i ], [ %i.mz, %bb.em ], [ %i.my, %.outer.i.i ], [ %i.mz, %bb.ee ], [ %i.mz, %bb.ed ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !45494
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !45494
  br label %bb.et

bb.et:                                            ; preds = %.loopexit162.i, %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_clonedNtNtNtBa_4math8equation12EquationElemKh8_ECs7tN9tvpkfrg_12typst_layout.exit.i
  %i.qc = phi i64 [ %i.jr, %.loopexit162.i ], [ %i.ev, %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_clonedNtNtNtBa_4math8equation12EquationElemKh8_ECs7tN9tvpkfrg_12typst_layout.exit.i ]
  %i.qd = phi <2 x double> [ %i.qb, %.loopexit162.i ], [ zeroinitializer, %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_clonedNtNtNtBa_4math8equation12EquationElemKh8_ECs7tN9tvpkfrg_12typst_layout.exit.i ] ; 2 uses
  %i.qe = load i64, ptr %i.aj, align 16, !range !83, !noalias !45461, !noundef !41
  %.not.i417 = icmp eq i64 %i.qe, -1
  %i.qf = load i64, ptr %i.ag, align 16, !range !83, !noalias !45461, !noundef !41
  %.not204.i = icmp eq i64 %i.qf, -1
  call void @llvm.experimental.noalias.scope.decl(metadata !45510)
  call void @llvm.experimental.noalias.scope.decl(metadata !45511)
  call void @llvm.experimental.noalias.scope.decl(metadata !45512)
  br i1 %.not.i417, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentE14map_or_defaultNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNCNvNtBN_7scripts20compute_limit_shifts0EBP_.exit.i.i, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  call void @llvm.experimental.noalias.scope.decl(metadata !45513)
  %i.qg = load ptr, ptr %i.ae, align 8, !alias.scope !45510, !noalias !45514, !nonnull !41, !noundef !41 ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 184 ; 4 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qg, i64 192 ; 2 uses
  %i.qj = load atomic i32, ptr %i.qi acquire, align 4, !noalias !45515
  %i.qk = icmp eq i32 %i.qj, 0
  br i1 %i.qk, label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i, label %bb.ev, !prof !43

bb.ev:                                            ; preds = %bb.eu
  invoke fastcc void @_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE10initializeNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout(ptr noundef nonnull align 8 %i.qh, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ae)
          to label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !45461

_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i: ; preds = %bb.ev, %bb.eu
  %i.ql = load ptr, ptr %i.qh, align 8, !noalias !45514, !nonnull !41, !noundef !41
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 120
  %i.qn = load double, ptr %i.qm, align 8, !noalias !45514, !noundef !41
  %i.qo = load atomic i32, ptr %i.qi acquire, align 8, !noalias !45516
  %i.qp = icmp eq i32 %i.qo, 0
  br i1 %i.qp, label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit28.i.i.i.i, label %bb.ew, !prof !43

bb.ew:                                            ; preds = %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i
  invoke fastcc void @_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE10initializeNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout(ptr noundef nonnull align 8 %i.qh, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ae)
          to label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit28.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !45461

_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit28.i.i.i.i: ; preds = %bb.ew, %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i
  %i.qq = load ptr, ptr %i.qh, align 8, !noalias !45514, !nonnull !41, !noundef !41
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 128
  %i.qs = load double, ptr %i.qr, align 8, !noalias !45514, !noundef !41
  %i.qt = load i64, ptr %i.ay, align 16, !range !95, !alias.scope !45517, !noalias !45518, !noundef !41 ; 3 uses
  %i.qu = call i64 @llvm.usub.sat.i64(i64 %i.qt, i64 1)
  switch i64 %i.qu, label %bb.ez [
    i64 0, label %bb.ex
    i64 1, label %bb.ey
  ]

bb.ex:                                            ; preds = %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit28.i.i.i.i
  %9 = trunc nuw i64 %i.qt to i1
  %spec.select.v.i.i.i.i = select i1 %9, i64 8, i64 72
  br label %.sink.split.i.i.i.i

bb.ey:                                            ; preds = %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit28.i.i.i.i
  %i.qv = load i64, ptr %.sink36.i.i.i.i.sroa.gep, align 8, !range !49, !alias.scope !45517, !noalias !45518, !noundef !41
  %i.qw = trunc nuw i64 %i.qv to i1
  %spec.select27.v.i.i.i.i = select i1 %i.qw, i64 16, i64 40
  br label %.sink.split.i.i.i.i

.sink.split.i.i.i.i:                              ; preds = %bb.ey, %bb.ex
  %spec.select27.v.sink.i.i.i.i = phi i64 [ %spec.select27.v.i.i.i.i, %bb.ey ], [ %spec.select.v.i.i.i.i, %bb.ex ]
  %spec.select27.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 %spec.select27.v.sink.i.i.i.i
  %.sroa.025.2.i.i.i.i = load double, ptr %spec.select27.i.i.i.i, align 8, !alias.scope !45517, !noalias !45518
  br label %bb.ez

bb.ez:                                            ; preds = %.sink.split.i.i.i.i, %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit28.i.i.i.i
  %.sroa.025.1.i.i.i.i = phi double [ 0.000000e+00, %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit28.i.i.i.i ], [ %.sroa.025.2.i.i.i.i, %.sink.split.i.i.i.i ]
  %i.qx = load i64, ptr %i.aj, align 16, !range !95, !alias.scope !45519, !noalias !45520, !noundef !41 ; 2 uses
  %i.qy = call i64 @llvm.usub.sat.i64(i64 %i.qx, i64 1)
  switch i64 %i.qy, label %_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts20compute_limit_shifts0B7_.exit.i.i.i [
    i64 0, label %bb.fa
    i64 1, label %bb.fb
  ]

bb.fa:                                            ; preds = %bb.ez
  %i.qz = getelementptr inbounds nuw i8, ptr %i.aj, i64 72
  br label %_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts20compute_limit_shifts0B7_.exit.sink.split.i.i.i

bb.fb:                                            ; preds = %bb.ez
  %i.ra = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.rb = load i64, ptr %.sink11.i.i.sroa.gep.i, align 8, !range !49, !alias.scope !45519, !noalias !45520, !noundef !41
  br label %_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts20compute_limit_shifts0B7_.exit.sink.split.i.i.i

_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts20compute_limit_shifts0B7_.exit.sink.split.i.i.i: ; preds = %bb.fb, %bb.fa
  %.sink12.i.i.i = phi i64 [ %i.qx, %bb.fa ], [ %i.rb, %bb.fb ]
  %.sink11.i.i.sroa.phi.i = phi ptr [ %.sink11.i.i.sroa.gep.i, %bb.fa ], [ %.sink11.i.i.sroa.gep203.i, %bb.fb ]
  %.sink9.in.i.i.i = phi ptr [ %i.qz, %bb.fa ], [ %i.ra, %bb.fb ]
  %.sink9.i.i.i = load double, ptr %.sink9.in.i.i.i, align 8, !alias.scope !45519, !noalias !45520, !noundef !41 ; 2 uses
  %i.rc = trunc nuw i64 %.sink12.i.i.i to i1
  %i.rd = load double, ptr %.sink11.i.i.sroa.phi.i, align 8, !alias.scope !45519, !noalias !45520
  %.sroa.022.0.i.i.i.i.i = select i1 %i.rc, double %i.rd, double %.sink9.i.i.i ; 2 uses
  %i.re = fneg double %.sroa.022.0.i.i.i.i.i
  %i.rf = fcmp uno double %.sroa.022.0.i.i.i.i.i, 0.000000e+00
  %spec.store.select.i.i.i.i.i = select i1 %i.rf, double 0.000000e+00, double %i.re
  %i.rg = fadd double %.sink9.i.i.i, %spec.store.select.i.i.i.i.i ; 2 uses
  %.inv23.i.i.i.i.i = fcmp ord double %i.rg, 0.000000e+00
  %spec.store.select1.i.i.i.i.i = select i1 %.inv23.i.i.i.i.i, double %i.rg, double 0.000000e+00
  br label %_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts20compute_limit_shifts0B7_.exit.i.i.i

_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts20compute_limit_shifts0B7_.exit.i.i.i: ; preds = %_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts20compute_limit_shifts0B7_.exit.sink.split.i.i.i, %bb.ez
  %.sroa.0.0.i.i.i.i.i = phi double [ 0.000000e+00, %bb.ez ], [ %spec.store.select1.i.i.i.i.i, %_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts20compute_limit_shifts0B7_.exit.sink.split.i.i.i ]
  %i.rh = fmul double %.sroa.0.0.i.i, %i.qn       ; 2 uses
  %i.ri = call double @llvm.fabs.f64(double %i.rh)
  %i.rj = fcmp one double %i.ri, +inf
  %spec.store.select4.i.i.i.i = select i1 %i.rj, double %i.rh, double 0.000000e+00
  %i.rk = fmul double %.sroa.0.0.i.i, %i.qs       ; 2 uses
  %i.rl = call double @llvm.fabs.f64(double %i.rk)
  %i.rm = fcmp one double %i.rl, +inf
  %spec.store.select5.i.i.i.i = select i1 %i.rm, double %i.rk, double 0.000000e+00
  %i.rn = fadd double %spec.store.select4.i.i.i.i, %.sroa.0.0.i.i.i.i.i ; 2 uses
  %.inv.i.i.i303.i = fcmp ord double %i.rn, 0.000000e+00
  %spec.store.select2.i.i.i304.i = select i1 %.inv.i.i.i303.i, double %i.rn, double 0.000000e+00
  %i.ro = invoke noundef double @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout3absNtB2_3Abs3max(double noundef %spec.store.select5.i.i.i.i, double noundef %spec.store.select2.i.i.i304.i)
          to label %.noexc308.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !45461

.noexc308.i:                                      ; preds = %_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts20compute_limit_shifts0B7_.exit.i.i.i
  %i.rp = fadd double %.sroa.025.1.i.i.i.i, %i.ro ; 2 uses
  %.inv26.i.i.i.i = fcmp ord double %i.rp, 0.000000e+00
  %spec.store.select3.i.i.i305.i = select i1 %.inv26.i.i.i.i, double %i.rp, double 0.000000e+00
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentE14map_or_defaultNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNCNvNtBN_7scripts20compute_limit_shifts0EBP_.exit.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentE14map_or_defaultNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNCNvNtBN_7scripts20compute_limit_shifts0EBP_.exit.i.i: ; preds = %.noexc308.i, %bb.et
  %i.rq = phi i64 [ %i.qt, %.noexc308.i ], [ %i.qc, %bb.et ]
  %.sroa.02.0.i.i.i = phi double [ %spec.store.select3.i.i.i305.i, %.noexc308.i ], [ 0.000000e+00, %bb.et ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !45521)
  br i1 %.not204.i, label %bb.fj, label %bb.fc

bb.fc:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentE14map_or_defaultNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNCNvNtBN_7scripts20compute_limit_shifts0EBP_.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !45522)
  %i.rr = load ptr, ptr %i.ae, align 8, !alias.scope !45510, !noalias !45523, !nonnull !41, !noundef !41 ; 2 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 184 ; 4 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rr, i64 192 ; 2 uses
  %i.ru = load atomic i32, ptr %i.rt acquire, align 4, !noalias !45524
  %i.rv = icmp eq i32 %i.ru, 0
  br i1 %i.rv, label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit.i.i2.i.i, label %bb.fd, !prof !43

bb.fd:                                            ; preds = %bb.fc
  invoke fastcc void @_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE10initializeNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout(ptr noundef nonnull align 8 %i.rs, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ae)
          to label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit.i.i2.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !45461

_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit.i.i2.i.i: ; preds = %bb.fd, %bb.fc
  %i.rw = load ptr, ptr %i.rs, align 8, !noalias !45523, !nonnull !41, !noundef !41
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rw, i64 136
  %i.ry = load double, ptr %i.rx, align 8, !noalias !45523, !noundef !41
  %i.rz = load atomic i32, ptr %i.rt acquire, align 8, !noalias !45525
  %i.sa = icmp eq i32 %i.rz, 0
  br i1 %i.sa, label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit28.i.i3.i.i, label %bb.fe, !prof !43

bb.fe:                                            ; preds = %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit.i.i2.i.i
  invoke fastcc void @_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE10initializeNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout(ptr noundef nonnull align 8 %i.rs, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ae)
          to label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit28.i.i3.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !45461

_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit28.i.i3.i.i: ; preds = %bb.fe, %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit.i.i2.i.i
  %i.sb = load ptr, ptr %i.rs, align 8, !noalias !45523, !nonnull !41, !noundef !41
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 144
  %i.sd = load double, ptr %i.sc, align 8, !noalias !45523, !noundef !41
  %i.se = load i64, ptr %i.ay, align 16, !range !95, !alias.scope !45526, !noalias !45527, !noundef !41 ; 3 uses
  %i.sf = call i64 @llvm.usub.sat.i64(i64 %i.se, i64 1)
  switch i64 %i.sf, label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit.i.i.i.i [
    i64 0, label %bb.ff
    i64 1, label %bb.fg
  ]

bb.ff:                                            ; preds = %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit28.i.i3.i.i
  %i.sg = getelementptr inbounds nuw i8, ptr %i.ay, i64 72
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit.sink.split.i.i.i.i

bb.fg:                                            ; preds = %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit28.i.i3.i.i
  %i.sh = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.si = load i64, ptr %.sink36.i.i.i.i.sroa.gep, align 8, !range !49, !alias.scope !45526, !noalias !45527, !noundef !41
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit.sink.split.i.i.i.i

_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit.sink.split.i.i.i.i: ; preds = %bb.fg, %bb.ff
  %.sink37.i.i.i.i = phi i64 [ %i.se, %bb.ff ], [ %i.si, %bb.fg ]
  %.sink36.i.i.i.i.sroa.phi = phi ptr [ %.sink36.i.i.i.i.sroa.gep, %bb.ff ], [ %.sink36.i.i.i.i.sroa.gep469, %bb.fg ]
  %.sink34.in.i.i.i.i = phi ptr [ %i.sg, %bb.ff ], [ %i.sh, %bb.fg ]
  %.sink34.i.i.i.i = load double, ptr %.sink34.in.i.i.i.i, align 8, !alias.scope !45526, !noalias !45527, !noundef !41 ; 2 uses
  %i.sj = trunc nuw i64 %.sink37.i.i.i.i to i1
  %i.sk = load double, ptr %.sink36.i.i.i.i.sroa.phi, align 8, !alias.scope !45526, !noalias !45527
  %.sroa.022.0.i.i.i4.i.i = select i1 %i.sj, double %i.sk, double %.sink34.i.i.i.i ; 2 uses
  %i.sl = fneg double %.sroa.022.0.i.i.i4.i.i
  %i.sm = fcmp uno double %.sroa.022.0.i.i.i4.i.i, 0.000000e+00
  %spec.store.select.i.i.i5.i.i = select i1 %i.sm, double 0.000000e+00, double %i.sl
  %i.sn = fadd double %.sink34.i.i.i.i, %spec.store.select.i.i.i5.i.i ; 2 uses
  %.inv23.i.i.i6.i.i = fcmp ord double %i.sn, 0.000000e+00
  %spec.store.select1.i.i.i7.i.i = select i1 %.inv23.i.i.i6.i.i, double %i.sn, double 0.000000e+00
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit.i.i.i.i

_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit.i.i.i.i: ; preds = %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit.sink.split.i.i.i.i, %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit28.i.i3.i.i
  %.sroa.0.0.i.i.i8.i.i = phi double [ 0.000000e+00, %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit28.i.i3.i.i ], [ %spec.store.select1.i.i.i7.i.i, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit.sink.split.i.i.i.i ]
  %i.so = load i64, ptr %i.ag, align 16, !range !95, !alias.scope !45528, !noalias !45529, !noundef !41 ; 2 uses
  %i.sp = call i64 @llvm.usub.sat.i64(i64 %i.so, i64 1)
  switch i64 %i.sp, label %_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts20compute_limit_shiftss_0B7_.exit.i.i.i [
    i64 0, label %bb.fh
    i64 1, label %bb.fi
  ]

bb.fh:                                            ; preds = %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit.i.i.i.i
  %10 = trunc nuw i64 %i.so to i1
  %spec.select.v.i.i22.i.i = select i1 %10, i64 8, i64 72
  br label %.sink.split.i.i10.i.i

bb.fi:                                            ; preds = %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit.i.i.i.i
  %i.sq = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.sr = load i64, ptr %i.sq, align 8, !range !49, !alias.scope !45528, !noalias !45529, !noundef !41
  %i.ss = trunc nuw i64 %i.sr to i1
  %spec.select27.v.i.i9.i.i = select i1 %i.ss, i64 16, i64 40
  br label %.sink.split.i.i10.i.i

.sink.split.i.i10.i.i:                            ; preds = %bb.fi, %bb.fh
  %spec.select27.v.sink.i.i11.i.i = phi i64 [ %spec.select27.v.i.i9.i.i, %bb.fi ], [ %spec.select.v.i.i22.i.i, %bb.fh ]
  %spec.select27.i.i12.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 %spec.select27.v.sink.i.i11.i.i
  %.sroa.025.2.i.i13.i.i = load double, ptr %spec.select27.i.i12.i.i, align 8, !alias.scope !45528, !noalias !45529
  br label %_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts20compute_limit_shiftss_0B7_.exit.i.i.i

_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts20compute_limit_shiftss_0B7_.exit.i.i.i: ; preds = %.sink.split.i.i10.i.i, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit.i.i.i.i
  %.sroa.025.1.i.i14.i.i = phi double [ 0.000000e+00, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit.i.i.i.i ], [ %.sroa.025.2.i.i13.i.i, %.sink.split.i.i10.i.i ]
  %i.st = fmul double %.sroa.0.0.i.i, %i.sd       ; 2 uses
  %i.su = call double @llvm.fabs.f64(double %i.st)
  %i.sv = fcmp one double %i.su, +inf
  %spec.store.select5.i.i15.i.i = select i1 %i.sv, double %i.st, double 0.000000e+00
  %i.sw = fmul double %.sroa.0.0.i.i, %i.ry       ; 2 uses
  %i.sx = call double @llvm.fabs.f64(double %i.sw)
  %i.sy = fcmp one double %i.sx, +inf
  %spec.store.select4.i.i16.i.i = select i1 %i.sy, double %i.sw, double 0.000000e+00
  %i.sz = fadd double %spec.store.select4.i.i16.i.i, %.sroa.025.1.i.i14.i.i ; 2 uses
  %.inv.i.i17.i.i = fcmp ord double %i.sz, 0.000000e+00
  %spec.store.select2.i.i18.i.i = select i1 %.inv.i.i17.i.i, double %i.sz, double 0.000000e+00
  %i.ta = invoke noundef double @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout3absNtB2_3Abs3max(double noundef %spec.store.select5.i.i15.i.i, double noundef %spec.store.select2.i.i18.i.i)
          to label %.noexc311.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !45461

.noexc311.i:                                      ; preds = %_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts20compute_limit_shiftss_0B7_.exit.i.i.i
  %i.tb = fadd double %.sroa.0.0.i.i.i8.i.i, %i.ta ; 2 uses
  %.inv26.i.i19.i.i = fcmp ord double %i.tb, 0.000000e+00
  %spec.store.select3.i.i20.i.i = select i1 %.inv26.i.i19.i.i, double %i.tb, double 0.000000e+00
  br label %bb.fj

bb.fj:                                            ; preds = %.noexc311.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentE14map_or_defaultNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNCNvNtBN_7scripts20compute_limit_shifts0EBP_.exit.i.i
  %i.tc = phi i64 [ %i.se, %.noexc311.i ], [ %i.rq, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentE14map_or_defaultNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNCNvNtBN_7scripts20compute_limit_shifts0EBP_.exit.i.i ] ; 4 uses
  %.sroa.02.0.i21.i.i = phi double [ %spec.store.select3.i.i20.i.i, %.noexc311.i ], [ 0.000000e+00, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentE14map_or_defaultNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNCNvNtBN_7scripts20compute_limit_shifts0EBP_.exit.i.i ] ; 2 uses
  %i.td = call i64 @llvm.usub.sat.i64(i64 %i.tc, i64 1) ; 5 uses
  switch i64 %i.td, label %bb.fm [
    i64 0, label %bb.fk
    i64 1, label %bb.fl
  ]

bb.fk:                                            ; preds = %bb.fj
  %11 = trunc nuw i64 %i.tc to i1
  %spec.select.v.i = select i1 %11, i64 8, i64 72
  br label %.sink.split.i

bb.fl:                                            ; preds = %bb.fj
  %i.te = load i64, ptr %.sink36.i.i.i.i.sroa.gep, align 8, !range !49, !alias.scope !45460, !noalias !45530, !noundef !41
  %i.tf = trunc nuw i64 %i.te to i1
  %spec.select245.v.i = select i1 %i.tf, i64 16, i64 40
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.fl, %bb.fk
  %spec.select245.v.sink.i = phi i64 [ %spec.select245.v.i, %bb.fl ], [ %spec.select.v.i, %bb.fk ]
  %spec.select245.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 %spec.select245.v.sink.i
  %.sroa.040.2.i = load double, ptr %spec.select245.i, align 8, !alias.scope !45460, !noalias !45530
  br label %bb.fm

bb.fm:                                            ; preds = %.sink.split.i, %bb.fj
  %.sroa.040.1.i = phi double [ 0.000000e+00, %bb.fj ], [ %.sroa.040.2.i, %.sink.split.i ]
  %i.tg = load i64, ptr %i.ai, align 16, !range !83, !noalias !45461, !noundef !41 ; 3 uses
  %.not205.i = icmp eq i64 %i.tg, -1
  br i1 %.not205.i, label %bb.fo, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.th = call i64 @llvm.usub.sat.i64(i64 %i.tg, i64 1)
  switch i64 %i.th, label %bb.fo [
    i64 0, label %bb.fp
    i64 1, label %bb.fq
  ]

bb.fo:                                            ; preds = %bb.fq, %bb.fp, %bb.fn, %bb.fm
  %.sroa.0193.0.i = phi double [ 0.000000e+00, %bb.fm ], [ %.sroa.088.2.i, %bb.fq ], [ %.sroa.088.0.i, %bb.fp ], [ 0.000000e+00, %bb.fn ]
  %i.ti = extractelement <2 x double> %i.qd, i64 1 ; 8 uses
  %i.tj = fadd double %i.ti, %.sroa.0193.0.i      ; 2 uses
  %.inv.i = fcmp ord double %i.tj, 0.000000e+00
  %spec.store.select.i = select i1 %.inv.i, double %i.tj, double 0.000000e+00
  %i.tk = invoke noundef double @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout3absNtB2_3Abs3max(double noundef %.sroa.040.1.i, double noundef %spec.store.select.i)
          to label %bb.fr unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !45461

bb.fp:                                            ; preds = %bb.fn
  %i.tl = getelementptr inbounds nuw i8, ptr %i.ai, i64 72
  %i.tm = load double, ptr %i.tl, align 8, !noalias !45461, !noundef !41
  %i.tn = trunc nuw i64 %i.tg to i1
  %i.to = load double, ptr %.sink377.i.sroa.gep59.i, align 8, !noalias !45461
  %.sroa.088.0.i = select i1 %i.tn, double %i.to, double %i.tm
  br label %bb.fo

bb.fq:                                            ; preds = %bb.fn
  %i.tp = load i64, ptr %.sink377.i.sroa.gep59.i, align 8, !range !49, !noalias !45461, !noundef !41
  %i.tq = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  %i.tr = load double, ptr %i.tq, align 8, !noalias !45461, !noundef !41
  %i.ts = trunc nuw i64 %i.tp to i1
  %i.tt = load double, ptr %.sink377.i.sroa.gep.i, align 16, !noalias !45461
  %.sroa.088.2.i = select i1 %i.ts, double %i.tt, double %i.tr
  br label %bb.fo

bb.fr:                                            ; preds = %bb.fo
  %i.tu = load i64, ptr %i.ak, align 16, !range !83, !noalias !45461, !noundef !41 ; 3 uses
  %.not206.i = icmp eq i64 %i.tu, -1
  br i1 %.not206.i, label %bb.ft, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.tv = call i64 @llvm.usub.sat.i64(i64 %i.tu, i64 1)
  switch i64 %i.tv, label %bb.ft [
    i64 0, label %bb.fu
    i64 1, label %bb.fv
  ]

bb.ft:                                            ; preds = %bb.fv, %bb.fu, %bb.fs, %bb.fr
  %.sroa.0194.0.i = phi double [ 0.000000e+00, %bb.fr ], [ %.sroa.098.2.i, %bb.fv ], [ %.sroa.098.0.i, %bb.fu ], [ 0.000000e+00, %bb.fs ]
  %i.tw = fadd double %i.ti, %.sroa.0194.0.i      ; 2 uses
  %.inv207.i = fcmp ord double %i.tw, 0.000000e+00
  %spec.store.select1.i = select i1 %.inv207.i, double %i.tw, double 0.000000e+00
  %i.tx = invoke noundef double @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout3absNtB2_3Abs3max(double noundef %i.tk, double noundef %spec.store.select1.i)
          to label %bb.fw unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !45461

bb.fu:                                            ; preds = %bb.fs
  %i.ty = getelementptr inbounds nuw i8, ptr %i.ak, i64 72
  %i.tz = load double, ptr %i.ty, align 8, !noalias !45461, !noundef !41
  %i.ua = trunc nuw i64 %i.tu to i1
  %i.ub = load double, ptr %.sink368.i.sroa.gep65.i, align 8, !noalias !45461
  %.sroa.098.0.i = select i1 %i.ua, double %i.ub, double %i.tz
  br label %bb.ft

bb.fv:                                            ; preds = %bb.fs
  %i.uc = load i64, ptr %.sink368.i.sroa.gep65.i, align 8, !range !49, !noalias !45461, !noundef !41
  %i.ud = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %i.ue = load double, ptr %i.ud, align 8, !noalias !45461, !noundef !41
  %i.uf = trunc nuw i64 %i.uc to i1
  %i.ug = load double, ptr %.sink368.i.sroa.gep.i, align 16, !noalias !45461
  %.sroa.098.2.i = select i1 %i.uf, double %i.ug, double %i.ue
  br label %bb.ft

bb.fw:                                            ; preds = %bb.ft
  %i.uh = load i64, ptr %i.aj, align 16, !range !83, !noalias !45461, !noundef !41 ; 4 uses
  %.not208.i = icmp eq i64 %i.uh, -1              ; 4 uses
  br i1 %.not208.i, label %bb.fy, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.ui = call i64 @llvm.usub.sat.i64(i64 %i.uh, i64 1)
  switch i64 %i.ui, label %bb.fy [
    i64 0, label %bb.fz
    i64 1, label %bb.ga
  ]

bb.fy:                                            ; preds = %bb.ga, %bb.fz, %bb.fx, %bb.fw
  %.sroa.0195.0.i = phi double [ 0.000000e+00, %bb.fw ], [ %.sroa.0108.2.i, %bb.ga ], [ %.sroa.0108.0.i, %bb.fz ], [ 0.000000e+00, %bb.fx ]
  %i.uj = fadd double %.sroa.02.0.i.i.i, %.sroa.0195.0.i ; 2 uses
  %.inv209.i = fcmp ord double %i.uj, 0.000000e+00
  %spec.store.select2.i = select i1 %.inv209.i, double %i.uj, double 0.000000e+00
  %i.uk = invoke noundef double @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout3absNtB2_3Abs3max(double noundef %i.tx, double noundef %spec.store.select2.i)
          to label %bb.gb unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !45461 ; 12 uses

bb.fz:                                            ; preds = %bb.fx
  %i.ul = getelementptr inbounds nuw i8, ptr %i.aj, i64 72
  %i.um = load double, ptr %i.ul, align 8, !noalias !45461, !noundef !41
  %i.un = trunc nuw i64 %i.uh to i1
  %i.uo = load double, ptr %.sink11.i.i.sroa.gep.i, align 8, !noalias !45461
  %.sroa.0108.0.i = select i1 %i.un, double %i.uo, double %i.um
  br label %bb.fy

bb.ga:                                            ; preds = %bb.fx
  %i.up = load i64, ptr %.sink11.i.i.sroa.gep.i, align 8, !range !49, !noalias !45461, !noundef !41
  %i.uq = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.ur = load double, ptr %i.uq, align 8, !noalias !45461, !noundef !41
  %i.us = trunc nuw i64 %i.up to i1
  %i.ut = load double, ptr %.sink11.i.i.sroa.gep203.i, align 16, !noalias !45461
  %.sroa.0108.2.i = select i1 %i.us, double %i.ut, double %i.ur
  br label %bb.fy

bb.gb:                                            ; preds = %bb.fy
  switch i64 %i.td, label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit.i [
    i64 0, label %bb.gc
    i64 1, label %bb.gd
  ]

bb.gc:                                            ; preds = %bb.gb
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ay, i64 72
  %i.uv = load double, ptr %i.uu, align 8, !alias.scope !45531, !noalias !45530, !noundef !41 ; 2 uses
  %i.uw = trunc nuw i64 %i.tc to i1
  %i.ux = load double, ptr %.sink36.i.i.i.i.sroa.gep, align 8, !alias.scope !45531, !noalias !45530
  %.sroa.022.0.i.i = select i1 %i.uw, double %i.ux, double %i.uv ; 2 uses
  %i.uy = fneg double %.sroa.022.0.i.i
  %i.uz = fcmp uno double %.sroa.022.0.i.i, 0.000000e+00
  %spec.store.select.i.i = select i1 %i.uz, double 0.000000e+00, double %i.uy
  %i.va = fadd double %i.uv, %spec.store.select.i.i ; 2 uses
  %.inv23.i.i = fcmp ord double %i.va, 0.000000e+00
  %spec.store.select1.i.i = select i1 %.inv23.i.i, double %i.va, double 0.000000e+00
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit.i

bb.gd:                                            ; preds = %bb.gb
  %i.vb = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.vc = load double, ptr %i.vb, align 8, !alias.scope !45531, !noalias !45530, !noundef !41 ; 2 uses
  %i.vd = load i64, ptr %.sink36.i.i.i.i.sroa.gep, align 8, !range !49, !alias.scope !45531, !noalias !45530, !noundef !41
  %i.ve = trunc nuw i64 %i.vd to i1
  %i.vf = load double, ptr %.sink36.i.i.i.i.sroa.gep469, align 16, !alias.scope !45531, !noalias !45530
  %.sroa.012.0.i.i = select i1 %i.ve, double %i.vf, double %i.vc ; 2 uses
  %i.vg = fneg double %.sroa.012.0.i.i
  %i.vh = fcmp uno double %.sroa.012.0.i.i, 0.000000e+00
  %spec.store.select2.i.i = select i1 %i.vh, double 0.000000e+00, double %i.vg
  %i.vi = fadd double %i.vc, %spec.store.select2.i.i ; 2 uses
  %.inv.i312.i = fcmp ord double %i.vi, 0.000000e+00
  %spec.store.select3.i.i = select i1 %.inv.i312.i, double %i.vi, double 0.000000e+00
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit.i

_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit.i: ; preds = %bb.gd, %bb.gc, %bb.gb
  %.sroa.0.0.i313.i = phi double [ %spec.store.select3.i.i, %bb.gd ], [ %spec.store.select1.i.i, %bb.gc ], [ 0.000000e+00, %bb.gb ]
  %i.vj = load i64, ptr %i.af, align 16, !range !83, !noalias !45461, !noundef !41 ; 3 uses
  %.not210.i = icmp eq i64 %i.vj, -1
  br i1 %.not210.i, label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit323.i, label %bb.ge

bb.ge:                                            ; preds = %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit.i
  %i.vk = call i64 @llvm.usub.sat.i64(i64 %i.vj, i64 1)
  switch i64 %i.vk, label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit323.i [
    i64 0, label %bb.gf
    i64 1, label %bb.gg
  ]

bb.gf:                                            ; preds = %bb.ge
  %i.vl = getelementptr inbounds nuw i8, ptr %i.af, i64 72
  %i.vm = load double, ptr %i.vl, align 8, !alias.scope !45532, !noalias !45461, !noundef !41 ; 2 uses
  %i.vn = trunc nuw i64 %i.vj to i1
  %i.vo = load double, ptr %.sroa.16.1520..sroa_idx, align 8, !alias.scope !45532, !noalias !45461
  %.sroa.022.0.i319.i = select i1 %i.vn, double %i.vo, double %i.vm ; 2 uses
  %i.vp = fneg double %.sroa.022.0.i319.i
  %i.vq = fcmp uno double %.sroa.022.0.i319.i, 0.000000e+00
  %spec.store.select.i320.i = select i1 %i.vq, double 0.000000e+00, double %i.vp
  %i.vr = fadd double %i.vm, %spec.store.select.i320.i ; 2 uses
  %.inv23.i321.i = fcmp ord double %i.vr, 0.000000e+00
  %spec.store.select1.i322.i = select i1 %.inv23.i321.i, double %i.vr, double 0.000000e+00
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit323.i

bb.gg:                                            ; preds = %bb.ge
  %i.vs = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.vt = load double, ptr %i.vs, align 8, !alias.scope !45532, !noalias !45461, !noundef !41 ; 2 uses
  %i.vu = load i64, ptr %.sroa.16.1520..sroa_idx, align 8, !range !49, !alias.scope !45532, !noalias !45461, !noundef !41
  %i.vv = trunc nuw i64 %i.vu to i1
  %i.vw = load double, ptr %.sroa.17.1520..sroa_idx, align 16, !alias.scope !45532, !noalias !45461
  %.sroa.012.0.i314.i = select i1 %i.vv, double %i.vw, double %i.vt ; 2 uses
  %i.vx = fneg double %.sroa.012.0.i314.i
  %i.vy = fcmp uno double %.sroa.012.0.i314.i, 0.000000e+00
  %spec.store.select2.i315.i = select i1 %i.vy, double 0.000000e+00, double %i.vx
  %i.vz = fadd double %i.vt, %spec.store.select2.i315.i ; 2 uses
  %.inv.i316.i = fcmp ord double %i.vz, 0.000000e+00
  %spec.store.select3.i317.i = select i1 %.inv.i316.i, double %i.vz, double 0.000000e+00
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit323.i

_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit323.i: ; preds = %bb.gg, %bb.gf, %bb.ge, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit.i
  %.sroa.0196.0.i = phi double [ 0.000000e+00, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit.i ], [ %spec.store.select3.i317.i, %bb.gg ], [ %spec.store.select1.i322.i, %bb.gf ], [ 0.000000e+00, %bb.ge ]
  %i.wa = extractelement <2 x double> %i.qd, i64 0 ; 6 uses
  %i.wb = fadd double %i.wa, %.sroa.0196.0.i      ; 2 uses
  %.inv211.i = fcmp ord double %i.wb, 0.000000e+00
  %spec.store.select3.i = select i1 %.inv211.i, double %i.wb, double 0.000000e+00
  %i.wc = invoke noundef double @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout3absNtB2_3Abs3max(double noundef %.sroa.0.0.i313.i, double noundef %spec.store.select3.i)
          to label %bb.gh unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !45461

bb.gh:                                            ; preds = %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit323.i
  %i.wd = load i64, ptr %i.ah, align 16, !range !83, !noalias !45461, !noundef !41 ; 3 uses
  %.not212.i = icmp eq i64 %i.wd, -1
  br i1 %.not212.i, label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit333.i, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.we = call i64 @llvm.usub.sat.i64(i64 %i.wd, i64 1)
  switch i64 %i.we, label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit333.i [
    i64 0, label %bb.gj
    i64 1, label %bb.gk
  ]

bb.gj:                                            ; preds = %bb.gi
  %i.wf = getelementptr inbounds nuw i8, ptr %i.ah, i64 72
  %i.wg = load double, ptr %i.wf, align 8, !alias.scope !45533, !noalias !45461, !noundef !41 ; 2 uses
  %i.wh = trunc nuw i64 %i.wd to i1
  %i.wi = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.wj = load double, ptr %i.wi, align 8, !alias.scope !45533, !noalias !45461
  %.sroa.022.0.i329.i = select i1 %i.wh, double %i.wj, double %i.wg ; 2 uses
  %i.wk = fneg double %.sroa.022.0.i329.i
  %i.wl = fcmp uno double %.sroa.022.0.i329.i, 0.000000e+00
  %spec.store.select.i330.i = select i1 %i.wl, double 0.000000e+00, double %i.wk
  %i.wm = fadd double %i.wg, %spec.store.select.i330.i ; 2 uses
  %.inv23.i331.i = fcmp ord double %i.wm, 0.000000e+00
  %spec.store.select1.i332.i = select i1 %.inv23.i331.i, double %i.wm, double 0.000000e+00
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit333.i

bb.gk:                                            ; preds = %bb.gi
  %i.wn = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.wo = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %i.wp = load double, ptr %i.wo, align 8, !alias.scope !45533, !noalias !45461, !noundef !41 ; 2 uses
  %i.wq = load i64, ptr %i.wn, align 8, !range !49, !alias.scope !45533, !noalias !45461, !noundef !41
  %i.wr = trunc nuw i64 %i.wq to i1
  %i.ws = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.wt = load double, ptr %i.ws, align 16, !alias.scope !45533, !noalias !45461
  %.sroa.012.0.i324.i = select i1 %i.wr, double %i.wt, double %i.wp ; 2 uses
  %i.wu = fneg double %.sroa.012.0.i324.i
  %i.wv = fcmp uno double %.sroa.012.0.i324.i, 0.000000e+00
  %spec.store.select2.i325.i = select i1 %i.wv, double 0.000000e+00, double %i.wu
  %i.ww = fadd double %i.wp, %spec.store.select2.i325.i ; 2 uses
  %.inv.i326.i = fcmp ord double %i.ww, 0.000000e+00
  %spec.store.select3.i327.i = select i1 %.inv.i326.i, double %i.ww, double 0.000000e+00
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit333.i

_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit333.i: ; preds = %bb.gk, %bb.gj, %bb.gi, %bb.gh
  %.sroa.0197.0.i = phi double [ 0.000000e+00, %bb.gh ], [ %spec.store.select3.i327.i, %bb.gk ], [ %spec.store.select1.i332.i, %bb.gj ], [ 0.000000e+00, %bb.gi ]
  %i.wx = fadd double %i.wa, %.sroa.0197.0.i      ; 2 uses
  %.inv213.i = fcmp ord double %i.wx, 0.000000e+00
  %spec.store.select4.i = select i1 %.inv213.i, double %i.wx, double 0.000000e+00
  %i.wy = invoke noundef double @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout3absNtB2_3Abs3max(double noundef %i.wc, double noundef %spec.store.select4.i)
          to label %bb.gl unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !45461

bb.gl:                                            ; preds = %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit333.i
  %i.wz = load i64, ptr %i.ag, align 16, !range !83, !noalias !45461, !noundef !41 ; 3 uses
  %.not214.i = icmp eq i64 %i.wz, -1              ; 6 uses
  br i1 %.not214.i, label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit343.i, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.xa = call i64 @llvm.usub.sat.i64(i64 %i.wz, i64 1)
  switch i64 %i.xa, label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit343.i [
    i64 0, label %bb.gn
    i64 1, label %bb.go
  ]

bb.gn:                                            ; preds = %bb.gm
  %i.xb = getelementptr inbounds nuw i8, ptr %i.ag, i64 72
  %i.xc = load double, ptr %i.xb, align 8, !alias.scope !45534, !noalias !45461, !noundef !41 ; 2 uses
  %i.xd = trunc nuw i64 %i.wz to i1
  %i.xe = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.xf = load double, ptr %i.xe, align 8, !alias.scope !45534, !noalias !45461
  %.sroa.022.0.i339.i = select i1 %i.xd, double %i.xf, double %i.xc ; 2 uses
  %i.xg = fneg double %.sroa.022.0.i339.i
  %i.xh = fcmp uno double %.sroa.022.0.i339.i, 0.000000e+00
  %spec.store.select.i340.i = select i1 %i.xh, double 0.000000e+00, double %i.xg
  %i.xi = fadd double %i.xc, %spec.store.select.i340.i ; 2 uses
  %.inv23.i341.i = fcmp ord double %i.xi, 0.000000e+00
  %spec.store.select1.i342.i = select i1 %.inv23.i341.i, double %i.xi, double 0.000000e+00
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit343.i

bb.go:                                            ; preds = %bb.gm
  %i.xj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.xk = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.xl = load double, ptr %i.xk, align 8, !alias.scope !45534, !noalias !45461, !noundef !41 ; 2 uses
  %i.xm = load i64, ptr %i.xj, align 8, !range !49, !alias.scope !45534, !noalias !45461, !noundef !41
  %i.xn = trunc nuw i64 %i.xm to i1
  %i.xo = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.xp = load double, ptr %i.xo, align 16, !alias.scope !45534, !noalias !45461
  %.sroa.012.0.i334.i = select i1 %i.xn, double %i.xp, double %i.xl ; 2 uses
  %i.xq = fneg double %.sroa.012.0.i334.i
  %i.xr = fcmp uno double %.sroa.012.0.i334.i, 0.000000e+00
  %spec.store.select2.i335.i = select i1 %i.xr, double 0.000000e+00, double %i.xq
  %i.xs = fadd double %i.xl, %spec.store.select2.i335.i ; 2 uses
  %.inv.i336.i = fcmp ord double %i.xs, 0.000000e+00
  %spec.store.select3.i337.i = select i1 %.inv.i336.i, double %i.xs, double 0.000000e+00
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit343.i

_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit343.i: ; preds = %bb.go, %bb.gn, %bb.gm, %bb.gl
  %.sroa.0198.0.i = phi double [ 0.000000e+00, %bb.gl ], [ %spec.store.select3.i337.i, %bb.go ], [ %spec.store.select1.i342.i, %bb.gn ], [ 0.000000e+00, %bb.gm ]
  %i.xt = fadd double %.sroa.02.0.i21.i.i, %.sroa.0198.0.i ; 2 uses
  %.inv215.i = fcmp ord double %i.xt, 0.000000e+00
  %spec.store.select5.i = select i1 %.inv215.i, double %i.xt, double 0.000000e+00
  %i.xu = invoke noundef double @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout3absNtB2_3Abs3max(double noundef %i.wy, double noundef %spec.store.select5.i)
          to label %bb.gp unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !45461

bb.gp:                                            ; preds = %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit343.i
  %i.xv = fadd double %i.uk, %i.xu                ; 2 uses
  %.inv216.i = fcmp ord double %i.xv, 0.000000e+00
  %spec.store.select6.i = select i1 %.inv216.i, double %i.xv, double 0.000000e+00
  switch i64 %i.td, label %bb.gq [
    i64 0, label %.thread.i
    i64 1, label %.thread84.i
  ]

.thread.i:                                        ; preds = %bb.gp
  %12 = trunc nuw i64 %i.tc to i1
  %.sroa.gep473 = getelementptr inbounds nuw i8, ptr %i.ay, i64 72
  %.sink36.i.i.i.i.sroa.gep.val = load double, ptr %.sink36.i.i.i.i.sroa.gep, align 8
  %.sroa.gep473.val = load double, ptr %.sroa.gep473, align 8
  %.sroa.0199.0.i = select i1 %12, double %.sink36.i.i.i.i.sroa.gep.val, double %.sroa.gep473.val ; 2 uses
  %i.xw = fneg double %.sroa.0199.0.i
  %i.xx = fcmp uno double %.sroa.0199.0.i, 0.000000e+00
  %spec.store.select767.i = select i1 %i.xx, double 0.000000e+00, double %i.xw
  %i.xy = fadd double %i.uk, %spec.store.select767.i ; 2 uses
  %.inv21768.i = fcmp ord double %i.xy, 0.000000e+00
  %spec.store.select869.i = select i1 %.inv21768.i, double %i.xy, double 0.000000e+00 ; 2 uses
  %.sroa.059.073.i = select i1 %.not214.i, ptr null, ptr %i.ag ; 2 uses
  %i.xz = load double, ptr %.sink19.i.i.i.i.sroa.gep471, align 8, !alias.scope !45535, !noalias !45536, !noundef !41
  %i.ya = fmul double %i.xz, 5.000000e-01         ; 2 uses
  %.inv.i344110155.i = fcmp ord double %i.ya, 0.000000e+00
  %spec.store.select.i345111156.i = select i1 %.inv.i344110155.i, double %i.ya, double 0.000000e+00 ; 2 uses
  br i1 %.not208.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentE14map_or_defaultTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB21_ENCNvNtBN_7scripts20compute_limit_widths0EBP_.exit.i.i, label %bb.gr

.thread84.i:                                      ; preds = %bb.gp
  %i.yb = load i64, ptr %.sink36.i.i.i.i.sroa.gep, align 8, !range !49, !alias.scope !45460, !noalias !45530, !noundef !41
  %i.yc = trunc nuw i64 %i.yb to i1
  %.sroa.gep470 = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %.sink36.i.i.i.i.sroa.gep469.val = load double, ptr %.sink36.i.i.i.i.sroa.gep469, align 16
  %.sroa.gep470.val = load double, ptr %.sroa.gep470, align 8
  %.sroa.0199.2.i = select i1 %i.yc, double %.sink36.i.i.i.i.sroa.gep469.val, double %.sroa.gep470.val ; 2 uses
  %i.yd = fneg double %.sroa.0199.2.i
  %i.ye = fcmp uno double %.sroa.0199.2.i, 0.000000e+00
  %spec.store.select786.i = select i1 %i.ye, double 0.000000e+00, double %i.yd
  %i.yf = fadd double %i.uk, %spec.store.select786.i ; 2 uses
  %.inv21787.i = fcmp ord double %i.yf, 0.000000e+00
  %spec.store.select888.i = select i1 %.inv21787.i, double %i.yf, double 0.000000e+00 ; 2 uses
  %.sroa.059.092.i = select i1 %.not214.i, ptr null, ptr %i.ag ; 2 uses
  %i.yg = load double, ptr %.sink19.i.i.i.i.sroa.gep, align 16, !alias.scope !45535, !noalias !45536, !noundef !41
  %i.yh = fmul double %i.yg, 5.000000e-01         ; 2 uses
  %.inv.i34498157.i = fcmp ord double %i.yh, 0.000000e+00
  %spec.store.select.i34599158.i = select i1 %.inv.i34498157.i, double %i.yh, double 0.000000e+00 ; 2 uses
  br i1 %.not208.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentE14map_or_defaultTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB21_ENCNvNtBN_7scripts20compute_limit_widths0EBP_.exit.i.i, label %bb.gr

bb.gq:                                            ; preds = %bb.gp
  %.inv217.i = fcmp ord double %i.uk, 0.000000e+00
  %spec.store.select8.i = select i1 %.inv217.i, double %i.uk, double 0.000000e+00 ; 2 uses
  %.sroa.059.0.i = select i1 %.not214.i, ptr null, ptr %i.ag ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !45537)
  call void @llvm.experimental.noalias.scope.decl(metadata !45538)
  call void @llvm.experimental.noalias.scope.decl(metadata !45539)
  br i1 %.not208.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentE14map_or_defaultTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB21_ENCNvNtBN_7scripts20compute_limit_widths0EBP_.exit.i.i, label %bb.gr

bb.gr:                                            ; preds = %bb.gq, %.thread84.i, %.thread.i
  %spec.store.select.i345107.i = phi double [ %spec.store.select.i345111156.i, %.thread.i ], [ 0.000000e+00, %bb.gq ], [ %spec.store.select.i34599158.i, %.thread84.i ] ; 3 uses
  %spec.store.select875105.i = phi double [ %spec.store.select869.i, %.thread.i ], [ %spec.store.select8.i, %bb.gq ], [ %spec.store.select888.i, %.thread84.i ] ; 2 uses
  %.sroa.059.083100.i = phi ptr [ %.sroa.059.073.i, %.thread.i ], [ %.sroa.059.0.i, %bb.gq ], [ %.sroa.059.092.i, %.thread84.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !45540)
  call void @llvm.experimental.noalias.scope.decl(metadata !45541)
  %i.yi = call i64 @llvm.usub.sat.i64(i64 %i.uh, i64 1)
  switch i64 %i.yi, label %default.unreachable.i.i [
    i64 0, label %bb.gs
    i64 1, label %bb.gt
    i64 2, label %bb.gu
    i64 3, label %bb.gv
  ]

default.unreachable:                              ; preds = %bb.id, %bb.hx, %.noexc378.i, %.noexc363.i, %.noexc362.i, %bb.hd, %bb.gz, %bb.gv
  unreachable

default.unreachable.i.i:                          ; preds = %bb.gr
  unreachable

bb.gs:                                            ; preds = %bb.gr
  %i.yj = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  %i.yk = load double, ptr %i.yj, align 16, !alias.scope !45542, !noalias !45543, !noundef !41
  br label %bb.gv

bb.gt:                                            ; preds = %bb.gr
  %i.yl = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.ym = load double, ptr %i.yl, align 16, !alias.scope !45542, !noalias !45543, !noundef !41
  br label %bb.gv

bb.gu:                                            ; preds = %bb.gr
  %i.yn = load double, ptr %.sink11.i.i.sroa.gep.i, align 8, !alias.scope !45542, !noalias !45543, !noundef !41
  br label %bb.gv

bb.gv:                                            ; preds = %bb.gu, %bb.gt, %bb.gs, %bb.gr
  %.sroa.024.0.i.i.i.i = phi double [ %i.yk, %bb.gs ], [ %i.ym, %bb.gt ], [ %i.yn, %bb.gu ], [ 0.000000e+00, %bb.gr ]
  switch i64 %i.td, label %default.unreachable [
    i64 0, label %bb.gw
    i64 1, label %bb.gx
    i64 2, label %bb.gy
    i64 3, label %_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts20compute_limit_widths0B7_.exit.i.i.i
  ]

bb.gw:                                            ; preds = %bb.gv
  %i.yo = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
  %i.yp = load double, ptr %i.yo, align 16, !alias.scope !45544, !noalias !45545, !noundef !41
  br label %_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts20compute_limit_widths0B7_.exit.i.i.i

bb.gx:                                            ; preds = %bb.gv
  %i.yq = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.yr = load double, ptr %i.yq, align 16, !alias.scope !45544, !noalias !45545, !noundef !41
  br label %_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts20compute_limit_widths0B7_.exit.i.i.i

bb.gy:                                            ; preds = %bb.gv
  %i.ys = load double, ptr %.sink36.i.i.i.i.sroa.gep, align 8, !alias.scope !45544, !noalias !45545, !noundef !41
  br label %_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts20compute_limit_widths0B7_.exit.i.i.i

_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts20compute_limit_widths0B7_.exit.i.i.i: ; preds = %bb.gy, %bb.gx, %bb.gw, %bb.gv
  %.sroa.025.0.i.i.i.i = phi double [ %i.yp, %bb.gw ], [ %i.yr, %bb.gx ], [ %i.ys, %bb.gy ], [ 0.000000e+00, %bb.gv ] ; 2 uses
  %i.yt = fneg double %.sroa.025.0.i.i.i.i
  %i.yu = fcmp uno double %.sroa.025.0.i.i.i.i, 0.000000e+00
  %spec.store.select.i.i.i347.i = select i1 %i.yu, double 0.000000e+00, double %i.yt
  %i.yv = fadd double %.sroa.024.0.i.i.i.i, %spec.store.select.i.i.i347.i ; 2 uses
  %.inv.i.i.i348.i = fcmp ord double %i.yv, 0.000000e+00
  %i.yw = fmul double %i.yv, 5.000000e-01
  %i.yx = select i1 %.inv.i.i.i348.i, double %i.yw, double 0.000000e+00 ; 2 uses
  %.inv26.i.i.i349.i = fcmp ord double %i.yx, 0.000000e+00
  %spec.store.select2.i.i.i350.i = select i1 %.inv26.i.i.i349.i, double %i.yx, double 0.000000e+00 ; 2 uses
  %i.yy = fsub double %spec.store.select2.i.i.i350.i, %spec.store.select.i345107.i ; 2 uses
  %.inv27.i.i.i.i = fcmp ord double %i.yy, 0.000000e+00
  %spec.store.select4.i.i.i351.i = select i1 %.inv27.i.i.i.i, double %i.yy, double 0.000000e+00 ; 2 uses
  %i.yz = fadd double %spec.store.select.i345107.i, %spec.store.select2.i.i.i350.i ; 2 uses
  %.inv28.i.i.i.i = fcmp ord double %i.yz, 0.000000e+00
  %spec.store.select5.i.i.i352.i = select i1 %.inv28.i.i.i.i, double %i.yz, double 0.000000e+00 ; 2 uses
  br i1 %.not214.i, label %_RNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts20compute_limit_widths.exit.i, label %bb.gz

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentE14map_or_defaultTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB21_ENCNvNtBN_7scripts20compute_limit_widths0EBP_.exit.i.i: ; preds = %bb.gq, %.thread84.i, %.thread.i
  %spec.store.select.i345108.i = phi double [ %spec.store.select.i34599158.i, %.thread84.i ], [ 0.000000e+00, %bb.gq ], [ %spec.store.select.i345111156.i, %.thread.i ]
  %spec.store.select875106.i = phi double [ %spec.store.select888.i, %.thread84.i ], [ %spec.store.select8.i, %bb.gq ], [ %spec.store.select869.i, %.thread.i ] ; 2 uses
  %.sroa.059.083101.i = phi ptr [ %.sroa.059.092.i, %.thread84.i ], [ %.sroa.059.0.i, %bb.gq ], [ %.sroa.059.073.i, %.thread.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !45546)
  call void @llvm.experimental.noalias.scope.decl(metadata !45547)
  br i1 %.not214.i, label %_RNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts20compute_limit_widths.exit.i, label %bb.gz

bb.gz:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentE14map_or_defaultTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB21_ENCNvNtBN_7scripts20compute_limit_widths0EBP_.exit.i.i, %_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts20compute_limit_widths0B7_.exit.i.i.i
  %.sroa.02.0.i.i353118.i = phi double [ %spec.store.select4.i.i.i351.i, %_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts20compute_limit_widths0B7_.exit.i.i.i ], [ 0.000000e+00, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentE14map_or_defaultTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB21_ENCNvNtBN_7scripts20compute_limit_widths0EBP_.exit.i.i ]
  %.sroa.3.0.i.i116.i = phi double [ %spec.store.select5.i.i.i352.i, %_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts20compute_limit_widths0B7_.exit.i.i.i ], [ 0.000000e+00, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentE14map_or_defaultTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB21_ENCNvNtBN_7scripts20compute_limit_widths0EBP_.exit.i.i ]
  %.sroa.059.083101115.i = phi ptr [ %.sroa.059.083100.i, %_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts20compute_limit_widths0B7_.exit.i.i.i ], [ %.sroa.059.083101.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentE14map_or_defaultTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB21_ENCNvNtBN_7scripts20compute_limit_widths0EBP_.exit.i.i ] ; 4 uses
  %spec.store.select875106113.i = phi double [ %spec.store.select875105.i, %_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts20compute_limit_widths0B7_.exit.i.i.i ], [ %spec.store.select875106.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentE14map_or_defaultTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB21_ENCNvNtBN_7scripts20compute_limit_widths0EBP_.exit.i.i ]
  %spec.store.select.i345108112.i = phi double [ %spec.store.select.i345107.i, %_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts20compute_limit_widths0B7_.exit.i.i.i ], [ %spec.store.select.i345108.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentE14map_or_defaultTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB21_ENCNvNtBN_7scripts20compute_limit_widths0EBP_.exit.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !45548)
  call void @llvm.experimental.noalias.scope.decl(metadata !45549)
  %i.za = load i64, ptr %.sroa.059.083101115.i, align 16, !range !95, !alias.scope !45550, !noalias !45551, !noundef !41
  %i.zb = call i64 @llvm.usub.sat.i64(i64 %i.za, i64 1)
  switch i64 %i.zb, label %default.unreachable [
    i64 0, label %bb.ha
    i64 1, label %bb.hb
    i64 2, label %bb.hc
    i64 3, label %bb.hd
  ]

bb.ha:                                            ; preds = %bb.gz
  %i.zc = getelementptr inbounds nuw i8, ptr %.sroa.059.083101115.i, i64 64
  %i.zd = load double, ptr %i.zc, align 16, !alias.scope !45550, !noalias !45551, !noundef !41
  br label %bb.hd

bb.hb:                                            ; preds = %bb.gz
  %i.ze = getelementptr inbounds nuw i8, ptr %.sroa.059.083101115.i, i64 32
  %i.zf = load double, ptr %i.ze, align 16, !alias.scope !45550, !noalias !45551, !noundef !41
  br label %bb.hd

bb.hc:                                            ; preds = %bb.gz
  %i.zg = getelementptr inbounds nuw i8, ptr %.sroa.059.083101115.i, i64 8
  %i.zh = load double, ptr %i.zg, align 8, !alias.scope !45550, !noalias !45551, !noundef !41
  br label %bb.hd

bb.hd:                                            ; preds = %bb.hc, %bb.hb, %bb.ha, %bb.gz
  %.sroa.024.0.i.i6.i.i = phi double [ %i.zd, %bb.ha ], [ %i.zf, %bb.hb ], [ %i.zh, %bb.hc ], [ 0.000000e+00, %bb.gz ]
  switch i64 %i.td, label %default.unreachable [
    i64 0, label %bb.he
    i64 1, label %bb.hf
    i64 2, label %bb.hg
    i64 3, label %_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts20compute_limit_widthss_0B7_.exit.i.i.i
  ]

bb.he:                                            ; preds = %bb.hd
  %i.zi = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
  %i.zj = load double, ptr %i.zi, align 16, !alias.scope !45552, !noalias !45553, !noundef !41
  br label %_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts20compute_limit_widthss_0B7_.exit.i.i.i

bb.hf:                                            ; preds = %bb.hd
  %i.zk = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.zl = load double, ptr %i.zk, align 16, !alias.scope !45552, !noalias !45553, !noundef !41
  br label %_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts20compute_limit_widthss_0B7_.exit.i.i.i

bb.hg:                                            ; preds = %bb.hd
  %i.zm = load double, ptr %.sink36.i.i.i.i.sroa.gep, align 8, !alias.scope !45552, !noalias !45553, !noundef !41
  br label %_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts20compute_limit_widthss_0B7_.exit.i.i.i

_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts20compute_limit_widthss_0B7_.exit.i.i.i: ; preds = %bb.hg, %bb.hf, %bb.he, %bb.hd
  %.sroa.025.0.i.i7.i.i = phi double [ %i.zj, %bb.he ], [ %i.zl, %bb.hf ], [ %i.zm, %bb.hg ], [ 0.000000e+00, %bb.hd ] ; 2 uses
  %i.zn = fneg double %.sroa.025.0.i.i7.i.i
  %i.zo = fcmp uno double %.sroa.025.0.i.i7.i.i, 0.000000e+00
  %spec.store.select.i.i8.i.i = select i1 %i.zo, double 0.000000e+00, double %i.zn
  %i.zp = fadd double %.sroa.024.0.i.i6.i.i, %spec.store.select.i.i8.i.i ; 2 uses
  %.inv.i.i9.i.i = fcmp ord double %i.zp, 0.000000e+00
  %i.zq = fmul double %i.zp, 5.000000e-01
  %i.zr = select i1 %.inv.i.i9.i.i, double %i.zq, double 0.000000e+00 ; 2 uses
  %.inv26.i.i10.i.i = fcmp ord double %i.zr, 0.000000e+00
  %spec.store.select2.i.i11.i.i = select i1 %.inv26.i.i10.i.i, double %i.zr, double 0.000000e+00 ; 2 uses
  %i.zs = fadd double %spec.store.select.i345108112.i, %spec.store.select2.i.i11.i.i ; 2 uses
  %.inv27.i.i12.i.i = fcmp ord double %i.zs, 0.000000e+00
  %spec.store.select3.i.i13.i.i = select i1 %.inv27.i.i12.i.i, double %i.zs, double 0.000000e+00
  %i.zt = fsub double %spec.store.select2.i.i11.i.i, %spec.store.select.i345108112.i ; 2 uses
  %.inv28.i.i15.i.i = fcmp ord double %i.zt, 0.000000e+00
  %spec.store.select5.i.i16.i.i = select i1 %.inv28.i.i15.i.i, double %i.zt, double 0.000000e+00
  br label %_RNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts20compute_limit_widths.exit.i

_RNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts20compute_limit_widths.exit.i: ; preds = %_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts20compute_limit_widthss_0B7_.exit.i.i.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentE14map_or_defaultTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB21_ENCNvNtBN_7scripts20compute_limit_widths0EBP_.exit.i.i, %_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts20compute_limit_widths0B7_.exit.i.i.i
  %.sroa.02.0.i.i353119.i = phi double [ %.sroa.02.0.i.i353118.i, %_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts20compute_limit_widthss_0B7_.exit.i.i.i ], [ 0.000000e+00, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentE14map_or_defaultTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB21_ENCNvNtBN_7scripts20compute_limit_widths0EBP_.exit.i.i ], [ %spec.store.select4.i.i.i351.i, %_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts20compute_limit_widths0B7_.exit.i.i.i ] ; 3 uses
end_hunk_6
begin_hunk_7_@_RNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts14layout_scripts:bb.a

bb.hv:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentE14map_or_defaultTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB21_ENCNvNtBN_7scripts26compute_post_script_widths0EBP_.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !45563)
  %i.abh = invoke fastcc noundef double @_RNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts9math_kern(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(304) %i.ay, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(304) dereferenceable_or_null(304) %i.af, double noundef %i.wa, i8 noundef 2)
          to label %.noexc379.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !45530

.noexc379.i:                                      ; preds = %bb.hv
  %i.abi = load i64, ptr %i.ay, align 16, !range !95, !alias.scope !45564, !noalias !45565, !noundef !41
  %i.abj = call i64 @llvm.usub.sat.i64(i64 %i.abi, i64 1)
  switch i64 %i.abj, label %bb.hx [
    i64 0, label %.sink.split.i.i.i373.i
    i64 1, label %bb.hw
  ]

bb.hw:                                            ; preds = %.noexc379.i
  br label %.sink.split.i.i.i373.i

.sink.split.i.i.i373.i:                           ; preds = %bb.hw, %.noexc379.i
  %.sink19.i.i.i.i.sroa.phi = phi ptr [ %.sink19.i.i.i.i.sroa.gep, %bb.hw ], [ %.sink19.i.i.i.i.sroa.gep471, %.noexc379.i ]
  %i.abk = load double, ptr %.sink19.i.i.i.i.sroa.phi, align 8, !alias.scope !45564, !noalias !45565, !noundef !41
  br label %bb.hx

bb.hx:                                            ; preds = %.sink.split.i.i.i373.i, %.noexc379.i
  %.sroa.015.0.i.i.i.i = phi double [ 0.000000e+00, %.noexc379.i ], [ %i.abk, %.sink.split.i.i.i373.i ] ; 2 uses
  %i.abl = load i64, ptr %i.af, align 16, !range !95, !alias.scope !45566, !noalias !45567, !noundef !41
  %i.abm = call i64 @llvm.usub.sat.i64(i64 %i.abl, i64 1)
  switch i64 %i.abm, label %default.unreachable [
    i64 0, label %bb.hy
    i64 1, label %bb.hz
    i64 2, label %bb.ia
    i64 3, label %_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts26compute_post_script_widthss_0B7_.exit.i.i.i
  ]

bb.hy:                                            ; preds = %bb.hx
  %.sroa.gep47.i = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  %i.abn = load double, ptr %.sroa.gep47.i, align 16, !alias.scope !45566, !noalias !45567, !noundef !41
  br label %_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts26compute_post_script_widthss_0B7_.exit.i.i.i

bb.hz:                                            ; preds = %bb.hx
  %.sroa.gep45.i = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.abo = load double, ptr %.sroa.gep45.i, align 16, !alias.scope !45566, !noalias !45567, !noundef !41
  br label %_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts26compute_post_script_widthss_0B7_.exit.i.i.i

bb.ia:                                            ; preds = %bb.hx
  %i.abp = load double, ptr %.sroa.16.1520..sroa_idx, align 8, !alias.scope !45566, !noalias !45567, !noundef !41
  br label %_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts26compute_post_script_widthss_0B7_.exit.i.i.i

_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts26compute_post_script_widthss_0B7_.exit.i.i.i: ; preds = %bb.ia, %bb.hz, %bb.hy, %bb.hx
  %.sroa.016.0.i.i.i.i = phi double [ %i.abn, %bb.hy ], [ %i.abo, %bb.hz ], [ %i.abp, %bb.ia ], [ 0.000000e+00, %bb.hx ]
  %i.abq = fcmp uno double %.sroa.015.0.i.i.i.i, 0.000000e+00
  %i.abr = fneg double %.sroa.015.0.i.i.i.i
  %spec.store.select.i.i2.i.i = select i1 %i.abq, double 0.000000e+00, double %i.abr
  %i.abs = fadd double %i.abh, %spec.store.select.i.i2.i.i ; 2 uses
  %.inv.i.i3.i374.i = fcmp ord double %i.abs, 0.000000e+00
  %spec.store.select1.i.i4.i.i = select i1 %.inv.i.i3.i374.i, double %i.abs, double 0.000000e+00 ; 2 uses
  %i.abt = fadd double %spec.store.select37.i, %.sroa.016.0.i.i.i.i ; 2 uses
  %.inv17.i.i.i.i = fcmp ord double %i.abt, 0.000000e+00
  %spec.store.select2.i.i.i375.i = select i1 %.inv17.i.i.i.i, double %i.abt, double 0.000000e+00
  %i.abu = fadd double %spec.store.select1.i.i4.i.i, %spec.store.select2.i.i.i375.i ; 2 uses
  %.inv18.i.i.i.i = fcmp ord double %i.abu, 0.000000e+00
  %spec.store.select3.i.i.i376.i = select i1 %.inv18.i.i.i.i, double %i.abu, double 0.000000e+00
  br label %_RNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts26compute_post_script_widths.exit.i

_RNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts26compute_post_script_widths.exit.i: ; preds = %_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts26compute_post_script_widthss_0B7_.exit.i.i.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentE14map_or_defaultTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB21_ENCNvNtBN_7scripts26compute_post_script_widths0EBP_.exit.i.i
  %.sroa.3.0.i5.i.i = phi double [ %spec.store.select1.i.i4.i.i, %_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts26compute_post_script_widthss_0B7_.exit.i.i.i ], [ 0.000000e+00, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentE14map_or_defaultTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB21_ENCNvNtBN_7scripts26compute_post_script_widths0EBP_.exit.i.i ]
  %.sroa.02.0.i6.i.i = phi double [ %spec.store.select3.i.i.i376.i, %_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts26compute_post_script_widthss_0B7_.exit.i.i.i ], [ 0.000000e+00, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentE14map_or_defaultTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB21_ENCNvNtBN_7scripts26compute_post_script_widths0EBP_.exit.i.i ]
  %i.abv = invoke noundef double @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout3absNtB2_3Abs3max(double noundef %.sroa.02.0.i.i353119.i, double noundef %.sroa.02.0.i18.i.i)
          to label %bb.ib unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !45461

bb.ib:                                            ; preds = %_RNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts26compute_post_script_widths.exit.i
  %i.abw = invoke noundef double @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout3absNtB2_3Abs3max(double noundef %i.abv, double noundef %.sroa.02.0.i.i359.i)
          to label %bb.ic unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !45461

bb.ic:                                            ; preds = %bb.ib
  %i.abx = invoke noundef double @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout3absNtB2_3Abs3max(double noundef %i.abw, double noundef %.sroa.02.0.i7.i.i)
          to label %bb.id unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !45461 ; 6 uses

bb.id:                                            ; preds = %bb.ic
  %i.aby = load i64, ptr %i.ay, align 16, !range !95, !alias.scope !45460, !noalias !45530, !noundef !41
  %i.abz = call i64 @llvm.usub.sat.i64(i64 %i.aby, i64 1)
  switch i64 %i.abz, label %default.unreachable [
    i64 0, label %bb.ie
    i64 1, label %bb.if
    i64 2, label %bb.ig
    i64 3, label %bb.ih
  ]

bb.ie:                                            ; preds = %bb.id
  %i.aca = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
  %i.acb = load double, ptr %i.aca, align 16, !alias.scope !45460, !noalias !45530, !noundef !41
  br label %bb.ih

bb.if:                                            ; preds = %bb.id
  %i.acc = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.acd = load double, ptr %i.acc, align 16, !alias.scope !45460, !noalias !45530, !noundef !41
  br label %bb.ih

bb.ig:                                            ; preds = %bb.id
  %i.ace = load double, ptr %.sink36.i.i.i.i.sroa.gep, align 8, !alias.scope !45460, !noalias !45530, !noundef !41
  br label %bb.ih

bb.ih:                                            ; preds = %bb.ig, %bb.if, %bb.ie, %bb.id
  %.sroa.0200.0.i = phi double [ %i.acb, %bb.ie ], [ %i.acd, %bb.if ], [ %i.ace, %bb.ig ], [ 0.000000e+00, %bb.id ]
  %i.acf = invoke noundef double @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout3absNtB2_3Abs3max(double noundef %.sroa.3.0.i.i117.i, double noundef %.sroa.3.0.i17.i.i)
          to label %bb.ii unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !45461

bb.ii:                                            ; preds = %bb.ih
  %i.acg = invoke noundef double @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout3absNtB2_3Abs3max(double noundef %i.acf, double noundef %.sroa.02.0.i.i371.i)
          to label %bb.ij unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !45461

bb.ij:                                            ; preds = %bb.ii
  %i.ach = invoke noundef double @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout3absNtB2_3Abs3max(double noundef %i.acg, double noundef %.sroa.02.0.i6.i.i)
          to label %bb.ik unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !45461

bb.ik:                                            ; preds = %bb.ij
  %i.aci = fadd double %i.abx, %.sroa.0200.0.i    ; 2 uses
  %.inv225.i = fcmp ord double %i.aci, 0.000000e+00
  %spec.store.select10.i = select i1 %.inv225.i, double %i.aci, double 0.000000e+00 ; 3 uses
  %i.acj = fadd double %spec.store.select10.i, %i.ach ; 2 uses
  %.inv226.i = fcmp ord double %i.acj, 0.000000e+00
  %spec.store.select11.i = select i1 %.inv226.i, double %i.acj, double 0.000000e+00
  %i.ack = fneg double %.sroa.02.0.i.i359.i
  %i.acl = fcmp uno double %.sroa.02.0.i.i359.i, 0.000000e+00
  %spec.store.select12.i = select i1 %i.acl, double 0.000000e+00, double %i.ack
  %i.acm = fadd double %spec.store.select12.i, %i.abx ; 2 uses
  %.inv227.i = fcmp ord double %i.acm, 0.000000e+00
  %spec.store.select13.i = select i1 %.inv227.i, double %i.acm, double 0.000000e+00
  %i.acn = fadd double %spec.store.select37.i, %spec.store.select13.i ; 2 uses
  %.inv228.i = fcmp ord double %i.acn, 0.000000e+00
  %spec.store.select14.i = select i1 %.inv228.i, double %i.acn, double 0.000000e+00
  %i.aco = fneg double %.sroa.02.0.i7.i.i
  %i.acp = fcmp uno double %.sroa.02.0.i7.i.i, 0.000000e+00
  %spec.store.select15.i = select i1 %i.acp, double 0.000000e+00, double %i.aco
  %i.acq = fadd double %spec.store.select15.i, %i.abx ; 2 uses
  %.inv229.i = fcmp ord double %i.acq, 0.000000e+00
  %spec.store.select16.i = select i1 %.inv229.i, double %i.acq, double 0.000000e+00
  %i.acr = fadd double %spec.store.select37.i, %spec.store.select16.i ; 2 uses
  %.inv230.i = fcmp ord double %i.acr, 0.000000e+00
  %spec.store.select17.i = select i1 %.inv230.i, double %i.acr, double 0.000000e+00
  %i.acs = fadd double %.sroa.3.0.i.i370.i, %spec.store.select10.i ; 2 uses
  %.inv231.i = fcmp ord double %i.acs, 0.000000e+00
  %spec.store.select19.i = select i1 %.inv231.i, double %i.acs, double 0.000000e+00
  %i.act = fadd double %.sroa.3.0.i5.i.i, %spec.store.select10.i ; 2 uses
  %.inv232.i = fcmp ord double %i.act, 0.000000e+00
  %spec.store.select21.i = select i1 %.inv232.i, double %i.act, double 0.000000e+00
  %i.acu = fneg double %.sroa.02.0.i.i353119.i
  %i.acv = fcmp uno double %.sroa.02.0.i.i353119.i, 0.000000e+00
  %spec.store.select22.i = select i1 %i.acv, double 0.000000e+00, double %i.acu
  %i.acw = fadd double %spec.store.select22.i, %i.abx ; 2 uses
  %.inv233.i = fcmp ord double %i.acw, 0.000000e+00
  %spec.store.select23.i = select i1 %.inv233.i, double %i.acw, double 0.000000e+00
  %i.acx = fneg double %.sroa.02.0.i18.i.i
  %i.acy = fcmp uno double %.sroa.02.0.i18.i.i, 0.000000e+00
  %spec.store.select24.i = select i1 %i.acy, double 0.000000e+00, double %i.acx
  %i.acz = fadd double %spec.store.select24.i, %i.abx ; 2 uses
  %.inv234.i = fcmp ord double %i.acz, 0.000000e+00
  %spec.store.select25.i = select i1 %.inv234.i, double %i.acz, double 0.000000e+00
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !45461
  invoke void @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout5frameNtB2_5Frame4soft(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.ad, double noundef %spec.store.select11.i, double noundef %spec.store.select6.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @638)
          to label %bb.il unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !45461

bb.il:                                            ; preds = %bb.ik
  store i64 1, ptr %i.ad, align 8, !noalias !45461
  %i.ada = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store double %i.uk, ptr %i.ada, align 8, !noalias !45461
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !45461
  invoke fastcc void @_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment10into_frame(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.ac, ptr noalias nofree noundef nonnull readonly align 16 captures(address) dereferenceable(304) %i.ay)
          to label %bb.in unwind label %.thread146.i, !noalias !45530

.thread146.i:                                     ; preds = %bb.in, %bb.il
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread120.i

bb.im:                                            ; preds = %bb.kh
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread136.i

bb.in:                                            ; preds = %bb.il
  invoke void @_RNvMs_NtNtCsdaEETE4DqmE_13typst_library6layout5frameNtB4_5Frame10push_frame(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ad, double noundef %i.abx, double noundef %spec.store.select875106114.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.ac)
          to label %bb.io unwind label %.thread146.i, !noalias !45461

bb.io:                                            ; preds = %bb.in
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !45461
  %i.adb = load i64, ptr %i.ak, align 16, !range !83, !noalias !45461, !noundef !41
  %.not235.i = icmp eq i64 %i.adb, -1             ; 9 uses
  br i1 %.not235.i, label %bb.is, label %bb.ip

bb.ip:                                            ; preds = %bb.io
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !45461
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(304) %i.ab, ptr noundef nonnull align 16 dereferenceable(304) %i.ak, i64 304, i1 false), !noalias !45461
  %i.adc = load i64, ptr %i.ab, align 16, !range !95, !alias.scope !45568, !noalias !45461, !noundef !41 ; 2 uses
  %i.add = call i64 @llvm.usub.sat.i64(i64 %i.adc, i64 1)
  switch i64 %i.add, label %bb.iu [
    i64 0, label %bb.iq
    i64 1, label %bb.ir
  ]

bb.iq:                                            ; preds = %bb.ip
  %13 = trunc nuw i64 %i.adc to i1
  %spec.select.v.i386.i = select i1 %13, i64 8, i64 72
  br label %.sink.split.i380.i

bb.ir:                                            ; preds = %bb.ip
  %i.ade = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.adf = load i64, ptr %i.ade, align 8, !range !49, !alias.scope !45568, !noalias !45461, !noundef !41
  %i.adg = trunc nuw i64 %i.adf to i1
  %spec.select22.v.i.i = select i1 %i.adg, i64 16, i64 40
  br label %.sink.split.i380.i

.sink.split.i380.i:                               ; preds = %bb.ir, %bb.iq
  %spec.select22.v.sink.i.i = phi i64 [ %spec.select22.v.i.i, %bb.ir ], [ %spec.select.v.i386.i, %bb.iq ]
  %spec.select22.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 %spec.select22.v.sink.i.i
  %.sroa.020.2.i.i = load double, ptr %spec.select22.i.i, align 8, !alias.scope !45568, !noalias !45461
  br label %bb.iu

bb.is:                                            ; preds = %bb.iw, %bb.io
  %i.adh = load i64, ptr %i.ah, align 16, !range !83, !noalias !45461, !noundef !41
  %.not236.i = icmp eq i64 %i.adh, -1             ; 8 uses
  br i1 %.not236.i, label %bb.jb, label %bb.iy

bb.it:                                            ; preds = %bb.iv, %bb.iu
  %i.adi = landingpad { ptr, i32 }
          cleanup
  br label %.thread120.i

bb.iu:                                            ; preds = %.sink.split.i380.i, %bb.ip
  %.sroa.020.1.i.i = phi double [ 0.000000e+00, %bb.ip ], [ %.sroa.020.2.i.i, %.sink.split.i380.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !45461
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !45461
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(304) %i.z, ptr noundef nonnull align 16 dereferenceable(304) %i.ak, i64 304, i1 false), !noalias !45461
  invoke fastcc void @_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment10into_frame(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.aa, ptr noalias nofree noundef readonly align 16 captures(address) dereferenceable(304) %i.z)
          to label %bb.iv unwind label %bb.it, !noalias !45461

bb.iv:                                            ; preds = %bb.iu
  %i.adj = fcmp uno double %i.ti, 0.000000e+00
  %i.adk = fneg double %i.ti
  %spec.store.select.i381.i = select i1 %i.adj, double 0.000000e+00, double %i.adk
  %i.adl = fadd double %spec.store.select.i381.i, %i.uk ; 2 uses
  %.inv.i382.i = fcmp ord double %i.adl, 0.000000e+00
  %spec.store.select1.i383.i = select i1 %.inv.i382.i, double %i.adl, double 0.000000e+00
  %i.adm = fcmp uno double %.sroa.020.1.i.i, 0.000000e+00
  %i.adn = fneg double %.sroa.020.1.i.i
  %spec.store.select2.i384.i = select i1 %i.adm, double 0.000000e+00, double %i.adn
  %i.ado = fadd double %spec.store.select1.i383.i, %spec.store.select2.i384.i ; 2 uses
  %.inv21.i.i = fcmp ord double %i.ado, 0.000000e+00
  %spec.store.select3.i385.i = select i1 %.inv21.i.i, double %i.ado, double 0.000000e+00
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !45461
  invoke void @_RNvMs_NtNtCsdaEETE4DqmE_13typst_library6layout5frameNtB4_5Frame10push_frame(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ad, double noundef %spec.store.select14.i, double noundef %spec.store.select3.i385.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.aa)
          to label %bb.iw unwind label %bb.it, !noalias !45461

bb.iw:                                            ; preds = %bb.iv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !45461
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !45461
  br label %bb.is

bb.ix:                                            ; preds = %bb.lf, %bb.le, %bb.lc, %bb.la, %bb.ky, %bb.kw, %bb.ku, %bb.ks, %bb.cs
  %i.adp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55, !noalias !45530
  unreachable

bb.iy:                                            ; preds = %bb.is
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !45461
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(304) %i.y, ptr noundef nonnull align 16 dereferenceable(304) %i.ah, i64 304, i1 false), !noalias !45461
  %i.adq = load i64, ptr %i.y, align 16, !range !95, !alias.scope !45569, !noalias !45461, !noundef !41 ; 2 uses
  %i.adr = call i64 @llvm.usub.sat.i64(i64 %i.adq, i64 1)
  switch i64 %i.adr, label %bb.jd [
    i64 0, label %bb.iz
    i64 1, label %bb.ja
  ]

bb.iz:                                            ; preds = %bb.iy
  %14 = trunc nuw i64 %i.adq to i1
  %spec.select.v.i392.i = select i1 %14, i64 8, i64 72
  br label %.sink.split.i387.i

bb.ja:                                            ; preds = %bb.iy
  %i.ads = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.adt = load i64, ptr %i.ads, align 8, !range !49, !alias.scope !45569, !noalias !45461, !noundef !41
  %i.adu = trunc nuw i64 %i.adt to i1
  %spec.select18.v.i.i = select i1 %i.adu, i64 16, i64 40
  br label %.sink.split.i387.i

.sink.split.i387.i:                               ; preds = %bb.ja, %bb.iz
  %spec.select18.v.sink.i.i = phi i64 [ %spec.select18.v.i.i, %bb.ja ], [ %spec.select.v.i392.i, %bb.iz ]
  %spec.select18.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 %spec.select18.v.sink.i.i
  %.sroa.016.2.i.i = load double, ptr %spec.select18.i.i, align 8, !alias.scope !45569, !noalias !45461
  br label %bb.jd

bb.jb:                                            ; preds = %bb.jf, %bb.is
  %i.adv = load i64, ptr %i.ai, align 16, !range !83, !noalias !45461, !noundef !41
  %.not237.i = icmp eq i64 %i.adv, -1             ; 7 uses
  br i1 %.not237.i, label %bb.jj, label %bb.jg

bb.jc:                                            ; preds = %bb.je, %bb.jd
  %i.adw = landingpad { ptr, i32 }
          cleanup
  br label %.thread120.i

bb.jd:                                            ; preds = %.sink.split.i387.i, %bb.iy
  %.sroa.016.1.i.i = phi double [ 0.000000e+00, %bb.iy ], [ %.sroa.016.2.i.i, %.sink.split.i387.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !45461
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !45461
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(304) %i.w, ptr noundef nonnull align 16 dereferenceable(304) %i.ah, i64 304, i1 false), !noalias !45461
  invoke fastcc void @_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment10into_frame(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.x, ptr noalias nofree noundef readonly align 16 captures(address) dereferenceable(304) %i.w)
          to label %bb.je unwind label %bb.jc, !noalias !45461

bb.je:                                            ; preds = %bb.jd
  %i.adx = fadd double %i.wa, %i.uk               ; 2 uses
  %.inv.i388.i = fcmp ord double %i.adx, 0.000000e+00
  %spec.store.select.i389.i = select i1 %.inv.i388.i, double %i.adx, double 0.000000e+00
  %i.ady = fcmp uno double %.sroa.016.1.i.i, 0.000000e+00
  %i.adz = fneg double %.sroa.016.1.i.i
  %spec.store.select1.i390.i = select i1 %i.ady, double 0.000000e+00, double %i.adz
  %i.aea = fadd double %spec.store.select.i389.i, %spec.store.select1.i390.i ; 2 uses
  %.inv17.i.i = fcmp ord double %i.aea, 0.000000e+00
  %spec.store.select2.i391.i = select i1 %.inv17.i.i, double %i.aea, double 0.000000e+00
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !45461
  invoke void @_RNvMs_NtNtCsdaEETE4DqmE_13typst_library6layout5frameNtB4_5Frame10push_frame(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ad, double noundef %spec.store.select17.i, double noundef %spec.store.select2.i391.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.x)
          to label %bb.jf unwind label %bb.jc, !noalias !45461

bb.jf:                                            ; preds = %bb.je
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !45461
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !45461
  br label %bb.jb

bb.jg:                                            ; preds = %bb.jb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !45461
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(304) %i.v, ptr noundef nonnull align 16 dereferenceable(304) %i.ai, i64 304, i1 false), !noalias !45461
  %i.aeb = load i64, ptr %i.v, align 16, !range !95, !alias.scope !45570, !noalias !45461, !noundef !41 ; 2 uses
  %i.aec = call i64 @llvm.usub.sat.i64(i64 %i.aeb, i64 1)
  switch i64 %i.aec, label %bb.jl [
    i64 0, label %bb.jh
    i64 1, label %bb.ji
  ]

bb.jh:                                            ; preds = %bb.jg
  %15 = trunc nuw i64 %i.aeb to i1
  %spec.select.v.i405.i = select i1 %15, i64 8, i64 72
  br label %.sink.split.i394.i

bb.ji:                                            ; preds = %bb.jg
  %i.aed = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.aee = load i64, ptr %i.aed, align 8, !range !49, !alias.scope !45570, !noalias !45461, !noundef !41
  %i.aef = trunc nuw i64 %i.aee to i1
  %spec.select22.v.i393.i = select i1 %i.aef, i64 16, i64 40
  br label %.sink.split.i394.i

.sink.split.i394.i:                               ; preds = %bb.ji, %bb.jh
  %spec.select22.v.sink.i395.i = phi i64 [ %spec.select22.v.i393.i, %bb.ji ], [ %spec.select.v.i405.i, %bb.jh ]
  %spec.select22.i396.i = getelementptr inbounds nuw i8, ptr %i.v, i64 %spec.select22.v.sink.i395.i
  %.sroa.020.2.i397.i = load double, ptr %spec.select22.i396.i, align 8, !alias.scope !45570, !noalias !45461
  br label %bb.jl

bb.jj:                                            ; preds = %bb.jn, %bb.jb
  %i.aeg = load i64, ptr %i.af, align 16, !range !83, !noalias !45461, !noundef !41
  %.not238.i = icmp eq i64 %i.aeg, -1             ; 6 uses
  br i1 %.not238.i, label %bb.jr, label %bb.jo

bb.jk:                                            ; preds = %bb.jm, %bb.jl
  %i.aeh = landingpad { ptr, i32 }
          cleanup
  br label %.thread120.i

bb.jl:                                            ; preds = %.sink.split.i394.i, %bb.jg
  %.sroa.020.1.i398.i = phi double [ 0.000000e+00, %bb.jg ], [ %.sroa.020.2.i397.i, %.sink.split.i394.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !45461
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !45461
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(304) %i.t, ptr noundef nonnull align 16 dereferenceable(304) %i.ai, i64 304, i1 false), !noalias !45461
  invoke fastcc void @_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment10into_frame(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.u, ptr noalias nofree noundef readonly align 16 captures(address) dereferenceable(304) %i.t)
          to label %bb.jm unwind label %bb.jk, !noalias !45461

bb.jm:                                            ; preds = %bb.jl
  %i.aei = fcmp uno double %i.ti, 0.000000e+00
  %i.aej = fneg double %i.ti
  %spec.store.select.i399.i = select i1 %i.aei, double 0.000000e+00, double %i.aej
  %i.aek = fadd double %spec.store.select.i399.i, %i.uk ; 2 uses
  %.inv.i400.i = fcmp ord double %i.aek, 0.000000e+00
  %spec.store.select1.i401.i = select i1 %.inv.i400.i, double %i.aek, double 0.000000e+00
  %i.ael = fcmp uno double %.sroa.020.1.i398.i, 0.000000e+00
  %i.aem = fneg double %.sroa.020.1.i398.i
  %spec.store.select2.i402.i = select i1 %i.ael, double 0.000000e+00, double %i.aem
  %i.aen = fadd double %spec.store.select1.i401.i, %spec.store.select2.i402.i ; 2 uses
  %.inv21.i403.i = fcmp ord double %i.aen, 0.000000e+00
  %spec.store.select3.i404.i = select i1 %.inv21.i403.i, double %i.aen, double 0.000000e+00
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !45461
  invoke void @_RNvMs_NtNtCsdaEETE4DqmE_13typst_library6layout5frameNtB4_5Frame10push_frame(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ad, double noundef %spec.store.select19.i, double noundef %spec.store.select3.i404.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.u)
          to label %bb.jn unwind label %bb.jk, !noalias !45461

bb.jn:                                            ; preds = %bb.jm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !45461
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !45461
  br label %bb.jj

bb.jo:                                            ; preds = %bb.jj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !45461
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(304) %i.s, ptr noundef nonnull align 16 dereferenceable(304) %i.af, i64 304, i1 false), !noalias !45461
  %i.aeo = load i64, ptr %i.s, align 16, !range !95, !alias.scope !45571, !noalias !45461, !noundef !41 ; 2 uses
  %i.aep = call i64 @llvm.usub.sat.i64(i64 %i.aeo, i64 1)
  switch i64 %i.aep, label %bb.jt [
    i64 0, label %bb.jp
    i64 1, label %bb.jq
  ]

bb.jp:                                            ; preds = %bb.jo
  %16 = trunc nuw i64 %i.aeo to i1
  %spec.select.v.i418.i = select i1 %16, i64 8, i64 72
  br label %.sink.split.i408.i

bb.jq:                                            ; preds = %bb.jo
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.aer = load i64, ptr %i.aeq, align 8, !range !49, !alias.scope !45571, !noalias !45461, !noundef !41
  %i.aes = trunc nuw i64 %i.aer to i1
  %spec.select18.v.i407.i = select i1 %i.aes, i64 16, i64 40
  br label %.sink.split.i408.i

.sink.split.i408.i:                               ; preds = %bb.jq, %bb.jp
  %spec.select18.v.sink.i409.i = phi i64 [ %spec.select18.v.i407.i, %bb.jq ], [ %spec.select.v.i418.i, %bb.jp ]
  %spec.select18.i410.i = getelementptr inbounds nuw i8, ptr %i.s, i64 %spec.select18.v.sink.i409.i
  %.sroa.016.2.i411.i = load double, ptr %spec.select18.i410.i, align 8, !alias.scope !45571, !noalias !45461
  br label %bb.jt

bb.jr:                                            ; preds = %bb.jv, %bb.jj
  %i.aet = load i64, ptr %i.aj, align 16, !range !83, !noalias !45461, !noundef !41
  %.not239.i = icmp eq i64 %i.aet, -1             ; 5 uses
  br i1 %.not239.i, label %bb.jz, label %bb.jw

bb.js:                                            ; preds = %bb.ju, %bb.jt
  %i.aeu = landingpad { ptr, i32 }
          cleanup
  br label %.thread120.i

bb.jt:                                            ; preds = %.sink.split.i408.i, %bb.jo
  %.sroa.016.1.i412.i = phi double [ 0.000000e+00, %bb.jo ], [ %.sroa.016.2.i411.i, %.sink.split.i408.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !45461
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !45461
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(304) %i.q, ptr noundef nonnull align 16 dereferenceable(304) %i.af, i64 304, i1 false), !noalias !45461
  invoke fastcc void @_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment10into_frame(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.r, ptr noalias nofree noundef readonly align 16 captures(address) dereferenceable(304) %i.q)
          to label %bb.ju unwind label %bb.js, !noalias !45461

bb.ju:                                            ; preds = %bb.jt
  %i.aev = fadd double %i.wa, %i.uk               ; 2 uses
  %.inv.i413.i = fcmp ord double %i.aev, 0.000000e+00
  %spec.store.select.i414.i = select i1 %.inv.i413.i, double %i.aev, double 0.000000e+00
  %i.aew = fcmp uno double %.sroa.016.1.i412.i, 0.000000e+00
  %i.aex = fneg double %.sroa.016.1.i412.i
  %spec.store.select1.i415.i = select i1 %i.aew, double 0.000000e+00, double %i.aex
  %i.aey = fadd double %spec.store.select.i414.i, %spec.store.select1.i415.i ; 2 uses
  %.inv17.i416.i = fcmp ord double %i.aey, 0.000000e+00
  %spec.store.select2.i417.i = select i1 %.inv17.i416.i, double %i.aey, double 0.000000e+00
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !45461
  invoke void @_RNvMs_NtNtCsdaEETE4DqmE_13typst_library6layout5frameNtB4_5Frame10push_frame(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ad, double noundef %spec.store.select21.i, double noundef %spec.store.select2.i417.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.r)
          to label %bb.jv unwind label %bb.js, !noalias !45461

bb.jv:                                            ; preds = %bb.ju
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !45461
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !45461
  br label %bb.jr

bb.jw:                                            ; preds = %bb.jr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !45461
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(304) %i.p, ptr noundef nonnull align 16 dereferenceable(304) %i.aj, i64 304, i1 false), !noalias !45461
  %i.aez = load i64, ptr %i.p, align 16, !range !95, !alias.scope !45572, !noalias !45461, !noundef !41 ; 2 uses
  %i.afa = call i64 @llvm.usub.sat.i64(i64 %i.aez, i64 1)
  switch i64 %i.afa, label %bb.kb [
    i64 0, label %bb.jx
    i64 1, label %bb.jy
  ]

bb.jx:                                            ; preds = %bb.jw
  %17 = trunc nuw i64 %i.aez to i1
  %spec.select.v.i432.i = select i1 %17, i64 8, i64 72
  br label %.sink.split.i421.i

bb.jy:                                            ; preds = %bb.jw
  %i.afb = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.afc = load i64, ptr %i.afb, align 8, !range !49, !alias.scope !45572, !noalias !45461, !noundef !41
  %i.afd = trunc nuw i64 %i.afc to i1
  %spec.select22.v.i420.i = select i1 %i.afd, i64 16, i64 40
  br label %.sink.split.i421.i

.sink.split.i421.i:                               ; preds = %bb.jy, %bb.jx
  %spec.select22.v.sink.i422.i = phi i64 [ %spec.select22.v.i420.i, %bb.jy ], [ %spec.select.v.i432.i, %bb.jx ]
  %spec.select22.i423.i = getelementptr inbounds nuw i8, ptr %i.p, i64 %spec.select22.v.sink.i422.i
  %.sroa.020.2.i424.i = load double, ptr %spec.select22.i423.i, align 8, !alias.scope !45572, !noalias !45461
  br label %bb.kb

bb.jz:                                            ; preds = %bb.kd, %bb.jr
  %i.afe = load i64, ptr %i.ag, align 16, !range !83, !noalias !45461, !noundef !41
  %.not240.i = icmp eq i64 %i.afe, -1             ; 4 uses
  br i1 %.not240.i, label %bb.kh, label %bb.ke

bb.ka:                                            ; preds = %bb.kc, %bb.kb
  %i.aff = landingpad { ptr, i32 }
          cleanup
  br label %.thread120.i

bb.kb:                                            ; preds = %.sink.split.i421.i, %bb.jw
  %.sroa.020.1.i425.i = phi double [ 0.000000e+00, %bb.jw ], [ %.sroa.020.2.i424.i, %.sink.split.i421.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !45461
  invoke fastcc void @_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment10into_frame(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.o, ptr noalias nofree noundef readonly align 16 captures(address) dereferenceable(304) %i.aj)
          to label %bb.kc unwind label %bb.ka, !noalias !45461

bb.kc:                                            ; preds = %bb.kb
  %i.afg = fcmp uno double %.sroa.02.0.i.i.i, 0.000000e+00
  %i.afh = fneg double %.sroa.02.0.i.i.i
  %spec.store.select.i426.i = select i1 %i.afg, double 0.000000e+00, double %i.afh
  %i.afi = fadd double %spec.store.select.i426.i, %i.uk ; 2 uses
  %.inv.i427.i = fcmp ord double %i.afi, 0.000000e+00
  %spec.store.select1.i428.i = select i1 %.inv.i427.i, double %i.afi, double 0.000000e+00
  %i.afj = fcmp uno double %.sroa.020.1.i425.i, 0.000000e+00
  %i.afk = fneg double %.sroa.020.1.i425.i
  %spec.store.select2.i429.i = select i1 %i.afj, double 0.000000e+00, double %i.afk
  %i.afl = fadd double %spec.store.select1.i428.i, %spec.store.select2.i429.i ; 2 uses
  %.inv21.i430.i = fcmp ord double %i.afl, 0.000000e+00
  %spec.store.select3.i431.i = select i1 %.inv21.i430.i, double %i.afl, double 0.000000e+00
  invoke void @_RNvMs_NtNtCsdaEETE4DqmE_13typst_library6layout5frameNtB4_5Frame10push_frame(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ad, double noundef %spec.store.select23.i, double noundef %spec.store.select3.i431.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.o)
          to label %bb.kd unwind label %bb.ka, !noalias !45461

bb.kd:                                            ; preds = %bb.kc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !45461
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !45461
  br label %bb.jz

bb.ke:                                            ; preds = %bb.jz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !45461
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(304) %i.n, ptr noundef nonnull align 16 dereferenceable(304) %i.ag, i64 304, i1 false), !noalias !45461
  %i.afm = load i64, ptr %i.n, align 16, !range !95, !alias.scope !45573, !noalias !45461, !noundef !41 ; 2 uses
  %i.afn = call i64 @llvm.usub.sat.i64(i64 %i.afm, i64 1)
  switch i64 %i.afn, label %bb.kj [
    i64 0, label %bb.kf
    i64 1, label %bb.kg
  ]

bb.kf:                                            ; preds = %bb.ke
  %18 = trunc nuw i64 %i.afm to i1
  %spec.select.v.i444.i = select i1 %18, i64 8, i64 72
  br label %.sink.split.i434.i

bb.kg:                                            ; preds = %bb.ke
  %i.afo = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.afp = load i64, ptr %i.afo, align 8, !range !49, !alias.scope !45573, !noalias !45461, !noundef !41
  %i.afq = trunc nuw i64 %i.afp to i1
  %spec.select18.v.i433.i = select i1 %i.afq, i64 16, i64 40
  br label %.sink.split.i434.i

.sink.split.i434.i:                               ; preds = %bb.kg, %bb.kf
  %spec.select18.v.sink.i435.i = phi i64 [ %spec.select18.v.i433.i, %bb.kg ], [ %spec.select.v.i444.i, %bb.kf ]
  %spec.select18.i436.i = getelementptr inbounds nuw i8, ptr %i.n, i64 %spec.select18.v.sink.i435.i
  %.sroa.016.2.i437.i = load double, ptr %spec.select18.i436.i, align 8, !alias.scope !45573, !noalias !45461
  br label %bb.kj

bb.kh:                                            ; preds = %bb.kl, %bb.jz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !45461
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !45461
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef nonnull align 8 dereferenceable(48) %i.ad, i64 48, i1 false), !noalias !45461
  invoke fastcc void @_RNvMs1_NtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB5_13FrameFragment3new(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %i.l, i8 %.val, i8 %.val392, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.az, ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.k)
          to label %bb.km unwind label %bb.im, !noalias !45463

bb.ki:                                            ; preds = %bb.kk, %bb.kj
  %i.afr = landingpad { ptr, i32 }
          cleanup
  br label %.thread120.i

bb.kj:                                            ; preds = %.sink.split.i434.i, %bb.ke
  %.sroa.016.1.i438.i = phi double [ 0.000000e+00, %bb.ke ], [ %.sroa.016.2.i437.i, %.sink.split.i434.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !45461
  invoke fastcc void @_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment10into_frame(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.m, ptr noalias nofree noundef readonly align 16 captures(address) dereferenceable(304) %i.ag)
          to label %bb.kk unwind label %bb.ki, !noalias !45461

bb.kk:                                            ; preds = %bb.kj
  %i.afs = fadd double %.sroa.02.0.i21.i.i, %i.uk ; 2 uses
  %.inv.i439.i = fcmp ord double %i.afs, 0.000000e+00
  %spec.store.select.i440.i = select i1 %.inv.i439.i, double %i.afs, double 0.000000e+00
  %i.aft = fcmp uno double %.sroa.016.1.i438.i, 0.000000e+00
  %i.afu = fneg double %.sroa.016.1.i438.i
  %spec.store.select1.i441.i = select i1 %i.aft, double 0.000000e+00, double %i.afu
  %i.afv = fadd double %spec.store.select.i440.i, %spec.store.select1.i441.i ; 2 uses
  %.inv17.i442.i = fcmp ord double %i.afv, 0.000000e+00
  %spec.store.select2.i443.i = select i1 %.inv17.i442.i, double %i.afv, double 0.000000e+00
  invoke void @_RNvMs_NtNtCsdaEETE4DqmE_13typst_library6layout5frameNtB4_5Frame10push_frame(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ad, double noundef %spec.store.select25.i, double noundef %spec.store.select2.i443.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.m)
          to label %bb.kl unwind label %bb.ki, !noalias !45461

bb.kl:                                            ; preds = %bb.kk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !45461
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !45461
  br label %bb.kh

bb.km:                                            ; preds = %bb.kh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !45461
  %i.afw = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !45461
  %i.afx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.afx, ptr noundef nonnull align 8 dereferenceable(104) %i.l, i64 104, i1 false), !noalias !45461
  store i64 2, ptr %i.j, align 16, !noalias !45461
  call void @llvm.experimental.noalias.scope.decl(metadata !45574)
  %i.afy = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.afz = load i64, ptr %i.afy, align 8, !alias.scope !45575, !noalias !45576, !noundef !41 ; 3 uses
  %i.aga = load i64, ptr %i.afw, align 8, !range !45, !alias.scope !45575, !noalias !45576, !noundef !41
  %i.agb = icmp eq i64 %i.afz, %i.aga
  br i1 %i.agb, label %bb.kn, label %bb.kq

bb.kn:                                            ; preds = %bb.km
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.afw)
          to label %bb.kq unwind label %bb.ko, !noalias !45576

bb.ko:                                            ; preds = %bb.kn
  %i.agc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEBH_(ptr noalias nofree noundef nonnull align 16 dereferenceable(304) %i.j) #54
          to label %.thread136.i unwind label %bb.kp, !noalias !45577

bb.kp:                                            ; preds = %bb.ko
  %i.agd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55, !noalias !45577
  unreachable

bb.kq:                                            ; preds = %bb.kn, %bb.km
  %i.age = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.agf = load ptr, ptr %i.age, align 8, !alias.scope !45575, !noalias !45576, !nonnull !41, !noundef !41
  %i.agg = getelementptr inbounds nuw [304 x i8], ptr %i.agf, i64 %i.afz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(304) %i.agg, ptr noundef nonnull align 16 dereferenceable(304) %i.j, i64 304, i1 false), !noalias !45577
  %i.agh = add i64 %i.afz, 1
  store i64 %i.agh, ptr %i.afy, align 8, !alias.scope !45575, !noalias !45576
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !45461
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !45461
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !45461
  call void @llvm.experimental.noalias.scope.decl(metadata !45578)
  call void @llvm.experimental.noalias.scope.decl(metadata !45579)
  call void @llvm.experimental.noalias.scope.decl(metadata !45580)
  %i.agi = load ptr, ptr %i.ae, align 8, !alias.scope !45581, !noalias !45461, !nonnull !41, !noundef !41
  %i.agj = atomicrmw sub ptr %i.agi, i64 1 release, align 8, !noalias !45582
  %i.agk = icmp eq i64 %i.agj, 1
  br i1 %i.agk, label %bb.kr, label %bb.lg

bb.kr:                                            ; preds = %bb.kq
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library4text4font17FontInstanceInnerE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ae) #58
          to label %bb.lg unwind label %bb.co, !noalias !45461

.thread120.i:                                     ; preds = %bb.ki, %bb.ka, %bb.js, %bb.jk, %bb.jc, %bb.it, %.thread146.i
  %.sroa.076.3135.i = phi i1 [ true, %.thread146.i ], [ true, %bb.it ], [ false, %bb.js ], [ true, %bb.jc ], [ %.not238.i, %bb.ki ], [ true, %bb.jk ], [ %.not238.i, %bb.ka ] ; 2 uses
  %.sroa.077.3134.i = phi i1 [ true, %.thread146.i ], [ true, %bb.it ], [ true, %bb.js ], [ true, %bb.jc ], [ false, %bb.ki ], [ true, %bb.jk ], [ true, %bb.ka ] ; 2 uses
  %.sroa.078.3133.i = phi i1 [ true, %.thread146.i ], [ true, %bb.it ], [ %.not236.i, %bb.js ], [ false, %bb.jc ], [ %.not236.i, %bb.ki ], [ %.not236.i, %bb.jk ], [ %.not236.i, %bb.ka ] ; 2 uses
  %.sroa.079.3132.i = phi i1 [ true, %.thread146.i ], [ true, %bb.it ], [ %.not237.i, %bb.js ], [ true, %bb.jc ], [ %.not237.i, %bb.ki ], [ false, %bb.jk ], [ %.not237.i, %bb.ka ] ; 2 uses
  %.sroa.080.3131.i = phi i1 [ true, %.thread146.i ], [ true, %bb.it ], [ true, %bb.js ], [ true, %bb.jc ], [ %.not239.i, %bb.ki ], [ true, %bb.jk ], [ false, %bb.ka ] ; 2 uses
  %.sroa.081.3130.i = phi i1 [ true, %.thread146.i ], [ false, %bb.it ], [ %.not235.i, %bb.js ], [ %.not235.i, %bb.jc ], [ %.not235.i, %bb.ki ], [ %.not235.i, %bb.jk ], [ %.not235.i, %bb.ka ] ; 2 uses
  %.pn129.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %.thread146.i ], [ %i.adi, %bb.it ], [ %i.aeu, %bb.js ], [ %i.adw, %bb.jc ], [ %i.afr, %bb.ki ], [ %i.aeh, %bb.jk ], [ %i.aff, %bb.ka ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !45583)
  %i.agl = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !45584)
  call void @llvm.experimental.noalias.scope.decl(metadata !45585)
  %i.agm = load ptr, ptr %i.agl, align 8, !alias.scope !45586, !noalias !45461, !nonnull !41, !noundef !41
  %i.agn = atomicrmw sub ptr %i.agm, i64 1 release, align 8, !noalias !45587
  %i.ago = icmp eq i64 %i.agn, 1
  br i1 %i.ago, label %bb.ks, label %.thread136.i

bb.ks:                                            ; preds = %.thread120.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashINtNtB7_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1L_5frame9FrameItemEEEE9drop_slowB1N_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.agl) #58
          to label %.thread136.i unwind label %bb.ix, !noalias !45461

bb.kt:                                            ; preds = %bb.ku, %.body.i
  %i.agp = load i64, ptr %i.ag, align 16, !range !83, !noalias !45461, !noundef !41
  %i.agq = icmp ne i64 %i.agp, -1
  %or.cond28.i = and i1 %.sroa.077.0.i, %i.agq
  br i1 %or.cond28.i, label %bb.kw, label %bb.kv

bb.ku:                                            ; preds = %.body.i
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEBH_(ptr noalias nofree noundef align 16 dereferenceable(304) %i.af) #54
          to label %bb.kt unwind label %bb.ix, !noalias !45461

bb.kv:                                            ; preds = %bb.kw, %bb.kt
  %i.agr = load i64, ptr %i.ah, align 16, !range !83, !noalias !45461, !noundef !41
  %i.ags = icmp ne i64 %i.agr, -1
  %or.cond30.i = and i1 %.sroa.078.0.i, %i.ags
  br i1 %or.cond30.i, label %bb.ky, label %bb.kx

bb.kw:                                            ; preds = %bb.kt
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEBH_(ptr noalias nofree noundef align 16 dereferenceable(304) %i.ag) #54
          to label %bb.kv unwind label %bb.ix, !noalias !45461

bb.kx:                                            ; preds = %bb.ky, %bb.kv
  %i.agt = load i64, ptr %i.ai, align 16, !range !83, !noalias !45461, !noundef !41
  %i.agu = icmp ne i64 %i.agt, -1
  %or.cond32.i = and i1 %.sroa.079.0.i, %i.agu
  br i1 %or.cond32.i, label %bb.la, label %bb.kz

bb.ky:                                            ; preds = %bb.kv
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEBH_(ptr noalias nofree noundef align 16 dereferenceable(304) %i.ah) #54
          to label %bb.kx unwind label %bb.ix, !noalias !45461

bb.kz:                                            ; preds = %bb.la, %bb.kx
  %i.agv = load i64, ptr %i.aj, align 16, !range !83, !noalias !45461, !noundef !41
  %i.agw = icmp ne i64 %i.agv, -1
  %or.cond34.i = and i1 %.sroa.080.0.i, %i.agw
  br i1 %or.cond34.i, label %bb.lc, label %bb.lb

bb.la:                                            ; preds = %bb.kx
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEBH_(ptr noalias nofree noundef align 16 dereferenceable(304) %i.ai) #54
          to label %bb.kz unwind label %bb.ix, !noalias !45461

bb.lb:                                            ; preds = %bb.lc, %bb.kz
  %i.agx = load i64, ptr %i.ak, align 16, !range !83, !noalias !45461, !noundef !41
  %i.agy = icmp ne i64 %i.agx, -1
  %or.cond36.i = and i1 %.sroa.081.0.i, %i.agy
  br i1 %or.cond36.i, label %bb.le, label %bb.ld

bb.lc:                                            ; preds = %bb.kz
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEBH_(ptr noalias nofree noundef align 16 dereferenceable(304) %i.aj) #54
          to label %bb.lb unwind label %bb.ix, !noalias !45461

bb.ld:                                            ; preds = %bb.le, %bb.lb
  br i1 %.sroa.082.0.i, label %bb.lf, label %.thread503

bb.le:                                            ; preds = %bb.lb
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEBH_(ptr noalias nofree noundef align 16 dereferenceable(304) %i.ak) #54
          to label %bb.ld unwind label %bb.ix, !noalias !45461

bb.lf:                                            ; preds = %bb.ld
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEBH_(ptr noalias nofree noundef nonnull align 16 dereferenceable(304) %i.ay) #54
          to label %.thread503 unwind label %bb.ix, !noalias !45530

bb.lg:                                            ; preds = %bb.kr, %bb.kq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !45461
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !45461
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !45461
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !45461
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !45461
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !45461
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !45461
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
end_hunk_7
begin_hunk_8_@_RNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts14layout_scripts:bb.a
bb.ns:                                            ; preds = %bb.nr
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashINtNtB7_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1L_5frame9FrameItemEEEE9drop_slowB1N_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.sroa.6137.0..sroa_idx) #58
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB13_.exit450 unwind label %.thread486

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB13_.exit450: ; preds = %bb.nr, %bb.no, %bb.nn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB13_.exit404, %bb.np, %bb.nq, %bb.ns, %bb.ni, %bb.nf, %bb.ne, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB13_.exit442, %bb.ng, %bb.nh, %bb.nj, %bb.ao
  %.sroa.0261.7 = phi i8 [ 1, %bb.ao ], [ 0, %bb.nj ], [ 0, %bb.nh ], [ 0, %bb.ng ], [ 0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB13_.exit442 ], [ 0, %bb.ne ], [ 0, %bb.nf ], [ 0, %bb.ni ], [ 0, %bb.ns ], [ 0, %bb.nq ], [ 0, %bb.np ], [ 0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB13_.exit404 ], [ 0, %bb.nn ], [ 0, %bb.no ], [ 0, %bb.nr ] ; 7 uses
  %.sroa.9.3 = phi i64 [ %.sroa.7128.0.copyload, %bb.ao ], [ %.sroa.7210.0.copyload, %bb.nj ], [ %.sroa.7210.0.copyload, %bb.nh ], [ %.sroa.7210.0.copyload, %bb.ng ], [ %.sroa.7210.0.copyload, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB13_.exit442 ], [ %.sroa.7210.0.copyload, %bb.ne ], [ %.sroa.7210.0.copyload, %bb.nf ], [ %.sroa.7210.0.copyload, %bb.ni ], [ %.sroa.7169.0.copyload, %bb.ns ], [ %.sroa.7169.0.copyload, %bb.nq ], [ %.sroa.7169.0.copyload, %bb.np ], [ %.sroa.7169.0.copyload, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB13_.exit404 ], [ %.sroa.7169.0.copyload, %bb.nn ], [ %.sroa.7169.0.copyload, %bb.no ], [ %.sroa.7169.0.copyload, %bb.nr ] ; 2 uses
  %.sroa.0.3 = phi ptr [ %.sroa.6125.0.copyload, %bb.ao ], [ %.sroa.6207.0.copyload, %bb.nj ], [ %.sroa.6207.0.copyload, %bb.nh ], [ %.sroa.6207.0.copyload, %bb.ng ], [ %.sroa.6207.0.copyload, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB13_.exit442 ], [ %.sroa.6207.0.copyload, %bb.ne ], [ %.sroa.6207.0.copyload, %bb.nf ], [ %.sroa.6207.0.copyload, %bb.ni ], [ %.sroa.6166.0.copyload, %bb.ns ], [ %.sroa.6166.0.copyload, %bb.nq ], [ %.sroa.6166.0.copyload, %bb.np ], [ %.sroa.6166.0.copyload, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB13_.exit404 ], [ %.sroa.6166.0.copyload, %bb.nn ], [ %.sroa.6166.0.copyload, %bb.no ], [ %.sroa.6166.0.copyload, %bb.nr ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18)
  call void @llvm.experimental.noalias.scope.decl(metadata !45652)
  %i.akd = load i64, ptr %i.bg, align 16, !range !95, !alias.scope !45652, !noundef !41
  %i.ake = call i64 @llvm.usub.sat.i64(i64 %i.akd, i64 1)
  switch i64 %i.ake, label %bb.nt [
    i64 0, label %bb.nv
    i64 1, label %bb.nw
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEBH_.exit454
  ]

bb.nt:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB13_.exit450
  %i.akf = load i8, ptr %.sroa.595.0..sroa_idx, align 16, !range !54, !alias.scope !45653, !noundef !41
  %i.akg = icmp eq i8 %i.akf, 0
  br i1 %i.akg, label %bb.nu, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEBH_.exit454

bb.nu:                                            ; preds = %bb.nt
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.696.0..sroa_idx)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEBH_.exit454 unwind label %.split.thread

bb.nv:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB13_.exit450
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment5glyph13GlyphFragmentEBJ_(ptr noalias nofree noundef nonnull align 16 dereferenceable(304) %i.bg)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEBH_.exit454 unwind label %.split.thread

bb.nw:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB13_.exit450
  call void @llvm.experimental.noalias.scope.decl(metadata !45654)
  call void @llvm.experimental.noalias.scope.decl(metadata !45655)
  call void @llvm.experimental.noalias.scope.decl(metadata !45656)
  call void @llvm.experimental.noalias.scope.decl(metadata !45657)
  %i.akh = load ptr, ptr %.sroa.696.0..sroa_idx, align 8, !alias.scope !45658, !nonnull !41, !noundef !41
  %i.aki = atomicrmw sub ptr %i.akh, i64 1 release, align 8, !noalias !45658
  %i.akj = icmp eq i64 %i.aki, 1
  br i1 %i.akj, label %bb.nx, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEBH_.exit454

bb.nx:                                            ; preds = %bb.nw
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashINtNtB7_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1L_5frame9FrameItemEEEE9drop_slowB1N_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.sroa.696.0..sroa_idx) #58
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEBH_.exit454 unwind label %.split.thread

bb.ny:                                            ; preds = %bb.as
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB13_(ptr noalias nofree noundef align 16 dereferenceable(304) %i.be) #54
          to label %.thread unwind label %bb.mr

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEBH_.exit454: ; preds = %bb.nw, %bb.nt, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB13_.exit450, %bb.nu, %bb.nv, %bb.nx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  call void @llvm.experimental.noalias.scope.decl(metadata !45659)
  %i.akk = load i64, ptr %i.bh, align 16, !range !83, !alias.scope !45659, !noundef !41 ; 2 uses
  %i.akl = icmp eq i64 %i.akk, -1
  br i1 %i.akl, label %.noexc455, label %bb.nz

bb.nz:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEBH_.exit454
  call void @llvm.experimental.noalias.scope.decl(metadata !45660)
  %i.akm = call i64 @llvm.usub.sat.i64(i64 %i.akk, i64 1)
  switch i64 %i.akm, label %bb.oa [
    i64 0, label %bb.oc
    i64 1, label %bb.od
    i64 2, label %.noexc455
  ]

bb.oa:                                            ; preds = %bb.nz
  %i.akn = load i8, ptr %.sroa.574.0..sroa_idx, align 16, !range !54, !alias.scope !45661, !noundef !41
  %i.ako = icmp eq i8 %i.akn, 0
  br i1 %i.ako, label %bb.ob, label %.noexc455

bb.ob:                                            ; preds = %bb.oa
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.675.0..sroa_idx)
          to label %.noexc455 unwind label %bb.o

bb.oc:                                            ; preds = %bb.nz
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment5glyph13GlyphFragmentEBJ_(ptr noalias nofree noundef nonnull align 16 dereferenceable(304) %i.bh)
          to label %.noexc455 unwind label %bb.o

bb.od:                                            ; preds = %bb.nz
  call void @llvm.experimental.noalias.scope.decl(metadata !45662)
  call void @llvm.experimental.noalias.scope.decl(metadata !45663)
  call void @llvm.experimental.noalias.scope.decl(metadata !45664)
  call void @llvm.experimental.noalias.scope.decl(metadata !45665)
  %i.akp = load ptr, ptr %.sroa.675.0..sroa_idx, align 8, !alias.scope !45666, !nonnull !41, !noundef !41
  %i.akq = atomicrmw sub ptr %i.akp, i64 1 release, align 8, !noalias !45666
  %i.akr = icmp eq i64 %i.akq, 1
  br i1 %i.akr, label %bb.oe, label %.noexc455

bb.oe:                                            ; preds = %bb.od
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashINtNtB7_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1L_5frame9FrameItemEEEE9drop_slowB1N_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.sroa.675.0..sroa_idx) #58
          to label %.noexc455 unwind label %bb.o

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB13_.exit463: ; preds = %bb.ok, %bb.oh, %bb.og, %bb.of, %bb.oi, %bb.oj, %bb.ol, %.thread491, %.noexc455, %bb.j
  %.sroa.9.4 = phi i64 [ %.sroa.727.0.copyload, %bb.j ], [ %.sroa.7251.0.copyload, %.thread491 ], [ %.sroa.9.3, %.noexc455 ], [ %.sroa.9.5, %bb.ol ], [ %.sroa.9.5, %bb.oj ], [ %.sroa.9.5, %bb.oi ], [ %.sroa.9.5, %bb.of ], [ %.sroa.9.5, %bb.og ], [ %.sroa.9.5, %bb.oh ], [ %.sroa.9.5, %bb.ok ] ; 2 uses
  %.sroa.0.4 = phi ptr [ %.sroa.624.0.copyload, %bb.j ], [ %.sroa.6248.0.copyload, %.thread491 ], [ %.sroa.0.3, %.noexc455 ], [ %.sroa.0.5, %bb.ol ], [ %.sroa.0.5, %bb.oj ], [ %.sroa.0.5, %bb.oi ], [ %.sroa.0.5, %bb.of ], [ %.sroa.0.5, %bb.og ], [ %.sroa.0.5, %bb.oh ], [ %.sroa.0.5, %bb.ok ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  %i.aks = load ptr, ptr %i.bj, align 8, !alias.scope !45667, !noundef !41
  %i.akt = icmp eq ptr %i.aks, null
  br i1 %i.akt, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit459, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit459.sink.split

bb.of:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB13_.exit, %.noexc455
  %.sroa.9.5 = phi i64 [ %.sroa.9.6, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB13_.exit ], [ %.sroa.9.3, %.noexc455 ] ; 7 uses
  %.sroa.0.5 = phi ptr [ %.sroa.0.6, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB13_.exit ], [ %.sroa.0.3, %.noexc455 ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !45668)
  %i.aku = load i64, ptr %i.bi, align 16, !range !83, !alias.scope !45668, !noundef !41 ; 2 uses
  %i.akv = icmp eq i64 %i.aku, -1
  br i1 %i.akv, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB13_.exit463, label %bb.og

bb.og:                                            ; preds = %bb.of
  call void @llvm.experimental.noalias.scope.decl(metadata !45669)
  %i.akw = call i64 @llvm.usub.sat.i64(i64 %i.aku, i64 1)
  switch i64 %i.akw, label %bb.oh [
    i64 0, label %bb.oj
    i64 1, label %bb.ok
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB13_.exit463
  ]

bb.oh:                                            ; preds = %bb.og
  %i.akx = load i8, ptr %.sroa.5.0..sroa_idx, align 16, !range !54, !alias.scope !45670, !noundef !41
  %i.aky = icmp eq i8 %i.akx, 0
  br i1 %i.aky, label %bb.oi, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB13_.exit463

bb.oi:                                            ; preds = %bb.oh
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.634.0..sroa_idx)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB13_.exit463 unwind label %bb.h

bb.oj:                                            ; preds = %bb.og
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment5glyph13GlyphFragmentEBJ_(ptr noalias nofree noundef nonnull align 16 dereferenceable(304) %i.bi)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB13_.exit463 unwind label %bb.h

bb.ok:                                            ; preds = %bb.og
  call void @llvm.experimental.noalias.scope.decl(metadata !45671)
  call void @llvm.experimental.noalias.scope.decl(metadata !45672)
  call void @llvm.experimental.noalias.scope.decl(metadata !45673)
  call void @llvm.experimental.noalias.scope.decl(metadata !45674)
  %i.akz = load ptr, ptr %.sroa.634.0..sroa_idx, align 8, !alias.scope !45675, !nonnull !41, !noundef !41
  %i.ala = atomicrmw sub ptr %i.akz, i64 1 release, align 8, !noalias !45675
  %i.alb = icmp eq i64 %i.ala, 1
  br i1 %i.alb, label %bb.ol, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB13_.exit463

bb.ol:                                            ; preds = %bb.ok
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashINtNtB7_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1L_5frame9FrameItemEEEE9drop_slowB1N_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.sroa.634.0..sroa_idx) #58
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB13_.exit463 unwind label %bb.h

.thread:                                          ; preds = %bb.ny, %bb.me, %bb.nc, %bb.nl, %.thread486
  %.pn384485 = phi { ptr, i32 } [ %i.dn, %.thread486 ], [ %i.dr, %bb.ny ], [ %.pn376, %bb.me ], [ %.pn380, %bb.nc ], [ %.pn382, %bb.nl ] ; 2 uses
  %.sroa.0261.4484 = phi i8 [ %.sroa.0261.5, %.thread486 ], [ 0, %bb.ny ], [ 0, %bb.me ], [ 0, %bb.nc ], [ 0, %bb.nl ] ; 2 uses
  %.sroa.0260.2483 = phi i1 [ %.sroa.0260.3, %.thread486 ], [ true, %bb.ny ], [ false, %bb.me ], [ %.sroa.0260.5, %bb.nc ], [ true, %bb.nl ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEBH_(ptr noalias nofree noundef align 16 dereferenceable(304) %i.bg) #54
          to label %bb.w unwind label %bb.mr

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB13_.exit: ; preds = %bb.ai, %bb.af, %bb.ae, %bb.ad, %bb.ag, %bb.ah, %bb.aj, %bb.q
  %.sroa.9.6 = phi i64 [ %.sroa.766.0.copyload, %bb.q ], [ %i.da, %bb.aj ], [ %i.da, %bb.ah ], [ %i.da, %bb.ag ], [ %i.da, %bb.ad ], [ %i.da, %bb.ae ], [ %i.da, %bb.af ], [ %i.da, %bb.ai ]
  %.sroa.0.6 = phi ptr [ %.sroa.663.0.copyload, %bb.q ], [ %i.cy, %bb.aj ], [ %i.cy, %bb.ah ], [ %i.cy, %bb.ag ], [ %i.cy, %bb.ad ], [ %i.cy, %bb.ae ], [ %i.cy, %bb.af ], [ %i.cy, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  br label %bb.of

bb.om:                                            ; preds = %.split.thread, %bb.w
  %.pn386475 = phi { ptr, i32 } [ %lpad.thr_comm, %.split.thread ], [ %.pn384485, %bb.w ]
  %.sroa.0261.2474 = phi i8 [ %.sroa.0261.3.ph, %.split.thread ], [ %.sroa.0261.4484, %bb.w ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB13_(ptr noalias nofree noundef align 16 dereferenceable(304) %i.bh) #54
          to label %bb.n unwind label %bb.mr

bb.on:                                            ; preds = %bb.n
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB13_(ptr noalias nofree noundef align 16 dereferenceable(304) %i.bi) #54
          to label %.thread503 unwind label %bb.mr

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %.thread503, %bb.g
  resume { ptr, i32 } %.pn390
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef double @_RNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts9math_kern(ptr noalias nofree noundef nonnull readonly align 16 captures(none) dereferenceable(304) %0, ptr noalias nofree noundef nonnull readonly align 16 captures(none) dereferenceable(304) %1, double noundef %2, i8 noundef range(i8 0, 4) %3) unnamed_addr #1 {
bb.a:
  %switch = icmp samesign ult i8 %3, 2
  br i1 %switch, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load i64, ptr %0, align 16, !range !95, !noundef !41 ; 2 uses
  %i.b = tail call i64 @llvm.usub.sat.i64(i64 %i.a, i64 1)
  switch i64 %i.b, label %bb.f [
    i64 0, label %bb.d
    i64 1, label %bb.e
  ]

bb.c:                                             ; preds = %bb.a
  %i.c = load i64, ptr %1, align 16, !range !95, !noundef !41 ; 2 uses
  %i.d = tail call i64 @llvm.usub.sat.i64(i64 %i.c, i64 1)
  switch i64 %i.d, label %bb.k [
    i64 0, label %bb.i
    i64 1, label %bb.j
  ]

bb.d:                                             ; preds = %bb.b
  %4 = trunc nuw i64 %i.a to i1
  %spec.select.v = select i1 %4, i64 8, i64 72
  br label %.sink.split

bb.e:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !49, !noundef !41
  %i.g = trunc nuw i64 %i.f to i1
  %spec.select49.v = select i1 %i.g, i64 16, i64 40
  br label %.sink.split

.sink.split:                                      ; preds = %bb.d, %bb.e
  %spec.select49.v.sink = phi i64 [ %spec.select49.v, %bb.e ], [ %spec.select.v, %bb.d ]
  %spec.select49 = getelementptr inbounds nuw i8, ptr %0, i64 %spec.select49.v.sink
  %.sroa.044.2 = load double, ptr %spec.select49, align 8
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.b
  %.sroa.044.1 = phi double [ 0.000000e+00, %bb.b ], [ %.sroa.044.2, %.sink.split ]
  %i.h = fneg double %2
  %i.i = fcmp uno double %2, 0.000000e+00
  %spec.store.select = select i1 %i.i, double 0.000000e+00, double %i.h
  %i.j = fadd double %spec.store.select, %.sroa.044.1 ; 2 uses
  %.inv47 = fcmp ord double %i.j, 0.000000e+00
  %spec.store.select1 = select i1 %.inv47, double %i.j, double 0.000000e+00 ; 3 uses
  %i.k = load i64, ptr %1, align 16, !range !95, !alias.scope !45684, !noundef !41 ; 2 uses
  %i.l = tail call i64 @llvm.usub.sat.i64(i64 %i.k, i64 1)
  switch i64 %i.l, label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit69 [
    i64 0, label %bb.g
    i64 1, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.n = load double, ptr %i.m, align 8, !alias.scope !45684, !noundef !41 ; 2 uses
  %i.o = trunc nuw i64 %i.k to i1
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load double, ptr %i.p, align 8, !alias.scope !45684
  %.sroa.022.0.i = select i1 %i.o, double %i.q, double %i.n ; 2 uses
  %i.r = fneg double %.sroa.022.0.i
  %i.s = fcmp uno double %.sroa.022.0.i, 0.000000e+00
  %spec.store.select.i = select i1 %i.s, double 0.000000e+00, double %i.r
  %i.t = fadd double %i.n, %spec.store.select.i   ; 2 uses
  %.inv23.i = fcmp ord double %i.t, 0.000000e+00
  %spec.store.select1.i = select i1 %.inv23.i, double %i.t, double 0.000000e+00
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit69

bb.h:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.w = load double, ptr %i.v, align 8, !alias.scope !45684, !noundef !41 ; 2 uses
  %i.x = load i64, ptr %i.u, align 8, !range !49, !alias.scope !45684, !noundef !41
  %i.y = trunc nuw i64 %i.x to i1
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aa = load double, ptr %i.z, align 16, !alias.scope !45684
  %.sroa.012.0.i = select i1 %i.y, double %i.aa, double %i.w ; 2 uses
  %i.ab = fneg double %.sroa.012.0.i
  %i.ac = fcmp uno double %.sroa.012.0.i, 0.000000e+00
  %spec.store.select2.i = select i1 %i.ac, double 0.000000e+00, double %i.ab
  %i.ad = fadd double %i.w, %spec.store.select2.i ; 2 uses
  %.inv.i = fcmp ord double %i.ad, 0.000000e+00
  %spec.store.select3.i = select i1 %.inv.i, double %i.ad, double 0.000000e+00
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit69

_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit69: ; preds = %bb.h, %bb.g, %bb.f, %bb.m, %bb.l, %bb.k
  %.sroa.0.0.i64.sink92 = phi double [ 0.000000e+00, %bb.k ], [ %spec.store.select3.i63, %bb.m ], [ %spec.store.select1.i68, %bb.l ], [ %spec.store.select3.i, %bb.h ], [ %spec.store.select1.i, %bb.g ], [ 0.000000e+00, %bb.f ] ; 2 uses
  %.sroa.0.0 = phi double [ %spec.store.select5, %bb.k ], [ %spec.store.select5, %bb.m ], [ %spec.store.select5, %bb.l ], [ %spec.store.select1, %bb.h ], [ %spec.store.select1, %bb.g ], [ %spec.store.select1, %bb.f ] ; 2 uses
  %i.ae = tail call fastcc noundef double @_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment14kern_at_height(ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(304) %0, i8 noundef %3, double noundef %.sroa.0.0), !noalias !45685
  %i.af = shl nuw nsw i8 %3, 3
  %switch.shiftamt = zext nneg i8 %i.af to i32
  %switch.downshift = lshr i32 16777986, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8 ; 2 uses
  %i.ag = fcmp uno double %.sroa.0.0.i64.sink92, 0.000000e+00
  %i.ah = fneg double %.sroa.0.0.i64.sink92
  %spec.store.select6 = select i1 %i.ag, double 0.000000e+00, double %i.ah
  %i.ai = fadd double %2, %spec.store.select6     ; 2 uses
  %.inv46 = fcmp ord double %i.ai, 0.000000e+00
  %spec.store.select7 = select i1 %.inv46, double %i.ai, double 0.000000e+00 ; 2 uses
  %i.aj = tail call fastcc noundef double @_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment14kern_at_height(ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(304) %1, i8 noundef %switch.masked, double noundef %.sroa.0.0), !noalias !45685
  %i.ak = fadd double %i.ae, %i.aj                ; 2 uses
  %.inv.i5377 = fcmp ord double %i.ak, 0.000000e+00
  %spec.store.select.i5478 = select i1 %.inv.i5377, double %i.ak, double 0.000000e+00
  %i.al = tail call fastcc noundef double @_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment14kern_at_height(ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(304) %0, i8 noundef %3, double noundef %spec.store.select7), !noalias !41
  %i.am = tail call fastcc noundef double @_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment14kern_at_height(ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(304) %1, i8 noundef %switch.masked, double noundef %spec.store.select7), !noalias !45686
  %i.an = fadd double %i.al, %i.am                ; 2 uses
  %.inv.i56 = fcmp ord double %i.an, 0.000000e+00
  %spec.store.select.i57 = select i1 %.inv.i56, double %i.an, double 0.000000e+00
  %i.ao = tail call noundef double @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout3absNtB2_3Abs3max(double noundef %spec.store.select.i5478, double noundef %spec.store.select.i57)
  ret double %i.ao

bb.i:                                             ; preds = %bb.c
  %5 = trunc nuw i64 %i.c to i1
  %spec.select50.v = select i1 %5, i64 8, i64 72
  br label %.sink.split97

bb.j:                                             ; preds = %bb.c
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !range !49, !noundef !41
  %i.ar = trunc nuw i64 %i.aq to i1
  %spec.select51.v = select i1 %i.ar, i64 16, i64 40
  br label %.sink.split97

.sink.split97:                                    ; preds = %bb.i, %bb.j
  %spec.select51.v.sink = phi i64 [ %spec.select51.v, %bb.j ], [ %spec.select50.v, %bb.i ]
  %spec.select51 = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select51.v.sink
  %.sroa.045.2 = load double, ptr %spec.select51, align 8
  br label %bb.k

bb.k:                                             ; preds = %.sink.split97, %bb.c
  %.sroa.045.1 = phi double [ 0.000000e+00, %bb.c ], [ %.sroa.045.2, %.sink.split97 ]
  %i.as = fneg double %2
  %i.at = fcmp uno double %2, 0.000000e+00
  %spec.store.select4 = select i1 %i.at, double 0.000000e+00, double %i.as
  %i.au = fadd double %spec.store.select4, %.sroa.045.1 ; 2 uses
  %.inv = fcmp ord double %i.au, 0.000000e+00
  %spec.store.select5 = select i1 %.inv, double %i.au, double 0.000000e+00 ; 3 uses
  %i.av = load i64, ptr %0, align 16, !range !95, !alias.scope !45687, !noundef !41 ; 2 uses
  %i.aw = tail call i64 @llvm.usub.sat.i64(i64 %i.av, i64 1)
  switch i64 %i.aw, label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit69 [
    i64 0, label %bb.l
    i64 1, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ay = load double, ptr %i.ax, align 8, !alias.scope !45687, !noundef !41 ; 2 uses
  %i.az = trunc nuw i64 %i.av to i1
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bb = load double, ptr %i.ba, align 8, !alias.scope !45687
  %.sroa.022.0.i65 = select i1 %i.az, double %i.bb, double %i.ay ; 2 uses
  %i.bc = fneg double %.sroa.022.0.i65
  %i.bd = fcmp uno double %.sroa.022.0.i65, 0.000000e+00
  %spec.store.select.i66 = select i1 %i.bd, double 0.000000e+00, double %i.bc
  %i.be = fadd double %i.ay, %spec.store.select.i66 ; 2 uses
  %.inv23.i67 = fcmp ord double %i.be, 0.000000e+00
  %spec.store.select1.i68 = select i1 %.inv23.i67, double %i.be, double 0.000000e+00
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit69

bb.m:                                             ; preds = %bb.k
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bh = load double, ptr %i.bg, align 8, !alias.scope !45687, !noundef !41 ; 2 uses
  %i.bi = load i64, ptr %i.bf, align 8, !range !49, !alias.scope !45687, !noundef !41
  %i.bj = trunc nuw i64 %i.bi to i1
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bl = load double, ptr %i.bk, align 16, !alias.scope !45687
  %.sroa.012.0.i60 = select i1 %i.bj, double %i.bl, double %i.bh ; 2 uses
  %i.bm = fneg double %.sroa.012.0.i60
  %i.bn = fcmp uno double %.sroa.012.0.i60, 0.000000e+00
  %spec.store.select2.i61 = select i1 %i.bn, double 0.000000e+00, double %i.bm
  %i.bo = fadd double %i.bh, %spec.store.select2.i61 ; 2 uses
  %.inv.i62 = fcmp ord double %i.bo, 0.000000e+00
  %spec.store.select3.i63 = select i1 %.inv.i62, double %i.bo, double 0.000000e+00
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit69
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvNtNtCs7tN9tvpkfrg_12typst_layout4math8fraction15layout_fraction(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(304) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(80) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [304 x i8], align 16              ; 6 uses
  %i.b = alloca [80 x i8], align 8                ; 8 uses
  %i.c = alloca [16 x i8], align 16               ; 4 uses
  %i.d = alloca [16 x i8], align 16               ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [104 x i8], align 8               ; 4 uses
  %i.i = alloca [48 x i8], align 8                ; 4 uses
  %i.j = alloca [48 x i8], align 8                ; 4 uses
  %i.k = alloca [48 x i8], align 8                ; 9 uses
  %i.l = alloca [176 x i8], align 16              ; 16 uses
  %.sroa.0477 = alloca [56 x i8], align 8         ; 5 uses
  %i.m = alloca [112 x i8], align 8               ; 4 uses
  %i.n = alloca [96 x i8], align 8                ; 4 uses
  %i.o = alloca [80 x i8], align 8                ; 8 uses
  %i.p = alloca [24 x i8], align 8                ; 13 uses
  %.sroa.5.sroa.0 = alloca [56 x i8], align 8     ; 3 uses
  %.sroa.5.sroa.7 = alloca [6 x i8], align 2      ; 2 uses
  %.sroa.9 = alloca [20 x i8], align 4            ; 2 uses
  %i.q = alloca [24 x i8], align 8                ; 14 uses
  %i.r = alloca [48 x i8], align 8                ; 4 uses
  %i.s = alloca [48 x i8], align 8                ; 4 uses
  %i.t = alloca [48 x i8], align 8                ; 10 uses
  %i.u = alloca [48 x i8], align 8                ; 3 uses
  %i.v = alloca [304 x i8], align 16              ; 5 uses
  %i.w = alloca [304 x i8], align 16              ; 8 uses
  %i.x = alloca [48 x i8], align 8                ; 15 uses
  %i.y = alloca [304 x i8], align 16              ; 5 uses
  %i.z = alloca [304 x i8], align 16              ; 8 uses
  %i.aa = alloca [48 x i8], align 8               ; 17 uses
  %i.ab = alloca [32 x i8], align 8               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ad = load i64, ptr %i.ac, align 8, !range !53, !noundef !41 ; 2 uses
  %i.ae = load atomic i8, ptr @_RNvCsiNFdexS2GJ6_12typst_timing7ENABLED monotonic, align 1
  %.not = icmp eq i8 %i.ae, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.ab, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @_RNvMCsiNFdexS2GJ6_12typst_timingNtB2_11TimingScope8new_impl(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ab, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @639, i64 noundef 20, i64 noundef %i.ad)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  invoke fastcc void @_RNvMNtCs7tN9tvpkfrg_12typst_layout4mathNtB2_11MathContext20layout_into_fragment(ptr noalias nofree noundef align 16 captures(none) dereferenceable(304) %i.z, ptr noalias nofree noundef align 8 dereferenceable(80) %1, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(144) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.g)
          to label %bb.g unwind label %bb.f

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit462: ; preds = %bb.cb, %bb.al, %bb.ci, %bb.cj, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit459, %bb.f
  %.pn427 = phi { ptr, i32 } [ %i.ah, %bb.f ], [ %.pn424, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit459 ], [ %.pn424.pn496, %bb.cj ], [ %.pn424.pn496, %bb.ci ], [ %lpad.thr_comm.split-lp, %bb.al ], [ %i.ld, %bb.cb ]
  %i.af = load ptr, ptr %i.ab, align 8, !alias.scope !45761, !noundef !41
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit, label %bb.e

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit462
  invoke void @_RNvXs_CsiNFdexS2GJ6_12typst_timingNtB4_11TimingScopeNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ab)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit unwind label %bb.ag

bb.f:                                             ; preds = %bb.m, %bb.i, %bb.d
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit462

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.ai = load i64, ptr %i.z, align 16, !range !83, !noundef !41 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, -1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.an = load i64, ptr %i.am, align 16           ; 2 uses
  br i1 %i.aj, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit

bb.i:                                             ; preds = %bb.g
  %.sroa.6121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %.sroa.10.0..sroa_idx87 = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.sroa.10.0..sroa_idx87, ptr noundef nonnull align 8 dereferenceable(280) %.sroa.6121.0..sroa_idx, i64 280, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  store i64 %i.ai, ptr %i.y, align 16
  %.sroa.6.0..sroa_idx83 = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.al, ptr %.sroa.6.0..sroa_idx83, align 8
  %.sroa.8.0..sroa_idx85 = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store i64 %i.an, ptr %.sroa.8.0..sroa_idx85, align 16
  invoke fastcc void @_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment10into_frame(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.aa, ptr noalias nofree noundef readonly align 16 captures(address) dereferenceable(304) %i.y)
          to label %bb.j unwind label %bb.f

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  invoke fastcc void @_RNvMNtCs7tN9tvpkfrg_12typst_layout4mathNtB2_11MathContext20layout_into_fragment(ptr noalias nofree noundef align 16 captures(none) dereferenceable(304) %i.w, ptr noalias nofree noundef align 8 dereferenceable(80) %1, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(144) %i.ao, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.f)
          to label %bb.k unwind label %.thread

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit459: ; preds = %bb.cg, %bb.ch, %.body
  br i1 %.sroa.0118.1, label %bb.ci, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit462

.thread:                                          ; preds = %bb.j, %bb.n
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.aq = load i64, ptr %i.w, align 16, !range !83, !noundef !41 ; 2 uses
  %i.ar = icmp eq i64 %i.aq, -1
  %i.as = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.at = load ptr, ptr %i.as, align 8            ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.av = load i64, ptr %i.au, align 16           ; 3 uses
  br i1 %i.ar, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.experimental.noalias.scope.decl(metadata !45762)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !45763)
  call void @llvm.experimental.noalias.scope.decl(metadata !45764)
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !45765, !nonnull !41, !noundef !41
  %i.ay = atomicrmw sub ptr %i.ax, i64 1 release, align 8, !noalias !45765
  %i.az = icmp eq i64 %i.ay, 1
end_hunk_8
