Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_expr-c150671a77946377.polars_expr.f440eb239ff47e82-cgu.03?download=true
inline.NumInlined: 7491
inline.NumDeleted: 2575
loop-unroll.NumCompletelyUnrolled: 52
loop-unroll.NumRuntimeUnrolled: 44
loop-unroll.NumUnrolled: 96
begin_hunk_0_@_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowhhEINtNtB6_8no_nulls23RollingAggWindowNoNullshE6updateCskY9G75ZWc4U_11polars_expr:bb.a
  br i1 %cmp.n39, label %._crit_edge, label %vec.epilog.scalar.ph.preheader, !dbg !180382

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph80 = phi i8 [ %.promoted, %iter.check ], [ %i.z, %vec.epilog.iter.check ], [ %i.ae, %vec.epilog.middle.block ]
  %.sroa.03.014.ph = phi ptr [ %i.p, %iter.check ], [ %i.t, %vec.epilog.iter.check ], [ %i.aa, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph, !dbg !180382

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.i, i64 noundef %1, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @397) #45, !dbg !180405
  unreachable, !dbg !180405

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %i.af = phi i8 [ %i.ai, %vec.epilog.scalar.ph ], [ %.ph80, %vec.epilog.scalar.ph.preheader ], !dbg !180402
  %.sroa.03.014 = phi ptr [ %i.ag, %vec.epilog.scalar.ph ], [ %.sroa.03.014.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.03.014, i64 1, !dbg !180402 ; 2 uses
  %i.ah = load i8, ptr %.sroa.03.014, align 1, !dbg !180396, !noundef !14
  %i.ai = sub i8 %i.af, %i.ah, !dbg !180398       ; 2 uses
  %i.aj = icmp eq ptr %i.ag, %i.n, !dbg !180381
  br i1 %i.aj, label %._crit_edge, label %vec.epilog.scalar.ph, !dbg !180382, !llvm.loop !180406

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa29 = phi i8 [ %i.ae, %vec.epilog.middle.block ], [ %i.z, %middle.block ], [ %i.ai, %vec.epilog.scalar.ph ], !dbg !180398
  store i8 %.lcssa29, ptr %i.q, align 8, !dbg !180398, !alias.scope !180391
  br label %bb.f, !dbg !180382

bb.f:                                             ; preds = %._crit_edge, %bb.d
  %i.ak = icmp ult i64 %2, %i.h, !dbg !180407
  %.not12 = icmp ugt i64 %2, %i.l
  %or.cond13 = or i1 %.not12, %i.ak, !dbg !180407
  br i1 %or.cond13, label %bb.h, label %bb.g, !dbg !180407, !prof !27399

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %i.j, i64 %2, !dbg !180411
  %i.am = icmp samesign eq i64 %i.h, %2, !dbg !180416
  br i1 %i.am, label %bb.i, label %iter.check60, !dbg !180419

iter.check60:                                     ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.h, !dbg !180420 ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.promoted19 = load i8, ptr %i.ao, align 8, !alias.scope !180422 ; 3 uses
  %i.ap = sub i64 %2, %i.h, !dbg !180419          ; 7 uses
  %min.iters.check42 = icmp ult i64 %i.ap, 4, !dbg !180419
  br i1 %min.iters.check42, label %vec.epilog.scalar.ph61.preheader, label %vector.main.loop.iter.check43, !dbg !180419

vector.main.loop.iter.check43:                    ; preds = %iter.check60
  %min.iters.check44 = icmp ult i64 %i.ap, 32, !dbg !180419
  br i1 %min.iters.check44, label %vec.epilog.ph64, label %vector.ph45, !dbg !180419

vector.ph45:                                      ; preds = %vector.main.loop.iter.check43
  %i.aq = and i64 %i.ap, 28
  %n.vec46 = and i64 %i.ap, -32                   ; 4 uses
  %i.ar = getelementptr i8, ptr %i.an, i64 %n.vec46
  %i.as = insertelement <16 x i8> <i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, i8 %.promoted19, i64 0
  br label %vector.body47, !dbg !180419

vector.body47:                                    ; preds = %vector.body47, %vector.ph45
  %index48 = phi i64 [ 0, %vector.ph45 ], [ %index.next54, %vector.body47 ] ; 2 uses
  %vec.phi49 = phi <16 x i8> [ %i.as, %vector.ph45 ], [ %i.au, %vector.body47 ]
  %vec.phi50 = phi <16 x i8> [ zeroinitializer, %vector.ph45 ], [ %i.av, %vector.body47 ]
  %next.gep51 = getelementptr i8, ptr %i.an, i64 %index48 ; 2 uses
  %i.at = getelementptr i8, ptr %next.gep51, i64 16, !dbg !180427
  %wide.load52 = load <16 x i8>, ptr %next.gep51, align 1, !dbg !180427
  %wide.load53 = load <16 x i8>, ptr %i.at, align 1, !dbg !180427
  %i.au = add <16 x i8> %vec.phi49, %wide.load52, !dbg !180428 ; 2 uses
  %i.av = add <16 x i8> %vec.phi50, %wide.load53, !dbg !180428 ; 2 uses
  %index.next54 = add nuw i64 %index48, 32        ; 2 uses
  %i.aw = icmp eq i64 %index.next54, %n.vec46, !dbg !180419
  br i1 %i.aw, label %middle.block55, label %vector.body47, !dbg !180419, !llvm.loop !180431

middle.block55:                                   ; preds = %vector.body47
  %bin.rdx56 = add <16 x i8> %i.av, %i.au, !dbg !180419
  %i.ax = tail call i8 @llvm.vector.reduce.add.v16i8(<16 x i8> %bin.rdx56), !dbg !180419 ; 3 uses
  %cmp.n57 = icmp eq i64 %i.ap, %n.vec46, !dbg !180419
  br i1 %cmp.n57, label %._crit_edge18, label %vec.epilog.iter.check62, !dbg !180419

vec.epilog.iter.check62:                          ; preds = %middle.block55
  %min.epilog.iters.check63 = icmp eq i64 %i.aq, 0
  br i1 %min.epilog.iters.check63, label %vec.epilog.scalar.ph61.preheader, label %vec.epilog.ph64, !prof !56990

vec.epilog.ph64:                                  ; preds = %vector.main.loop.iter.check43, %vec.epilog.iter.check62
  %vec.epilog.resume.val58 = phi i64 [ %n.vec46, %vec.epilog.iter.check62 ], [ 0, %vector.main.loop.iter.check43 ]
  %bc.merge.rdx59 = phi i8 [ %i.ax, %vec.epilog.iter.check62 ], [ %.promoted19, %vector.main.loop.iter.check43 ], !dbg !180432
  %n.vec65 = and i64 %i.ap, -4                    ; 3 uses
  %i.ay = getelementptr i8, ptr %i.an, i64 %n.vec65
  %i.az = insertelement <4 x i8> <i8 poison, i8 0, i8 0, i8 0>, i8 %bc.merge.rdx59, i64 0
  br label %vec.epilog.vector.body66

vec.epilog.vector.body66:                         ; preds = %vec.epilog.vector.body66, %vec.epilog.ph64
  %index67 = phi i64 [ %vec.epilog.resume.val58, %vec.epilog.ph64 ], [ %index.next71, %vec.epilog.vector.body66 ] ; 2 uses
  %vec.phi68 = phi <4 x i8> [ %i.az, %vec.epilog.ph64 ], [ %i.ba, %vec.epilog.vector.body66 ]
  %next.gep69 = getelementptr i8, ptr %i.an, i64 %index67
  %wide.load70 = load <4 x i8>, ptr %next.gep69, align 1, !dbg !180427
  %i.ba = add <4 x i8> %vec.phi68, %wide.load70, !dbg !180428 ; 2 uses
  %index.next71 = add nuw i64 %index67, 4         ; 2 uses
  %i.bb = icmp eq i64 %index.next71, %n.vec65, !dbg !180419
  br i1 %i.bb, label %vec.epilog.middle.block72, label %vec.epilog.vector.body66, !dbg !180419, !llvm.loop !180434

vec.epilog.middle.block72:                        ; preds = %vec.epilog.vector.body66
  %i.bc = tail call i8 @llvm.vector.reduce.add.v4i8(<4 x i8> %i.ba), !dbg !180419 ; 2 uses
  %cmp.n73 = icmp eq i64 %i.ap, %n.vec65, !dbg !180419
  br i1 %cmp.n73, label %._crit_edge18, label %vec.epilog.scalar.ph61.preheader, !dbg !180419

vec.epilog.scalar.ph61.preheader:                 ; preds = %iter.check60, %vec.epilog.iter.check62, %vec.epilog.middle.block72
  %.ph = phi i8 [ %.promoted19, %iter.check60 ], [ %i.ax, %vec.epilog.iter.check62 ], [ %i.bc, %vec.epilog.middle.block72 ]
  %.sroa.06.015.ph = phi ptr [ %i.an, %iter.check60 ], [ %i.ar, %vec.epilog.iter.check62 ], [ %i.ay, %vec.epilog.middle.block72 ]
  br label %vec.epilog.scalar.ph61, !dbg !180419

bb.h:                                             ; preds = %bb.f
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.h, i64 noundef %2, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @396) #45, !dbg !180435
  unreachable, !dbg !180435

vec.epilog.scalar.ph61:                           ; preds = %vec.epilog.scalar.ph61.preheader, %vec.epilog.scalar.ph61
  %i.bd = phi i8 [ %i.bg, %vec.epilog.scalar.ph61 ], [ %.ph, %vec.epilog.scalar.ph61.preheader ], !dbg !180432
  %.sroa.06.015 = phi ptr [ %i.be, %vec.epilog.scalar.ph61 ], [ %.sroa.06.015.ph, %vec.epilog.scalar.ph61.preheader ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.06.015, i64 1, !dbg !180432 ; 2 uses
  %i.bf = load i8, ptr %.sroa.06.015, align 1, !dbg !180427, !noundef !14
  %i.bg = add i8 %i.bd, %i.bf, !dbg !180428       ; 2 uses
  %i.bh = icmp eq ptr %i.be, %i.al, !dbg !180416
  br i1 %i.bh, label %._crit_edge18, label %vec.epilog.scalar.ph61, !dbg !180419, !llvm.loop !180436

._crit_edge18:                                    ; preds = %vec.epilog.scalar.ph61, %vec.epilog.middle.block72, %middle.block55
  %.lcssa = phi i8 [ %i.bc, %vec.epilog.middle.block72 ], [ %i.ax, %middle.block55 ], [ %i.bg, %vec.epilog.scalar.ph61 ], !dbg !180428
  store i8 %.lcssa, ptr %i.ao, align 8, !dbg !180428, !alias.scope !180422
  br label %bb.i, !dbg !180419

bb.i:                                             ; preds = %._crit_edge18, %bb.g
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !180357
  store i64 %1, ptr %i.bi, align 8, !dbg !180437
  store i64 %2, ptr %i.a, align 8, !dbg !180438
  ret void, !dbg !180439
}

; Function Attrs: nonlazybind uwtable
define hidden { i1, i8 } @_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowhhEINtNtB6_8no_nulls23RollingAggWindowNoNullshE7get_aggCskY9G75ZWc4U_11polars_expr(ptr noalias noundef readonly align 8 captures(none) dereferenceable(80) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !180440 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !180441), !dbg !180444
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !180445
  %i.b = load i64, ptr %i.a, align 8, !dbg !180445, !alias.scope !180441, !noundef !14 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0, !dbg !180445
  br i1 %i.c, label %bb.b, label %bb.c, !dbg !180445

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !180447
  %i.e = load i8, ptr %i.d, align 8, !dbg !180447, !alias.scope !180441, !noundef !14
  br label %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowhhE7get_sumCskY9G75ZWc4U_11polars_expr.exit, !dbg !180448

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !180449
  %i.g = load i64, ptr %i.f, align 8, !dbg !180449, !alias.scope !180441, !noundef !14
  %i.h = icmp eq i64 %i.b, %i.g, !dbg !180450
  br i1 %i.h, label %bb.e, label %bb.d, !dbg !180450

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !180451
  %i.j = load i64, ptr %i.i, align 8, !dbg !180451, !alias.scope !180441, !noundef !14
  %i.k = icmp eq i64 %i.b, %i.j, !dbg !180452
  br i1 %i.k, label %bb.g, label %bb.f, !dbg !180452

bb.e:                                             ; preds = %bb.c
  %i.l = tail call noundef i8 @_RNvYhNtNtCs2mZqlW55729_12polars_utils5float7IsFloat13pos_inf_valueCskY9G75ZWc4U_11polars_expr(), !dbg !180453, !noalias !180441
  br label %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowhhE7get_sumCskY9G75ZWc4U_11polars_expr.exit, !dbg !180454

bb.f:                                             ; preds = %bb.d
  %i.m = tail call noundef i8 @_RNvYhNtNtCs2mZqlW55729_12polars_utils5float7IsFloat9nan_valueCskY9G75ZWc4U_11polars_expr(), !dbg !180455, !noalias !180441
  br label %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowhhE7get_sumCskY9G75ZWc4U_11polars_expr.exit, !dbg !180456

bb.g:                                             ; preds = %bb.d
  %i.n = tail call noundef i8 @_RNvYhNtNtCs2mZqlW55729_12polars_utils5float7IsFloat13neg_inf_valueCskY9G75ZWc4U_11polars_expr(), !dbg !180457, !noalias !180441
  br label %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowhhE7get_sumCskY9G75ZWc4U_11polars_expr.exit, !dbg !180456

_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowhhE7get_sumCskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.b, %bb.e, %bb.f, %bb.g
  %.sroa.5.0.i = phi i8 [ %i.e, %bb.b ], [ %i.l, %bb.e ], [ %i.n, %bb.g ], [ %i.m, %bb.f ], !dbg !180458
  %i.o = insertvalue { i1, i8 } { i1 true, i8 undef }, i8 %.sroa.5.0.i, 1, !dbg !180459
  ret { i1, i8 } %i.o, !dbg !180460
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowllEINtNtB6_8no_nulls23RollingAggWindowNoNullslE3newCskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef range(i64 0, 2305843009213693952) %2, i64 noundef %3, i64 noundef %4, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %5, i64 noundef range(i64 0, 2) %6, i64 %7) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !180461 {
bb.a:
  %.not11.i = icmp ugt i64 %3, %2
  br i1 %.not11.i, label %bb.b, label %._crit_edge.i, !dbg !180462, !prof !27399

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %3, i64 noundef %3, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @397) #45, !dbg !180472, !noalias !180473
  unreachable, !dbg !180472

._crit_edge.i:                                    ; preds = %bb.a
  %i.a = icmp ult i64 %4, %3, !dbg !180476
  %.not12.i = icmp ugt i64 %4, %2
  %or.cond13.i = or i1 %.not12.i, %i.a, !dbg !180476
  br i1 %or.cond13.i, label %bb.d, label %bb.c, !dbg !180476, !prof !27399

bb.c:                                             ; preds = %._crit_edge.i
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %4, !dbg !180482
  %i.c = icmp samesign eq i64 %3, %4, !dbg !180496
  br i1 %i.c, label %_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowllEINtNtB6_8no_nulls23RollingAggWindowNoNullslE6updateCskY9G75ZWc4U_11polars_expr.exit, label %.lr.ph17.i, !dbg !180506

.lr.ph17.i:                                       ; preds = %bb.c
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %3, !dbg !180507 ; 3 uses
  %i.e = shl i64 %4, 2, !dbg !180506
  %8 = shl i64 %3, 2, !dbg !180506
  %9 = add i64 %i.e, -4, !dbg !180506
  %i.f = sub i64 %9, %8, !dbg !180506             ; 2 uses
  %i.g = lshr exact i64 %i.f, 2, !dbg !180506
  %i.h = add nuw nsw i64 %i.g, 1, !dbg !180506    ; 2 uses
  %min.iters.check = icmp ult i64 %i.f, 28, !dbg !180506
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph, !dbg !180506

vector.ph:                                        ; preds = %.lr.ph17.i
  %n.vec = and i64 %i.h, 9223372036854775800      ; 3 uses
  %i.i = shl i64 %n.vec, 2
  %i.j = getelementptr i8, ptr %i.d, i64 %i.i
  br label %vector.body, !dbg !180506

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.m, %vector.body ]
  %vec.phi8 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.n, %vector.body ]
  %i.k = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.k ; 2 uses
  %i.l = getelementptr i8, ptr %next.gep, i64 16, !dbg !180511
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !dbg !180511, !noalias !180473
  %wide.load9 = load <4 x i32>, ptr %i.l, align 4, !dbg !180511, !noalias !180473
  %i.m = add <4 x i32> %wide.load, %vec.phi, !dbg !180513 ; 2 uses
  %i.n = add <4 x i32> %wide.load9, %vec.phi8, !dbg !180513 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec, !dbg !180506
  br i1 %i.o, label %middle.block, label %vector.body, !dbg !180506, !llvm.loop !180516

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.n, %i.m, !dbg !180506
  %i.p = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx), !dbg !180506 ; 2 uses
  %cmp.n = icmp eq i64 %i.h, %n.vec, !dbg !180506
  br i1 %cmp.n, label %_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowllEINtNtB6_8no_nulls23RollingAggWindowNoNullslE6updateCskY9G75ZWc4U_11polars_expr.exit, label %scalar.ph.preheader, !dbg !180506

scalar.ph.preheader:                              ; preds = %.lr.ph17.i, %middle.block
  %.ph = phi i32 [ 0, %.lr.ph17.i ], [ %i.p, %middle.block ]
  %.sroa.06.015.i.ph = phi ptr [ %i.d, %.lr.ph17.i ], [ %i.j, %middle.block ]
  br label %scalar.ph, !dbg !180506

bb.d:                                             ; preds = %._crit_edge.i
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %3, i64 noundef %4, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @396) #45, !dbg !180517, !noalias !180473
  unreachable, !dbg !180517

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.q = phi i32 [ %i.t, %scalar.ph ], [ %.ph, %scalar.ph.preheader ], !dbg !180518
  %.sroa.06.015.i = phi ptr [ %i.r, %scalar.ph ], [ %.sroa.06.015.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.06.015.i, i64 4, !dbg !180518 ; 2 uses
  %i.s = load i32, ptr %.sroa.06.015.i, align 4, !dbg !180511, !noalias !180473, !noundef !14
  %i.t = add i32 %i.s, %i.q, !dbg !180513         ; 2 uses
  %i.u = icmp eq ptr %i.r, %i.b, !dbg !180496
  br i1 %i.u, label %_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowllEINtNtB6_8no_nulls23RollingAggWindowNoNullslE6updateCskY9G75ZWc4U_11polars_expr.exit, label %scalar.ph, !dbg !180506, !llvm.loop !180521

_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowllEINtNtB6_8no_nulls23RollingAggWindowNoNullslE6updateCskY9G75ZWc4U_11polars_expr.exit: ; preds = %scalar.ph, %middle.block, %bb.c
  %.sroa.16.2 = phi i32 [ 0, %bb.c ], [ %i.p, %middle.block ], [ %i.t, %scalar.ph ], !dbg !180522
  store ptr %1, ptr %0, align 8, !dbg !180523
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !180523
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !180523
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !180523
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !180523
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa_idx, i8 0, i64 40, i1 false), !dbg !180523
  store i64 %3, ptr %.sroa.10.0..sroa_idx, align 8, !dbg !180523
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !180523
  store i64 %4, ptr %.sroa.13.0..sroa_idx, align 8, !dbg !180523
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !180523
  store i32 %.sroa.16.2, ptr %.sroa.16.0..sroa_idx, align 8, !dbg !180523
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 76, !dbg !180523
  store i32 0, ptr %.sroa.21.0..sroa_idx, align 4, !dbg !180523
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !180523
  store i32 0, ptr %.sroa.22.0..sroa_idx, align 8, !dbg !180523
  ret void, !dbg !180524
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowllEINtNtB6_8no_nulls23RollingAggWindowNoNullslE6updateCskY9G75ZWc4U_11polars_expr(ptr noalias nofree noundef align 8 captures(none) dereferenceable(88) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !180469 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !180525 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !180525, !noundef !14 ; 2 uses
  %.not = icmp ult i64 %1, %i.b, !dbg !180526
  br i1 %.not, label %._crit_edge22, label %bb.b, !dbg !180526

._crit_edge22:                                    ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !dbg !180527
  br label %bb.c, !dbg !180526

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !180528
  store i32 0, ptr %i.c, align 8, !dbg !180528, !alias.scope !180530
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 76, !dbg !180533
  store i32 0, ptr %i.d, align 4, !dbg !180533, !alias.scope !180530
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !180534
  store i32 0, ptr %i.e, align 8, !dbg !180534, !alias.scope !180530
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !180535
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i8 0, i64 32, i1 false), !dbg !180535, !alias.scope !180530
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !180536
  store i64 %1, ptr %i.g, align 8, !dbg !180536
  store i64 %1, ptr %i.a, align 8, !dbg !180537
  br label %bb.c, !dbg !180538

bb.c:                                             ; preds = %._crit_edge22, %bb.b
  %i.h = phi i64 [ %i.b, %._crit_edge22 ], [ %1, %bb.b ] ; 5 uses
  %i.i = phi i64 [ %.pre, %._crit_edge22 ], [ %1, %bb.b ], !dbg !180527 ; 5 uses
  %i.j = load ptr, ptr %0, align 8, !dbg !180539, !nonnull !14, !align !5752, !noundef !14 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !180539
  %i.l = load i64, ptr %i.k, align 8, !dbg !180539, !noundef !14 ; 4 uses
  %i.m = icmp ult i64 %1, %i.i, !dbg !180540
  %.not11 = icmp ugt i64 %1, %i.l
  %or.cond = or i1 %.not11, %i.m, !dbg !180540
  br i1 %or.cond, label %bb.e, label %bb.d, !dbg !180540, !prof !27399

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %1, !dbg !180544
  %i.o = icmp samesign eq i64 %i.i, %1, !dbg !180551
  br i1 %i.o, label %bb.f, label %.lr.ph, !dbg !180552

.lr.ph:                                           ; preds = %bb.d
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.i, !dbg !180558 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.promoted = load i32, ptr %i.q, align 8, !alias.scope !180561 ; 2 uses
  %i.r = shl i64 %1, 2, !dbg !180552
  %3 = shl i64 %i.i, 2, !dbg !180552
  %4 = add i64 %i.r, -4, !dbg !180552
  %i.s = sub i64 %4, %3, !dbg !180552             ; 2 uses
  %i.t = lshr exact i64 %i.s, 2, !dbg !180552
  %i.u = add nuw nsw i64 %i.t, 1, !dbg !180552    ; 2 uses
  %min.iters.check = icmp ult i64 %i.s, 28, !dbg !180552
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph, !dbg !180552

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.u, 9223372036854775800      ; 3 uses
  %i.v = shl i64 %n.vec, 2
  %i.w = getelementptr i8, ptr %i.p, i64 %i.v
  %i.x = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.promoted, i64 0
  br label %vector.body, !dbg !180552

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.x, %vector.ph ], [ %i.aa, %vector.body ]
  %vec.phi30 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ab, %vector.body ]
  %i.y = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.y ; 2 uses
  %i.z = getelementptr i8, ptr %next.gep, i64 16, !dbg !180566
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !dbg !180566
  %wide.load31 = load <4 x i32>, ptr %i.z, align 4, !dbg !180566
  %i.aa = sub <4 x i32> %vec.phi, %wide.load, !dbg !180568 ; 2 uses
  %i.ab = sub <4 x i32> %vec.phi30, %wide.load31, !dbg !180568 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec, !dbg !180552
  br i1 %i.ac, label %middle.block, label %vector.body, !dbg !180552, !llvm.loop !180571

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ab, %i.aa, !dbg !180552
  %i.ad = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx), !dbg !180552 ; 2 uses
  %cmp.n = icmp eq i64 %i.u, %n.vec, !dbg !180552
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader, !dbg !180552

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.ph52 = phi i32 [ %.promoted, %.lr.ph ], [ %i.ad, %middle.block ]
  %.sroa.03.014.ph = phi ptr [ %i.p, %.lr.ph ], [ %i.w, %middle.block ]
  br label %scalar.ph, !dbg !180552

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.i, i64 noundef %1, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @397) #45, !dbg !180572
  unreachable, !dbg !180572

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.ae = phi i32 [ %i.ah, %scalar.ph ], [ %.ph52, %scalar.ph.preheader ], !dbg !180573
  %.sroa.03.014 = phi ptr [ %i.af, %scalar.ph ], [ %.sroa.03.014.ph, %scalar.ph.preheader ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.03.014, i64 4, !dbg !180573 ; 2 uses
  %i.ag = load i32, ptr %.sroa.03.014, align 4, !dbg !180566, !noundef !14
  %i.ah = sub i32 %i.ae, %i.ag, !dbg !180568      ; 2 uses
  %i.ai = icmp eq ptr %i.af, %i.n, !dbg !180551
  br i1 %i.ai, label %._crit_edge, label %scalar.ph, !dbg !180552, !llvm.loop !180575

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %.lcssa29 = phi i32 [ %i.ad, %middle.block ], [ %i.ah, %scalar.ph ], !dbg !180568
  store i32 %.lcssa29, ptr %i.q, align 8, !dbg !180568, !alias.scope !180561
  br label %bb.f, !dbg !180552

bb.f:                                             ; preds = %._crit_edge, %bb.d
  %i.aj = icmp ult i64 %2, %i.h, !dbg !180576
  %.not12 = icmp ugt i64 %2, %i.l
  %or.cond13 = or i1 %.not12, %i.aj, !dbg !180576
  br i1 %or.cond13, label %bb.h, label %bb.g, !dbg !180576, !prof !27399

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %2, !dbg !180580
  %i.al = icmp samesign eq i64 %i.h, %2, !dbg !180585
  br i1 %i.al, label %bb.i, label %.lr.ph17, !dbg !180588

.lr.ph17:                                         ; preds = %bb.g
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.h, !dbg !180589 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.promoted19 = load i32, ptr %i.an, align 8, !alias.scope !180591 ; 2 uses
  %i.ao = shl i64 %2, 2, !dbg !180588
  %5 = shl i64 %i.h, 2, !dbg !180588
  %6 = add i64 %i.ao, -4, !dbg !180588
  %i.ap = sub i64 %6, %5, !dbg !180588            ; 2 uses
  %i.aq = lshr exact i64 %i.ap, 2, !dbg !180588
  %i.ar = add nuw nsw i64 %i.aq, 1, !dbg !180588  ; 2 uses
  %min.iters.check33 = icmp ult i64 %i.ap, 28, !dbg !180588
  br i1 %min.iters.check33, label %scalar.ph32.preheader, label %vector.ph34, !dbg !180588

vector.ph34:                                      ; preds = %.lr.ph17
  %n.vec35 = and i64 %i.ar, 9223372036854775800   ; 3 uses
  %i.as = shl i64 %n.vec35, 2
  %i.at = getelementptr i8, ptr %i.am, i64 %i.as
  %i.au = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.promoted19, i64 0
  br label %vector.body36, !dbg !180588

vector.body36:                                    ; preds = %vector.body36, %vector.ph34
  %index37 = phi i64 [ 0, %vector.ph34 ], [ %index.next43, %vector.body36 ] ; 2 uses
  %vec.phi38 = phi <4 x i32> [ %i.au, %vector.ph34 ], [ %i.ax, %vector.body36 ]
  %vec.phi39 = phi <4 x i32> [ zeroinitializer, %vector.ph34 ], [ %i.ay, %vector.body36 ]
  %i.av = shl i64 %index37, 2
  %next.gep40 = getelementptr i8, ptr %i.am, i64 %i.av ; 2 uses
  %i.aw = getelementptr i8, ptr %next.gep40, i64 16, !dbg !180596
  %wide.load41 = load <4 x i32>, ptr %next.gep40, align 4, !dbg !180596
  %wide.load42 = load <4 x i32>, ptr %i.aw, align 4, !dbg !180596
  %i.ax = add <4 x i32> %vec.phi38, %wide.load41, !dbg !180597 ; 2 uses
  %i.ay = add <4 x i32> %vec.phi39, %wide.load42, !dbg !180597 ; 2 uses
  %index.next43 = add nuw i64 %index37, 8         ; 2 uses
  %i.az = icmp eq i64 %index.next43, %n.vec35, !dbg !180588
  br i1 %i.az, label %middle.block44, label %vector.body36, !dbg !180588, !llvm.loop !180600

middle.block44:                                   ; preds = %vector.body36
  %bin.rdx45 = add <4 x i32> %i.ay, %i.ax, !dbg !180588
  %i.ba = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx45), !dbg !180588 ; 2 uses
  %cmp.n46 = icmp eq i64 %i.ar, %n.vec35, !dbg !180588
  br i1 %cmp.n46, label %._crit_edge18, label %scalar.ph32.preheader, !dbg !180588

scalar.ph32.preheader:                            ; preds = %.lr.ph17, %middle.block44
  %.ph = phi i32 [ %.promoted19, %.lr.ph17 ], [ %i.ba, %middle.block44 ]
  %.sroa.06.015.ph = phi ptr [ %i.am, %.lr.ph17 ], [ %i.at, %middle.block44 ]
  br label %scalar.ph32, !dbg !180588

bb.h:                                             ; preds = %bb.f
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.h, i64 noundef %2, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @396) #45, !dbg !180601
  unreachable, !dbg !180601

scalar.ph32:                                      ; preds = %scalar.ph32.preheader, %scalar.ph32
  %i.bb = phi i32 [ %i.be, %scalar.ph32 ], [ %.ph, %scalar.ph32.preheader ], !dbg !180602
  %.sroa.06.015 = phi ptr [ %i.bc, %scalar.ph32 ], [ %.sroa.06.015.ph, %scalar.ph32.preheader ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.06.015, i64 4, !dbg !180602 ; 2 uses
  %i.bd = load i32, ptr %.sroa.06.015, align 4, !dbg !180596, !noundef !14
  %i.be = add i32 %i.bb, %i.bd, !dbg !180597      ; 2 uses
  %i.bf = icmp eq ptr %i.bc, %i.ak, !dbg !180585
  br i1 %i.bf, label %._crit_edge18, label %scalar.ph32, !dbg !180588, !llvm.loop !180604

._crit_edge18:                                    ; preds = %scalar.ph32, %middle.block44
  %.lcssa = phi i32 [ %i.ba, %middle.block44 ], [ %i.be, %scalar.ph32 ], !dbg !180597
  store i32 %.lcssa, ptr %i.an, align 8, !dbg !180597, !alias.scope !180591
  br label %bb.i, !dbg !180588

bb.i:                                             ; preds = %._crit_edge18, %bb.g
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !180527
  store i64 %1, ptr %i.bg, align 8, !dbg !180605
  store i64 %2, ptr %i.a, align 8, !dbg !180606
  ret void, !dbg !180607
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowllEINtNtB6_8no_nulls23RollingAggWindowNoNullslE7get_aggCskY9G75ZWc4U_11polars_expr(ptr noalias noundef readonly align 8 captures(none) dereferenceable(88) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !180608 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !180609), !dbg !180612
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !180613
  %i.b = load i64, ptr %i.a, align 8, !dbg !180613, !alias.scope !180609, !noundef !14 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0, !dbg !180613
  br i1 %i.c, label %bb.b, label %bb.c, !dbg !180613

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !180615
  %i.e = load i32, ptr %i.d, align 8, !dbg !180615, !alias.scope !180609, !noundef !14
  br label %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowllE7get_sumCskY9G75ZWc4U_11polars_expr.exit, !dbg !180616

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !180617
  %i.g = load i64, ptr %i.f, align 8, !dbg !180617, !alias.scope !180609, !noundef !14
  %i.h = icmp eq i64 %i.b, %i.g, !dbg !180618
  br i1 %i.h, label %bb.e, label %bb.d, !dbg !180618

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !180619
  %i.j = load i64, ptr %i.i, align 8, !dbg !180619, !alias.scope !180609, !noundef !14
  %i.k = icmp eq i64 %i.b, %i.j, !dbg !180620
  br i1 %i.k, label %bb.g, label %bb.f, !dbg !180620

bb.e:                                             ; preds = %bb.c
  %i.l = tail call noundef i32 @_RNvYlNtNtCs2mZqlW55729_12polars_utils5float7IsFloat13pos_inf_valueCskY9G75ZWc4U_11polars_expr(), !dbg !180621, !noalias !180609
  br label %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowllE7get_sumCskY9G75ZWc4U_11polars_expr.exit, !dbg !180622

bb.f:                                             ; preds = %bb.d
  %i.m = tail call noundef i32 @_RNvYlNtNtCs2mZqlW55729_12polars_utils5float7IsFloat9nan_valueCskY9G75ZWc4U_11polars_expr(), !dbg !180623, !noalias !180609
  br label %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowllE7get_sumCskY9G75ZWc4U_11polars_expr.exit, !dbg !180624

bb.g:                                             ; preds = %bb.d
  %i.n = tail call noundef i32 @_RNvYlNtNtCs2mZqlW55729_12polars_utils5float7IsFloat13neg_inf_valueCskY9G75ZWc4U_11polars_expr(), !dbg !180625, !noalias !180609
  br label %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowllE7get_sumCskY9G75ZWc4U_11polars_expr.exit, !dbg !180624

_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowllE7get_sumCskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.b, %bb.e, %bb.f, %bb.g
  %.sroa.5.0.i = phi i32 [ %i.e, %bb.b ], [ %i.l, %bb.e ], [ %i.n, %bb.g ], [ %i.m, %bb.f ], !dbg !180626
  %i.o = insertvalue { i32, i32 } { i32 1, i32 undef }, i32 %.sroa.5.0.i, 1, !dbg !180627
  ret { i32, i32 } %i.o, !dbg !180628
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowmmEINtNtB6_8no_nulls23RollingAggWindowNoNullsmE3newCskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef range(i64 0, 2305843009213693952) %2, i64 noundef %3, i64 noundef %4, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %5, i64 noundef range(i64 0, 2) %6, i64 %7) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !180629 {
bb.a:
  %.not11.i = icmp ugt i64 %3, %2
  br i1 %.not11.i, label %bb.b, label %._crit_edge.i, !dbg !180630, !prof !27399

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %3, i64 noundef %3, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @397) #45, !dbg !180640, !noalias !180641
  unreachable, !dbg !180640

._crit_edge.i:                                    ; preds = %bb.a
  %i.a = icmp ult i64 %4, %3, !dbg !180644
  %.not12.i = icmp ugt i64 %4, %2
  %or.cond13.i = or i1 %.not12.i, %i.a, !dbg !180644
  br i1 %or.cond13.i, label %bb.d, label %bb.c, !dbg !180644, !prof !27399

bb.c:                                             ; preds = %._crit_edge.i
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %4, !dbg !180650
  %i.c = icmp samesign eq i64 %3, %4, !dbg !180664
  br i1 %i.c, label %_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowmmEINtNtB6_8no_nulls23RollingAggWindowNoNullsmE6updateCskY9G75ZWc4U_11polars_expr.exit, label %.lr.ph17.i, !dbg !180674

.lr.ph17.i:                                       ; preds = %bb.c
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %3, !dbg !180675 ; 3 uses
  %i.e = shl i64 %4, 2, !dbg !180674
  %8 = shl i64 %3, 2, !dbg !180674
  %9 = add i64 %i.e, -4, !dbg !180674
  %i.f = sub i64 %9, %8, !dbg !180674             ; 2 uses
  %i.g = lshr exact i64 %i.f, 2, !dbg !180674
  %i.h = add nuw nsw i64 %i.g, 1, !dbg !180674    ; 2 uses
  %min.iters.check = icmp ult i64 %i.f, 28, !dbg !180674
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph, !dbg !180674

vector.ph:                                        ; preds = %.lr.ph17.i
  %n.vec = and i64 %i.h, 9223372036854775800      ; 3 uses
  %i.i = shl i64 %n.vec, 2
  %i.j = getelementptr i8, ptr %i.d, i64 %i.i
  br label %vector.body, !dbg !180674

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.m, %vector.body ]
  %vec.phi8 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.n, %vector.body ]
  %i.k = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.k ; 2 uses
  %i.l = getelementptr i8, ptr %next.gep, i64 16, !dbg !180679
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !dbg !180679, !noalias !180641
  %wide.load9 = load <4 x i32>, ptr %i.l, align 4, !dbg !180679, !noalias !180641
  %i.m = add <4 x i32> %wide.load, %vec.phi, !dbg !180681 ; 2 uses
  %i.n = add <4 x i32> %wide.load9, %vec.phi8, !dbg !180681 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec, !dbg !180674
  br i1 %i.o, label %middle.block, label %vector.body, !dbg !180674, !llvm.loop !180684

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.n, %i.m, !dbg !180674
  %i.p = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx), !dbg !180674 ; 2 uses
  %cmp.n = icmp eq i64 %i.h, %n.vec, !dbg !180674
  br i1 %cmp.n, label %_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowmmEINtNtB6_8no_nulls23RollingAggWindowNoNullsmE6updateCskY9G75ZWc4U_11polars_expr.exit, label %scalar.ph.preheader, !dbg !180674

scalar.ph.preheader:                              ; preds = %.lr.ph17.i, %middle.block
  %.ph = phi i32 [ 0, %.lr.ph17.i ], [ %i.p, %middle.block ]
  %.sroa.06.015.i.ph = phi ptr [ %i.d, %.lr.ph17.i ], [ %i.j, %middle.block ]
  br label %scalar.ph, !dbg !180674

bb.d:                                             ; preds = %._crit_edge.i
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %3, i64 noundef %4, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @396) #45, !dbg !180685, !noalias !180641
  unreachable, !dbg !180685

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.q = phi i32 [ %i.t, %scalar.ph ], [ %.ph, %scalar.ph.preheader ], !dbg !180686
  %.sroa.06.015.i = phi ptr [ %i.r, %scalar.ph ], [ %.sroa.06.015.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.06.015.i, i64 4, !dbg !180686 ; 2 uses
  %i.s = load i32, ptr %.sroa.06.015.i, align 4, !dbg !180679, !noalias !180641, !noundef !14
  %i.t = add i32 %i.s, %i.q, !dbg !180681         ; 2 uses
  %i.u = icmp eq ptr %i.r, %i.b, !dbg !180664
  br i1 %i.u, label %_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowmmEINtNtB6_8no_nulls23RollingAggWindowNoNullsmE6updateCskY9G75ZWc4U_11polars_expr.exit, label %scalar.ph, !dbg !180674, !llvm.loop !180689

_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowmmEINtNtB6_8no_nulls23RollingAggWindowNoNullsmE6updateCskY9G75ZWc4U_11polars_expr.exit: ; preds = %scalar.ph, %middle.block, %bb.c
  %.sroa.16.2 = phi i32 [ 0, %bb.c ], [ %i.p, %middle.block ], [ %i.t, %scalar.ph ], !dbg !180690
  store ptr %1, ptr %0, align 8, !dbg !180691
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !180691
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !180691
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !180691
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !180691
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa_idx, i8 0, i64 40, i1 false), !dbg !180691
  store i64 %3, ptr %.sroa.10.0..sroa_idx, align 8, !dbg !180691
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !180691
  store i64 %4, ptr %.sroa.13.0..sroa_idx, align 8, !dbg !180691
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !180691
  store i32 %.sroa.16.2, ptr %.sroa.16.0..sroa_idx, align 8, !dbg !180691
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 76, !dbg !180691
  store i32 0, ptr %.sroa.21.0..sroa_idx, align 4, !dbg !180691
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !180691
  store i32 0, ptr %.sroa.22.0..sroa_idx, align 8, !dbg !180691
  ret void, !dbg !180692
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowmmEINtNtB6_8no_nulls23RollingAggWindowNoNullsmE6updateCskY9G75ZWc4U_11polars_expr(ptr noalias nofree noundef align 8 captures(none) dereferenceable(88) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !180637 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !180693 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !180693, !noundef !14 ; 2 uses
  %.not = icmp ult i64 %1, %i.b, !dbg !180694
  br i1 %.not, label %._crit_edge22, label %bb.b, !dbg !180694

._crit_edge22:                                    ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !dbg !180695
  br label %bb.c, !dbg !180694

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !180696
  store i32 0, ptr %i.c, align 8, !dbg !180696, !alias.scope !180698
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 76, !dbg !180701
  store i32 0, ptr %i.d, align 4, !dbg !180701, !alias.scope !180698
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !180702
  store i32 0, ptr %i.e, align 8, !dbg !180702, !alias.scope !180698
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !180703
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i8 0, i64 32, i1 false), !dbg !180703, !alias.scope !180698
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !180704
  store i64 %1, ptr %i.g, align 8, !dbg !180704
  store i64 %1, ptr %i.a, align 8, !dbg !180705
  br label %bb.c, !dbg !180706

bb.c:                                             ; preds = %._crit_edge22, %bb.b
  %i.h = phi i64 [ %i.b, %._crit_edge22 ], [ %1, %bb.b ] ; 5 uses
  %i.i = phi i64 [ %.pre, %._crit_edge22 ], [ %1, %bb.b ], !dbg !180695 ; 5 uses
  %i.j = load ptr, ptr %0, align 8, !dbg !180707, !nonnull !14, !align !5752, !noundef !14 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !180707
  %i.l = load i64, ptr %i.k, align 8, !dbg !180707, !noundef !14 ; 4 uses
  %i.m = icmp ult i64 %1, %i.i, !dbg !180708
  %.not11 = icmp ugt i64 %1, %i.l
  %or.cond = or i1 %.not11, %i.m, !dbg !180708
  br i1 %or.cond, label %bb.e, label %bb.d, !dbg !180708, !prof !27399

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %1, !dbg !180712
  %i.o = icmp samesign eq i64 %i.i, %1, !dbg !180719
  br i1 %i.o, label %bb.f, label %.lr.ph, !dbg !180720

.lr.ph:                                           ; preds = %bb.d
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.i, !dbg !180726 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.promoted = load i32, ptr %i.q, align 8, !alias.scope !180729 ; 2 uses
  %i.r = shl i64 %1, 2, !dbg !180720
  %3 = shl i64 %i.i, 2, !dbg !180720
  %4 = add i64 %i.r, -4, !dbg !180720
  %i.s = sub i64 %4, %3, !dbg !180720             ; 2 uses
  %i.t = lshr exact i64 %i.s, 2, !dbg !180720
  %i.u = add nuw nsw i64 %i.t, 1, !dbg !180720    ; 2 uses
  %min.iters.check = icmp ult i64 %i.s, 28, !dbg !180720
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph, !dbg !180720

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.u, 9223372036854775800      ; 3 uses
  %i.v = shl i64 %n.vec, 2
  %i.w = getelementptr i8, ptr %i.p, i64 %i.v
  %i.x = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.promoted, i64 0
  br label %vector.body, !dbg !180720

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.x, %vector.ph ], [ %i.aa, %vector.body ]
  %vec.phi30 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ab, %vector.body ]
  %i.y = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.y ; 2 uses
  %i.z = getelementptr i8, ptr %next.gep, i64 16, !dbg !180734
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !dbg !180734
  %wide.load31 = load <4 x i32>, ptr %i.z, align 4, !dbg !180734
  %i.aa = sub <4 x i32> %vec.phi, %wide.load, !dbg !180736 ; 2 uses
  %i.ab = sub <4 x i32> %vec.phi30, %wide.load31, !dbg !180736 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec, !dbg !180720
  br i1 %i.ac, label %middle.block, label %vector.body, !dbg !180720, !llvm.loop !180739

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ab, %i.aa, !dbg !180720
  %i.ad = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx), !dbg !180720 ; 2 uses
  %cmp.n = icmp eq i64 %i.u, %n.vec, !dbg !180720
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader, !dbg !180720

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.ph52 = phi i32 [ %.promoted, %.lr.ph ], [ %i.ad, %middle.block ]
  %.sroa.03.014.ph = phi ptr [ %i.p, %.lr.ph ], [ %i.w, %middle.block ]
  br label %scalar.ph, !dbg !180720

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.i, i64 noundef %1, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @397) #45, !dbg !180740
  unreachable, !dbg !180740

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.ae = phi i32 [ %i.ah, %scalar.ph ], [ %.ph52, %scalar.ph.preheader ], !dbg !180741
  %.sroa.03.014 = phi ptr [ %i.af, %scalar.ph ], [ %.sroa.03.014.ph, %scalar.ph.preheader ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.03.014, i64 4, !dbg !180741 ; 2 uses
  %i.ag = load i32, ptr %.sroa.03.014, align 4, !dbg !180734, !noundef !14
  %i.ah = sub i32 %i.ae, %i.ag, !dbg !180736      ; 2 uses
  %i.ai = icmp eq ptr %i.af, %i.n, !dbg !180719
  br i1 %i.ai, label %._crit_edge, label %scalar.ph, !dbg !180720, !llvm.loop !180743

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %.lcssa29 = phi i32 [ %i.ad, %middle.block ], [ %i.ah, %scalar.ph ], !dbg !180736
  store i32 %.lcssa29, ptr %i.q, align 8, !dbg !180736, !alias.scope !180729
  br label %bb.f, !dbg !180720

bb.f:                                             ; preds = %._crit_edge, %bb.d
  %i.aj = icmp ult i64 %2, %i.h, !dbg !180744
  %.not12 = icmp ugt i64 %2, %i.l
  %or.cond13 = or i1 %.not12, %i.aj, !dbg !180744
  br i1 %or.cond13, label %bb.h, label %bb.g, !dbg !180744, !prof !27399

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %2, !dbg !180748
  %i.al = icmp samesign eq i64 %i.h, %2, !dbg !180753
  br i1 %i.al, label %bb.i, label %.lr.ph17, !dbg !180756

.lr.ph17:                                         ; preds = %bb.g
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.h, !dbg !180757 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.promoted19 = load i32, ptr %i.an, align 8, !alias.scope !180759 ; 2 uses
  %i.ao = shl i64 %2, 2, !dbg !180756
  %5 = shl i64 %i.h, 2, !dbg !180756
  %6 = add i64 %i.ao, -4, !dbg !180756
  %i.ap = sub i64 %6, %5, !dbg !180756            ; 2 uses
  %i.aq = lshr exact i64 %i.ap, 2, !dbg !180756
  %i.ar = add nuw nsw i64 %i.aq, 1, !dbg !180756  ; 2 uses
  %min.iters.check33 = icmp ult i64 %i.ap, 28, !dbg !180756
  br i1 %min.iters.check33, label %scalar.ph32.preheader, label %vector.ph34, !dbg !180756

vector.ph34:                                      ; preds = %.lr.ph17
  %n.vec35 = and i64 %i.ar, 9223372036854775800   ; 3 uses
  %i.as = shl i64 %n.vec35, 2
  %i.at = getelementptr i8, ptr %i.am, i64 %i.as
  %i.au = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.promoted19, i64 0
  br label %vector.body36, !dbg !180756

vector.body36:                                    ; preds = %vector.body36, %vector.ph34
  %index37 = phi i64 [ 0, %vector.ph34 ], [ %index.next43, %vector.body36 ] ; 2 uses
  %vec.phi38 = phi <4 x i32> [ %i.au, %vector.ph34 ], [ %i.ax, %vector.body36 ]
  %vec.phi39 = phi <4 x i32> [ zeroinitializer, %vector.ph34 ], [ %i.ay, %vector.body36 ]
  %i.av = shl i64 %index37, 2
  %next.gep40 = getelementptr i8, ptr %i.am, i64 %i.av ; 2 uses
  %i.aw = getelementptr i8, ptr %next.gep40, i64 16, !dbg !180764
  %wide.load41 = load <4 x i32>, ptr %next.gep40, align 4, !dbg !180764
  %wide.load42 = load <4 x i32>, ptr %i.aw, align 4, !dbg !180764
  %i.ax = add <4 x i32> %vec.phi38, %wide.load41, !dbg !180765 ; 2 uses
  %i.ay = add <4 x i32> %vec.phi39, %wide.load42, !dbg !180765 ; 2 uses
  %index.next43 = add nuw i64 %index37, 8         ; 2 uses
  %i.az = icmp eq i64 %index.next43, %n.vec35, !dbg !180756
  br i1 %i.az, label %middle.block44, label %vector.body36, !dbg !180756, !llvm.loop !180768

middle.block44:                                   ; preds = %vector.body36
  %bin.rdx45 = add <4 x i32> %i.ay, %i.ax, !dbg !180756
  %i.ba = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx45), !dbg !180756 ; 2 uses
  %cmp.n46 = icmp eq i64 %i.ar, %n.vec35, !dbg !180756
  br i1 %cmp.n46, label %._crit_edge18, label %scalar.ph32.preheader, !dbg !180756

scalar.ph32.preheader:                            ; preds = %.lr.ph17, %middle.block44
  %.ph = phi i32 [ %.promoted19, %.lr.ph17 ], [ %i.ba, %middle.block44 ]
  %.sroa.06.015.ph = phi ptr [ %i.am, %.lr.ph17 ], [ %i.at, %middle.block44 ]
  br label %scalar.ph32, !dbg !180756

bb.h:                                             ; preds = %bb.f
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.h, i64 noundef %2, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @396) #45, !dbg !180769
  unreachable, !dbg !180769

scalar.ph32:                                      ; preds = %scalar.ph32.preheader, %scalar.ph32
  %i.bb = phi i32 [ %i.be, %scalar.ph32 ], [ %.ph, %scalar.ph32.preheader ], !dbg !180770
  %.sroa.06.015 = phi ptr [ %i.bc, %scalar.ph32 ], [ %.sroa.06.015.ph, %scalar.ph32.preheader ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.06.015, i64 4, !dbg !180770 ; 2 uses
  %i.bd = load i32, ptr %.sroa.06.015, align 4, !dbg !180764, !noundef !14
  %i.be = add i32 %i.bb, %i.bd, !dbg !180765      ; 2 uses
  %i.bf = icmp eq ptr %i.bc, %i.ak, !dbg !180753
  br i1 %i.bf, label %._crit_edge18, label %scalar.ph32, !dbg !180756, !llvm.loop !180772

._crit_edge18:                                    ; preds = %scalar.ph32, %middle.block44
  %.lcssa = phi i32 [ %i.ba, %middle.block44 ], [ %i.be, %scalar.ph32 ], !dbg !180765
  store i32 %.lcssa, ptr %i.an, align 8, !dbg !180765, !alias.scope !180759
  br label %bb.i, !dbg !180756

bb.i:                                             ; preds = %._crit_edge18, %bb.g
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !180695
  store i64 %1, ptr %i.bg, align 8, !dbg !180773
  store i64 %2, ptr %i.a, align 8, !dbg !180774
  ret void, !dbg !180775
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowmmEINtNtB6_8no_nulls23RollingAggWindowNoNullsmE7get_aggCskY9G75ZWc4U_11polars_expr(ptr noalias noundef readonly align 8 captures(none) dereferenceable(88) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !180776 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !180777), !dbg !180780
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !180781
  %i.b = load i64, ptr %i.a, align 8, !dbg !180781, !alias.scope !180777, !noundef !14 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0, !dbg !180781
  br i1 %i.c, label %bb.b, label %bb.c, !dbg !180781

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !180783
  %i.e = load i32, ptr %i.d, align 8, !dbg !180783, !alias.scope !180777, !noundef !14
  br label %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowmmE7get_sumCskY9G75ZWc4U_11polars_expr.exit, !dbg !180784

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !180785
  %i.g = load i64, ptr %i.f, align 8, !dbg !180785, !alias.scope !180777, !noundef !14
  %i.h = icmp eq i64 %i.b, %i.g, !dbg !180786
  br i1 %i.h, label %bb.e, label %bb.d, !dbg !180786

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !180787
  %i.j = load i64, ptr %i.i, align 8, !dbg !180787, !alias.scope !180777, !noundef !14
  %i.k = icmp eq i64 %i.b, %i.j, !dbg !180788
  br i1 %i.k, label %bb.g, label %bb.f, !dbg !180788

bb.e:                                             ; preds = %bb.c
  %i.l = tail call noundef i32 @_RNvYmNtNtCs2mZqlW55729_12polars_utils5float7IsFloat13pos_inf_valueCskY9G75ZWc4U_11polars_expr(), !dbg !180789, !noalias !180777
  br label %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowmmE7get_sumCskY9G75ZWc4U_11polars_expr.exit, !dbg !180790

bb.f:                                             ; preds = %bb.d
  %i.m = tail call noundef i32 @_RNvYmNtNtCs2mZqlW55729_12polars_utils5float7IsFloat9nan_valueCskY9G75ZWc4U_11polars_expr(), !dbg !180791, !noalias !180777
  br label %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowmmE7get_sumCskY9G75ZWc4U_11polars_expr.exit, !dbg !180792

bb.g:                                             ; preds = %bb.d
  %i.n = tail call noundef i32 @_RNvYmNtNtCs2mZqlW55729_12polars_utils5float7IsFloat13neg_inf_valueCskY9G75ZWc4U_11polars_expr(), !dbg !180793, !noalias !180777
  br label %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowmmE7get_sumCskY9G75ZWc4U_11polars_expr.exit, !dbg !180792

_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowmmE7get_sumCskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.b, %bb.e, %bb.f, %bb.g
  %.sroa.5.0.i = phi i32 [ %i.e, %bb.b ], [ %i.l, %bb.e ], [ %i.n, %bb.g ], [ %i.m, %bb.f ], !dbg !180794
  %i.o = insertvalue { i32, i32 } { i32 1, i32 undef }, i32 %.sroa.5.0.i, 1, !dbg !180795
  ret { i32, i32 } %i.o, !dbg !180796
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindownnEINtNtB6_8no_nulls23RollingAggWindowNoNullsnE3newCskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 16 captures(none) dereferenceable(128) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %1, i64 noundef range(i64 0, 576460752303423488) %2, i64 noundef %3, i64 noundef %4, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %5, i64 noundef range(i64 0, 2) %6, i64 %7) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !180797 {
bb.a:
  %.not11.i = icmp ugt i64 %3, %2
  br i1 %.not11.i, label %bb.b, label %._crit_edge.i, !dbg !180798, !prof !27399

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %3, i64 noundef %3, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @397) #45, !dbg !180808, !noalias !180809
  unreachable, !dbg !180808

._crit_edge.i:                                    ; preds = %bb.a
  %i.a = icmp ult i64 %4, %3, !dbg !180812
  %.not12.i = icmp ugt i64 %4, %2
  %or.cond13.i = or i1 %.not12.i, %i.a, !dbg !180812
  br i1 %or.cond13.i, label %bb.d, label %bb.c, !dbg !180812, !prof !27399

bb.c:                                             ; preds = %._crit_edge.i
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %4, !dbg !180818
  %i.c = icmp samesign eq i64 %3, %4, !dbg !180832
  br i1 %i.c, label %_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindownnEINtNtB6_8no_nulls23RollingAggWindowNoNullsnE6updateCskY9G75ZWc4U_11polars_expr.exit, label %.lr.ph17.i, !dbg !180842

.lr.ph17.i:                                       ; preds = %bb.c
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %3, !dbg !180843
  br label %bb.e, !dbg !180842

bb.d:                                             ; preds = %._crit_edge.i
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %3, i64 noundef %4, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @396) #45, !dbg !180847, !noalias !180809
  unreachable, !dbg !180847

bb.e:                                             ; preds = %bb.e, %.lr.ph17.i
  %i.e = phi i128 [ 0, %.lr.ph17.i ], [ %i.h, %bb.e ], !dbg !180848
  %.sroa.06.015.i = phi ptr [ %i.d, %.lr.ph17.i ], [ %i.f, %bb.e ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.06.015.i, i64 16, !dbg !180848 ; 2 uses
  %i.g = load i128, ptr %.sroa.06.015.i, align 16, !dbg !180851, !noalias !180809, !noundef !14
  %i.h = add i128 %i.g, %i.e, !dbg !180853        ; 2 uses
  %i.i = icmp eq ptr %i.f, %i.b, !dbg !180832
  br i1 %i.i, label %_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindownnEINtNtB6_8no_nulls23RollingAggWindowNoNullsnE6updateCskY9G75ZWc4U_11polars_expr.exit, label %bb.e, !dbg !180842

_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindownnEINtNtB6_8no_nulls23RollingAggWindowNoNullsnE6updateCskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.e, %bb.c
  %.sroa.7.2 = phi i128 [ 0, %bb.c ], [ %i.h, %bb.e ], !dbg !180856
  store ptr %1, ptr %0, align 16, !dbg !180857
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !180857
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !180857
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !180857
  store i128 %.sroa.7.2, ptr %.sroa.7.0..sroa_idx, align 16, !dbg !180857
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !180857
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104, !dbg !180857
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %.sroa.13.0..sroa_idx, i8 0, i64 72, i1 false), !dbg !180857
  store i64 %3, ptr %.sroa.16.0..sroa_idx, align 8, !dbg !180857
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !180857
  store i64 %4, ptr %.sroa.19.0..sroa_idx, align 16, !dbg !180857
  ret void, !dbg !180858
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindownnEINtNtB6_8no_nulls23RollingAggWindowNoNullsnE6updateCskY9G75ZWc4U_11polars_expr(ptr noalias nofree noundef align 16 captures(none) dereferenceable(128) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !180805 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !180859 ; 3 uses
  %i.b = load i64, ptr %i.a, align 16, !dbg !180859, !noundef !14 ; 2 uses
  %.not = icmp ult i64 %1, %i.b, !dbg !180860
  br i1 %.not, label %._crit_edge22, label %bb.b, !dbg !180860

._crit_edge22:                                    ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !dbg !180861
  br label %bb.c, !dbg !180860

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !180862
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !180864
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.c, i8 0, i64 48, i1 false), !dbg !180865, !alias.scope !180866
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i8 0, i64 32, i1 false), !dbg !180864, !alias.scope !180866
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104, !dbg !180869
  store i64 %1, ptr %i.e, align 8, !dbg !180869
  store i64 %1, ptr %i.a, align 16, !dbg !180870
  br label %bb.c, !dbg !180871

bb.c:                                             ; preds = %._crit_edge22, %bb.b
  %i.f = phi i64 [ %i.b, %._crit_edge22 ], [ %1, %bb.b ] ; 4 uses
  %i.g = phi i64 [ %.pre, %._crit_edge22 ], [ %1, %bb.b ], !dbg !180861 ; 4 uses
  %i.h = load ptr, ptr %0, align 16, !dbg !180872, !nonnull !14, !align !109782, !noundef !14 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !180872
  %i.j = load i64, ptr %i.i, align 8, !dbg !180872, !noundef !14 ; 4 uses
  %i.k = icmp ult i64 %1, %i.g, !dbg !180873
  %.not11 = icmp ugt i64 %1, %i.j
  %or.cond = or i1 %.not11, %i.k, !dbg !180873
  br i1 %or.cond, label %bb.e, label %bb.d, !dbg !180873, !prof !27399

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %1, !dbg !180877
  %i.m = icmp samesign eq i64 %i.g, %1, !dbg !180884
  br i1 %i.m, label %bb.g, label %.lr.ph, !dbg !180885

end_hunk_0
begin_hunk_1_@_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowttEINtNtB6_8no_nulls23RollingAggWindowNoNullstE6updateCskY9G75ZWc4U_11polars_expr:bb.a
  unreachable, !dbg !181409

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %i.ao = phi i16 [ %i.ar, %vec.epilog.scalar.ph ], [ %.ph80, %vec.epilog.scalar.ph.preheader ], !dbg !181406
  %.sroa.03.014 = phi ptr [ %i.ap, %vec.epilog.scalar.ph ], [ %.sroa.03.014.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.03.014, i64 2, !dbg !181406 ; 2 uses
  %i.aq = load i16, ptr %.sroa.03.014, align 2, !dbg !181400, !noundef !14
  %i.ar = sub i16 %i.ao, %i.aq, !dbg !181402      ; 2 uses
  %i.as = icmp eq ptr %i.ap, %i.n, !dbg !181385
  br i1 %i.as, label %._crit_edge, label %vec.epilog.scalar.ph, !dbg !181386, !llvm.loop !181410

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa29 = phi i16 [ %i.an, %vec.epilog.middle.block ], [ %i.ag, %middle.block ], [ %i.ar, %vec.epilog.scalar.ph ], !dbg !181402
  store i16 %.lcssa29, ptr %i.q, align 8, !dbg !181402, !alias.scope !181395
  br label %bb.f, !dbg !181386

bb.f:                                             ; preds = %._crit_edge, %bb.d
  %i.at = icmp ult i64 %2, %i.h, !dbg !181411
  %.not12 = icmp ugt i64 %2, %i.l
  %or.cond13 = or i1 %.not12, %i.at, !dbg !181411
  br i1 %or.cond13, label %bb.h, label %bb.g, !dbg !181411, !prof !27399

bb.g:                                             ; preds = %bb.f
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %2, !dbg !181415
  %i.av = icmp samesign eq i64 %i.h, %2, !dbg !181420
  br i1 %i.av, label %bb.i, label %iter.check60, !dbg !181423

iter.check60:                                     ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.h, !dbg !181424 ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.promoted19 = load i16, ptr %i.ax, align 8, !alias.scope !181426 ; 3 uses
  %i.ay = shl i64 %2, 1, !dbg !181423
  %i.az = add i64 %i.ay, -2, !dbg !181423
  %i.ba = shl i64 %i.h, 1, !dbg !181423
  %i.bb = sub i64 %i.az, %i.ba, !dbg !181423      ; 3 uses
  %i.bc = lshr exact i64 %i.bb, 1, !dbg !181423
  %i.bd = add nuw i64 %i.bc, 1, !dbg !181423      ; 5 uses
  %min.iters.check42 = icmp ult i64 %i.bb, 6, !dbg !181423
  br i1 %min.iters.check42, label %vec.epilog.scalar.ph61.preheader, label %vector.main.loop.iter.check43, !dbg !181423

vector.main.loop.iter.check43:                    ; preds = %iter.check60
  %min.iters.check44 = icmp ult i64 %i.bb, 30, !dbg !181423
  br i1 %min.iters.check44, label %vec.epilog.ph64, label %vector.ph45, !dbg !181423

vector.ph45:                                      ; preds = %vector.main.loop.iter.check43
  %i.be = and i64 %i.bd, 12
  %n.vec46 = and i64 %i.bd, -16                   ; 4 uses
  %i.bf = shl i64 %n.vec46, 1
  %i.bg = getelementptr i8, ptr %i.aw, i64 %i.bf
  %i.bh = insertelement <8 x i16> <i16 poison, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>, i16 %.promoted19, i64 0
  br label %vector.body47, !dbg !181423

vector.body47:                                    ; preds = %vector.body47, %vector.ph45
  %index48 = phi i64 [ 0, %vector.ph45 ], [ %index.next54, %vector.body47 ] ; 2 uses
  %vec.phi49 = phi <8 x i16> [ %i.bh, %vector.ph45 ], [ %i.bk, %vector.body47 ]
  %vec.phi50 = phi <8 x i16> [ zeroinitializer, %vector.ph45 ], [ %i.bl, %vector.body47 ]
  %i.bi = shl i64 %index48, 1
  %next.gep51 = getelementptr i8, ptr %i.aw, i64 %i.bi ; 2 uses
  %i.bj = getelementptr i8, ptr %next.gep51, i64 16, !dbg !181431
  %wide.load52 = load <8 x i16>, ptr %next.gep51, align 2, !dbg !181431
  %wide.load53 = load <8 x i16>, ptr %i.bj, align 2, !dbg !181431
  %i.bk = add <8 x i16> %vec.phi49, %wide.load52, !dbg !181432 ; 2 uses
  %i.bl = add <8 x i16> %vec.phi50, %wide.load53, !dbg !181432 ; 2 uses
  %index.next54 = add nuw i64 %index48, 16        ; 2 uses
  %i.bm = icmp eq i64 %index.next54, %n.vec46, !dbg !181423
  br i1 %i.bm, label %middle.block55, label %vector.body47, !dbg !181423, !llvm.loop !181435

middle.block55:                                   ; preds = %vector.body47
  %bin.rdx56 = add <8 x i16> %i.bl, %i.bk, !dbg !181423
  %i.bn = tail call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx56), !dbg !181423 ; 3 uses
  %cmp.n57 = icmp eq i64 %i.bd, %n.vec46, !dbg !181423
  br i1 %cmp.n57, label %._crit_edge18, label %vec.epilog.iter.check62, !dbg !181423

vec.epilog.iter.check62:                          ; preds = %middle.block55
  %min.epilog.iters.check63 = icmp eq i64 %i.be, 0
  br i1 %min.epilog.iters.check63, label %vec.epilog.scalar.ph61.preheader, label %vec.epilog.ph64, !prof !55989

vec.epilog.ph64:                                  ; preds = %vector.main.loop.iter.check43, %vec.epilog.iter.check62
  %vec.epilog.resume.val58 = phi i64 [ %n.vec46, %vec.epilog.iter.check62 ], [ 0, %vector.main.loop.iter.check43 ]
  %bc.merge.rdx59 = phi i16 [ %i.bn, %vec.epilog.iter.check62 ], [ %.promoted19, %vector.main.loop.iter.check43 ], !dbg !181436
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
  %wide.load70 = load <4 x i16>, ptr %next.gep69, align 2, !dbg !181431
  %i.bs = add <4 x i16> %vec.phi68, %wide.load70, !dbg !181432 ; 2 uses
  %index.next71 = add nuw i64 %index67, 4         ; 2 uses
  %i.bt = icmp eq i64 %index.next71, %n.vec65, !dbg !181423
  br i1 %i.bt, label %vec.epilog.middle.block72, label %vec.epilog.vector.body66, !dbg !181423, !llvm.loop !181438

vec.epilog.middle.block72:                        ; preds = %vec.epilog.vector.body66
  %i.bu = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.bs), !dbg !181423 ; 2 uses
  %cmp.n73 = icmp eq i64 %i.bd, %n.vec65, !dbg !181423
  br i1 %cmp.n73, label %._crit_edge18, label %vec.epilog.scalar.ph61.preheader, !dbg !181423

vec.epilog.scalar.ph61.preheader:                 ; preds = %iter.check60, %vec.epilog.iter.check62, %vec.epilog.middle.block72
  %.ph = phi i16 [ %.promoted19, %iter.check60 ], [ %i.bn, %vec.epilog.iter.check62 ], [ %i.bu, %vec.epilog.middle.block72 ]
  %.sroa.06.015.ph = phi ptr [ %i.aw, %iter.check60 ], [ %i.bg, %vec.epilog.iter.check62 ], [ %i.bp, %vec.epilog.middle.block72 ]
  br label %vec.epilog.scalar.ph61, !dbg !181423

bb.h:                                             ; preds = %bb.f
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.h, i64 noundef %2, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @396) #45, !dbg !181439
  unreachable, !dbg !181439

vec.epilog.scalar.ph61:                           ; preds = %vec.epilog.scalar.ph61.preheader, %vec.epilog.scalar.ph61
  %i.bv = phi i16 [ %i.by, %vec.epilog.scalar.ph61 ], [ %.ph, %vec.epilog.scalar.ph61.preheader ], !dbg !181436
  %.sroa.06.015 = phi ptr [ %i.bw, %vec.epilog.scalar.ph61 ], [ %.sroa.06.015.ph, %vec.epilog.scalar.ph61.preheader ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.06.015, i64 2, !dbg !181436 ; 2 uses
  %i.bx = load i16, ptr %.sroa.06.015, align 2, !dbg !181431, !noundef !14
  %i.by = add i16 %i.bv, %i.bx, !dbg !181432      ; 2 uses
  %i.bz = icmp eq ptr %i.bw, %i.au, !dbg !181420
  br i1 %i.bz, label %._crit_edge18, label %vec.epilog.scalar.ph61, !dbg !181423, !llvm.loop !181440

._crit_edge18:                                    ; preds = %vec.epilog.scalar.ph61, %vec.epilog.middle.block72, %middle.block55
  %.lcssa = phi i16 [ %i.bu, %vec.epilog.middle.block72 ], [ %i.bn, %middle.block55 ], [ %i.by, %vec.epilog.scalar.ph61 ], !dbg !181432
  store i16 %.lcssa, ptr %i.ax, align 8, !dbg !181432, !alias.scope !181426
  br label %bb.i, !dbg !181423

bb.i:                                             ; preds = %._crit_edge18, %bb.g
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !181361
  store i64 %1, ptr %i.ca, align 8, !dbg !181441
  store i64 %2, ptr %i.a, align 8, !dbg !181442
  ret void, !dbg !181443
}

; Function Attrs: nonlazybind uwtable
define hidden { i16, i16 } @_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowttEINtNtB6_8no_nulls23RollingAggWindowNoNullstE7get_aggCskY9G75ZWc4U_11polars_expr(ptr noalias noundef readonly align 8 captures(none) dereferenceable(80) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !181444 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !181445), !dbg !181448
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !181449
  %i.b = load i64, ptr %i.a, align 8, !dbg !181449, !alias.scope !181445, !noundef !14 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0, !dbg !181449
  br i1 %i.c, label %bb.b, label %bb.c, !dbg !181449

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !181451
  %i.e = load i16, ptr %i.d, align 8, !dbg !181451, !alias.scope !181445, !noundef !14
  br label %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowttE7get_sumCskY9G75ZWc4U_11polars_expr.exit, !dbg !181452

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !181453
  %i.g = load i64, ptr %i.f, align 8, !dbg !181453, !alias.scope !181445, !noundef !14
  %i.h = icmp eq i64 %i.b, %i.g, !dbg !181454
  br i1 %i.h, label %bb.e, label %bb.d, !dbg !181454

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !181455
  %i.j = load i64, ptr %i.i, align 8, !dbg !181455, !alias.scope !181445, !noundef !14
  %i.k = icmp eq i64 %i.b, %i.j, !dbg !181456
  br i1 %i.k, label %bb.g, label %bb.f, !dbg !181456

bb.e:                                             ; preds = %bb.c
  %i.l = tail call noundef i16 @_RNvYtNtNtCs2mZqlW55729_12polars_utils5float7IsFloat13pos_inf_valueCskY9G75ZWc4U_11polars_expr(), !dbg !181457, !noalias !181445
  br label %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowttE7get_sumCskY9G75ZWc4U_11polars_expr.exit, !dbg !181458

bb.f:                                             ; preds = %bb.d
  %i.m = tail call noundef i16 @_RNvYtNtNtCs2mZqlW55729_12polars_utils5float7IsFloat9nan_valueCskY9G75ZWc4U_11polars_expr(), !dbg !181459, !noalias !181445
  br label %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowttE7get_sumCskY9G75ZWc4U_11polars_expr.exit, !dbg !181460

bb.g:                                             ; preds = %bb.d
  %i.n = tail call noundef i16 @_RNvYtNtNtCs2mZqlW55729_12polars_utils5float7IsFloat13neg_inf_valueCskY9G75ZWc4U_11polars_expr(), !dbg !181461, !noalias !181445
  br label %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowttE7get_sumCskY9G75ZWc4U_11polars_expr.exit, !dbg !181460

_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowttE7get_sumCskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.b, %bb.e, %bb.f, %bb.g
  %.sroa.5.0.i = phi i16 [ %i.e, %bb.b ], [ %i.l, %bb.e ], [ %i.n, %bb.g ], [ %i.m, %bb.f ], !dbg !181462
  %i.o = insertvalue { i16, i16 } { i16 1, i16 undef }, i16 %.sroa.5.0.i, 1, !dbg !181463
  ret { i16, i16 } %i.o, !dbg !181464
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowxxEINtNtB6_8no_nulls23RollingAggWindowNoNullsxE3newCskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 1152921504606846976) %2, i64 noundef %3, i64 noundef %4, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %5, i64 noundef range(i64 0, 2) %6, i64 %7) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !181465 {
bb.a:
  %.not11.i = icmp ugt i64 %3, %2
  br i1 %.not11.i, label %bb.b, label %._crit_edge.i, !dbg !181466, !prof !27399

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %3, i64 noundef %3, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @397) #45, !dbg !181476, !noalias !181477
  unreachable, !dbg !181476

._crit_edge.i:                                    ; preds = %bb.a
  %i.a = icmp ult i64 %4, %3, !dbg !181480
  %.not12.i = icmp ugt i64 %4, %2
  %or.cond13.i = or i1 %.not12.i, %i.a, !dbg !181480
  br i1 %or.cond13.i, label %bb.d, label %bb.c, !dbg !181480, !prof !27399

bb.c:                                             ; preds = %._crit_edge.i
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %4, !dbg !181486
  %i.c = icmp samesign eq i64 %3, %4, !dbg !181500
  br i1 %i.c, label %_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowxxEINtNtB6_8no_nulls23RollingAggWindowNoNullsxE6updateCskY9G75ZWc4U_11polars_expr.exit, label %.lr.ph17.i, !dbg !181510

.lr.ph17.i:                                       ; preds = %bb.c
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %3, !dbg !181511 ; 3 uses
  %i.e = shl i64 %4, 3, !dbg !181510
  %8 = shl i64 %3, 3, !dbg !181510
  %9 = add i64 %i.e, -8, !dbg !181510
  %i.f = sub i64 %9, %8, !dbg !181510             ; 2 uses
  %i.g = lshr exact i64 %i.f, 3, !dbg !181510
  %i.h = add nuw nsw i64 %i.g, 1, !dbg !181510    ; 2 uses
  %min.iters.check = icmp ult i64 %i.f, 24, !dbg !181510
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph, !dbg !181510

vector.ph:                                        ; preds = %.lr.ph17.i
  %n.vec = and i64 %i.h, 4611686018427387900      ; 3 uses
  %i.i = shl i64 %n.vec, 3
  %i.j = getelementptr i8, ptr %i.d, i64 %i.i
  br label %vector.body, !dbg !181510

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.m, %vector.body ]
  %vec.phi8 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.n, %vector.body ]
  %i.k = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.k ; 2 uses
  %i.l = getelementptr i8, ptr %next.gep, i64 16, !dbg !181515
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !dbg !181515, !noalias !181477
  %wide.load9 = load <2 x i64>, ptr %i.l, align 8, !dbg !181515, !noalias !181477
  %i.m = add <2 x i64> %wide.load, %vec.phi, !dbg !181517 ; 2 uses
  %i.n = add <2 x i64> %wide.load9, %vec.phi8, !dbg !181517 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec, !dbg !181510
  br i1 %i.o, label %middle.block, label %vector.body, !dbg !181510, !llvm.loop !181520

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.n, %i.m, !dbg !181510
  %i.p = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx), !dbg !181510 ; 2 uses
  %cmp.n = icmp eq i64 %i.h, %n.vec, !dbg !181510
  br i1 %cmp.n, label %_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowxxEINtNtB6_8no_nulls23RollingAggWindowNoNullsxE6updateCskY9G75ZWc4U_11polars_expr.exit, label %scalar.ph.preheader, !dbg !181510

scalar.ph.preheader:                              ; preds = %.lr.ph17.i, %middle.block
  %.ph = phi i64 [ 0, %.lr.ph17.i ], [ %i.p, %middle.block ]
  %.sroa.06.015.i.ph = phi ptr [ %i.d, %.lr.ph17.i ], [ %i.j, %middle.block ]
  br label %scalar.ph, !dbg !181510

bb.d:                                             ; preds = %._crit_edge.i
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %3, i64 noundef %4, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @396) #45, !dbg !181521, !noalias !181477
  unreachable, !dbg !181521

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.q = phi i64 [ %i.t, %scalar.ph ], [ %.ph, %scalar.ph.preheader ], !dbg !181522
  %.sroa.06.015.i = phi ptr [ %i.r, %scalar.ph ], [ %.sroa.06.015.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.06.015.i, i64 8, !dbg !181522 ; 2 uses
  %i.s = load i64, ptr %.sroa.06.015.i, align 8, !dbg !181515, !noalias !181477, !noundef !14
  %i.t = add i64 %i.s, %i.q, !dbg !181517         ; 2 uses
  %i.u = icmp eq ptr %i.r, %i.b, !dbg !181500
  br i1 %i.u, label %_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowxxEINtNtB6_8no_nulls23RollingAggWindowNoNullsxE6updateCskY9G75ZWc4U_11polars_expr.exit, label %scalar.ph, !dbg !181510, !llvm.loop !181525

_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowxxEINtNtB6_8no_nulls23RollingAggWindowNoNullsxE6updateCskY9G75ZWc4U_11polars_expr.exit: ; preds = %scalar.ph, %middle.block, %bb.c
  %.sroa.8.2 = phi i64 [ 0, %bb.c ], [ %i.p, %middle.block ], [ %i.t, %scalar.ph ], !dbg !181526
  store ptr %1, ptr %0, align 8, !dbg !181527
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !181527
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !181527
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !181527
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !181527
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !181527
  store i64 %.sroa.8.2, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !181527
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !181527
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.14.0..sroa_idx, i8 0, i64 48, i1 false), !dbg !181527
  %.sroa.141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !181527
  store i64 %3, ptr %.sroa.141.0..sroa_idx, align 8, !dbg !181527
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !181527
  store i64 %4, ptr %.sroa.17.0..sroa_idx, align 8, !dbg !181527
  ret void, !dbg !181528
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowxxEINtNtB6_8no_nulls23RollingAggWindowNoNullsxE6updateCskY9G75ZWc4U_11polars_expr(ptr noalias nofree noundef align 8 captures(none) dereferenceable(96) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !181473 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !181529 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !181529, !noundef !14 ; 2 uses
  %.not = icmp ult i64 %1, %i.b, !dbg !181530
  br i1 %.not, label %._crit_edge22, label %bb.b, !dbg !181530

._crit_edge22:                                    ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !dbg !181531
  br label %bb.c, !dbg !181530

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !181532
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i8 0, i64 56, i1 false), !dbg !181534, !alias.scope !181535
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !181538
  store i64 %1, ptr %i.d, align 8, !dbg !181538
  store i64 %1, ptr %i.a, align 8, !dbg !181539
  br label %bb.c, !dbg !181540

bb.c:                                             ; preds = %._crit_edge22, %bb.b
  %i.e = phi i64 [ %i.b, %._crit_edge22 ], [ %1, %bb.b ] ; 5 uses
  %i.f = phi i64 [ %.pre, %._crit_edge22 ], [ %1, %bb.b ], !dbg !181531 ; 5 uses
  %i.g = load ptr, ptr %0, align 8, !dbg !181541, !nonnull !14, !align !2139, !noundef !14 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !181541
  %i.i = load i64, ptr %i.h, align 8, !dbg !181541, !noundef !14 ; 4 uses
  %i.j = icmp ult i64 %1, %i.f, !dbg !181542
  %.not11 = icmp ugt i64 %1, %i.i
  %or.cond = or i1 %.not11, %i.j, !dbg !181542
  br i1 %or.cond, label %bb.e, label %bb.d, !dbg !181542, !prof !27399

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %1, !dbg !181546
  %i.l = icmp samesign eq i64 %i.f, %1, !dbg !181553
  br i1 %i.l, label %bb.f, label %.lr.ph, !dbg !181554

.lr.ph:                                           ; preds = %bb.d
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.f, !dbg !181560 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.promoted = load i64, ptr %i.n, align 8, !alias.scope !181563 ; 2 uses
  %i.o = shl i64 %1, 3, !dbg !181554
  %3 = shl i64 %i.f, 3, !dbg !181554
  %4 = add i64 %i.o, -8, !dbg !181554
  %i.p = sub i64 %4, %3, !dbg !181554             ; 2 uses
  %i.q = lshr exact i64 %i.p, 3, !dbg !181554
  %i.r = add nuw nsw i64 %i.q, 1, !dbg !181554    ; 2 uses
  %min.iters.check = icmp ult i64 %i.p, 24, !dbg !181554
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph, !dbg !181554

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.r, 4611686018427387900      ; 3 uses
  %i.s = shl i64 %n.vec, 3
  %i.t = getelementptr i8, ptr %i.m, i64 %i.s
  %i.u = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.promoted, i64 0
  br label %vector.body, !dbg !181554

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.u, %vector.ph ], [ %i.x, %vector.body ]
  %vec.phi30 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.y, %vector.body ]
  %i.v = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.m, i64 %i.v ; 2 uses
  %i.w = getelementptr i8, ptr %next.gep, i64 16, !dbg !181568
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !dbg !181568
  %wide.load31 = load <2 x i64>, ptr %i.w, align 8, !dbg !181568
  %i.x = sub <2 x i64> %vec.phi, %wide.load, !dbg !181570 ; 2 uses
  %i.y = sub <2 x i64> %vec.phi30, %wide.load31, !dbg !181570 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec, !dbg !181554
  br i1 %i.z, label %middle.block, label %vector.body, !dbg !181554, !llvm.loop !181573

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.y, %i.x, !dbg !181554
  %i.aa = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx), !dbg !181554 ; 2 uses
  %cmp.n = icmp eq i64 %i.r, %n.vec, !dbg !181554
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader, !dbg !181554

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.ph52 = phi i64 [ %.promoted, %.lr.ph ], [ %i.aa, %middle.block ]
  %.sroa.03.014.ph = phi ptr [ %i.m, %.lr.ph ], [ %i.t, %middle.block ]
  br label %scalar.ph, !dbg !181554

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.f, i64 noundef %1, i64 noundef %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @397) #45, !dbg !181574
  unreachable, !dbg !181574

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.ab = phi i64 [ %i.ae, %scalar.ph ], [ %.ph52, %scalar.ph.preheader ], !dbg !181575
  %.sroa.03.014 = phi ptr [ %i.ac, %scalar.ph ], [ %.sroa.03.014.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.03.014, i64 8, !dbg !181575 ; 2 uses
  %i.ad = load i64, ptr %.sroa.03.014, align 8, !dbg !181568, !noundef !14
  %i.ae = sub i64 %i.ab, %i.ad, !dbg !181570      ; 2 uses
  %i.af = icmp eq ptr %i.ac, %i.k, !dbg !181553
  br i1 %i.af, label %._crit_edge, label %scalar.ph, !dbg !181554, !llvm.loop !181577

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %.lcssa29 = phi i64 [ %i.aa, %middle.block ], [ %i.ae, %scalar.ph ], !dbg !181570
  store i64 %.lcssa29, ptr %i.n, align 8, !dbg !181570, !alias.scope !181563
  br label %bb.f, !dbg !181554

bb.f:                                             ; preds = %._crit_edge, %bb.d
  %i.ag = icmp ult i64 %2, %i.e, !dbg !181578
  %.not12 = icmp ugt i64 %2, %i.i
  %or.cond13 = or i1 %.not12, %i.ag, !dbg !181578
  br i1 %or.cond13, label %bb.h, label %bb.g, !dbg !181578, !prof !27399

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %2, !dbg !181582
  %i.ai = icmp samesign eq i64 %i.e, %2, !dbg !181587
  br i1 %i.ai, label %bb.i, label %.lr.ph17, !dbg !181590

.lr.ph17:                                         ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.e, !dbg !181591 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.promoted19 = load i64, ptr %i.ak, align 8, !alias.scope !181593 ; 2 uses
  %i.al = shl i64 %2, 3, !dbg !181590
  %5 = shl i64 %i.e, 3, !dbg !181590
  %6 = add i64 %i.al, -8, !dbg !181590
  %i.am = sub i64 %6, %5, !dbg !181590            ; 2 uses
  %i.an = lshr exact i64 %i.am, 3, !dbg !181590
  %i.ao = add nuw nsw i64 %i.an, 1, !dbg !181590  ; 2 uses
  %min.iters.check33 = icmp ult i64 %i.am, 24, !dbg !181590
  br i1 %min.iters.check33, label %scalar.ph32.preheader, label %vector.ph34, !dbg !181590

vector.ph34:                                      ; preds = %.lr.ph17
  %n.vec35 = and i64 %i.ao, 4611686018427387900   ; 3 uses
  %i.ap = shl i64 %n.vec35, 3
  %i.aq = getelementptr i8, ptr %i.aj, i64 %i.ap
  %i.ar = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.promoted19, i64 0
  br label %vector.body36, !dbg !181590

vector.body36:                                    ; preds = %vector.body36, %vector.ph34
  %index37 = phi i64 [ 0, %vector.ph34 ], [ %index.next43, %vector.body36 ] ; 2 uses
  %vec.phi38 = phi <2 x i64> [ %i.ar, %vector.ph34 ], [ %i.au, %vector.body36 ]
  %vec.phi39 = phi <2 x i64> [ zeroinitializer, %vector.ph34 ], [ %i.av, %vector.body36 ]
  %i.as = shl i64 %index37, 3
  %next.gep40 = getelementptr i8, ptr %i.aj, i64 %i.as ; 2 uses
  %i.at = getelementptr i8, ptr %next.gep40, i64 16, !dbg !181598
  %wide.load41 = load <2 x i64>, ptr %next.gep40, align 8, !dbg !181598
  %wide.load42 = load <2 x i64>, ptr %i.at, align 8, !dbg !181598
  %i.au = add <2 x i64> %vec.phi38, %wide.load41, !dbg !181599 ; 2 uses
  %i.av = add <2 x i64> %vec.phi39, %wide.load42, !dbg !181599 ; 2 uses
  %index.next43 = add nuw i64 %index37, 4         ; 2 uses
  %i.aw = icmp eq i64 %index.next43, %n.vec35, !dbg !181590
  br i1 %i.aw, label %middle.block44, label %vector.body36, !dbg !181590, !llvm.loop !181602

middle.block44:                                   ; preds = %vector.body36
  %bin.rdx45 = add <2 x i64> %i.av, %i.au, !dbg !181590
  %i.ax = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx45), !dbg !181590 ; 2 uses
  %cmp.n46 = icmp eq i64 %i.ao, %n.vec35, !dbg !181590
  br i1 %cmp.n46, label %._crit_edge18, label %scalar.ph32.preheader, !dbg !181590

scalar.ph32.preheader:                            ; preds = %.lr.ph17, %middle.block44
  %.ph = phi i64 [ %.promoted19, %.lr.ph17 ], [ %i.ax, %middle.block44 ]
  %.sroa.06.015.ph = phi ptr [ %i.aj, %.lr.ph17 ], [ %i.aq, %middle.block44 ]
  br label %scalar.ph32, !dbg !181590

bb.h:                                             ; preds = %bb.f
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.e, i64 noundef %2, i64 noundef %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @396) #45, !dbg !181603
  unreachable, !dbg !181603

scalar.ph32:                                      ; preds = %scalar.ph32.preheader, %scalar.ph32
  %i.ay = phi i64 [ %i.bb, %scalar.ph32 ], [ %.ph, %scalar.ph32.preheader ], !dbg !181604
  %.sroa.06.015 = phi ptr [ %i.az, %scalar.ph32 ], [ %.sroa.06.015.ph, %scalar.ph32.preheader ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.06.015, i64 8, !dbg !181604 ; 2 uses
  %i.ba = load i64, ptr %.sroa.06.015, align 8, !dbg !181598, !noundef !14
  %i.bb = add i64 %i.ay, %i.ba, !dbg !181599      ; 2 uses
  %i.bc = icmp eq ptr %i.az, %i.ah, !dbg !181587
  br i1 %i.bc, label %._crit_edge18, label %scalar.ph32, !dbg !181590, !llvm.loop !181606

._crit_edge18:                                    ; preds = %scalar.ph32, %middle.block44
  %.lcssa = phi i64 [ %i.ax, %middle.block44 ], [ %i.bb, %scalar.ph32 ], !dbg !181599
  store i64 %.lcssa, ptr %i.ak, align 8, !dbg !181599, !alias.scope !181593
  br label %bb.i, !dbg !181590

bb.i:                                             ; preds = %._crit_edge18, %bb.g
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !181531
  store i64 %1, ptr %i.bd, align 8, !dbg !181607
  store i64 %2, ptr %i.a, align 8, !dbg !181608
  ret void, !dbg !181609
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowxxEINtNtB6_8no_nulls23RollingAggWindowNoNullsxE7get_aggCskY9G75ZWc4U_11polars_expr(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !181610 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !181611), !dbg !181614
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !181615
  %i.b = load i64, ptr %i.a, align 8, !dbg !181615, !alias.scope !181611, !noundef !14 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0, !dbg !181615
  br i1 %i.c, label %bb.b, label %bb.c, !dbg !181615

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !181617
  %i.e = load i64, ptr %i.d, align 8, !dbg !181617, !alias.scope !181611, !noundef !14
  br label %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowxxE7get_sumCskY9G75ZWc4U_11polars_expr.exit, !dbg !181618

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !181619
  %i.g = load i64, ptr %i.f, align 8, !dbg !181619, !alias.scope !181611, !noundef !14
  %i.h = icmp eq i64 %i.b, %i.g, !dbg !181620
  br i1 %i.h, label %bb.e, label %bb.d, !dbg !181620

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !181621
  %i.j = load i64, ptr %i.i, align 8, !dbg !181621, !alias.scope !181611, !noundef !14
  %i.k = icmp eq i64 %i.b, %i.j, !dbg !181622
  br i1 %i.k, label %bb.g, label %bb.f, !dbg !181622

bb.e:                                             ; preds = %bb.c
  %i.l = tail call noundef i64 @_RNvYxNtNtCs2mZqlW55729_12polars_utils5float7IsFloat13pos_inf_valueCskY9G75ZWc4U_11polars_expr(), !dbg !181623, !noalias !181611
  br label %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowxxE7get_sumCskY9G75ZWc4U_11polars_expr.exit, !dbg !181624

bb.f:                                             ; preds = %bb.d
  %i.m = tail call noundef i64 @_RNvYxNtNtCs2mZqlW55729_12polars_utils5float7IsFloat9nan_valueCskY9G75ZWc4U_11polars_expr(), !dbg !181625, !noalias !181611
  br label %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowxxE7get_sumCskY9G75ZWc4U_11polars_expr.exit, !dbg !181626

bb.g:                                             ; preds = %bb.d
  %i.n = tail call noundef i64 @_RNvYxNtNtCs2mZqlW55729_12polars_utils5float7IsFloat13neg_inf_valueCskY9G75ZWc4U_11polars_expr(), !dbg !181627, !noalias !181611
  br label %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowxxE7get_sumCskY9G75ZWc4U_11polars_expr.exit, !dbg !181626

_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowxxE7get_sumCskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.b, %bb.e, %bb.f, %bb.g
  %.sroa.5.0.i = phi i64 [ %i.e, %bb.b ], [ %i.l, %bb.e ], [ %i.n, %bb.g ], [ %i.m, %bb.f ], !dbg !181628
  %i.o = insertvalue { i64, i64 } { i64 1, i64 undef }, i64 %.sroa.5.0.i, 1, !dbg !181629
  ret { i64, i64 } %i.o, !dbg !181630
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowyyEINtNtB6_8no_nulls23RollingAggWindowNoNullsyE3newCskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 1152921504606846976) %2, i64 noundef %3, i64 noundef %4, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %5, i64 noundef range(i64 0, 2) %6, i64 %7) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !181631 {
bb.a:
  %.not11.i = icmp ugt i64 %3, %2
  br i1 %.not11.i, label %bb.b, label %._crit_edge.i, !dbg !181632, !prof !27399

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %3, i64 noundef %3, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @397) #45, !dbg !181642, !noalias !181643
  unreachable, !dbg !181642

._crit_edge.i:                                    ; preds = %bb.a
  %i.a = icmp ult i64 %4, %3, !dbg !181646
  %.not12.i = icmp ugt i64 %4, %2
  %or.cond13.i = or i1 %.not12.i, %i.a, !dbg !181646
  br i1 %or.cond13.i, label %bb.d, label %bb.c, !dbg !181646, !prof !27399

bb.c:                                             ; preds = %._crit_edge.i
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %4, !dbg !181652
  %i.c = icmp samesign eq i64 %3, %4, !dbg !181666
  br i1 %i.c, label %_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowyyEINtNtB6_8no_nulls23RollingAggWindowNoNullsyE6updateCskY9G75ZWc4U_11polars_expr.exit, label %.lr.ph17.i, !dbg !181676

.lr.ph17.i:                                       ; preds = %bb.c
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %3, !dbg !181677 ; 3 uses
  %i.e = shl i64 %4, 3, !dbg !181676
  %8 = shl i64 %3, 3, !dbg !181676
  %9 = add i64 %i.e, -8, !dbg !181676
  %i.f = sub i64 %9, %8, !dbg !181676             ; 2 uses
  %i.g = lshr exact i64 %i.f, 3, !dbg !181676
  %i.h = add nuw nsw i64 %i.g, 1, !dbg !181676    ; 2 uses
  %min.iters.check = icmp ult i64 %i.f, 24, !dbg !181676
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph, !dbg !181676

vector.ph:                                        ; preds = %.lr.ph17.i
  %n.vec = and i64 %i.h, 4611686018427387900      ; 3 uses
  %i.i = shl i64 %n.vec, 3
  %i.j = getelementptr i8, ptr %i.d, i64 %i.i
  br label %vector.body, !dbg !181676

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.m, %vector.body ]
  %vec.phi8 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.n, %vector.body ]
  %i.k = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.k ; 2 uses
  %i.l = getelementptr i8, ptr %next.gep, i64 16, !dbg !181681
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !dbg !181681, !noalias !181643
  %wide.load9 = load <2 x i64>, ptr %i.l, align 8, !dbg !181681, !noalias !181643
  %i.m = add <2 x i64> %wide.load, %vec.phi, !dbg !181683 ; 2 uses
  %i.n = add <2 x i64> %wide.load9, %vec.phi8, !dbg !181683 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec, !dbg !181676
  br i1 %i.o, label %middle.block, label %vector.body, !dbg !181676, !llvm.loop !181686

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.n, %i.m, !dbg !181676
  %i.p = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx), !dbg !181676 ; 2 uses
  %cmp.n = icmp eq i64 %i.h, %n.vec, !dbg !181676
  br i1 %cmp.n, label %_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowyyEINtNtB6_8no_nulls23RollingAggWindowNoNullsyE6updateCskY9G75ZWc4U_11polars_expr.exit, label %scalar.ph.preheader, !dbg !181676

scalar.ph.preheader:                              ; preds = %.lr.ph17.i, %middle.block
  %.ph = phi i64 [ 0, %.lr.ph17.i ], [ %i.p, %middle.block ]
  %.sroa.06.015.i.ph = phi ptr [ %i.d, %.lr.ph17.i ], [ %i.j, %middle.block ]
  br label %scalar.ph, !dbg !181676

bb.d:                                             ; preds = %._crit_edge.i
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %3, i64 noundef %4, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @396) #45, !dbg !181687, !noalias !181643
  unreachable, !dbg !181687

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.q = phi i64 [ %i.t, %scalar.ph ], [ %.ph, %scalar.ph.preheader ], !dbg !181688
  %.sroa.06.015.i = phi ptr [ %i.r, %scalar.ph ], [ %.sroa.06.015.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.06.015.i, i64 8, !dbg !181688 ; 2 uses
  %i.s = load i64, ptr %.sroa.06.015.i, align 8, !dbg !181681, !noalias !181643, !noundef !14
  %i.t = add i64 %i.s, %i.q, !dbg !181683         ; 2 uses
  %i.u = icmp eq ptr %i.r, %i.b, !dbg !181666
  br i1 %i.u, label %_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowyyEINtNtB6_8no_nulls23RollingAggWindowNoNullsyE6updateCskY9G75ZWc4U_11polars_expr.exit, label %scalar.ph, !dbg !181676, !llvm.loop !181691

_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowyyEINtNtB6_8no_nulls23RollingAggWindowNoNullsyE6updateCskY9G75ZWc4U_11polars_expr.exit: ; preds = %scalar.ph, %middle.block, %bb.c
  %.sroa.8.2 = phi i64 [ 0, %bb.c ], [ %i.p, %middle.block ], [ %i.t, %scalar.ph ], !dbg !181692
  store ptr %1, ptr %0, align 8, !dbg !181693
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !181693
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !181693
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !181693
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !181693
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !181693
  store i64 %.sroa.8.2, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !181693
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !181693
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.14.0..sroa_idx, i8 0, i64 48, i1 false), !dbg !181693
  %.sroa.141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !181693
  store i64 %3, ptr %.sroa.141.0..sroa_idx, align 8, !dbg !181693
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !181693
  store i64 %4, ptr %.sroa.17.0..sroa_idx, align 8, !dbg !181693
  ret void, !dbg !181694
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowyyEINtNtB6_8no_nulls23RollingAggWindowNoNullsyE6updateCskY9G75ZWc4U_11polars_expr(ptr noalias nofree noundef align 8 captures(none) dereferenceable(96) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !181639 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !181695 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !181695, !noundef !14 ; 2 uses
  %.not = icmp ult i64 %1, %i.b, !dbg !181696
  br i1 %.not, label %._crit_edge22, label %bb.b, !dbg !181696

._crit_edge22:                                    ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !dbg !181697
  br label %bb.c, !dbg !181696

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !181698
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i8 0, i64 56, i1 false), !dbg !181700, !alias.scope !181701
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !181704
  store i64 %1, ptr %i.d, align 8, !dbg !181704
  store i64 %1, ptr %i.a, align 8, !dbg !181705
  br label %bb.c, !dbg !181706

bb.c:                                             ; preds = %._crit_edge22, %bb.b
  %i.e = phi i64 [ %i.b, %._crit_edge22 ], [ %1, %bb.b ] ; 5 uses
  %i.f = phi i64 [ %.pre, %._crit_edge22 ], [ %1, %bb.b ], !dbg !181697 ; 5 uses
  %i.g = load ptr, ptr %0, align 8, !dbg !181707, !nonnull !14, !align !2139, !noundef !14 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !181707
  %i.i = load i64, ptr %i.h, align 8, !dbg !181707, !noundef !14 ; 4 uses
  %i.j = icmp ult i64 %1, %i.f, !dbg !181708
  %.not11 = icmp ugt i64 %1, %i.i
  %or.cond = or i1 %.not11, %i.j, !dbg !181708
  br i1 %or.cond, label %bb.e, label %bb.d, !dbg !181708, !prof !27399

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %1, !dbg !181712
  %i.l = icmp samesign eq i64 %i.f, %1, !dbg !181719
  br i1 %i.l, label %bb.f, label %.lr.ph, !dbg !181720

.lr.ph:                                           ; preds = %bb.d
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.f, !dbg !181726 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.promoted = load i64, ptr %i.n, align 8, !alias.scope !181729 ; 2 uses
  %i.o = shl i64 %1, 3, !dbg !181720
  %3 = shl i64 %i.f, 3, !dbg !181720
  %4 = add i64 %i.o, -8, !dbg !181720
  %i.p = sub i64 %4, %3, !dbg !181720             ; 2 uses
  %i.q = lshr exact i64 %i.p, 3, !dbg !181720
  %i.r = add nuw nsw i64 %i.q, 1, !dbg !181720    ; 2 uses
  %min.iters.check = icmp ult i64 %i.p, 24, !dbg !181720
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph, !dbg !181720

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.r, 4611686018427387900      ; 3 uses
  %i.s = shl i64 %n.vec, 3
  %i.t = getelementptr i8, ptr %i.m, i64 %i.s
  %i.u = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.promoted, i64 0
  br label %vector.body, !dbg !181720

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.u, %vector.ph ], [ %i.x, %vector.body ]
  %vec.phi30 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.y, %vector.body ]
  %i.v = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.m, i64 %i.v ; 2 uses
  %i.w = getelementptr i8, ptr %next.gep, i64 16, !dbg !181734
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !dbg !181734
  %wide.load31 = load <2 x i64>, ptr %i.w, align 8, !dbg !181734
  %i.x = sub <2 x i64> %vec.phi, %wide.load, !dbg !181736 ; 2 uses
  %i.y = sub <2 x i64> %vec.phi30, %wide.load31, !dbg !181736 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec, !dbg !181720
  br i1 %i.z, label %middle.block, label %vector.body, !dbg !181720, !llvm.loop !181739

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.y, %i.x, !dbg !181720
  %i.aa = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx), !dbg !181720 ; 2 uses
  %cmp.n = icmp eq i64 %i.r, %n.vec, !dbg !181720
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader, !dbg !181720

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.ph52 = phi i64 [ %.promoted, %.lr.ph ], [ %i.aa, %middle.block ]
  %.sroa.03.014.ph = phi ptr [ %i.m, %.lr.ph ], [ %i.t, %middle.block ]
  br label %scalar.ph, !dbg !181720

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.f, i64 noundef %1, i64 noundef %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @397) #45, !dbg !181740
  unreachable, !dbg !181740

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.ab = phi i64 [ %i.ae, %scalar.ph ], [ %.ph52, %scalar.ph.preheader ], !dbg !181741
  %.sroa.03.014 = phi ptr [ %i.ac, %scalar.ph ], [ %.sroa.03.014.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.03.014, i64 8, !dbg !181741 ; 2 uses
  %i.ad = load i64, ptr %.sroa.03.014, align 8, !dbg !181734, !noundef !14
  %i.ae = sub i64 %i.ab, %i.ad, !dbg !181736      ; 2 uses
  %i.af = icmp eq ptr %i.ac, %i.k, !dbg !181719
  br i1 %i.af, label %._crit_edge, label %scalar.ph, !dbg !181720, !llvm.loop !181743

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %.lcssa29 = phi i64 [ %i.aa, %middle.block ], [ %i.ae, %scalar.ph ], !dbg !181736
  store i64 %.lcssa29, ptr %i.n, align 8, !dbg !181736, !alias.scope !181729
  br label %bb.f, !dbg !181720

bb.f:                                             ; preds = %._crit_edge, %bb.d
  %i.ag = icmp ult i64 %2, %i.e, !dbg !181744
  %.not12 = icmp ugt i64 %2, %i.i
  %or.cond13 = or i1 %.not12, %i.ag, !dbg !181744
  br i1 %or.cond13, label %bb.h, label %bb.g, !dbg !181744, !prof !27399

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %2, !dbg !181748
  %i.ai = icmp samesign eq i64 %i.e, %2, !dbg !181753
  br i1 %i.ai, label %bb.i, label %.lr.ph17, !dbg !181756

.lr.ph17:                                         ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.e, !dbg !181757 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.promoted19 = load i64, ptr %i.ak, align 8, !alias.scope !181759 ; 2 uses
  %i.al = shl i64 %2, 3, !dbg !181756
  %5 = shl i64 %i.e, 3, !dbg !181756
  %6 = add i64 %i.al, -8, !dbg !181756
  %i.am = sub i64 %6, %5, !dbg !181756            ; 2 uses
  %i.an = lshr exact i64 %i.am, 3, !dbg !181756
  %i.ao = add nuw nsw i64 %i.an, 1, !dbg !181756  ; 2 uses
  %min.iters.check33 = icmp ult i64 %i.am, 24, !dbg !181756
  br i1 %min.iters.check33, label %scalar.ph32.preheader, label %vector.ph34, !dbg !181756

vector.ph34:                                      ; preds = %.lr.ph17
  %n.vec35 = and i64 %i.ao, 4611686018427387900   ; 3 uses
  %i.ap = shl i64 %n.vec35, 3
  %i.aq = getelementptr i8, ptr %i.aj, i64 %i.ap
  %i.ar = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.promoted19, i64 0
  br label %vector.body36, !dbg !181756

vector.body36:                                    ; preds = %vector.body36, %vector.ph34
  %index37 = phi i64 [ 0, %vector.ph34 ], [ %index.next43, %vector.body36 ] ; 2 uses
  %vec.phi38 = phi <2 x i64> [ %i.ar, %vector.ph34 ], [ %i.au, %vector.body36 ]
  %vec.phi39 = phi <2 x i64> [ zeroinitializer, %vector.ph34 ], [ %i.av, %vector.body36 ]
  %i.as = shl i64 %index37, 3
  %next.gep40 = getelementptr i8, ptr %i.aj, i64 %i.as ; 2 uses
  %i.at = getelementptr i8, ptr %next.gep40, i64 16, !dbg !181764
  %wide.load41 = load <2 x i64>, ptr %next.gep40, align 8, !dbg !181764
  %wide.load42 = load <2 x i64>, ptr %i.at, align 8, !dbg !181764
  %i.au = add <2 x i64> %vec.phi38, %wide.load41, !dbg !181765 ; 2 uses
  %i.av = add <2 x i64> %vec.phi39, %wide.load42, !dbg !181765 ; 2 uses
  %index.next43 = add nuw i64 %index37, 4         ; 2 uses
  %i.aw = icmp eq i64 %index.next43, %n.vec35, !dbg !181756
  br i1 %i.aw, label %middle.block44, label %vector.body36, !dbg !181756, !llvm.loop !181768

middle.block44:                                   ; preds = %vector.body36
  %bin.rdx45 = add <2 x i64> %i.av, %i.au, !dbg !181756
  %i.ax = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx45), !dbg !181756 ; 2 uses
  %cmp.n46 = icmp eq i64 %i.ao, %n.vec35, !dbg !181756
  br i1 %cmp.n46, label %._crit_edge18, label %scalar.ph32.preheader, !dbg !181756

scalar.ph32.preheader:                            ; preds = %.lr.ph17, %middle.block44
  %.ph = phi i64 [ %.promoted19, %.lr.ph17 ], [ %i.ax, %middle.block44 ]
  %.sroa.06.015.ph = phi ptr [ %i.aj, %.lr.ph17 ], [ %i.aq, %middle.block44 ]
  br label %scalar.ph32, !dbg !181756

bb.h:                                             ; preds = %bb.f
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.e, i64 noundef %2, i64 noundef %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @396) #45, !dbg !181769
  unreachable, !dbg !181769

scalar.ph32:                                      ; preds = %scalar.ph32.preheader, %scalar.ph32
  %i.ay = phi i64 [ %i.bb, %scalar.ph32 ], [ %.ph, %scalar.ph32.preheader ], !dbg !181770
  %.sroa.06.015 = phi ptr [ %i.az, %scalar.ph32 ], [ %.sroa.06.015.ph, %scalar.ph32.preheader ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.06.015, i64 8, !dbg !181770 ; 2 uses
  %i.ba = load i64, ptr %.sroa.06.015, align 8, !dbg !181764, !noundef !14
  %i.bb = add i64 %i.ay, %i.ba, !dbg !181765      ; 2 uses
  %i.bc = icmp eq ptr %i.az, %i.ah, !dbg !181753
  br i1 %i.bc, label %._crit_edge18, label %scalar.ph32, !dbg !181756, !llvm.loop !181772

._crit_edge18:                                    ; preds = %scalar.ph32, %middle.block44
  %.lcssa = phi i64 [ %i.ax, %middle.block44 ], [ %i.bb, %scalar.ph32 ], !dbg !181765
  store i64 %.lcssa, ptr %i.ak, align 8, !dbg !181765, !alias.scope !181759
  br label %bb.i, !dbg !181756

bb.i:                                             ; preds = %._crit_edge18, %bb.g
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !181697
  store i64 %1, ptr %i.bd, align 8, !dbg !181773
  store i64 %2, ptr %i.a, align 8, !dbg !181774
  ret void, !dbg !181775
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowyyEINtNtB6_8no_nulls23RollingAggWindowNoNullsyE7get_aggCskY9G75ZWc4U_11polars_expr(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !181776 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !181777), !dbg !181780
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !181781
  %i.b = load i64, ptr %i.a, align 8, !dbg !181781, !alias.scope !181777, !noundef !14 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0, !dbg !181781
  br i1 %i.c, label %bb.b, label %bb.c, !dbg !181781

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !181783
  %i.e = load i64, ptr %i.d, align 8, !dbg !181783, !alias.scope !181777, !noundef !14
  br label %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowyyE7get_sumCskY9G75ZWc4U_11polars_expr.exit, !dbg !181784

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !181785
  %i.g = load i64, ptr %i.f, align 8, !dbg !181785, !alias.scope !181777, !noundef !14
  %i.h = icmp eq i64 %i.b, %i.g, !dbg !181786
  br i1 %i.h, label %bb.e, label %bb.d, !dbg !181786

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !181787
  %i.j = load i64, ptr %i.i, align 8, !dbg !181787, !alias.scope !181777, !noundef !14
  %i.k = icmp eq i64 %i.b, %i.j, !dbg !181788
  br i1 %i.k, label %bb.g, label %bb.f, !dbg !181788

bb.e:                                             ; preds = %bb.c
  %i.l = tail call noundef i64 @_RNvYyNtNtCs2mZqlW55729_12polars_utils5float7IsFloat13pos_inf_valueCskY9G75ZWc4U_11polars_expr(), !dbg !181789, !noalias !181777
  br label %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowyyE7get_sumCskY9G75ZWc4U_11polars_expr.exit, !dbg !181790

bb.f:                                             ; preds = %bb.d
  %i.m = tail call noundef i64 @_RNvYyNtNtCs2mZqlW55729_12polars_utils5float7IsFloat9nan_valueCskY9G75ZWc4U_11polars_expr(), !dbg !181791, !noalias !181777
  br label %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowyyE7get_sumCskY9G75ZWc4U_11polars_expr.exit, !dbg !181792

bb.g:                                             ; preds = %bb.d
  %i.n = tail call noundef i64 @_RNvYyNtNtCs2mZqlW55729_12polars_utils5float7IsFloat13neg_inf_valueCskY9G75ZWc4U_11polars_expr(), !dbg !181793, !noalias !181777
  br label %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowyyE7get_sumCskY9G75ZWc4U_11polars_expr.exit, !dbg !181792

_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowyyE7get_sumCskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.b, %bb.e, %bb.f, %bb.g
  %.sroa.5.0.i = phi i64 [ %i.e, %bb.b ], [ %i.l, %bb.e ], [ %i.n, %bb.g ], [ %i.m, %bb.f ], !dbg !181794
  %i.o = insertvalue { i64, i64 } { i64 1, i64 undef }, i64 %.sroa.5.0.i, 1, !dbg !181795
  ret { i64, i64 } %i.o, !dbg !181796
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling4meanINtB4_10MeanWindowNtNtCs2mZqlW55729_12polars_utils7float164pf16EINtNtB6_5nulls21RollingAggWindowNullsB17_E3newCskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) %1, i64 noundef range(i64 0, 4611686018427387904) %2, ptr noundef nonnull align 8 %3, i64 noundef %4, i64 noundef %5, ptr noalias nofree noundef readnone align 8 captures(none) dead_on_return dereferenceable(24) %6, i64 noundef range(i64 0, 2) %7, i64 %8) unnamed_addr #0 !dbg !181797 {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 6 uses
  %i.b = icmp ule i64 %4, %2, !dbg !181799
  %i.c = icmp ule i64 %5, %2
  %or.cond.i = and i1 %i.b, %i.c, !dbg !181799
  %i.d = icmp ule i64 %4, %5
  %or.cond1.i = and i1 %i.d, %or.cond.i, !dbg !181799
  br i1 %or.cond1.i, label %_RNvXs0_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB5_9SumWindowNtNtCs2mZqlW55729_12polars_utils7float164pf16dEINtNtB7_5nulls21RollingAggWindowNullsB15_E3newCskY9G75ZWc4U_11polars_expr.exit, label %bb.b, !dbg !181799, !prof !146312

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @287, i64 noundef 76, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @288) #45, !dbg !181802, !noalias !181803
  unreachable, !dbg !181802

_RNvXs0_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB5_9SumWindowNtNtCs2mZqlW55729_12polars_utils7float164pf16dEINtNtB7_5nulls21RollingAggWindowNullsB15_E3newCskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.a
  store ptr %1, ptr %i.a, align 8, !dbg !181807
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !181807
  store i64 %2, ptr %i.e, align 8, !dbg !181807
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !181807
  store ptr %3, ptr %i.f, align 8, !dbg !181807
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !181807
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.g, i8 0, i64 72, i1 false), !dbg !181807
  call fastcc void @_RNvXs0_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB5_9SumWindowNtNtCs2mZqlW55729_12polars_utils7float164pf16dEINtNtB7_5nulls21RollingAggWindowNullsB15_E6updateCskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(96) %i.a, i64 noundef %4, i64 noundef %5), !dbg !181809
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %i.a, i64 96, i1 false), !dbg !181811
  ret void, !dbg !181812
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling4meanINtB4_10MeanWindowNtNtCs2mZqlW55729_12polars_utils7float164pf16EINtNtB6_5nulls21RollingAggWindowNullsB17_E6updateCskY9G75ZWc4U_11polars_expr(ptr noalias nofree noundef align 8 captures(none) dereferenceable(96) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 !dbg !181813 {
bb.a:
  tail call fastcc void @_RNvXs0_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB5_9SumWindowNtNtCs2mZqlW55729_12polars_utils7float164pf16dEINtNtB7_5nulls21RollingAggWindowNullsB15_E6updateCskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(96) %0, i64 noundef %1, i64 noundef %2), !dbg !181814
  ret void, !dbg !181815
}

; Function Attrs: nonlazybind uwtable
define hidden { i16, i16 } @_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling4meanINtB4_10MeanWindowNtNtCs2mZqlW55729_12polars_utils7float164pf16EINtNtB6_5nulls21RollingAggWindowNullsB17_E7get_aggCskY9G75ZWc4U_11polars_expr(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !181816 {
bb.a:
  %i.a = tail call fastcc i16 @_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowNtNtCs2mZqlW55729_12polars_utils7float164pf16dE7get_sumCskY9G75ZWc4U_11polars_expr(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0), !dbg !181817
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !181820
  %i.c = load i64, ptr %i.b, align 8, !dbg !181820, !noundef !14 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !181822
  %i.e = load i64, ptr %i.d, align 8, !dbg !181822, !noundef !14 ; 2 uses
  %i.f = sub i64 %i.c, %i.e, !dbg !181820
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !181823
  %i.h = load i64, ptr %i.g, align 8, !dbg !181823, !noundef !14 ; 2 uses
  %i.i = icmp eq i64 %i.h, %i.f, !dbg !181823
  br i1 %i.i, label %bb.m, label %bb.b, !dbg !181823

bb.b:                                             ; preds = %bb.a
  %i.j = add i64 %i.e, %i.h, !dbg !181825
  %i.k = sub i64 %i.c, %i.j, !dbg !181825
  %i.l = uitofp i64 %i.k to float, !dbg !181832   ; 2 uses
  %i.m = load atomic i64, ptr @_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache5CACHE monotonic, align 8, !dbg !181836, !noalias !181847 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0, !dbg !181850
  br i1 %i.n, label %.split.i.i.i, label %_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit.i.i.i, !dbg !181850, !prof !113

.split.i.i.i:                                     ; preds = %bb.b
  %i.o = tail call noundef i128 @_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache21detect_and_initialize(), !dbg !181851, !noalias !181847
  %i.p = and i128 %i.o, 36028797018963968, !dbg !181854
  %.not6.i.i.i = icmp eq i128 %i.p, 0, !dbg !181854
  br i1 %.not6.i.i.i, label %bb.c, label %bb.l, !dbg !181857

_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit.i.i.i: ; preds = %bb.b
  %i.q = and i64 %i.m, 36028797018963968, !dbg !181858
  %.not.i.i.i = icmp eq i64 %i.q, 0, !dbg !181858
  br i1 %.not.i.i.i, label %bb.c, label %bb.l, !dbg !181857

bb.c:                                             ; preds = %_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit.i.i.i, %.split.i.i.i
  %i.r = bitcast float %i.l to i32, !dbg !181859  ; 7 uses
  %i.s = and i32 %i.r, 2139095040, !dbg !181861   ; 3 uses
  %i.t = and i32 %i.r, 8388607, !dbg !181862      ; 4 uses
  %i.u = icmp eq i32 %i.s, 2139095040, !dbg !181863
  br i1 %i.u, label %bb.d, label %bb.e, !dbg !181863

bb.d:                                             ; preds = %bb.c
  %i.v = icmp eq i32 %i.t, 0, !dbg !181864
  %..i.i.i.i = select i1 %i.v, i32 0, i32 512, !dbg !181865
  %i.w = lshr i32 %i.t, 13, !dbg !181866
  %i.x = or i32 %..i.i.i.i, %i.w, !dbg !181867
  %i.y = trunc nuw nsw i32 %i.x to i16, !dbg !181867
  %i.z = or disjoint i16 %i.y, 31744, !dbg !181867
  br label %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling4meanINtB6_10MeanWindowNtNtCs2mZqlW55729_12polars_utils7float164pf16EINtNtB8_5nulls21RollingAggWindowNullsB19_E7get_agg0CskY9G75ZWc4U_11polars_expr.exit, !dbg !181868

bb.e:                                             ; preds = %bb.c
  %i.aa = lshr i32 %i.r, 23, !dbg !181869         ; 2 uses
  %i.ab = icmp samesign ugt i32 %i.s, 1191182336, !dbg !181870
  br i1 %i.ab, label %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling4meanINtB6_10MeanWindowNtNtCs2mZqlW55729_12polars_utils7float164pf16EINtNtB8_5nulls21RollingAggWindowNullsB19_E7get_agg0CskY9G75ZWc4U_11polars_expr.exit, label %bb.f, !dbg !181870

bb.f:                                             ; preds = %bb.e
  %i.ac = icmp samesign ult i32 %i.r, 947912704, !dbg !181871
  br i1 %i.ac, label %bb.h, label %bb.g, !dbg !181871

end_hunk_1
