Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_expr-c150671a77946377.polars_expr.f440eb239ff47e82-cgu.15?download=true
inline.NumInlined: 9427
inline.NumDeleted: 4812
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 45
begin_hunk_0_@_RNvMs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6columnNtB4_10ColumnExpr14process_by_idx:bb.a

bb.t:                                             ; preds = %bb.r
  %i.bn = load ptr, ptr %i.u, align 16, !dbg !98085, !alias.scope !97999, !noalias !97998, !noundef !2531
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 152, !dbg !98086
  %i.bp = load i64, ptr %i.bo, align 8, !dbg !98086, !alias.scope !97999, !noalias !97998, !noundef !2531
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i25, !dbg !98087

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i25: ; preds = %bb.t, %bb.s
  %.sroa.01.0.i.i26 = phi i64 [ %i.bp, %bb.t ], [ %.sroa.0.0.i.i.i24, %bb.s ], !dbg !98088
  %.sroa.0.0.i.i27 = phi ptr [ %i.bn, %bb.t ], [ %i.u, %bb.s ], !dbg !98089
  invoke void @_RNvMNtCs1LHh8CLbVkQ_11polars_core5frameNtNtB2_9dataframe9DataFrame6column(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.a, ptr noundef nonnull align 8 %4, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i27, i64 noundef %.sroa.01.0.i.i26)
          to label %.noexc29 unwind label %bb.ac, !dbg !98090

.noexc29:                                         ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i25
  %i.bq = load i64, ptr %i.a, align 8, !dbg !98091, !range !3034, !noalias !97998, !noundef !2531
  %.not.i28 = icmp eq i64 %i.bq, 18, !dbg !98091
  br i1 %.not.i28, label %bb.v, label %bb.u, !dbg !98092

bb.u:                                             ; preds = %.noexc29
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !98093
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.br, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !dbg !98094
  store i8 32, ptr %0, align 16, !dbg !98093, !alias.scope !97998
  br label %.noexc15, !dbg !98095

bb.v:                                             ; preds = %.noexc29
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !98096
  %i.bt = load ptr, ptr %i.bs, align 8, !dbg !98096, !noalias !97998, !nonnull !2531, !align !3340, !noundef !2531
  invoke fastcc void @_RNvXs7_NtNtCs1LHh8CLbVkQ_11polars_core5frame6columnNtB5_6ColumnNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef nonnull align 16 captures(none) dereferenceable(160) %0, ptr noundef nonnull align 16 %i.bt) #37
          to label %.noexc15 unwind label %bb.ac, !dbg !98097

.noexc15:                                         ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !98098, !noalias !97998
  br label %bb.ae, !dbg !98078

bb.w:                                             ; preds = %bb.q
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98000), !dbg !98099
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !98100, !noalias !98000
  %i.bu = load i8, ptr %i.v, align 1, !dbg !98101, !range !2800, !alias.scope !98001, !noalias !98000, !noundef !2531 ; 2 uses
  %i.bv = icmp ugt i8 %i.bu, -41, !dbg !98102
  br i1 %i.bv, label %bb.y, label %bb.x, !dbg !98102

bb.x:                                             ; preds = %bb.w
  %i.bw = add i8 %i.bu, 64, !dbg !98103
  %i.bx = tail call i8 @llvm.umin.i8(i8 %i.bw, i8 24), !dbg !98104
  %.sroa.0.0.i.i.i = zext nneg i8 %i.bx to i64, !dbg !98104
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i, !dbg !98105

bb.y:                                             ; preds = %bb.w
  %i.by = load ptr, ptr %i.u, align 16, !dbg !98106, !alias.scope !98001, !noalias !98000, !noundef !2531
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 152, !dbg !98107
  %i.ca = load i64, ptr %i.bz, align 8, !dbg !98107, !alias.scope !98001, !noalias !98000, !noundef !2531
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i, !dbg !98108

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i: ; preds = %bb.y, %bb.x
  %.sroa.01.0.i.i = phi i64 [ %i.ca, %bb.y ], [ %.sroa.0.0.i.i.i, %bb.x ], !dbg !98109
  %.sroa.0.0.i.i20 = phi ptr [ %i.by, %bb.y ], [ %i.u, %bb.x ], !dbg !98110
  invoke void @_RNvMNtCs1LHh8CLbVkQ_11polars_core5frameNtNtB2_9dataframe9DataFrame6column(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noundef nonnull align 8 %4, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i20, i64 noundef %.sroa.01.0.i.i)
          to label %.noexc22 unwind label %bb.ac, !dbg !98111

.noexc22:                                         ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i
  %i.cb = load i64, ptr %i.b, align 8, !dbg !98112, !range !3034, !noalias !98000, !noundef !2531
  %.not.i21 = icmp eq i64 %i.cb, 18, !dbg !98112
  br i1 %.not.i21, label %bb.aa, label %bb.z, !dbg !98113

bb.z:                                             ; preds = %.noexc22
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !98114
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.cc, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false), !dbg !98115
  store i8 32, ptr %0, align 16, !dbg !98114, !alias.scope !98000
  br label %.noexc16, !dbg !98116

bb.aa:                                            ; preds = %.noexc22
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !98117
  %i.ce = load ptr, ptr %i.cd, align 8, !dbg !98117, !noalias !98000, !nonnull !2531, !align !3340, !noundef !2531
  invoke fastcc void @_RNvXs7_NtNtCs1LHh8CLbVkQ_11polars_core5frame6columnNtB5_6ColumnNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef nonnull align 16 captures(none) dereferenceable(160) %0, ptr noundef nonnull align 16 %i.ce) #37
          to label %.noexc16 unwind label %bb.ac, !dbg !98118

.noexc16:                                         ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !98119, !noalias !98000
  br label %bb.ae, !dbg !98099

bb.ab:                                            ; preds = %bb.q
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 8, !dbg !98120
  %i.cg = load ptr, ptr %i.cf, align 8, !dbg !98120, !noalias !97996, !nonnull !2531, !noundef !2531
  %i.ch = getelementptr inbounds nuw [160 x i8], ptr %i.cg, i64 %i.bf, !dbg !98121
  invoke fastcc void @_RNvMs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6columnNtB4_10ColumnExpr14process_by_idx(ptr noalias noundef nonnull align 16 captures(address) dereferenceable(160) %0, ptr noundef nonnull align 16 %1, ptr noundef nonnull align 16 %i.ch, ptr noundef nonnull align 8 %3, ptr noundef nonnull align 8 %4, i1 noundef zeroext false)
          to label %bb.ae unwind label %bb.ac, !dbg !98122

bb.ac:                                            ; preds = %bb.ab, %bb.v, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i25, %bb.aa, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit35
  %i.ci = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98002), !dbg !98123
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98003), !dbg !98124
  %i.cj = load ptr, ptr %i.e, align 8, !dbg !98125, !alias.scope !98004, !nonnull !2531, !noundef !2531
  %i.ck = atomicrmw add ptr %i.cj, i64 -1 release, align 8, !dbg !98126, !noalias !98004
  %i.cl = icmp eq i64 %i.ck, 1, !dbg !98127
  br i1 %i.cl, label %bb.ad, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECskY9G75ZWc4U_11polars_expr.exit, !dbg !98127

bb.ad:                                            ; preds = %bb.ac
  fence acquire, !dbg !98128
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #40
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECskY9G75ZWc4U_11polars_expr.exit unwind label %bb.ah, !dbg !98129

bb.ae:                                            ; preds = %.noexc16, %.noexc15, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !98130, !noalias !97996
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98005), !dbg !98123
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98006), !dbg !98131
  %i.cm = load ptr, ptr %i.e, align 8, !dbg !98132, !alias.scope !98007, !nonnull !2531, !noundef !2531
  %i.cn = atomicrmw add ptr %i.cm, i64 -1 release, align 8, !dbg !98133, !noalias !98007
  %i.co = icmp eq i64 %i.cn, 1, !dbg !98134
  br i1 %i.co, label %bb.af, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECskY9G75ZWc4U_11polars_expr.exit19, !dbg !98134

bb.af:                                            ; preds = %bb.ae
  fence acquire, !dbg !98135
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #40, !dbg !98136
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECskY9G75ZWc4U_11polars_expr.exit19, !dbg !98136

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECskY9G75ZWc4U_11polars_expr.exit19: ; preds = %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !98123
  br label %bb.ag, !dbg !98137

bb.ag:                                            ; preds = %bb.i, %bb.ak, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECskY9G75ZWc4U_11polars_expr.exit19
  ret void, !dbg !98137

bb.ah:                                            ; preds = %bb.ad
  %i.cp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #39, !dbg !98138
  unreachable, !dbg !98138

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.ac, %bb.ad
  resume { ptr, i32 } %i.ci, !dbg !98138

bb.ai:                                            ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit14
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !98139
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.cq, ptr noundef nonnull align 8 dereferenceable(72) %i.d, i64 72, i1 false), !dbg !98140
  store i8 32, ptr %0, align 16, !dbg !98139
  br label %bb.ak, !dbg !98141

bb.aj:                                            ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit14
  %i.cr = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !98142
  %i.cs = load ptr, ptr %i.cr, align 8, !dbg !98142, !nonnull !2531, !align !3340, !noundef !2531
  tail call fastcc void @_RNvXs7_NtNtCs1LHh8CLbVkQ_11polars_core5frame6columnNtB5_6ColumnNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(160) %0, ptr noundef nonnull align 16 %i.cs) #37, !dbg !98143
  br label %bb.ak, !dbg !98144

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !98145
  br label %bb.ag, !dbg !98042
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef align 8 ptr @_RNvMsc_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1J_E10init_frontCskY9G75ZWc4U_11polars_expr(ptr noalias nofree noundef align 8 captures(ret: address, provenance) dereferenceable(64) %0) unnamed_addr #9 !dbg !98146 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !98169, !range !2686, !noundef !2531
  %i.b = trunc nuw i64 %i.a to i1, !dbg !98170    ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !98170

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !98169 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !dbg !98169, !noundef !2531
  %.not = icmp eq ptr %i.d, null, !dbg !98169
  br i1 %.not, label %bb.d, label %bb.c, !dbg !98170

bb.c:                                             ; preds = %._crit_edge, %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !98171
  %.sroa.0.0 = select i1 %i.b, ptr %i.e, ptr null, !dbg !98171
  ret ptr %.sroa.0.0, !dbg !98172

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !98173 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !98173
  %i.h = load i64, ptr %i.g, align 8, !dbg !98173, !noundef !2531 ; 5 uses
  %.sroa.013.015 = load ptr, ptr %i.f, align 8, !dbg !98174, !nonnull !2531, !noundef !2531 ; 3 uses
  %i.i = icmp eq i64 %i.h, 0, !dbg !98175
  br i1 %i.i, label %._crit_edge, label %.lr.ph.preheader, !dbg !98175

.lr.ph.preheader:                                 ; preds = %bb.d
  %xtraiter = and i64 %i.h, 7, !dbg !98175        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !98175
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !98175

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.sroa.013.017.prol = phi ptr [ %.sroa.013.0.prol, %.lr.ph.prol ], [ %.sroa.013.015, %.lr.ph.preheader ]
  %.sroa.011.016.prol = phi i64 [ %i.k, %.lr.ph.prol ], [ %i.h, %.lr.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.013.017.prol, i64 544, !dbg !98176
  %i.k = add i64 %.sroa.011.016.prol, -1, !dbg !98177 ; 2 uses
  %.sroa.013.0.prol = load ptr, ptr %i.j, align 8, !dbg !98174, !nonnull !2531, !noundef !2531 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !98175 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !98175
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !98175, !llvm.loop !98156

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.sroa.013.0.lcssa21.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %.sroa.013.0.prol, %.lr.ph.prol ]
  %.sroa.013.017.unr = phi ptr [ %.sroa.013.015, %.lr.ph.preheader ], [ %.sroa.013.0.prol, %.lr.ph.prol ]
  %.sroa.011.016.unr = phi i64 [ %i.h, %.lr.ph.preheader ], [ %i.k, %.lr.ph.prol ]
  %i.l = icmp ult i64 %i.h, 8, !dbg !98175
  br i1 %i.l, label %._crit_edge, label %.lr.ph, !dbg !98175

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.d
  %.sroa.013.0.lcssa = phi ptr [ %.sroa.013.015, %bb.d ], [ %.sroa.013.0.lcssa21.unr, %.lr.ph.prol.loopexit ], [ %.sroa.013.0.7, %.lr.ph ], !dbg !98174
  store ptr %.sroa.013.0.lcssa, ptr %i.c, align 8, !dbg !98178
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !dbg !98178
  br label %bb.c, !dbg !98179

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.sroa.013.017 = phi ptr [ %.sroa.013.0.7, %.lr.ph ], [ %.sroa.013.017.unr, %.lr.ph.prol.loopexit ]
  %.sroa.011.016 = phi i64 [ %i.u, %.lr.ph ], [ %.sroa.011.016.unr, %.lr.ph.prol.loopexit ]
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.013.017, i64 544, !dbg !98176
  %.sroa.013.0 = load ptr, ptr %i.m, align 8, !dbg !98174, !nonnull !2531, !noundef !2531
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.013.0, i64 544, !dbg !98176
  %.sroa.013.0.1 = load ptr, ptr %i.n, align 8, !dbg !98174, !nonnull !2531, !noundef !2531
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.013.0.1, i64 544, !dbg !98176
  %.sroa.013.0.2 = load ptr, ptr %i.o, align 8, !dbg !98174, !nonnull !2531, !noundef !2531
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.013.0.2, i64 544, !dbg !98176
  %.sroa.013.0.3 = load ptr, ptr %i.p, align 8, !dbg !98174, !nonnull !2531, !noundef !2531
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.013.0.3, i64 544, !dbg !98176
  %.sroa.013.0.4 = load ptr, ptr %i.q, align 8, !dbg !98174, !nonnull !2531, !noundef !2531
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.013.0.4, i64 544, !dbg !98176
  %.sroa.013.0.5 = load ptr, ptr %i.r, align 8, !dbg !98174, !nonnull !2531, !noundef !2531
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.013.0.5, i64 544, !dbg !98176
  %.sroa.013.0.6 = load ptr, ptr %i.s, align 8, !dbg !98174, !nonnull !2531, !noundef !2531
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.013.0.6, i64 544, !dbg !98176
  %i.u = add i64 %.sroa.011.016, -8, !dbg !98177  ; 2 uses
  %.sroa.013.0.7 = load ptr, ptr %i.t, align 8, !dbg !98174, !nonnull !2531, !noundef !2531 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0, !dbg !98175
  br i1 %i.v, label %._crit_edge, label %.lr.ph, !dbg !98175
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMst_NtCscgRAwXFJnXP_4core3numn16from_ascii_radix(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2, i32 noundef %3) unnamed_addr #2 !dbg !98180 {
bb.a:
  %i.a = add i32 %3, -37, !dbg !98234
  %or.cond = icmp ult i32 %i.a, -35, !dbg !98234
  br i1 %or.cond, label %bb.b, label %bb.c, !dbg !98234, !prof !3013

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core3num22from_ascii_radix_panic(i32 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @320) #35, !dbg !98235
  unreachable, !dbg !98235

bb.c:                                             ; preds = %bb.a
  switch i64 %2, label %thread-pre-split [
    i64 0, label %bb.d
    i64 1, label %bb.f
  ], !dbg !98236

bb.d:                                             ; preds = %bb.c
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !98237
  store i8 0, ptr %i.b, align 1, !dbg !98237
  br label %bb.e, !dbg !98238

bb.e:                                             ; preds = %.loopexit125, %bb.aa, %bb.ab, %.split.us, %.split170.us, %bb.t, %bb.s, %.loopexit130, %.loopexit, %bb.g, %bb.d
  %.sink = phi i8 [ 1, %.loopexit125 ], [ 1, %bb.aa ], [ 1, %bb.ab ], [ 1, %.split.us ], [ 1, %.split170.us ], [ 1, %bb.t ], [ 1, %bb.s ], [ 1, %.loopexit130 ], [ 0, %.loopexit ], [ 1, %bb.g ], [ 1, %bb.d ]
  store i8 %.sink, ptr %0, align 16, !dbg !98239
  ret void, !dbg !98240

bb.f:                                             ; preds = %bb.c
  %i.c = load i8, ptr %1, align 1, !dbg !98241, !noundef !2531 ; 2 uses
  switch i8 %i.c, label %bb.h [
    i8 43, label %bb.g
    i8 45, label %bb.g
  ], !dbg !98241

bb.g:                                             ; preds = %bb.f, %bb.f
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !98242
  store i8 1, ptr %i.d, align 1, !dbg !98242
  br label %bb.e, !dbg !98243

thread-pre-split:                                 ; preds = %bb.c
  %.pr = load i8, ptr %1, align 1, !dbg !98241
  br label %bb.h, !dbg !98241

bb.h:                                             ; preds = %thread-pre-split, %bb.f
  %i.e = phi i8 [ %.pr, %thread-pre-split ], [ %i.c, %bb.f ], !dbg !98241
  switch i8 %i.e, label %bb.l [
    i8 43, label %bb.i
    i8 45, label %bb.j
  ], !dbg !98241

bb.i:                                             ; preds = %bb.h
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !98244
  %i.g = add nsw i64 %2, -1, !dbg !98244
  br label %bb.l, !dbg !98245

bb.j:                                             ; preds = %bb.h
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !98246 ; 3 uses
  %i.i = add nsw i64 %2, -1, !dbg !98246          ; 4 uses
  %i.j = icmp samesign ult i32 %3, 17, !dbg !98247
  %i.k = icmp samesign ult i64 %2, 33
  %or.cond106 = select i1 %i.j, i1 %i.k, i1 false, !dbg !98247
  %.not103149 = icmp eq i64 %i.i, 0, !dbg !98248  ; 2 uses
  br i1 %or.cond106, label %.preheader126, label %.preheader128, !dbg !98247

.preheader128:                                    ; preds = %bb.j
  br i1 %.not103149, label %.loopexit, label %.lr.ph, !dbg !98249

.lr.ph:                                           ; preds = %.preheader128
  %i.l = zext nneg i32 %3 to i128
  %i.m = icmp samesign ugt i32 %3, 10
  br label %bb.n, !dbg !98249

.preheader126:                                    ; preds = %bb.j
  br i1 %.not103149, label %.loopexit, label %.lr.ph153, !dbg !98250

.lr.ph153:                                        ; preds = %.preheader126
  %i.n = icmp samesign ugt i32 %3, 10
  %i.o = zext nneg i32 %3 to i128                 ; 2 uses
  br i1 %i.n, label %.lr.ph153.split, label %.lr.ph153.split.us

.lr.ph153.split.us:                               ; preds = %.lr.ph153, %bb.k
  %.sroa.0.2152.us = phi ptr [ %i.v, %bb.k ], [ %i.h, %.lr.ph153 ] ; 2 uses
  %.sroa.26.2151.us = phi i64 [ %i.u, %bb.k ], [ %i.i, %.lr.ph153 ]
  %.sroa.084.2150.us = phi i128 [ %i.x, %bb.k ], [ 0, %.lr.ph153 ]
  %i.p = load i8, ptr %.sroa.0.2152.us, align 1, !dbg !98251, !noundef !2531
  %i.q = zext i8 %i.p to i32, !dbg !98252
  %i.r = add nsw i32 %i.q, -48, !dbg !98253       ; 2 uses
  %i.s = icmp ult i32 %i.r, %3, !dbg !98254
  br i1 %i.s, label %bb.k, label %.split.us, !dbg !98255

bb.k:                                             ; preds = %.lr.ph153.split.us
  %i.t = mul i128 %.sroa.084.2150.us, %i.o, !dbg !98256
  %i.u = add nsw i64 %.sroa.26.2151.us, -1, !dbg !98257 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.2152.us, i64 1, !dbg !98257
  %i.w = zext nneg i32 %i.r to i128, !dbg !98258
  %i.x = sub i128 %i.t, %i.w, !dbg !98259         ; 2 uses
  %.not103.us = icmp eq i64 %i.u, 0, !dbg !98250
  br i1 %.not103.us, label %.loopexit, label %.lr.ph153.split.us, !dbg !98250

bb.l:                                             ; preds = %bb.h, %bb.i
  %.sroa.26.0 = phi i64 [ %i.g, %bb.i ], [ %2, %bb.h ] ; 5 uses
  %.sroa.0.0 = phi ptr [ %i.f, %bb.i ], [ %1, %bb.h ] ; 3 uses
  %i.y = icmp samesign ult i32 %3, 17, !dbg !98247
  %i.z = icmp samesign ult i64 %.sroa.26.0, 32
  %or.cond107 = select i1 %i.y, i1 %i.z, i1 false, !dbg !98247
  %.not105161 = icmp eq i64 %.sroa.26.0, 0, !dbg !98248 ; 2 uses
  br i1 %or.cond107, label %.preheader, label %.preheader123, !dbg !98247

.preheader123:                                    ; preds = %bb.l
  br i1 %.not105161, label %.loopexit, label %.lr.ph159, !dbg !98260

.lr.ph159:                                        ; preds = %.preheader123
  %i.aa = zext nneg i32 %3 to i128
  %i.ab = icmp samesign ugt i32 %3, 10
  br label %bb.v, !dbg !98260

.preheader:                                       ; preds = %bb.l
  br i1 %.not105161, label %.loopexit, label %.lr.ph165, !dbg !98261

.lr.ph165:                                        ; preds = %.preheader
  %i.ac = icmp samesign ugt i32 %3, 10
  %i.ad = zext nneg i32 %3 to i128                ; 2 uses
  br i1 %i.ac, label %.lr.ph165.split, label %.lr.ph165.split.us

.lr.ph165.split.us:                               ; preds = %.lr.ph165, %bb.m
  %.sroa.0.4164.us = phi ptr [ %i.ak, %bb.m ], [ %.sroa.0.0, %.lr.ph165 ] ; 2 uses
  %.sroa.26.4163.us = phi i64 [ %i.aj, %bb.m ], [ %.sroa.26.0, %.lr.ph165 ]
  %.sroa.084.4162.us = phi i128 [ %i.am, %bb.m ], [ 0, %.lr.ph165 ]
  %i.ae = load i8, ptr %.sroa.0.4164.us, align 1, !dbg !98262, !noundef !2531
  %i.af = zext i8 %i.ae to i32, !dbg !98263
  %i.ag = add nsw i32 %i.af, -48, !dbg !98264     ; 2 uses
  %i.ah = icmp ult i32 %i.ag, %3, !dbg !98265
  br i1 %i.ah, label %bb.m, label %.split170.us, !dbg !98266

bb.m:                                             ; preds = %.lr.ph165.split.us
  %i.ai = mul i128 %.sroa.084.4162.us, %i.ad, !dbg !98267
  %i.aj = add nsw i64 %.sroa.26.4163.us, -1, !dbg !98268 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.4164.us, i64 1, !dbg !98268
  %i.al = zext nneg i32 %i.ag to i128, !dbg !98269
  %i.am = add i128 %i.ai, %i.al, !dbg !98270      ; 2 uses
  %.not105.us = icmp eq i64 %i.aj, 0, !dbg !98261
  br i1 %.not105.us, label %.loopexit, label %.lr.ph165.split.us, !dbg !98261

.loopexit:                                        ; preds = %bb.r, %bb.k, %bb.u, %bb.z, %bb.m, %bb.ac, %.preheader128, %.preheader126, %.preheader123, %.preheader
  %.sroa.084.1 = phi i128 [ %i.x, %bb.k ], [ %i.dc, %bb.ac ], [ %i.cn, %bb.z ], [ 0, %.preheader ], [ %i.bu, %bb.u ], [ 0, %.preheader123 ], [ 0, %.preheader126 ], [ %i.am, %bb.m ], [ 0, %.preheader128 ], [ %i.bf, %bb.r ], !dbg !98271
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !98272
  store i128 %.sroa.084.1, ptr %i.an, align 16, !dbg !98272
  br label %bb.e, !dbg !98240

bb.n:                                             ; preds = %.lr.ph, %bb.r
  %.sroa.0.1148 = phi ptr [ %i.h, %.lr.ph ], [ %i.ao, %bb.r ] ; 2 uses
  %.sroa.26.1147 = phi i64 [ %i.i, %.lr.ph ], [ %i.ap, %bb.r ]
  %.sroa.084.0146 = phi i128 [ 0, %.lr.ph ], [ %i.bf, %bb.r ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.1148, i64 1, !dbg !98273
  %i.ap = add nsw i64 %.sroa.26.1147, -1, !dbg !98273 ; 2 uses
  %i.aq = tail call { i128, i1 } @llvm.smul.with.overflow.i128(i128 %.sroa.084.0146, i128 %i.l), !dbg !98274 ; 2 uses
  %i.ar = extractvalue { i128, i1 } %i.aq, 0, !dbg !98274
  %i.as = extractvalue { i128, i1 } %i.aq, 1, !dbg !98274
  %i.at = load i8, ptr %.sroa.0.1148, align 1, !dbg !98275, !noundef !2531 ; 2 uses
  %i.au = zext i8 %i.at to i32, !dbg !98276       ; 2 uses
  %i.av = icmp ugt i8 %i.at, 57, !dbg !98277
  %or.cond1.i108 = and i1 %i.m, %i.av, !dbg !98277
  %i.aw = add nsw i32 %i.au, -65, !dbg !98277
  %i.ax = and i32 %i.aw, -33, !dbg !98277
  %i.ay = add nuw nsw i32 %i.ax, 10, !dbg !98277
  %i.az = add nsw i32 %i.au, -48, !dbg !98277
  %.sroa.02.0.i109 = select i1 %or.cond1.i108, i32 %i.ay, i32 %i.az, !dbg !98277 ; 2 uses
  %i.ba = icmp ult i32 %.sroa.02.0.i109, %3, !dbg !98278 ; 2 uses
  br i1 %i.as, label %bb.p, label %bb.o, !dbg !98279, !prof !2688

bb.o:                                             ; preds = %bb.n
  br i1 %i.ba, label %bb.q, label %.loopexit130, !dbg !98280
end_hunk_0
