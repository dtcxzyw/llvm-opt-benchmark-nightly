Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_layout-dbf6d821f089d5d9.typst_layout.57215e5c6dfa9aa8-cgu.0?download=true
inline.NumInlined: 19601
inline.NumDeleted: 9837
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumRuntimeUnrolled: 58
loop-unroll.NumUnrolled: 109
begin_hunk_0_@_RNvNtNtCs7tN9tvpkfrg_12typst_layout4math5table12layout_table:bb.a
  %.val11.i.3.i344 = load i64, ptr %i.nt, align 8, !alias.scope !43998, !noalias !44000, !noundef !41
  %i.nu = icmp eq i64 %.val11.i.3.i344, 0
  %i.nv = or i1 %i.ns, %i.nu
  %i.nw = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i3382083, i64 32
  %.val11.i.4.i345 = load i64, ptr %i.nw, align 8, !alias.scope !43998, !noalias !44000, !noundef !41
  %i.nx = icmp eq i64 %.val11.i.4.i345, 0
  %i.ny = or i1 %i.nv, %i.nx
  %i.nz = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i3382083, i64 40
  %.val11.i.5.i346 = load i64, ptr %i.nz, align 8, !alias.scope !43998, !noalias !44000, !noundef !41
  %i.oa = icmp eq i64 %.val11.i.5.i346, 0
  %i.ob = or i1 %i.ny, %i.oa
  %i.oc = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i3382083, i64 48
  %.val11.i.6.i347 = load i64, ptr %i.oc, align 8, !alias.scope !43998, !noalias !44000, !noundef !41
  %i.od = icmp eq i64 %.val11.i.6.i347, 0
  %i.oe = or i1 %i.ob, %i.od
  %i.of = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i3382083, i64 56
  %.val11.i.7.i348 = load i64, ptr %i.of, align 8, !alias.scope !43998, !noalias !44000, !noundef !41
  %i.og = icmp eq i64 %.val11.i.7.i348, 0
  %i.oh = or i1 %i.oe, %i.og
  br i1 %i.oh, label %.loopexit719, label %bb.cb

.loopexit719:                                     ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IteriENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsJ_NtB9_3cmpiNtB1L_13SliceContains14slice_contains0ECs7tN9tvpkfrg_12typst_layout.exit.i340, %.lr.ph2087
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  invoke fastcc void @_RNvXsC_NtNtCsdaEETE4DqmE_13typst_library9visualize6strokeNtB5_11FixedStrokeNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %i.am, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.az)
          to label %bb.cd unwind label %.thread669

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math5table10CellLayoutEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1c_.exit.i.lr.ph: ; preds = %bb.cc, %._crit_edge2084, %bb.ce
  %.sroa.0165.0 = phi double [ %spec.store.select10, %bb.ce ], [ 0.000000e+00, %._crit_edge2084 ], [ 0.000000e+00, %bb.cc ]
  %i.oi = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.eo ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  store ptr %i.ep, ptr %i.al, align 8
  %.sroa.053.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.sroa.053.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store i64 %.val.i, ptr %.sroa.053.sroa.3.0..sroa_idx, align 8
  %.sroa.053.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store ptr %i.oi, ptr %.sroa.053.sroa.4.0..sroa_idx, align 8
  %.sroa.254.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %.sroa.059.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.sroa.059.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.sroa.059.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %.sroa.059.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %.sroa.460.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.ok = getelementptr inbounds nuw i8, ptr %0, i64 201
  %i.ol = load i8, ptr %i.ok, align 1, !range !48 ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.on = load i8, ptr %i.om, align 8, !range !48 ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.op = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 3 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 8 uses
  %.sroa.0.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %.sroa.0.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 64 ; 5 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.ov = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 6 uses
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 6 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %.sroa.43.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 5 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %.sroa.64.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 4 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %.sroa.75.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 4 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.9.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %i.g, i64 56 ; 2 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %.sroa.469.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 3 uses
  %.sroa.570.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %.sroa.671.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %.sroa.7569.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.pg = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.sroa.4.0..sroa_idx.i493 = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %.sroa.52.0..sroa_idx.i494 = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %.sroa.6.0..sroa_idx.i495 = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %.sroa.7.0..sroa_idx.i496 = getelementptr inbounds nuw i8, ptr %i.ag, i64 120
  %.sroa.8.0..sroa_idx.i497 = getelementptr inbounds nuw i8, ptr %i.ag, i64 144
  %i.ph = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  br label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math5table10CellLayoutEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1c_.exit.i

bb.cd:                                            ; preds = %.loopexit719
  %i.pi = fcmp uno double %spec.store.select, 0.000000e+00
  %i.pj = fadd double %spec.store.select, 0.000000e+00
  %spec.store.select9 = select i1 %i.pi, double 0.000000e+00, double %i.pj
  call void @llvm.experimental.noalias.scope.decl(metadata !44001)
  %i.pk = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store i64 -9223372036854775808, ptr %i.pk, align 16, !alias.scope !44002, !noalias !44001
  %.sroa.4.0..sroa_idx.i353 = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store double 0.000000e+00, ptr %.sroa.4.0..sroa_idx.i353, align 8, !alias.scope !44002, !noalias !44001
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  store double %.sroa.0142.1, ptr %.sroa.52.0..sroa_idx.i, align 16, !alias.scope !44002, !noalias !44001
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6.0..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(80) %i.am, i64 80, i1 false), !alias.scope !44003
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 120
  store i32 -1, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !44002, !noalias !44001
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 144
  store i8 0, ptr %.sroa.8.0..sroa_idx.i, align 16, !alias.scope !44002, !noalias !44001
  %i.pl = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i64 %i.bj, ptr %i.pl, align 8, !alias.scope !44002, !noalias !44001
  store i64 2, ptr %i.an, align 16, !alias.scope !44002, !noalias !44001
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  invoke void @_RNvMs_NtNtCsdaEETE4DqmE_13typst_library6layout5frameNtB4_5Frame4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ao, double noundef %spec.store.select9, double noundef 0.000000e+00, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(176) %i.an)
          to label %bb.ce unwind label %.thread669

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  %i.pm = fadd double %spec.store.select.i.i.i.i, 0.000000e+00
  %i.pn = fcmp uno double %spec.store.select.i.i.i.i, 0.000000e+00
  %spec.store.select10 = select i1 %i.pn, double 0.000000e+00, double %i.pm
  br label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math5table10CellLayoutEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1c_.exit.i.lr.ph

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math5table10CellLayoutEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1c_.exit.i: ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math5table10CellLayoutEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1c_.exit.i.lr.ph, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEECs7tN9tvpkfrg_12typst_layout.exit492
  %.sroa.0165.1980 = phi double [ %.sroa.0165.0, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math5table10CellLayoutEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1c_.exit.i.lr.ph ], [ %spec.store.select21, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEECs7tN9tvpkfrg_12typst_layout.exit492 ] ; 3 uses
  %i.po = phi ptr [ %i.ep, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math5table10CellLayoutEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1c_.exit.i.lr.ph ], [ %i.pq, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEECs7tN9tvpkfrg_12typst_layout.exit492 ] ; 3 uses
  %i.pp = phi i64 [ 0, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math5table10CellLayoutEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1c_.exit.i.lr.ph ], [ %i.pr, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEECs7tN9tvpkfrg_12typst_layout.exit492 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !44004)
  call void @llvm.experimental.noalias.scope.decl(metadata !44005)
  %i.pq = getelementptr inbounds nuw i8, ptr %i.po, i64 24 ; 4 uses
  store ptr %i.pq, ptr %.sroa.053.sroa.2.0..sroa_idx, align 8, !alias.scope !44006, !noalias !44007
  %.sroa.0.0.copyload1.i = load i64, ptr %i.po, align 8, !noalias !44008 ; 3 uses
  %.not.i354 = icmp eq i64 %.sroa.0.0.copyload1.i, -1
  br i1 %.not.i354, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math5table10CellLayoutEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1c_.exit.i._crit_edge, label %bb.cg

bb.cf:                                            ; preds = %.body467, %bb.fs, %.thread682
  %.pn235.pn.pn = phi { ptr, i32 } [ %eh.lpad-body366, %.thread682 ], [ %.pn235, %.body467 ], [ %.pn235, %bb.fs ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtB1q_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math5table10CellLayoutEEEEB2q_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.al) #54
          to label %.thread655 unwind label %bb.ai

bb.cg:                                            ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math5table10CellLayoutEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1c_.exit.i
  %.sroa.7.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.po, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx2.i, i64 16, i1 false)
  %i.pr = add nuw nsw i64 %i.pp, 1                ; 11 uses
  store i64 %i.pr, ptr %.sroa.254.0..sroa_idx, align 8, !alias.scope !44004, !noalias !44009
  store i64 %.sroa.0.0.copyload1.i, ptr %i.ak, align 8
  %i.ps = load ptr, ptr %.sroa.9.8..sroa_idx, align 8, !nonnull !41, !noundef !41 ; 11 uses
  %i.pt = load i64, ptr %i.oj, align 8, !noundef !41 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !44010)
  %.idx.i = mul nuw nsw i64 %i.pt, 40             ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.ps, i64 %.idx.i
  %.not.i356 = icmp eq i64 %i.pt, 0               ; 2 uses
  br i1 %.not.i356, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.pv = getelementptr i8, ptr %i.ps, i64 16
  %.val.i.i.i = load i64, ptr %i.pv, align 8, !alias.scope !44010, !noalias !44011, !noundef !41 ; 4 uses
  %i.pw = icmp ult i64 %.val.i.i.i, 384307168202282326
  call void @llvm.assume(i1 %i.pw)
  %i.px = icmp eq i64 %i.pt, 1
  br i1 %i.px, label %.loopexit66.i, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %gepdiff.i = add nsw i64 %.idx.i, -40
  %i.py = udiv exact i64 %gepdiff.i, 40           ; 3 uses
  %i.pz = add nsw i64 %i.py, -1
  %xtraiter2286 = and i64 %i.py, 3                ; 3 uses
  %i.qa = icmp ult i64 %i.pz, 3
  br i1 %i.qa, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.ci
  %unroll_iter2290 = and i64 %i.py, 576460752303423484
  br label %bb.cj

bb.cj:                                            ; preds = %bb.cj, %.new
  %.sroa.04.0.i.i.i.i357 = phi i64 [ 0, %.new ], [ %i.qn, %bb.cj ] ; 5 uses
  %.sroa.02.0.i.i.i.i358 = phi i64 [ %.val.i.i.i, %.new ], [ %..i.i.i.i.i.i.i.3, %bb.cj ]
  %niter2291 = phi i64 [ 0, %.new ], [ %niter2291.next.3, %bb.cj ]
  %i.qb = getelementptr inbounds nuw [40 x i8], ptr %i.ps, i64 %.sroa.04.0.i.i.i.i357
  %i.qc = getelementptr i8, ptr %i.qb, i64 56
  %.val.i.i.i.i359 = load i64, ptr %i.qc, align 8, !alias.scope !44010, !noalias !44012, !noundef !41 ; 2 uses
  %i.qd = icmp ult i64 %.val.i.i.i.i359, 384307168202282326
  call void @llvm.assume(i1 %i.qd)
  %..i.i.i.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %.val.i.i.i.i359, i64 %.sroa.02.0.i.i.i.i358)
  %i.qe = getelementptr inbounds nuw [40 x i8], ptr %i.ps, i64 %.sroa.04.0.i.i.i.i357
  %i.qf = getelementptr i8, ptr %i.qe, i64 96
  %.val.i.i.i.i359.1 = load i64, ptr %i.qf, align 8, !alias.scope !44010, !noalias !44012, !noundef !41 ; 2 uses
  %i.qg = icmp ult i64 %.val.i.i.i.i359.1, 384307168202282326
  call void @llvm.assume(i1 %i.qg)
  %..i.i.i.i.i.i.i.1 = call noundef i64 @llvm.umax.i64(i64 %.val.i.i.i.i359.1, i64 %..i.i.i.i.i.i.i)
  %i.qh = getelementptr inbounds nuw [40 x i8], ptr %i.ps, i64 %.sroa.04.0.i.i.i.i357
  %i.qi = getelementptr i8, ptr %i.qh, i64 136
  %.val.i.i.i.i359.2 = load i64, ptr %i.qi, align 8, !alias.scope !44010, !noalias !44012, !noundef !41 ; 2 uses
  %i.qj = icmp ult i64 %.val.i.i.i.i359.2, 384307168202282326
  call void @llvm.assume(i1 %i.qj)
  %..i.i.i.i.i.i.i.2 = call noundef i64 @llvm.umax.i64(i64 %.val.i.i.i.i359.2, i64 %..i.i.i.i.i.i.i.1)
  %i.qk = getelementptr inbounds nuw [40 x i8], ptr %i.ps, i64 %.sroa.04.0.i.i.i.i357
  %i.ql = getelementptr i8, ptr %i.qk, i64 176
  %.val.i.i.i.i359.3 = load i64, ptr %i.ql, align 8, !alias.scope !44010, !noalias !44012, !noundef !41 ; 2 uses
  %i.qm = icmp ult i64 %.val.i.i.i.i359.3, 384307168202282326
  call void @llvm.assume(i1 %i.qm)
  %..i.i.i.i.i.i.i.3 = call noundef i64 @llvm.umax.i64(i64 %.val.i.i.i.i359.3, i64 %..i.i.i.i.i.i.i.2) ; 3 uses
  %i.qn = add nuw nsw i64 %.sroa.04.0.i.i.i.i357, 4 ; 2 uses
  %niter2291.next.3 = add i64 %niter2291, 4       ; 2 uses
  %niter2291.ncmp.3 = icmp eq i64 %niter2291.next.3, %unroll_iter2290
  br i1 %niter2291.ncmp.3, label %.loopexit66.i.loopexit.unr-lcssa, label %bb.cj

.loopexit66.i.loopexit.unr-lcssa:                 ; preds = %bb.cj
  %lcmp.mod2287.not = icmp eq i64 %xtraiter2286, 0
  br i1 %lcmp.mod2287.not, label %.loopexit66.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit66.i.loopexit.unr-lcssa, %bb.ci
  %.sroa.04.0.i.i.i.i357.epil.init = phi i64 [ 0, %bb.ci ], [ %i.qn, %.loopexit66.i.loopexit.unr-lcssa ]
  %.sroa.02.0.i.i.i.i358.epil.init = phi i64 [ %.val.i.i.i, %bb.ci ], [ %..i.i.i.i.i.i.i.3, %.loopexit66.i.loopexit.unr-lcssa ]
  %lcmp.mod2289 = icmp ne i64 %xtraiter2286, 0
  call void @llvm.assume(i1 %lcmp.mod2289)
  br label %bb.ck

bb.ck:                                            ; preds = %bb.ck, %.epil.preheader
  %.sroa.04.0.i.i.i.i357.epil = phi i64 [ %.sroa.04.0.i.i.i.i357.epil.init, %.epil.preheader ], [ %i.qr, %bb.ck ] ; 2 uses
  %.sroa.02.0.i.i.i.i358.epil = phi i64 [ %.sroa.02.0.i.i.i.i358.epil.init, %.epil.preheader ], [ %..i.i.i.i.i.i.i.epil, %bb.ck ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ck ]
  %i.qo = getelementptr inbounds nuw [40 x i8], ptr %i.ps, i64 %.sroa.04.0.i.i.i.i357.epil
  %i.qp = getelementptr i8, ptr %i.qo, i64 56
  %.val.i.i.i.i359.epil = load i64, ptr %i.qp, align 8, !alias.scope !44010, !noalias !44012, !noundef !41 ; 2 uses
  %i.qq = icmp ult i64 %.val.i.i.i.i359.epil, 384307168202282326
  call void @llvm.assume(i1 %i.qq)
  %..i.i.i.i.i.i.i.epil = call noundef i64 @llvm.umax.i64(i64 %.val.i.i.i.i359.epil, i64 %.sroa.02.0.i.i.i.i358.epil) ; 2 uses
  %i.qr = add nuw nsw i64 %.sroa.04.0.i.i.i.i357.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter2286
  br i1 %epil.iter.cmp.not, label %.loopexit66.i, label %bb.ck, !llvm.loop !43753

.loopexit66.i:                                    ; preds = %.loopexit66.i.loopexit.unr-lcssa, %bb.ck, %bb.ch
  %.sroa.0.0.i360 = phi i64 [ %.val.i.i.i, %bb.ch ], [ %..i.i.i.i.i.i.i.3, %.loopexit66.i.loopexit.unr-lcssa ], [ %..i.i.i.i.i.i.i.epil, %bb.ck ] ; 3 uses
  %i.qs = shl nuw nsw i64 %.sroa.0.0.i360, 3
  %i.qt = icmp eq i64 %.sroa.0.0.i360, 0
  br i1 %i.qt, label %.lr.ph.preheader.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i: ; preds = %.loopexit66.i, %bb.cg
  %i.qu = phi i64 [ %i.qs, %.loopexit66.i ], [ 8, %bb.cg ] ; 3 uses
  %.sroa.0.039.i = phi i64 [ %.sroa.0.0.i360, %.loopexit66.i ], [ 1, %bb.cg ] ; 3 uses
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !noalias !44013
  %i.qv = call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.qu, i64 noundef range(i64 1, 17) 8) #56, !noalias !44013 ; 6 uses
  %i.qw = icmp eq ptr %i.qv, null
  br i1 %i.qw, label %bb.cl, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i.i

bb.cl:                                            ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.qu) #57
          to label %.noexc364 unwind label %bb.dz

.noexc364:                                        ; preds = %bb.cl
  unreachable

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i.i: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i
  %i.qx = icmp samesign ugt i64 %.sroa.0.039.i, 1
  br i1 %i.qx, label %.lr.ph.i.preheader.i.i, label %_RINvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_elemNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs7tN9tvpkfrg_12typst_layout.exit.i

.lr.ph.i.preheader.i.i:                           ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i.i
  %i.qy = add nsw i64 %i.qu, -8                   ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.qv, i8 0, i64 %i.qy, i1 false), !noalias !44014
  %scevgep.i.i363 = getelementptr i8, ptr %i.qv, i64 %i.qy
  br label %_RINvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_elemNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs7tN9tvpkfrg_12typst_layout.exit.i

_RINvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_elemNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %.lr.ph.i.preheader.i.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i.i
  %.sroa.0.0.lcssa29.i.i.i = phi ptr [ %scevgep.i.i363, %.lr.ph.i.preheader.i.i ], [ %i.qv, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i.i ]
  store double 0.000000e+00, ptr %.sroa.0.0.lcssa29.i.i.i, align 8, !noalias !44014
  br i1 %.not.i356, label %.loopexit717, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_RINvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_elemNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs7tN9tvpkfrg_12typst_layout.exit.i, %.loopexit66.i
  %.sroa.0.0404564.i = phi i64 [ %.sroa.0.039.i, %_RINvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_elemNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs7tN9tvpkfrg_12typst_layout.exit.i ], [ 0, %.loopexit66.i ] ; 6 uses
  %.sroa.10.0.i.i4962.i = phi ptr [ %i.qv, %_RINvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_elemNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs7tN9tvpkfrg_12typst_layout.exit.i ], [ inttoptr (i64 8 to ptr), %.loopexit66.i ] ; 3 uses
  br label %.lr.ph.i

.loopexit23.i:                                    ; preds = %bb.cm, %.lr.ph.i
  %i.qz = icmp eq ptr %i.ra, %i.pu
  br i1 %i.qz, label %.loopexit717, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.loopexit23.i, %.lr.ph.preheader.i
  %.sroa.03.028.i = phi ptr [ %i.ra, %.loopexit23.i ], [ %i.ps, %.lr.ph.preheader.i ] ; 3 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %.sroa.03.028.i, i64 40 ; 2 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %.sroa.03.028.i, i64 8
  %i.rc = load ptr, ptr %i.rb, align 8, !alias.scope !44010, !noalias !44012, !nonnull !41, !noundef !41 ; 2 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %.sroa.03.028.i, i64 16
  %i.re = load i64, ptr %i.rd, align 8, !alias.scope !44010, !noalias !44012, !noundef !41 ; 2 uses
  %.idx2118 = mul nuw nsw i64 %i.re, 24
  %i.rf = getelementptr inbounds nuw i8, ptr %i.rc, i64 %.idx2118
  %i.rg = icmp eq i64 %i.re, 0
  br i1 %i.rg, label %.loopexit23.i, label %.lr.ph2090

bb.cm:                                            ; preds = %bb.cs
  %i.rh = icmp eq ptr %i.rk, %i.rf
  br i1 %i.rh, label %.loopexit23.i, label %.lr.ph2090

.loopexit24.i:                                    ; preds = %bb.cs
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

.loopexit.split-lp.i:                             ; preds = %bb.ct
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

bb.cn:                                            ; preds = %.loopexit.split-lp.i, %.loopexit24.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit24.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  %i.ri = icmp eq i64 %.sroa.0.0404564.i, 0
  br i1 %i.ri, label %.thread682, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.rj = shl nuw nsw i64 %.sroa.0.0404564.i, 3
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i4962.i, i64 noundef %i.rj, i64 noundef range(i64 1, -9223372036854775807) 8) #56, !noalias !44015
  br label %.thread682

.lr.ph2090:                                       ; preds = %.lr.ph.i, %bb.cm
  %.sroa.015.0.i2089 = phi ptr [ %i.rk, %bb.cm ], [ %i.rc, %.lr.ph.i ] ; 3 uses
  %.sroa.7.0.i2088 = phi i64 [ %i.rl, %bb.cm ], [ 0, %.lr.ph.i ] ; 3 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %.sroa.015.0.i2089, i64 24 ; 2 uses
  %i.rl = add nuw nsw i64 %.sroa.7.0.i2088, 1
  %i.rm = getelementptr inbounds nuw i8, ptr %.sroa.015.0.i2089, i64 8
  %i.rn = load ptr, ptr %i.rm, align 8, !noalias !44016, !nonnull !41, !noundef !41
  %i.ro = getelementptr inbounds nuw i8, ptr %.sroa.015.0.i2089, i64 16
  %i.rp = load i64, ptr %i.ro, align 8, !noalias !44016, !noundef !41 ; 2 uses
  %i.rq = icmp eq i64 %i.rp, 0
  br i1 %i.rq, label %.loopexit.i, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph2090, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsdNCNvNtBZ_5table25compute_sub_column_widthss_0NCIB2_B1V_NtNtCs6xpQEr8gLsQ_11typst_utils6scalar6ScalardNCINvXsa_B1X_B1V_NtNtNtB8_6traits5accum3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2K_EE0NCIB2_B3D_ddNCINvXsq_B3F_B3D_B4E_3sumIB59_B58_B4n_EE0NCINvXs26_B4G_dB4E_3sumIB59_B6u_B65_EE0E0E0E0B11_.exit.i.i.i.i.i
  %.sroa.04.0.i.i.i.i.i = phi i64 [ %i.sb, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsdNCNvNtBZ_5table25compute_sub_column_widthss_0NCIB2_B1V_NtNtCs6xpQEr8gLsQ_11typst_utils6scalar6ScalardNCINvXsa_B1X_B1V_NtNtNtB8_6traits5accum3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2K_EE0NCIB2_B3D_ddNCINvXsq_B3F_B3D_B4E_3sumIB59_B58_B4n_EE0NCINvXs26_B4G_dB4E_3sumIB59_B6u_B65_EE0E0E0E0B11_.exit.i.i.i.i.i ], [ 0, %.lr.ph2090 ] ; 2 uses
  %.sroa.02.0.i.i.i.i.i = phi double [ %i.sa, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsdNCNvNtBZ_5table25compute_sub_column_widthss_0NCIB2_B1V_NtNtCs6xpQEr8gLsQ_11typst_utils6scalar6ScalardNCINvXsa_B1X_B1V_NtNtNtB8_6traits5accum3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2K_EE0NCIB2_B3D_ddNCINvXsq_B3F_B3D_B4E_3sumIB59_B58_B4n_EE0NCINvXs26_B4G_dB4E_3sumIB59_B6u_B65_EE0E0E0E0B11_.exit.i.i.i.i.i ], [ -0.000000e+00, %.lr.ph2090 ]
  %i.rr = getelementptr inbounds nuw [304 x i8], ptr %i.rn, i64 %.sroa.04.0.i.i.i.i.i ; 4 uses
  %i.rs = load i64, ptr %i.rr, align 16, !range !95, !alias.scope !44017, !noalias !44016, !noundef !41
  %i.rt = call i64 @llvm.usub.sat.i64(i64 %i.rs, i64 1)
  switch i64 %i.rt, label %default.unreachable1762 [
    i64 0, label %bb.cp
    i64 1, label %bb.cq
    i64 2, label %bb.cr
    i64 3, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsdNCNvNtBZ_5table25compute_sub_column_widthss_0NCIB2_B1V_NtNtCs6xpQEr8gLsQ_11typst_utils6scalar6ScalardNCINvXsa_B1X_B1V_NtNtNtB8_6traits5accum3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2K_EE0NCIB2_B3D_ddNCINvXsq_B3F_B3D_B4E_3sumIB59_B58_B4n_EE0NCINvXs26_B4G_dB4E_3sumIB59_B6u_B65_EE0E0E0E0B11_.exit.i.i.i.i.i
  ]

default.unreachable1762:                          ; preds = %bb.eh, %bb.fb, %.preheader.i
  unreachable

bb.cp:                                            ; preds = %.preheader.i
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rr, i64 64
  %i.rv = load double, ptr %i.ru, align 16, !alias.scope !44017, !noalias !44016, !noundef !41
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsdNCNvNtBZ_5table25compute_sub_column_widthss_0NCIB2_B1V_NtNtCs6xpQEr8gLsQ_11typst_utils6scalar6ScalardNCINvXsa_B1X_B1V_NtNtNtB8_6traits5accum3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2K_EE0NCIB2_B3D_ddNCINvXsq_B3F_B3D_B4E_3sumIB59_B58_B4n_EE0NCINvXs26_B4G_dB4E_3sumIB59_B6u_B65_EE0E0E0E0B11_.exit.i.i.i.i.i

bb.cq:                                            ; preds = %.preheader.i
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rr, i64 32
  %i.rx = load double, ptr %i.rw, align 16, !alias.scope !44017, !noalias !44016, !noundef !41
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsdNCNvNtBZ_5table25compute_sub_column_widthss_0NCIB2_B1V_NtNtCs6xpQEr8gLsQ_11typst_utils6scalar6ScalardNCINvXsa_B1X_B1V_NtNtNtB8_6traits5accum3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2K_EE0NCIB2_B3D_ddNCINvXsq_B3F_B3D_B4E_3sumIB59_B58_B4n_EE0NCINvXs26_B4G_dB4E_3sumIB59_B6u_B65_EE0E0E0E0B11_.exit.i.i.i.i.i

bb.cr:                                            ; preds = %.preheader.i
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rr, i64 8
  %i.rz = load double, ptr %i.ry, align 8, !alias.scope !44017, !noalias !44016, !noundef !41
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsdNCNvNtBZ_5table25compute_sub_column_widthss_0NCIB2_B1V_NtNtCs6xpQEr8gLsQ_11typst_utils6scalar6ScalardNCINvXsa_B1X_B1V_NtNtNtB8_6traits5accum3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2K_EE0NCIB2_B3D_ddNCINvXsq_B3F_B3D_B4E_3sumIB59_B58_B4n_EE0NCINvXs26_B4G_dB4E_3sumIB59_B6u_B65_EE0E0E0E0B11_.exit.i.i.i.i.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsdNCNvNtBZ_5table25compute_sub_column_widthss_0NCIB2_B1V_NtNtCs6xpQEr8gLsQ_11typst_utils6scalar6ScalardNCINvXsa_B1X_B1V_NtNtNtB8_6traits5accum3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2K_EE0NCIB2_B3D_ddNCINvXsq_B3F_B3D_B4E_3sumIB59_B58_B4n_EE0NCINvXs26_B4G_dB4E_3sumIB59_B6u_B65_EE0E0E0E0B11_.exit.i.i.i.i.i: ; preds = %bb.cr, %bb.cq, %bb.cp, %.preheader.i
  %.sroa.0.0.i.i.i.i.i.i.i = phi double [ %i.rv, %bb.cp ], [ %i.rx, %bb.cq ], [ %i.rz, %bb.cr ], [ 0.000000e+00, %.preheader.i ]
  %i.sa = fadd double %.sroa.02.0.i.i.i.i.i, %.sroa.0.0.i.i.i.i.i.i.i ; 2 uses
  %i.sb = add nuw i64 %.sroa.04.0.i.i.i.i.i, 1    ; 2 uses
  %i.sc = icmp eq i64 %i.sb, %i.rp
  br i1 %i.sc, label %.loopexit.i, label %.preheader.i

.loopexit.i:                                      ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsdNCNvNtBZ_5table25compute_sub_column_widthss_0NCIB2_B1V_NtNtCs6xpQEr8gLsQ_11typst_utils6scalar6ScalardNCINvXsa_B1X_B1V_NtNtNtB8_6traits5accum3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2K_EE0NCIB2_B3D_ddNCINvXsq_B3F_B3D_B4E_3sumIB59_B58_B4n_EE0NCINvXs26_B4G_dB4E_3sumIB59_B6u_B65_EE0E0E0E0B11_.exit.i.i.i.i.i, %.lr.ph2090
  %.sroa.0.0.i.i.i.i.i = phi double [ -0.000000e+00, %.lr.ph2090 ], [ %i.sa, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsdNCNvNtBZ_5table25compute_sub_column_widthss_0NCIB2_B1V_NtNtCs6xpQEr8gLsQ_11typst_utils6scalar6ScalardNCINvXsa_B1X_B1V_NtNtNtB8_6traits5accum3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2K_EE0NCIB2_B3D_ddNCINvXsq_B3F_B3D_B4E_3sumIB59_B58_B4n_EE0NCINvXs26_B4G_dB4E_3sumIB59_B6u_B65_EE0E0E0E0B11_.exit.i.i.i.i.i ] ; 2 uses
  %exitcond.not.i = icmp eq i64 %.sroa.7.0.i2088, %.sroa.0.0404564.i
  br i1 %exitcond.not.i, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %.loopexit.i
  %.inv.i.i = fcmp ord double %.sroa.0.0.i.i.i.i.i, 0.000000e+00
  %spec.store.select.i.i = select i1 %.inv.i.i, double %.sroa.0.0.i.i.i.i.i, double 0.000000e+00
  %i.sd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.10.0.i.i4962.i, i64 %.sroa.7.0.i2088
  invoke void @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout3absNtB2_3Abs7set_max(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.sd, double noundef %spec.store.select.i.i)
          to label %bb.cm unwind label %.loopexit24.i, !noalias !44016

bb.ct:                                            ; preds = %.loopexit.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.0404564.i, i64 noundef %.sroa.0.0404564.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @621) #57
          to label %bb.cu unwind label %.loopexit.split-lp.i, !noalias !44016

bb.cu:                                            ; preds = %bb.ct
  unreachable

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math5table10CellLayoutEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1c_.exit.i._crit_edge: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEECs7tN9tvpkfrg_12typst_layout.exit492, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math5table10CellLayoutEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1c_.exit.i
  %.lcssa1130 = phi ptr [ %i.pq, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math5table10CellLayoutEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1c_.exit.i ], [ %i.oi, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEECs7tN9tvpkfrg_12typst_layout.exit492 ] ; 2 uses
  %.sroa.0165.1.lcssa.ph = phi double [ %.sroa.0165.1980, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math5table10CellLayoutEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1c_.exit.i ], [ %spec.store.select21, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEECs7tN9tvpkfrg_12typst_layout.exit492 ] ; 3 uses
  %i.se = ptrtoint ptr %i.oi to i64
  %i.sf = ptrtoint ptr %.lcssa1130 to i64
  %i.sg = sub nuw i64 %i.se, %i.sf
  %i.sh = udiv exact i64 %i.sg, 24
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math5table10CellLayoutEEB1f_(ptr noalias nofree noundef nonnull align 8 %.lcssa1130, i64 noundef %i.sh)
          to label %bb.cw unwind label %bb.cv, !noalias !44018

bb.cv:                                            ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math5table10CellLayoutEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1c_.exit.i._crit_edge
  %i.si = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ep, i64 noundef %i.eo, i64 noundef range(i64 1, -9223372036854775807) 8) #56, !noalias !44018
  br label %.thread655

bb.cw:                                            ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math5table10CellLayoutEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1c_.exit.i._crit_edge
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ep, i64 noundef %i.eo, i64 noundef range(i64 1, -9223372036854775807) 8) #56, !noalias !44018
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  %i.sj = load i64, ptr %.sroa.3105.0..sroa_idx106, align 16, !alias.scope !44019, !noalias !44020, !noundef !41 ; 2 uses
  %i.sk = icmp ugt i64 %i.sj, 1                   ; 2 uses
  %i.sl = load ptr, ptr %i.ba, align 16, !alias.scope !44019, !noalias !44020, !nonnull !41
  %i.sm = load i64, ptr %.sroa.0104.sroa.3.0..sroa_idx122, align 8, !alias.scope !44019, !noalias !44020
  %.sink11.i370 = select i1 %i.sk, ptr %i.sl, ptr %i.ba ; 2 uses
  %.sink10.i371 = select i1 %i.sk, i64 %i.sm, i64 %i.sj ; 2 uses
  %i.sn = and i64 %.sink10.i371, 1152921504606846968 ; 3 uses
  %i.so = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i370, i64 %i.sn ; 2 uses
  %.not.i3752107 = icmp eq i64 %i.sn, 0
  br i1 %.not.i3752107, label %._crit_edge2110, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IteriENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsJ_NtB9_3cmpiNtB1L_13SliceContains14slice_contains0ECs7tN9tvpkfrg_12typst_layout.exit.i376

bb.cx:                                            ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IteriENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsJ_NtB9_3cmpiNtB1L_13SliceContains14slice_contains0ECs7tN9tvpkfrg_12typst_layout.exit.i376
  %i.sp = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i3742109, i64 64
  %i.sq = add nsw i64 %.sroa.5.0.i3732108, -8     ; 2 uses
  %.not.i375 = icmp eq i64 %i.sq, 0
  br i1 %.not.i375, label %._crit_edge2110, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IteriENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsJ_NtB9_3cmpiNtB1L_13SliceContains14slice_contains0ECs7tN9tvpkfrg_12typst_layout.exit.i376

._crit_edge2110:                                  ; preds = %bb.cx, %bb.cw
  %i.sr = shl i64 %.sink10.i371, 3
  %.idx2121 = and i64 %i.sr, 56                   ; 2 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %i.so, i64 %.idx2121
  %.not.not.not.i.not.not.i3862111 = icmp samesign eq i64 %.idx2121, 0
  br i1 %.not.not.not.i.not.not.i3862111, label %_RNvXsJ_NtNtCs3oUPovFnLWP_4core5slice3cmpiNtB5_13SliceContains14slice_contains.exit388, label %.lr.ph2113

bb.cy:                                            ; preds = %.lr.ph2113
  %i.st = getelementptr inbounds nuw i8, ptr %i.su, i64 8 ; 2 uses
  %.not.not.not.i.not.not.i386 = icmp eq ptr %i.st, %i.ss
end_hunk_0
