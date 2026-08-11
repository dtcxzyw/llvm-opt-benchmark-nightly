inline.NumInlined: 7491
inline.NumDeleted: 2575
loop-unroll.NumCompletelyUnrolled: 52
loop-unroll.NumRuntimeUnrolled: 44
loop-unroll.NumUnrolled: 96
begin_hunk_0_@_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowhhEINtNtB6_8no_nulls23RollingAggWindowNoNullshE6updateCskY9G75ZWc4U_11polars_expr:bb.a
  %cmp.n39 = icmp eq i64 %i.r, %n.vec33, !dbg !180326
  br i1 %cmp.n39, label %._crit_edge, label %vec.epilog.scalar.ph.preheader, !dbg !180326

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph80 = phi i8 [ %.promoted, %iter.check ], [ %i.z, %vec.epilog.iter.check ], [ %i.ae, %vec.epilog.middle.block ]
  %.sroa.03.014.ph = phi ptr [ %i.p, %iter.check ], [ %i.t, %vec.epilog.iter.check ], [ %i.aa, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph, !dbg !180326

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.i, i64 noundef %1, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @397) #45, !dbg !180349
  unreachable, !dbg !180349

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %i.af = phi i8 [ %i.ai, %vec.epilog.scalar.ph ], [ %.ph80, %vec.epilog.scalar.ph.preheader ], !dbg !180346
  %.sroa.03.014 = phi ptr [ %i.ag, %vec.epilog.scalar.ph ], [ %.sroa.03.014.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.03.014, i64 1, !dbg !180346 ; 2 uses
  %i.ah = load i8, ptr %.sroa.03.014, align 1, !dbg !180340, !noundef !14
  %i.ai = sub i8 %i.af, %i.ah, !dbg !180342       ; 2 uses
  %i.aj = icmp eq ptr %i.ag, %i.n, !dbg !180325
  br i1 %i.aj, label %._crit_edge, label %vec.epilog.scalar.ph, !dbg !180326, !llvm.loop !180350

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa29 = phi i8 [ %i.ae, %vec.epilog.middle.block ], [ %i.z, %middle.block ], [ %i.ai, %vec.epilog.scalar.ph ], !dbg !180342
  store i8 %.lcssa29, ptr %i.q, align 8, !dbg !180342, !alias.scope !180335
  br label %bb.f, !dbg !180326

bb.f:                                             ; preds = %._crit_edge, %bb.d
  %i.ak = icmp ult i64 %2, %i.h, !dbg !180351
  %.not12 = icmp ugt i64 %2, %i.l
  %or.cond13 = or i1 %.not12, %i.ak, !dbg !180351
  br i1 %or.cond13, label %bb.h, label %bb.g, !dbg !180351, !prof !27399

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %i.j, i64 %2, !dbg !180355
  %i.am = icmp samesign eq i64 %i.h, %2, !dbg !180360
  br i1 %i.am, label %bb.i, label %iter.check60, !dbg !180363

iter.check60:                                     ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.h, !dbg !180364 ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.promoted19 = load i8, ptr %i.ao, align 8, !alias.scope !180366 ; 3 uses
  %i.ap = sub i64 %2, %i.h, !dbg !180363          ; 7 uses
  %min.iters.check42 = icmp ult i64 %i.ap, 4, !dbg !180363
  br i1 %min.iters.check42, label %vec.epilog.scalar.ph61.preheader, label %vector.main.loop.iter.check43, !dbg !180363

vector.main.loop.iter.check43:                    ; preds = %iter.check60
  %min.iters.check44 = icmp ult i64 %i.ap, 32, !dbg !180363
  br i1 %min.iters.check44, label %vec.epilog.ph64, label %vector.ph45, !dbg !180363

vector.ph45:                                      ; preds = %vector.main.loop.iter.check43
  %i.aq = and i64 %i.ap, 28
  %n.vec46 = and i64 %i.ap, -32                   ; 4 uses
  %i.ar = getelementptr i8, ptr %i.an, i64 %n.vec46
  %i.as = insertelement <16 x i8> <i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, i8 %.promoted19, i64 0
  br label %vector.body47, !dbg !180363

vector.body47:                                    ; preds = %vector.body47, %vector.ph45
  %index48 = phi i64 [ 0, %vector.ph45 ], [ %index.next54, %vector.body47 ] ; 2 uses
  %vec.phi49 = phi <16 x i8> [ %i.as, %vector.ph45 ], [ %i.au, %vector.body47 ]
  %vec.phi50 = phi <16 x i8> [ zeroinitializer, %vector.ph45 ], [ %i.av, %vector.body47 ]
  %next.gep51 = getelementptr i8, ptr %i.an, i64 %index48 ; 2 uses
  %i.at = getelementptr i8, ptr %next.gep51, i64 16, !dbg !180371
  %wide.load52 = load <16 x i8>, ptr %next.gep51, align 1, !dbg !180371
  %wide.load53 = load <16 x i8>, ptr %i.at, align 1, !dbg !180371
  %i.au = add <16 x i8> %vec.phi49, %wide.load52, !dbg !180372 ; 2 uses
  %i.av = add <16 x i8> %vec.phi50, %wide.load53, !dbg !180372 ; 2 uses
  %index.next54 = add nuw i64 %index48, 32        ; 2 uses
  %i.aw = icmp eq i64 %index.next54, %n.vec46, !dbg !180363
  br i1 %i.aw, label %middle.block55, label %vector.body47, !dbg !180363, !llvm.loop !180375

middle.block55:                                   ; preds = %vector.body47
  %bin.rdx56 = add <16 x i8> %i.av, %i.au, !dbg !180363
  %i.ax = tail call i8 @llvm.vector.reduce.add.v16i8(<16 x i8> %bin.rdx56), !dbg !180363 ; 3 uses
  %cmp.n57 = icmp eq i64 %i.ap, %n.vec46, !dbg !180363
  br i1 %cmp.n57, label %._crit_edge18, label %vec.epilog.iter.check62, !dbg !180363

vec.epilog.iter.check62:                          ; preds = %middle.block55
  %min.epilog.iters.check63 = icmp eq i64 %i.aq, 0
  br i1 %min.epilog.iters.check63, label %vec.epilog.scalar.ph61.preheader, label %vec.epilog.ph64, !prof !56990

vec.epilog.ph64:                                  ; preds = %vector.main.loop.iter.check43, %vec.epilog.iter.check62
  %vec.epilog.resume.val58 = phi i64 [ %n.vec46, %vec.epilog.iter.check62 ], [ 0, %vector.main.loop.iter.check43 ]
  %bc.merge.rdx59 = phi i8 [ %i.ax, %vec.epilog.iter.check62 ], [ %.promoted19, %vector.main.loop.iter.check43 ], !dbg !180376
  %n.vec65 = and i64 %i.ap, -4                    ; 3 uses
  %i.ay = getelementptr i8, ptr %i.an, i64 %n.vec65
  %i.az = insertelement <4 x i8> <i8 poison, i8 0, i8 0, i8 0>, i8 %bc.merge.rdx59, i64 0
  br label %vec.epilog.vector.body66

vec.epilog.vector.body66:                         ; preds = %vec.epilog.vector.body66, %vec.epilog.ph64
  %index67 = phi i64 [ %vec.epilog.resume.val58, %vec.epilog.ph64 ], [ %index.next71, %vec.epilog.vector.body66 ] ; 2 uses
  %vec.phi68 = phi <4 x i8> [ %i.az, %vec.epilog.ph64 ], [ %i.ba, %vec.epilog.vector.body66 ]
  %next.gep69 = getelementptr i8, ptr %i.an, i64 %index67
  %wide.load70 = load <4 x i8>, ptr %next.gep69, align 1, !dbg !180371
  %i.ba = add <4 x i8> %vec.phi68, %wide.load70, !dbg !180372 ; 2 uses
  %index.next71 = add nuw i64 %index67, 4         ; 2 uses
  %i.bb = icmp eq i64 %index.next71, %n.vec65, !dbg !180363
  br i1 %i.bb, label %vec.epilog.middle.block72, label %vec.epilog.vector.body66, !dbg !180363, !llvm.loop !180378

vec.epilog.middle.block72:                        ; preds = %vec.epilog.vector.body66
  %i.bc = tail call i8 @llvm.vector.reduce.add.v4i8(<4 x i8> %i.ba), !dbg !180363 ; 2 uses
  %cmp.n73 = icmp eq i64 %i.ap, %n.vec65, !dbg !180363
  br i1 %cmp.n73, label %._crit_edge18, label %vec.epilog.scalar.ph61.preheader, !dbg !180363

vec.epilog.scalar.ph61.preheader:                 ; preds = %iter.check60, %vec.epilog.iter.check62, %vec.epilog.middle.block72
  %.ph = phi i8 [ %.promoted19, %iter.check60 ], [ %i.ax, %vec.epilog.iter.check62 ], [ %i.bc, %vec.epilog.middle.block72 ]
  %.sroa.06.015.ph = phi ptr [ %i.an, %iter.check60 ], [ %i.ar, %vec.epilog.iter.check62 ], [ %i.ay, %vec.epilog.middle.block72 ]
  br label %vec.epilog.scalar.ph61, !dbg !180363

bb.h:                                             ; preds = %bb.f
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.h, i64 noundef %2, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @396) #45, !dbg !180379
  unreachable, !dbg !180379

vec.epilog.scalar.ph61:                           ; preds = %vec.epilog.scalar.ph61.preheader, %vec.epilog.scalar.ph61
  %i.bd = phi i8 [ %i.bg, %vec.epilog.scalar.ph61 ], [ %.ph, %vec.epilog.scalar.ph61.preheader ], !dbg !180376
  %.sroa.06.015 = phi ptr [ %i.be, %vec.epilog.scalar.ph61 ], [ %.sroa.06.015.ph, %vec.epilog.scalar.ph61.preheader ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.06.015, i64 1, !dbg !180376 ; 2 uses
  %i.bf = load i8, ptr %.sroa.06.015, align 1, !dbg !180371, !noundef !14
  %i.bg = add i8 %i.bd, %i.bf, !dbg !180372       ; 2 uses
  %i.bh = icmp eq ptr %i.be, %i.al, !dbg !180360
  br i1 %i.bh, label %._crit_edge18, label %vec.epilog.scalar.ph61, !dbg !180363, !llvm.loop !180380

._crit_edge18:                                    ; preds = %vec.epilog.scalar.ph61, %vec.epilog.middle.block72, %middle.block55
  %.lcssa = phi i8 [ %i.bc, %vec.epilog.middle.block72 ], [ %i.ax, %middle.block55 ], [ %i.bg, %vec.epilog.scalar.ph61 ], !dbg !180372
  store i8 %.lcssa, ptr %i.ao, align 8, !dbg !180372, !alias.scope !180366
  br label %bb.i, !dbg !180363

bb.i:                                             ; preds = %._crit_edge18, %bb.g
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !180301
  store i64 %1, ptr %i.bi, align 8, !dbg !180381
  store i64 %2, ptr %i.a, align 8, !dbg !180382
  ret void, !dbg !180383
}

; Function Attrs: nonlazybind uwtable
define hidden { i1, i8 } @_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowhhEINtNtB6_8no_nulls23RollingAggWindowNoNullshE7get_aggCskY9G75ZWc4U_11polars_expr(ptr noalias noundef readonly align 8 captures(none) dereferenceable(80) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !180384 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !180385), !dbg !180388
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !180389
  %i.b = load i64, ptr %i.a, align 8, !dbg !180389, !alias.scope !180385, !noundef !14 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0, !dbg !180389
  br i1 %i.c, label %bb.b, label %bb.c, !dbg !180389

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !180391
  %i.e = load i8, ptr %i.d, align 8, !dbg !180391, !alias.scope !180385, !noundef !14
  br label %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowhhE7get_sumCskY9G75ZWc4U_11polars_expr.exit, !dbg !180392

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !180393
  %i.g = load i64, ptr %i.f, align 8, !dbg !180393, !alias.scope !180385, !noundef !14
  %i.h = icmp eq i64 %i.b, %i.g, !dbg !180394
  br i1 %i.h, label %bb.e, label %bb.d, !dbg !180394

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !180395
  %i.j = load i64, ptr %i.i, align 8, !dbg !180395, !alias.scope !180385, !noundef !14
  %i.k = icmp eq i64 %i.b, %i.j, !dbg !180396
  br i1 %i.k, label %bb.g, label %bb.f, !dbg !180396

bb.e:                                             ; preds = %bb.c
  %i.l = tail call noundef i8 @_RNvYhNtNtCs2mZqlW55729_12polars_utils5float7IsFloat13pos_inf_valueCskY9G75ZWc4U_11polars_expr(), !dbg !180397, !noalias !180385
  br label %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowhhE7get_sumCskY9G75ZWc4U_11polars_expr.exit, !dbg !180398

bb.f:                                             ; preds = %bb.d
  %i.m = tail call noundef i8 @_RNvYhNtNtCs2mZqlW55729_12polars_utils5float7IsFloat9nan_valueCskY9G75ZWc4U_11polars_expr(), !dbg !180399, !noalias !180385
  br label %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowhhE7get_sumCskY9G75ZWc4U_11polars_expr.exit, !dbg !180400

bb.g:                                             ; preds = %bb.d
  %i.n = tail call noundef i8 @_RNvYhNtNtCs2mZqlW55729_12polars_utils5float7IsFloat13neg_inf_valueCskY9G75ZWc4U_11polars_expr(), !dbg !180401, !noalias !180385
  br label %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowhhE7get_sumCskY9G75ZWc4U_11polars_expr.exit, !dbg !180400

_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowhhE7get_sumCskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.b, %bb.e, %bb.f, %bb.g
  %.sroa.5.0.i = phi i8 [ %i.e, %bb.b ], [ %i.l, %bb.e ], [ %i.n, %bb.g ], [ %i.m, %bb.f ], !dbg !180402
  %i.o = insertvalue { i1, i8 } { i1 true, i8 undef }, i8 %.sroa.5.0.i, 1, !dbg !180403
  ret { i1, i8 } %i.o, !dbg !180404
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowllEINtNtB6_8no_nulls23RollingAggWindowNoNullslE3newCskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef range(i64 0, 2305843009213693952) %2, i64 noundef %3, i64 noundef %4, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %5, i64 noundef range(i64 0, 2) %6, i64 %7) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !180405 {
bb.a:
  %.not11.i = icmp ugt i64 %3, %2
  br i1 %.not11.i, label %bb.b, label %._crit_edge.i, !dbg !180406, !prof !27399

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %3, i64 noundef %3, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @397) #45, !dbg !180416, !noalias !180417
  unreachable, !dbg !180416

._crit_edge.i:                                    ; preds = %bb.a
  %i.a = icmp ult i64 %4, %3, !dbg !180420
  %.not12.i = icmp ugt i64 %4, %2
  %or.cond13.i = or i1 %.not12.i, %i.a, !dbg !180420
  br i1 %or.cond13.i, label %bb.d, label %bb.c, !dbg !180420, !prof !27399

bb.c:                                             ; preds = %._crit_edge.i
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %4, !dbg !180426
  %i.c = icmp samesign eq i64 %3, %4, !dbg !180440
  br i1 %i.c, label %_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowllEINtNtB6_8no_nulls23RollingAggWindowNoNullslE6updateCskY9G75ZWc4U_11polars_expr.exit, label %.lr.ph17.i, !dbg !180450

.lr.ph17.i:                                       ; preds = %bb.c
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %3, !dbg !180451 ; 3 uses
  %8 = shl i64 %4, 2, !dbg !180450
  %i.e = add i64 %8, -4, !dbg !180450
  %9 = shl i64 %3, 2, !dbg !180450
  %10 = sub i64 %i.e, %9, !dbg !180450            ; 2 uses
  %11 = lshr exact i64 %10, 2, !dbg !180450
  %i.f = add nuw nsw i64 %11, 1, !dbg !180450     ; 2 uses
  %min.iters.check = icmp ult i64 %10, 28, !dbg !180450
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph, !dbg !180450

vector.ph:                                        ; preds = %.lr.ph17.i
  %n.vec = and i64 %i.f, 9223372036854775800      ; 3 uses
  %i.g = shl i64 %n.vec, 2
  %i.h = getelementptr i8, ptr %i.d, i64 %i.g
  br label %vector.body, !dbg !180450

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.k, %vector.body ]
  %vec.phi8 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.l, %vector.body ]
  %i.i = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.i ; 2 uses
  %i.j = getelementptr i8, ptr %next.gep, i64 16, !dbg !180455
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !dbg !180455, !noalias !180417
  %wide.load9 = load <4 x i32>, ptr %i.j, align 4, !dbg !180455, !noalias !180417
  %i.k = add <4 x i32> %wide.load, %vec.phi, !dbg !180457 ; 2 uses
  %i.l = add <4 x i32> %wide.load9, %vec.phi8, !dbg !180457 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec, !dbg !180450
  br i1 %i.m, label %middle.block, label %vector.body, !dbg !180450, !llvm.loop !180460

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.l, %i.k, !dbg !180450
  %i.n = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx), !dbg !180450 ; 2 uses
  %cmp.n = icmp eq i64 %i.f, %n.vec, !dbg !180450
  br i1 %cmp.n, label %_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowllEINtNtB6_8no_nulls23RollingAggWindowNoNullslE6updateCskY9G75ZWc4U_11polars_expr.exit, label %scalar.ph.preheader, !dbg !180450

scalar.ph.preheader:                              ; preds = %.lr.ph17.i, %middle.block
  %.ph = phi i32 [ 0, %.lr.ph17.i ], [ %i.n, %middle.block ]
  %.sroa.06.015.i.ph = phi ptr [ %i.d, %.lr.ph17.i ], [ %i.h, %middle.block ]
  br label %scalar.ph, !dbg !180450

bb.d:                                             ; preds = %._crit_edge.i
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %3, i64 noundef %4, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @396) #45, !dbg !180461, !noalias !180417
  unreachable, !dbg !180461

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.o = phi i32 [ %i.r, %scalar.ph ], [ %.ph, %scalar.ph.preheader ], !dbg !180462
  %.sroa.06.015.i = phi ptr [ %i.p, %scalar.ph ], [ %.sroa.06.015.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.06.015.i, i64 4, !dbg !180462 ; 2 uses
  %i.q = load i32, ptr %.sroa.06.015.i, align 4, !dbg !180455, !noalias !180417, !noundef !14
  %i.r = add i32 %i.q, %i.o, !dbg !180457         ; 2 uses
  %i.s = icmp eq ptr %i.p, %i.b, !dbg !180440
  br i1 %i.s, label %_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowllEINtNtB6_8no_nulls23RollingAggWindowNoNullslE6updateCskY9G75ZWc4U_11polars_expr.exit, label %scalar.ph, !dbg !180450, !llvm.loop !180465

_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowllEINtNtB6_8no_nulls23RollingAggWindowNoNullslE6updateCskY9G75ZWc4U_11polars_expr.exit: ; preds = %scalar.ph, %middle.block, %bb.c
  %.sroa.16.2 = phi i32 [ 0, %bb.c ], [ %i.n, %middle.block ], [ %i.r, %scalar.ph ], !dbg !180466
  store ptr %1, ptr %0, align 8, !dbg !180467
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !180467
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !180467
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !180467
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !180467
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa_idx, i8 0, i64 40, i1 false), !dbg !180467
  store i64 %3, ptr %.sroa.10.0..sroa_idx, align 8, !dbg !180467
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !180467
  store i64 %4, ptr %.sroa.13.0..sroa_idx, align 8, !dbg !180467
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !180467
  store i32 %.sroa.16.2, ptr %.sroa.16.0..sroa_idx, align 8, !dbg !180467
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 76, !dbg !180467
  store i32 0, ptr %.sroa.21.0..sroa_idx, align 4, !dbg !180467
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !180467
  store i32 0, ptr %.sroa.22.0..sroa_idx, align 8, !dbg !180467
  ret void, !dbg !180468
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowllEINtNtB6_8no_nulls23RollingAggWindowNoNullslE6updateCskY9G75ZWc4U_11polars_expr(ptr noalias nofree noundef align 8 captures(none) dereferenceable(88) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !180413 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !180469 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !180469, !noundef !14 ; 2 uses
  %.not = icmp ult i64 %1, %i.b, !dbg !180470
  br i1 %.not, label %._crit_edge22, label %bb.b, !dbg !180470

._crit_edge22:                                    ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !dbg !180471
  br label %bb.c, !dbg !180470

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !180472
  store i32 0, ptr %i.c, align 8, !dbg !180472, !alias.scope !180474
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 76, !dbg !180477
  store i32 0, ptr %i.d, align 4, !dbg !180477, !alias.scope !180474
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !180478
  store i32 0, ptr %i.e, align 8, !dbg !180478, !alias.scope !180474
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !180479
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i8 0, i64 32, i1 false), !dbg !180479, !alias.scope !180474
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !180480
  store i64 %1, ptr %i.g, align 8, !dbg !180480
  store i64 %1, ptr %i.a, align 8, !dbg !180481
  br label %bb.c, !dbg !180482

bb.c:                                             ; preds = %._crit_edge22, %bb.b
  %i.h = phi i64 [ %i.b, %._crit_edge22 ], [ %1, %bb.b ] ; 5 uses
  %i.i = phi i64 [ %.pre, %._crit_edge22 ], [ %1, %bb.b ], !dbg !180471 ; 5 uses
  %i.j = load ptr, ptr %0, align 8, !dbg !180483, !nonnull !14, !align !5752, !noundef !14 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !180483
  %i.l = load i64, ptr %i.k, align 8, !dbg !180483, !noundef !14 ; 4 uses
  %i.m = icmp ult i64 %1, %i.i, !dbg !180484
  %.not11 = icmp ugt i64 %1, %i.l
  %or.cond = or i1 %.not11, %i.m, !dbg !180484
  br i1 %or.cond, label %bb.e, label %bb.d, !dbg !180484, !prof !27399

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %1, !dbg !180488
  %i.o = icmp samesign eq i64 %i.i, %1, !dbg !180495
  br i1 %i.o, label %bb.f, label %.lr.ph, !dbg !180496

.lr.ph:                                           ; preds = %bb.d
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.i, !dbg !180502 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.promoted = load i32, ptr %i.q, align 8, !alias.scope !180505 ; 2 uses
  %3 = shl i64 %1, 2, !dbg !180496
  %i.r = add i64 %3, -4, !dbg !180496
  %4 = shl i64 %i.i, 2, !dbg !180496
  %5 = sub i64 %i.r, %4, !dbg !180496             ; 2 uses
  %6 = lshr exact i64 %5, 2, !dbg !180496
  %i.s = add nuw nsw i64 %6, 1, !dbg !180496      ; 2 uses
  %min.iters.check = icmp ult i64 %5, 28, !dbg !180496
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph, !dbg !180496

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.s, 9223372036854775800      ; 3 uses
  %i.t = shl i64 %n.vec, 2
  %i.u = getelementptr i8, ptr %i.p, i64 %i.t
  %i.v = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.promoted, i64 0
  br label %vector.body, !dbg !180496

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.v, %vector.ph ], [ %i.y, %vector.body ]
  %vec.phi30 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.z, %vector.body ]
  %i.w = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.w ; 2 uses
  %i.x = getelementptr i8, ptr %next.gep, i64 16, !dbg !180510
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !dbg !180510
  %wide.load31 = load <4 x i32>, ptr %i.x, align 4, !dbg !180510
  %i.y = sub <4 x i32> %vec.phi, %wide.load, !dbg !180512 ; 2 uses
  %i.z = sub <4 x i32> %vec.phi30, %wide.load31, !dbg !180512 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec, !dbg !180496
  br i1 %i.aa, label %middle.block, label %vector.body, !dbg !180496, !llvm.loop !180515

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.z, %i.y, !dbg !180496
  %i.ab = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx), !dbg !180496 ; 2 uses
  %cmp.n = icmp eq i64 %i.s, %n.vec, !dbg !180496
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader, !dbg !180496

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.ph52 = phi i32 [ %.promoted, %.lr.ph ], [ %i.ab, %middle.block ]
  %.sroa.03.014.ph = phi ptr [ %i.p, %.lr.ph ], [ %i.u, %middle.block ]
  br label %scalar.ph, !dbg !180496

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.i, i64 noundef %1, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @397) #45, !dbg !180516
  unreachable, !dbg !180516

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.ac = phi i32 [ %i.af, %scalar.ph ], [ %.ph52, %scalar.ph.preheader ], !dbg !180517
  %.sroa.03.014 = phi ptr [ %i.ad, %scalar.ph ], [ %.sroa.03.014.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.03.014, i64 4, !dbg !180517 ; 2 uses
  %i.ae = load i32, ptr %.sroa.03.014, align 4, !dbg !180510, !noundef !14
  %i.af = sub i32 %i.ac, %i.ae, !dbg !180512      ; 2 uses
  %i.ag = icmp eq ptr %i.ad, %i.n, !dbg !180495
  br i1 %i.ag, label %._crit_edge, label %scalar.ph, !dbg !180496, !llvm.loop !180519

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %.lcssa29 = phi i32 [ %i.ab, %middle.block ], [ %i.af, %scalar.ph ], !dbg !180512
  store i32 %.lcssa29, ptr %i.q, align 8, !dbg !180512, !alias.scope !180505
  br label %bb.f, !dbg !180496

bb.f:                                             ; preds = %._crit_edge, %bb.d
  %i.ah = icmp ult i64 %2, %i.h, !dbg !180520
  %.not12 = icmp ugt i64 %2, %i.l
  %or.cond13 = or i1 %.not12, %i.ah, !dbg !180520
  br i1 %or.cond13, label %bb.h, label %bb.g, !dbg !180520, !prof !27399

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %2, !dbg !180524
  %i.aj = icmp samesign eq i64 %i.h, %2, !dbg !180529
  br i1 %i.aj, label %bb.i, label %.lr.ph17, !dbg !180532

.lr.ph17:                                         ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.h, !dbg !180533 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.promoted19 = load i32, ptr %i.al, align 8, !alias.scope !180535 ; 2 uses
  %7 = shl i64 %2, 2, !dbg !180532
  %i.am = add i64 %7, -4, !dbg !180532
  %8 = shl i64 %i.h, 2, !dbg !180532
  %9 = sub i64 %i.am, %8, !dbg !180532            ; 2 uses
  %10 = lshr exact i64 %9, 2, !dbg !180532
  %i.an = add nuw nsw i64 %10, 1, !dbg !180532    ; 2 uses
  %min.iters.check33 = icmp ult i64 %9, 28, !dbg !180532
  br i1 %min.iters.check33, label %scalar.ph32.preheader, label %vector.ph34, !dbg !180532

vector.ph34:                                      ; preds = %.lr.ph17
  %n.vec35 = and i64 %i.an, 9223372036854775800   ; 3 uses
  %i.ao = shl i64 %n.vec35, 2
  %i.ap = getelementptr i8, ptr %i.ak, i64 %i.ao
  %i.aq = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.promoted19, i64 0
  br label %vector.body36, !dbg !180532

vector.body36:                                    ; preds = %vector.body36, %vector.ph34
  %index37 = phi i64 [ 0, %vector.ph34 ], [ %index.next43, %vector.body36 ] ; 2 uses
  %vec.phi38 = phi <4 x i32> [ %i.aq, %vector.ph34 ], [ %i.at, %vector.body36 ]
  %vec.phi39 = phi <4 x i32> [ zeroinitializer, %vector.ph34 ], [ %i.au, %vector.body36 ]
  %i.ar = shl i64 %index37, 2
  %next.gep40 = getelementptr i8, ptr %i.ak, i64 %i.ar ; 2 uses
  %i.as = getelementptr i8, ptr %next.gep40, i64 16, !dbg !180540
  %wide.load41 = load <4 x i32>, ptr %next.gep40, align 4, !dbg !180540
  %wide.load42 = load <4 x i32>, ptr %i.as, align 4, !dbg !180540
  %i.at = add <4 x i32> %vec.phi38, %wide.load41, !dbg !180541 ; 2 uses
  %i.au = add <4 x i32> %vec.phi39, %wide.load42, !dbg !180541 ; 2 uses
  %index.next43 = add nuw i64 %index37, 8         ; 2 uses
  %i.av = icmp eq i64 %index.next43, %n.vec35, !dbg !180532
  br i1 %i.av, label %middle.block44, label %vector.body36, !dbg !180532, !llvm.loop !180544

middle.block44:                                   ; preds = %vector.body36
  %bin.rdx45 = add <4 x i32> %i.au, %i.at, !dbg !180532
  %i.aw = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx45), !dbg !180532 ; 2 uses
  %cmp.n46 = icmp eq i64 %i.an, %n.vec35, !dbg !180532
  br i1 %cmp.n46, label %._crit_edge18, label %scalar.ph32.preheader, !dbg !180532

scalar.ph32.preheader:                            ; preds = %.lr.ph17, %middle.block44
  %.ph = phi i32 [ %.promoted19, %.lr.ph17 ], [ %i.aw, %middle.block44 ]
  %.sroa.06.015.ph = phi ptr [ %i.ak, %.lr.ph17 ], [ %i.ap, %middle.block44 ]
  br label %scalar.ph32, !dbg !180532

bb.h:                                             ; preds = %bb.f
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.h, i64 noundef %2, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @396) #45, !dbg !180545
  unreachable, !dbg !180545

scalar.ph32:                                      ; preds = %scalar.ph32.preheader, %scalar.ph32
  %i.ax = phi i32 [ %i.ba, %scalar.ph32 ], [ %.ph, %scalar.ph32.preheader ], !dbg !180546
  %.sroa.06.015 = phi ptr [ %i.ay, %scalar.ph32 ], [ %.sroa.06.015.ph, %scalar.ph32.preheader ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.06.015, i64 4, !dbg !180546 ; 2 uses
  %i.az = load i32, ptr %.sroa.06.015, align 4, !dbg !180540, !noundef !14
  %i.ba = add i32 %i.ax, %i.az, !dbg !180541      ; 2 uses
  %i.bb = icmp eq ptr %i.ay, %i.ai, !dbg !180529
  br i1 %i.bb, label %._crit_edge18, label %scalar.ph32, !dbg !180532, !llvm.loop !180548

._crit_edge18:                                    ; preds = %scalar.ph32, %middle.block44
  %.lcssa = phi i32 [ %i.aw, %middle.block44 ], [ %i.ba, %scalar.ph32 ], !dbg !180541
  store i32 %.lcssa, ptr %i.al, align 8, !dbg !180541, !alias.scope !180535
  br label %bb.i, !dbg !180532

bb.i:                                             ; preds = %._crit_edge18, %bb.g
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !180471
  store i64 %1, ptr %i.bc, align 8, !dbg !180549
  store i64 %2, ptr %i.a, align 8, !dbg !180550
  ret void, !dbg !180551
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowllEINtNtB6_8no_nulls23RollingAggWindowNoNullslE7get_aggCskY9G75ZWc4U_11polars_expr(ptr noalias noundef readonly align 8 captures(none) dereferenceable(88) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !180552 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !180553), !dbg !180556
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !180557
  %i.b = load i64, ptr %i.a, align 8, !dbg !180557, !alias.scope !180553, !noundef !14 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0, !dbg !180557
  br i1 %i.c, label %bb.b, label %bb.c, !dbg !180557

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !180559
  %i.e = load i32, ptr %i.d, align 8, !dbg !180559, !alias.scope !180553, !noundef !14
  br label %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowllE7get_sumCskY9G75ZWc4U_11polars_expr.exit, !dbg !180560

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !180561
  %i.g = load i64, ptr %i.f, align 8, !dbg !180561, !alias.scope !180553, !noundef !14
  %i.h = icmp eq i64 %i.b, %i.g, !dbg !180562
  br i1 %i.h, label %bb.e, label %bb.d, !dbg !180562

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !180563
  %i.j = load i64, ptr %i.i, align 8, !dbg !180563, !alias.scope !180553, !noundef !14
  %i.k = icmp eq i64 %i.b, %i.j, !dbg !180564
  br i1 %i.k, label %bb.g, label %bb.f, !dbg !180564

bb.e:                                             ; preds = %bb.c
  %i.l = tail call noundef i32 @_RNvYlNtNtCs2mZqlW55729_12polars_utils5float7IsFloat13pos_inf_valueCskY9G75ZWc4U_11polars_expr(), !dbg !180565, !noalias !180553
  br label %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowllE7get_sumCskY9G75ZWc4U_11polars_expr.exit, !dbg !180566

bb.f:                                             ; preds = %bb.d
  %i.m = tail call noundef i32 @_RNvYlNtNtCs2mZqlW55729_12polars_utils5float7IsFloat9nan_valueCskY9G75ZWc4U_11polars_expr(), !dbg !180567, !noalias !180553
  br label %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowllE7get_sumCskY9G75ZWc4U_11polars_expr.exit, !dbg !180568

bb.g:                                             ; preds = %bb.d
  %i.n = tail call noundef i32 @_RNvYlNtNtCs2mZqlW55729_12polars_utils5float7IsFloat13neg_inf_valueCskY9G75ZWc4U_11polars_expr(), !dbg !180569, !noalias !180553
  br label %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowllE7get_sumCskY9G75ZWc4U_11polars_expr.exit, !dbg !180568

_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowllE7get_sumCskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.b, %bb.e, %bb.f, %bb.g
  %.sroa.5.0.i = phi i32 [ %i.e, %bb.b ], [ %i.l, %bb.e ], [ %i.n, %bb.g ], [ %i.m, %bb.f ], !dbg !180570
  %i.o = insertvalue { i32, i32 } { i32 1, i32 undef }, i32 %.sroa.5.0.i, 1, !dbg !180571
  ret { i32, i32 } %i.o, !dbg !180572
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowmmEINtNtB6_8no_nulls23RollingAggWindowNoNullsmE3newCskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef range(i64 0, 2305843009213693952) %2, i64 noundef %3, i64 noundef %4, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %5, i64 noundef range(i64 0, 2) %6, i64 %7) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !180573 {
bb.a:
  %.not11.i = icmp ugt i64 %3, %2
  br i1 %.not11.i, label %bb.b, label %._crit_edge.i, !dbg !180574, !prof !27399

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %3, i64 noundef %3, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @397) #45, !dbg !180584, !noalias !180585
  unreachable, !dbg !180584

._crit_edge.i:                                    ; preds = %bb.a
  %i.a = icmp ult i64 %4, %3, !dbg !180588
  %.not12.i = icmp ugt i64 %4, %2
  %or.cond13.i = or i1 %.not12.i, %i.a, !dbg !180588
  br i1 %or.cond13.i, label %bb.d, label %bb.c, !dbg !180588, !prof !27399

bb.c:                                             ; preds = %._crit_edge.i
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %4, !dbg !180594
  %i.c = icmp samesign eq i64 %3, %4, !dbg !180608
  br i1 %i.c, label %_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowmmEINtNtB6_8no_nulls23RollingAggWindowNoNullsmE6updateCskY9G75ZWc4U_11polars_expr.exit, label %.lr.ph17.i, !dbg !180618

.lr.ph17.i:                                       ; preds = %bb.c
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %3, !dbg !180619 ; 3 uses
  %8 = shl i64 %4, 2, !dbg !180618
  %i.e = add i64 %8, -4, !dbg !180618
  %9 = shl i64 %3, 2, !dbg !180618
  %10 = sub i64 %i.e, %9, !dbg !180618            ; 2 uses
  %11 = lshr exact i64 %10, 2, !dbg !180618
  %i.f = add nuw nsw i64 %11, 1, !dbg !180618     ; 2 uses
  %min.iters.check = icmp ult i64 %10, 28, !dbg !180618
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph, !dbg !180618

vector.ph:                                        ; preds = %.lr.ph17.i
  %n.vec = and i64 %i.f, 9223372036854775800      ; 3 uses
  %i.g = shl i64 %n.vec, 2
  %i.h = getelementptr i8, ptr %i.d, i64 %i.g
  br label %vector.body, !dbg !180618

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.k, %vector.body ]
  %vec.phi8 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.l, %vector.body ]
  %i.i = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.i ; 2 uses
  %i.j = getelementptr i8, ptr %next.gep, i64 16, !dbg !180623
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !dbg !180623, !noalias !180585
  %wide.load9 = load <4 x i32>, ptr %i.j, align 4, !dbg !180623, !noalias !180585
  %i.k = add <4 x i32> %wide.load, %vec.phi, !dbg !180625 ; 2 uses
  %i.l = add <4 x i32> %wide.load9, %vec.phi8, !dbg !180625 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec, !dbg !180618
  br i1 %i.m, label %middle.block, label %vector.body, !dbg !180618, !llvm.loop !180628

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.l, %i.k, !dbg !180618
  %i.n = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx), !dbg !180618 ; 2 uses
  %cmp.n = icmp eq i64 %i.f, %n.vec, !dbg !180618
  br i1 %cmp.n, label %_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowmmEINtNtB6_8no_nulls23RollingAggWindowNoNullsmE6updateCskY9G75ZWc4U_11polars_expr.exit, label %scalar.ph.preheader, !dbg !180618

scalar.ph.preheader:                              ; preds = %.lr.ph17.i, %middle.block
  %.ph = phi i32 [ 0, %.lr.ph17.i ], [ %i.n, %middle.block ]
  %.sroa.06.015.i.ph = phi ptr [ %i.d, %.lr.ph17.i ], [ %i.h, %middle.block ]
  br label %scalar.ph, !dbg !180618

bb.d:                                             ; preds = %._crit_edge.i
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %3, i64 noundef %4, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @396) #45, !dbg !180629, !noalias !180585
  unreachable, !dbg !180629

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.o = phi i32 [ %i.r, %scalar.ph ], [ %.ph, %scalar.ph.preheader ], !dbg !180630
  %.sroa.06.015.i = phi ptr [ %i.p, %scalar.ph ], [ %.sroa.06.015.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.06.015.i, i64 4, !dbg !180630 ; 2 uses
  %i.q = load i32, ptr %.sroa.06.015.i, align 4, !dbg !180623, !noalias !180585, !noundef !14
  %i.r = add i32 %i.q, %i.o, !dbg !180625         ; 2 uses
  %i.s = icmp eq ptr %i.p, %i.b, !dbg !180608
  br i1 %i.s, label %_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowmmEINtNtB6_8no_nulls23RollingAggWindowNoNullsmE6updateCskY9G75ZWc4U_11polars_expr.exit, label %scalar.ph, !dbg !180618, !llvm.loop !180633

_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowmmEINtNtB6_8no_nulls23RollingAggWindowNoNullsmE6updateCskY9G75ZWc4U_11polars_expr.exit: ; preds = %scalar.ph, %middle.block, %bb.c
  %.sroa.16.2 = phi i32 [ 0, %bb.c ], [ %i.n, %middle.block ], [ %i.r, %scalar.ph ], !dbg !180634
  store ptr %1, ptr %0, align 8, !dbg !180635
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !180635
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !180635
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !180635
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !180635
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa_idx, i8 0, i64 40, i1 false), !dbg !180635
  store i64 %3, ptr %.sroa.10.0..sroa_idx, align 8, !dbg !180635
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !180635
  store i64 %4, ptr %.sroa.13.0..sroa_idx, align 8, !dbg !180635
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !180635
  store i32 %.sroa.16.2, ptr %.sroa.16.0..sroa_idx, align 8, !dbg !180635
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 76, !dbg !180635
  store i32 0, ptr %.sroa.21.0..sroa_idx, align 4, !dbg !180635
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !180635
  store i32 0, ptr %.sroa.22.0..sroa_idx, align 8, !dbg !180635
  ret void, !dbg !180636
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowmmEINtNtB6_8no_nulls23RollingAggWindowNoNullsmE6updateCskY9G75ZWc4U_11polars_expr(ptr noalias nofree noundef align 8 captures(none) dereferenceable(88) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !180581 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !180637 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !180637, !noundef !14 ; 2 uses
  %.not = icmp ult i64 %1, %i.b, !dbg !180638
  br i1 %.not, label %._crit_edge22, label %bb.b, !dbg !180638

._crit_edge22:                                    ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !dbg !180639
  br label %bb.c, !dbg !180638

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !180640
  store i32 0, ptr %i.c, align 8, !dbg !180640, !alias.scope !180642
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 76, !dbg !180645
  store i32 0, ptr %i.d, align 4, !dbg !180645, !alias.scope !180642
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !180646
  store i32 0, ptr %i.e, align 8, !dbg !180646, !alias.scope !180642
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !180647
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i8 0, i64 32, i1 false), !dbg !180647, !alias.scope !180642
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !180648
  store i64 %1, ptr %i.g, align 8, !dbg !180648
  store i64 %1, ptr %i.a, align 8, !dbg !180649
  br label %bb.c, !dbg !180650

bb.c:                                             ; preds = %._crit_edge22, %bb.b
  %i.h = phi i64 [ %i.b, %._crit_edge22 ], [ %1, %bb.b ] ; 5 uses
  %i.i = phi i64 [ %.pre, %._crit_edge22 ], [ %1, %bb.b ], !dbg !180639 ; 5 uses
  %i.j = load ptr, ptr %0, align 8, !dbg !180651, !nonnull !14, !align !5752, !noundef !14 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !180651
  %i.l = load i64, ptr %i.k, align 8, !dbg !180651, !noundef !14 ; 4 uses
  %i.m = icmp ult i64 %1, %i.i, !dbg !180652
  %.not11 = icmp ugt i64 %1, %i.l
  %or.cond = or i1 %.not11, %i.m, !dbg !180652
  br i1 %or.cond, label %bb.e, label %bb.d, !dbg !180652, !prof !27399

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %1, !dbg !180656
  %i.o = icmp samesign eq i64 %i.i, %1, !dbg !180663
  br i1 %i.o, label %bb.f, label %.lr.ph, !dbg !180664

.lr.ph:                                           ; preds = %bb.d
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.i, !dbg !180670 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.promoted = load i32, ptr %i.q, align 8, !alias.scope !180673 ; 2 uses
  %3 = shl i64 %1, 2, !dbg !180664
  %i.r = add i64 %3, -4, !dbg !180664
  %4 = shl i64 %i.i, 2, !dbg !180664
  %5 = sub i64 %i.r, %4, !dbg !180664             ; 2 uses
  %6 = lshr exact i64 %5, 2, !dbg !180664
  %i.s = add nuw nsw i64 %6, 1, !dbg !180664      ; 2 uses
  %min.iters.check = icmp ult i64 %5, 28, !dbg !180664
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph, !dbg !180664

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.s, 9223372036854775800      ; 3 uses
  %i.t = shl i64 %n.vec, 2
  %i.u = getelementptr i8, ptr %i.p, i64 %i.t
  %i.v = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.promoted, i64 0
  br label %vector.body, !dbg !180664

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.v, %vector.ph ], [ %i.y, %vector.body ]
  %vec.phi30 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.z, %vector.body ]
  %i.w = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.w ; 2 uses
  %i.x = getelementptr i8, ptr %next.gep, i64 16, !dbg !180678
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !dbg !180678
  %wide.load31 = load <4 x i32>, ptr %i.x, align 4, !dbg !180678
  %i.y = sub <4 x i32> %vec.phi, %wide.load, !dbg !180680 ; 2 uses
  %i.z = sub <4 x i32> %vec.phi30, %wide.load31, !dbg !180680 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec, !dbg !180664
  br i1 %i.aa, label %middle.block, label %vector.body, !dbg !180664, !llvm.loop !180683

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.z, %i.y, !dbg !180664
  %i.ab = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx), !dbg !180664 ; 2 uses
  %cmp.n = icmp eq i64 %i.s, %n.vec, !dbg !180664
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader, !dbg !180664

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.ph52 = phi i32 [ %.promoted, %.lr.ph ], [ %i.ab, %middle.block ]
  %.sroa.03.014.ph = phi ptr [ %i.p, %.lr.ph ], [ %i.u, %middle.block ]
  br label %scalar.ph, !dbg !180664

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.i, i64 noundef %1, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @397) #45, !dbg !180684
  unreachable, !dbg !180684

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.ac = phi i32 [ %i.af, %scalar.ph ], [ %.ph52, %scalar.ph.preheader ], !dbg !180685
  %.sroa.03.014 = phi ptr [ %i.ad, %scalar.ph ], [ %.sroa.03.014.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.03.014, i64 4, !dbg !180685 ; 2 uses
  %i.ae = load i32, ptr %.sroa.03.014, align 4, !dbg !180678, !noundef !14
  %i.af = sub i32 %i.ac, %i.ae, !dbg !180680      ; 2 uses
  %i.ag = icmp eq ptr %i.ad, %i.n, !dbg !180663
  br i1 %i.ag, label %._crit_edge, label %scalar.ph, !dbg !180664, !llvm.loop !180687

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %.lcssa29 = phi i32 [ %i.ab, %middle.block ], [ %i.af, %scalar.ph ], !dbg !180680
  store i32 %.lcssa29, ptr %i.q, align 8, !dbg !180680, !alias.scope !180673
  br label %bb.f, !dbg !180664

bb.f:                                             ; preds = %._crit_edge, %bb.d
  %i.ah = icmp ult i64 %2, %i.h, !dbg !180688
  %.not12 = icmp ugt i64 %2, %i.l
  %or.cond13 = or i1 %.not12, %i.ah, !dbg !180688
  br i1 %or.cond13, label %bb.h, label %bb.g, !dbg !180688, !prof !27399

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %2, !dbg !180692
  %i.aj = icmp samesign eq i64 %i.h, %2, !dbg !180697
  br i1 %i.aj, label %bb.i, label %.lr.ph17, !dbg !180700

.lr.ph17:                                         ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.h, !dbg !180701 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.promoted19 = load i32, ptr %i.al, align 8, !alias.scope !180703 ; 2 uses
  %7 = shl i64 %2, 2, !dbg !180700
  %i.am = add i64 %7, -4, !dbg !180700
  %8 = shl i64 %i.h, 2, !dbg !180700
  %9 = sub i64 %i.am, %8, !dbg !180700            ; 2 uses
  %10 = lshr exact i64 %9, 2, !dbg !180700
  %i.an = add nuw nsw i64 %10, 1, !dbg !180700    ; 2 uses
  %min.iters.check33 = icmp ult i64 %9, 28, !dbg !180700
  br i1 %min.iters.check33, label %scalar.ph32.preheader, label %vector.ph34, !dbg !180700

vector.ph34:                                      ; preds = %.lr.ph17
  %n.vec35 = and i64 %i.an, 9223372036854775800   ; 3 uses
  %i.ao = shl i64 %n.vec35, 2
  %i.ap = getelementptr i8, ptr %i.ak, i64 %i.ao
  %i.aq = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.promoted19, i64 0
  br label %vector.body36, !dbg !180700

vector.body36:                                    ; preds = %vector.body36, %vector.ph34
  %index37 = phi i64 [ 0, %vector.ph34 ], [ %index.next43, %vector.body36 ] ; 2 uses
  %vec.phi38 = phi <4 x i32> [ %i.aq, %vector.ph34 ], [ %i.at, %vector.body36 ]
  %vec.phi39 = phi <4 x i32> [ zeroinitializer, %vector.ph34 ], [ %i.au, %vector.body36 ]
  %i.ar = shl i64 %index37, 2
  %next.gep40 = getelementptr i8, ptr %i.ak, i64 %i.ar ; 2 uses
  %i.as = getelementptr i8, ptr %next.gep40, i64 16, !dbg !180708
  %wide.load41 = load <4 x i32>, ptr %next.gep40, align 4, !dbg !180708
  %wide.load42 = load <4 x i32>, ptr %i.as, align 4, !dbg !180708
  %i.at = add <4 x i32> %vec.phi38, %wide.load41, !dbg !180709 ; 2 uses
  %i.au = add <4 x i32> %vec.phi39, %wide.load42, !dbg !180709 ; 2 uses
  %index.next43 = add nuw i64 %index37, 8         ; 2 uses
  %i.av = icmp eq i64 %index.next43, %n.vec35, !dbg !180700
  br i1 %i.av, label %middle.block44, label %vector.body36, !dbg !180700, !llvm.loop !180712

middle.block44:                                   ; preds = %vector.body36
  %bin.rdx45 = add <4 x i32> %i.au, %i.at, !dbg !180700
  %i.aw = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx45), !dbg !180700 ; 2 uses
  %cmp.n46 = icmp eq i64 %i.an, %n.vec35, !dbg !180700
  br i1 %cmp.n46, label %._crit_edge18, label %scalar.ph32.preheader, !dbg !180700

scalar.ph32.preheader:                            ; preds = %.lr.ph17, %middle.block44
  %.ph = phi i32 [ %.promoted19, %.lr.ph17 ], [ %i.aw, %middle.block44 ]
  %.sroa.06.015.ph = phi ptr [ %i.ak, %.lr.ph17 ], [ %i.ap, %middle.block44 ]
  br label %scalar.ph32, !dbg !180700

bb.h:                                             ; preds = %bb.f
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.h, i64 noundef %2, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @396) #45, !dbg !180713
  unreachable, !dbg !180713

scalar.ph32:                                      ; preds = %scalar.ph32.preheader, %scalar.ph32
  %i.ax = phi i32 [ %i.ba, %scalar.ph32 ], [ %.ph, %scalar.ph32.preheader ], !dbg !180714
  %.sroa.06.015 = phi ptr [ %i.ay, %scalar.ph32 ], [ %.sroa.06.015.ph, %scalar.ph32.preheader ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.06.015, i64 4, !dbg !180714 ; 2 uses
  %i.az = load i32, ptr %.sroa.06.015, align 4, !dbg !180708, !noundef !14
  %i.ba = add i32 %i.ax, %i.az, !dbg !180709      ; 2 uses
  %i.bb = icmp eq ptr %i.ay, %i.ai, !dbg !180697
  br i1 %i.bb, label %._crit_edge18, label %scalar.ph32, !dbg !180700, !llvm.loop !180716

._crit_edge18:                                    ; preds = %scalar.ph32, %middle.block44
  %.lcssa = phi i32 [ %i.aw, %middle.block44 ], [ %i.ba, %scalar.ph32 ], !dbg !180709
  store i32 %.lcssa, ptr %i.al, align 8, !dbg !180709, !alias.scope !180703
  br label %bb.i, !dbg !180700

bb.i:                                             ; preds = %._crit_edge18, %bb.g
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !180639
  store i64 %1, ptr %i.bc, align 8, !dbg !180717
  store i64 %2, ptr %i.a, align 8, !dbg !180718
  ret void, !dbg !180719
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowmmEINtNtB6_8no_nulls23RollingAggWindowNoNullsmE7get_aggCskY9G75ZWc4U_11polars_expr(ptr noalias noundef readonly align 8 captures(none) dereferenceable(88) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !180720 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !180721), !dbg !180724
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !180725
  %i.b = load i64, ptr %i.a, align 8, !dbg !180725, !alias.scope !180721, !noundef !14 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0, !dbg !180725
  br i1 %i.c, label %bb.b, label %bb.c, !dbg !180725

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !180727
  %i.e = load i32, ptr %i.d, align 8, !dbg !180727, !alias.scope !180721, !noundef !14
  br label %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowmmE7get_sumCskY9G75ZWc4U_11polars_expr.exit, !dbg !180728

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !180729
  %i.g = load i64, ptr %i.f, align 8, !dbg !180729, !alias.scope !180721, !noundef !14
  %i.h = icmp eq i64 %i.b, %i.g, !dbg !180730
  br i1 %i.h, label %bb.e, label %bb.d, !dbg !180730

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !180731
  %i.j = load i64, ptr %i.i, align 8, !dbg !180731, !alias.scope !180721, !noundef !14
  %i.k = icmp eq i64 %i.b, %i.j, !dbg !180732
  br i1 %i.k, label %bb.g, label %bb.f, !dbg !180732

bb.e:                                             ; preds = %bb.c
  %i.l = tail call noundef i32 @_RNvYmNtNtCs2mZqlW55729_12polars_utils5float7IsFloat13pos_inf_valueCskY9G75ZWc4U_11polars_expr(), !dbg !180733, !noalias !180721
  br label %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowmmE7get_sumCskY9G75ZWc4U_11polars_expr.exit, !dbg !180734

bb.f:                                             ; preds = %bb.d
  %i.m = tail call noundef i32 @_RNvYmNtNtCs2mZqlW55729_12polars_utils5float7IsFloat9nan_valueCskY9G75ZWc4U_11polars_expr(), !dbg !180735, !noalias !180721
  br label %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowmmE7get_sumCskY9G75ZWc4U_11polars_expr.exit, !dbg !180736

bb.g:                                             ; preds = %bb.d
  %i.n = tail call noundef i32 @_RNvYmNtNtCs2mZqlW55729_12polars_utils5float7IsFloat13neg_inf_valueCskY9G75ZWc4U_11polars_expr(), !dbg !180737, !noalias !180721
  br label %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowmmE7get_sumCskY9G75ZWc4U_11polars_expr.exit, !dbg !180736

_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowmmE7get_sumCskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.b, %bb.e, %bb.f, %bb.g
  %.sroa.5.0.i = phi i32 [ %i.e, %bb.b ], [ %i.l, %bb.e ], [ %i.n, %bb.g ], [ %i.m, %bb.f ], !dbg !180738
  %i.o = insertvalue { i32, i32 } { i32 1, i32 undef }, i32 %.sroa.5.0.i, 1, !dbg !180739
  ret { i32, i32 } %i.o, !dbg !180740
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindownnEINtNtB6_8no_nulls23RollingAggWindowNoNullsnE3newCskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 16 captures(none) dereferenceable(128) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %1, i64 noundef range(i64 0, 576460752303423488) %2, i64 noundef %3, i64 noundef %4, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %5, i64 noundef range(i64 0, 2) %6, i64 %7) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !180741 {
bb.a:
  %.not11.i = icmp ugt i64 %3, %2
  br i1 %.not11.i, label %bb.b, label %._crit_edge.i, !dbg !180742, !prof !27399

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %3, i64 noundef %3, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @397) #45, !dbg !180752, !noalias !180753
  unreachable, !dbg !180752

._crit_edge.i:                                    ; preds = %bb.a
  %i.a = icmp ult i64 %4, %3, !dbg !180756
  %.not12.i = icmp ugt i64 %4, %2
  %or.cond13.i = or i1 %.not12.i, %i.a, !dbg !180756
  br i1 %or.cond13.i, label %bb.d, label %bb.c, !dbg !180756, !prof !27399

bb.c:                                             ; preds = %._crit_edge.i
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %4, !dbg !180762
  %i.c = icmp samesign eq i64 %3, %4, !dbg !180776
  br i1 %i.c, label %_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindownnEINtNtB6_8no_nulls23RollingAggWindowNoNullsnE6updateCskY9G75ZWc4U_11polars_expr.exit, label %.lr.ph17.i, !dbg !180786

.lr.ph17.i:                                       ; preds = %bb.c
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %3, !dbg !180787
  br label %bb.e, !dbg !180786

bb.d:                                             ; preds = %._crit_edge.i
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %3, i64 noundef %4, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @396) #45, !dbg !180791, !noalias !180753
  unreachable, !dbg !180791

bb.e:                                             ; preds = %bb.e, %.lr.ph17.i
  %i.e = phi i128 [ 0, %.lr.ph17.i ], [ %i.h, %bb.e ], !dbg !180792
  %.sroa.06.015.i = phi ptr [ %i.d, %.lr.ph17.i ], [ %i.f, %bb.e ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.06.015.i, i64 16, !dbg !180792 ; 2 uses
  %i.g = load i128, ptr %.sroa.06.015.i, align 16, !dbg !180795, !noalias !180753, !noundef !14
  %i.h = add i128 %i.g, %i.e, !dbg !180797        ; 2 uses
  %i.i = icmp eq ptr %i.f, %i.b, !dbg !180776
  br i1 %i.i, label %_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindownnEINtNtB6_8no_nulls23RollingAggWindowNoNullsnE6updateCskY9G75ZWc4U_11polars_expr.exit, label %bb.e, !dbg !180786

_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindownnEINtNtB6_8no_nulls23RollingAggWindowNoNullsnE6updateCskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.e, %bb.c
  %.sroa.7.2 = phi i128 [ 0, %bb.c ], [ %i.h, %bb.e ], !dbg !180800
  store ptr %1, ptr %0, align 16, !dbg !180801
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !180801
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !180801
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !180801
  store i128 %.sroa.7.2, ptr %.sroa.7.0..sroa_idx, align 16, !dbg !180801
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !180801
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104, !dbg !180801
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %.sroa.13.0..sroa_idx, i8 0, i64 72, i1 false), !dbg !180801
  store i64 %3, ptr %.sroa.16.0..sroa_idx, align 8, !dbg !180801
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !180801
  store i64 %4, ptr %.sroa.19.0..sroa_idx, align 16, !dbg !180801
  ret void, !dbg !180802
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindownnEINtNtB6_8no_nulls23RollingAggWindowNoNullsnE6updateCskY9G75ZWc4U_11polars_expr(ptr noalias nofree noundef align 16 captures(none) dereferenceable(128) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !180749 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !180803 ; 3 uses
  %i.b = load i64, ptr %i.a, align 16, !dbg !180803, !noundef !14 ; 2 uses
  %.not = icmp ult i64 %1, %i.b, !dbg !180804
  br i1 %.not, label %._crit_edge22, label %bb.b, !dbg !180804

._crit_edge22:                                    ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !dbg !180805
  br label %bb.c, !dbg !180804

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !180806
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !180808
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.c, i8 0, i64 48, i1 false), !dbg !180809, !alias.scope !180810
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i8 0, i64 32, i1 false), !dbg !180808, !alias.scope !180810
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104, !dbg !180813
  store i64 %1, ptr %i.e, align 8, !dbg !180813
  store i64 %1, ptr %i.a, align 16, !dbg !180814
  br label %bb.c, !dbg !180815

bb.c:                                             ; preds = %._crit_edge22, %bb.b
  %i.f = phi i64 [ %i.b, %._crit_edge22 ], [ %1, %bb.b ] ; 4 uses
  %i.g = phi i64 [ %.pre, %._crit_edge22 ], [ %1, %bb.b ], !dbg !180805 ; 4 uses
  %i.h = load ptr, ptr %0, align 16, !dbg !180816, !nonnull !14, !align !109780, !noundef !14 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !180816
  %i.j = load i64, ptr %i.i, align 8, !dbg !180816, !noundef !14 ; 4 uses
  %i.k = icmp ult i64 %1, %i.g, !dbg !180817
  %.not11 = icmp ugt i64 %1, %i.j
  %or.cond = or i1 %.not11, %i.k, !dbg !180817
  br i1 %or.cond, label %bb.e, label %bb.d, !dbg !180817, !prof !27399

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %1, !dbg !180821
  %i.m = icmp samesign eq i64 %i.g, %1, !dbg !180828
  br i1 %i.m, label %bb.g, label %.lr.ph, !dbg !180829

.lr.ph:                                           ; preds = %bb.d
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.g, !dbg !180835
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowttEINtNtB6_8no_nulls23RollingAggWindowNoNullstE6updateCskY9G75ZWc4U_11polars_expr:bb.a
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.i, i64 noundef %1, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @397) #45, !dbg !181353
  unreachable, !dbg !181353

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %i.ao = phi i16 [ %i.ar, %vec.epilog.scalar.ph ], [ %.ph80, %vec.epilog.scalar.ph.preheader ], !dbg !181350
  %.sroa.03.014 = phi ptr [ %i.ap, %vec.epilog.scalar.ph ], [ %.sroa.03.014.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.03.014, i64 2, !dbg !181350 ; 2 uses
  %i.aq = load i16, ptr %.sroa.03.014, align 2, !dbg !181344, !noundef !14
  %i.ar = sub i16 %i.ao, %i.aq, !dbg !181346      ; 2 uses
  %i.as = icmp eq ptr %i.ap, %i.n, !dbg !181329
  br i1 %i.as, label %._crit_edge, label %vec.epilog.scalar.ph, !dbg !181330, !llvm.loop !181354

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa29 = phi i16 [ %i.an, %vec.epilog.middle.block ], [ %i.ag, %middle.block ], [ %i.ar, %vec.epilog.scalar.ph ], !dbg !181346
  store i16 %.lcssa29, ptr %i.q, align 8, !dbg !181346, !alias.scope !181339
  br label %bb.f, !dbg !181330

bb.f:                                             ; preds = %._crit_edge, %bb.d
  %i.at = icmp ult i64 %2, %i.h, !dbg !181355
  %.not12 = icmp ugt i64 %2, %i.l
  %or.cond13 = or i1 %.not12, %i.at, !dbg !181355
  br i1 %or.cond13, label %bb.h, label %bb.g, !dbg !181355, !prof !27399

bb.g:                                             ; preds = %bb.f
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %2, !dbg !181359
  %i.av = icmp samesign eq i64 %i.h, %2, !dbg !181364
  br i1 %i.av, label %bb.i, label %iter.check60, !dbg !181367

iter.check60:                                     ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.h, !dbg !181368 ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.promoted19 = load i16, ptr %i.ax, align 8, !alias.scope !181370 ; 3 uses
  %i.ay = shl i64 %2, 1, !dbg !181367
  %i.az = add i64 %i.ay, -2, !dbg !181367
  %i.ba = shl i64 %i.h, 1, !dbg !181367
  %i.bb = sub i64 %i.az, %i.ba, !dbg !181367      ; 3 uses
  %i.bc = lshr exact i64 %i.bb, 1, !dbg !181367
  %i.bd = add nuw i64 %i.bc, 1, !dbg !181367      ; 5 uses
  %min.iters.check42 = icmp ult i64 %i.bb, 6, !dbg !181367
  br i1 %min.iters.check42, label %vec.epilog.scalar.ph61.preheader, label %vector.main.loop.iter.check43, !dbg !181367

vector.main.loop.iter.check43:                    ; preds = %iter.check60
  %min.iters.check44 = icmp ult i64 %i.bb, 30, !dbg !181367
  br i1 %min.iters.check44, label %vec.epilog.ph64, label %vector.ph45, !dbg !181367

vector.ph45:                                      ; preds = %vector.main.loop.iter.check43
  %i.be = and i64 %i.bd, 12
  %n.vec46 = and i64 %i.bd, -16                   ; 4 uses
  %i.bf = shl i64 %n.vec46, 1
  %i.bg = getelementptr i8, ptr %i.aw, i64 %i.bf
  %i.bh = insertelement <8 x i16> <i16 poison, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>, i16 %.promoted19, i64 0
  br label %vector.body47, !dbg !181367

vector.body47:                                    ; preds = %vector.body47, %vector.ph45
  %index48 = phi i64 [ 0, %vector.ph45 ], [ %index.next54, %vector.body47 ] ; 2 uses
  %vec.phi49 = phi <8 x i16> [ %i.bh, %vector.ph45 ], [ %i.bk, %vector.body47 ]
  %vec.phi50 = phi <8 x i16> [ zeroinitializer, %vector.ph45 ], [ %i.bl, %vector.body47 ]
  %i.bi = shl i64 %index48, 1
  %next.gep51 = getelementptr i8, ptr %i.aw, i64 %i.bi ; 2 uses
  %i.bj = getelementptr i8, ptr %next.gep51, i64 16, !dbg !181375
  %wide.load52 = load <8 x i16>, ptr %next.gep51, align 2, !dbg !181375
  %wide.load53 = load <8 x i16>, ptr %i.bj, align 2, !dbg !181375
  %i.bk = add <8 x i16> %vec.phi49, %wide.load52, !dbg !181376 ; 2 uses
  %i.bl = add <8 x i16> %vec.phi50, %wide.load53, !dbg !181376 ; 2 uses
  %index.next54 = add nuw i64 %index48, 16        ; 2 uses
  %i.bm = icmp eq i64 %index.next54, %n.vec46, !dbg !181367
  br i1 %i.bm, label %middle.block55, label %vector.body47, !dbg !181367, !llvm.loop !181379

middle.block55:                                   ; preds = %vector.body47
  %bin.rdx56 = add <8 x i16> %i.bl, %i.bk, !dbg !181367
  %i.bn = tail call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx56), !dbg !181367 ; 3 uses
  %cmp.n57 = icmp eq i64 %i.bd, %n.vec46, !dbg !181367
  br i1 %cmp.n57, label %._crit_edge18, label %vec.epilog.iter.check62, !dbg !181367

vec.epilog.iter.check62:                          ; preds = %middle.block55
  %min.epilog.iters.check63 = icmp eq i64 %i.be, 0
  br i1 %min.epilog.iters.check63, label %vec.epilog.scalar.ph61.preheader, label %vec.epilog.ph64, !prof !55989

vec.epilog.ph64:                                  ; preds = %vector.main.loop.iter.check43, %vec.epilog.iter.check62
  %vec.epilog.resume.val58 = phi i64 [ %n.vec46, %vec.epilog.iter.check62 ], [ 0, %vector.main.loop.iter.check43 ]
  %bc.merge.rdx59 = phi i16 [ %i.bn, %vec.epilog.iter.check62 ], [ %.promoted19, %vector.main.loop.iter.check43 ], !dbg !181380
  %n.vec65 = and i64 %i.bd, -4                    ; 3 uses
  %i.bo = shl i64 %n.vec65, 1
  %i.bp = getelementptr i8, ptr %i.aw, i64 %i.bo
  %i.bq = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx59, i64 0
  br label %vec.epilog.vector.body66

vec.epilog.vector.body66:                         ; preds = %vec.epilog.vector.body66, %vec.epilog.ph64
  %index67 = phi i64 [ %vec.epilog.resume.val58, %vec.epilog.ph64 ], [ %index.next71, %vec.epilog.vector.body66 ] ; 2 uses
  %vec.phi68 = phi <4 x i16> [ %i.bq, %vec.epilog.ph64 ], [ %i.bs, %vec.epilog.vector.body66 ]
  %i.br = shl i64 %index67, 1
  %next.gep69 = getelementptr i8, ptr %i.aw, i64 %i.br
  %wide.load70 = load <4 x i16>, ptr %next.gep69, align 2, !dbg !181375
  %i.bs = add <4 x i16> %vec.phi68, %wide.load70, !dbg !181376 ; 2 uses
  %index.next71 = add nuw i64 %index67, 4         ; 2 uses
  %i.bt = icmp eq i64 %index.next71, %n.vec65, !dbg !181367
  br i1 %i.bt, label %vec.epilog.middle.block72, label %vec.epilog.vector.body66, !dbg !181367, !llvm.loop !181382

vec.epilog.middle.block72:                        ; preds = %vec.epilog.vector.body66
  %i.bu = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.bs), !dbg !181367 ; 2 uses
  %cmp.n73 = icmp eq i64 %i.bd, %n.vec65, !dbg !181367
  br i1 %cmp.n73, label %._crit_edge18, label %vec.epilog.scalar.ph61.preheader, !dbg !181367

vec.epilog.scalar.ph61.preheader:                 ; preds = %iter.check60, %vec.epilog.iter.check62, %vec.epilog.middle.block72
  %.ph = phi i16 [ %.promoted19, %iter.check60 ], [ %i.bn, %vec.epilog.iter.check62 ], [ %i.bu, %vec.epilog.middle.block72 ]
  %.sroa.06.015.ph = phi ptr [ %i.aw, %iter.check60 ], [ %i.bg, %vec.epilog.iter.check62 ], [ %i.bp, %vec.epilog.middle.block72 ]
  br label %vec.epilog.scalar.ph61, !dbg !181367

bb.h:                                             ; preds = %bb.f
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.h, i64 noundef %2, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @396) #45, !dbg !181383
  unreachable, !dbg !181383

vec.epilog.scalar.ph61:                           ; preds = %vec.epilog.scalar.ph61.preheader, %vec.epilog.scalar.ph61
  %i.bv = phi i16 [ %i.by, %vec.epilog.scalar.ph61 ], [ %.ph, %vec.epilog.scalar.ph61.preheader ], !dbg !181380
  %.sroa.06.015 = phi ptr [ %i.bw, %vec.epilog.scalar.ph61 ], [ %.sroa.06.015.ph, %vec.epilog.scalar.ph61.preheader ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.06.015, i64 2, !dbg !181380 ; 2 uses
  %i.bx = load i16, ptr %.sroa.06.015, align 2, !dbg !181375, !noundef !14
  %i.by = add i16 %i.bv, %i.bx, !dbg !181376      ; 2 uses
  %i.bz = icmp eq ptr %i.bw, %i.au, !dbg !181364
  br i1 %i.bz, label %._crit_edge18, label %vec.epilog.scalar.ph61, !dbg !181367, !llvm.loop !181384

._crit_edge18:                                    ; preds = %vec.epilog.scalar.ph61, %vec.epilog.middle.block72, %middle.block55
  %.lcssa = phi i16 [ %i.bu, %vec.epilog.middle.block72 ], [ %i.bn, %middle.block55 ], [ %i.by, %vec.epilog.scalar.ph61 ], !dbg !181376
  store i16 %.lcssa, ptr %i.ax, align 8, !dbg !181376, !alias.scope !181370
  br label %bb.i, !dbg !181367

bb.i:                                             ; preds = %._crit_edge18, %bb.g
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !181305
  store i64 %1, ptr %i.ca, align 8, !dbg !181385
  store i64 %2, ptr %i.a, align 8, !dbg !181386
  ret void, !dbg !181387
}

; Function Attrs: nonlazybind uwtable
define hidden { i16, i16 } @_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowttEINtNtB6_8no_nulls23RollingAggWindowNoNullstE7get_aggCskY9G75ZWc4U_11polars_expr(ptr noalias noundef readonly align 8 captures(none) dereferenceable(80) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !181388 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !181389), !dbg !181392
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !181393
  %i.b = load i64, ptr %i.a, align 8, !dbg !181393, !alias.scope !181389, !noundef !14 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0, !dbg !181393
  br i1 %i.c, label %bb.b, label %bb.c, !dbg !181393

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !181395
  %i.e = load i16, ptr %i.d, align 8, !dbg !181395, !alias.scope !181389, !noundef !14
  br label %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowttE7get_sumCskY9G75ZWc4U_11polars_expr.exit, !dbg !181396

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !181397
  %i.g = load i64, ptr %i.f, align 8, !dbg !181397, !alias.scope !181389, !noundef !14
  %i.h = icmp eq i64 %i.b, %i.g, !dbg !181398
  br i1 %i.h, label %bb.e, label %bb.d, !dbg !181398

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !181399
  %i.j = load i64, ptr %i.i, align 8, !dbg !181399, !alias.scope !181389, !noundef !14
  %i.k = icmp eq i64 %i.b, %i.j, !dbg !181400
  br i1 %i.k, label %bb.g, label %bb.f, !dbg !181400

bb.e:                                             ; preds = %bb.c
  %i.l = tail call noundef i16 @_RNvYtNtNtCs2mZqlW55729_12polars_utils5float7IsFloat13pos_inf_valueCskY9G75ZWc4U_11polars_expr(), !dbg !181401, !noalias !181389
  br label %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowttE7get_sumCskY9G75ZWc4U_11polars_expr.exit, !dbg !181402

bb.f:                                             ; preds = %bb.d
  %i.m = tail call noundef i16 @_RNvYtNtNtCs2mZqlW55729_12polars_utils5float7IsFloat9nan_valueCskY9G75ZWc4U_11polars_expr(), !dbg !181403, !noalias !181389
  br label %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowttE7get_sumCskY9G75ZWc4U_11polars_expr.exit, !dbg !181404

bb.g:                                             ; preds = %bb.d
  %i.n = tail call noundef i16 @_RNvYtNtNtCs2mZqlW55729_12polars_utils5float7IsFloat13neg_inf_valueCskY9G75ZWc4U_11polars_expr(), !dbg !181405, !noalias !181389
  br label %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowttE7get_sumCskY9G75ZWc4U_11polars_expr.exit, !dbg !181404

_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowttE7get_sumCskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.b, %bb.e, %bb.f, %bb.g
  %.sroa.5.0.i = phi i16 [ %i.e, %bb.b ], [ %i.l, %bb.e ], [ %i.n, %bb.g ], [ %i.m, %bb.f ], !dbg !181406
  %i.o = insertvalue { i16, i16 } { i16 1, i16 undef }, i16 %.sroa.5.0.i, 1, !dbg !181407
  ret { i16, i16 } %i.o, !dbg !181408
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowxxEINtNtB6_8no_nulls23RollingAggWindowNoNullsxE3newCskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 1152921504606846976) %2, i64 noundef %3, i64 noundef %4, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %5, i64 noundef range(i64 0, 2) %6, i64 %7) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !181409 {
bb.a:
  %.not11.i = icmp ugt i64 %3, %2
  br i1 %.not11.i, label %bb.b, label %._crit_edge.i, !dbg !181410, !prof !27399

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %3, i64 noundef %3, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @397) #45, !dbg !181420, !noalias !181421
  unreachable, !dbg !181420

._crit_edge.i:                                    ; preds = %bb.a
  %i.a = icmp ult i64 %4, %3, !dbg !181424
  %.not12.i = icmp ugt i64 %4, %2
  %or.cond13.i = or i1 %.not12.i, %i.a, !dbg !181424
  br i1 %or.cond13.i, label %bb.d, label %bb.c, !dbg !181424, !prof !27399

bb.c:                                             ; preds = %._crit_edge.i
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %4, !dbg !181430
  %i.c = icmp samesign eq i64 %3, %4, !dbg !181444
  br i1 %i.c, label %_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowxxEINtNtB6_8no_nulls23RollingAggWindowNoNullsxE6updateCskY9G75ZWc4U_11polars_expr.exit, label %.lr.ph17.i, !dbg !181454

.lr.ph17.i:                                       ; preds = %bb.c
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %3, !dbg !181455 ; 3 uses
  %8 = shl i64 %4, 3, !dbg !181454
  %i.e = add i64 %8, -8, !dbg !181454
  %9 = shl i64 %3, 3, !dbg !181454
  %10 = sub i64 %i.e, %9, !dbg !181454            ; 2 uses
  %11 = lshr exact i64 %10, 3, !dbg !181454
  %i.f = add nuw nsw i64 %11, 1, !dbg !181454     ; 2 uses
  %min.iters.check = icmp ult i64 %10, 24, !dbg !181454
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph, !dbg !181454

vector.ph:                                        ; preds = %.lr.ph17.i
  %n.vec = and i64 %i.f, 4611686018427387900      ; 3 uses
  %i.g = shl i64 %n.vec, 3
  %i.h = getelementptr i8, ptr %i.d, i64 %i.g
  br label %vector.body, !dbg !181454

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.k, %vector.body ]
  %vec.phi8 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.l, %vector.body ]
  %i.i = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.i ; 2 uses
  %i.j = getelementptr i8, ptr %next.gep, i64 16, !dbg !181459
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !dbg !181459, !noalias !181421
  %wide.load9 = load <2 x i64>, ptr %i.j, align 8, !dbg !181459, !noalias !181421
  %i.k = add <2 x i64> %wide.load, %vec.phi, !dbg !181461 ; 2 uses
  %i.l = add <2 x i64> %wide.load9, %vec.phi8, !dbg !181461 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec, !dbg !181454
  br i1 %i.m, label %middle.block, label %vector.body, !dbg !181454, !llvm.loop !181464

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.l, %i.k, !dbg !181454
  %i.n = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx), !dbg !181454 ; 2 uses
  %cmp.n = icmp eq i64 %i.f, %n.vec, !dbg !181454
  br i1 %cmp.n, label %_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowxxEINtNtB6_8no_nulls23RollingAggWindowNoNullsxE6updateCskY9G75ZWc4U_11polars_expr.exit, label %scalar.ph.preheader, !dbg !181454

scalar.ph.preheader:                              ; preds = %.lr.ph17.i, %middle.block
  %.ph = phi i64 [ 0, %.lr.ph17.i ], [ %i.n, %middle.block ]
  %.sroa.06.015.i.ph = phi ptr [ %i.d, %.lr.ph17.i ], [ %i.h, %middle.block ]
  br label %scalar.ph, !dbg !181454

bb.d:                                             ; preds = %._crit_edge.i
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %3, i64 noundef %4, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @396) #45, !dbg !181465, !noalias !181421
  unreachable, !dbg !181465

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.o = phi i64 [ %i.r, %scalar.ph ], [ %.ph, %scalar.ph.preheader ], !dbg !181466
  %.sroa.06.015.i = phi ptr [ %i.p, %scalar.ph ], [ %.sroa.06.015.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.06.015.i, i64 8, !dbg !181466 ; 2 uses
  %i.q = load i64, ptr %.sroa.06.015.i, align 8, !dbg !181459, !noalias !181421, !noundef !14
  %i.r = add i64 %i.q, %i.o, !dbg !181461         ; 2 uses
  %i.s = icmp eq ptr %i.p, %i.b, !dbg !181444
  br i1 %i.s, label %_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowxxEINtNtB6_8no_nulls23RollingAggWindowNoNullsxE6updateCskY9G75ZWc4U_11polars_expr.exit, label %scalar.ph, !dbg !181454, !llvm.loop !181469

_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowxxEINtNtB6_8no_nulls23RollingAggWindowNoNullsxE6updateCskY9G75ZWc4U_11polars_expr.exit: ; preds = %scalar.ph, %middle.block, %bb.c
  %.sroa.8.2 = phi i64 [ 0, %bb.c ], [ %i.n, %middle.block ], [ %i.r, %scalar.ph ], !dbg !181470
  store ptr %1, ptr %0, align 8, !dbg !181471
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !181471
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !181471
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !181471
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !181471
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !181471
  store i64 %.sroa.8.2, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !181471
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !181471
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.14.0..sroa_idx, i8 0, i64 48, i1 false), !dbg !181471
  %.sroa.141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !181471
  store i64 %3, ptr %.sroa.141.0..sroa_idx, align 8, !dbg !181471
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !181471
  store i64 %4, ptr %.sroa.17.0..sroa_idx, align 8, !dbg !181471
  ret void, !dbg !181472
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowxxEINtNtB6_8no_nulls23RollingAggWindowNoNullsxE6updateCskY9G75ZWc4U_11polars_expr(ptr noalias nofree noundef align 8 captures(none) dereferenceable(96) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !181417 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !181473 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !181473, !noundef !14 ; 2 uses
  %.not = icmp ult i64 %1, %i.b, !dbg !181474
  br i1 %.not, label %._crit_edge22, label %bb.b, !dbg !181474

._crit_edge22:                                    ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !dbg !181475
  br label %bb.c, !dbg !181474

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !181476
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i8 0, i64 56, i1 false), !dbg !181478, !alias.scope !181479
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !181482
  store i64 %1, ptr %i.d, align 8, !dbg !181482
  store i64 %1, ptr %i.a, align 8, !dbg !181483
  br label %bb.c, !dbg !181484

bb.c:                                             ; preds = %._crit_edge22, %bb.b
  %i.e = phi i64 [ %i.b, %._crit_edge22 ], [ %1, %bb.b ] ; 5 uses
  %i.f = phi i64 [ %.pre, %._crit_edge22 ], [ %1, %bb.b ], !dbg !181475 ; 5 uses
  %i.g = load ptr, ptr %0, align 8, !dbg !181485, !nonnull !14, !align !2139, !noundef !14 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !181485
  %i.i = load i64, ptr %i.h, align 8, !dbg !181485, !noundef !14 ; 4 uses
  %i.j = icmp ult i64 %1, %i.f, !dbg !181486
  %.not11 = icmp ugt i64 %1, %i.i
  %or.cond = or i1 %.not11, %i.j, !dbg !181486
  br i1 %or.cond, label %bb.e, label %bb.d, !dbg !181486, !prof !27399

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %1, !dbg !181490
  %i.l = icmp samesign eq i64 %i.f, %1, !dbg !181497
  br i1 %i.l, label %bb.f, label %.lr.ph, !dbg !181498

.lr.ph:                                           ; preds = %bb.d
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.f, !dbg !181504 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.promoted = load i64, ptr %i.n, align 8, !alias.scope !181507 ; 2 uses
  %3 = shl i64 %1, 3, !dbg !181498
  %i.o = add i64 %3, -8, !dbg !181498
  %4 = shl i64 %i.f, 3, !dbg !181498
  %5 = sub i64 %i.o, %4, !dbg !181498             ; 2 uses
  %6 = lshr exact i64 %5, 3, !dbg !181498
  %i.p = add nuw nsw i64 %6, 1, !dbg !181498      ; 2 uses
  %min.iters.check = icmp ult i64 %5, 24, !dbg !181498
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph, !dbg !181498

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.p, 4611686018427387900      ; 3 uses
  %i.q = shl i64 %n.vec, 3
  %i.r = getelementptr i8, ptr %i.m, i64 %i.q
  %i.s = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.promoted, i64 0
  br label %vector.body, !dbg !181498

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.s, %vector.ph ], [ %i.v, %vector.body ]
  %vec.phi30 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.w, %vector.body ]
  %i.t = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.m, i64 %i.t ; 2 uses
  %i.u = getelementptr i8, ptr %next.gep, i64 16, !dbg !181512
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !dbg !181512
  %wide.load31 = load <2 x i64>, ptr %i.u, align 8, !dbg !181512
  %i.v = sub <2 x i64> %vec.phi, %wide.load, !dbg !181514 ; 2 uses
  %i.w = sub <2 x i64> %vec.phi30, %wide.load31, !dbg !181514 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec, !dbg !181498
  br i1 %i.x, label %middle.block, label %vector.body, !dbg !181498, !llvm.loop !181517

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.w, %i.v, !dbg !181498
  %i.y = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx), !dbg !181498 ; 2 uses
  %cmp.n = icmp eq i64 %i.p, %n.vec, !dbg !181498
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader, !dbg !181498

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.ph52 = phi i64 [ %.promoted, %.lr.ph ], [ %i.y, %middle.block ]
  %.sroa.03.014.ph = phi ptr [ %i.m, %.lr.ph ], [ %i.r, %middle.block ]
  br label %scalar.ph, !dbg !181498

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.f, i64 noundef %1, i64 noundef %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @397) #45, !dbg !181518
  unreachable, !dbg !181518

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.z = phi i64 [ %i.ac, %scalar.ph ], [ %.ph52, %scalar.ph.preheader ], !dbg !181519
  %.sroa.03.014 = phi ptr [ %i.aa, %scalar.ph ], [ %.sroa.03.014.ph, %scalar.ph.preheader ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.03.014, i64 8, !dbg !181519 ; 2 uses
  %i.ab = load i64, ptr %.sroa.03.014, align 8, !dbg !181512, !noundef !14
  %i.ac = sub i64 %i.z, %i.ab, !dbg !181514       ; 2 uses
  %i.ad = icmp eq ptr %i.aa, %i.k, !dbg !181497
  br i1 %i.ad, label %._crit_edge, label %scalar.ph, !dbg !181498, !llvm.loop !181521

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %.lcssa29 = phi i64 [ %i.y, %middle.block ], [ %i.ac, %scalar.ph ], !dbg !181514
  store i64 %.lcssa29, ptr %i.n, align 8, !dbg !181514, !alias.scope !181507
  br label %bb.f, !dbg !181498

bb.f:                                             ; preds = %._crit_edge, %bb.d
  %i.ae = icmp ult i64 %2, %i.e, !dbg !181522
  %.not12 = icmp ugt i64 %2, %i.i
  %or.cond13 = or i1 %.not12, %i.ae, !dbg !181522
  br i1 %or.cond13, label %bb.h, label %bb.g, !dbg !181522, !prof !27399

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %2, !dbg !181526
  %i.ag = icmp samesign eq i64 %i.e, %2, !dbg !181531
  br i1 %i.ag, label %bb.i, label %.lr.ph17, !dbg !181534

.lr.ph17:                                         ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.e, !dbg !181535 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.promoted19 = load i64, ptr %i.ai, align 8, !alias.scope !181537 ; 2 uses
  %7 = shl i64 %2, 3, !dbg !181534
  %i.aj = add i64 %7, -8, !dbg !181534
  %8 = shl i64 %i.e, 3, !dbg !181534
  %9 = sub i64 %i.aj, %8, !dbg !181534            ; 2 uses
  %10 = lshr exact i64 %9, 3, !dbg !181534
  %i.ak = add nuw nsw i64 %10, 1, !dbg !181534    ; 2 uses
  %min.iters.check33 = icmp ult i64 %9, 24, !dbg !181534
  br i1 %min.iters.check33, label %scalar.ph32.preheader, label %vector.ph34, !dbg !181534

vector.ph34:                                      ; preds = %.lr.ph17
  %n.vec35 = and i64 %i.ak, 4611686018427387900   ; 3 uses
  %i.al = shl i64 %n.vec35, 3
  %i.am = getelementptr i8, ptr %i.ah, i64 %i.al
  %i.an = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.promoted19, i64 0
  br label %vector.body36, !dbg !181534

vector.body36:                                    ; preds = %vector.body36, %vector.ph34
  %index37 = phi i64 [ 0, %vector.ph34 ], [ %index.next43, %vector.body36 ] ; 2 uses
  %vec.phi38 = phi <2 x i64> [ %i.an, %vector.ph34 ], [ %i.aq, %vector.body36 ]
  %vec.phi39 = phi <2 x i64> [ zeroinitializer, %vector.ph34 ], [ %i.ar, %vector.body36 ]
  %i.ao = shl i64 %index37, 3
  %next.gep40 = getelementptr i8, ptr %i.ah, i64 %i.ao ; 2 uses
  %i.ap = getelementptr i8, ptr %next.gep40, i64 16, !dbg !181542
  %wide.load41 = load <2 x i64>, ptr %next.gep40, align 8, !dbg !181542
  %wide.load42 = load <2 x i64>, ptr %i.ap, align 8, !dbg !181542
  %i.aq = add <2 x i64> %vec.phi38, %wide.load41, !dbg !181543 ; 2 uses
  %i.ar = add <2 x i64> %vec.phi39, %wide.load42, !dbg !181543 ; 2 uses
  %index.next43 = add nuw i64 %index37, 4         ; 2 uses
  %i.as = icmp eq i64 %index.next43, %n.vec35, !dbg !181534
  br i1 %i.as, label %middle.block44, label %vector.body36, !dbg !181534, !llvm.loop !181546

middle.block44:                                   ; preds = %vector.body36
  %bin.rdx45 = add <2 x i64> %i.ar, %i.aq, !dbg !181534
  %i.at = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx45), !dbg !181534 ; 2 uses
  %cmp.n46 = icmp eq i64 %i.ak, %n.vec35, !dbg !181534
  br i1 %cmp.n46, label %._crit_edge18, label %scalar.ph32.preheader, !dbg !181534

scalar.ph32.preheader:                            ; preds = %.lr.ph17, %middle.block44
  %.ph = phi i64 [ %.promoted19, %.lr.ph17 ], [ %i.at, %middle.block44 ]
  %.sroa.06.015.ph = phi ptr [ %i.ah, %.lr.ph17 ], [ %i.am, %middle.block44 ]
  br label %scalar.ph32, !dbg !181534

bb.h:                                             ; preds = %bb.f
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.e, i64 noundef %2, i64 noundef %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @396) #45, !dbg !181547
  unreachable, !dbg !181547

scalar.ph32:                                      ; preds = %scalar.ph32.preheader, %scalar.ph32
  %i.au = phi i64 [ %i.ax, %scalar.ph32 ], [ %.ph, %scalar.ph32.preheader ], !dbg !181548
  %.sroa.06.015 = phi ptr [ %i.av, %scalar.ph32 ], [ %.sroa.06.015.ph, %scalar.ph32.preheader ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.06.015, i64 8, !dbg !181548 ; 2 uses
  %i.aw = load i64, ptr %.sroa.06.015, align 8, !dbg !181542, !noundef !14
  %i.ax = add i64 %i.au, %i.aw, !dbg !181543      ; 2 uses
  %i.ay = icmp eq ptr %i.av, %i.af, !dbg !181531
  br i1 %i.ay, label %._crit_edge18, label %scalar.ph32, !dbg !181534, !llvm.loop !181550

._crit_edge18:                                    ; preds = %scalar.ph32, %middle.block44
  %.lcssa = phi i64 [ %i.at, %middle.block44 ], [ %i.ax, %scalar.ph32 ], !dbg !181543
  store i64 %.lcssa, ptr %i.ai, align 8, !dbg !181543, !alias.scope !181537
  br label %bb.i, !dbg !181534

bb.i:                                             ; preds = %._crit_edge18, %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !181475
  store i64 %1, ptr %i.az, align 8, !dbg !181551
  store i64 %2, ptr %i.a, align 8, !dbg !181552
  ret void, !dbg !181553
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowxxEINtNtB6_8no_nulls23RollingAggWindowNoNullsxE7get_aggCskY9G75ZWc4U_11polars_expr(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !181554 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !181555), !dbg !181558
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !181559
  %i.b = load i64, ptr %i.a, align 8, !dbg !181559, !alias.scope !181555, !noundef !14 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0, !dbg !181559
  br i1 %i.c, label %bb.b, label %bb.c, !dbg !181559

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !181561
  %i.e = load i64, ptr %i.d, align 8, !dbg !181561, !alias.scope !181555, !noundef !14
  br label %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowxxE7get_sumCskY9G75ZWc4U_11polars_expr.exit, !dbg !181562

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !181563
  %i.g = load i64, ptr %i.f, align 8, !dbg !181563, !alias.scope !181555, !noundef !14
  %i.h = icmp eq i64 %i.b, %i.g, !dbg !181564
  br i1 %i.h, label %bb.e, label %bb.d, !dbg !181564

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !181565
  %i.j = load i64, ptr %i.i, align 8, !dbg !181565, !alias.scope !181555, !noundef !14
  %i.k = icmp eq i64 %i.b, %i.j, !dbg !181566
  br i1 %i.k, label %bb.g, label %bb.f, !dbg !181566

bb.e:                                             ; preds = %bb.c
  %i.l = tail call noundef i64 @_RNvYxNtNtCs2mZqlW55729_12polars_utils5float7IsFloat13pos_inf_valueCskY9G75ZWc4U_11polars_expr(), !dbg !181567, !noalias !181555
  br label %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowxxE7get_sumCskY9G75ZWc4U_11polars_expr.exit, !dbg !181568

bb.f:                                             ; preds = %bb.d
  %i.m = tail call noundef i64 @_RNvYxNtNtCs2mZqlW55729_12polars_utils5float7IsFloat9nan_valueCskY9G75ZWc4U_11polars_expr(), !dbg !181569, !noalias !181555
  br label %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowxxE7get_sumCskY9G75ZWc4U_11polars_expr.exit, !dbg !181570

bb.g:                                             ; preds = %bb.d
  %i.n = tail call noundef i64 @_RNvYxNtNtCs2mZqlW55729_12polars_utils5float7IsFloat13neg_inf_valueCskY9G75ZWc4U_11polars_expr(), !dbg !181571, !noalias !181555
  br label %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowxxE7get_sumCskY9G75ZWc4U_11polars_expr.exit, !dbg !181570

_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowxxE7get_sumCskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.b, %bb.e, %bb.f, %bb.g
  %.sroa.5.0.i = phi i64 [ %i.e, %bb.b ], [ %i.l, %bb.e ], [ %i.n, %bb.g ], [ %i.m, %bb.f ], !dbg !181572
  %i.o = insertvalue { i64, i64 } { i64 1, i64 undef }, i64 %.sroa.5.0.i, 1, !dbg !181573
  ret { i64, i64 } %i.o, !dbg !181574
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowyyEINtNtB6_8no_nulls23RollingAggWindowNoNullsyE3newCskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 1152921504606846976) %2, i64 noundef %3, i64 noundef %4, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %5, i64 noundef range(i64 0, 2) %6, i64 %7) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !181575 {
bb.a:
  %.not11.i = icmp ugt i64 %3, %2
  br i1 %.not11.i, label %bb.b, label %._crit_edge.i, !dbg !181576, !prof !27399

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %3, i64 noundef %3, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @397) #45, !dbg !181586, !noalias !181587
  unreachable, !dbg !181586

._crit_edge.i:                                    ; preds = %bb.a
  %i.a = icmp ult i64 %4, %3, !dbg !181590
  %.not12.i = icmp ugt i64 %4, %2
  %or.cond13.i = or i1 %.not12.i, %i.a, !dbg !181590
  br i1 %or.cond13.i, label %bb.d, label %bb.c, !dbg !181590, !prof !27399

bb.c:                                             ; preds = %._crit_edge.i
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %4, !dbg !181596
  %i.c = icmp samesign eq i64 %3, %4, !dbg !181610
  br i1 %i.c, label %_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowyyEINtNtB6_8no_nulls23RollingAggWindowNoNullsyE6updateCskY9G75ZWc4U_11polars_expr.exit, label %.lr.ph17.i, !dbg !181620

.lr.ph17.i:                                       ; preds = %bb.c
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %3, !dbg !181621 ; 3 uses
  %8 = shl i64 %4, 3, !dbg !181620
  %i.e = add i64 %8, -8, !dbg !181620
  %9 = shl i64 %3, 3, !dbg !181620
  %10 = sub i64 %i.e, %9, !dbg !181620            ; 2 uses
  %11 = lshr exact i64 %10, 3, !dbg !181620
  %i.f = add nuw nsw i64 %11, 1, !dbg !181620     ; 2 uses
  %min.iters.check = icmp ult i64 %10, 24, !dbg !181620
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph, !dbg !181620

vector.ph:                                        ; preds = %.lr.ph17.i
  %n.vec = and i64 %i.f, 4611686018427387900      ; 3 uses
  %i.g = shl i64 %n.vec, 3
  %i.h = getelementptr i8, ptr %i.d, i64 %i.g
  br label %vector.body, !dbg !181620

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.k, %vector.body ]
  %vec.phi8 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.l, %vector.body ]
  %i.i = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.i ; 2 uses
  %i.j = getelementptr i8, ptr %next.gep, i64 16, !dbg !181625
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !dbg !181625, !noalias !181587
  %wide.load9 = load <2 x i64>, ptr %i.j, align 8, !dbg !181625, !noalias !181587
  %i.k = add <2 x i64> %wide.load, %vec.phi, !dbg !181627 ; 2 uses
  %i.l = add <2 x i64> %wide.load9, %vec.phi8, !dbg !181627 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec, !dbg !181620
  br i1 %i.m, label %middle.block, label %vector.body, !dbg !181620, !llvm.loop !181630

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.l, %i.k, !dbg !181620
  %i.n = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx), !dbg !181620 ; 2 uses
  %cmp.n = icmp eq i64 %i.f, %n.vec, !dbg !181620
  br i1 %cmp.n, label %_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowyyEINtNtB6_8no_nulls23RollingAggWindowNoNullsyE6updateCskY9G75ZWc4U_11polars_expr.exit, label %scalar.ph.preheader, !dbg !181620

scalar.ph.preheader:                              ; preds = %.lr.ph17.i, %middle.block
  %.ph = phi i64 [ 0, %.lr.ph17.i ], [ %i.n, %middle.block ]
  %.sroa.06.015.i.ph = phi ptr [ %i.d, %.lr.ph17.i ], [ %i.h, %middle.block ]
  br label %scalar.ph, !dbg !181620

bb.d:                                             ; preds = %._crit_edge.i
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %3, i64 noundef %4, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @396) #45, !dbg !181631, !noalias !181587
  unreachable, !dbg !181631

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.o = phi i64 [ %i.r, %scalar.ph ], [ %.ph, %scalar.ph.preheader ], !dbg !181632
  %.sroa.06.015.i = phi ptr [ %i.p, %scalar.ph ], [ %.sroa.06.015.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.06.015.i, i64 8, !dbg !181632 ; 2 uses
  %i.q = load i64, ptr %.sroa.06.015.i, align 8, !dbg !181625, !noalias !181587, !noundef !14
  %i.r = add i64 %i.q, %i.o, !dbg !181627         ; 2 uses
  %i.s = icmp eq ptr %i.p, %i.b, !dbg !181610
  br i1 %i.s, label %_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowyyEINtNtB6_8no_nulls23RollingAggWindowNoNullsyE6updateCskY9G75ZWc4U_11polars_expr.exit, label %scalar.ph, !dbg !181620, !llvm.loop !181635

_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowyyEINtNtB6_8no_nulls23RollingAggWindowNoNullsyE6updateCskY9G75ZWc4U_11polars_expr.exit: ; preds = %scalar.ph, %middle.block, %bb.c
  %.sroa.8.2 = phi i64 [ 0, %bb.c ], [ %i.n, %middle.block ], [ %i.r, %scalar.ph ], !dbg !181636
  store ptr %1, ptr %0, align 8, !dbg !181637
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !181637
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !181637
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !181637
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !181637
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !181637
  store i64 %.sroa.8.2, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !181637
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !181637
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.14.0..sroa_idx, i8 0, i64 48, i1 false), !dbg !181637
  %.sroa.141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !181637
  store i64 %3, ptr %.sroa.141.0..sroa_idx, align 8, !dbg !181637
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !181637
  store i64 %4, ptr %.sroa.17.0..sroa_idx, align 8, !dbg !181637
  ret void, !dbg !181638
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowyyEINtNtB6_8no_nulls23RollingAggWindowNoNullsyE6updateCskY9G75ZWc4U_11polars_expr(ptr noalias nofree noundef align 8 captures(none) dereferenceable(96) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !181583 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !181639 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !181639, !noundef !14 ; 2 uses
  %.not = icmp ult i64 %1, %i.b, !dbg !181640
  br i1 %.not, label %._crit_edge22, label %bb.b, !dbg !181640

._crit_edge22:                                    ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !dbg !181641
  br label %bb.c, !dbg !181640

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !181642
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i8 0, i64 56, i1 false), !dbg !181644, !alias.scope !181645
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !181648
  store i64 %1, ptr %i.d, align 8, !dbg !181648
  store i64 %1, ptr %i.a, align 8, !dbg !181649
  br label %bb.c, !dbg !181650

bb.c:                                             ; preds = %._crit_edge22, %bb.b
  %i.e = phi i64 [ %i.b, %._crit_edge22 ], [ %1, %bb.b ] ; 5 uses
  %i.f = phi i64 [ %.pre, %._crit_edge22 ], [ %1, %bb.b ], !dbg !181641 ; 5 uses
  %i.g = load ptr, ptr %0, align 8, !dbg !181651, !nonnull !14, !align !2139, !noundef !14 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !181651
  %i.i = load i64, ptr %i.h, align 8, !dbg !181651, !noundef !14 ; 4 uses
  %i.j = icmp ult i64 %1, %i.f, !dbg !181652
  %.not11 = icmp ugt i64 %1, %i.i
  %or.cond = or i1 %.not11, %i.j, !dbg !181652
  br i1 %or.cond, label %bb.e, label %bb.d, !dbg !181652, !prof !27399

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %1, !dbg !181656
  %i.l = icmp samesign eq i64 %i.f, %1, !dbg !181663
  br i1 %i.l, label %bb.f, label %.lr.ph, !dbg !181664

.lr.ph:                                           ; preds = %bb.d
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.f, !dbg !181670 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.promoted = load i64, ptr %i.n, align 8, !alias.scope !181673 ; 2 uses
  %3 = shl i64 %1, 3, !dbg !181664
  %i.o = add i64 %3, -8, !dbg !181664
  %4 = shl i64 %i.f, 3, !dbg !181664
  %5 = sub i64 %i.o, %4, !dbg !181664             ; 2 uses
  %6 = lshr exact i64 %5, 3, !dbg !181664
  %i.p = add nuw nsw i64 %6, 1, !dbg !181664      ; 2 uses
  %min.iters.check = icmp ult i64 %5, 24, !dbg !181664
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph, !dbg !181664

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.p, 4611686018427387900      ; 3 uses
  %i.q = shl i64 %n.vec, 3
  %i.r = getelementptr i8, ptr %i.m, i64 %i.q
  %i.s = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.promoted, i64 0
  br label %vector.body, !dbg !181664

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.s, %vector.ph ], [ %i.v, %vector.body ]
  %vec.phi30 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.w, %vector.body ]
  %i.t = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.m, i64 %i.t ; 2 uses
  %i.u = getelementptr i8, ptr %next.gep, i64 16, !dbg !181678
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !dbg !181678
  %wide.load31 = load <2 x i64>, ptr %i.u, align 8, !dbg !181678
  %i.v = sub <2 x i64> %vec.phi, %wide.load, !dbg !181680 ; 2 uses
  %i.w = sub <2 x i64> %vec.phi30, %wide.load31, !dbg !181680 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec, !dbg !181664
  br i1 %i.x, label %middle.block, label %vector.body, !dbg !181664, !llvm.loop !181683

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.w, %i.v, !dbg !181664
  %i.y = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx), !dbg !181664 ; 2 uses
  %cmp.n = icmp eq i64 %i.p, %n.vec, !dbg !181664
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader, !dbg !181664

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.ph52 = phi i64 [ %.promoted, %.lr.ph ], [ %i.y, %middle.block ]
  %.sroa.03.014.ph = phi ptr [ %i.m, %.lr.ph ], [ %i.r, %middle.block ]
  br label %scalar.ph, !dbg !181664

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.f, i64 noundef %1, i64 noundef %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @397) #45, !dbg !181684
  unreachable, !dbg !181684

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.z = phi i64 [ %i.ac, %scalar.ph ], [ %.ph52, %scalar.ph.preheader ], !dbg !181685
  %.sroa.03.014 = phi ptr [ %i.aa, %scalar.ph ], [ %.sroa.03.014.ph, %scalar.ph.preheader ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.03.014, i64 8, !dbg !181685 ; 2 uses
  %i.ab = load i64, ptr %.sroa.03.014, align 8, !dbg !181678, !noundef !14
  %i.ac = sub i64 %i.z, %i.ab, !dbg !181680       ; 2 uses
  %i.ad = icmp eq ptr %i.aa, %i.k, !dbg !181663
  br i1 %i.ad, label %._crit_edge, label %scalar.ph, !dbg !181664, !llvm.loop !181687

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %.lcssa29 = phi i64 [ %i.y, %middle.block ], [ %i.ac, %scalar.ph ], !dbg !181680
  store i64 %.lcssa29, ptr %i.n, align 8, !dbg !181680, !alias.scope !181673
  br label %bb.f, !dbg !181664

bb.f:                                             ; preds = %._crit_edge, %bb.d
  %i.ae = icmp ult i64 %2, %i.e, !dbg !181688
  %.not12 = icmp ugt i64 %2, %i.i
  %or.cond13 = or i1 %.not12, %i.ae, !dbg !181688
  br i1 %or.cond13, label %bb.h, label %bb.g, !dbg !181688, !prof !27399

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %2, !dbg !181692
  %i.ag = icmp samesign eq i64 %i.e, %2, !dbg !181697
  br i1 %i.ag, label %bb.i, label %.lr.ph17, !dbg !181700

.lr.ph17:                                         ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.e, !dbg !181701 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.promoted19 = load i64, ptr %i.ai, align 8, !alias.scope !181703 ; 2 uses
  %7 = shl i64 %2, 3, !dbg !181700
  %i.aj = add i64 %7, -8, !dbg !181700
  %8 = shl i64 %i.e, 3, !dbg !181700
  %9 = sub i64 %i.aj, %8, !dbg !181700            ; 2 uses
  %10 = lshr exact i64 %9, 3, !dbg !181700
  %i.ak = add nuw nsw i64 %10, 1, !dbg !181700    ; 2 uses
  %min.iters.check33 = icmp ult i64 %9, 24, !dbg !181700
  br i1 %min.iters.check33, label %scalar.ph32.preheader, label %vector.ph34, !dbg !181700

vector.ph34:                                      ; preds = %.lr.ph17
  %n.vec35 = and i64 %i.ak, 4611686018427387900   ; 3 uses
  %i.al = shl i64 %n.vec35, 3
  %i.am = getelementptr i8, ptr %i.ah, i64 %i.al
  %i.an = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.promoted19, i64 0
  br label %vector.body36, !dbg !181700

vector.body36:                                    ; preds = %vector.body36, %vector.ph34
  %index37 = phi i64 [ 0, %vector.ph34 ], [ %index.next43, %vector.body36 ] ; 2 uses
  %vec.phi38 = phi <2 x i64> [ %i.an, %vector.ph34 ], [ %i.aq, %vector.body36 ]
  %vec.phi39 = phi <2 x i64> [ zeroinitializer, %vector.ph34 ], [ %i.ar, %vector.body36 ]
  %i.ao = shl i64 %index37, 3
  %next.gep40 = getelementptr i8, ptr %i.ah, i64 %i.ao ; 2 uses
  %i.ap = getelementptr i8, ptr %next.gep40, i64 16, !dbg !181708
  %wide.load41 = load <2 x i64>, ptr %next.gep40, align 8, !dbg !181708
  %wide.load42 = load <2 x i64>, ptr %i.ap, align 8, !dbg !181708
  %i.aq = add <2 x i64> %vec.phi38, %wide.load41, !dbg !181709 ; 2 uses
  %i.ar = add <2 x i64> %vec.phi39, %wide.load42, !dbg !181709 ; 2 uses
  %index.next43 = add nuw i64 %index37, 4         ; 2 uses
  %i.as = icmp eq i64 %index.next43, %n.vec35, !dbg !181700
  br i1 %i.as, label %middle.block44, label %vector.body36, !dbg !181700, !llvm.loop !181712

middle.block44:                                   ; preds = %vector.body36
  %bin.rdx45 = add <2 x i64> %i.ar, %i.aq, !dbg !181700
  %i.at = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx45), !dbg !181700 ; 2 uses
  %cmp.n46 = icmp eq i64 %i.ak, %n.vec35, !dbg !181700
  br i1 %cmp.n46, label %._crit_edge18, label %scalar.ph32.preheader, !dbg !181700

scalar.ph32.preheader:                            ; preds = %.lr.ph17, %middle.block44
  %.ph = phi i64 [ %.promoted19, %.lr.ph17 ], [ %i.at, %middle.block44 ]
  %.sroa.06.015.ph = phi ptr [ %i.ah, %.lr.ph17 ], [ %i.am, %middle.block44 ]
  br label %scalar.ph32, !dbg !181700

bb.h:                                             ; preds = %bb.f
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.e, i64 noundef %2, i64 noundef %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @396) #45, !dbg !181713
  unreachable, !dbg !181713

scalar.ph32:                                      ; preds = %scalar.ph32.preheader, %scalar.ph32
  %i.au = phi i64 [ %i.ax, %scalar.ph32 ], [ %.ph, %scalar.ph32.preheader ], !dbg !181714
  %.sroa.06.015 = phi ptr [ %i.av, %scalar.ph32 ], [ %.sroa.06.015.ph, %scalar.ph32.preheader ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.06.015, i64 8, !dbg !181714 ; 2 uses
  %i.aw = load i64, ptr %.sroa.06.015, align 8, !dbg !181708, !noundef !14
  %i.ax = add i64 %i.au, %i.aw, !dbg !181709      ; 2 uses
  %i.ay = icmp eq ptr %i.av, %i.af, !dbg !181697
  br i1 %i.ay, label %._crit_edge18, label %scalar.ph32, !dbg !181700, !llvm.loop !181716

._crit_edge18:                                    ; preds = %scalar.ph32, %middle.block44
  %.lcssa = phi i64 [ %i.at, %middle.block44 ], [ %i.ax, %scalar.ph32 ], !dbg !181709
  store i64 %.lcssa, ptr %i.ai, align 8, !dbg !181709, !alias.scope !181703
  br label %bb.i, !dbg !181700

bb.i:                                             ; preds = %._crit_edge18, %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !181641
  store i64 %1, ptr %i.az, align 8, !dbg !181717
  store i64 %2, ptr %i.a, align 8, !dbg !181718
  ret void, !dbg !181719
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowyyEINtNtB6_8no_nulls23RollingAggWindowNoNullsyE7get_aggCskY9G75ZWc4U_11polars_expr(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !181720 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !181721), !dbg !181724
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !181725
  %i.b = load i64, ptr %i.a, align 8, !dbg !181725, !alias.scope !181721, !noundef !14 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0, !dbg !181725
  br i1 %i.c, label %bb.b, label %bb.c, !dbg !181725

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !181727
  %i.e = load i64, ptr %i.d, align 8, !dbg !181727, !alias.scope !181721, !noundef !14
  br label %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowyyE7get_sumCskY9G75ZWc4U_11polars_expr.exit, !dbg !181728

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !181729
  %i.g = load i64, ptr %i.f, align 8, !dbg !181729, !alias.scope !181721, !noundef !14
  %i.h = icmp eq i64 %i.b, %i.g, !dbg !181730
  br i1 %i.h, label %bb.e, label %bb.d, !dbg !181730

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !181731
  %i.j = load i64, ptr %i.i, align 8, !dbg !181731, !alias.scope !181721, !noundef !14
  %i.k = icmp eq i64 %i.b, %i.j, !dbg !181732
  br i1 %i.k, label %bb.g, label %bb.f, !dbg !181732

bb.e:                                             ; preds = %bb.c
  %i.l = tail call noundef i64 @_RNvYyNtNtCs2mZqlW55729_12polars_utils5float7IsFloat13pos_inf_valueCskY9G75ZWc4U_11polars_expr(), !dbg !181733, !noalias !181721
  br label %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowyyE7get_sumCskY9G75ZWc4U_11polars_expr.exit, !dbg !181734

bb.f:                                             ; preds = %bb.d
  %i.m = tail call noundef i64 @_RNvYyNtNtCs2mZqlW55729_12polars_utils5float7IsFloat9nan_valueCskY9G75ZWc4U_11polars_expr(), !dbg !181735, !noalias !181721
  br label %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowyyE7get_sumCskY9G75ZWc4U_11polars_expr.exit, !dbg !181736

bb.g:                                             ; preds = %bb.d
  %i.n = tail call noundef i64 @_RNvYyNtNtCs2mZqlW55729_12polars_utils5float7IsFloat13neg_inf_valueCskY9G75ZWc4U_11polars_expr(), !dbg !181737, !noalias !181721
  br label %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowyyE7get_sumCskY9G75ZWc4U_11polars_expr.exit, !dbg !181736

_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowyyE7get_sumCskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.b, %bb.e, %bb.f, %bb.g
  %.sroa.5.0.i = phi i64 [ %i.e, %bb.b ], [ %i.l, %bb.e ], [ %i.n, %bb.g ], [ %i.m, %bb.f ], !dbg !181738
  %i.o = insertvalue { i64, i64 } { i64 1, i64 undef }, i64 %.sroa.5.0.i, 1, !dbg !181739
  ret { i64, i64 } %i.o, !dbg !181740
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling4meanINtB4_10MeanWindowNtNtCs2mZqlW55729_12polars_utils7float164pf16EINtNtB6_5nulls21RollingAggWindowNullsB17_E3newCskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) %1, i64 noundef range(i64 0, 4611686018427387904) %2, ptr noundef nonnull align 8 %3, i64 noundef %4, i64 noundef %5, ptr noalias nofree noundef readnone align 8 captures(none) dead_on_return dereferenceable(24) %6, i64 noundef range(i64 0, 2) %7, i64 %8) unnamed_addr #0 !dbg !181741 {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 6 uses
  %i.b = icmp ule i64 %4, %2, !dbg !181743
  %i.c = icmp ule i64 %5, %2
  %or.cond.i = and i1 %i.b, %i.c, !dbg !181743
  %i.d = icmp ule i64 %4, %5
  %or.cond1.i = and i1 %i.d, %or.cond.i, !dbg !181743
  br i1 %or.cond1.i, label %_RNvXs0_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB5_9SumWindowNtNtCs2mZqlW55729_12polars_utils7float164pf16dEINtNtB7_5nulls21RollingAggWindowNullsB15_E3newCskY9G75ZWc4U_11polars_expr.exit, label %bb.b, !dbg !181743, !prof !146304

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @287, i64 noundef 76, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @288) #45, !dbg !181746, !noalias !181747
  unreachable, !dbg !181746

_RNvXs0_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB5_9SumWindowNtNtCs2mZqlW55729_12polars_utils7float164pf16dEINtNtB7_5nulls21RollingAggWindowNullsB15_E3newCskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.a
  store ptr %1, ptr %i.a, align 8, !dbg !181751
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !181751
  store i64 %2, ptr %i.e, align 8, !dbg !181751
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !181751
  store ptr %3, ptr %i.f, align 8, !dbg !181751
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !181751
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.g, i8 0, i64 72, i1 false), !dbg !181751
  call fastcc void @_RNvXs0_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB5_9SumWindowNtNtCs2mZqlW55729_12polars_utils7float164pf16dEINtNtB7_5nulls21RollingAggWindowNullsB15_E6updateCskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(96) %i.a, i64 noundef %4, i64 noundef %5), !dbg !181753
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %i.a, i64 96, i1 false), !dbg !181755
  ret void, !dbg !181756
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling4meanINtB4_10MeanWindowNtNtCs2mZqlW55729_12polars_utils7float164pf16EINtNtB6_5nulls21RollingAggWindowNullsB17_E6updateCskY9G75ZWc4U_11polars_expr(ptr noalias nofree noundef align 8 captures(none) dereferenceable(96) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 !dbg !181757 {
bb.a:
  tail call fastcc void @_RNvXs0_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB5_9SumWindowNtNtCs2mZqlW55729_12polars_utils7float164pf16dEINtNtB7_5nulls21RollingAggWindowNullsB15_E6updateCskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(96) %0, i64 noundef %1, i64 noundef %2), !dbg !181758
  ret void, !dbg !181759
}

; Function Attrs: nonlazybind uwtable
define hidden { i16, i16 } @_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling4meanINtB4_10MeanWindowNtNtCs2mZqlW55729_12polars_utils7float164pf16EINtNtB6_5nulls21RollingAggWindowNullsB17_E7get_aggCskY9G75ZWc4U_11polars_expr(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !181760 {
bb.a:
  %i.a = tail call fastcc i16 @_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowNtNtCs2mZqlW55729_12polars_utils7float164pf16dE7get_sumCskY9G75ZWc4U_11polars_expr(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0), !dbg !181761
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !181764
  %i.c = load i64, ptr %i.b, align 8, !dbg !181764, !noundef !14 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !181766
  %i.e = load i64, ptr %i.d, align 8, !dbg !181766, !noundef !14 ; 2 uses
  %i.f = sub i64 %i.c, %i.e, !dbg !181764
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !181767
  %i.h = load i64, ptr %i.g, align 8, !dbg !181767, !noundef !14 ; 2 uses
  %i.i = icmp eq i64 %i.h, %i.f, !dbg !181767
  br i1 %i.i, label %bb.m, label %bb.b, !dbg !181767

bb.b:                                             ; preds = %bb.a
  %i.j = add i64 %i.e, %i.h, !dbg !181769
  %i.k = sub i64 %i.c, %i.j, !dbg !181769
  %i.l = uitofp i64 %i.k to float, !dbg !181776   ; 2 uses
  %i.m = load atomic i64, ptr @_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache5CACHE monotonic, align 8, !dbg !181780, !noalias !181791 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0, !dbg !181794
  br i1 %i.n, label %.split.i.i.i, label %_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit.i.i.i, !dbg !181794, !prof !113

.split.i.i.i:                                     ; preds = %bb.b
  %i.o = tail call noundef i128 @_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache21detect_and_initialize(), !dbg !181795, !noalias !181791
  %i.p = and i128 %i.o, 36028797018963968, !dbg !181798
  %.not6.i.i.i = icmp eq i128 %i.p, 0, !dbg !181798
  br i1 %.not6.i.i.i, label %bb.c, label %bb.l, !dbg !181801

_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit.i.i.i: ; preds = %bb.b
  %i.q = and i64 %i.m, 36028797018963968, !dbg !181802
  %.not.i.i.i = icmp eq i64 %i.q, 0, !dbg !181802
  br i1 %.not.i.i.i, label %bb.c, label %bb.l, !dbg !181801

bb.c:                                             ; preds = %_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit.i.i.i, %.split.i.i.i
  %i.r = bitcast float %i.l to i32, !dbg !181803  ; 7 uses
  %i.s = and i32 %i.r, 2139095040, !dbg !181805   ; 3 uses
  %i.t = and i32 %i.r, 8388607, !dbg !181806      ; 4 uses
  %i.u = icmp eq i32 %i.s, 2139095040, !dbg !181807
  br i1 %i.u, label %bb.d, label %bb.e, !dbg !181807

bb.d:                                             ; preds = %bb.c
  %i.v = icmp eq i32 %i.t, 0, !dbg !181808
  %..i.i.i.i = select i1 %i.v, i32 0, i32 512, !dbg !181809
  %i.w = lshr i32 %i.t, 13, !dbg !181810
  %i.x = or i32 %..i.i.i.i, %i.w, !dbg !181811
  %i.y = trunc nuw nsw i32 %i.x to i16, !dbg !181811
  %i.z = or disjoint i16 %i.y, 31744, !dbg !181811
  br label %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling4meanINtB6_10MeanWindowNtNtCs2mZqlW55729_12polars_utils7float164pf16EINtNtB8_5nulls21RollingAggWindowNullsB19_E7get_agg0CskY9G75ZWc4U_11polars_expr.exit, !dbg !181812

bb.e:                                             ; preds = %bb.c
  %i.aa = lshr i32 %i.r, 23, !dbg !181813         ; 2 uses
  %i.ab = icmp samesign ugt i32 %i.s, 1191182336, !dbg !181814
  br i1 %i.ab, label %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling4meanINtB6_10MeanWindowNtNtCs2mZqlW55729_12polars_utils7float164pf16EINtNtB8_5nulls21RollingAggWindowNullsB19_E7get_agg0CskY9G75ZWc4U_11polars_expr.exit, label %bb.f, !dbg !181814

bb.f:                                             ; preds = %bb.e
  %i.ac = icmp samesign ult i32 %i.r, 947912704, !dbg !181815
  br i1 %i.ac, label %bb.h, label %bb.g, !dbg !181815

bb.g:                                             ; preds = %bb.f
  %i.ad = lshr exact i32 %i.s, 13, !dbg !181816
  %i.ae = add nuw nsw i32 %i.ad, 16384, !dbg !181816
end_hunk_1
