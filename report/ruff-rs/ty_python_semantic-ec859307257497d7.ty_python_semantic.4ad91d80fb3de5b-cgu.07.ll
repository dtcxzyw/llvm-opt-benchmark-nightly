Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_python_semantic-ec859307257497d7.ty_python_semantic.4ad91d80fb3de5b-cgu.07?download=true
inline.NumInlined: 8805
inline.NumDeleted: 4120
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_RNvMs9_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrowNtB5_27NarrowingConstraintsBuilder21evaluate_expr_compare:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  br label %.loopexit534

.loopexit534:                                     ; preds = %.preheader533, %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt)
  store ptr %i.dh, ptr %i.bt, align 8
  %i.gj = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store ptr %1, ptr %i.gj, align 8
  %i.gk = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  store ptr %i.bz, ptr %i.gk, align 8
  %i.gl = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  store ptr %i.co, ptr %i.gl, align 8
  br label %bb.ar

bb.ar:                                            ; preds = %bb.as, %.loopexit534
  %.sroa.018.0.in = phi ptr [ %2, %.loopexit534 ], [ %i.gn, %bb.as ]
  %.sroa.018.0 = load ptr, ptr %.sroa.018.0.in, align 8, !nonnull !15, !noundef !15 ; 3 uses
  %i.gm = load i32, ptr %.sroa.018.0, align 8, !range !2744, !noundef !15
  switch i32 %i.gm, label %.loopexit532 [
    i32 1, label %bb.as
    i32 26, label %bb.at
  ]

bb.as:                                            ; preds = %bb.ar
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.018.0, i64 16
  br label %bb.ar

bb.at:                                            ; preds = %bb.ar
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.018.0, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br)
  %i.gp = load i64, ptr %i.dj, align 8, !noundef !15
  %.not195 = icmp eq i64 %i.gp, 0
  br i1 %.not195, label %.invoke, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gq = load ptr, ptr %i.cu, align 8, !nonnull !15, !noundef !15
  invoke void @_RINvMsa_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5inferNtB6_19ExpressionInference15expression_typeRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEBa_(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.br, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dh, ptr noundef nonnull align 8 %i.gq)
          to label %bb.av unwind label %.loopexit.split-lp516

bb.av:                                            ; preds = %bb.au
  store ptr %i.go, ptr %i.bs, align 8
  %i.gr = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gr, ptr noundef nonnull align 4 dereferenceable(16) %i.br, i64 16, i1 false)
  invoke fastcc void @_RNCNvMs9_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrowNtB7_27NarrowingConstraintsBuilder21evaluate_expr_compares1_0Bb_(ptr noalias noundef align 8 dereferenceable(32) %i.bt, ptr noundef nonnull align 8 %i.go, ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.gr)
          to label %bb.aw unwind label %.loopexit.split-lp516

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  br label %.loopexit532

.loopexit532:                                     ; preds = %bb.ar, %bb.aw
  %i.gs = load i64, ptr %i.dj, align 8, !noundef !15
  %.not196 = icmp eq i64 %i.gs, 0
  br i1 %.not196, label %.invoke, label %.preheader530

.preheader530:                                    ; preds = %.loopexit532, %bb.ax
  %.sroa.022.0.in = phi ptr [ %i.gu, %bb.ax ], [ %i.cu, %.loopexit532 ]
  %.sroa.022.0 = load ptr, ptr %.sroa.022.0.in, align 8, !nonnull !15, !noundef !15 ; 3 uses
  %i.gt = load i32, ptr %.sroa.022.0, align 8, !range !2744, !noundef !15
  switch i32 %i.gt, label %.loopexit633 [
    i32 1, label %bb.ax
    i32 26, label %bb.ay
  ]

bb.ax:                                            ; preds = %.preheader530
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.022.0, i64 16
  br label %.preheader530

bb.ay:                                            ; preds = %.preheader530
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp)
  %i.gv = load ptr, ptr %2, align 8, !nonnull !15, !noundef !15
  invoke void @_RINvMsa_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5inferNtB6_19ExpressionInference15expression_typeRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEBa_(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.bp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dh, ptr noundef nonnull align 8 %i.gv)
          to label %bb.az unwind label %.loopexit.split-lp516

bb.az:                                            ; preds = %bb.ay
  %i.gw = getelementptr inbounds nuw i8, ptr %.sroa.022.0, i64 8 ; 2 uses
  store ptr %i.gw, ptr %i.bq, align 8
  %i.gx = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gx, ptr noundef nonnull align 4 dereferenceable(16) %i.bp, i64 16, i1 false)
  invoke fastcc void @_RNCNvMs9_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrowNtB7_27NarrowingConstraintsBuilder21evaluate_expr_compares1_0Bb_(ptr noalias noundef align 8 dereferenceable(32) %i.bt, ptr noundef nonnull align 8 %i.gw, ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.gx)
          to label %bb.ba unwind label %.loopexit.split-lp516

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq)
  br label %.loopexit633

.loopexit633:                                     ; preds = %.preheader530, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz)
  %.pr448.pre = load i64, ptr %i.dn, align 8
  %i.gy = icmp eq i64 %.pr448.pre, 1
  br i1 %i.gy, label %.thread631, label %.thread453

.thread631:                                       ; preds = %bb.af, %.loopexit633
  %i.gz = load ptr, ptr %i.dm, align 8, !nonnull !15, !noundef !15
  %i.ha = load i8, ptr %i.gz, align 1, !range !17448, !noundef !15 ; 4 uses
  switch i8 %i.ha, label %.thread452 [
    i8 0, label %bb.bb
    i8 1, label %bb.bb
    i8 6, label %bb.bb
    i8 7, label %bb.bb
  ]

.thread449:                                       ; preds = %bb.ci, %bb.ce
  %.pr451.pr = load i64, ptr %i.dn, align 8
  %i.hb = icmp eq i64 %.pr451.pr, 1
  br i1 %i.hb, label %.thread449..thread452_crit_edge, label %.thread453

.thread449..thread452_crit_edge:                  ; preds = %.thread449
  %.pre610 = load ptr, ptr %i.dm, align 8
  %.pre611 = load i8, ptr %.pre610, align 1, !range !17448
  br label %.thread452

bb.bb:                                            ; preds = %.thread631, %.thread631, %.thread631, %.thread631
  %i.hc = and i8 %i.ha, 14
  %switch227 = icmp eq i8 %i.hc, 6                ; 2 uses
  switch i8 %i.ha, label %bb.bc [
    i8 0, label %bb.bd
    i8 6, label %bb.bd
  ]

bb.bc:                                            ; preds = %bb.bb
  %i.hd = xor i1 %5, true
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bb, %bb.bb, %bb.bc
  %.sroa.026.0 = phi i1 [ %i.hd, %bb.bc ], [ %5, %bb.bb ], [ %5, %bb.bb ] ; 2 uses
  %i.he = load ptr, ptr %2, align 8, !nonnull !15, !noundef !15 ; 7 uses
  %i.hf = load i32, ptr %i.he, align 8, !range !2744, !noundef !15
  %i.hg = icmp eq i32 %i.hf, 25
  %.pre609 = load i64, ptr %i.dj, align 8         ; 2 uses
  br i1 %i.hg, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.hh = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  %i.hi = load ptr, ptr %i.cu, align 8, !nonnull !15, !noundef !15 ; 3 uses
  %.not197 = icmp eq i64 %.pre609, 0
  br i1 %.not197, label %.invoke, label %bb.bg

bb.bf:                                            ; preds = %bb.by, %bb.cd, %bb.bd
  %i.hj = phi i64 [ %.pre608, %bb.by ], [ %.pre607, %bb.cd ], [ %.pre609, %bb.bd ]
  %i.hk = load ptr, ptr %i.cu, align 8, !nonnull !15, !noundef !15 ; 6 uses
  %.not199 = icmp eq i64 %i.hj, 0
  br i1 %.not199, label %.invoke, label %bb.ce

bb.bg:                                            ; preds = %bb.be
  %i.hl = load i32, ptr %i.hi, align 8, !range !2744, !noundef !15
  %i.hm = icmp eq i32 %i.hl, 1
  br i1 %i.hm, label %bb.bh, label %.thread457

.thread457:                                       ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn)
  br label %bb.ca

bb.bh:                                            ; preds = %bb.bg
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  invoke void @_RINvMNtCs2O29vuvTAEJ_14ty_python_core5placeNtB3_9PlaceExpr13try_from_exprRINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.hn)
          to label %.noexc unwind label %.loopexit.split-lp516

.noexc:                                           ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.ho = getelementptr inbounds nuw i8, ptr %i.he, i64 40
  invoke void @_RINvMNtCs2O29vuvTAEJ_14ty_python_core5placeNtB3_9PlaceExpr13try_from_exprRINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ho)
          to label %bb.bk unwind label %bb.bj

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2O29vuvTAEJ_14ty_python_core5place9PlaceExprEECsoTR8nlGN3X_18ty_python_semantic.exit8.i: ; preds = %bb.bv, %bb.bu, %bb.bj
  %.pn.i = phi { ptr, i32 } [ %i.hs, %bb.bj ], [ %i.kl, %bb.bv ], [ %i.kl, %bb.bu ] ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.p, i64 31
  %i.hq = load i8, ptr %i.hp, align 1, !range !13110, !alias.scope !17457, !noundef !15
  %i.hr = icmp eq i8 %i.hq, -2
  br i1 %i.hr, label %.body, label %bb.bi

bb.bi:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2O29vuvTAEJ_14ty_python_core5place9PlaceExprEECsoTR8nlGN3X_18ty_python_semantic.exit8.i
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2O29vuvTAEJ_14ty_python_core5place9PlaceExprECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.p)
          to label %.body unwind label %bb.bx

bb.bj:                                            ; preds = %bb.bl, %.noexc
  %i.hs = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2O29vuvTAEJ_14ty_python_core5place9PlaceExprEECsoTR8nlGN3X_18ty_python_semantic.exit8.i

bb.bk:                                            ; preds = %.noexc
  %i.ht = getelementptr inbounds nuw i8, ptr %i.p, i64 31 ; 2 uses
  %i.hu = load i8, ptr %i.ht, align 1, !range !13110, !noundef !15 ; 5 uses
  %.not.i = icmp eq i8 %i.hu, -2                  ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.o, i64 31 ; 3 uses
  %i.hw = load i8, ptr %i.hv, align 1, !range !13110, !noundef !15 ; 6 uses
  %i.hx = icmp eq i8 %i.hw, -2                    ; 2 uses
  %brmerge.i = or i1 %.not.i, %i.hx
  %.mux.i = and i1 %.not.i, %i.hx
  br i1 %brmerge.i, label %_RNvXsi_NtCs2O29vuvTAEJ_14ty_python_core5placeNtB5_9PlaceExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i, label %bb.bm

_RNvXsi_NtCs2O29vuvTAEJ_14ty_python_core5placeNtB5_9PlaceExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.ithread-pre-split: ; preds = %bb.bm, %bb.bo, %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit.i.i, %bb.bq, %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit13.i.i, %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit13.thread.i.i, %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit.thread.i.i, %7, %.noexc6.i, %_RNvXs1s_NtCs2O29vuvTAEJ_14ty_python_core6memberNtB6_8SegmentsNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i, %bb.bt
  %.sroa.0.0.shrunk.i.ph = phi i1 [ false, %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit.thread.i.i ], [ false, %bb.bq ], [ false, %bb.bo ], [ false, %.noexc6.i ], [ false, %_RNvXs1s_NtCs2O29vuvTAEJ_14ty_python_core6memberNtB6_8SegmentsNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i ], [ false, %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit.i.i ], [ false, %bb.bm ], [ %i.jz, %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit13.thread.i.i ], [ false, %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit13.i.i ], [ %i.kk, %bb.bt ], [ false, %7 ]
  %.pr454 = load i8, ptr %i.hv, align 1, !alias.scope !17460
  br label %_RNvXsi_NtCs2O29vuvTAEJ_14ty_python_core5placeNtB5_9PlaceExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i

_RNvXsi_NtCs2O29vuvTAEJ_14ty_python_core5placeNtB5_9PlaceExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i: ; preds = %_RNvXsi_NtCs2O29vuvTAEJ_14ty_python_core5placeNtB5_9PlaceExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.ithread-pre-split, %bb.bk
  %i.hy = phi i8 [ %.pr454, %_RNvXsi_NtCs2O29vuvTAEJ_14ty_python_core5placeNtB5_9PlaceExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.ithread-pre-split ], [ %i.hw, %bb.bk ]
  %.sroa.0.0.shrunk.i = phi i1 [ %.sroa.0.0.shrunk.i.ph, %_RNvXsi_NtCs2O29vuvTAEJ_14ty_python_core5placeNtB5_9PlaceExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.ithread-pre-split ], [ %.mux.i, %bb.bk ]
  %i.hz = icmp eq i8 %i.hy, -2
  br i1 %i.hz, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2O29vuvTAEJ_14ty_python_core5place9PlaceExprEECsoTR8nlGN3X_18ty_python_semantic.exit5.i, label %bb.bl

bb.bl:                                            ; preds = %_RNvXsi_NtCs2O29vuvTAEJ_14ty_python_core5placeNtB5_9PlaceExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2O29vuvTAEJ_14ty_python_core5place9PlaceExprECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.o)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2O29vuvTAEJ_14ty_python_core5place9PlaceExprEECsoTR8nlGN3X_18ty_python_semantic.exit5.i unwind label %bb.bj

bb.bm:                                            ; preds = %bb.bk
  call void @llvm.experimental.noalias.scope.decl(metadata !17463)
  call void @llvm.experimental.noalias.scope.decl(metadata !17466)
  %i.ia = icmp ne i8 %i.hu, -1                    ; 2 uses
  %i.ib = icmp eq i8 %i.hw, -1                    ; 3 uses
  %not..i.i = xor i1 %i.ib, true
  %i.ic = xor i1 %i.ia, %i.ib
  br i1 %i.ic, label %bb.bn, label %_RNvXsi_NtCs2O29vuvTAEJ_14ty_python_core5placeNtB5_9PlaceExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.ithread-pre-split

bb.bn:                                            ; preds = %bb.bm
  br i1 %i.ia, label %bb.bo, label %bb.bq

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.assume(i1 %not..i.i)
  %i.id = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17468)
  call void @llvm.experimental.noalias.scope.decl(metadata !17471)
  %i.if = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.ig = load i64, ptr %i.if, align 8, !alias.scope !17473, !noalias !17476, !noundef !15
  %i.ih = and i64 %i.ig, 72057594037927935
  %i.ii = icmp ult i8 %i.hu, -48
  %i.ij = zext i8 %i.hu to i64
  %i.ik = add nsw i64 %i.ij, -192
  %spec.store.select.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ik, i64 16)
  %.sroa.0.0.i.i.i.i = select i1 %i.ii, i64 %spec.store.select.i.i.i.i, i64 %i.ih ; 2 uses
  %i.il = icmp ugt i8 %i.hu, -49
  %i.im = load ptr, ptr %i.id, align 8, !alias.scope !17473, !noalias !17476
  %.sroa.01.0.i.i.i.i = select i1 %i.il, ptr %i.im, ptr %i.id ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.io = load i64, ptr %i.in, align 8, !alias.scope !17477, !noalias !17480, !noundef !15
  %i.ip = and i64 %i.io, 72057594037927935
  %i.iq = icmp ult i8 %i.hw, -48
  %i.ir = zext i8 %i.hw to i64
  %i.is = add nsw i64 %i.ir, -192
  %spec.store.select.i4.i.i.i = call i64 @llvm.umin.i64(i64 %i.is, i64 16)
  %.sroa.0.0.i5.i.i.i = select i1 %i.iq, i64 %spec.store.select.i4.i.i.i, i64 %i.ip
  %i.it = icmp ugt i8 %i.hw, -49
  %i.iu = load ptr, ptr %i.ie, align 8, !alias.scope !17477, !noalias !17480
  %.sroa.01.0.i6.i.i.i = select i1 %i.it, ptr %i.iu, ptr %i.ie ; 2 uses
  %i.iv = icmp eq i64 %.sroa.0.0.i.i.i.i, %.sroa.0.0.i5.i.i.i
  br i1 %i.iv, label %bb.bp, label %_RNvXsi_NtCs2O29vuvTAEJ_14ty_python_core5placeNtB5_9PlaceExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.ithread-pre-split

bb.bp:                                            ; preds = %bb.bo
  %i.iw = icmp eq ptr %.sroa.01.0.i.i.i.i, %.sroa.01.0.i6.i.i.i
  br i1 %i.iw, label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit.thread.i.i, label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit.i.i

_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit.i.i: ; preds = %bb.bp
  %bcmp.i.i.i = call i32 @bcmp(ptr %.sroa.01.0.i.i.i.i, ptr %.sroa.01.0.i6.i.i.i, i64 %.sroa.0.0.i.i.i.i)
  %i.ix = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.ix, label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit.thread.i.i, label %_RNvXsi_NtCs2O29vuvTAEJ_14ty_python_core5placeNtB5_9PlaceExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.ithread-pre-split

bb.bq:                                            ; preds = %bb.bn
  call void @llvm.assume(i1 %i.ib)
  call void @llvm.experimental.noalias.scope.decl(metadata !17481)
  call void @llvm.experimental.noalias.scope.decl(metadata !17484)
  %i.iy = getelementptr inbounds nuw i8, ptr %i.p, i64 15
  %i.iz = load i8, ptr %i.iy, align 1, !range !1278, !alias.scope !17486, !noalias !17489, !noundef !15 ; 3 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.jb = load i64, ptr %i.ja, align 8, !alias.scope !17486, !noalias !17489, !noundef !15
  %i.jc = and i64 %i.jb, 72057594037927935
  %i.jd = icmp ult i8 %i.iz, -48
  %i.je = zext i8 %i.iz to i64
  %i.jf = add nsw i64 %i.je, -192
  %spec.store.select.i.i5.i.i = call i64 @llvm.umin.i64(i64 %i.jf, i64 16)
  %.sroa.0.0.i.i6.i.i = select i1 %i.jd, i64 %spec.store.select.i.i5.i.i, i64 %i.jc ; 2 uses
  %i.jg = icmp ugt i8 %i.iz, -49
  %i.jh = load ptr, ptr %i.p, align 8, !alias.scope !17486, !noalias !17489
  %.sroa.01.0.i.i7.i.i = select i1 %i.jg, ptr %i.jh, ptr %i.p ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.o, i64 15
  %i.jj = load i8, ptr %i.ji, align 1, !range !1278, !alias.scope !17490, !noalias !17493, !noundef !15 ; 3 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.jl = load i64, ptr %i.jk, align 8, !alias.scope !17490, !noalias !17493, !noundef !15
  %i.jm = and i64 %i.jl, 72057594037927935
  %i.jn = icmp ult i8 %i.jj, -48
  %i.jo = zext i8 %i.jj to i64
  %i.jp = add nsw i64 %i.jo, -192
  %spec.store.select.i4.i8.i.i = call i64 @llvm.umin.i64(i64 %i.jp, i64 16)
  %.sroa.0.0.i5.i9.i.i = select i1 %i.jn, i64 %spec.store.select.i4.i8.i.i, i64 %i.jm
  %i.jq = icmp ugt i8 %i.jj, -49
  %i.jr = load ptr, ptr %i.o, align 8, !alias.scope !17490, !noalias !17493
  %.sroa.01.0.i6.i10.i.i = select i1 %i.jq, ptr %i.jr, ptr %i.o ; 2 uses
  %i.js = icmp eq i64 %.sroa.0.0.i.i6.i.i, %.sroa.0.0.i5.i9.i.i
  br i1 %i.js, label %bb.br, label %_RNvXsi_NtCs2O29vuvTAEJ_14ty_python_core5placeNtB5_9PlaceExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.ithread-pre-split

bb.br:                                            ; preds = %bb.bq
  %i.jt = icmp eq ptr %.sroa.01.0.i.i7.i.i, %.sroa.01.0.i6.i10.i.i
  br i1 %i.jt, label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit13.thread.i.i, label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit13.i.i

_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit13.i.i: ; preds = %bb.br
  %bcmp.i12.i.i = call i32 @bcmp(ptr %.sroa.01.0.i.i7.i.i, ptr %.sroa.01.0.i6.i10.i.i, i64 %.sroa.0.0.i.i6.i.i)
  %i.ju = icmp eq i32 %bcmp.i12.i.i, 0
  br i1 %i.ju, label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit13.thread.i.i, label %_RNvXsi_NtCs2O29vuvTAEJ_14ty_python_core5placeNtB5_9PlaceExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.ithread-pre-split

_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit13.thread.i.i: ; preds = %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit13.i.i, %bb.br
  %i.jv = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.jw = load i8, ptr %i.jv, align 8, !alias.scope !17463, !noalias !17466, !noundef !15
  %i.jx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.jy = load i8, ptr %i.jx, align 8, !alias.scope !17466, !noalias !17463, !noundef !15
  %i.jz = icmp eq i8 %i.jw, %i.jy
  br label %_RNvXsi_NtCs2O29vuvTAEJ_14ty_python_core5placeNtB5_9PlaceExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.ithread-pre-split

_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit.thread.i.i: ; preds = %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit.i.i, %bb.bp
  %.val.i.i = load ptr, ptr %i.p, align 8, !alias.scope !17463, !noalias !17466, !noundef !15 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.val2.i.i = load i64, ptr %i.ka, align 8, !alias.scope !17463, !noalias !17466 ; 2 uses
  %.val3.i.i = load ptr, ptr %i.o, align 8, !alias.scope !17466, !noalias !17463, !noundef !15 ; 2 uses
  %i.kb = icmp ne ptr %.val.i.i, null             ; 2 uses
  %i.kc = icmp eq ptr %.val3.i.i, null            ; 3 uses
  %not..i.i.i = xor i1 %i.kc, true
  %i.kd = xor i1 %i.kb, %i.kc
  br i1 %i.kd, label %bb.bs, label %_RNvXsi_NtCs2O29vuvTAEJ_14ty_python_core5placeNtB5_9PlaceExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.ithread-pre-split

bb.bs:                                            ; preds = %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit.thread.i.i
  %6 = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.val4.i.i = load i64, ptr %6, align 8, !alias.scope !17466, !noalias !17463
  %i.ke = icmp eq i64 %.val2.i.i, %.val4.i.i      ; 2 uses
  br i1 %i.kb, label %7, label %_RNvXs1s_NtCs2O29vuvTAEJ_14ty_python_core6memberNtB6_8SegmentsNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i

7:                                                ; preds = %bb.bs
  call void @llvm.assume(i1 %not..i.i.i)
  br i1 %i.ke, label %.split.i.i, label %_RNvXsi_NtCs2O29vuvTAEJ_14ty_python_core5placeNtB5_9PlaceExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.ithread-pre-split

.split.i.i:                                       ; preds = %7
  %i.kf = invoke noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCs2O29vuvTAEJ_14ty_python_core6member11SegmentInfoINtB5_14SlicePartialEqBC_E17equal_same_lengthCsoTR8nlGN3X_18ty_python_semantic(ptr noundef nonnull %.val.i.i, ptr noundef nonnull %.val3.i.i, i64 noundef %.val2.i.i)
          to label %.noexc6.i unwind label %bb.bu

.noexc6.i:                                        ; preds = %.split.i.i
  br i1 %i.kf, label %bb.bt, label %_RNvXsi_NtCs2O29vuvTAEJ_14ty_python_core5placeNtB5_9PlaceExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.ithread-pre-split

_RNvXs1s_NtCs2O29vuvTAEJ_14ty_python_core6memberNtB6_8SegmentsNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i: ; preds = %bb.bs
  call void @llvm.assume(i1 %i.kc)
  br i1 %i.ke, label %bb.bt, label %_RNvXsi_NtCs2O29vuvTAEJ_14ty_python_core5placeNtB5_9PlaceExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.ithread-pre-split

bb.bt:                                            ; preds = %_RNvXs1s_NtCs2O29vuvTAEJ_14ty_python_core6memberNtB6_8SegmentsNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i, %.noexc6.i
  %i.kg = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.kh = load i8, ptr %i.kg, align 8, !alias.scope !17463, !noalias !17466, !noundef !15
  %i.ki = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.kj = load i8, ptr %i.ki, align 8, !alias.scope !17466, !noalias !17463, !noundef !15
  %i.kk = icmp eq i8 %i.kh, %i.kj
  br label %_RNvXsi_NtCs2O29vuvTAEJ_14ty_python_core5placeNtB5_9PlaceExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.ithread-pre-split

bb.bu:                                            ; preds = %.split.i.i
  %i.kl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.km = load i8, ptr %i.hv, align 1, !range !13110, !alias.scope !17494, !noundef !15
  %i.kn = icmp eq i8 %i.km, -2
  br i1 %i.kn, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2O29vuvTAEJ_14ty_python_core5place9PlaceExprEECsoTR8nlGN3X_18ty_python_semantic.exit8.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2O29vuvTAEJ_14ty_python_core5place9PlaceExprECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.o)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2O29vuvTAEJ_14ty_python_core5place9PlaceExprEECsoTR8nlGN3X_18ty_python_semantic.exit8.i unwind label %bb.bx

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2O29vuvTAEJ_14ty_python_core5place9PlaceExprEECsoTR8nlGN3X_18ty_python_semantic.exit5.i: ; preds = %bb.bl, %_RNvXsi_NtCs2O29vuvTAEJ_14ty_python_core5placeNtB5_9PlaceExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.ko = load i8, ptr %i.ht, align 1, !range !13110, !alias.scope !17497, !noundef !15
  %i.kp = icmp eq i8 %i.ko, -2
  br i1 %i.kp, label %bb.by, label %bb.bw

bb.bw:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2O29vuvTAEJ_14ty_python_core5place9PlaceExprEECsoTR8nlGN3X_18ty_python_semantic.exit5.i
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2O29vuvTAEJ_14ty_python_core5place9PlaceExprECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.p)
          to label %bb.by unwind label %.loopexit.split-lp516

bb.bx:                                            ; preds = %bb.bv, %bb.bi
  %i.kq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #42
  unreachable

bb.by:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2O29vuvTAEJ_14ty_python_core5place9PlaceExprEECsoTR8nlGN3X_18ty_python_semantic.exit5.i, %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %.pre608 = load i64, ptr %i.dj, align 8         ; 2 uses
  br i1 %.sroa.0.0.shrunk.i, label %bb.bf, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn)
  %.not198 = icmp eq i64 %.pre608, 0
  br i1 %.not198, label %.invoke, label %._crit_edge606

._crit_edge606:                                   ; preds = %bb.bz
  %.pre = load ptr, ptr %i.cu, align 8
  br label %bb.ca

bb.ca:                                            ; preds = %._crit_edge606, %.thread457
  %i.kr = phi ptr [ %.pre, %._crit_edge606 ], [ %i.hi, %.thread457 ]
  invoke void @_RINvMsa_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5inferNtB6_19ExpressionInference15expression_typeRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEBa_(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.bn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dh, ptr noundef nonnull align 8 %i.kr)
          to label %bb.cb unwind label %.loopexit.split-lp516

bb.cb:                                            ; preds = %bb.ca
  store ptr %i.hh, ptr %i.bo, align 8
  %i.ks = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ks, ptr noundef nonnull align 4 dereferenceable(16) %i.bn, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !17500
  %i.kt = getelementptr inbounds nuw i8, ptr %i.he, i64 40 ; 2 uses
  %i.ku = load ptr, ptr %i.kt, align 8, !noalias !17500, !nonnull !15, !noundef !15
  invoke void @_RINvMsa_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5inferNtB6_19ExpressionInference15expression_typeRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEBa_(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dh, ptr noundef nonnull align 8 %i.ku)
          to label %.noexc248 unwind label %.loopexit.split-lp516

.noexc248:                                        ; preds = %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !17500
  %i.kv = load ptr, ptr %i.kt, align 8, !noalias !17500, !nonnull !15, !noundef !15
  %i.kw = getelementptr inbounds nuw i8, ptr %i.he, i64 16 ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.he, i64 31
  %i.ky = load i8, ptr %i.kx, align 1, !range !1278, !alias.scope !17504, !noalias !17500, !noundef !15 ; 3 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.he, i64 24
  %i.la = load i64, ptr %i.kz, align 8, !alias.scope !17504, !noalias !17500, !noundef !15
  %i.lb = and i64 %i.la, 72057594037927935
  %i.lc = icmp ult i8 %i.ky, -48
  %i.ld = zext i8 %i.ky to i64
  %i.le = add nsw i64 %i.ld, -192
  %spec.store.select.i.i = call i64 @llvm.umin.i64(i64 %i.le, i64 16)
  %.sroa.0.0.i.i = select i1 %i.lc, i64 %spec.store.select.i.i, i64 %i.lb
  %i.lf = icmp ugt i8 %i.ky, -49
  %i.lg = load ptr, ptr %i.kw, align 8, !alias.scope !17504, !noalias !17500
  %.sroa.01.0.i.i = select i1 %i.lf, ptr %i.lg, ptr %i.kw
  invoke fastcc void @_RNvMs9_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrowNtB5_27NarrowingConstraintsBuilder24narrow_nominal_attribute(ptr noalias noundef align 8 captures(none) dereferenceable(120) %i.m, ptr noundef nonnull align 8 %1, ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.n, ptr noundef nonnull align 8 %i.kv, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.01.0.i.i, i64 noundef %.sroa.0.0.i.i, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.ks, i1 noundef zeroext %switch227, i1 noundef zeroext %.sroa.026.0)
          to label %.noexc249 unwind label %.loopexit.split-lp516

.noexc249:                                        ; preds = %.noexc248
  %i.lh = load i32, ptr %i.m, align 8, !range !277, !noalias !17500, !noundef !15 ; 2 uses
  %.not.i247 = icmp eq i32 %i.lh, 2
  br i1 %.not.i247, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %.noexc249
  %i.li = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.lj = load i32, ptr %i.li, align 4, !noalias !17500, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !17500
  %i.lk = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.l, ptr noundef nonnull align 8 dereferenceable(112) %i.lk, i64 112, i1 false), !noalias !17500
  invoke fastcc void @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow27insert_narrowing_constraint(ptr noalias noundef align 8 dereferenceable(32) %i.co, i32 noundef %i.lh, i32 noundef %i.lj, ptr noalias noundef align 8 captures(address) dereferenceable(112) %i.l)
          to label %.noexc250 unwind label %.loopexit.split-lp516

.noexc250:                                        ; preds = %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !17500
  br label %bb.cd

bb.cd:                                            ; preds = %.noexc250, %.noexc249
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !17500
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !17500
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  %.pre607 = load i64, ptr %i.dj, align 8
  br label %bb.bf

bb.ce:                                            ; preds = %bb.bf
  %i.ll = load i32, ptr %i.hk, align 8, !range !2744, !noundef !15
  %i.lm = icmp eq i32 %i.ll, 25
  br i1 %i.lm, label %bb.cf, label %.thread449

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl)
  %i.ln = load ptr, ptr %2, align 8, !nonnull !15, !noundef !15
  invoke void @_RINvMsa_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5inferNtB6_19ExpressionInference15expression_typeRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEBa_(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.bl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dh, ptr noundef nonnull align 8 %i.ln)
          to label %bb.cg unwind label %.loopexit.split-lp516

bb.cg:                                            ; preds = %bb.cf
  %i.lo = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  store ptr %i.lo, ptr %i.bm, align 8
  %i.lp = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lp, ptr noundef nonnull align 4 dereferenceable(16) %i.bl, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !17507
  %i.lq = getelementptr inbounds nuw i8, ptr %i.hk, i64 40 ; 2 uses
  %i.lr = load ptr, ptr %i.lq, align 8, !noalias !17507, !nonnull !15, !noundef !15
  invoke void @_RINvMsa_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5inferNtB6_19ExpressionInference15expression_typeRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEBa_(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dh, ptr noundef nonnull align 8 %i.lr)
          to label %.noexc255 unwind label %.loopexit.split-lp516

.noexc255:                                        ; preds = %bb.cg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !17507
  %i.ls = load ptr, ptr %i.lq, align 8, !noalias !17507, !nonnull !15, !noundef !15
  %i.lt = getelementptr inbounds nuw i8, ptr %i.hk, i64 16 ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.hk, i64 31
  %i.lv = load i8, ptr %i.lu, align 1, !range !1278, !alias.scope !17511, !noalias !17507, !noundef !15 ; 3 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.hk, i64 24
  %i.lx = load i64, ptr %i.lw, align 8, !alias.scope !17511, !noalias !17507, !noundef !15
  %i.ly = and i64 %i.lx, 72057594037927935
  %i.lz = icmp ult i8 %i.lv, -48
  %i.ma = zext i8 %i.lv to i64
  %i.mb = add nsw i64 %i.ma, -192
  %spec.store.select.i.i251 = call i64 @llvm.umin.i64(i64 %i.mb, i64 16)
  %.sroa.0.0.i.i252 = select i1 %i.lz, i64 %spec.store.select.i.i251, i64 %i.ly
  %i.mc = icmp ugt i8 %i.lv, -49
  %i.md = load ptr, ptr %i.lt, align 8, !alias.scope !17511, !noalias !17507
  %.sroa.01.0.i.i253 = select i1 %i.mc, ptr %i.md, ptr %i.lt
  invoke fastcc void @_RNvMs9_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrowNtB5_27NarrowingConstraintsBuilder24narrow_nominal_attribute(ptr noalias noundef align 8 captures(none) dereferenceable(120) %i.j, ptr noundef nonnull align 8 %1, ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.k, ptr noundef nonnull align 8 %i.ls, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.01.0.i.i253, i64 noundef %.sroa.0.0.i.i252, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.lp, i1 noundef zeroext %switch227, i1 noundef zeroext %.sroa.026.0)
          to label %.noexc256 unwind label %.loopexit.split-lp516

.noexc256:                                        ; preds = %.noexc255
  %i.me = load i32, ptr %i.j, align 8, !range !277, !noalias !17507, !noundef !15 ; 2 uses
  %.not.i254 = icmp eq i32 %i.me, 2
  br i1 %.not.i254, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %.noexc256
  %i.mf = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.mg = load i32, ptr %i.mf, align 4, !noalias !17507, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !17507
  %i.mh = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.i, ptr noundef nonnull align 8 dereferenceable(112) %i.mh, i64 112, i1 false), !noalias !17507
  invoke fastcc void @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow27insert_narrowing_constraint(ptr noalias noundef align 8 dereferenceable(32) %i.co, i32 noundef %i.me, i32 noundef %i.mg, ptr noalias noundef align 8 captures(address) dereferenceable(112) %i.i)
          to label %.noexc257 unwind label %.loopexit.split-lp516

.noexc257:                                        ; preds = %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !17507
  br label %bb.ci

bb.ci:                                            ; preds = %.noexc257, %.noexc256
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !17507
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !17507
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  br label %.thread449

.thread452:                                       ; preds = %.thread449..thread452_crit_edge, %.thread631
  %i.mi = phi i8 [ %.pre611, %.thread449..thread452_crit_edge ], [ %i.ha, %.thread631 ]
  %i.mj = and i8 %i.mi, 14
  %switch229 = icmp eq i8 %i.mj, 8
  br i1 %switch229, label %bb.cj, label %.thread453

bb.cj:                                            ; preds = %.thread452
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk)
  %i.mk = load ptr, ptr %2, align 8, !nonnull !15, !noundef !15
  invoke void @_RINvMsa_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5inferNtB6_19ExpressionInference15expression_typeRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEBa_(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.bk, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dh, ptr noundef nonnull align 8 %i.mk)
          to label %bb.ck unwind label %.loopexit.split-lp516

bb.ck:                                            ; preds = %bb.cj
  %i.ml = load i32, ptr %i.bk, align 4, !range !230, !alias.scope !17514, !noundef !15 ; 2 uses
  %i.mm = icmp ne i32 %i.ml, 17
  call void @llvm.assume(i1 %i.mm)
  %i.mn = icmp eq i32 %i.ml, 28
  br i1 %i.mn, label %bb.cl, label %.thread460

bb.cl:                                            ; preds = %bb.ck
end_hunk_0
