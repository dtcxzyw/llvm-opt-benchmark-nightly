Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_expr-c150671a77946377.polars_expr.f440eb239ff47e82-cgu.13?download=true
inline.NumInlined: 10113
inline.NumDeleted: 4526
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 65
loop-unroll.NumUnrolled: 77
begin_hunk_0_@_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions11aggregationNtB4_15AggregationExprNtB6_12PhysicalExpr23evaluate_on_groups_impl:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !dbg !144447
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.br, ptr noundef nonnull align 8 dereferenceable(24) %i.em, i64 24, i1 false), !dbg !144447
  invoke fastcc void @_RNvMNtNtCs1LHh8CLbVkQ_11polars_core5frame6columnNtB2_6Column9with_name(ptr noalias noundef align 16 captures(none) dereferenceable(160) %i.bs, ptr noalias noundef align 16 captures(address) dereferenceable(160) %i.bt, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.br)
          to label %bb.ei unwind label %bb.ee, !dbg !144448

bb.ei:                                            ; preds = %bb.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !dbg !144449
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %.sroa.22, ptr noundef nonnull align 16 dereferenceable(160) %i.bs, i64 160, i1 false), !dbg !144450
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !dbg !144451
  call void @llvm.experimental.noalias.scope.decl(metadata !143862), !dbg !144437
  %i.pi = load i64, ptr %i.bw, align 8, !dbg !144452, !range !2547, !alias.scope !143862, !noundef !2227
  %i.pj = icmp eq i64 %i.pi, -9223372036854775807, !dbg !144452
  br i1 %i.pj, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupPositionsEECskY9G75ZWc4U_11polars_expr.exit222, label %bb.ej, !dbg !144452

bb.ej:                                            ; preds = %bb.ei
  call void @llvm.experimental.noalias.scope.decl(metadata !143863), !dbg !144452
  %i.pk = getelementptr inbounds nuw i8, ptr %i.bw, i64 56, !dbg !144453 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !143864), !dbg !144453
  call void @llvm.experimental.noalias.scope.decl(metadata !143865), !dbg !144454
  %i.pl = load ptr, ptr %i.pk, align 8, !dbg !144455, !alias.scope !143866, !nonnull !2227, !noundef !2227
  %i.pm = atomicrmw add ptr %i.pl, i64 -1 release, align 8, !dbg !144456, !noalias !143866
  %i.pn = icmp eq i64 %i.pm, 1, !dbg !144457
  br i1 %i.pn, label %bb.ek, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupPositionsEECskY9G75ZWc4U_11polars_expr.exit222, !dbg !144457

bb.ek:                                            ; preds = %bb.ej
  fence acquire, !dbg !144458
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position10GroupsTypeE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.pk) #51
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupPositionsEECskY9G75ZWc4U_11polars_expr.exit222 unwind label %bb.el, !dbg !144459

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupPositionsEECskY9G75ZWc4U_11polars_expr.exit220: ; preds = %bb.ef, %bb.ee, %bb.eg, %bb.el
  %.sroa.056.20 = phi i1 [ false, %bb.el ], [ %.sroa.056.19, %bb.eg ], [ %.sroa.056.19, %bb.ee ], [ %.sroa.056.19, %bb.ef ], !dbg !144447
  %.pn144 = phi { ptr, i32 } [ %i.po, %bb.el ], [ %i.pb, %bb.eg ], [ %i.pb, %bb.ee ], [ %i.pb, %bb.ef ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 16 dereferenceable(160) %i.bx) #52
          to label %bb.l unwind label %bb.az, !dbg !144437

bb.el:                                            ; preds = %bb.ek
  %i.po = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupPositionsEECskY9G75ZWc4U_11polars_expr.exit220

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupPositionsEECskY9G75ZWc4U_11polars_expr.exit222: ; preds = %bb.ej, %bb.ei, %bb.ek
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !dbg !144437
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 16 dereferenceable(160) %i.bx), !dbg !144437
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx), !dbg !144437
  br label %bb.jq, !dbg !144437

bb.em:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !dbg !144460
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !dbg !144461
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.bq, ptr noundef nonnull align 16 dereferenceable(160) %i.bo, i64 160, i1 false), !dbg !144461
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !dbg !144462
  %i.pp = getelementptr inbounds nuw i8, ptr %i.bo, i64 160, !dbg !144462
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.bp, ptr noundef nonnull align 16 dereferenceable(80) %i.pp, i64 80, i1 false), !dbg !144462
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !dbg !144463
  %i.pq = load i64, ptr %i.bp, align 8, !dbg !144464, !range !2547, !noundef !2227
  %.not140 = icmp eq i64 %i.pq, -9223372036854775807, !dbg !144464
  %i.pr = getelementptr inbounds nuw i8, ptr %i.bp, i64 8, !dbg !144465
  %i.ps = load ptr, ptr %i.pr, align 8, !dbg !144465, !nonnull !2227, !align !2451
  %.sroa.076.0 = select i1 %.not140, ptr %i.ps, ptr %i.bp, !dbg !144465
  invoke void @_RNvMNtNtCs1LHh8CLbVkQ_11polars_core5frame6columnNtB2_6Column17agg_last_non_null(ptr noalias noundef nonnull sret([160 x i8]) align 16 captures(address) dereferenceable(160) %i.bm, ptr noundef nonnull align 16 %i.bq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.sroa.076.0)
          to label %bb.eq unwind label %bb.en, !dbg !144466

bb.en:                                            ; preds = %bb.eq, %bb.em
  %.sroa.056.21 = phi i1 [ false, %bb.eq ], [ true, %bb.em ], !dbg !144079 ; 3 uses
  %i.pt = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !143868), !dbg !144467
  %i.pu = load i64, ptr %i.bp, align 8, !dbg !144468, !range !2547, !alias.scope !143868, !noundef !2227
  %i.pv = icmp eq i64 %i.pu, -9223372036854775807, !dbg !144468
  br i1 %i.pv, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupPositionsEECskY9G75ZWc4U_11polars_expr.exit224, label %bb.eo, !dbg !144468

bb.eo:                                            ; preds = %bb.en
  call void @llvm.experimental.noalias.scope.decl(metadata !143869), !dbg !144468
  %i.pw = getelementptr inbounds nuw i8, ptr %i.bp, i64 56, !dbg !144469 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !143870), !dbg !144469
  call void @llvm.experimental.noalias.scope.decl(metadata !143871), !dbg !144470
  %i.px = load ptr, ptr %i.pw, align 8, !dbg !144471, !alias.scope !143872, !nonnull !2227, !noundef !2227
  %i.py = atomicrmw add ptr %i.px, i64 -1 release, align 8, !dbg !144472, !noalias !143872
  %i.pz = icmp eq i64 %i.py, 1, !dbg !144473
  br i1 %i.pz, label %bb.ep, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupPositionsEECskY9G75ZWc4U_11polars_expr.exit224, !dbg !144473

bb.ep:                                            ; preds = %bb.eo
  fence acquire, !dbg !144474
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position10GroupsTypeE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.pw) #51
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupPositionsEECskY9G75ZWc4U_11polars_expr.exit224 unwind label %bb.az, !dbg !144475

bb.eq:                                            ; preds = %bb.em
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !dbg !144476
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !dbg !144477
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull align 8 dereferenceable(24) %i.em, i64 24, i1 false), !dbg !144477
  invoke fastcc void @_RNvMNtNtCs1LHh8CLbVkQ_11polars_core5frame6columnNtB2_6Column9with_name(ptr noalias noundef align 16 captures(none) dereferenceable(160) %i.bl, ptr noalias noundef align 16 captures(address) dereferenceable(160) %i.bm, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.bk)
          to label %bb.er unwind label %bb.en, !dbg !144478

bb.er:                                            ; preds = %bb.eq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !dbg !144479
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %.sroa.22, ptr noundef nonnull align 16 dereferenceable(160) %i.bl, i64 160, i1 false), !dbg !144480
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !dbg !144481
  call void @llvm.experimental.noalias.scope.decl(metadata !143873), !dbg !144467
  %i.qa = load i64, ptr %i.bp, align 8, !dbg !144482, !range !2547, !alias.scope !143873, !noundef !2227
  %i.qb = icmp eq i64 %i.qa, -9223372036854775807, !dbg !144482
  br i1 %i.qb, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupPositionsEECskY9G75ZWc4U_11polars_expr.exit226, label %bb.es, !dbg !144482

bb.es:                                            ; preds = %bb.er
  call void @llvm.experimental.noalias.scope.decl(metadata !143874), !dbg !144482
  %i.qc = getelementptr inbounds nuw i8, ptr %i.bp, i64 56, !dbg !144483 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !143875), !dbg !144483
  call void @llvm.experimental.noalias.scope.decl(metadata !143876), !dbg !144484
  %i.qd = load ptr, ptr %i.qc, align 8, !dbg !144485, !alias.scope !143877, !nonnull !2227, !noundef !2227
  %i.qe = atomicrmw add ptr %i.qd, i64 -1 release, align 8, !dbg !144486, !noalias !143877
  %i.qf = icmp eq i64 %i.qe, 1, !dbg !144487
  br i1 %i.qf, label %bb.et, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupPositionsEECskY9G75ZWc4U_11polars_expr.exit226, !dbg !144487

bb.et:                                            ; preds = %bb.es
  fence acquire, !dbg !144488
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position10GroupsTypeE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.qc) #51
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupPositionsEECskY9G75ZWc4U_11polars_expr.exit226 unwind label %bb.eu, !dbg !144489

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupPositionsEECskY9G75ZWc4U_11polars_expr.exit224: ; preds = %bb.eo, %bb.en, %bb.ep, %bb.eu
  %.sroa.056.22 = phi i1 [ false, %bb.eu ], [ %.sroa.056.21, %bb.ep ], [ %.sroa.056.21, %bb.en ], [ %.sroa.056.21, %bb.eo ], !dbg !144477
  %.pn141 = phi { ptr, i32 } [ %i.qg, %bb.eu ], [ %i.pt, %bb.ep ], [ %i.pt, %bb.en ], [ %i.pt, %bb.eo ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 16 dereferenceable(160) %i.bq) #52
          to label %bb.l unwind label %bb.az, !dbg !144467

bb.eu:                                            ; preds = %bb.et
  %i.qg = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupPositionsEECskY9G75ZWc4U_11polars_expr.exit224

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupPositionsEECskY9G75ZWc4U_11polars_expr.exit226: ; preds = %bb.es, %bb.er, %bb.et
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !dbg !144467
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 16 dereferenceable(160) %i.bq), !dbg !144467
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !dbg !144467
  br label %bb.jq, !dbg !144467

bb.ev:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !dbg !144490
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !dbg !144491
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.bj, ptr noundef nonnull align 16 dereferenceable(160) %i.bh, i64 160, i1 false), !dbg !144491
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !dbg !144492
  %i.qh = getelementptr inbounds nuw i8, ptr %i.bh, i64 160, !dbg !144492
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.bi, ptr noundef nonnull align 16 dereferenceable(80) %i.qh, i64 80, i1 false), !dbg !144492
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !dbg !144493
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !dbg !143878
  %i.qi = load i64, ptr %i.bi, align 8, !dbg !144494, !range !2547, !noundef !2227
  %.not132 = icmp eq i64 %i.qi, -9223372036854775807, !dbg !144494
  %i.qj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8, !dbg !144495 ; 2 uses
  %i.qk = load ptr, ptr %i.qj, align 8, !dbg !144495, !nonnull !2227, !align !2451
  %.sroa.077.0 = select i1 %.not132, ptr %i.qk, ptr %i.bi, !dbg !144495
  invoke void @_RNvMs9_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8positionNtB5_10GroupsType11group_count(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.bf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.sroa.077.0)
          to label %bb.fa unwind label %bb.ez, !dbg !144496

bb.ew:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.loopexit.split-lp, %bb.ez
  %.sroa.056.23 = phi i1 [ %.sroa.056.24, %bb.ez ], [ true, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.loopexit.split-lp ], !dbg !144497 ; 3 uses
  %.pn136 = phi { ptr, i32 } [ %i.qr, %bb.ez ], [ %lpad.loopexit.split-lp762, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.loopexit.split-lp ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !143879), !dbg !144498
  %i.ql = load i64, ptr %i.bi, align 8, !dbg !144499, !range !2547, !alias.scope !143879, !noundef !2227
  %i.qm = icmp eq i64 %i.ql, -9223372036854775807, !dbg !144499
  br i1 %i.qm, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupPositionsEECskY9G75ZWc4U_11polars_expr.exit228, label %bb.ex, !dbg !144499

bb.ex:                                            ; preds = %bb.ew
  call void @llvm.experimental.noalias.scope.decl(metadata !143880), !dbg !144499
  %i.qn = getelementptr inbounds nuw i8, ptr %i.bi, i64 56, !dbg !144500 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !143881), !dbg !144500
  call void @llvm.experimental.noalias.scope.decl(metadata !143882), !dbg !144501
  %i.qo = load ptr, ptr %i.qn, align 8, !dbg !144502, !alias.scope !143883, !nonnull !2227, !noundef !2227
  %i.qp = atomicrmw add ptr %i.qo, i64 -1 release, align 8, !dbg !144503, !noalias !143883
  %i.qq = icmp eq i64 %i.qp, 1, !dbg !144504
  br i1 %i.qq, label %bb.ey, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupPositionsEECskY9G75ZWc4U_11polars_expr.exit228, !dbg !144504

bb.ey:                                            ; preds = %bb.ex
  fence acquire, !dbg !144505
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position10GroupsTypeE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.qn) #51
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupPositionsEECskY9G75ZWc4U_11polars_expr.exit228 unwind label %bb.az, !dbg !144506

bb.ez:                                            ; preds = %bb.ge, %bb.fp, %bb.fo, %.loopexit31.i, %bb.ev
  %.sroa.056.24 = phi i1 [ true, %bb.ge ], [ false, %bb.fp ], [ true, %bb.fo ], [ true, %.loopexit31.i ], [ true, %bb.ev ], !dbg !144079
  %i.qr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ew

bb.fa:                                            ; preds = %bb.ev
  %i.qs = getelementptr inbounds nuw i8, ptr %i.bf, i64 8, !dbg !144507
  %i.qt = load ptr, ptr %i.qs, align 8, !dbg !144507, !nonnull !2227, !noundef !2227 ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %i.bf, i64 16, !dbg !144508
  %i.qv = load i64, ptr %i.qu, align 8, !dbg !144508, !noundef !2227
  %i.qw = getelementptr inbounds nuw [16 x i8], ptr %i.qt, i64 %i.qv, !dbg !144509 ; 2 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %.sroa.15.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.20.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.30.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.34.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.38.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  br label %.thread376.thread507.outer, !dbg !144510

.thread376.thread507.outer:                       ; preds = %.thread376.thread507.outer.backedge, %bb.fa
  %.sroa.61.0.ph = phi ptr [ %i.qt, %bb.fa ], [ %.sroa.61.0.ph.be, %.thread376.thread507.outer.backedge ] ; 6 uses
  %.sroa.38.0.ph = phi i64 [ undef, %bb.fa ], [ %.sroa.38.0.ph.be, %.thread376.thread507.outer.backedge ] ; 5 uses
  %.sroa.34.0.ph = phi i64 [ undef, %bb.fa ], [ %.sroa.34.0.ph.be, %.thread376.thread507.outer.backedge ] ; 3 uses
  %.sroa.30.0.ph = phi i64 [ undef, %bb.fa ], [ %.sroa.30.0.ph.be, %.thread376.thread507.outer.backedge ] ; 3 uses
  %.sroa.20.0.ph = phi ptr [ undef, %bb.fa ], [ %.sroa.20.0.ph.be, %.thread376.thread507.outer.backedge ] ; 8 uses
  %.sroa.15.0.ph = phi ptr [ undef, %bb.fa ], [ %.sroa.15.0.ph.be, %.thread376.thread507.outer.backedge ] ; 9 uses
  %.sroa.9.0.ph = phi ptr [ undef, %bb.fa ], [ %.sroa.9.0.ph.be, %.thread376.thread507.outer.backedge ] ; 5 uses
  %.sroa.0274.0.ph = phi i1 [ false, %bb.fa ], [ true, %.thread376.thread507.outer.backedge ]
  br i1 %.sroa.0274.0.ph, label %bb.fb, label %.loopexit, !dbg !144511

bb.fb:                                            ; preds = %.thread376.thread507.outer
  %.not.i.i.i.peel.i.peel = icmp eq ptr %.sroa.9.0.ph, null, !dbg !144512
  br i1 %.not.i.i.i.peel.i.peel, label %bb.fh, label %bb.fc, !dbg !144513

bb.fc:                                            ; preds = %bb.fb
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.15.0.ph) ]
  %i.qy = icmp eq ptr %.sroa.9.0.ph, %.sroa.15.0.ph, !dbg !144514
  br i1 %i.qy, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4ItermEENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.peel.i.peel, label %bb.fd, !dbg !144515

bb.fd:                                            ; preds = %bb.fc
  %i.qz = getelementptr inbounds nuw i8, ptr %.sroa.9.0.ph, i64 4, !dbg !144516
  %i.ra = load i32, ptr %.sroa.9.0.ph, align 4, !dbg !144517, !noalias !143903, !noundef !2227
  br label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4ItermEENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.peel.i.peel, !dbg !144518

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4ItermEENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.peel.i.peel: ; preds = %bb.fd, %bb.fc
  %.sroa.9.8.peel = phi ptr [ %.sroa.9.0.ph, %bb.fc ], [ %i.qz, %bb.fd ], !dbg !143878 ; 2 uses
  %.sroa.3.0.i.i.i.i.i.peel.i.peel = phi i32 [ undef, %bb.fc ], [ %i.ra, %bb.fd ]
  %.sroa.0.0.i.i.i.i.i.peel.i.peel = phi i32 [ 0, %bb.fc ], [ 1, %bb.fd ], !dbg !144519
  %i.rb = icmp eq i64 %.sroa.34.0.ph, 0, !dbg !144520
  br i1 %i.rb, label %bb.fe, label %._crit_edge.i.i.i.i.i.peel.i.peel, !dbg !144520

bb.fe:                                            ; preds = %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4ItermEENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.peel.i.peel
  %i.rc = icmp eq i64 %.sroa.38.0.ph, 0, !dbg !144521
  br i1 %i.rc, label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.peel.i.peel, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel.i.peel, !dbg !144521

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel.i.peel: ; preds = %bb.fe
  %.sroa.0.0.i.i.i.i.i.i.peel.i.peel = call noundef i64 @llvm.umin.i64(i64 %.sroa.38.0.ph, i64 64), !dbg !144522 ; 2 uses
  %i.rd = sub nuw i64 %.sroa.38.0.ph, %.sroa.0.0.i.i.i.i.i.i.peel.i.peel, !dbg !144523
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.20.0.ph) ]
  %.sroa.02.0.copyload.i.i.i.i.i.peel.i.peel = load i64, ptr %.sroa.20.0.ph, align 1, !dbg !144524, !noalias !143904
  %i.re = getelementptr inbounds nuw i8, ptr %.sroa.20.0.ph, i64 8, !dbg !144525
  br label %._crit_edge.i.i.i.i.i.peel.i.peel, !dbg !144526

._crit_edge.i.i.i.i.i.peel.i.peel:                ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel.i.peel, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4ItermEENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.peel.i.peel
  %.sroa.38.9.peel = phi i64 [ %i.rd, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel.i.peel ], [ %.sroa.38.0.ph, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4ItermEENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.peel.i.peel ], !dbg !143878
  %.sroa.20.9.peel = phi ptr [ %i.re, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel.i.peel ], [ %.sroa.20.0.ph, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4ItermEENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.peel.i.peel ], !dbg !143878
  %i.rf = phi i64 [ %.sroa.0.0.i.i.i.i.i.i.peel.i.peel, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel.i.peel ], [ %.sroa.34.0.ph, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4ItermEENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.peel.i.peel ], !dbg !144527
  %i.rg = phi i64 [ %.sroa.02.0.copyload.i.i.i.i.i.peel.i.peel, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel.i.peel ], [ %.sroa.30.0.ph, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4ItermEENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.peel.i.peel ], !dbg !144528 ; 2 uses
  %i.rh = trunc i64 %i.rg to i8, !dbg !144528
  %i.ri = lshr i64 %i.rg, 1, !dbg !144529
  %i.rj = add i64 %i.rf, -1, !dbg !144527
  %i.rk = and i8 %i.rh, 1, !dbg !144530
  br label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.peel.i.peel, !dbg !144531

_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.peel.i.peel: ; preds = %._crit_edge.i.i.i.i.i.peel.i.peel, %bb.fe
  %.sroa.38.10.peel = phi i64 [ 0, %bb.fe ], [ %.sroa.38.9.peel, %._crit_edge.i.i.i.i.i.peel.i.peel ], !dbg !143878 ; 2 uses
  %.sroa.34.8.peel = phi i64 [ 0, %bb.fe ], [ %i.rj, %._crit_edge.i.i.i.i.i.peel.i.peel ], !dbg !143878 ; 2 uses
  %.sroa.30.8.peel = phi i64 [ %.sroa.30.0.ph, %bb.fe ], [ %i.ri, %._crit_edge.i.i.i.i.i.peel.i.peel ], !dbg !143878 ; 2 uses
  %.sroa.20.10.peel = phi ptr [ %.sroa.20.0.ph, %bb.fe ], [ %.sroa.20.9.peel, %._crit_edge.i.i.i.i.i.peel.i.peel ], !dbg !143878 ; 2 uses
  %.sroa.0.0.i9.i.i.i.i.peel.i.peel = phi i8 [ 2, %bb.fe ], [ %i.rk, %._crit_edge.i.i.i.i.i.peel.i.peel ], !dbg !144532
  %i.rl = invoke { i8, i32 } @_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionbE3zipmECskY9G75ZWc4U_11polars_expr(i8 noundef %.sroa.0.0.i9.i.i.i.i.peel.i.peel, i32 noundef %.sroa.0.0.i.i.i.i.i.peel.i.peel, i32 %.sroa.3.0.i.i.i.i.i.peel.i.peel)
          to label %.noexc230.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.loopexit.split-lp, !dbg !144533, !noalias !143905 ; 2 uses

.noexc230.peel:                                   ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.peel.i.peel
  %i.rm = extractvalue { i8, i32 } %i.rl, 0, !dbg !144534
  switch i8 %i.rm, label %.loopexit.i [
    i8 2, label %.loopexit
    i8 0, label %.thread376.thread507
  ], !dbg !144535

.thread376.thread507:                             ; preds = %.noexc230.peel, %.noexc230
  %.sroa.38.0 = phi i64 [ %.sroa.38.10, %.noexc230 ], [ %.sroa.38.10.peel, %.noexc230.peel ], !dbg !143878 ; 4 uses
  %.sroa.34.0 = phi i64 [ %.sroa.34.8, %.noexc230 ], [ %.sroa.34.8.peel, %.noexc230.peel ], !dbg !143878 ; 2 uses
  %.sroa.30.0 = phi i64 [ %.sroa.30.8, %.noexc230 ], [ %.sroa.30.8.peel, %.noexc230.peel ], !dbg !143878 ; 2 uses
  %.sroa.20.0 = phi ptr [ %.sroa.20.10, %.noexc230 ], [ %.sroa.20.10.peel, %.noexc230.peel ], !dbg !143878 ; 5 uses
  %.sroa.9.0 = phi ptr [ %.sroa.9.8, %.noexc230 ], [ %.sroa.9.8.peel, %.noexc230.peel ], !dbg !143878 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.15.0.ph) ]
  %i.rn = icmp eq ptr %.sroa.9.0, %.sroa.15.0.ph, !dbg !144514
  br i1 %i.rn, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4ItermEENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.peel.i, label %bb.ff, !dbg !144515

bb.ff:                                            ; preds = %.thread376.thread507
  %i.ro = getelementptr inbounds nuw i8, ptr %.sroa.9.0, i64 4, !dbg !144516
  %i.rp = load i32, ptr %.sroa.9.0, align 4, !dbg !144517, !noalias !143903, !noundef !2227
  br label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4ItermEENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.peel.i, !dbg !144518

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4ItermEENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.peel.i: ; preds = %bb.ff, %.thread376.thread507
  %.sroa.9.8 = phi ptr [ %.sroa.9.0, %.thread376.thread507 ], [ %i.ro, %bb.ff ], !dbg !143878 ; 2 uses
  %.sroa.3.0.i.i.i.i.i.peel.i = phi i32 [ undef, %.thread376.thread507 ], [ %i.rp, %bb.ff ]
  %.sroa.0.0.i.i.i.i.i.peel.i = phi i32 [ 0, %.thread376.thread507 ], [ 1, %bb.ff ], !dbg !144519
  %i.rq = icmp eq i64 %.sroa.34.0, 0, !dbg !144520
  br i1 %i.rq, label %bb.fg, label %._crit_edge.i.i.i.i.i.peel.i, !dbg !144520

bb.fg:                                            ; preds = %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4ItermEENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.peel.i
  %i.rr = icmp eq i64 %.sroa.38.0, 0, !dbg !144521
  br i1 %i.rr, label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.peel.i, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel.i, !dbg !144521

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel.i: ; preds = %bb.fg
  %.sroa.0.0.i.i.i.i.i.i.peel.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.38.0, i64 64), !dbg !144522 ; 2 uses
  %i.rs = sub nuw i64 %.sroa.38.0, %.sroa.0.0.i.i.i.i.i.i.peel.i, !dbg !144523
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.20.0) ]
  %.sroa.02.0.copyload.i.i.i.i.i.peel.i = load i64, ptr %.sroa.20.0, align 1, !dbg !144524, !noalias !143904
  %i.rt = getelementptr inbounds nuw i8, ptr %.sroa.20.0, i64 8, !dbg !144525
  br label %._crit_edge.i.i.i.i.i.peel.i, !dbg !144526

._crit_edge.i.i.i.i.i.peel.i:                     ; preds = %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4ItermEENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.peel.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel.i
  %.sroa.38.9 = phi i64 [ %i.rs, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel.i ], [ %.sroa.38.0, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4ItermEENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.peel.i ], !dbg !143878
  %.sroa.20.9 = phi ptr [ %i.rt, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel.i ], [ %.sroa.20.0, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4ItermEENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.peel.i ], !dbg !143878
  %i.ru = phi i64 [ %.sroa.0.0.i.i.i.i.i.i.peel.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel.i ], [ %.sroa.34.0, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4ItermEENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.peel.i ], !dbg !144527
  %i.rv = phi i64 [ %.sroa.02.0.copyload.i.i.i.i.i.peel.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel.i ], [ %.sroa.30.0, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4ItermEENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.peel.i ], !dbg !144528 ; 2 uses
  %i.rw = trunc i64 %i.rv to i8, !dbg !144528
  %i.rx = lshr i64 %i.rv, 1, !dbg !144529
  %i.ry = add i64 %i.ru, -1, !dbg !144527
  %i.rz = and i8 %i.rw, 1, !dbg !144530
  br label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.peel.i, !dbg !144531

_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.peel.i: ; preds = %._crit_edge.i.i.i.i.i.peel.i, %bb.fg
  %.sroa.38.10 = phi i64 [ 0, %bb.fg ], [ %.sroa.38.9, %._crit_edge.i.i.i.i.i.peel.i ], !dbg !143878 ; 2 uses
  %.sroa.34.8 = phi i64 [ 0, %bb.fg ], [ %i.ry, %._crit_edge.i.i.i.i.i.peel.i ], !dbg !143878 ; 2 uses
  %.sroa.30.8 = phi i64 [ %.sroa.30.0, %bb.fg ], [ %i.rx, %._crit_edge.i.i.i.i.i.peel.i ], !dbg !143878 ; 2 uses
  %.sroa.20.10 = phi ptr [ %.sroa.20.0, %bb.fg ], [ %.sroa.20.9, %._crit_edge.i.i.i.i.i.peel.i ], !dbg !143878 ; 2 uses
  %.sroa.0.0.i9.i.i.i.i.peel.i = phi i8 [ 2, %bb.fg ], [ %i.rz, %._crit_edge.i.i.i.i.i.peel.i ], !dbg !144532
  %i.sa = invoke { i8, i32 } @_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionbE3zipmECskY9G75ZWc4U_11polars_expr(i8 noundef %.sroa.0.0.i9.i.i.i.i.peel.i, i32 noundef %.sroa.0.0.i.i.i.i.i.peel.i, i32 %.sroa.3.0.i.i.i.i.i.peel.i)
          to label %.noexc230 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.loopexit.split-lp, !dbg !144533, !noalias !143905 ; 2 uses

.noexc230:                                        ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.peel.i
  %i.sb = extractvalue { i8, i32 } %i.sa, 0, !dbg !144534
  switch i8 %i.sb, label %.loopexit.i [
    i8 2, label %.loopexit
    i8 0, label %.thread376.thread507
  ], !dbg !144535, !llvm.loop !143270

bb.fh:                                            ; preds = %bb.fb
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.15.0.ph), "nonnull"(ptr %.sroa.20.0.ph) ]
  %i.sc = icmp eq ptr %.sroa.15.0.ph, %.sroa.20.0.ph, !dbg !144536
  br i1 %i.sc, label %.loopexit, label %.loopexit30.i, !dbg !144537

.loopexit:                                        ; preds = %.thread376.thread507.outer, %.noexc230.peel, %.noexc230, %bb.fh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !144538, !noalias !143906
  %i.sd = icmp eq ptr %.sroa.61.0.ph, %i.qw
  br i1 %i.sd, label %.loopexit31.i, label %.peel.next.i, !dbg !144539

.peel.next.i:                                     ; preds = %.loopexit
  %.val.i.i.i.peel.i = load ptr, ptr %.sroa.61.0.ph, align 8, !dbg !144540, !noalias !143911, !nonnull !2227, !noundef !2227
  invoke void @_RNvXNtNtCs8774dFTUdNv_12polars_arrow5array12static_arrayINtNtB4_9primitive14PrimitiveArraymENtB2_11StaticArray4iterCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.qx, ptr noundef nonnull align 8 %.val.i.i.i.peel.i)
          to label %.noexc231 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.loopexit.split-lp, !dbg !144541, !noalias !143912

.noexc231:                                        ; preds = %.peel.next.i, %.noexc233
  %.sroa.61.0.pn = phi ptr [ %.sroa.61.1, %.noexc233 ], [ %.sroa.61.0.ph, %.peel.next.i ]
  %.sroa.9.8.copyload276 = load ptr, ptr %i.qx, align 8, !dbg !144542 ; 5 uses
  %.sroa.15.8.copyload278 = load ptr, ptr %.sroa.15.8..sroa_idx, align 8, !dbg !144542 ; 7 uses
  %.sroa.20.8.copyload283 = load ptr, ptr %.sroa.20.8..sroa_idx, align 8, !dbg !144542 ; 8 uses
  %.sroa.30.8.copyload291 = load i64, ptr %.sroa.30.8..sroa_idx, align 8, !dbg !144542 ; 3 uses
  %.sroa.34.8.copyload293 = load i64, ptr %.sroa.34.8..sroa_idx, align 8, !dbg !144542 ; 3 uses
  %.sroa.38.8.copyload296 = load i64, ptr %.sroa.38.8..sroa_idx, align 8, !dbg !144542 ; 5 uses
  %.sroa.61.1 = getelementptr inbounds nuw i8, ptr %.sroa.61.0.pn, i64 16, !dbg !144543 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !144544, !noalias !143906
  %.not.i.i.i.i = icmp eq ptr %.sroa.9.8.copyload276, null, !dbg !144512
  br i1 %.not.i.i.i.i, label %bb.fl, label %bb.fi, !dbg !144513

bb.fi:                                            ; preds = %.noexc231
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.15.8.copyload278) ]
  %i.se = icmp eq ptr %.sroa.9.8.copyload276, %.sroa.15.8.copyload278, !dbg !144514
  br i1 %i.se, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4ItermEENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i, label %bb.fj, !dbg !144515

bb.fj:                                            ; preds = %bb.fi
  %i.sf = getelementptr inbounds nuw i8, ptr %.sroa.9.8.copyload276, i64 4, !dbg !144516
  %i.sg = load i32, ptr %.sroa.9.8.copyload276, align 4, !dbg !144517, !noalias !143916, !noundef !2227
  br label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4ItermEENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i, !dbg !144518

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4ItermEENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i: ; preds = %bb.fj, %bb.fi
  %.sroa.9.3 = phi ptr [ %.sroa.9.8.copyload276, %bb.fi ], [ %i.sf, %bb.fj ], !dbg !144545 ; 2 uses
  %.sroa.3.0.i.i.i.i.i.i = phi i32 [ undef, %bb.fi ], [ %i.sg, %bb.fj ]
  %.sroa.0.0.i.i.i.i.i.i = phi i32 [ 0, %bb.fi ], [ 1, %bb.fj ], !dbg !144519
  %i.sh = icmp eq i64 %.sroa.34.8.copyload293, 0, !dbg !144520
  br i1 %i.sh, label %bb.fk, label %._crit_edge.i.i.i.i.i.i, !dbg !144520

bb.fk:                                            ; preds = %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4ItermEENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i
  %i.si = icmp eq i64 %.sroa.38.8.copyload296, 0, !dbg !144521
  br i1 %i.si, label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i, !dbg !144521

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i: ; preds = %bb.fk
  %.sroa.0.0.i.i.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.38.8.copyload296, i64 64), !dbg !144522 ; 2 uses
  %i.sj = sub nuw i64 %.sroa.38.8.copyload296, %.sroa.0.0.i.i.i.i.i.i.i, !dbg !144523
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.20.8.copyload283) ]
  %.sroa.02.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.20.8.copyload283, align 1, !dbg !144524, !noalias !143917
  %i.sk = getelementptr inbounds nuw i8, ptr %.sroa.20.8.copyload283, i64 8, !dbg !144525
  br label %._crit_edge.i.i.i.i.i.i, !dbg !144526

._crit_edge.i.i.i.i.i.i:                          ; preds = %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4ItermEENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i
  %.sroa.38.3 = phi i64 [ %i.sj, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i ], [ %.sroa.38.8.copyload296, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4ItermEENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ], !dbg !144545
  %.sroa.20.3 = phi ptr [ %i.sk, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i ], [ %.sroa.20.8.copyload283, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4ItermEENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ], !dbg !144545
  %i.sl = phi i64 [ %.sroa.0.0.i.i.i.i.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i ], [ %.sroa.34.8.copyload293, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4ItermEENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ], !dbg !144527
  %i.sm = phi i64 [ %.sroa.02.0.copyload.i.i.i.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i ], [ %.sroa.30.8.copyload291, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4ItermEENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ], !dbg !144528 ; 2 uses
  %i.sn = trunc i64 %i.sm to i8, !dbg !144528
  %i.so = lshr i64 %i.sm, 1, !dbg !144529
  %i.sp = add i64 %i.sl, -1, !dbg !144527
  %i.sq = and i8 %i.sn, 1, !dbg !144530
  br label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i, !dbg !144531

_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i, %bb.fk
  %.sroa.38.4 = phi i64 [ 0, %bb.fk ], [ %.sroa.38.3, %._crit_edge.i.i.i.i.i.i ], !dbg !144545 ; 2 uses
  %.sroa.34.3 = phi i64 [ 0, %bb.fk ], [ %i.sp, %._crit_edge.i.i.i.i.i.i ], !dbg !144545 ; 2 uses
  %.sroa.30.3 = phi i64 [ %.sroa.30.8.copyload291, %bb.fk ], [ %i.so, %._crit_edge.i.i.i.i.i.i ], !dbg !144545 ; 2 uses
  %.sroa.20.4 = phi ptr [ %.sroa.20.8.copyload283, %bb.fk ], [ %.sroa.20.3, %._crit_edge.i.i.i.i.i.i ], !dbg !144545 ; 2 uses
  %.sroa.0.0.i9.i.i.i.i.i = phi i8 [ 2, %bb.fk ], [ %i.sq, %._crit_edge.i.i.i.i.i.i ], !dbg !144532
  %i.sr = invoke { i8, i32 } @_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionbE3zipmECskY9G75ZWc4U_11polars_expr(i8 noundef %.sroa.0.0.i9.i.i.i.i.i, i32 noundef %.sroa.0.0.i.i.i.i.i.i, i32 %.sroa.3.0.i.i.i.i.i.i)
          to label %.noexc232 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.loopexit.split-lp, !dbg !144533, !noalias !143918 ; 2 uses

.noexc232:                                        ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i
  %i.ss = extractvalue { i8, i32 } %i.sr, 0, !dbg !144534
  switch i8 %i.ss, label %.loopexit.i [
    i8 2, label %bb.fm
    i8 0, label %.thread376.thread507.outer.backedge
  ], !dbg !144535

.loopexit.i:                                      ; preds = %.noexc230.peel, %.noexc230, %.noexc232
  %.sroa.61.3 = phi ptr [ %.sroa.61.1, %.noexc232 ], [ %.sroa.61.0.ph, %.noexc230 ], [ %.sroa.61.0.ph, %.noexc230.peel ], !dbg !143878
  %.sroa.38.7 = phi i64 [ %.sroa.38.4, %.noexc232 ], [ %.sroa.38.10.peel, %.noexc230.peel ], [ %.sroa.38.10, %.noexc230 ], !dbg !143878
  %.sroa.34.6 = phi i64 [ %.sroa.34.3, %.noexc232 ], [ %.sroa.34.8.peel, %.noexc230.peel ], [ %.sroa.34.8, %.noexc230 ], !dbg !143878
  %.sroa.30.6 = phi i64 [ %.sroa.30.3, %.noexc232 ], [ %.sroa.30.8.peel, %.noexc230.peel ], [ %.sroa.30.8, %.noexc230 ], !dbg !143878
  %.sroa.20.7 = phi ptr [ %.sroa.20.4, %.noexc232 ], [ %.sroa.20.10.peel, %.noexc230.peel ], [ %.sroa.20.10, %.noexc230 ], !dbg !143878
  %.sroa.15.3 = phi ptr [ %.sroa.15.8.copyload278, %.noexc232 ], [ %.sroa.15.0.ph, %.noexc230 ], [ %.sroa.15.0.ph, %.noexc230.peel ], !dbg !143878
  %.sroa.9.6 = phi ptr [ %.sroa.9.3, %.noexc232 ], [ %.sroa.9.8.peel, %.noexc230.peel ], [ %.sroa.9.8, %.noexc230 ], !dbg !143878
  %.lcssa.i = phi { i8, i32 } [ %i.sr, %.noexc232 ], [ %i.rl, %.noexc230.peel ], [ %i.sa, %.noexc230 ], !dbg !144533
  %i.st = extractvalue { i8, i32 } %.lcssa.i, 1, !dbg !144534
  br label %.thread376.thread, !dbg !144546

bb.fl:                                            ; preds = %.noexc231
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.15.8.copyload278), "nonnull"(ptr %.sroa.20.8.copyload283) ]
  %i.su = icmp eq ptr %.sroa.15.8.copyload278, %.sroa.20.8.copyload283, !dbg !144536
  br i1 %i.su, label %bb.fm, label %.loopexit30.i, !dbg !144537

.loopexit30.i:                                    ; preds = %bb.fl, %bb.fh
  %.sroa.61.4 = phi ptr [ %.sroa.61.0.ph, %bb.fh ], [ %.sroa.61.1, %bb.fl ], !dbg !143878
  %.sroa.38.8 = phi i64 [ %.sroa.38.0.ph, %bb.fh ], [ %.sroa.38.8.copyload296, %bb.fl ], !dbg !143878
  %.sroa.34.7 = phi i64 [ %.sroa.34.0.ph, %bb.fh ], [ %.sroa.34.8.copyload293, %bb.fl ], !dbg !143878
  %.sroa.30.7 = phi i64 [ %.sroa.30.0.ph, %bb.fh ], [ %.sroa.30.8.copyload291, %bb.fl ], !dbg !143878
  %.sroa.20.8 = phi ptr [ %.sroa.20.0.ph, %bb.fh ], [ %.sroa.20.8.copyload283, %bb.fl ], !dbg !143878
  %.lcssa28.i = phi ptr [ %.sroa.15.0.ph, %bb.fh ], [ %.sroa.15.8.copyload278, %bb.fl ], !dbg !144547 ; 2 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %.lcssa28.i, i64 4, !dbg !144548
  %i.sw = load i32, ptr %.lcssa28.i, align 4, !dbg !144549, !noalias !143919, !noundef !2227
  br label %.thread376.thread, !dbg !144550

bb.fm:                                            ; preds = %bb.fl, %.noexc232
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !144538, !noalias !143906
  call void @llvm.experimental.noalias.scope.decl(metadata !143920), !dbg !144551
  %i.sx = icmp eq ptr %.sroa.61.1, %i.qw, !dbg !144552
  br i1 %i.sx, label %.loopexit31.i, label %bb.fn, !dbg !144553

bb.fn:                                            ; preds = %bb.fm
  %.val.i.i.i.i = load ptr, ptr %.sroa.61.1, align 8, !dbg !144540, !noalias !143921, !nonnull !2227, !noundef !2227
  invoke void @_RNvXNtNtCs8774dFTUdNv_12polars_arrow5array12static_arrayINtNtB4_9primitive14PrimitiveArraymENtB2_11StaticArray4iterCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.qx, ptr noundef nonnull align 8 %.val.i.i.i.i)
          to label %.noexc233 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.loopexit.split-lp, !dbg !144541, !noalias !143922

.noexc233:                                        ; preds = %bb.fn
  store i64 1, ptr %i.a, align 8, !dbg !144554, !alias.scope !143920, !noalias !143906
  br label %.noexc231, !dbg !144555, !llvm.loop !143341

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.loopexit.split-lp: ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i, %bb.fn, %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskY9G75ZWc4U_11polars_expr.exit, %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskY9G75ZWc4U_11polars_expr.exit239, %bb.fy, %bb.gb, %.peel.next.i, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.peel.i, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.peel.i.peel
  %lpad.loopexit.split-lp762 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10UInt32TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.bf) #52
          to label %bb.ew unwind label %bb.az, !dbg !144556

.loopexit31.i:                                    ; preds = %.loopexit, %bb.fm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !144544, !noalias !143906
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10UInt32TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.bf)
          to label %bb.fo unwind label %bb.ez, !dbg !144556

bb.fo:                                            ; preds = %.loopexit31.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !dbg !144556
  %i.sy = load i64, ptr %i.bi, align 8, !dbg !144557, !range !2547, !noundef !2227
  %.not134 = icmp eq i64 %i.sy, -9223372036854775807, !dbg !144557
  %i.sz = load ptr, ptr %i.qj, align 8, !dbg !144558, !nonnull !2227, !align !2451
  %.sroa.099.0 = select i1 %.not134, ptr %i.sz, ptr %i.bi, !dbg !144558
  invoke void @_RNvMNtNtCs1LHh8CLbVkQ_11polars_core5frame6columnNtB2_6Column9agg_first(ptr noalias noundef nonnull sret([160 x i8]) align 16 captures(address) dereferenceable(160) %i.ax, ptr noundef nonnull align 16 %i.bj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.sroa.099.0)
          to label %bb.fp unwind label %bb.ez, !dbg !144559
end_hunk_0
