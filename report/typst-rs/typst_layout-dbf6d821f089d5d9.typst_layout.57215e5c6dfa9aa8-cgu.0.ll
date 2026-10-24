Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_layout-dbf6d821f089d5d9.typst_layout.57215e5c6dfa9aa8-cgu.0?download=true
inline.NumInlined: 19601
inline.NumDeleted: 9838
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumRuntimeUnrolled: 54
loop-unroll.NumUnrolled: 105
begin_hunk_0_@_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB4_12GridLayouter16measure_auto_row:bb.a
  %.sroa.02.09.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.vf, %.loopexit481.loopexit.unr-lcssa ]
  %lcmp.mod1779 = icmp ne i64 %xtraiter1776, 0
  call void @llvm.assume(i1 %lcmp.mod1779)
  br label %.lr.ph.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.epil:                          ; preds = %.lr.ph.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.epil.preheader
  %.sroa.0.010.i.i.i.i.i.i.epil = phi double [ %i.abj, %.lr.ph.i.i.i.i.i.i.epil ], [ %.sroa.0.010.i.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.i.epil.preheader ]
  %.sroa.02.09.i.i.i.i.i.i.epil = phi i64 [ %i.abi, %.lr.ph.i.i.i.i.i.i.epil ], [ %.sroa.02.09.i.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.epil.preheader ]
  %i.abi = add nuw nsw i64 %.sroa.02.09.i.i.i.i.i.i.epil, 1
  %gep.i.i.i.i.i.i.epil = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i, i64 %.sroa.02.09.i.i.i.i.i.i.epil
  %.val8.i.i.i.i.i.i.epil = load double, ptr %gep.i.i.i.i.i.i.epil, align 8, !noalias !28407, !noundef !41
  %i.abj = fadd double %.sroa.0.010.i.i.i.i.i.i.epil, %.val8.i.i.i.i.i.i.epil ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter1776
  br i1 %epil.iter.cmp.not, label %.loopexit481, label %.lr.ph.i.i.i.i.i.i.epil, !llvm.loop !28235

.loopexit481:                                     ; preds = %.loopexit481.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.epil, %bb.dk
  %.sroa.0.0.lcssa.i.i.i.i.i.i = phi double [ -0.000000e+00, %bb.dk ], [ %i.vh, %.loopexit481.loopexit.unr-lcssa ], [ %i.abj, %.lr.ph.i.i.i.i.i.i.epil ] ; 2 uses
  %.inv.i.i.i = fcmp ord double %.sroa.0.0.lcssa.i.i.i.i.i.i, 0.000000e+00
  %spec.store.select.i.i.i = select i1 %.inv.i.i.i, double %.sroa.0.0.lcssa.i.i.i.i.i.i, double 0.000000e+00 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.co, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !28428
  store double %spec.store.select.i.i.i, ptr %i.cp, align 8, !alias.scope !28397
  store double %.sroa.025.1.i, ptr %i.cq, align 8, !alias.scope !28397
  store ptr %.sroa.026.0.i, ptr %i.cr, align 8, !alias.scope !28397
  store i64 %.sroa.427.0.i, ptr %i.cs, align 8, !alias.scope !28397
  store double %.sroa.028.1.i, ptr %i.ct, align 8, !alias.scope !28397
  store i64 %.sroa.020.0.i, ptr %i.v, align 8, !alias.scope !28397
  store double %.sroa.521.0.i, ptr %i.cu, align 8, !alias.scope !28397
  store double %.sroa.09.0.i, ptr %i.cv, align 8, !alias.scope !28397
  store i64 %.sroa.0.0.i115, ptr %i.cw, align 8, !alias.scope !28397
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !28399
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !28399
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.abk = load ptr, ptr %i.cx, align 8, !nonnull !41, !noundef !41
  %i.abl = load i64, ptr %i.cy, align 8, !noundef !41
  %.not75 = icmp eq ptr %.sroa.026.0.i, null      ; 2 uses
  %.sroa.424.0 = select i1 %.not75, i64 %i.abl, i64 %.sroa.427.0.i ; 2 uses
  %.sroa.022.0 = select i1 %.not75, ptr %i.abk, ptr %.sroa.026.0.i ; 2 uses
  br i1 %i.z, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %.loopexit481
  store double %spec.store.select.i.i.i, ptr %i.dd, align 8
  store double %.sroa.025.1.i, ptr %i.de, align 8
  store i8 %i.da, ptr %i.df, align 8
  store i8 %i.dc, ptr %i.dg, align 1
  store ptr inttoptr (i64 8 to ptr), ptr %i.di, align 8
  store i64 0, ptr %i.dj, align 8
  store i64 0, ptr %i.u, align 8
  store double %.sroa.028.1.i, ptr %i.dh, align 8
  %.not76 = icmp eq i64 %.sroa.0.0.i115, 0
  br i1 %.not76, label %bb.dz, label %bb.dy

bb.dx:                                            ; preds = %.loopexit481
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.u, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false)
  store double %spec.store.select.i.i.i, ptr %i.dd, align 8
  store double %.sroa.025.1.i, ptr %i.de, align 8
  store ptr %.sroa.022.0, ptr %i.di, align 8, !captures !65
  store i64 %.sroa.424.0, ptr %i.dj, align 8
  store double %.sroa.028.1.i, ptr %i.dh, align 8
  store i64 %.sroa.020.0.i, ptr %i.u, align 8
  store double %.sroa.521.0.i, ptr %i.dk, align 8
  br label %bb.dz

bb.dy:                                            ; preds = %bb.dw
  store ptr %.sroa.022.0, ptr %i.di, align 8, !captures !65
  store i64 %.sroa.424.0, ptr %i.dj, align 8
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dw, %bb.dx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  invoke fastcc void @_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB4_12GridLayouter12cell_locator(ptr noalias nofree noundef align 16 captures(address) dereferenceable(32) %i.q, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(488) %1, i64 noundef %.sroa.056.0609, i64 noundef %i.sh, i64 noundef %3)
          to label %bb.eb unwind label %.loopexit.split-lp493.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp493.loopexit.split-lp:          ; preds = %.loopexit.split-lp493.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEECs7tN9tvpkfrg_12typst_layout.exit
  %.pn80 = phi { ptr, i32 } [ %.pn.pn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEECs7tN9tvpkfrg_12typst_layout.exit ], [ %lpad.loopexit.split-lp1720, %.loopexit.split-lp493.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.val95 = load i64, ptr %i.co, align 8, !range !45, !alias.scope !28429, !noundef !41 ; 2 uses
  %i.abm = icmp eq i64 %.val95, 0
  br i1 %i.abm, label %.body, label %bb.ea

bb.ea:                                            ; preds = %.loopexit.split-lp493.loopexit.split-lp
  %.val96 = load ptr, ptr %i.cx, align 8, !nonnull !41, !noundef !41
  %i.abn = shl nuw i64 %.val95, 3
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val96, i64 noundef %i.abn, i64 noundef range(i64 1, -9223372036854775807) 8) #56, !noalias !28430
  br label %.body

.loopexit.split-lp493.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.fk, %_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB7_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEINtB5_10SpecExtendBU_INtNtB7_9into_iter8IntoIterBU_EE11spec_extendCs7tN9tvpkfrg_12typst_layout.exit, %bb.eb, %bb.dz, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB2z_12GridLayouter16measure_auto_rows0_0EB2D_.exit
  %lpad.loopexit.split-lp1720 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp493.loopexit.split-lp

bb.eb:                                            ; preds = %bb.dz
  %i.abo = load i128, ptr %i.q, align 16, !noundef !41
  %i.abp = load ptr, ptr %i.dl, align 16, !align !59, !noundef !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  invoke fastcc void @_RNvNtCs7tN9tvpkfrg_12typst_layout4grid11layout_cell(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.s, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.si, ptr noalias nofree noundef align 8 dereferenceable(200) %2, i128 noundef %i.abo, ptr noundef align 16 %i.abp, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.dm, ptr noalias nofree noundef align 8 captures(address) dereferenceable(64) %i.u, i1 noundef zeroext %i.dp)
          to label %bb.ec unwind label %.loopexit.split-lp493.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ec:                                            ; preds = %bb.eb
  %i.abq = load i64, ptr %i.s, align 8, !range !70, !noundef !41 ; 2 uses
  %i.abr = icmp eq i64 %i.abq, -1
  %i.abs = load ptr, ptr %.sroa.463.0..sroa_idx, align 8 ; 7 uses
  %i.abt = load i64, ptr %.sroa.564.0..sroa_idx, align 8 ; 9 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br i1 %i.abr, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  %i.abu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.abs, ptr %i.abu, align 8
  %i.abv = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.abt, ptr %i.abv, align 8
  store i64 -2, ptr %0, align 8
  br label %bb.eo

bb.ee:                                            ; preds = %bb.ec
  store i64 %i.abq, ptr %i.t, align 8
  store ptr %i.abs, ptr %.sroa.2.0..sroa_idx, align 8
  store i64 %i.abt, ptr %.sroa.3.0..sroa_idx, align 8
  %i.abw = icmp ult i64 %i.abt, %.sroa.0.0.i115
  br i1 %i.abw, label %_RNvNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB6_12GridLayouter16measure_auto_row14is_empty_frame.exit, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.abx = getelementptr inbounds nuw [48 x i8], ptr %i.abs, i64 %.sroa.0.0.i115 ; 2 uses
  %.not77 = icmp eq i64 %i.abt, %.sroa.0.0.i115
  br i1 %.not77, label %_RNvNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB6_12GridLayouter16measure_auto_row14is_empty_frame.exit, label %bb.ej

_RNvNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB6_12GridLayouter16measure_auto_row14is_empty_frame.exit: ; preds = %.lr.ph1544, %_RNCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB6_12GridLayouter16measure_auto_rows0_0Ba_.exit.loopexit.i, %._crit_edge1545, %bb.ej, %bb.ee, %bb.ef
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.aby = getelementptr inbounds nuw [48 x i8], ptr %i.abs, i64 %i.abt ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !28431)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.abs) ]
  %i.abz = ptrtoint ptr %i.aby to i64
  %i.aca = call i64 @llvm.usub.sat.i64(i64 %i.abt, i64 %.sroa.0.0.i115) ; 3 uses
  %.not.i123 = icmp ugt i64 %i.abt, %.sroa.0.0.i115
  br i1 %.not.i123, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %_RNvNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB6_12GridLayouter16measure_auto_row14is_empty_frame.exit
  %i.acb = shl nuw nsw i64 %i.aca, 3              ; 2 uses
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !noalias !28432
  %i.acc = call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.acb, i64 noundef range(i64 1, 17) 8) #56, !noalias !28432 ; 2 uses
  %i.acd = icmp eq ptr %i.acc, null
  br i1 %i.acd, label %bb.eg, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i.i

bb.eg:                                            ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.acb) #57
          to label %.noexc unwind label %bb.em

.noexc:                                           ; preds = %bb.eg
  unreachable

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i.i: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i, %_RNvNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB6_12GridLayouter16measure_auto_row14is_empty_frame.exit
  %.sroa.4280.0.copyload = phi ptr [ inttoptr (i64 8 to ptr), %_RNvNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB6_12GridLayouter16measure_auto_row14is_empty_frame.exit ], [ %i.acc, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i ] ; 16 uses
  %.sroa.0279.0.copyload = phi i64 [ 0, %_RNvNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB6_12GridLayouter16measure_auto_row14is_empty_frame.exit ], [ %i.aca, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i ] ; 8 uses
  %i.ace = icmp samesign ule i64 %i.aca, %.sroa.0279.0.copyload
  call void @llvm.assume(i1 %i.ace)
  %.not.i.i.i.i.i.i124 = icmp eq i64 %.sroa.0.0.i115, 0
  br i1 %.not.i.i.i.i.i.i124, label %._crit_edge.i.i.i.i.i.i, label %bb.ei

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.ei, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i.i
  %i.acf = phi ptr [ %i.aej, %bb.ei ], [ %i.abs, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i.i ] ; 13 uses
  %i.acg = icmp eq ptr %i.acf, %i.aby
  br i1 %i.acg, label %.loopexit479, label %bb.eh

bb.eh:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  %i.ach = ptrtoint ptr %i.acf to i64
  %i.aci = sub nuw i64 %i.abz, %i.ach             ; 3 uses
  %i.acj = udiv i64 %i.aci, 48                    ; 8 uses
  %min.iters.check = icmp ult i64 %i.aci, 336
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.eh
  %i.ack = shl nuw nsw i64 %i.acj, 3
  %scevgep = getelementptr i8, ptr %.sroa.4280.0.copyload, i64 %i.ack
  %scevgep1560 = getelementptr i8, ptr %i.acf, i64 32
  %scevgep1561 = getelementptr i8, ptr %i.acf, i64 -8
  %scevgep1562 = getelementptr i8, ptr %scevgep1561, i64 %i.aci
  %bound0 = icmp ult ptr %.sroa.4280.0.copyload, %scevgep1562
  %bound1 = icmp ult ptr %scevgep1560, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.acl = and i64 %i.acj, 3                      ; 2 uses
  %i.acm = icmp eq i64 %i.acl, 0
  %i.acn = select i1 %i.acm, i64 4, i64 %i.acl
  %n.vec = sub nsw i64 %i.acj, %i.acn             ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.aco = getelementptr inbounds nuw [48 x i8], ptr %i.acf, i64 %index
  %i.acp = getelementptr inbounds nuw [48 x i8], ptr %i.acf, i64 %index
  %i.acq = getelementptr inbounds nuw [48 x i8], ptr %i.acf, i64 %index
  %i.acr = getelementptr inbounds nuw [48 x i8], ptr %i.acf, i64 %index
  %i.acs = getelementptr i8, ptr %i.aco, i64 32
  %i.act = getelementptr i8, ptr %i.acp, i64 80
  %i.acu = getelementptr i8, ptr %i.acq, i64 128
  %i.acv = getelementptr i8, ptr %i.acr, i64 176
  %i.acw = load double, ptr %i.acs, align 8, !alias.scope !28433, !noalias !28434, !noundef !41
  %i.acx = load double, ptr %i.act, align 8, !alias.scope !28433, !noalias !28434, !noundef !41
  %i.acy = insertelement <2 x double> poison, double %i.acw, i64 0
  %i.acz = insertelement <2 x double> %i.acy, double %i.acx, i64 1
  %i.ada = load double, ptr %i.acu, align 8, !alias.scope !28433, !noalias !28434, !noundef !41
  %i.adb = load double, ptr %i.acv, align 8, !alias.scope !28433, !noalias !28434, !noundef !41
  %i.adc = insertelement <2 x double> poison, double %i.ada, i64 0
  %i.add = insertelement <2 x double> %i.adc, double %i.adb, i64 1
  %i.ade = getelementptr inbounds nuw [8 x i8], ptr %.sroa.4280.0.copyload, i64 %index ; 2 uses
  %i.adf = getelementptr inbounds nuw i8, ptr %i.ade, i64 16
  store <2 x double> %i.acz, ptr %i.ade, align 8, !alias.scope !28435, !noalias !28436
  store <2 x double> %i.add, ptr %i.adf, align 8, !alias.scope !28435, !noalias !28436
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.adg = icmp eq i64 %index.next, %n.vec
  br i1 %i.adg, label %scalar.ph.preheader, label %vector.body, !llvm.loop !28271

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %bb.eh
  %.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.eh ], [ %n.vec, %vector.body ] ; 4 uses
  %i.adh = sub nsw i64 %i.acj, %.ph
  %xtraiter1782 = and i64 %i.adh, 3               ; 2 uses
  %lcmp.mod1783.not = icmp eq i64 %xtraiter1782, 0
  br i1 %lcmp.mod1783.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.adi = phi i64 [ %i.adm, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter1784 = phi i64 [ %prol.iter1784.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.adj = getelementptr inbounds nuw [48 x i8], ptr %i.acf, i64 %i.adi
  %i.adk = getelementptr i8, ptr %i.adj, i64 32
  %.val15.i.i.i.i.i.i.i.prol = load double, ptr %i.adk, align 8, !noalias !28434, !noundef !41
  %i.adl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.4280.0.copyload, i64 %i.adi
  store double %.val15.i.i.i.i.i.i.i.prol, ptr %i.adl, align 8, !noalias !28437
  %i.adm = add nuw i64 %i.adi, 1                  ; 2 uses
  %prol.iter1784.next = add i64 %prol.iter1784, 1 ; 2 uses
  %prol.iter1784.cmp.not = icmp eq i64 %prol.iter1784.next, %xtraiter1782
  br i1 %prol.iter1784.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !28272

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.unr1785 = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.adm, %scalar.ph.prol ]
  %i.adn = sub nsw i64 %.ph, %i.acj
  %i.ado = icmp ugt i64 %i.adn, -4
  br i1 %i.ado, label %.loopexit479, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.adp = phi i64 [ %i.aef, %scalar.ph ], [ %.unr1785, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.adq = getelementptr inbounds nuw [48 x i8], ptr %i.acf, i64 %i.adp
  %i.adr = getelementptr i8, ptr %i.adq, i64 32
  %.val15.i.i.i.i.i.i.i = load double, ptr %i.adr, align 8, !noalias !28434, !noundef !41
  %i.ads = getelementptr inbounds nuw [8 x i8], ptr %.sroa.4280.0.copyload, i64 %i.adp
  store double %.val15.i.i.i.i.i.i.i, ptr %i.ads, align 8, !noalias !28437
  %i.adt = add nuw i64 %i.adp, 1                  ; 2 uses
  %i.adu = getelementptr inbounds nuw [48 x i8], ptr %i.acf, i64 %i.adt
  %i.adv = getelementptr i8, ptr %i.adu, i64 32
  %.val15.i.i.i.i.i.i.i.1 = load double, ptr %i.adv, align 8, !noalias !28434, !noundef !41
  %i.adw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.4280.0.copyload, i64 %i.adt
  store double %.val15.i.i.i.i.i.i.i.1, ptr %i.adw, align 8, !noalias !28437
  %i.adx = add nuw i64 %i.adp, 2                  ; 2 uses
  %i.ady = getelementptr inbounds nuw [48 x i8], ptr %i.acf, i64 %i.adx
  %i.adz = getelementptr i8, ptr %i.ady, i64 32
  %.val15.i.i.i.i.i.i.i.2 = load double, ptr %i.adz, align 8, !noalias !28434, !noundef !41
  %i.aea = getelementptr inbounds nuw [8 x i8], ptr %.sroa.4280.0.copyload, i64 %i.adx
  store double %.val15.i.i.i.i.i.i.i.2, ptr %i.aea, align 8, !noalias !28437
  %i.aeb = add nuw i64 %i.adp, 3                  ; 2 uses
  %i.aec = getelementptr inbounds nuw [48 x i8], ptr %i.acf, i64 %i.aeb
  %i.aed = getelementptr i8, ptr %i.aec, i64 32
  %.val15.i.i.i.i.i.i.i.3 = load double, ptr %i.aed, align 8, !noalias !28434, !noundef !41
  %i.aee = getelementptr inbounds nuw [8 x i8], ptr %.sroa.4280.0.copyload, i64 %i.aeb
  store double %.val15.i.i.i.i.i.i.i.3, ptr %i.aee, align 8, !noalias !28437
  %i.aef = add nuw i64 %i.adp, 4                  ; 2 uses
  %i.aeg = icmp eq i64 %i.aef, %i.acj
  br i1 %i.aeg, label %.loopexit479, label %scalar.ph, !llvm.loop !28273

bb.ei:                                            ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i.i
  %i.aeh = add i64 %.sroa.0.0.i115, -1            ; 2 uses
  %.not.i.not.i.i.i.i.i.i = icmp ult i64 %i.aeh, %i.abt
  %i.aei = getelementptr inbounds nuw [48 x i8], ptr %i.abs, i64 %i.aeh
  %i.aej = getelementptr inbounds nuw i8, ptr %i.aei, i64 48
  br i1 %.not.i.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.loopexit479

bb.ej:                                            ; preds = %bb.ef
  %i.aek = xor i64 %.sroa.0.0.i115, -1
  br i1 %brmerge.demorgan, label %bb.ek, label %_RNvNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB6_12GridLayouter16measure_auto_row14is_empty_frame.exit

bb.ek:                                            ; preds = %bb.ej
  %i.ael = getelementptr i8, ptr %i.abx, i64 16
  %.val97 = load ptr, ptr %i.ael, align 8, !nonnull !41, !noundef !41 ; 2 uses
  %i.aem = getelementptr inbounds nuw i8, ptr %.val97, i64 40
  %i.aen = load ptr, ptr %i.aem, align 8, !nonnull !41, !noundef !41 ; 2 uses
  %i.aeo = getelementptr inbounds nuw i8, ptr %.val97, i64 48
  %i.aep = load i64, ptr %i.aeo, align 16, !noundef !41 ; 2 uses
  %.idx1606 = mul nuw nsw i64 %i.aep, 192
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.aen, i64 %.idx1606
  %i.aer = icmp eq i64 %i.aep, 0
  br i1 %i.aer, label %._crit_edge1545, label %.lr.ph1544

bb.el:                                            ; preds = %.lr.ph1544
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aeu, i64 192 ; 2 uses
  %i.aet = icmp eq ptr %i.aes, %i.aeq
  br i1 %i.aet, label %._crit_edge1545, label %.lr.ph1544

.lr.ph1544:                                       ; preds = %bb.ek, %bb.el
  %i.aeu = phi ptr [ %i.aes, %bb.el ], [ %i.aen, %bb.ek ] ; 2 uses
  %i.aev = getelementptr i8, ptr %i.aeu, i64 16
  %.val.i.i = load i64, ptr %i.aev, align 16, !range !51, !noalias !28438, !noundef !41
  %i.aew = icmp eq i64 %.val.i.i, 5
  br i1 %i.aew, label %bb.el, label %_RNvNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB6_12GridLayouter16measure_auto_row14is_empty_frame.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.fi, %bb.fh, %bb.fe, %bb.fd, %bb.fo, %bb.fn, %bb.ey, %bb.ex, %bb.em
  %.pn.pn = phi { ptr, i32 } [ %i.ahc, %bb.ey ], [ %lpad.phi478, %bb.fo ], [ %i.aex, %bb.em ], [ %i.ahc, %bb.ex ], [ %lpad.phi478, %bb.fn ], [ %i.ail, %bb.fe ], [ %i.ail, %bb.fd ], [ %i.aiq, %bb.fh ], [ %i.aiq, %bb.fi ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameEECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 dereferenceable(24) %i.t) #54
          to label %.loopexit.split-lp493.loopexit.split-lp unwind label %bb.fj

bb.em:                                            ; preds = %bb.eg
  %i.aex = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEECs7tN9tvpkfrg_12typst_layout.exit

._crit_edge1545:                                  ; preds = %bb.el, %bb.ek
  %i.aey = getelementptr inbounds nuw i8, ptr %i.abx, i64 48 ; 2 uses
  %.idx444446 = add i64 %i.abt, %i.aek
  %i.aez = mul i64 %.idx444446, 48                ; 2 uses
  %i.afa = getelementptr i8, ptr %i.aey, i64 %i.aez ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.afa) ]
  %.not.i125 = icmp eq i64 %i.aez, 0
  br i1 %.not.i125, label %_RNvNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB6_12GridLayouter16measure_auto_row14is_empty_frame.exit, label %.lr.ph.i

_RNCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB6_12GridLayouter16measure_auto_rows0_0Ba_.exit.loopexit.i: ; preds = %bb.en, %.lr.ph.i
  %.not6.i = icmp eq ptr %i.afc, %i.afa
  br i1 %.not6.i, label %_RNvNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB6_12GridLayouter16measure_auto_row14is_empty_frame.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge1545, %_RNCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB6_12GridLayouter16measure_auto_rows0_0Ba_.exit.loopexit.i
  %i.afb = phi ptr [ %i.afc, %_RNCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB6_12GridLayouter16measure_auto_rows0_0Ba_.exit.loopexit.i ], [ %i.aey, %._crit_edge1545 ] ; 2 uses
  %i.afc = getelementptr inbounds nuw i8, ptr %i.afb, i64 48 ; 2 uses
  %i.afd = getelementptr i8, ptr %i.afb, i64 16
  %.val.i126 = load ptr, ptr %i.afd, align 8, !noalias !28439, !nonnull !41, !noundef !41 ; 2 uses
  %i.afe = getelementptr inbounds nuw i8, ptr %.val.i126, i64 40
  %i.aff = load ptr, ptr %i.afe, align 8, !noalias !28439, !nonnull !41, !noundef !41 ; 2 uses
  %i.afg = getelementptr inbounds nuw i8, ptr %.val.i126, i64 48
  %i.afh = load i64, ptr %i.afg, align 16, !noalias !28439, !noundef !41 ; 2 uses
  %.idx1607 = mul nuw nsw i64 %i.afh, 192
  %i.afi = getelementptr inbounds nuw i8, ptr %i.aff, i64 %.idx1607
  %.not.not.not.i.not.i.not1546 = icmp eq i64 %i.afh, 0
  br i1 %.not.not.not.i.not.i.not1546, label %_RNCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB6_12GridLayouter16measure_auto_rows0_0Ba_.exit.loopexit.i, label %.lr.ph1547

bb.en:                                            ; preds = %.lr.ph1547
  %i.afj = getelementptr inbounds nuw i8, ptr %i.afk, i64 192 ; 2 uses
  %.not.not.not.i.not.i.not = icmp eq ptr %i.afj, %i.afi
  br i1 %.not.not.not.i.not.i.not, label %_RNCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB6_12GridLayouter16measure_auto_rows0_0Ba_.exit.loopexit.i, label %.lr.ph1547

.lr.ph1547:                                       ; preds = %.lr.ph.i, %bb.en
  %i.afk = phi ptr [ %i.afj, %bb.en ], [ %i.aff, %.lr.ph.i ] ; 2 uses
  %i.afl = getelementptr i8, ptr %i.afk, i64 16
  %.val.i.i.i.i = load i64, ptr %i.afl, align 16, !range !51, !noalias !28440, !noundef !41
  %i.afm = icmp eq i64 %.val.i.i.i.i, 5
  br i1 %i.afm, label %bb.en, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB2z_12GridLayouter16measure_auto_rows0_0EB2D_.exit

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB2z_12GridLayouter16measure_auto_rows0_0EB2D_.exit: ; preds = %.lr.ph1547
  store i64 -1, ptr %0, align 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameEECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 dereferenceable(24) %i.t)
          to label %bb.eo unwind label %.loopexit.split-lp493.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.eo:                                            ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB2z_12GridLayouter16measure_auto_rows0_0EB2D_.exit, %bb.ed
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %.val93 = load i64, ptr %i.co, align 8, !range !45, !alias.scope !28429, !noundef !41 ; 2 uses
  %i.afn = icmp eq i64 %.val93, 0
  br i1 %i.afn, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8rowspans19CellMeasurementDataEBH_.exit128, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %.val94 = load ptr, ptr %i.cx, align 8, !nonnull !41, !noundef !41
  %i.afo = shl nuw i64 %.val93, 3
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val94, i64 noundef %i.afo, i64 noundef range(i64 1, -9223372036854775807) 8) #56, !noalias !28441
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8rowspans19CellMeasurementDataEBH_.exit128

.loopexit479:                                     ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %bb.ei, %._crit_edge.i.i.i.i.i.i
  %.sroa.5281.0.copyload = phi i64 [ 0, %bb.ei ], [ 0, %._crit_edge.i.i.i.i.i.i ], [ %i.acj, %scalar.ph ], [ %i.acj, %scalar.ph.prol.loopexit ] ; 5 uses
  store i64 %.sroa.0279.0.copyload, ptr %i.r, align 8, !alias.scope !28431
  store ptr %.sroa.4280.0.copyload, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !28431
  store i64 %.sroa.5281.0.copyload, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !28431
  br i1 %i.sp, label %bb.eq, label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8rowspansNtNtB4_8layouter12GridLayouter21prepare_rowspan_sizes.exit.thread

bb.eq:                                            ; preds = %.loopexit479
  %i.afp = getelementptr i8, ptr %i.si, i64 100
  %.val98 = load i8, ptr %i.afp, align 4
  call void @llvm.experimental.noalias.scope.decl(metadata !28442)
  %i.afq = icmp samesign ult i64 %.sroa.5281.0.copyload, 2
  br i1 %i.afq, label %bb.er, label %._crit_edge.i

bb.er:                                            ; preds = %bb.eq
  %i.afr = icmp eq i64 %.sroa.5281.0.copyload, 1
  br i1 %i.afr, label %bb.es, label %bb.et

bb.es:                                            ; preds = %bb.er
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !28443
  %i.afs = load double, ptr %.sroa.4280.0.copyload, align 8, !noalias !28443, !noundef !41
  store double %i.afs, ptr %i.h, align 8, !noalias !28443
  %i.aft = invoke noundef i8 @_RNvXs5_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cv)
          to label %.noexc146 unwind label %.loopexit.split-lp475

.noexc146:                                        ; preds = %bb.es
  %i.afu = icmp slt i8 %i.aft, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !28443
  br i1 %i.afu, label %bb.et, label %._crit_edge.i

bb.et:                                            ; preds = %.noexc146, %bb.er
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !28442
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8rowspansNtNtB4_8layouter12GridLayouter21prepare_rowspan_sizes.exit.thread

end_hunk_0
