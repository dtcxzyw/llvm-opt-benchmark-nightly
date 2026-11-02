Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/flat_map_test?download=true
inline.NumInlined: 38937
inline.NumDeleted: 5991
loop-unroll.NumCompletelyUnrolled: 303
loop-unroll.NumRuntimeUnrolled: 383
loop-unroll.NumUnrolled: 701
begin_hunk_0_@_ZN5boost7movelib15rotate_adaptiveINS_9container12vec_iteratorIPSt4pairIiiELb0EEES6_EET_S8_S8_S8_NS0_9iter_sizeIS8_E4typeESB_T0_SB_:bb.a
  %next.gep204 = getelementptr i8, ptr %i.dc, i64 %i.dp
  %next.gep205 = getelementptr i8, ptr %6, i64 %i.do
  %next.gep206 = getelementptr i8, ptr %6, i64 %i.dp
  %wide.vec207 = load <4 x i32>, ptr %next.gep205, align 4, !tbaa !501, !alias.scope !7510, !noalias !7511
  %wide.vec210 = load <4 x i32>, ptr %next.gep206, align 4, !tbaa !501, !alias.scope !7510, !noalias !7511
  store <4 x i32> %wide.vec207, ptr %next.gep203, align 4, !tbaa !501, !alias.scope !7512, !noalias !7511
  store <4 x i32> %wide.vec210, ptr %next.gep204, align 4, !tbaa !501, !alias.scope !7512, !noalias !7511
  %index.next215 = add nuw i64 %index202, 4       ; 2 uses
  %i.dq = icmp eq i64 %index.next215, %n.vec200
  br i1 %i.dq, label %middle.block216, label %vector.body201, !llvm.loop !7497

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
  %i.ds = load i32, ptr %.05.i34, align 4, !tbaa !501, !noalias !7511
  store i32 %i.ds, ptr %i.dr, align 4, !tbaa !529, !noalias !7511
  %i.dt = getelementptr inbounds nuw i8, ptr %.05.i34, i64 4
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !501, !noalias !7511
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  store i32 %i.du, ptr %i.dv, align 4, !tbaa !530, !noalias !7511
  %i.dw = getelementptr inbounds nuw i8, ptr %.05.i34, i64 8 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %.not.i35 = icmp eq ptr %i.dw, %.0.lcssa.i26
  br i1 %.not.i35, label %_ZN5boost4moveIPSt4pairIiiENS_9container12vec_iteratorIS3_Lb0EEEEET0_T_S8_S7_.exit36, label %.lr.ph.i33, !llvm.loop !7498

bb.h:                                             ; preds = %bb.f
  %i.dy = load ptr, ptr %3, align 8, !tbaa !509
  store ptr %i.dy, ptr %0, align 8, !tbaa !533
  br label %_ZN5boost4moveIPSt4pairIiiENS_9container12vec_iteratorIS3_Lb0EEEEET0_T_S8_S7_.exit36

bb.i:                                             ; preds = %bb.e
  %i.dz = load ptr, ptr %1, align 8, !tbaa !509
  store ptr %i.dz, ptr %8, align 8, !tbaa !533
  %i.ea = load ptr, ptr %2, align 8, !tbaa !509
  store ptr %i.ea, ptr %9, align 8, !tbaa !533
  %i.eb = load ptr, ptr %3, align 8, !tbaa !509
  store ptr %i.eb, ptr %10, align 8, !tbaa !533
  call void @_ZN5boost7movelib10rotate_gcdINS_9container12vec_iteratorIPSt4pairIiiELb0EEEEET_S8_S8_S8_(ptr dead_on_unwind writable sret(%"class.boost::container::vec_iterator.27") align 8 %0, ptr noundef nonnull align 8 dead_on_return %8, ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dead_on_return %10)
  br label %_ZN5boost4moveIPSt4pairIiiENS_9container12vec_iteratorIS3_Lb0EEEEET0_T_S8_S7_.exit36

_ZN5boost4moveIPSt4pairIiiENS_9container12vec_iteratorIS3_Lb0EEEEET0_T_S8_S7_.exit36: ; preds = %.lr.ph.i33, %middle.block216, %_ZN5boost4moveINS_9container12vec_iteratorIPSt4pairIiiELb0EEES6_EET0_T_S8_S7_.exit, %bb.i, %bb.h, %bb.d, %_ZN5boost4moveIPSt4pairIiiENS_9container12vec_iteratorIS3_Lb0EEEEET0_T_S8_S7_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib17op_buffered_mergeINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEENS0_7move_opENS0_10range_xbufIS6_mSF_EEEEvT_SI_SI_T0_T1_RT2_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !533    ; 3 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !533    ; 6 uses
  %.not51 = icmp eq ptr %i.a, %i.b
  br i1 %.not51, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_NS2_12vec_iteratorISC_Lb0EEENS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %2, align 8, !tbaa !533    ; 2 uses
  %.not52 = icmp eq ptr %i.b, %i.c
  br i1 %.not52, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_NS2_12vec_iteratorISC_Lb0EEENS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -8
  %i.e = load i32, ptr %i.b, align 4, !tbaa !501  ; 2 uses
  %i.f = load i32, ptr %i.d, align 4, !tbaa !501  ; 2 uses
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
  %i.r = load i32, ptr %i.q, align 4, !tbaa !501, !noalias !7541
  %i.s = icmp slt i32 %i.e, %i.r                  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.neg.i = xor i64 %i.p, -1
  %i.u = add i64 %.010.i, %.neg.i
  %i.v = select i1 %i.s, ptr %i.o, ptr %i.t       ; 11 uses
  %.1.i = select i1 %i.s, i64 %i.p, i64 %i.u      ; 2 uses
  %.not.i = icmp eq i64 %.1.i, 0
  br i1 %.not.i, label %_ZN5boost7movelib11upper_boundINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_RKT0_T1_.exit, label %.lr.ph.i, !llvm.loop !105

_ZN5boost7movelib11upper_boundINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_RKT0_T1_.exit: ; preds = %.lr.ph.i
  %i.w = ptrtoaddr ptr %i.v to i64
  store ptr %i.v, ptr %0, align 8, !tbaa !533
  %i.x = load ptr, ptr %1, align 8, !tbaa !533    ; 3 uses
  %i.y = load ptr, ptr %3, align 8, !tbaa !648    ; 10 uses
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
  %wide.vec = load <4 x i32>, ptr %next.gep, align 4, !tbaa !501, !alias.scope !7542
  %wide.vec120 = load <4 x i32>, ptr %next.gep116, align 4, !tbaa !501, !alias.scope !7542
  store <4 x i32> %wide.vec, ptr %next.gep117, align 4, !tbaa !501, !alias.scope !7543, !noalias !7542
  store <4 x i32> %wide.vec120, ptr %next.gep118, align 4, !tbaa !501, !alias.scope !7543, !noalias !7542
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !7518

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
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !501
  store i32 %i.aq, ptr %.04.i.i.i, align 4, !tbaa !529
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !501
  %i.at = getelementptr inbounds nuw i8, ptr %.04.i.i.i, i64 4
  store i32 %i.as, ptr %i.at, align 4, !tbaa !530
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.04.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.au, %i.x
  br i1 %.not.i.i.i, label %_ZN5boost7movelib10range_xbufIPSt4pairIiiEmNS0_7move_opEE11move_assignINS_9container12vec_iteratorIS4_Lb0EEEEEvT_m.exit, label %.lr.ph.i.i.i, !llvm.loop !7519

_ZN5boost7movelib10range_xbufIPSt4pairIiiEmNS0_7move_opEE11move_assignINS_9container12vec_iteratorIS4_Lb0EEEEEvT_m.exit: ; preds = %.lr.ph.i.i.i, %middle.block
  %.04.i.i.i.lcssa = phi ptr [ %ind.escape, %middle.block ], [ %.04.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa111 = phi ptr [ %i.al, %middle.block ], [ %i.av, %.lr.ph.i.i.i ] ; 2 uses
  %.04.i.i.i.lcssa216 = ptrtoaddr ptr %.04.i.i.i.lcssa to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.lcssa111, ptr %i.aw, align 8, !tbaa !649
  %i.ax = load ptr, ptr %0, align 8, !tbaa !509   ; 2 uses
  %i.ay = load ptr, ptr %1, align 8, !tbaa !509
  %i.az = load ptr, ptr %2, align 8, !tbaa !509
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
  %min.iters.check135 = icmp ult i64 %i.bd, 152
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
  %wide.vec148 = load <4 x i32>, ptr %next.gep146, align 4, !tbaa !501, !alias.scope !7544, !noalias !7545
  %wide.vec151 = load <4 x i32>, ptr %next.gep147, align 4, !tbaa !501, !alias.scope !7544, !noalias !7545
  store <4 x i32> %wide.vec148, ptr %next.gep144, align 4, !tbaa !501, !alias.scope !7546, !noalias !7545
  store <4 x i32> %wide.vec151, ptr %next.gep145, align 4, !tbaa !501, !alias.scope !7546, !noalias !7545
  %index.next156 = add nuw i64 %index143, 4       ; 2 uses
  %i.bv = icmp eq i64 %index.next156, %n.vec141
  br i1 %i.bv, label %middle.block157, label %vector.body142, !llvm.loop !7527

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
  %i.ca = load i32, ptr %.05.i.i.i.prol, align 4, !tbaa !501, !noalias !7545
  store i32 %i.ca, ptr %i.bz, align 4, !tbaa !529, !noalias !7545
  %i.cb = getelementptr inbounds nuw i8, ptr %.05.i.i.i.prol, i64 4
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !501, !noalias !7545
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  store i32 %i.cc, ptr %i.cd, align 4, !tbaa !530, !noalias !7545
  %i.ce = getelementptr inbounds nuw i8, ptr %.05.i.i.i.prol, i64 8 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bz, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i10.prol.loopexit, label %.lr.ph.i.i.i10.prol, !llvm.loop !7528

.lr.ph.i.i.i10.prol.loopexit:                     ; preds = %.lr.ph.i.i.i10.prol, %.lr.ph.i.i.i10.preheader202
  %.unr = phi ptr [ %.ph203, %.lr.ph.i.i.i10.preheader202 ], [ %i.cf, %.lr.ph.i.i.i10.prol ]
  %.05.i.i.i.unr = phi ptr [ %.05.i.i.i.ph, %.lr.ph.i.i.i10.preheader202 ], [ %i.ce, %.lr.ph.i.i.i10.prol ]
  %i.cg = icmp ult i64 %i.bw, 24
  br i1 %i.cg, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_NS2_12vec_iteratorISC_Lb0EEENS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit, label %.lr.ph.i.i.i10

.lr.ph.i.i.i10:                                   ; preds = %.lr.ph.i.i.i10.prol.loopexit, %.lr.ph.i.i.i10
  %i.ch = phi ptr [ %i.df, %.lr.ph.i.i.i10 ], [ %.unr, %.lr.ph.i.i.i10.prol.loopexit ] ; 9 uses
  %.05.i.i.i = phi ptr [ %i.de, %.lr.ph.i.i.i10 ], [ %.05.i.i.i.unr, %.lr.ph.i.i.i10.prol.loopexit ] ; 9 uses
  %i.ci = load i32, ptr %.05.i.i.i, align 4, !tbaa !501, !noalias !7545
  store i32 %i.ci, ptr %i.ch, align 4, !tbaa !529, !noalias !7545
  %i.cj = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 4
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !501, !noalias !7545
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  store i32 %i.ck, ptr %i.cl, align 4, !tbaa !530, !noalias !7545
  %i.cm = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.co = load i32, ptr %i.cm, align 4, !tbaa !501, !noalias !7545
  store i32 %i.co, ptr %i.cn, align 4, !tbaa !529, !noalias !7545
  %i.cp = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 12
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !501, !noalias !7545
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ch, i64 12
  store i32 %i.cq, ptr %i.cr, align 4, !tbaa !530, !noalias !7545
  %i.cs = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cu = load i32, ptr %i.cs, align 4, !tbaa !501, !noalias !7545
  store i32 %i.cu, ptr %i.ct, align 4, !tbaa !529, !noalias !7545
  %i.cv = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 20
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !501, !noalias !7545
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ch, i64 20
  store i32 %i.cw, ptr %i.cx, align 4, !tbaa !530, !noalias !7545
  %i.cy = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.da = load i32, ptr %i.cy, align 4, !tbaa !501, !noalias !7545
  store i32 %i.da, ptr %i.cz, align 4, !tbaa !529, !noalias !7545
  %i.db = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 28
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !501, !noalias !7545
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ch, i64 28
  store i32 %i.dc, ptr %i.dd, align 4, !tbaa !530, !noalias !7545
  %i.de = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.df = getelementptr inbounds nuw i8, ptr %i.ch, i64 32
  %.not.i.i.i11.3 = icmp eq ptr %i.cy, %.04.i.i.i.lcssa
  br i1 %.not.i.i.i11.3, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_NS2_12vec_iteratorISC_Lb0EEENS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit, label %.lr.ph.i.i.i10, !llvm.loop !7529

bb.e:                                             ; preds = %.lr.ph.i7
  %i.dg = load i32, ptr %.sroa.039.0, align 4, !tbaa !501 ; 2 uses
  %i.dh = load i32, ptr %.015.i, align 4, !tbaa !501 ; 2 uses
  %i.di = icmp slt i32 %i.dg, %i.dh
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.040.0, i64 4
  br i1 %i.di, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 %i.dg, ptr %.sroa.040.0, align 4, !tbaa !529
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.039.0, i64 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  store i32 %i.dh, ptr %.sroa.040.0, align 4, !tbaa !529
  %i.dl = getelementptr inbounds nuw i8, ptr %.015.i, i64 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.039.0.pn = phi ptr [ %.sroa.039.0, %bb.f ], [ %.015.i, %bb.g ]
  %.sroa.039.1 = phi ptr [ %i.dk, %bb.f ], [ %.sroa.039.0, %bb.g ]
  %.1.i8 = phi ptr [ %.015.i, %bb.f ], [ %i.dl, %bb.g ] ; 2 uses
  %.sink.in = getelementptr inbounds nuw i8, ptr %.sroa.039.0.pn, i64 4
  %.sink = load i32, ptr %.sink.in, align 4, !tbaa !501
  store i32 %.sink, ptr %i.dj, align 4, !tbaa !530
  %i.dm = getelementptr i8, ptr %.sroa.040.0, i64 8
  %.not.i9 = icmp eq ptr %.1.i8, %.lcssa111
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i9, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_NS2_12vec_iteratorISC_Lb0EEENS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit, label %.lr.ph.i7, !llvm.loop !106

.lr.ph.i13:                                       ; preds = %bb.d, %.lr.ph.i13
  %i.dn = phi ptr [ %i.du, %.lr.ph.i13 ], [ %i.b, %bb.d ] ; 2 uses
  %.010.i14 = phi i64 [ %.1.i16, %.lr.ph.i13 ], [ %i.n, %bb.d ] ; 2 uses
  %i.do = lshr i64 %.010.i14, 1                   ; 3 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.do ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !501, !noalias !7547
  %i.dr = icmp slt i32 %i.dq, %i.f                ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %.neg.i15 = xor i64 %i.do, -1
  %i.dt = add i64 %.010.i14, %.neg.i15
  %i.du = select i1 %i.dr, ptr %i.ds, ptr %i.dn   ; 5 uses
  %.1.i16 = select i1 %i.dr, i64 %i.dt, i64 %i.do ; 2 uses
  %.not.i17 = icmp eq i64 %.1.i16, 0
  br i1 %.not.i17, label %_ZN5boost7movelib11lower_boundINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_RKT0_T1_.exit, label %.lr.ph.i13, !llvm.loop !104

_ZN5boost7movelib11lower_boundINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_RKT0_T1_.exit: ; preds = %.lr.ph.i13
  %i.dv = ptrtoaddr ptr %i.du to i64
  store ptr %i.du, ptr %2, align 8, !tbaa !533
  %i.dw = load ptr, ptr %1, align 8, !tbaa !509   ; 9 uses
  %i.dx = load ptr, ptr %3, align 8, !tbaa !648   ; 10 uses
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
begin_hunk_1_@_ZN5boost7movelib15rotate_adaptiveINS_9container12vec_iteratorIPSt4pairINS2_4test11movable_intES6_ELb0EEES8_EET_SA_SA_SA_NS0_9iter_sizeISA_E4typeESD_T0_SD_:bb.a
  %index178 = phi i64 [ 0, %vector.ph175 ], [ %index.next185, %vector.body177 ] ; 2 uses
  %i.dk = shl i64 %index178, 3                    ; 2 uses
  %next.gep179 = getelementptr i8, ptr %i.cy, i64 %i.dk
  %next.gep180 = getelementptr i8, ptr %6, i64 %i.dk ; 2 uses
  %wide.vec181 = load <4 x i32>, ptr %next.gep180, align 4, !tbaa !565, !alias.scope !16591, !noalias !16592
  store <4 x i32> %wide.vec181, ptr %next.gep179, align 4, !tbaa !565, !alias.scope !16593, !noalias !16592
  store <4 x i32> zeroinitializer, ptr %next.gep180, align 4, !tbaa !565, !alias.scope !16591, !noalias !16592
  %index.next185 = add nuw i64 %index178, 2       ; 2 uses
  %i.dl = icmp eq i64 %index.next185, %n.vec176
  br i1 %i.dl, label %middle.block186, label %vector.body177, !llvm.loop !16578

middle.block186:                                  ; preds = %vector.body177
  %cmp.n187 = icmp eq i64 %i.dc, %n.vec176
  br i1 %cmp.n187, label %_ZN5boost4moveIPSt4pairINS_9container4test11movable_intES4_ENS2_12vec_iteratorIS6_Lb0EEEEET0_T_SA_S9_.exit36, label %.lr.ph.i33.preheader190

.lr.ph.i33.preheader190:                          ; preds = %vector.memcheck171, %.lr.ph.i33.preheader, %middle.block186
  %.ph = phi ptr [ %i.cy, %vector.memcheck171 ], [ %i.cy, %.lr.ph.i33.preheader ], [ %i.di, %middle.block186 ]
  %.05.i34.ph = phi ptr [ %6, %vector.memcheck171 ], [ %6, %.lr.ph.i33.preheader ], [ %i.dj, %middle.block186 ]
  br label %.lr.ph.i33

.lr.ph.i33:                                       ; preds = %.lr.ph.i33.preheader190, %.lr.ph.i33
  %i.dm = phi ptr [ %i.ds, %.lr.ph.i33 ], [ %.ph, %.lr.ph.i33.preheader190 ] ; 3 uses
  %.05.i34 = phi ptr [ %i.dr, %.lr.ph.i33 ], [ %.05.i34.ph, %.lr.ph.i33.preheader190 ] ; 4 uses
  %i.dn = load i32, ptr %.05.i34, align 4, !tbaa !565, !noalias !16592
  store i32 %i.dn, ptr %i.dm, align 4, !tbaa !565, !noalias !16592
  store i32 0, ptr %.05.i34, align 4, !tbaa !565, !noalias !16592
  %i.do = getelementptr inbounds nuw i8, ptr %.05.i34, i64 4 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 4
  %i.dq = load i32, ptr %i.do, align 4, !tbaa !565, !noalias !16592
  store i32 %i.dq, ptr %i.dp, align 4, !tbaa !565, !noalias !16592
  store i32 0, ptr %i.do, align 4, !tbaa !565, !noalias !16592
  %i.dr = getelementptr inbounds nuw i8, ptr %.05.i34, i64 8 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %.not.i35 = icmp eq ptr %i.dr, %.0.lcssa.i26
  br i1 %.not.i35, label %_ZN5boost4moveIPSt4pairINS_9container4test11movable_intES4_ENS2_12vec_iteratorIS6_Lb0EEEEET0_T_SA_S9_.exit36, label %.lr.ph.i33, !llvm.loop !16579

bb.h:                                             ; preds = %bb.f
  %i.dt = load ptr, ptr %3, align 8, !tbaa !743
  store ptr %i.dt, ptr %0, align 8, !tbaa !747
  br label %_ZN5boost4moveIPSt4pairINS_9container4test11movable_intES4_ENS2_12vec_iteratorIS6_Lb0EEEEET0_T_SA_S9_.exit36

bb.i:                                             ; preds = %bb.e
  %i.du = load ptr, ptr %1, align 8, !tbaa !743
  store ptr %i.du, ptr %8, align 8, !tbaa !747
  %i.dv = load ptr, ptr %2, align 8, !tbaa !743
  store ptr %i.dv, ptr %9, align 8, !tbaa !747
  %i.dw = load ptr, ptr %3, align 8, !tbaa !743
  store ptr %i.dw, ptr %10, align 8, !tbaa !747
  call void @_ZN5boost7movelib10rotate_gcdINS_9container12vec_iteratorIPSt4pairINS2_4test11movable_intES6_ELb0EEEEET_SA_SA_SA_(ptr dead_on_unwind writable sret(%"class.boost::container::vec_iterator.250") align 8 %0, ptr noundef nonnull align 8 dead_on_return %8, ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dead_on_return %10)
  br label %_ZN5boost4moveIPSt4pairINS_9container4test11movable_intES4_ENS2_12vec_iteratorIS6_Lb0EEEEET0_T_SA_S9_.exit36

_ZN5boost4moveIPSt4pairINS_9container4test11movable_intES4_ENS2_12vec_iteratorIS6_Lb0EEEEET0_T_SA_S9_.exit36: ; preds = %.lr.ph.i33, %middle.block186, %_ZN5boost4moveINS_9container12vec_iteratorIPSt4pairINS1_4test11movable_intES5_ELb0EEES8_EET0_T_SA_S9_.exit, %bb.i, %bb.h, %bb.d, %_ZN5boost4moveIPSt4pairINS_9container4test11movable_intES4_ENS2_12vec_iteratorIS6_Lb0EEEEET0_T_SA_S9_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib17op_buffered_mergeINS_9container12vec_iteratorIPSt4pairINS2_4test11movable_intES6_ELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEENS0_7move_opENS0_10range_xbufIS8_mSH_EEEEvT_SK_SK_T0_T1_RT2_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !747    ; 3 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !747    ; 6 uses
  %.not51 = icmp eq ptr %i.a, %i.b
  br i1 %.not51, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test11movable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_NS2_12vec_iteratorISE_Lb0EEENS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %2, align 8, !tbaa !747    ; 2 uses
  %.not52 = icmp eq ptr %i.b, %i.c
  br i1 %.not52, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test11movable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_NS2_12vec_iteratorISE_Lb0EEENS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -8
  %i.e = load i32, ptr %i.b, align 4, !tbaa !565  ; 2 uses
  %i.f = load i32, ptr %i.d, align 4, !tbaa !565  ; 2 uses
  %i.g = icmp slt i32 %i.e, %i.f
  br i1 %i.g, label %bb.d, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test11movable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_NS2_12vec_iteratorISE_Lb0EEENS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit

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
  %i.r = load i32, ptr %i.q, align 4, !tbaa !565, !noalias !16622
  %i.s = icmp slt i32 %i.e, %i.r                  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.neg.i = xor i64 %i.p, -1
  %i.u = add i64 %.010.i, %.neg.i
  %i.v = select i1 %i.s, ptr %i.o, ptr %i.t       ; 10 uses
  %.1.i = select i1 %i.s, i64 %i.p, i64 %i.u      ; 2 uses
  %.not.i = icmp eq i64 %.1.i, 0
  br i1 %.not.i, label %_ZN5boost7movelib11upper_boundINS_9container12vec_iteratorIPSt4pairINS2_4test11movable_intES6_ELb0EEES7_NS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEET_SH_SH_RKT0_T1_.exit, label %.lr.ph.i, !llvm.loop !213

_ZN5boost7movelib11upper_boundINS_9container12vec_iteratorIPSt4pairINS2_4test11movable_intES6_ELb0EEES7_NS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEET_SH_SH_RKT0_T1_.exit: ; preds = %.lr.ph.i
  %i.w = ptrtoaddr ptr %i.v to i64
  store ptr %i.v, ptr %0, align 8, !tbaa !747
  %i.x = load ptr, ptr %1, align 8, !tbaa !747    ; 3 uses
  %i.y = load ptr, ptr %3, align 8, !tbaa !769    ; 9 uses
  %i.z = ptrtoaddr ptr %i.y to i64                ; 2 uses
  %.not3.i.i.i = icmp eq ptr %i.x, %i.v
  br i1 %.not3.i.i.i, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test11movable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_NS2_12vec_iteratorISE_Lb0EEENS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit.sink.split, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN5boost7movelib11upper_boundINS_9container12vec_iteratorIPSt4pairINS2_4test11movable_intES6_ELb0EEES7_NS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEET_SH_SH_RKT0_T1_.exit
  %i.aa = ptrtoaddr ptr %i.x to i64
  %i.ab = add i64 %i.aa, -8
  %i.ac = sub i64 %i.ab, %i.w                     ; 5 uses
  %i.ad = lshr i64 %i.ac, 3
  %i.ae = add nuw nsw i64 %i.ad, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ac, 72
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader197, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.af = and i64 %i.ac, -8
  %i.ag = add i64 %i.af, 8                        ; 2 uses
  %i.ah = getelementptr i8, ptr %i.y, i64 %i.ag
  %i.ai = getelementptr i8, ptr %i.v, i64 %i.ag
  %bound0 = icmp ult ptr %i.y, %i.ai
  %bound1 = icmp ult ptr %i.v, %i.ah
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader197, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ae, 4611686018427387902     ; 3 uses
  %i.aj = shl i64 %n.vec, 3                       ; 2 uses
  %i.ak = getelementptr i8, ptr %i.v, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.y, i64 %i.aj   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.am = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.v, i64 %i.am ; 2 uses
  %next.gep121 = getelementptr i8, ptr %i.y, i64 %i.am
  %wide.vec = load <4 x i32>, ptr %next.gep, align 4, !tbaa !565, !alias.scope !16623
  store <4 x i32> %wide.vec, ptr %next.gep121, align 4, !tbaa !565, !alias.scope !16624, !noalias !16623
  store <4 x i32> zeroinitializer, ptr %next.gep, align 4, !tbaa !565, !alias.scope !16623
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !16599

middle.block:                                     ; preds = %vector.body
  %ind.escape = getelementptr i8, ptr %i.al, i64 -8
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test11movable_intES5_EmNS0_7move_opEE11move_assignINS3_12vec_iteratorIS7_Lb0EEEEEvT_m.exit, label %.lr.ph.i.i.i.preheader197

.lr.ph.i.i.i.preheader197:                        ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.ph198 = phi ptr [ %i.v, %vector.memcheck ], [ %i.v, %.lr.ph.i.i.i.preheader ], [ %i.ak, %middle.block ]
  %.04.i.i.i.ph = phi ptr [ %i.y, %vector.memcheck ], [ %i.y, %.lr.ph.i.i.i.preheader ], [ %i.al, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader197, %.lr.ph.i.i.i
  %i.ao = phi ptr [ %i.at, %.lr.ph.i.i.i ], [ %.ph198, %.lr.ph.i.i.i.preheader197 ] ; 4 uses
  %.04.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i ], [ %.04.i.i.i.ph, %.lr.ph.i.i.i.preheader197 ] ; 4 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !565
  store i32 %i.ap, ptr %.04.i.i.i, align 4, !tbaa !565
  store i32 0, ptr %i.ao, align 4, !tbaa !565
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 4 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.04.i.i.i, i64 4
  %i.as = load i32, ptr %i.aq, align 4, !tbaa !565
  store i32 %i.as, ptr %i.ar, align 4, !tbaa !565
  store i32 0, ptr %i.aq, align 4, !tbaa !565
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.04.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.at, %i.x
  br i1 %.not.i.i.i, label %_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test11movable_intES5_EmNS0_7move_opEE11move_assignINS3_12vec_iteratorIS7_Lb0EEEEEvT_m.exit, label %.lr.ph.i.i.i, !llvm.loop !16600

_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test11movable_intES5_EmNS0_7move_opEE11move_assignINS3_12vec_iteratorIS7_Lb0EEEEEvT_m.exit: ; preds = %.lr.ph.i.i.i, %middle.block
  %.04.i.i.i.lcssa = phi ptr [ %ind.escape, %middle.block ], [ %.04.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa116 = phi ptr [ %i.al, %middle.block ], [ %i.au, %.lr.ph.i.i.i ] ; 2 uses
  %.04.i.i.i.lcssa203 = ptrtoaddr ptr %.04.i.i.i.lcssa to i64
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.lcssa116, ptr %i.av, align 8, !tbaa !770
  %i.aw = load ptr, ptr %0, align 8, !tbaa !743   ; 2 uses
  %i.ax = load ptr, ptr %1, align 8, !tbaa !743
  %i.ay = load ptr, ptr %2, align 8, !tbaa !743
  br label %.lr.ph.i7

.lr.ph.i7:                                        ; preds = %_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test11movable_intES5_EmNS0_7move_opEE11move_assignINS3_12vec_iteratorIS7_Lb0EEEEEvT_m.exit, %bb.h
  %indvar = phi i64 [ 0, %_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test11movable_intES5_EmNS0_7move_opEE11move_assignINS3_12vec_iteratorIS7_Lb0EEEEEvT_m.exit ], [ %indvar.next, %bb.h ] ; 2 uses
  %.sroa.039.0 = phi ptr [ %i.ax, %_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test11movable_intES5_EmNS0_7move_opEE11move_assignINS3_12vec_iteratorIS7_Lb0EEEEEvT_m.exit ], [ %.sroa.039.1, %bb.h ] ; 6 uses
  %.sroa.040.0 = phi ptr [ %i.aw, %_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test11movable_intES5_EmNS0_7move_opEE11move_assignINS3_12vec_iteratorIS7_Lb0EEEEEvT_m.exit ], [ %i.do, %bb.h ] ; 9 uses
  %.015.i = phi ptr [ %i.y, %_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test11movable_intES5_EmNS0_7move_opEE11move_assignINS3_12vec_iteratorIS7_Lb0EEEEEvT_m.exit ], [ %.1.i8, %bb.h ] ; 12 uses
  %i.az = icmp eq ptr %.sroa.039.0, %i.ay
  br i1 %i.az, label %.lr.ph.i.i.i10.preheader, label %bb.e

.lr.ph.i.i.i10.preheader:                         ; preds = %.lr.ph.i7
  %.015.i132.le = ptrtoaddr ptr %.015.i to i64    ; 2 uses
  %i.ba = and i64 %i.ac, -8
  %i.bb = add i64 %i.ba, %i.z
  %i.bc = sub i64 %i.bb, %.015.i132.le            ; 2 uses
  %i.bd = lshr i64 %i.bc, 3
  %i.be = add nuw nsw i64 %i.bd, 1                ; 2 uses
  %min.iters.check134 = icmp ult i64 %i.bc, 104
  br i1 %min.iters.check134, label %.lr.ph.i.i.i10.preheader189, label %vector.memcheck135

vector.memcheck135:                               ; preds = %.lr.ph.i.i.i10.preheader
  %i.bf = shl i64 %indvar, 3
  %i.bg = and i64 %i.ac, -8
  %i.bh = add i64 %i.bg, %i.z
  %i.bi = sub i64 %i.bh, %.015.i132.le
  %i.bj = and i64 %i.bi, -8                       ; 2 uses
  %i.bk = getelementptr i8, ptr %i.aw, i64 %i.bf
  %i.bl = getelementptr i8, ptr %i.bk, i64 8
  %i.bm = getelementptr i8, ptr %i.bl, i64 %i.bj
  %i.bn = getelementptr i8, ptr %.015.i, i64 %i.bj
  %i.bo = getelementptr i8, ptr %i.bn, i64 8
  %bound0136 = icmp ult ptr %.sroa.040.0, %i.bo
  %bound1137 = icmp ult ptr %.015.i, %i.bm
  %found.conflict138 = and i1 %bound0136, %bound1137
  br i1 %found.conflict138, label %.lr.ph.i.i.i10.preheader189, label %vector.ph139

vector.ph139:                                     ; preds = %vector.memcheck135
  %n.vec140 = and i64 %i.be, 4611686018427387902  ; 3 uses
  %i.bp = shl i64 %n.vec140, 3                    ; 2 uses
  %i.bq = getelementptr i8, ptr %.sroa.040.0, i64 %i.bp
  %i.br = getelementptr i8, ptr %.015.i, i64 %i.bp
  br label %vector.body141

vector.body141:                                   ; preds = %vector.body141, %vector.ph139
  %index142 = phi i64 [ 0, %vector.ph139 ], [ %index.next149, %vector.body141 ] ; 2 uses
  %i.bs = shl i64 %index142, 3                    ; 2 uses
  %next.gep143 = getelementptr i8, ptr %.sroa.040.0, i64 %i.bs
  %next.gep144 = getelementptr i8, ptr %.015.i, i64 %i.bs ; 2 uses
  %wide.vec145 = load <4 x i32>, ptr %next.gep144, align 4, !tbaa !565, !alias.scope !16625, !noalias !16626
  store <4 x i32> %wide.vec145, ptr %next.gep143, align 4, !tbaa !565, !alias.scope !16627, !noalias !16626
  store <4 x i32> zeroinitializer, ptr %next.gep144, align 4, !tbaa !565, !alias.scope !16625, !noalias !16626
  %index.next149 = add nuw i64 %index142, 2       ; 2 uses
  %i.bt = icmp eq i64 %index.next149, %n.vec140
  br i1 %i.bt, label %middle.block150, label %vector.body141, !llvm.loop !16608

middle.block150:                                  ; preds = %vector.body141
  %cmp.n151 = icmp eq i64 %i.be, %n.vec140
  br i1 %cmp.n151, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test11movable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_NS2_12vec_iteratorISE_Lb0EEENS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit, label %.lr.ph.i.i.i10.preheader189

.lr.ph.i.i.i10.preheader189:                      ; preds = %vector.memcheck135, %.lr.ph.i.i.i10.preheader, %middle.block150
  %.ph190 = phi ptr [ %.sroa.040.0, %vector.memcheck135 ], [ %.sroa.040.0, %.lr.ph.i.i.i10.preheader ], [ %i.bq, %middle.block150 ] ; 2 uses
  %.05.i.i.i.ph = phi ptr [ %.015.i, %vector.memcheck135 ], [ %.015.i, %.lr.ph.i.i.i10.preheader ], [ %i.br, %middle.block150 ] ; 3 uses
  %.05.i.i.i.ph204 = ptrtoaddr ptr %.05.i.i.i.ph to i64
  %i.bu = sub i64 %.04.i.i.i.lcssa203, %.05.i.i.i.ph204 ; 2 uses
  %i.bv = lshr i64 %i.bu, 3
  %i.bw = add nuw nsw i64 %i.bv, 1
  %xtraiter = and i64 %i.bw, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i10.prol.loopexit, label %.lr.ph.i.i.i10.prol

.lr.ph.i.i.i10.prol:                              ; preds = %.lr.ph.i.i.i10.preheader189, %.lr.ph.i.i.i10.prol
  %i.bx = phi ptr [ %i.cd, %.lr.ph.i.i.i10.prol ], [ %.ph190, %.lr.ph.i.i.i10.preheader189 ] ; 3 uses
  %.05.i.i.i.prol = phi ptr [ %i.cc, %.lr.ph.i.i.i10.prol ], [ %.05.i.i.i.ph, %.lr.ph.i.i.i10.preheader189 ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i10.prol ], [ 0, %.lr.ph.i.i.i10.preheader189 ]
  %i.by = load i32, ptr %.05.i.i.i.prol, align 4, !tbaa !565, !noalias !16626
  store i32 %i.by, ptr %i.bx, align 4, !tbaa !565, !noalias !16626
  store i32 0, ptr %.05.i.i.i.prol, align 4, !tbaa !565, !noalias !16626
  %i.bz = getelementptr inbounds nuw i8, ptr %.05.i.i.i.prol, i64 4 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  %i.cb = load i32, ptr %i.bz, align 4, !tbaa !565, !noalias !16626
  store i32 %i.cb, ptr %i.ca, align 4, !tbaa !565, !noalias !16626
  store i32 0, ptr %i.bz, align 4, !tbaa !565, !noalias !16626
  %i.cc = getelementptr inbounds nuw i8, ptr %.05.i.i.i.prol, i64 8 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i10.prol.loopexit, label %.lr.ph.i.i.i10.prol, !llvm.loop !16609

.lr.ph.i.i.i10.prol.loopexit:                     ; preds = %.lr.ph.i.i.i10.prol, %.lr.ph.i.i.i10.preheader189
  %.unr = phi ptr [ %.ph190, %.lr.ph.i.i.i10.preheader189 ], [ %i.cd, %.lr.ph.i.i.i10.prol ]
  %.05.i.i.i.unr = phi ptr [ %.05.i.i.i.ph, %.lr.ph.i.i.i10.preheader189 ], [ %i.cc, %.lr.ph.i.i.i10.prol ]
  %i.ce = icmp ult i64 %i.bu, 24
  br i1 %i.ce, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test11movable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_NS2_12vec_iteratorISE_Lb0EEENS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit, label %.lr.ph.i.i.i10

.lr.ph.i.i.i10:                                   ; preds = %.lr.ph.i.i.i10.prol.loopexit, %.lr.ph.i.i.i10
  %i.cf = phi ptr [ %i.dd, %.lr.ph.i.i.i10 ], [ %.unr, %.lr.ph.i.i.i10.prol.loopexit ] ; 9 uses
  %.05.i.i.i = phi ptr [ %i.dc, %.lr.ph.i.i.i10 ], [ %.05.i.i.i.unr, %.lr.ph.i.i.i10.prol.loopexit ] ; 10 uses
  %i.cg = load i32, ptr %.05.i.i.i, align 4, !tbaa !565, !noalias !16626
  store i32 %i.cg, ptr %i.cf, align 4, !tbaa !565, !noalias !16626
  store i32 0, ptr %.05.i.i.i, align 4, !tbaa !565, !noalias !16626
  %i.ch = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 4 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  %i.cj = load i32, ptr %i.ch, align 4, !tbaa !565, !noalias !16626
  store i32 %i.cj, ptr %i.ci, align 4, !tbaa !565, !noalias !16626
  store i32 0, ptr %i.ch, align 4, !tbaa !565, !noalias !16626
  %i.ck = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.cm = load i32, ptr %i.ck, align 4, !tbaa !565, !noalias !16626
  store i32 %i.cm, ptr %i.cl, align 4, !tbaa !565, !noalias !16626
  store i32 0, ptr %i.ck, align 4, !tbaa !565, !noalias !16626
  %i.cn = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 12 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cf, i64 12
  %i.cp = load i32, ptr %i.cn, align 4, !tbaa !565, !noalias !16626
  store i32 %i.cp, ptr %i.co, align 4, !tbaa !565, !noalias !16626
  store i32 0, ptr %i.cn, align 4, !tbaa !565, !noalias !16626
  %i.cq = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.cs = load i32, ptr %i.cq, align 4, !tbaa !565, !noalias !16626
  store i32 %i.cs, ptr %i.cr, align 4, !tbaa !565, !noalias !16626
  store i32 0, ptr %i.cq, align 4, !tbaa !565, !noalias !16626
  %i.ct = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 20 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cf, i64 20
  %i.cv = load i32, ptr %i.ct, align 4, !tbaa !565, !noalias !16626
  store i32 %i.cv, ptr %i.cu, align 4, !tbaa !565, !noalias !16626
  store i32 0, ptr %i.ct, align 4, !tbaa !565, !noalias !16626
  %i.cw = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %i.cy = load i32, ptr %i.cw, align 4, !tbaa !565, !noalias !16626
  store i32 %i.cy, ptr %i.cx, align 4, !tbaa !565, !noalias !16626
  store i32 0, ptr %i.cw, align 4, !tbaa !565, !noalias !16626
  %i.cz = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 28 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cf, i64 28
  %i.db = load i32, ptr %i.cz, align 4, !tbaa !565, !noalias !16626
  store i32 %i.db, ptr %i.da, align 4, !tbaa !565, !noalias !16626
  store i32 0, ptr %i.cz, align 4, !tbaa !565, !noalias !16626
  %i.dc = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %.not.i.i.i11.3 = icmp eq ptr %i.cw, %.04.i.i.i.lcssa
  br i1 %.not.i.i.i11.3, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test11movable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_NS2_12vec_iteratorISE_Lb0EEENS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit, label %.lr.ph.i.i.i10, !llvm.loop !16610

bb.e:                                             ; preds = %.lr.ph.i7
  %i.de = load i32, ptr %.sroa.039.0, align 4, !tbaa !565 ; 2 uses
  %i.df = load i32, ptr %.015.i, align 4, !tbaa !565 ; 2 uses
  %i.dg = icmp slt i32 %i.de, %i.df
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.040.0, i64 4 ; 2 uses
  br i1 %i.dg, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 %i.de, ptr %.sroa.040.0, align 4, !tbaa !565
  store i32 0, ptr %.sroa.039.0, align 4, !tbaa !565
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.039.0, i64 4 ; 2 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !565
  store i32 %i.dj, ptr %i.dh, align 4, !tbaa !565
  store i32 0, ptr %i.di, align 4, !tbaa !565
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.039.0, i64 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  store i32 %i.df, ptr %.sroa.040.0, align 4, !tbaa !565
  store i32 0, ptr %.015.i, align 4, !tbaa !565
  %i.dl = getelementptr inbounds nuw i8, ptr %.015.i, i64 4 ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !565
  store i32 %i.dm, ptr %i.dh, align 4, !tbaa !565
  store i32 0, ptr %i.dl, align 4, !tbaa !565
  %i.dn = getelementptr inbounds nuw i8, ptr %.015.i, i64 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.039.1 = phi ptr [ %i.dk, %bb.f ], [ %.sroa.039.0, %bb.g ]
  %.1.i8 = phi ptr [ %.015.i, %bb.f ], [ %i.dn, %bb.g ] ; 2 uses
  %i.do = getelementptr i8, ptr %.sroa.040.0, i64 8
  %.not.i9 = icmp eq ptr %.1.i8, %.lcssa116
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i9, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test11movable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_NS2_12vec_iteratorISE_Lb0EEENS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit, label %.lr.ph.i7, !llvm.loop !214

.lr.ph.i13:                                       ; preds = %bb.d, %.lr.ph.i13
  %i.dp = phi ptr [ %i.dw, %.lr.ph.i13 ], [ %i.b, %bb.d ] ; 2 uses
  %.010.i14 = phi i64 [ %.1.i16, %.lr.ph.i13 ], [ %i.n, %bb.d ] ; 2 uses
  %i.dq = lshr i64 %.010.i14, 1                   ; 3 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.dq ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !565, !noalias !16628
  %i.dt = icmp slt i32 %i.ds, %i.f                ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %.neg.i15 = xor i64 %i.dq, -1
  %i.dv = add i64 %.010.i14, %.neg.i15
  %i.dw = select i1 %i.dt, ptr %i.du, ptr %i.dp   ; 5 uses
  %.1.i16 = select i1 %i.dt, i64 %i.dv, i64 %i.dq ; 2 uses
  %.not.i17 = icmp eq i64 %.1.i16, 0
  br i1 %.not.i17, label %_ZN5boost7movelib11lower_boundINS_9container12vec_iteratorIPSt4pairINS2_4test11movable_intES6_ELb0EEES7_NS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEET_SH_SH_RKT0_T1_.exit, label %.lr.ph.i13, !llvm.loop !212

_ZN5boost7movelib11lower_boundINS_9container12vec_iteratorIPSt4pairINS2_4test11movable_intES6_ELb0EEES7_NS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEET_SH_SH_RKT0_T1_.exit: ; preds = %.lr.ph.i13
  %i.dx = ptrtoaddr ptr %i.dw to i64
  store ptr %i.dw, ptr %2, align 8, !tbaa !747
  %i.dy = load ptr, ptr %1, align 8, !tbaa !743   ; 8 uses
  %i.dz = load ptr, ptr %3, align 8, !tbaa !769   ; 9 uses
  %.not3.i.i.i18 = icmp eq ptr %i.dw, %i.dy
  br i1 %.not3.i.i.i18, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test11movable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_NS2_12vec_iteratorISE_Lb0EEENS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit.sink.split, label %.lr.ph.i.i.i19.preheader

.lr.ph.i.i.i19.preheader:                         ; preds = %_ZN5boost7movelib11lower_boundINS_9container12vec_iteratorIPSt4pairINS2_4test11movable_intES6_ELb0EEES7_NS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEET_SH_SH_RKT0_T1_.exit
  %i.ea = ptrtoaddr ptr %i.dy to i64
  %i.eb = add i64 %i.dx, -8
  %i.ec = sub i64 %i.eb, %i.ea                    ; 3 uses
  %i.ed = lshr i64 %i.ec, 3
  %i.ee = add nuw nsw i64 %i.ed, 1                ; 2 uses
  %min.iters.check162 = icmp ult i64 %i.ec, 72
  br i1 %min.iters.check162, label %.lr.ph.i.i.i19.preheader185, label %vector.memcheck163

vector.memcheck163:                               ; preds = %.lr.ph.i.i.i19.preheader
  %i.ef = and i64 %i.ec, -8
  %i.eg = add i64 %i.ef, 8                        ; 2 uses
  %i.eh = getelementptr i8, ptr %i.dz, i64 %i.eg
  %i.ei = getelementptr i8, ptr %i.dy, i64 %i.eg
  %bound0164 = icmp ult ptr %i.dz, %i.ei
  %bound1165 = icmp ult ptr %i.dy, %i.eh
  %found.conflict166 = and i1 %bound0164, %bound1165
  br i1 %found.conflict166, label %.lr.ph.i.i.i19.preheader185, label %vector.ph167

vector.ph167:                                     ; preds = %vector.memcheck163
end_hunk_1
begin_hunk_2_@_ZN5boost7movelib15rotate_adaptiveINS_9container12vec_iteratorIPSt4pairINS2_4test12copyable_intES6_ELb0EEES8_EET_SA_SA_SA_NS0_9iter_sizeISA_E4typeESD_T0_SD_:bb.a
  %next.gep204 = getelementptr i8, ptr %i.dc, i64 %i.dp
  %next.gep205 = getelementptr i8, ptr %6, i64 %i.do
  %next.gep206 = getelementptr i8, ptr %6, i64 %i.dp
  %wide.vec207 = load <4 x i32>, ptr %next.gep205, align 4, !tbaa !792, !alias.scope !21406, !noalias !21407
  %wide.vec210 = load <4 x i32>, ptr %next.gep206, align 4, !tbaa !792, !alias.scope !21406, !noalias !21407
  store <4 x i32> %wide.vec207, ptr %next.gep203, align 4, !tbaa !792, !alias.scope !21408, !noalias !21407
  store <4 x i32> %wide.vec210, ptr %next.gep204, align 4, !tbaa !792, !alias.scope !21408, !noalias !21407
  %index.next215 = add nuw i64 %index202, 4       ; 2 uses
  %i.dq = icmp eq i64 %index.next215, %n.vec200
  br i1 %i.dq, label %middle.block216, label %vector.body201, !llvm.loop !21393

middle.block216:                                  ; preds = %vector.body201
  %cmp.n217 = icmp eq i64 %i.dg, %n.vec200
  br i1 %cmp.n217, label %_ZN5boost4moveIPSt4pairINS_9container4test12copyable_intES4_ENS2_12vec_iteratorIS6_Lb0EEEEET0_T_SA_S9_.exit36, label %.lr.ph.i33.preheader220

.lr.ph.i33.preheader220:                          ; preds = %vector.memcheck195, %.lr.ph.i33.preheader, %middle.block216
  %.ph = phi ptr [ %i.dc, %vector.memcheck195 ], [ %i.dc, %.lr.ph.i33.preheader ], [ %i.dm, %middle.block216 ]
  %.05.i34.ph = phi ptr [ %6, %vector.memcheck195 ], [ %6, %.lr.ph.i33.preheader ], [ %i.dn, %middle.block216 ]
  br label %.lr.ph.i33

.lr.ph.i33:                                       ; preds = %.lr.ph.i33.preheader220, %.lr.ph.i33
  %i.dr = phi ptr [ %i.dx, %.lr.ph.i33 ], [ %.ph, %.lr.ph.i33.preheader220 ] ; 3 uses
  %.05.i34 = phi ptr [ %i.dw, %.lr.ph.i33 ], [ %.05.i34.ph, %.lr.ph.i33.preheader220 ] ; 3 uses
  %i.ds = load i32, ptr %.05.i34, align 4, !tbaa !792, !noalias !21407
  store i32 %i.ds, ptr %i.dr, align 4, !tbaa !792, !noalias !21407
  %i.dt = getelementptr inbounds nuw i8, ptr %.05.i34, i64 4
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  %i.dv = load i32, ptr %i.dt, align 4, !tbaa !792, !noalias !21407
  store i32 %i.dv, ptr %i.du, align 4, !tbaa !792, !noalias !21407
  %i.dw = getelementptr inbounds nuw i8, ptr %.05.i34, i64 8 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %.not.i35 = icmp eq ptr %i.dw, %.0.lcssa.i26
  br i1 %.not.i35, label %_ZN5boost4moveIPSt4pairINS_9container4test12copyable_intES4_ENS2_12vec_iteratorIS6_Lb0EEEEET0_T_SA_S9_.exit36, label %.lr.ph.i33, !llvm.loop !21394

bb.h:                                             ; preds = %bb.f
  %i.dy = load ptr, ptr %3, align 8, !tbaa !789
  store ptr %i.dy, ptr %0, align 8, !tbaa !795
  br label %_ZN5boost4moveIPSt4pairINS_9container4test12copyable_intES4_ENS2_12vec_iteratorIS6_Lb0EEEEET0_T_SA_S9_.exit36

bb.i:                                             ; preds = %bb.e
  %i.dz = load ptr, ptr %1, align 8, !tbaa !789
  store ptr %i.dz, ptr %8, align 8, !tbaa !795
  %i.ea = load ptr, ptr %2, align 8, !tbaa !789
  store ptr %i.ea, ptr %9, align 8, !tbaa !795
  %i.eb = load ptr, ptr %3, align 8, !tbaa !789
  store ptr %i.eb, ptr %10, align 8, !tbaa !795
  call void @_ZN5boost7movelib10rotate_gcdINS_9container12vec_iteratorIPSt4pairINS2_4test12copyable_intES6_ELb0EEEEET_SA_SA_SA_(ptr dead_on_unwind writable sret(%"class.boost::container::vec_iterator.312") align 8 %0, ptr noundef nonnull align 8 dead_on_return %8, ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dead_on_return %10)
  br label %_ZN5boost4moveIPSt4pairINS_9container4test12copyable_intES4_ENS2_12vec_iteratorIS6_Lb0EEEEET0_T_SA_S9_.exit36

_ZN5boost4moveIPSt4pairINS_9container4test12copyable_intES4_ENS2_12vec_iteratorIS6_Lb0EEEEET0_T_SA_S9_.exit36: ; preds = %.lr.ph.i33, %middle.block216, %_ZN5boost4moveINS_9container12vec_iteratorIPSt4pairINS1_4test12copyable_intES5_ELb0EEES8_EET0_T_SA_S9_.exit, %bb.i, %bb.h, %bb.d, %_ZN5boost4moveIPSt4pairINS_9container4test12copyable_intES4_ENS2_12vec_iteratorIS6_Lb0EEEEET0_T_SA_S9_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib17op_buffered_mergeINS_9container12vec_iteratorIPSt4pairINS2_4test12copyable_intES6_ELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEENS0_7move_opENS0_10range_xbufIS8_mSH_EEEEvT_SK_SK_T0_T1_RT2_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !795    ; 3 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !795    ; 6 uses
  %.not51 = icmp eq ptr %i.a, %i.b
  br i1 %.not51, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test12copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_NS2_12vec_iteratorISE_Lb0EEENS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %2, align 8, !tbaa !795    ; 2 uses
  %.not52 = icmp eq ptr %i.b, %i.c
  br i1 %.not52, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test12copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_NS2_12vec_iteratorISE_Lb0EEENS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -8
  %i.e = load i32, ptr %i.b, align 4, !tbaa !792  ; 2 uses
  %i.f = load i32, ptr %i.d, align 4, !tbaa !792  ; 2 uses
  %i.g = icmp slt i32 %i.e, %i.f
  br i1 %i.g, label %bb.d, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test12copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_NS2_12vec_iteratorISE_Lb0EEENS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit

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
  %i.r = load i32, ptr %i.q, align 4, !tbaa !792, !noalias !21437
  %i.s = icmp slt i32 %i.e, %i.r                  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.neg.i = xor i64 %i.p, -1
  %i.u = add i64 %.010.i, %.neg.i
  %i.v = select i1 %i.s, ptr %i.o, ptr %i.t       ; 11 uses
  %.1.i = select i1 %i.s, i64 %i.p, i64 %i.u      ; 2 uses
  %.not.i = icmp eq i64 %.1.i, 0
  br i1 %.not.i, label %_ZN5boost7movelib11upper_boundINS_9container12vec_iteratorIPSt4pairINS2_4test12copyable_intES6_ELb0EEES7_NS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEET_SH_SH_RKT0_T1_.exit, label %.lr.ph.i, !llvm.loop !298

_ZN5boost7movelib11upper_boundINS_9container12vec_iteratorIPSt4pairINS2_4test12copyable_intES6_ELb0EEES7_NS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEET_SH_SH_RKT0_T1_.exit: ; preds = %.lr.ph.i
  %i.w = ptrtoaddr ptr %i.v to i64
  store ptr %i.v, ptr %0, align 8, !tbaa !795
  %i.x = load ptr, ptr %1, align 8, !tbaa !795    ; 3 uses
  %i.y = load ptr, ptr %3, align 8, !tbaa !817    ; 10 uses
  %i.z = ptrtoaddr ptr %i.y to i64                ; 2 uses
  %.not3.i.i.i = icmp eq ptr %i.x, %i.v
  br i1 %.not3.i.i.i, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test12copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_NS2_12vec_iteratorISE_Lb0EEENS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit.sink.split, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN5boost7movelib11upper_boundINS_9container12vec_iteratorIPSt4pairINS2_4test12copyable_intES6_ELb0EEES7_NS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEET_SH_SH_RKT0_T1_.exit
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
  %wide.vec = load <4 x i32>, ptr %next.gep, align 4, !tbaa !792, !alias.scope !21438
  %wide.vec120 = load <4 x i32>, ptr %next.gep116, align 4, !tbaa !792, !alias.scope !21438
  store <4 x i32> %wide.vec, ptr %next.gep117, align 4, !tbaa !792, !alias.scope !21439, !noalias !21438
  store <4 x i32> %wide.vec120, ptr %next.gep118, align 4, !tbaa !792, !alias.scope !21439, !noalias !21438
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !21414

middle.block:                                     ; preds = %vector.body
  %ind.escape = getelementptr i8, ptr %i.al, i64 -8
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test12copyable_intES5_EmNS0_7move_opEE11move_assignINS3_12vec_iteratorIS7_Lb0EEEEEvT_m.exit, label %.lr.ph.i.i.i.preheader210

.lr.ph.i.i.i.preheader210:                        ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.ph211 = phi ptr [ %i.v, %vector.memcheck ], [ %i.v, %.lr.ph.i.i.i.preheader ], [ %i.ak, %middle.block ]
  %.04.i.i.i.ph = phi ptr [ %i.y, %vector.memcheck ], [ %i.y, %.lr.ph.i.i.i.preheader ], [ %i.al, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader210, %.lr.ph.i.i.i
  %i.ap = phi ptr [ %i.au, %.lr.ph.i.i.i ], [ %.ph211, %.lr.ph.i.i.i.preheader210 ] ; 3 uses
  %.04.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i ], [ %.04.i.i.i.ph, %.lr.ph.i.i.i.preheader210 ] ; 4 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !792
  store i32 %i.aq, ptr %.04.i.i.i, align 4, !tbaa !792
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.as = getelementptr inbounds nuw i8, ptr %.04.i.i.i, i64 4
  %i.at = load i32, ptr %i.ar, align 4, !tbaa !792
  store i32 %i.at, ptr %i.as, align 4, !tbaa !792
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.04.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.au, %i.x
  br i1 %.not.i.i.i, label %_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test12copyable_intES5_EmNS0_7move_opEE11move_assignINS3_12vec_iteratorIS7_Lb0EEEEEvT_m.exit, label %.lr.ph.i.i.i, !llvm.loop !21415

_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test12copyable_intES5_EmNS0_7move_opEE11move_assignINS3_12vec_iteratorIS7_Lb0EEEEEvT_m.exit: ; preds = %.lr.ph.i.i.i, %middle.block
  %.04.i.i.i.lcssa = phi ptr [ %ind.escape, %middle.block ], [ %.04.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa111 = phi ptr [ %i.al, %middle.block ], [ %i.av, %.lr.ph.i.i.i ] ; 2 uses
  %.04.i.i.i.lcssa216 = ptrtoaddr ptr %.04.i.i.i.lcssa to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.lcssa111, ptr %i.aw, align 8, !tbaa !818
  %i.ax = load ptr, ptr %0, align 8, !tbaa !789   ; 2 uses
  %i.ay = load ptr, ptr %1, align 8, !tbaa !789
  %i.az = load ptr, ptr %2, align 8, !tbaa !789
  br label %.lr.ph.i7

.lr.ph.i7:                                        ; preds = %_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test12copyable_intES5_EmNS0_7move_opEE11move_assignINS3_12vec_iteratorIS7_Lb0EEEEEvT_m.exit, %bb.h
  %indvar = phi i64 [ 0, %_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test12copyable_intES5_EmNS0_7move_opEE11move_assignINS3_12vec_iteratorIS7_Lb0EEEEEvT_m.exit ], [ %indvar.next, %bb.h ] ; 2 uses
  %.sroa.039.0 = phi ptr [ %i.ay, %_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test12copyable_intES5_EmNS0_7move_opEE11move_assignINS3_12vec_iteratorIS7_Lb0EEEEEvT_m.exit ], [ %.sroa.039.1, %bb.h ] ; 5 uses
  %.sroa.040.0 = phi ptr [ %i.ax, %_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test12copyable_intES5_EmNS0_7move_opEE11move_assignINS3_12vec_iteratorIS7_Lb0EEEEEvT_m.exit ], [ %i.dm, %bb.h ] ; 10 uses
  %.015.i = phi ptr [ %i.y, %_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test12copyable_intES5_EmNS0_7move_opEE11move_assignINS3_12vec_iteratorIS7_Lb0EEEEEvT_m.exit ], [ %.1.i8, %bb.h ] ; 12 uses
  %i.ba = icmp eq ptr %.sroa.039.0, %i.az
  br i1 %i.ba, label %.lr.ph.i.i.i10.preheader, label %bb.e

.lr.ph.i.i.i10.preheader:                         ; preds = %.lr.ph.i7
  %.015.i133.le = ptrtoaddr ptr %.015.i to i64    ; 2 uses
  %i.bb = and i64 %i.ac, -8
  %i.bc = add i64 %i.bb, %i.z
  %i.bd = sub i64 %i.bc, %.015.i133.le            ; 2 uses
  %i.be = lshr i64 %i.bd, 3
  %i.bf = add nuw nsw i64 %i.be, 1                ; 2 uses
  %min.iters.check135 = icmp ult i64 %i.bd, 152
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
  %wide.vec148 = load <4 x i32>, ptr %next.gep146, align 4, !tbaa !792, !alias.scope !21440, !noalias !21441
  %wide.vec151 = load <4 x i32>, ptr %next.gep147, align 4, !tbaa !792, !alias.scope !21440, !noalias !21441
  store <4 x i32> %wide.vec148, ptr %next.gep144, align 4, !tbaa !792, !alias.scope !21442, !noalias !21441
  store <4 x i32> %wide.vec151, ptr %next.gep145, align 4, !tbaa !792, !alias.scope !21442, !noalias !21441
  %index.next156 = add nuw i64 %index143, 4       ; 2 uses
  %i.bv = icmp eq i64 %index.next156, %n.vec141
  br i1 %i.bv, label %middle.block157, label %vector.body142, !llvm.loop !21423

middle.block157:                                  ; preds = %vector.body142
  %cmp.n158 = icmp eq i64 %i.bf, %n.vec141
  br i1 %cmp.n158, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test12copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_NS2_12vec_iteratorISE_Lb0EEENS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit, label %.lr.ph.i.i.i10.preheader202

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
  %i.ca = load i32, ptr %.05.i.i.i.prol, align 4, !tbaa !792, !noalias !21441
  store i32 %i.ca, ptr %i.bz, align 4, !tbaa !792, !noalias !21441
  %i.cb = getelementptr inbounds nuw i8, ptr %.05.i.i.i.prol, i64 4
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %i.cd = load i32, ptr %i.cb, align 4, !tbaa !792, !noalias !21441
  store i32 %i.cd, ptr %i.cc, align 4, !tbaa !792, !noalias !21441
  %i.ce = getelementptr inbounds nuw i8, ptr %.05.i.i.i.prol, i64 8 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bz, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i10.prol.loopexit, label %.lr.ph.i.i.i10.prol, !llvm.loop !21424

.lr.ph.i.i.i10.prol.loopexit:                     ; preds = %.lr.ph.i.i.i10.prol, %.lr.ph.i.i.i10.preheader202
  %.unr = phi ptr [ %.ph203, %.lr.ph.i.i.i10.preheader202 ], [ %i.cf, %.lr.ph.i.i.i10.prol ]
  %.05.i.i.i.unr = phi ptr [ %.05.i.i.i.ph, %.lr.ph.i.i.i10.preheader202 ], [ %i.ce, %.lr.ph.i.i.i10.prol ]
  %i.cg = icmp ult i64 %i.bw, 24
  br i1 %i.cg, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test12copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_NS2_12vec_iteratorISE_Lb0EEENS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit, label %.lr.ph.i.i.i10

.lr.ph.i.i.i10:                                   ; preds = %.lr.ph.i.i.i10.prol.loopexit, %.lr.ph.i.i.i10
  %i.ch = phi ptr [ %i.df, %.lr.ph.i.i.i10 ], [ %.unr, %.lr.ph.i.i.i10.prol.loopexit ] ; 9 uses
  %.05.i.i.i = phi ptr [ %i.de, %.lr.ph.i.i.i10 ], [ %.05.i.i.i.unr, %.lr.ph.i.i.i10.prol.loopexit ] ; 9 uses
  %i.ci = load i32, ptr %.05.i.i.i, align 4, !tbaa !792, !noalias !21441
  store i32 %i.ci, ptr %i.ch, align 4, !tbaa !792, !noalias !21441
  %i.cj = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 4
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  %i.cl = load i32, ptr %i.cj, align 4, !tbaa !792, !noalias !21441
  store i32 %i.cl, ptr %i.ck, align 4, !tbaa !792, !noalias !21441
  %i.cm = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.co = load i32, ptr %i.cm, align 4, !tbaa !792, !noalias !21441
  store i32 %i.co, ptr %i.cn, align 4, !tbaa !792, !noalias !21441
  %i.cp = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 12
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ch, i64 12
  %i.cr = load i32, ptr %i.cp, align 4, !tbaa !792, !noalias !21441
  store i32 %i.cr, ptr %i.cq, align 4, !tbaa !792, !noalias !21441
  %i.cs = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cu = load i32, ptr %i.cs, align 4, !tbaa !792, !noalias !21441
  store i32 %i.cu, ptr %i.ct, align 4, !tbaa !792, !noalias !21441
  %i.cv = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 20
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ch, i64 20
  %i.cx = load i32, ptr %i.cv, align 4, !tbaa !792, !noalias !21441
  store i32 %i.cx, ptr %i.cw, align 4, !tbaa !792, !noalias !21441
  %i.cy = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.da = load i32, ptr %i.cy, align 4, !tbaa !792, !noalias !21441
  store i32 %i.da, ptr %i.cz, align 4, !tbaa !792, !noalias !21441
  %i.db = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 28
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ch, i64 28
  %i.dd = load i32, ptr %i.db, align 4, !tbaa !792, !noalias !21441
  store i32 %i.dd, ptr %i.dc, align 4, !tbaa !792, !noalias !21441
  %i.de = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.df = getelementptr inbounds nuw i8, ptr %i.ch, i64 32
  %.not.i.i.i11.3 = icmp eq ptr %i.cy, %.04.i.i.i.lcssa
  br i1 %.not.i.i.i11.3, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test12copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_NS2_12vec_iteratorISE_Lb0EEENS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit, label %.lr.ph.i.i.i10, !llvm.loop !21425

bb.e:                                             ; preds = %.lr.ph.i7
  %i.dg = load i32, ptr %.sroa.039.0, align 4, !tbaa !792 ; 2 uses
  %i.dh = load i32, ptr %.015.i, align 4, !tbaa !792 ; 2 uses
  %i.di = icmp slt i32 %i.dg, %i.dh
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.040.0, i64 4
  br i1 %i.di, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 %i.dg, ptr %.sroa.040.0, align 4, !tbaa !792
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.039.0, i64 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  store i32 %i.dh, ptr %.sroa.040.0, align 4, !tbaa !792
  %i.dl = getelementptr inbounds nuw i8, ptr %.015.i, i64 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.039.0.pn = phi ptr [ %.sroa.039.0, %bb.f ], [ %.015.i, %bb.g ]
  %.sroa.039.1 = phi ptr [ %i.dk, %bb.f ], [ %.sroa.039.0, %bb.g ]
  %.1.i8 = phi ptr [ %.015.i, %bb.f ], [ %i.dl, %bb.g ] ; 2 uses
  %.sink.in = getelementptr inbounds nuw i8, ptr %.sroa.039.0.pn, i64 4
  %.sink = load i32, ptr %.sink.in, align 4, !tbaa !792
  store i32 %.sink, ptr %i.dj, align 4, !tbaa !792
  %i.dm = getelementptr i8, ptr %.sroa.040.0, i64 8
  %.not.i9 = icmp eq ptr %.1.i8, %.lcssa111
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i9, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test12copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_NS2_12vec_iteratorISE_Lb0EEENS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit, label %.lr.ph.i7, !llvm.loop !299

.lr.ph.i13:                                       ; preds = %bb.d, %.lr.ph.i13
  %i.dn = phi ptr [ %i.du, %.lr.ph.i13 ], [ %i.b, %bb.d ] ; 2 uses
  %.010.i14 = phi i64 [ %.1.i16, %.lr.ph.i13 ], [ %i.n, %bb.d ] ; 2 uses
  %i.do = lshr i64 %.010.i14, 1                   ; 3 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.do ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !792, !noalias !21443
  %i.dr = icmp slt i32 %i.dq, %i.f                ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %.neg.i15 = xor i64 %i.do, -1
  %i.dt = add i64 %.010.i14, %.neg.i15
  %i.du = select i1 %i.dr, ptr %i.ds, ptr %i.dn   ; 5 uses
  %.1.i16 = select i1 %i.dr, i64 %i.dt, i64 %i.do ; 2 uses
  %.not.i17 = icmp eq i64 %.1.i16, 0
  br i1 %.not.i17, label %_ZN5boost7movelib11lower_boundINS_9container12vec_iteratorIPSt4pairINS2_4test12copyable_intES6_ELb0EEES7_NS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEET_SH_SH_RKT0_T1_.exit, label %.lr.ph.i13, !llvm.loop !297

_ZN5boost7movelib11lower_boundINS_9container12vec_iteratorIPSt4pairINS2_4test12copyable_intES6_ELb0EEES7_NS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEET_SH_SH_RKT0_T1_.exit: ; preds = %.lr.ph.i13
  %i.dv = ptrtoaddr ptr %i.du to i64
  store ptr %i.du, ptr %2, align 8, !tbaa !795
  %i.dw = load ptr, ptr %1, align 8, !tbaa !789   ; 9 uses
  %i.dx = load ptr, ptr %3, align 8, !tbaa !817   ; 10 uses
  %.not3.i.i.i18 = icmp eq ptr %i.du, %i.dw
  br i1 %.not3.i.i.i18, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test12copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_NS2_12vec_iteratorISE_Lb0EEENS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit.sink.split, label %.lr.ph.i.i.i19.preheader

.lr.ph.i.i.i19.preheader:                         ; preds = %_ZN5boost7movelib11lower_boundINS_9container12vec_iteratorIPSt4pairINS2_4test12copyable_intES6_ELb0EEES7_NS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEET_SH_SH_RKT0_T1_.exit
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
end_hunk_2
begin_hunk_3_@_ZN5boost7movelib15rotate_adaptiveINS_9container12vec_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEES8_EET_SA_SA_SA_NS0_9iter_sizeISA_E4typeESD_T0_SD_:bb.a
  %index178 = phi i64 [ 0, %vector.ph175 ], [ %index.next185, %vector.body177 ] ; 2 uses
  %i.dk = shl i64 %index178, 3                    ; 2 uses
  %next.gep179 = getelementptr i8, ptr %i.cy, i64 %i.dk
  %next.gep180 = getelementptr i8, ptr %6, i64 %i.dk ; 2 uses
  %wide.vec181 = load <4 x i32>, ptr %next.gep180, align 4, !tbaa !838, !alias.scope !25783, !noalias !25784
  store <4 x i32> %wide.vec181, ptr %next.gep179, align 4, !tbaa !838, !alias.scope !25785, !noalias !25784
  store <4 x i32> zeroinitializer, ptr %next.gep180, align 4, !tbaa !838, !alias.scope !25783, !noalias !25784
  %index.next185 = add nuw i64 %index178, 2       ; 2 uses
  %i.dl = icmp eq i64 %index.next185, %n.vec176
  br i1 %i.dl, label %middle.block186, label %vector.body177, !llvm.loop !25770

middle.block186:                                  ; preds = %vector.body177
  %cmp.n187 = icmp eq i64 %i.dc, %n.vec176
  br i1 %cmp.n187, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ENS2_12vec_iteratorIS6_Lb0EEEEET0_T_SA_S9_.exit36, label %.lr.ph.i33.preheader190

.lr.ph.i33.preheader190:                          ; preds = %vector.memcheck171, %.lr.ph.i33.preheader, %middle.block186
  %.ph = phi ptr [ %i.cy, %vector.memcheck171 ], [ %i.cy, %.lr.ph.i33.preheader ], [ %i.di, %middle.block186 ]
  %.05.i34.ph = phi ptr [ %6, %vector.memcheck171 ], [ %6, %.lr.ph.i33.preheader ], [ %i.dj, %middle.block186 ]
  br label %.lr.ph.i33

.lr.ph.i33:                                       ; preds = %.lr.ph.i33.preheader190, %.lr.ph.i33
  %i.dm = phi ptr [ %i.ds, %.lr.ph.i33 ], [ %.ph, %.lr.ph.i33.preheader190 ] ; 3 uses
  %.05.i34 = phi ptr [ %i.dr, %.lr.ph.i33 ], [ %.05.i34.ph, %.lr.ph.i33.preheader190 ] ; 4 uses
  %i.dn = load i32, ptr %.05.i34, align 4, !tbaa !838, !noalias !25784
  store i32 %i.dn, ptr %i.dm, align 4, !tbaa !838, !noalias !25784
  store i32 0, ptr %.05.i34, align 4, !tbaa !838, !noalias !25784
  %i.do = getelementptr inbounds nuw i8, ptr %.05.i34, i64 4 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 4
  %i.dq = load i32, ptr %i.do, align 4, !tbaa !838, !noalias !25784
  store i32 %i.dq, ptr %i.dp, align 4, !tbaa !838, !noalias !25784
  store i32 0, ptr %i.do, align 4, !tbaa !838, !noalias !25784
  %i.dr = getelementptr inbounds nuw i8, ptr %.05.i34, i64 8 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %.not.i35 = icmp eq ptr %i.dr, %.0.lcssa.i26
  br i1 %.not.i35, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ENS2_12vec_iteratorIS6_Lb0EEEEET0_T_SA_S9_.exit36, label %.lr.ph.i33, !llvm.loop !25771

bb.h:                                             ; preds = %bb.f
  %i.dt = load ptr, ptr %3, align 8, !tbaa !835
  store ptr %i.dt, ptr %0, align 8, !tbaa !841
  br label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ENS2_12vec_iteratorIS6_Lb0EEEEET0_T_SA_S9_.exit36

bb.i:                                             ; preds = %bb.e
  %i.du = load ptr, ptr %1, align 8, !tbaa !835
  store ptr %i.du, ptr %8, align 8, !tbaa !841
  %i.dv = load ptr, ptr %2, align 8, !tbaa !835
  store ptr %i.dv, ptr %9, align 8, !tbaa !841
  %i.dw = load ptr, ptr %3, align 8, !tbaa !835
  store ptr %i.dw, ptr %10, align 8, !tbaa !841
  call void @_ZN5boost7movelib10rotate_gcdINS_9container12vec_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEEEET_SA_SA_SA_(ptr dead_on_unwind writable sret(%"class.boost::container::vec_iterator.386") align 8 %0, ptr noundef nonnull align 8 dead_on_return %8, ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dead_on_return %10)
  br label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ENS2_12vec_iteratorIS6_Lb0EEEEET0_T_SA_S9_.exit36

_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ENS2_12vec_iteratorIS6_Lb0EEEEET0_T_SA_S9_.exit36: ; preds = %.lr.ph.i33, %middle.block186, %_ZN5boost4moveINS_9container12vec_iteratorIPSt4pairINS1_4test24movable_and_copyable_intES5_ELb0EEES8_EET0_T_SA_S9_.exit, %bb.i, %bb.h, %bb.d, %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ENS2_12vec_iteratorIS6_Lb0EEEEET0_T_SA_S9_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib17op_buffered_mergeINS_9container12vec_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEENS0_7move_opENS0_10range_xbufIS8_mSH_EEEEvT_SK_SK_T0_T1_RT2_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !841    ; 3 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !841    ; 6 uses
  %.not51 = icmp eq ptr %i.a, %i.b
  br i1 %.not51, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_NS2_12vec_iteratorISE_Lb0EEENS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %2, align 8, !tbaa !841    ; 2 uses
  %.not52 = icmp eq ptr %i.b, %i.c
  br i1 %.not52, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_NS2_12vec_iteratorISE_Lb0EEENS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -8
  %i.e = load i32, ptr %i.b, align 4, !tbaa !838  ; 2 uses
  %i.f = load i32, ptr %i.d, align 4, !tbaa !838  ; 2 uses
  %i.g = icmp slt i32 %i.e, %i.f
  br i1 %i.g, label %bb.d, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_NS2_12vec_iteratorISE_Lb0EEENS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit

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
  %i.r = load i32, ptr %i.q, align 4, !tbaa !838, !noalias !25814
  %i.s = icmp slt i32 %i.e, %i.r                  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.neg.i = xor i64 %i.p, -1
  %i.u = add i64 %.010.i, %.neg.i
  %i.v = select i1 %i.s, ptr %i.o, ptr %i.t       ; 10 uses
  %.1.i = select i1 %i.s, i64 %i.p, i64 %i.u      ; 2 uses
  %.not.i = icmp eq i64 %.1.i, 0
  br i1 %.not.i, label %_ZN5boost7movelib11upper_boundINS_9container12vec_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEES7_NS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEET_SH_SH_RKT0_T1_.exit, label %.lr.ph.i, !llvm.loop !391

_ZN5boost7movelib11upper_boundINS_9container12vec_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEES7_NS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEET_SH_SH_RKT0_T1_.exit: ; preds = %.lr.ph.i
  %i.w = ptrtoaddr ptr %i.v to i64
  store ptr %i.v, ptr %0, align 8, !tbaa !841
  %i.x = load ptr, ptr %1, align 8, !tbaa !841    ; 3 uses
  %i.y = load ptr, ptr %3, align 8, !tbaa !863    ; 9 uses
  %i.z = ptrtoaddr ptr %i.y to i64                ; 2 uses
  %.not3.i.i.i = icmp eq ptr %i.x, %i.v
  br i1 %.not3.i.i.i, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_NS2_12vec_iteratorISE_Lb0EEENS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit.sink.split, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN5boost7movelib11upper_boundINS_9container12vec_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEES7_NS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEET_SH_SH_RKT0_T1_.exit
  %i.aa = ptrtoaddr ptr %i.x to i64
  %i.ab = add i64 %i.aa, -8
  %i.ac = sub i64 %i.ab, %i.w                     ; 5 uses
  %i.ad = lshr i64 %i.ac, 3
  %i.ae = add nuw nsw i64 %i.ad, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ac, 72
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader197, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.af = and i64 %i.ac, -8
  %i.ag = add i64 %i.af, 8                        ; 2 uses
  %i.ah = getelementptr i8, ptr %i.y, i64 %i.ag
  %i.ai = getelementptr i8, ptr %i.v, i64 %i.ag
  %bound0 = icmp ult ptr %i.y, %i.ai
  %bound1 = icmp ult ptr %i.v, %i.ah
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader197, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ae, 4611686018427387902     ; 3 uses
  %i.aj = shl i64 %n.vec, 3                       ; 2 uses
  %i.ak = getelementptr i8, ptr %i.v, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.y, i64 %i.aj   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.am = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.v, i64 %i.am ; 2 uses
  %next.gep121 = getelementptr i8, ptr %i.y, i64 %i.am
  %wide.vec = load <4 x i32>, ptr %next.gep, align 4, !tbaa !838, !alias.scope !25815
  store <4 x i32> %wide.vec, ptr %next.gep121, align 4, !tbaa !838, !alias.scope !25816, !noalias !25815
  store <4 x i32> zeroinitializer, ptr %next.gep, align 4, !tbaa !838, !alias.scope !25815
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !25791

middle.block:                                     ; preds = %vector.body
  %ind.escape = getelementptr i8, ptr %i.al, i64 -8
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES5_EmNS0_7move_opEE11move_assignINS3_12vec_iteratorIS7_Lb0EEEEEvT_m.exit, label %.lr.ph.i.i.i.preheader197

.lr.ph.i.i.i.preheader197:                        ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.ph198 = phi ptr [ %i.v, %vector.memcheck ], [ %i.v, %.lr.ph.i.i.i.preheader ], [ %i.ak, %middle.block ]
  %.04.i.i.i.ph = phi ptr [ %i.y, %vector.memcheck ], [ %i.y, %.lr.ph.i.i.i.preheader ], [ %i.al, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader197, %.lr.ph.i.i.i
  %i.ao = phi ptr [ %i.at, %.lr.ph.i.i.i ], [ %.ph198, %.lr.ph.i.i.i.preheader197 ] ; 4 uses
  %.04.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i ], [ %.04.i.i.i.ph, %.lr.ph.i.i.i.preheader197 ] ; 4 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !838
  store i32 %i.ap, ptr %.04.i.i.i, align 4, !tbaa !838
  store i32 0, ptr %i.ao, align 4, !tbaa !838
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 4 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.04.i.i.i, i64 4
  %i.as = load i32, ptr %i.aq, align 4, !tbaa !838
  store i32 %i.as, ptr %i.ar, align 4, !tbaa !838
  store i32 0, ptr %i.aq, align 4, !tbaa !838
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.04.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.at, %i.x
  br i1 %.not.i.i.i, label %_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES5_EmNS0_7move_opEE11move_assignINS3_12vec_iteratorIS7_Lb0EEEEEvT_m.exit, label %.lr.ph.i.i.i, !llvm.loop !25792

_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES5_EmNS0_7move_opEE11move_assignINS3_12vec_iteratorIS7_Lb0EEEEEvT_m.exit: ; preds = %.lr.ph.i.i.i, %middle.block
  %.04.i.i.i.lcssa = phi ptr [ %ind.escape, %middle.block ], [ %.04.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa116 = phi ptr [ %i.al, %middle.block ], [ %i.au, %.lr.ph.i.i.i ] ; 2 uses
  %.04.i.i.i.lcssa203 = ptrtoaddr ptr %.04.i.i.i.lcssa to i64
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.lcssa116, ptr %i.av, align 8, !tbaa !864
  %i.aw = load ptr, ptr %0, align 8, !tbaa !835   ; 2 uses
  %i.ax = load ptr, ptr %1, align 8, !tbaa !835
  %i.ay = load ptr, ptr %2, align 8, !tbaa !835
  br label %.lr.ph.i7

.lr.ph.i7:                                        ; preds = %_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES5_EmNS0_7move_opEE11move_assignINS3_12vec_iteratorIS7_Lb0EEEEEvT_m.exit, %bb.h
  %indvar = phi i64 [ 0, %_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES5_EmNS0_7move_opEE11move_assignINS3_12vec_iteratorIS7_Lb0EEEEEvT_m.exit ], [ %indvar.next, %bb.h ] ; 2 uses
  %.sroa.039.0 = phi ptr [ %i.ax, %_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES5_EmNS0_7move_opEE11move_assignINS3_12vec_iteratorIS7_Lb0EEEEEvT_m.exit ], [ %.sroa.039.1, %bb.h ] ; 6 uses
  %.sroa.040.0 = phi ptr [ %i.aw, %_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES5_EmNS0_7move_opEE11move_assignINS3_12vec_iteratorIS7_Lb0EEEEEvT_m.exit ], [ %i.do, %bb.h ] ; 9 uses
  %.015.i = phi ptr [ %i.y, %_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES5_EmNS0_7move_opEE11move_assignINS3_12vec_iteratorIS7_Lb0EEEEEvT_m.exit ], [ %.1.i8, %bb.h ] ; 12 uses
  %i.az = icmp eq ptr %.sroa.039.0, %i.ay
  br i1 %i.az, label %.lr.ph.i.i.i10.preheader, label %bb.e

.lr.ph.i.i.i10.preheader:                         ; preds = %.lr.ph.i7
  %.015.i132.le = ptrtoaddr ptr %.015.i to i64    ; 2 uses
  %i.ba = and i64 %i.ac, -8
  %i.bb = add i64 %i.ba, %i.z
  %i.bc = sub i64 %i.bb, %.015.i132.le            ; 2 uses
  %i.bd = lshr i64 %i.bc, 3
  %i.be = add nuw nsw i64 %i.bd, 1                ; 2 uses
  %min.iters.check134 = icmp ult i64 %i.bc, 104
  br i1 %min.iters.check134, label %.lr.ph.i.i.i10.preheader189, label %vector.memcheck135

vector.memcheck135:                               ; preds = %.lr.ph.i.i.i10.preheader
  %i.bf = shl i64 %indvar, 3
  %i.bg = and i64 %i.ac, -8
  %i.bh = add i64 %i.bg, %i.z
  %i.bi = sub i64 %i.bh, %.015.i132.le
  %i.bj = and i64 %i.bi, -8                       ; 2 uses
  %i.bk = getelementptr i8, ptr %i.aw, i64 %i.bf
  %i.bl = getelementptr i8, ptr %i.bk, i64 8
  %i.bm = getelementptr i8, ptr %i.bl, i64 %i.bj
  %i.bn = getelementptr i8, ptr %.015.i, i64 %i.bj
  %i.bo = getelementptr i8, ptr %i.bn, i64 8
  %bound0136 = icmp ult ptr %.sroa.040.0, %i.bo
  %bound1137 = icmp ult ptr %.015.i, %i.bm
  %found.conflict138 = and i1 %bound0136, %bound1137
  br i1 %found.conflict138, label %.lr.ph.i.i.i10.preheader189, label %vector.ph139

vector.ph139:                                     ; preds = %vector.memcheck135
  %n.vec140 = and i64 %i.be, 4611686018427387902  ; 3 uses
  %i.bp = shl i64 %n.vec140, 3                    ; 2 uses
  %i.bq = getelementptr i8, ptr %.sroa.040.0, i64 %i.bp
  %i.br = getelementptr i8, ptr %.015.i, i64 %i.bp
  br label %vector.body141

vector.body141:                                   ; preds = %vector.body141, %vector.ph139
  %index142 = phi i64 [ 0, %vector.ph139 ], [ %index.next149, %vector.body141 ] ; 2 uses
  %i.bs = shl i64 %index142, 3                    ; 2 uses
  %next.gep143 = getelementptr i8, ptr %.sroa.040.0, i64 %i.bs
  %next.gep144 = getelementptr i8, ptr %.015.i, i64 %i.bs ; 2 uses
  %wide.vec145 = load <4 x i32>, ptr %next.gep144, align 4, !tbaa !838, !alias.scope !25817, !noalias !25818
  store <4 x i32> %wide.vec145, ptr %next.gep143, align 4, !tbaa !838, !alias.scope !25819, !noalias !25818
  store <4 x i32> zeroinitializer, ptr %next.gep144, align 4, !tbaa !838, !alias.scope !25817, !noalias !25818
  %index.next149 = add nuw i64 %index142, 2       ; 2 uses
  %i.bt = icmp eq i64 %index.next149, %n.vec140
  br i1 %i.bt, label %middle.block150, label %vector.body141, !llvm.loop !25800

middle.block150:                                  ; preds = %vector.body141
  %cmp.n151 = icmp eq i64 %i.be, %n.vec140
  br i1 %cmp.n151, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_NS2_12vec_iteratorISE_Lb0EEENS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit, label %.lr.ph.i.i.i10.preheader189

.lr.ph.i.i.i10.preheader189:                      ; preds = %vector.memcheck135, %.lr.ph.i.i.i10.preheader, %middle.block150
  %.ph190 = phi ptr [ %.sroa.040.0, %vector.memcheck135 ], [ %.sroa.040.0, %.lr.ph.i.i.i10.preheader ], [ %i.bq, %middle.block150 ] ; 2 uses
  %.05.i.i.i.ph = phi ptr [ %.015.i, %vector.memcheck135 ], [ %.015.i, %.lr.ph.i.i.i10.preheader ], [ %i.br, %middle.block150 ] ; 3 uses
  %.05.i.i.i.ph204 = ptrtoaddr ptr %.05.i.i.i.ph to i64
  %i.bu = sub i64 %.04.i.i.i.lcssa203, %.05.i.i.i.ph204 ; 2 uses
  %i.bv = lshr i64 %i.bu, 3
  %i.bw = add nuw nsw i64 %i.bv, 1
  %xtraiter = and i64 %i.bw, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i10.prol.loopexit, label %.lr.ph.i.i.i10.prol

.lr.ph.i.i.i10.prol:                              ; preds = %.lr.ph.i.i.i10.preheader189, %.lr.ph.i.i.i10.prol
  %i.bx = phi ptr [ %i.cd, %.lr.ph.i.i.i10.prol ], [ %.ph190, %.lr.ph.i.i.i10.preheader189 ] ; 3 uses
  %.05.i.i.i.prol = phi ptr [ %i.cc, %.lr.ph.i.i.i10.prol ], [ %.05.i.i.i.ph, %.lr.ph.i.i.i10.preheader189 ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i10.prol ], [ 0, %.lr.ph.i.i.i10.preheader189 ]
  %i.by = load i32, ptr %.05.i.i.i.prol, align 4, !tbaa !838, !noalias !25818
  store i32 %i.by, ptr %i.bx, align 4, !tbaa !838, !noalias !25818
  store i32 0, ptr %.05.i.i.i.prol, align 4, !tbaa !838, !noalias !25818
  %i.bz = getelementptr inbounds nuw i8, ptr %.05.i.i.i.prol, i64 4 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  %i.cb = load i32, ptr %i.bz, align 4, !tbaa !838, !noalias !25818
  store i32 %i.cb, ptr %i.ca, align 4, !tbaa !838, !noalias !25818
  store i32 0, ptr %i.bz, align 4, !tbaa !838, !noalias !25818
  %i.cc = getelementptr inbounds nuw i8, ptr %.05.i.i.i.prol, i64 8 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i10.prol.loopexit, label %.lr.ph.i.i.i10.prol, !llvm.loop !25801

.lr.ph.i.i.i10.prol.loopexit:                     ; preds = %.lr.ph.i.i.i10.prol, %.lr.ph.i.i.i10.preheader189
  %.unr = phi ptr [ %.ph190, %.lr.ph.i.i.i10.preheader189 ], [ %i.cd, %.lr.ph.i.i.i10.prol ]
  %.05.i.i.i.unr = phi ptr [ %.05.i.i.i.ph, %.lr.ph.i.i.i10.preheader189 ], [ %i.cc, %.lr.ph.i.i.i10.prol ]
  %i.ce = icmp ult i64 %i.bu, 24
  br i1 %i.ce, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_NS2_12vec_iteratorISE_Lb0EEENS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit, label %.lr.ph.i.i.i10

.lr.ph.i.i.i10:                                   ; preds = %.lr.ph.i.i.i10.prol.loopexit, %.lr.ph.i.i.i10
  %i.cf = phi ptr [ %i.dd, %.lr.ph.i.i.i10 ], [ %.unr, %.lr.ph.i.i.i10.prol.loopexit ] ; 9 uses
  %.05.i.i.i = phi ptr [ %i.dc, %.lr.ph.i.i.i10 ], [ %.05.i.i.i.unr, %.lr.ph.i.i.i10.prol.loopexit ] ; 10 uses
  %i.cg = load i32, ptr %.05.i.i.i, align 4, !tbaa !838, !noalias !25818
  store i32 %i.cg, ptr %i.cf, align 4, !tbaa !838, !noalias !25818
  store i32 0, ptr %.05.i.i.i, align 4, !tbaa !838, !noalias !25818
  %i.ch = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 4 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  %i.cj = load i32, ptr %i.ch, align 4, !tbaa !838, !noalias !25818
  store i32 %i.cj, ptr %i.ci, align 4, !tbaa !838, !noalias !25818
  store i32 0, ptr %i.ch, align 4, !tbaa !838, !noalias !25818
  %i.ck = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.cm = load i32, ptr %i.ck, align 4, !tbaa !838, !noalias !25818
  store i32 %i.cm, ptr %i.cl, align 4, !tbaa !838, !noalias !25818
  store i32 0, ptr %i.ck, align 4, !tbaa !838, !noalias !25818
  %i.cn = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 12 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cf, i64 12
  %i.cp = load i32, ptr %i.cn, align 4, !tbaa !838, !noalias !25818
  store i32 %i.cp, ptr %i.co, align 4, !tbaa !838, !noalias !25818
  store i32 0, ptr %i.cn, align 4, !tbaa !838, !noalias !25818
  %i.cq = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.cs = load i32, ptr %i.cq, align 4, !tbaa !838, !noalias !25818
  store i32 %i.cs, ptr %i.cr, align 4, !tbaa !838, !noalias !25818
  store i32 0, ptr %i.cq, align 4, !tbaa !838, !noalias !25818
  %i.ct = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 20 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cf, i64 20
  %i.cv = load i32, ptr %i.ct, align 4, !tbaa !838, !noalias !25818
  store i32 %i.cv, ptr %i.cu, align 4, !tbaa !838, !noalias !25818
  store i32 0, ptr %i.ct, align 4, !tbaa !838, !noalias !25818
  %i.cw = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %i.cy = load i32, ptr %i.cw, align 4, !tbaa !838, !noalias !25818
  store i32 %i.cy, ptr %i.cx, align 4, !tbaa !838, !noalias !25818
  store i32 0, ptr %i.cw, align 4, !tbaa !838, !noalias !25818
  %i.cz = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 28 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cf, i64 28
  %i.db = load i32, ptr %i.cz, align 4, !tbaa !838, !noalias !25818
  store i32 %i.db, ptr %i.da, align 4, !tbaa !838, !noalias !25818
  store i32 0, ptr %i.cz, align 4, !tbaa !838, !noalias !25818
  %i.dc = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %.not.i.i.i11.3 = icmp eq ptr %i.cw, %.04.i.i.i.lcssa
  br i1 %.not.i.i.i11.3, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_NS2_12vec_iteratorISE_Lb0EEENS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit, label %.lr.ph.i.i.i10, !llvm.loop !25802

bb.e:                                             ; preds = %.lr.ph.i7
  %i.de = load i32, ptr %.sroa.039.0, align 4, !tbaa !838 ; 2 uses
  %i.df = load i32, ptr %.015.i, align 4, !tbaa !838 ; 2 uses
  %i.dg = icmp slt i32 %i.de, %i.df
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.040.0, i64 4 ; 2 uses
  br i1 %i.dg, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 %i.de, ptr %.sroa.040.0, align 4, !tbaa !838
  store i32 0, ptr %.sroa.039.0, align 4, !tbaa !838
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.039.0, i64 4 ; 2 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !838
  store i32 %i.dj, ptr %i.dh, align 4, !tbaa !838
  store i32 0, ptr %i.di, align 4, !tbaa !838
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.039.0, i64 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  store i32 %i.df, ptr %.sroa.040.0, align 4, !tbaa !838
  store i32 0, ptr %.015.i, align 4, !tbaa !838
  %i.dl = getelementptr inbounds nuw i8, ptr %.015.i, i64 4 ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !838
  store i32 %i.dm, ptr %i.dh, align 4, !tbaa !838
  store i32 0, ptr %i.dl, align 4, !tbaa !838
  %i.dn = getelementptr inbounds nuw i8, ptr %.015.i, i64 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.039.1 = phi ptr [ %i.dk, %bb.f ], [ %.sroa.039.0, %bb.g ]
  %.1.i8 = phi ptr [ %.015.i, %bb.f ], [ %i.dn, %bb.g ] ; 2 uses
  %i.do = getelementptr i8, ptr %.sroa.040.0, i64 8
  %.not.i9 = icmp eq ptr %.1.i8, %.lcssa116
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i9, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_NS2_12vec_iteratorISE_Lb0EEENS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit, label %.lr.ph.i7, !llvm.loop !393

.lr.ph.i13:                                       ; preds = %bb.d, %.lr.ph.i13
  %i.dp = phi ptr [ %i.dw, %.lr.ph.i13 ], [ %i.b, %bb.d ] ; 2 uses
  %.010.i14 = phi i64 [ %.1.i16, %.lr.ph.i13 ], [ %i.n, %bb.d ] ; 2 uses
  %i.dq = lshr i64 %.010.i14, 1                   ; 3 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.dq ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !838, !noalias !25820
  %i.dt = icmp slt i32 %i.ds, %i.f                ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %.neg.i15 = xor i64 %i.dq, -1
  %i.dv = add i64 %.010.i14, %.neg.i15
  %i.dw = select i1 %i.dt, ptr %i.du, ptr %i.dp   ; 5 uses
  %.1.i16 = select i1 %i.dt, i64 %i.dv, i64 %i.dq ; 2 uses
  %.not.i17 = icmp eq i64 %.1.i16, 0
  br i1 %.not.i17, label %_ZN5boost7movelib11lower_boundINS_9container12vec_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEES7_NS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEET_SH_SH_RKT0_T1_.exit, label %.lr.ph.i13, !llvm.loop !390

_ZN5boost7movelib11lower_boundINS_9container12vec_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEES7_NS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEET_SH_SH_RKT0_T1_.exit: ; preds = %.lr.ph.i13
  %i.dx = ptrtoaddr ptr %i.dw to i64
  store ptr %i.dw, ptr %2, align 8, !tbaa !841
  %i.dy = load ptr, ptr %1, align 8, !tbaa !835   ; 8 uses
  %i.dz = load ptr, ptr %3, align 8, !tbaa !863   ; 9 uses
  %.not3.i.i.i18 = icmp eq ptr %i.dw, %i.dy
  br i1 %.not3.i.i.i18, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_NS2_12vec_iteratorISE_Lb0EEENS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit.sink.split, label %.lr.ph.i.i.i19.preheader

.lr.ph.i.i.i19.preheader:                         ; preds = %_ZN5boost7movelib11lower_boundINS_9container12vec_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEES7_NS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEET_SH_SH_RKT0_T1_.exit
  %i.ea = ptrtoaddr ptr %i.dy to i64
  %i.eb = add i64 %i.dx, -8
  %i.ec = sub i64 %i.eb, %i.ea                    ; 3 uses
  %i.ed = lshr i64 %i.ec, 3
  %i.ee = add nuw nsw i64 %i.ed, 1                ; 2 uses
  %min.iters.check162 = icmp ult i64 %i.ec, 72
  br i1 %min.iters.check162, label %.lr.ph.i.i.i19.preheader185, label %vector.memcheck163

vector.memcheck163:                               ; preds = %.lr.ph.i.i.i19.preheader
  %i.ef = and i64 %i.ec, -8
  %i.eg = add i64 %i.ef, 8                        ; 2 uses
  %i.eh = getelementptr i8, ptr %i.dz, i64 %i.eg
  %i.ei = getelementptr i8, ptr %i.dy, i64 %i.eg
  %bound0164 = icmp ult ptr %i.dz, %i.ei
  %bound1165 = icmp ult ptr %i.dy, %i.eh
  %found.conflict166 = and i1 %bound0164, %bound1165
  br i1 %found.conflict166, label %.lr.ph.i.i.i19.preheader185, label %vector.ph167

vector.ph167:                                     ; preds = %vector.memcheck163
end_hunk_3
begin_hunk_4_@_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveINS_9container12vec_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEES8_NS2_3dtl23flat_tree_value_compareINS5_16less_transparentES7_NSA_9select1stIS6_EEEEEEvT_SG_SG_NS0_9iter_sizeISG_E4typeESJ_T0_SJ_T1_:bb.a
  %.010.i45 = phi i64 [ %i.av, %.lr.ph.i44 ], [ %.1.i47, %bb.m ] ; 2 uses
  %i.ay = lshr i64 %.010.i45, 1                   ; 3 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.ay ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !838, !noalias !30016
  %i.bb = icmp slt i32 %i.aw, %i.ba               ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %.neg.i46 = xor i64 %i.ay, -1
  %i.bd = add i64 %.010.i45, %.neg.i46
  %i.be = select i1 %i.bb, ptr %i.ax, ptr %i.bc   ; 3 uses
  %.1.i47 = select i1 %i.bb, i64 %i.ay, i64 %i.bd ; 2 uses
  %.not.i48 = icmp eq i64 %.1.i47, 0
  br i1 %.not.i48, label %_ZN5boost7movelib11upper_boundINS_9container12vec_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEES7_NS2_3dtl23flat_tree_value_compareINS5_16less_transparentES7_NSA_9select1stIS6_EEEEEET_SG_SG_RKT0_T1_.exit.loopexit, label %bb.m, !llvm.loop !466

_ZN5boost7movelib11upper_boundINS_9container12vec_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEES7_NS2_3dtl23flat_tree_value_compareINS5_16less_transparentES7_NSA_9select1stIS6_EEEEEET_SG_SG_RKT0_T1_.exit.loopexit: ; preds = %bb.m
  %.pre73 = ptrtoint ptr %i.be to i64
  br label %_ZN5boost7movelib11upper_boundINS_9container12vec_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEES7_NS2_3dtl23flat_tree_value_compareINS5_16less_transparentES7_NSA_9select1stIS6_EEEEEET_SG_SG_RKT0_T1_.exit

_ZN5boost7movelib11upper_boundINS_9container12vec_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEES7_NS2_3dtl23flat_tree_value_compareINS5_16less_transparentES7_NSA_9select1stIS6_EEEEEET_SG_SG_RKT0_T1_.exit: ; preds = %bb.l, %_ZN5boost7movelib11upper_boundINS_9container12vec_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEES7_NS2_3dtl23flat_tree_value_compareINS5_16less_transparentES7_NSA_9select1stIS6_EEEEEET_SG_SG_RKT0_T1_.exit.loopexit
  %.pre-phi74 = phi i64 [ %.pre73, %_ZN5boost7movelib11upper_boundINS_9container12vec_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEES7_NS2_3dtl23flat_tree_value_compareINS5_16less_transparentES7_NSA_9select1stIS6_EEEEEET_SG_SG_RKT0_T1_.exit.loopexit ], [ %.pre69, %bb.l ]
  %i.bf = phi ptr [ %i.be, %_ZN5boost7movelib11upper_boundINS_9container12vec_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEES7_NS2_3dtl23flat_tree_value_compareINS5_16less_transparentES7_NSA_9select1stIS6_EEEEEET_SG_SG_RKT0_T1_.exit.loopexit ], [ %i.k, %bb.l ]
  %i.bg = sub i64 %.pre-phi74, %.pre69
  %i.bh = ashr exact i64 %i.bg, 3
  br label %bb.n

bb.n:                                             ; preds = %_ZN5boost7movelib11upper_boundINS_9container12vec_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEES7_NS2_3dtl23flat_tree_value_compareINS5_16less_transparentES7_NSA_9select1stIS6_EEEEEET_SG_SG_RKT0_T1_.exit, %_ZN5boost7movelib11lower_boundINS_9container12vec_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEES7_NS2_3dtl23flat_tree_value_compareINS5_16less_transparentES7_NSA_9select1stIS6_EEEEEET_SG_SG_RKT0_T1_.exit
  %.sroa.054.0 = phi ptr [ %i.ao, %_ZN5boost7movelib11lower_boundINS_9container12vec_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEES7_NS2_3dtl23flat_tree_value_compareINS5_16less_transparentES7_NSA_9select1stIS6_EEEEEET_SG_SG_RKT0_T1_.exit ], [ %i.as, %_ZN5boost7movelib11upper_boundINS_9container12vec_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEES7_NS2_3dtl23flat_tree_value_compareINS5_16less_transparentES7_NSA_9select1stIS6_EEEEEET_SG_SG_RKT0_T1_.exit ] ; 2 uses
  %.sroa.059.0 = phi ptr [ %i.aa, %_ZN5boost7movelib11lower_boundINS_9container12vec_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEES7_NS2_3dtl23flat_tree_value_compareINS5_16less_transparentES7_NSA_9select1stIS6_EEEEEET_SG_SG_RKT0_T1_.exit ], [ %i.bf, %_ZN5boost7movelib11upper_boundINS_9container12vec_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEES7_NS2_3dtl23flat_tree_value_compareINS5_16less_transparentES7_NSA_9select1stIS6_EEEEEET_SG_SG_RKT0_T1_.exit ] ; 2 uses
  %.036 = phi i64 [ %i.z, %_ZN5boost7movelib11lower_boundINS_9container12vec_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEES7_NS2_3dtl23flat_tree_value_compareINS5_16less_transparentES7_NSA_9select1stIS6_EEEEEET_SG_SG_RKT0_T1_.exit ], [ %i.bh, %_ZN5boost7movelib11upper_boundINS_9container12vec_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEES7_NS2_3dtl23flat_tree_value_compareINS5_16less_transparentES7_NSA_9select1stIS6_EEEEEET_SG_SG_RKT0_T1_.exit ] ; 2 uses
  %.0 = phi i64 [ %i.aq, %_ZN5boost7movelib11lower_boundINS_9container12vec_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEES7_NS2_3dtl23flat_tree_value_compareINS5_16less_transparentES7_NSA_9select1stIS6_EEEEEET_SG_SG_RKT0_T1_.exit ], [ %i.ar, %_ZN5boost7movelib11upper_boundINS_9container12vec_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEES7_NS2_3dtl23flat_tree_value_compareINS5_16less_transparentES7_NSA_9select1stIS6_EEEEEET_SG_SG_RKT0_T1_.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  store ptr %.sroa.059.0, ptr %15, align 8, !tbaa !841
  store ptr %i.x, ptr %16, align 8, !tbaa !841
  store ptr %.sroa.054.0, ptr %17, align 8, !tbaa !841
  %i.bi = sub i64 %3, %.036                       ; 2 uses
  call void @_ZN5boost7movelib15rotate_adaptiveINS_9container12vec_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEES8_EET_SA_SA_SA_NS0_9iter_sizeISA_E4typeESD_T0_SD_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.386") align 8 %14, ptr noundef nonnull align 8 dead_on_return %15, ptr noundef nonnull align 8 dead_on_return %16, ptr noundef nonnull align 8 dead_on_return %17, i64 noundef %i.bi, i64 noundef %.0, ptr noundef %5, i64 noundef %6)
  %i.bj = load ptr, ptr %0, align 8, !tbaa !835
  store ptr %i.bj, ptr %18, align 8, !tbaa !841
  store ptr %.sroa.059.0, ptr %19, align 8, !tbaa !841
  %i.bk = load ptr, ptr %14, align 8, !tbaa !835
  store ptr %i.bk, ptr %20, align 8, !tbaa !841
  call void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveINS_9container12vec_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEES8_NS2_3dtl23flat_tree_value_compareINS5_16less_transparentES7_NSA_9select1stIS6_EEEEEEvT_SG_SG_NS0_9iter_sizeISG_E4typeESJ_T0_SJ_T1_(ptr noundef nonnull align 8 dead_on_return %18, ptr noundef nonnull align 8 dead_on_return %19, ptr noundef nonnull align 8 dead_on_return %20, i64 noundef %.036, i64 noundef %.0, ptr noundef %5, i64 noundef %6)
  %i.bl = load ptr, ptr %14, align 8, !tbaa !835
  store ptr %i.bl, ptr %21, align 8, !tbaa !841
  store ptr %.sroa.054.0, ptr %22, align 8, !tbaa !841
  %i.bm = load ptr, ptr %2, align 8, !tbaa !835
  store ptr %i.bm, ptr %23, align 8, !tbaa !841
  %i.bn = sub i64 %4, %.0
  call void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveINS_9container12vec_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEES8_NS2_3dtl23flat_tree_value_compareINS5_16less_transparentES7_NSA_9select1stIS6_EEEEEEvT_SG_SG_NS0_9iter_sizeISG_E4typeESJ_T0_SJ_T1_(ptr noundef nonnull align 8 dead_on_return %21, ptr noundef nonnull align 8 dead_on_return %22, ptr noundef nonnull align 8 dead_on_return %23, i64 noundef %i.bi, i64 noundef %i.bn, ptr noundef %5, i64 noundef %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  br label %bb.o

bb.o:                                             ; preds = %bb.c, %bb.h, %bb.n, %bb.e, %bb.f, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib17op_buffered_mergeINS_9container12vec_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEENS2_3dtl23flat_tree_value_compareINS5_16less_transparentES7_NSA_9select1stIS6_EEEENS0_7move_opENS0_10range_xbufIS8_mSG_EEEEvT_SJ_SJ_T0_T1_RT2_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !841    ; 3 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !841    ; 6 uses
  %.not51 = icmp eq ptr %i.a, %i.b
  br i1 %.not51, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareINS2_4test16less_transparentESt4pairINS5_24movable_and_copyable_intES8_ENS3_9select1stIS8_EEEEPS9_NS2_12vec_iteratorISD_Lb0EEENS0_7move_opEEEvT0_SH_T1_SI_SI_T_T2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %2, align 8, !tbaa !841    ; 2 uses
  %.not52 = icmp eq ptr %i.b, %i.c
  br i1 %.not52, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareINS2_4test16less_transparentESt4pairINS5_24movable_and_copyable_intES8_ENS3_9select1stIS8_EEEEPS9_NS2_12vec_iteratorISD_Lb0EEENS0_7move_opEEEvT0_SH_T1_SI_SI_T_T2_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -8
  %i.e = load i32, ptr %i.b, align 4, !tbaa !838  ; 2 uses
  %i.f = load i32, ptr %i.d, align 4, !tbaa !838  ; 2 uses
  %i.g = icmp slt i32 %i.e, %i.f
  br i1 %i.g, label %bb.d, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareINS2_4test16less_transparentESt4pairINS5_24movable_and_copyable_intES8_ENS3_9select1stIS8_EEEEPS9_NS2_12vec_iteratorISD_Lb0EEENS0_7move_opEEEvT0_SH_T1_SI_SI_T_T2_.exit

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
  %i.r = load i32, ptr %i.q, align 4, !tbaa !838, !noalias !30045
  %i.s = icmp slt i32 %i.e, %i.r                  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.neg.i = xor i64 %i.p, -1
  %i.u = add i64 %.010.i, %.neg.i
  %i.v = select i1 %i.s, ptr %i.o, ptr %i.t       ; 10 uses
  %.1.i = select i1 %i.s, i64 %i.p, i64 %i.u      ; 2 uses
  %.not.i = icmp eq i64 %.1.i, 0
  br i1 %.not.i, label %_ZN5boost7movelib11upper_boundINS_9container12vec_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEES7_NS2_3dtl23flat_tree_value_compareINS5_16less_transparentES7_NSA_9select1stIS6_EEEEEET_SG_SG_RKT0_T1_.exit, label %.lr.ph.i, !llvm.loop !466

_ZN5boost7movelib11upper_boundINS_9container12vec_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEES7_NS2_3dtl23flat_tree_value_compareINS5_16less_transparentES7_NSA_9select1stIS6_EEEEEET_SG_SG_RKT0_T1_.exit: ; preds = %.lr.ph.i
  %i.w = ptrtoaddr ptr %i.v to i64
  store ptr %i.v, ptr %0, align 8, !tbaa !841
  %i.x = load ptr, ptr %1, align 8, !tbaa !841    ; 3 uses
  %i.y = load ptr, ptr %3, align 8, !tbaa !863    ; 9 uses
  %i.z = ptrtoaddr ptr %i.y to i64                ; 2 uses
  %.not3.i.i.i = icmp eq ptr %i.x, %i.v
  br i1 %.not3.i.i.i, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareINS2_4test16less_transparentESt4pairINS5_24movable_and_copyable_intES8_ENS3_9select1stIS8_EEEEPS9_NS2_12vec_iteratorISD_Lb0EEENS0_7move_opEEEvT0_SH_T1_SI_SI_T_T2_.exit.sink.split, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN5boost7movelib11upper_boundINS_9container12vec_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEES7_NS2_3dtl23flat_tree_value_compareINS5_16less_transparentES7_NSA_9select1stIS6_EEEEEET_SG_SG_RKT0_T1_.exit
  %i.aa = ptrtoaddr ptr %i.x to i64
  %i.ab = add i64 %i.aa, -8
  %i.ac = sub i64 %i.ab, %i.w                     ; 5 uses
  %i.ad = lshr i64 %i.ac, 3
  %i.ae = add nuw nsw i64 %i.ad, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ac, 72
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader197, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.af = and i64 %i.ac, -8
  %i.ag = add i64 %i.af, 8                        ; 2 uses
  %i.ah = getelementptr i8, ptr %i.y, i64 %i.ag
  %i.ai = getelementptr i8, ptr %i.v, i64 %i.ag
  %bound0 = icmp ult ptr %i.y, %i.ai
  %bound1 = icmp ult ptr %i.v, %i.ah
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader197, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ae, 4611686018427387902     ; 3 uses
  %i.aj = shl i64 %n.vec, 3                       ; 2 uses
  %i.ak = getelementptr i8, ptr %i.v, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.y, i64 %i.aj   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.am = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.v, i64 %i.am ; 2 uses
  %next.gep121 = getelementptr i8, ptr %i.y, i64 %i.am
  %wide.vec = load <4 x i32>, ptr %next.gep, align 4, !tbaa !838, !alias.scope !30046
  store <4 x i32> %wide.vec, ptr %next.gep121, align 4, !tbaa !838, !alias.scope !30047, !noalias !30046
  store <4 x i32> zeroinitializer, ptr %next.gep, align 4, !tbaa !838, !alias.scope !30046
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !30022

middle.block:                                     ; preds = %vector.body
  %ind.escape = getelementptr i8, ptr %i.al, i64 -8
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES5_EmNS0_7move_opEE11move_assignINS3_12vec_iteratorIS7_Lb0EEEEEvT_m.exit, label %.lr.ph.i.i.i.preheader197

.lr.ph.i.i.i.preheader197:                        ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.ph198 = phi ptr [ %i.v, %vector.memcheck ], [ %i.v, %.lr.ph.i.i.i.preheader ], [ %i.ak, %middle.block ]
  %.04.i.i.i.ph = phi ptr [ %i.y, %vector.memcheck ], [ %i.y, %.lr.ph.i.i.i.preheader ], [ %i.al, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader197, %.lr.ph.i.i.i
  %i.ao = phi ptr [ %i.at, %.lr.ph.i.i.i ], [ %.ph198, %.lr.ph.i.i.i.preheader197 ] ; 4 uses
  %.04.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i ], [ %.04.i.i.i.ph, %.lr.ph.i.i.i.preheader197 ] ; 4 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !838
  store i32 %i.ap, ptr %.04.i.i.i, align 4, !tbaa !838
  store i32 0, ptr %i.ao, align 4, !tbaa !838
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 4 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.04.i.i.i, i64 4
  %i.as = load i32, ptr %i.aq, align 4, !tbaa !838
  store i32 %i.as, ptr %i.ar, align 4, !tbaa !838
  store i32 0, ptr %i.aq, align 4, !tbaa !838
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.04.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.at, %i.x
  br i1 %.not.i.i.i, label %_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES5_EmNS0_7move_opEE11move_assignINS3_12vec_iteratorIS7_Lb0EEEEEvT_m.exit, label %.lr.ph.i.i.i, !llvm.loop !30023

_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES5_EmNS0_7move_opEE11move_assignINS3_12vec_iteratorIS7_Lb0EEEEEvT_m.exit: ; preds = %.lr.ph.i.i.i, %middle.block
  %.04.i.i.i.lcssa = phi ptr [ %ind.escape, %middle.block ], [ %.04.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa116 = phi ptr [ %i.al, %middle.block ], [ %i.au, %.lr.ph.i.i.i ] ; 2 uses
  %.04.i.i.i.lcssa203 = ptrtoaddr ptr %.04.i.i.i.lcssa to i64
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.lcssa116, ptr %i.av, align 8, !tbaa !864
  %i.aw = load ptr, ptr %0, align 8, !tbaa !835   ; 2 uses
  %i.ax = load ptr, ptr %1, align 8, !tbaa !835
  %i.ay = load ptr, ptr %2, align 8, !tbaa !835
  br label %.lr.ph.i7

.lr.ph.i7:                                        ; preds = %_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES5_EmNS0_7move_opEE11move_assignINS3_12vec_iteratorIS7_Lb0EEEEEvT_m.exit, %bb.h
  %indvar = phi i64 [ 0, %_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES5_EmNS0_7move_opEE11move_assignINS3_12vec_iteratorIS7_Lb0EEEEEvT_m.exit ], [ %indvar.next, %bb.h ] ; 2 uses
  %.sroa.039.0 = phi ptr [ %i.ax, %_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES5_EmNS0_7move_opEE11move_assignINS3_12vec_iteratorIS7_Lb0EEEEEvT_m.exit ], [ %.sroa.039.1, %bb.h ] ; 6 uses
  %.sroa.040.0 = phi ptr [ %i.aw, %_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES5_EmNS0_7move_opEE11move_assignINS3_12vec_iteratorIS7_Lb0EEEEEvT_m.exit ], [ %i.do, %bb.h ] ; 9 uses
  %.015.i = phi ptr [ %i.y, %_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES5_EmNS0_7move_opEE11move_assignINS3_12vec_iteratorIS7_Lb0EEEEEvT_m.exit ], [ %.1.i8, %bb.h ] ; 12 uses
  %i.az = icmp eq ptr %.sroa.039.0, %i.ay
  br i1 %i.az, label %.lr.ph.i.i.i10.preheader, label %bb.e

.lr.ph.i.i.i10.preheader:                         ; preds = %.lr.ph.i7
  %.015.i132.le = ptrtoaddr ptr %.015.i to i64    ; 2 uses
  %i.ba = and i64 %i.ac, -8
  %i.bb = add i64 %i.ba, %i.z
  %i.bc = sub i64 %i.bb, %.015.i132.le            ; 2 uses
  %i.bd = lshr i64 %i.bc, 3
  %i.be = add nuw nsw i64 %i.bd, 1                ; 2 uses
  %min.iters.check134 = icmp ult i64 %i.bc, 104
  br i1 %min.iters.check134, label %.lr.ph.i.i.i10.preheader189, label %vector.memcheck135

vector.memcheck135:                               ; preds = %.lr.ph.i.i.i10.preheader
  %i.bf = shl i64 %indvar, 3
  %i.bg = and i64 %i.ac, -8
  %i.bh = add i64 %i.bg, %i.z
  %i.bi = sub i64 %i.bh, %.015.i132.le
  %i.bj = and i64 %i.bi, -8                       ; 2 uses
  %i.bk = getelementptr i8, ptr %i.aw, i64 %i.bf
  %i.bl = getelementptr i8, ptr %i.bk, i64 8
  %i.bm = getelementptr i8, ptr %i.bl, i64 %i.bj
  %i.bn = getelementptr i8, ptr %.015.i, i64 %i.bj
  %i.bo = getelementptr i8, ptr %i.bn, i64 8
  %bound0136 = icmp ult ptr %.sroa.040.0, %i.bo
  %bound1137 = icmp ult ptr %.015.i, %i.bm
  %found.conflict138 = and i1 %bound0136, %bound1137
  br i1 %found.conflict138, label %.lr.ph.i.i.i10.preheader189, label %vector.ph139

vector.ph139:                                     ; preds = %vector.memcheck135
  %n.vec140 = and i64 %i.be, 4611686018427387902  ; 3 uses
  %i.bp = shl i64 %n.vec140, 3                    ; 2 uses
  %i.bq = getelementptr i8, ptr %.sroa.040.0, i64 %i.bp
  %i.br = getelementptr i8, ptr %.015.i, i64 %i.bp
  br label %vector.body141

vector.body141:                                   ; preds = %vector.body141, %vector.ph139
  %index142 = phi i64 [ 0, %vector.ph139 ], [ %index.next149, %vector.body141 ] ; 2 uses
  %i.bs = shl i64 %index142, 3                    ; 2 uses
  %next.gep143 = getelementptr i8, ptr %.sroa.040.0, i64 %i.bs
  %next.gep144 = getelementptr i8, ptr %.015.i, i64 %i.bs ; 2 uses
  %wide.vec145 = load <4 x i32>, ptr %next.gep144, align 4, !tbaa !838, !alias.scope !30048, !noalias !30049
  store <4 x i32> %wide.vec145, ptr %next.gep143, align 4, !tbaa !838, !alias.scope !30050, !noalias !30049
  store <4 x i32> zeroinitializer, ptr %next.gep144, align 4, !tbaa !838, !alias.scope !30048, !noalias !30049
  %index.next149 = add nuw i64 %index142, 2       ; 2 uses
  %i.bt = icmp eq i64 %index.next149, %n.vec140
  br i1 %i.bt, label %middle.block150, label %vector.body141, !llvm.loop !30031

middle.block150:                                  ; preds = %vector.body141
  %cmp.n151 = icmp eq i64 %i.be, %n.vec140
  br i1 %cmp.n151, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareINS2_4test16less_transparentESt4pairINS5_24movable_and_copyable_intES8_ENS3_9select1stIS8_EEEEPS9_NS2_12vec_iteratorISD_Lb0EEENS0_7move_opEEEvT0_SH_T1_SI_SI_T_T2_.exit, label %.lr.ph.i.i.i10.preheader189

.lr.ph.i.i.i10.preheader189:                      ; preds = %vector.memcheck135, %.lr.ph.i.i.i10.preheader, %middle.block150
  %.ph190 = phi ptr [ %.sroa.040.0, %vector.memcheck135 ], [ %.sroa.040.0, %.lr.ph.i.i.i10.preheader ], [ %i.bq, %middle.block150 ] ; 2 uses
  %.05.i.i.i.ph = phi ptr [ %.015.i, %vector.memcheck135 ], [ %.015.i, %.lr.ph.i.i.i10.preheader ], [ %i.br, %middle.block150 ] ; 3 uses
  %.05.i.i.i.ph204 = ptrtoaddr ptr %.05.i.i.i.ph to i64
  %i.bu = sub i64 %.04.i.i.i.lcssa203, %.05.i.i.i.ph204 ; 2 uses
  %i.bv = lshr i64 %i.bu, 3
  %i.bw = add nuw nsw i64 %i.bv, 1
  %xtraiter = and i64 %i.bw, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i10.prol.loopexit, label %.lr.ph.i.i.i10.prol

.lr.ph.i.i.i10.prol:                              ; preds = %.lr.ph.i.i.i10.preheader189, %.lr.ph.i.i.i10.prol
  %i.bx = phi ptr [ %i.cd, %.lr.ph.i.i.i10.prol ], [ %.ph190, %.lr.ph.i.i.i10.preheader189 ] ; 3 uses
  %.05.i.i.i.prol = phi ptr [ %i.cc, %.lr.ph.i.i.i10.prol ], [ %.05.i.i.i.ph, %.lr.ph.i.i.i10.preheader189 ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i10.prol ], [ 0, %.lr.ph.i.i.i10.preheader189 ]
  %i.by = load i32, ptr %.05.i.i.i.prol, align 4, !tbaa !838, !noalias !30049
  store i32 %i.by, ptr %i.bx, align 4, !tbaa !838, !noalias !30049
  store i32 0, ptr %.05.i.i.i.prol, align 4, !tbaa !838, !noalias !30049
  %i.bz = getelementptr inbounds nuw i8, ptr %.05.i.i.i.prol, i64 4 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  %i.cb = load i32, ptr %i.bz, align 4, !tbaa !838, !noalias !30049
  store i32 %i.cb, ptr %i.ca, align 4, !tbaa !838, !noalias !30049
  store i32 0, ptr %i.bz, align 4, !tbaa !838, !noalias !30049
  %i.cc = getelementptr inbounds nuw i8, ptr %.05.i.i.i.prol, i64 8 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i10.prol.loopexit, label %.lr.ph.i.i.i10.prol, !llvm.loop !30032

.lr.ph.i.i.i10.prol.loopexit:                     ; preds = %.lr.ph.i.i.i10.prol, %.lr.ph.i.i.i10.preheader189
  %.unr = phi ptr [ %.ph190, %.lr.ph.i.i.i10.preheader189 ], [ %i.cd, %.lr.ph.i.i.i10.prol ]
  %.05.i.i.i.unr = phi ptr [ %.05.i.i.i.ph, %.lr.ph.i.i.i10.preheader189 ], [ %i.cc, %.lr.ph.i.i.i10.prol ]
  %i.ce = icmp ult i64 %i.bu, 24
  br i1 %i.ce, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareINS2_4test16less_transparentESt4pairINS5_24movable_and_copyable_intES8_ENS3_9select1stIS8_EEEEPS9_NS2_12vec_iteratorISD_Lb0EEENS0_7move_opEEEvT0_SH_T1_SI_SI_T_T2_.exit, label %.lr.ph.i.i.i10

.lr.ph.i.i.i10:                                   ; preds = %.lr.ph.i.i.i10.prol.loopexit, %.lr.ph.i.i.i10
  %i.cf = phi ptr [ %i.dd, %.lr.ph.i.i.i10 ], [ %.unr, %.lr.ph.i.i.i10.prol.loopexit ] ; 9 uses
  %.05.i.i.i = phi ptr [ %i.dc, %.lr.ph.i.i.i10 ], [ %.05.i.i.i.unr, %.lr.ph.i.i.i10.prol.loopexit ] ; 10 uses
  %i.cg = load i32, ptr %.05.i.i.i, align 4, !tbaa !838, !noalias !30049
  store i32 %i.cg, ptr %i.cf, align 4, !tbaa !838, !noalias !30049
  store i32 0, ptr %.05.i.i.i, align 4, !tbaa !838, !noalias !30049
  %i.ch = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 4 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  %i.cj = load i32, ptr %i.ch, align 4, !tbaa !838, !noalias !30049
  store i32 %i.cj, ptr %i.ci, align 4, !tbaa !838, !noalias !30049
  store i32 0, ptr %i.ch, align 4, !tbaa !838, !noalias !30049
  %i.ck = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.cm = load i32, ptr %i.ck, align 4, !tbaa !838, !noalias !30049
  store i32 %i.cm, ptr %i.cl, align 4, !tbaa !838, !noalias !30049
  store i32 0, ptr %i.ck, align 4, !tbaa !838, !noalias !30049
  %i.cn = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 12 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cf, i64 12
  %i.cp = load i32, ptr %i.cn, align 4, !tbaa !838, !noalias !30049
  store i32 %i.cp, ptr %i.co, align 4, !tbaa !838, !noalias !30049
  store i32 0, ptr %i.cn, align 4, !tbaa !838, !noalias !30049
  %i.cq = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.cs = load i32, ptr %i.cq, align 4, !tbaa !838, !noalias !30049
  store i32 %i.cs, ptr %i.cr, align 4, !tbaa !838, !noalias !30049
  store i32 0, ptr %i.cq, align 4, !tbaa !838, !noalias !30049
  %i.ct = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 20 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cf, i64 20
  %i.cv = load i32, ptr %i.ct, align 4, !tbaa !838, !noalias !30049
  store i32 %i.cv, ptr %i.cu, align 4, !tbaa !838, !noalias !30049
  store i32 0, ptr %i.ct, align 4, !tbaa !838, !noalias !30049
  %i.cw = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %i.cy = load i32, ptr %i.cw, align 4, !tbaa !838, !noalias !30049
  store i32 %i.cy, ptr %i.cx, align 4, !tbaa !838, !noalias !30049
  store i32 0, ptr %i.cw, align 4, !tbaa !838, !noalias !30049
  %i.cz = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 28 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cf, i64 28
  %i.db = load i32, ptr %i.cz, align 4, !tbaa !838, !noalias !30049
  store i32 %i.db, ptr %i.da, align 4, !tbaa !838, !noalias !30049
  store i32 0, ptr %i.cz, align 4, !tbaa !838, !noalias !30049
  %i.dc = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %.not.i.i.i11.3 = icmp eq ptr %i.cw, %.04.i.i.i.lcssa
  br i1 %.not.i.i.i11.3, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareINS2_4test16less_transparentESt4pairINS5_24movable_and_copyable_intES8_ENS3_9select1stIS8_EEEEPS9_NS2_12vec_iteratorISD_Lb0EEENS0_7move_opEEEvT0_SH_T1_SI_SI_T_T2_.exit, label %.lr.ph.i.i.i10, !llvm.loop !30033

bb.e:                                             ; preds = %.lr.ph.i7
  %i.de = load i32, ptr %.sroa.039.0, align 4, !tbaa !838 ; 2 uses
  %i.df = load i32, ptr %.015.i, align 4, !tbaa !838 ; 2 uses
  %i.dg = icmp slt i32 %i.de, %i.df
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.040.0, i64 4 ; 2 uses
  br i1 %i.dg, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 %i.de, ptr %.sroa.040.0, align 4, !tbaa !838
  store i32 0, ptr %.sroa.039.0, align 4, !tbaa !838
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.039.0, i64 4 ; 2 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !838
  store i32 %i.dj, ptr %i.dh, align 4, !tbaa !838
  store i32 0, ptr %i.di, align 4, !tbaa !838
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.039.0, i64 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  store i32 %i.df, ptr %.sroa.040.0, align 4, !tbaa !838
  store i32 0, ptr %.015.i, align 4, !tbaa !838
  %i.dl = getelementptr inbounds nuw i8, ptr %.015.i, i64 4 ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !838
  store i32 %i.dm, ptr %i.dh, align 4, !tbaa !838
  store i32 0, ptr %i.dl, align 4, !tbaa !838
  %i.dn = getelementptr inbounds nuw i8, ptr %.015.i, i64 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.039.1 = phi ptr [ %i.dk, %bb.f ], [ %.sroa.039.0, %bb.g ]
  %.1.i8 = phi ptr [ %.015.i, %bb.f ], [ %i.dn, %bb.g ] ; 2 uses
  %i.do = getelementptr i8, ptr %.sroa.040.0, i64 8
  %.not.i9 = icmp eq ptr %.1.i8, %.lcssa116
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i9, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareINS2_4test16less_transparentESt4pairINS5_24movable_and_copyable_intES8_ENS3_9select1stIS8_EEEEPS9_NS2_12vec_iteratorISD_Lb0EEENS0_7move_opEEEvT0_SH_T1_SI_SI_T_T2_.exit, label %.lr.ph.i7, !llvm.loop !467

.lr.ph.i13:                                       ; preds = %bb.d, %.lr.ph.i13
  %i.dp = phi ptr [ %i.dw, %.lr.ph.i13 ], [ %i.b, %bb.d ] ; 2 uses
  %.010.i14 = phi i64 [ %.1.i16, %.lr.ph.i13 ], [ %i.n, %bb.d ] ; 2 uses
  %i.dq = lshr i64 %.010.i14, 1                   ; 3 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.dq ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !838, !noalias !30051
  %i.dt = icmp slt i32 %i.ds, %i.f                ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %.neg.i15 = xor i64 %i.dq, -1
  %i.dv = add i64 %.010.i14, %.neg.i15
  %i.dw = select i1 %i.dt, ptr %i.du, ptr %i.dp   ; 5 uses
  %.1.i16 = select i1 %i.dt, i64 %i.dv, i64 %i.dq ; 2 uses
  %.not.i17 = icmp eq i64 %.1.i16, 0
  br i1 %.not.i17, label %_ZN5boost7movelib11lower_boundINS_9container12vec_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEES7_NS2_3dtl23flat_tree_value_compareINS5_16less_transparentES7_NSA_9select1stIS6_EEEEEET_SG_SG_RKT0_T1_.exit, label %.lr.ph.i13, !llvm.loop !465

_ZN5boost7movelib11lower_boundINS_9container12vec_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEES7_NS2_3dtl23flat_tree_value_compareINS5_16less_transparentES7_NSA_9select1stIS6_EEEEEET_SG_SG_RKT0_T1_.exit: ; preds = %.lr.ph.i13
  %i.dx = ptrtoaddr ptr %i.dw to i64
  store ptr %i.dw, ptr %2, align 8, !tbaa !841
  %i.dy = load ptr, ptr %1, align 8, !tbaa !835   ; 8 uses
  %i.dz = load ptr, ptr %3, align 8, !tbaa !863   ; 9 uses
  %.not3.i.i.i18 = icmp eq ptr %i.dw, %i.dy
  br i1 %.not3.i.i.i18, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareINS2_4test16less_transparentESt4pairINS5_24movable_and_copyable_intES8_ENS3_9select1stIS8_EEEEPS9_NS2_12vec_iteratorISD_Lb0EEENS0_7move_opEEEvT0_SH_T1_SI_SI_T_T2_.exit.sink.split, label %.lr.ph.i.i.i19.preheader

.lr.ph.i.i.i19.preheader:                         ; preds = %_ZN5boost7movelib11lower_boundINS_9container12vec_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEES7_NS2_3dtl23flat_tree_value_compareINS5_16less_transparentES7_NSA_9select1stIS6_EEEEEET_SG_SG_RKT0_T1_.exit
  %i.ea = ptrtoaddr ptr %i.dy to i64
  %i.eb = add i64 %i.dx, -8
  %i.ec = sub i64 %i.eb, %i.ea                    ; 3 uses
  %i.ed = lshr i64 %i.ec, 3
  %i.ee = add nuw nsw i64 %i.ed, 1                ; 2 uses
  %min.iters.check162 = icmp ult i64 %i.ec, 72
  br i1 %min.iters.check162, label %.lr.ph.i.i.i19.preheader185, label %vector.memcheck163

vector.memcheck163:                               ; preds = %.lr.ph.i.i.i19.preheader
  %i.ef = and i64 %i.ec, -8
  %i.eg = add i64 %i.ef, 8                        ; 2 uses
  %i.eh = getelementptr i8, ptr %i.dz, i64 %i.eg
  %i.ei = getelementptr i8, ptr %i.dy, i64 %i.eg
  %bound0164 = icmp ult ptr %i.dz, %i.ei
  %bound1165 = icmp ult ptr %i.dy, %i.eh
  %found.conflict166 = and i1 %bound0164, %bound1165
  br i1 %found.conflict166, label %.lr.ph.i.i.i19.preheader185, label %vector.ph167

vector.ph167:                                     ; preds = %vector.memcheck163
end_hunk_4
