Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/flat_map_adaptor_test?download=true
inline.NumInlined: 32430
inline.NumDeleted: 3898
loop-unroll.NumCompletelyUnrolled: 264
loop-unroll.NumRuntimeUnrolled: 242
loop-unroll.NumUnrolled: 513
begin_hunk_0_@_ZN5boost7movelib15rotate_adaptiveINS_9container12vec_iteratorIPSt4pairIiiELb0EEES6_EET_S8_S8_S8_NS0_9iter_sizeIS8_E4typeESB_T0_SB_:bb.a
  %next.gep204 = getelementptr i8, ptr %i.dc, i64 %i.dp
  %next.gep205 = getelementptr i8, ptr %6, i64 %i.do
  %next.gep206 = getelementptr i8, ptr %6, i64 %i.dp
  %wide.vec207 = load <4 x i32>, ptr %next.gep205, align 4, !tbaa !338, !alias.scope !5340, !noalias !5341
  %wide.vec210 = load <4 x i32>, ptr %next.gep206, align 4, !tbaa !338, !alias.scope !5340, !noalias !5341
  store <4 x i32> %wide.vec207, ptr %next.gep203, align 4, !tbaa !338, !alias.scope !5342, !noalias !5341
  store <4 x i32> %wide.vec210, ptr %next.gep204, align 4, !tbaa !338, !alias.scope !5342, !noalias !5341
  %index.next215 = add nuw i64 %index202, 4       ; 2 uses
  %i.dq = icmp eq i64 %index.next215, %n.vec200
  br i1 %i.dq, label %middle.block216, label %vector.body201, !llvm.loop !5327

middle.block216:                                  ; preds = %vector.body201
  %cmp.n217 = icmp eq i64 %i.dg, %n.vec200
  br i1 %cmp.n217, label %_ZN5boost4moveIPSt4pairIiiENS_9container12vec_iteratorIS3_Lb0EEEEET0_T_S8_S7_.exit36, label %.lr.ph.i33.preheader220

.lr.ph.i33.preheader220:                          ; preds = %vector.memcheck195, %.lr.ph.i33.preheader, %middle.block216
  %.ph = phi ptr [ %i.dc, %vector.memcheck195 ], [ %i.dc, %.lr.ph.i33.preheader ], [ %i.dm, %middle.block216 ]
  %.05.i34.ph = phi ptr [ %6, %vector.memcheck195 ], [ %6, %.lr.ph.i33.preheader ], [ %i.dn, %middle.block216 ]
  br label %.lr.ph.i33

.lr.ph.i33:                                       ; preds = %.lr.ph.i33.preheader220, %.lr.ph.i33
  %i.dr = phi ptr [ %i.dx, %.lr.ph.i33 ], [ %.ph, %.lr.ph.i33.preheader220 ] ; 3 uses
  %.05.i34 = phi ptr [ %i.dw, %.lr.ph.i33 ], [ %.05.i34.ph, %.lr.ph.i33.preheader220 ] ; 3 uses
  %i.ds = load i32, ptr %.05.i34, align 4, !tbaa !338, !noalias !5341
  store i32 %i.ds, ptr %i.dr, align 4, !tbaa !347, !noalias !5341
  %i.dt = getelementptr inbounds nuw i8, ptr %.05.i34, i64 4
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !338, !noalias !5341
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  store i32 %i.du, ptr %i.dv, align 4, !tbaa !348, !noalias !5341
  %i.dw = getelementptr inbounds nuw i8, ptr %.05.i34, i64 8 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %.not.i35 = icmp eq ptr %i.dw, %.0.lcssa.i26
  br i1 %.not.i35, label %_ZN5boost4moveIPSt4pairIiiENS_9container12vec_iteratorIS3_Lb0EEEEET0_T_S8_S7_.exit36, label %.lr.ph.i33, !llvm.loop !5328

bb.h:                                             ; preds = %bb.f
  %i.dy = load ptr, ptr %3, align 8, !tbaa !331
  store ptr %i.dy, ptr %0, align 8, !tbaa !350
  br label %_ZN5boost4moveIPSt4pairIiiENS_9container12vec_iteratorIS3_Lb0EEEEET0_T_S8_S7_.exit36

bb.i:                                             ; preds = %bb.e
  %i.dz = load ptr, ptr %1, align 8, !tbaa !331
  store ptr %i.dz, ptr %8, align 8, !tbaa !350
  %i.ea = load ptr, ptr %2, align 8, !tbaa !331
  store ptr %i.ea, ptr %9, align 8, !tbaa !350
  %i.eb = load ptr, ptr %3, align 8, !tbaa !331
  store ptr %i.eb, ptr %10, align 8, !tbaa !350
  call void @_ZN5boost7movelib10rotate_gcdINS_9container12vec_iteratorIPSt4pairIiiELb0EEEEET_S8_S8_S8_(ptr dead_on_unwind writable sret(%"class.boost::container::vec_iterator") align 8 %0, ptr noundef nonnull align 8 dead_on_return %8, ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dead_on_return %10)
  br label %_ZN5boost4moveIPSt4pairIiiENS_9container12vec_iteratorIS3_Lb0EEEEET0_T_S8_S7_.exit36

_ZN5boost4moveIPSt4pairIiiENS_9container12vec_iteratorIS3_Lb0EEEEET0_T_S8_S7_.exit36: ; preds = %.lr.ph.i33, %middle.block216, %_ZN5boost4moveINS_9container12vec_iteratorIPSt4pairIiiELb0EEES6_EET0_T_S8_S7_.exit, %bb.i, %bb.h, %bb.d, %_ZN5boost4moveIPSt4pairIiiENS_9container12vec_iteratorIS3_Lb0EEEEET0_T_S8_S7_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib17op_buffered_mergeINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEENS0_7move_opENS0_10range_xbufIS6_mSF_EEEEvT_SI_SI_T0_T1_RT2_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !350    ; 3 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !350    ; 6 uses
  %.not51 = icmp eq ptr %i.a, %i.b
  br i1 %.not51, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_NS2_12vec_iteratorISC_Lb0EEENS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %2, align 8, !tbaa !350    ; 2 uses
  %.not52 = icmp eq ptr %i.b, %i.c
  br i1 %.not52, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_NS2_12vec_iteratorISC_Lb0EEENS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -8
  %i.e = load i32, ptr %i.b, align 4, !tbaa !338  ; 2 uses
  %i.f = load i32, ptr %i.d, align 4, !tbaa !338  ; 2 uses
  %i.g = icmp slt i32 %i.e, %i.f
  br i1 %i.g, label %bb.d, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_NS2_12vec_iteratorISC_Lb0EEENS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit

bb.d:                                             ; preds = %bb.c
  %i.h = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.i = ptrtoint ptr %i.a to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 3                   ; 2 uses
  %i.l = ptrtoint ptr %i.c to i64
  %i.m = sub i64 %i.l, %i.h
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %.not = icmp ugt i64 %i.k, %i.n
  br i1 %.not, label %.lr.ph.i13, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %i.o = phi ptr [ %i.v, %.lr.ph.i ], [ %i.a, %bb.d ] ; 2 uses
  %.010.i = phi i64 [ %.1.i, %.lr.ph.i ], [ %i.k, %bb.d ] ; 2 uses
  %i.p = lshr i64 %.010.i, 1                      ; 3 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.p ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !338, !noalias !5371
  %i.s = icmp slt i32 %i.e, %i.r                  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.neg.i = xor i64 %i.p, -1
  %i.u = add i64 %.010.i, %.neg.i
  %i.v = select i1 %i.s, ptr %i.o, ptr %i.t       ; 11 uses
  %.1.i = select i1 %i.s, i64 %i.p, i64 %i.u      ; 2 uses
  %.not.i = icmp eq i64 %.1.i, 0
  br i1 %.not.i, label %_ZN5boost7movelib11upper_boundINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_RKT0_T1_.exit, label %.lr.ph.i, !llvm.loop !88

_ZN5boost7movelib11upper_boundINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_RKT0_T1_.exit: ; preds = %.lr.ph.i
  %i.w = ptrtoaddr ptr %i.v to i64
  store ptr %i.v, ptr %0, align 8, !tbaa !350
  %i.x = load ptr, ptr %1, align 8, !tbaa !350    ; 3 uses
  %i.y = load ptr, ptr %3, align 8, !tbaa !394    ; 10 uses
  %i.z = ptrtoaddr ptr %i.y to i64                ; 2 uses
  %.not3.i.i.i = icmp eq ptr %i.x, %i.v
  br i1 %.not3.i.i.i, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_NS2_12vec_iteratorISC_Lb0EEENS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit.sink.split, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN5boost7movelib11upper_boundINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_RKT0_T1_.exit
  %i.aa = ptrtoaddr ptr %i.x to i64
  %i.ab = add i64 %i.aa, -8
  %i.ac = sub i64 %i.ab, %i.w                     ; 5 uses
  %i.ad = lshr i64 %i.ac, 3
  %i.ae = add nuw nsw i64 %i.ad, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ac, 104
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader210, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.af = and i64 %i.ac, -8
  %i.ag = add i64 %i.af, 8                        ; 2 uses
  %i.ah = getelementptr i8, ptr %i.y, i64 %i.ag
  %i.ai = getelementptr i8, ptr %i.v, i64 %i.ag
  %bound0 = icmp ult ptr %i.y, %i.ai
  %bound1 = icmp ult ptr %i.v, %i.ah
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader210, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ae, 4611686018427387900     ; 3 uses
  %i.aj = shl i64 %n.vec, 3                       ; 2 uses
  %i.ak = getelementptr i8, ptr %i.v, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.y, i64 %i.aj   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.am = shl i64 %index, 3                       ; 3 uses
  %i.an = or disjoint i64 %i.am, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.v, i64 %i.am
  %next.gep116 = getelementptr i8, ptr %i.v, i64 %i.an
  %next.gep117 = getelementptr i8, ptr %i.y, i64 %i.am
  %next.gep118 = getelementptr i8, ptr %i.y, i64 %i.an
  %wide.vec = load <4 x i32>, ptr %next.gep, align 4, !tbaa !338, !alias.scope !5372
  %wide.vec120 = load <4 x i32>, ptr %next.gep116, align 4, !tbaa !338, !alias.scope !5372
  store <4 x i32> %wide.vec, ptr %next.gep117, align 4, !tbaa !338, !alias.scope !5373, !noalias !5372
  store <4 x i32> %wide.vec120, ptr %next.gep118, align 4, !tbaa !338, !alias.scope !5373, !noalias !5372
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !5348

middle.block:                                     ; preds = %vector.body
  %ind.escape = getelementptr i8, ptr %i.al, i64 -8
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib10range_xbufIPSt4pairIiiEmNS0_7move_opEE11move_assignINS_9container12vec_iteratorIS4_Lb0EEEEEvT_m.exit, label %.lr.ph.i.i.i.preheader210

.lr.ph.i.i.i.preheader210:                        ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.ph211 = phi ptr [ %i.v, %vector.memcheck ], [ %i.v, %.lr.ph.i.i.i.preheader ], [ %i.ak, %middle.block ]
  %.04.i.i.i.ph = phi ptr [ %i.y, %vector.memcheck ], [ %i.y, %.lr.ph.i.i.i.preheader ], [ %i.al, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader210, %.lr.ph.i.i.i
  %i.ap = phi ptr [ %i.au, %.lr.ph.i.i.i ], [ %.ph211, %.lr.ph.i.i.i.preheader210 ] ; 3 uses
  %.04.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i ], [ %.04.i.i.i.ph, %.lr.ph.i.i.i.preheader210 ] ; 4 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !338
  store i32 %i.aq, ptr %.04.i.i.i, align 4, !tbaa !347
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !338
  %i.at = getelementptr inbounds nuw i8, ptr %.04.i.i.i, i64 4
  store i32 %i.as, ptr %i.at, align 4, !tbaa !348
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.04.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.au, %i.x
  br i1 %.not.i.i.i, label %_ZN5boost7movelib10range_xbufIPSt4pairIiiEmNS0_7move_opEE11move_assignINS_9container12vec_iteratorIS4_Lb0EEEEEvT_m.exit, label %.lr.ph.i.i.i, !llvm.loop !5349

_ZN5boost7movelib10range_xbufIPSt4pairIiiEmNS0_7move_opEE11move_assignINS_9container12vec_iteratorIS4_Lb0EEEEEvT_m.exit: ; preds = %.lr.ph.i.i.i, %middle.block
  %.04.i.i.i.lcssa = phi ptr [ %ind.escape, %middle.block ], [ %.04.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa111 = phi ptr [ %i.al, %middle.block ], [ %i.av, %.lr.ph.i.i.i ] ; 2 uses
  %.04.i.i.i.lcssa216 = ptrtoaddr ptr %.04.i.i.i.lcssa to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.lcssa111, ptr %i.aw, align 8, !tbaa !395
  %i.ax = load ptr, ptr %0, align 8, !tbaa !331   ; 2 uses
  %i.ay = load ptr, ptr %1, align 8, !tbaa !331
  %i.az = load ptr, ptr %2, align 8, !tbaa !331
  br label %.lr.ph.i7

.lr.ph.i7:                                        ; preds = %_ZN5boost7movelib10range_xbufIPSt4pairIiiEmNS0_7move_opEE11move_assignINS_9container12vec_iteratorIS4_Lb0EEEEEvT_m.exit, %bb.h
  %indvar = phi i64 [ 0, %_ZN5boost7movelib10range_xbufIPSt4pairIiiEmNS0_7move_opEE11move_assignINS_9container12vec_iteratorIS4_Lb0EEEEEvT_m.exit ], [ %indvar.next, %bb.h ] ; 2 uses
  %.sroa.039.0 = phi ptr [ %i.ay, %_ZN5boost7movelib10range_xbufIPSt4pairIiiEmNS0_7move_opEE11move_assignINS_9container12vec_iteratorIS4_Lb0EEEEEvT_m.exit ], [ %.sroa.039.1, %bb.h ] ; 5 uses
  %.sroa.040.0 = phi ptr [ %i.ax, %_ZN5boost7movelib10range_xbufIPSt4pairIiiEmNS0_7move_opEE11move_assignINS_9container12vec_iteratorIS4_Lb0EEEEEvT_m.exit ], [ %i.dm, %bb.h ] ; 10 uses
  %.015.i = phi ptr [ %i.y, %_ZN5boost7movelib10range_xbufIPSt4pairIiiEmNS0_7move_opEE11move_assignINS_9container12vec_iteratorIS4_Lb0EEEEEvT_m.exit ], [ %.1.i8, %bb.h ] ; 12 uses
  %i.ba = icmp eq ptr %.sroa.039.0, %i.az
  br i1 %i.ba, label %.lr.ph.i.i.i10.preheader, label %bb.e

.lr.ph.i.i.i10.preheader:                         ; preds = %.lr.ph.i7
  %.015.i133.le = ptrtoaddr ptr %.015.i to i64    ; 2 uses
  %i.bb = and i64 %i.ac, -8
  %i.bc = add i64 %i.bb, %i.z
  %i.bd = sub i64 %i.bc, %.015.i133.le            ; 2 uses
  %i.be = lshr i64 %i.bd, 3
  %i.bf = add nuw nsw i64 %i.be, 1                ; 2 uses
  %min.iters.check135 = icmp ult i64 %i.bd, 184
  br i1 %min.iters.check135, label %.lr.ph.i.i.i10.preheader202, label %vector.memcheck136

vector.memcheck136:                               ; preds = %.lr.ph.i.i.i10.preheader
  %i.bg = shl i64 %indvar, 3
  %i.bh = and i64 %i.ac, -8
  %i.bi = add i64 %i.bh, %i.z
  %i.bj = sub i64 %i.bi, %.015.i133.le
  %i.bk = and i64 %i.bj, -8                       ; 2 uses
  %i.bl = getelementptr i8, ptr %i.ax, i64 %i.bg
  %i.bm = getelementptr i8, ptr %i.bl, i64 8
  %i.bn = getelementptr i8, ptr %i.bm, i64 %i.bk
  %i.bo = getelementptr i8, ptr %.015.i, i64 %i.bk
  %i.bp = getelementptr i8, ptr %i.bo, i64 8
  %bound0137 = icmp ult ptr %.sroa.040.0, %i.bp
  %bound1138 = icmp ult ptr %.015.i, %i.bn
  %found.conflict139 = and i1 %bound0137, %bound1138
  br i1 %found.conflict139, label %.lr.ph.i.i.i10.preheader202, label %vector.ph140

vector.ph140:                                     ; preds = %vector.memcheck136
  %n.vec141 = and i64 %i.bf, 4611686018427387900  ; 3 uses
  %i.bq = shl i64 %n.vec141, 3                    ; 2 uses
  %i.br = getelementptr i8, ptr %.sroa.040.0, i64 %i.bq
  %i.bs = getelementptr i8, ptr %.015.i, i64 %i.bq
  br label %vector.body142

vector.body142:                                   ; preds = %vector.body142, %vector.ph140
  %index143 = phi i64 [ 0, %vector.ph140 ], [ %index.next156, %vector.body142 ] ; 2 uses
  %i.bt = shl i64 %index143, 3                    ; 3 uses
  %i.bu = or disjoint i64 %i.bt, 16               ; 2 uses
  %next.gep144 = getelementptr i8, ptr %.sroa.040.0, i64 %i.bt
  %next.gep145 = getelementptr i8, ptr %.sroa.040.0, i64 %i.bu
  %next.gep146 = getelementptr i8, ptr %.015.i, i64 %i.bt
  %next.gep147 = getelementptr i8, ptr %.015.i, i64 %i.bu
  %wide.vec148 = load <4 x i32>, ptr %next.gep146, align 4, !tbaa !338, !alias.scope !5374, !noalias !5375
  %wide.vec151 = load <4 x i32>, ptr %next.gep147, align 4, !tbaa !338, !alias.scope !5374, !noalias !5375
  store <4 x i32> %wide.vec148, ptr %next.gep144, align 4, !tbaa !338, !alias.scope !5376, !noalias !5375
  store <4 x i32> %wide.vec151, ptr %next.gep145, align 4, !tbaa !338, !alias.scope !5376, !noalias !5375
  %index.next156 = add nuw i64 %index143, 4       ; 2 uses
  %i.bv = icmp eq i64 %index.next156, %n.vec141
  br i1 %i.bv, label %middle.block157, label %vector.body142, !llvm.loop !5357

middle.block157:                                  ; preds = %vector.body142
  %cmp.n158 = icmp eq i64 %i.bf, %n.vec141
  br i1 %cmp.n158, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_NS2_12vec_iteratorISC_Lb0EEENS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit, label %.lr.ph.i.i.i10.preheader202

.lr.ph.i.i.i10.preheader202:                      ; preds = %vector.memcheck136, %.lr.ph.i.i.i10.preheader, %middle.block157
  %.ph203 = phi ptr [ %.sroa.040.0, %vector.memcheck136 ], [ %.sroa.040.0, %.lr.ph.i.i.i10.preheader ], [ %i.br, %middle.block157 ] ; 2 uses
  %.05.i.i.i.ph = phi ptr [ %.015.i, %vector.memcheck136 ], [ %.015.i, %.lr.ph.i.i.i10.preheader ], [ %i.bs, %middle.block157 ] ; 3 uses
  %.05.i.i.i.ph217 = ptrtoaddr ptr %.05.i.i.i.ph to i64
  %i.bw = sub i64 %.04.i.i.i.lcssa216, %.05.i.i.i.ph217 ; 2 uses
  %i.bx = lshr i64 %i.bw, 3
  %i.by = add nuw nsw i64 %i.bx, 1
  %xtraiter = and i64 %i.by, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i10.prol.loopexit, label %.lr.ph.i.i.i10.prol

.lr.ph.i.i.i10.prol:                              ; preds = %.lr.ph.i.i.i10.preheader202, %.lr.ph.i.i.i10.prol
  %i.bz = phi ptr [ %i.cf, %.lr.ph.i.i.i10.prol ], [ %.ph203, %.lr.ph.i.i.i10.preheader202 ] ; 3 uses
  %.05.i.i.i.prol = phi ptr [ %i.ce, %.lr.ph.i.i.i10.prol ], [ %.05.i.i.i.ph, %.lr.ph.i.i.i10.preheader202 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i10.prol ], [ 0, %.lr.ph.i.i.i10.preheader202 ]
  %i.ca = load i32, ptr %.05.i.i.i.prol, align 4, !tbaa !338, !noalias !5375
  store i32 %i.ca, ptr %i.bz, align 4, !tbaa !347, !noalias !5375
  %i.cb = getelementptr inbounds nuw i8, ptr %.05.i.i.i.prol, i64 4
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !338, !noalias !5375
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  store i32 %i.cc, ptr %i.cd, align 4, !tbaa !348, !noalias !5375
  %i.ce = getelementptr inbounds nuw i8, ptr %.05.i.i.i.prol, i64 8 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bz, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i10.prol.loopexit, label %.lr.ph.i.i.i10.prol, !llvm.loop !5358

.lr.ph.i.i.i10.prol.loopexit:                     ; preds = %.lr.ph.i.i.i10.prol, %.lr.ph.i.i.i10.preheader202
  %.unr = phi ptr [ %.ph203, %.lr.ph.i.i.i10.preheader202 ], [ %i.cf, %.lr.ph.i.i.i10.prol ]
  %.05.i.i.i.unr = phi ptr [ %.05.i.i.i.ph, %.lr.ph.i.i.i10.preheader202 ], [ %i.ce, %.lr.ph.i.i.i10.prol ]
  %i.cg = icmp ult i64 %i.bw, 24
  br i1 %i.cg, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_NS2_12vec_iteratorISC_Lb0EEENS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit, label %.lr.ph.i.i.i10

.lr.ph.i.i.i10:                                   ; preds = %.lr.ph.i.i.i10.prol.loopexit, %.lr.ph.i.i.i10
  %i.ch = phi ptr [ %i.df, %.lr.ph.i.i.i10 ], [ %.unr, %.lr.ph.i.i.i10.prol.loopexit ] ; 9 uses
  %.05.i.i.i = phi ptr [ %i.de, %.lr.ph.i.i.i10 ], [ %.05.i.i.i.unr, %.lr.ph.i.i.i10.prol.loopexit ] ; 9 uses
  %i.ci = load i32, ptr %.05.i.i.i, align 4, !tbaa !338, !noalias !5375
  store i32 %i.ci, ptr %i.ch, align 4, !tbaa !347, !noalias !5375
  %i.cj = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 4
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !338, !noalias !5375
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  store i32 %i.ck, ptr %i.cl, align 4, !tbaa !348, !noalias !5375
  %i.cm = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.co = load i32, ptr %i.cm, align 4, !tbaa !338, !noalias !5375
  store i32 %i.co, ptr %i.cn, align 4, !tbaa !347, !noalias !5375
  %i.cp = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 12
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !338, !noalias !5375
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ch, i64 12
  store i32 %i.cq, ptr %i.cr, align 4, !tbaa !348, !noalias !5375
  %i.cs = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cu = load i32, ptr %i.cs, align 4, !tbaa !338, !noalias !5375
  store i32 %i.cu, ptr %i.ct, align 4, !tbaa !347, !noalias !5375
  %i.cv = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 20
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !338, !noalias !5375
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ch, i64 20
  store i32 %i.cw, ptr %i.cx, align 4, !tbaa !348, !noalias !5375
  %i.cy = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.da = load i32, ptr %i.cy, align 4, !tbaa !338, !noalias !5375
  store i32 %i.da, ptr %i.cz, align 4, !tbaa !347, !noalias !5375
  %i.db = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 28
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !338, !noalias !5375
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ch, i64 28
  store i32 %i.dc, ptr %i.dd, align 4, !tbaa !348, !noalias !5375
  %i.de = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.df = getelementptr inbounds nuw i8, ptr %i.ch, i64 32
  %.not.i.i.i11.3 = icmp eq ptr %i.cy, %.04.i.i.i.lcssa
  br i1 %.not.i.i.i11.3, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_NS2_12vec_iteratorISC_Lb0EEENS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit, label %.lr.ph.i.i.i10, !llvm.loop !5359

bb.e:                                             ; preds = %.lr.ph.i7
  %i.dg = load i32, ptr %.sroa.039.0, align 4, !tbaa !338 ; 2 uses
  %i.dh = load i32, ptr %.015.i, align 4, !tbaa !338 ; 2 uses
  %i.di = icmp slt i32 %i.dg, %i.dh
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.040.0, i64 4
  br i1 %i.di, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 %i.dg, ptr %.sroa.040.0, align 4, !tbaa !347
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.039.0, i64 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  store i32 %i.dh, ptr %.sroa.040.0, align 4, !tbaa !347
  %i.dl = getelementptr inbounds nuw i8, ptr %.015.i, i64 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.039.0.pn = phi ptr [ %.sroa.039.0, %bb.f ], [ %.015.i, %bb.g ]
  %.sroa.039.1 = phi ptr [ %i.dk, %bb.f ], [ %.sroa.039.0, %bb.g ]
  %.1.i8 = phi ptr [ %.015.i, %bb.f ], [ %i.dl, %bb.g ] ; 2 uses
  %.sink.in = getelementptr inbounds nuw i8, ptr %.sroa.039.0.pn, i64 4
  %.sink = load i32, ptr %.sink.in, align 4, !tbaa !338
  store i32 %.sink, ptr %i.dj, align 4, !tbaa !348
  %i.dm = getelementptr i8, ptr %.sroa.040.0, i64 8
  %.not.i9 = icmp eq ptr %.1.i8, %.lcssa111
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i9, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_NS2_12vec_iteratorISC_Lb0EEENS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit, label %.lr.ph.i7, !llvm.loop !89

.lr.ph.i13:                                       ; preds = %bb.d, %.lr.ph.i13
  %i.dn = phi ptr [ %i.du, %.lr.ph.i13 ], [ %i.b, %bb.d ] ; 2 uses
  %.010.i14 = phi i64 [ %.1.i16, %.lr.ph.i13 ], [ %i.n, %bb.d ] ; 2 uses
  %i.do = lshr i64 %.010.i14, 1                   ; 3 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.do ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !338, !noalias !5377
  %i.dr = icmp slt i32 %i.dq, %i.f                ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %.neg.i15 = xor i64 %i.do, -1
  %i.dt = add i64 %.010.i14, %.neg.i15
  %i.du = select i1 %i.dr, ptr %i.ds, ptr %i.dn   ; 5 uses
  %.1.i16 = select i1 %i.dr, i64 %i.dt, i64 %i.do ; 2 uses
  %.not.i17 = icmp eq i64 %.1.i16, 0
  br i1 %.not.i17, label %_ZN5boost7movelib11lower_boundINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_RKT0_T1_.exit, label %.lr.ph.i13, !llvm.loop !87

_ZN5boost7movelib11lower_boundINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_RKT0_T1_.exit: ; preds = %.lr.ph.i13
  %i.dv = ptrtoaddr ptr %i.du to i64
  store ptr %i.du, ptr %2, align 8, !tbaa !350
  %i.dw = load ptr, ptr %1, align 8, !tbaa !331   ; 9 uses
  %i.dx = load ptr, ptr %3, align 8, !tbaa !394   ; 10 uses
  %.not3.i.i.i18 = icmp eq ptr %i.du, %i.dw
  br i1 %.not3.i.i.i18, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_NS2_12vec_iteratorISC_Lb0EEENS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit.sink.split, label %.lr.ph.i.i.i19.preheader

.lr.ph.i.i.i19.preheader:                         ; preds = %_ZN5boost7movelib11lower_boundINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_RKT0_T1_.exit
  %i.dy = ptrtoaddr ptr %i.dw to i64
  %i.dz = add i64 %i.dv, -8
  %i.ea = sub i64 %i.dz, %i.dy                    ; 3 uses
  %i.eb = lshr i64 %i.ea, 3
  %i.ec = add nuw nsw i64 %i.eb, 1                ; 2 uses
  %min.iters.check169 = icmp ult i64 %i.ea, 104
  br i1 %min.iters.check169, label %.lr.ph.i.i.i19.preheader198, label %vector.memcheck170

vector.memcheck170:                               ; preds = %.lr.ph.i.i.i19.preheader
  %i.ed = and i64 %i.ea, -8
  %i.ee = add i64 %i.ed, 8                        ; 2 uses
  %i.ef = getelementptr i8, ptr %i.dx, i64 %i.ee
  %i.eg = getelementptr i8, ptr %i.dw, i64 %i.ee
  %bound0171 = icmp ult ptr %i.dx, %i.eg
  %bound1172 = icmp ult ptr %i.dw, %i.ef
  %found.conflict173 = and i1 %bound0171, %bound1172
  br i1 %found.conflict173, label %.lr.ph.i.i.i19.preheader198, label %vector.ph174

vector.ph174:                                     ; preds = %vector.memcheck170
  %n.vec175 = and i64 %i.ec, 4611686018427387900  ; 3 uses
  %i.eh = shl i64 %n.vec175, 3                    ; 2 uses
  %i.ei = getelementptr i8, ptr %i.dw, i64 %i.eh
  %i.ej = getelementptr i8, ptr %i.dx, i64 %i.eh  ; 2 uses
  br label %vector.body176

vector.body176:                                   ; preds = %vector.body176, %vector.ph174
  %index177 = phi i64 [ 0, %vector.ph174 ], [ %index.next190, %vector.body176 ] ; 2 uses
  %i.ek = shl i64 %index177, 3                    ; 3 uses
  %i.el = or disjoint i64 %i.ek, 16               ; 2 uses
  %next.gep178 = getelementptr i8, ptr %i.dw, i64 %i.ek
  %next.gep179 = getelementptr i8, ptr %i.dw, i64 %i.el
end_hunk_0
