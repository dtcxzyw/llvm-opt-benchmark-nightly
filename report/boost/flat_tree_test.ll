Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/flat_tree_test?download=true
inline.NumInlined: 27414
inline.NumDeleted: 3408
loop-unroll.NumRuntimeUnrolled: 494
loop-unroll.NumUnrolled: 502
begin_hunk_0_@_ZN5boost7movelib15detail_adaptive32adaptive_sort_combine_all_blocksIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EENS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEENS0_13adaptive_xbufIS8_S9_mEEEEbT_RNS0_9iter_sizeISI_E4typeESI_SL_SL_SM_RT1_T0_:bb.a
  %or.cond143.not190 = and i1 %.not139, %i.g
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.i = load i64, ptr %i.h, align 8
  %i.j = icmp ule i64 %i.b, %i.i
  %or.cond188 = select i1 %or.cond143.not190, i1 %i.j, i1 false ; 8 uses
  br i1 %or.cond188, label %bb.b, label %.thread.thread

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !359  ; 5 uses
  %.not.i = icmp ugt i64 %i.b, %i.l
  %i.m = load ptr, ptr %6, align 8, !tbaa !358    ; 15 uses
  br i1 %.not.i, label %bb.c, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.b
  %.idx.i = shl nsw i64 %i.b, 3                   ; 3 uses
  %i.n = getelementptr inbounds i8, ptr %2, i64 %.idx.i ; 2 uses
  %i.o = add i64 %.idx.i, -8                      ; 2 uses
  %i.p = lshr exact i64 %i.o, 3
  %i.q = add nuw nsw i64 %i.p, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.o, 40
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader.i
  %i.r = getelementptr i8, ptr %i.m, i64 %.idx.i
  %bound0 = icmp ult ptr %i.m, %i.n
  %bound1 = icmp ult ptr %2, %i.r
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.q, 4611686018427387900      ; 3 uses
  %i.s = shl i64 %n.vec, 3                        ; 2 uses
  %i.t = getelementptr i8, ptr %i.m, i64 %i.s
  %i.u = getelementptr i8, ptr %2, i64 %i.s
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.v = shl i64 %index, 3                        ; 3 uses
  %i.w = or disjoint i64 %i.v, 16                 ; 2 uses
  %next.gep = getelementptr i8, ptr %i.m, i64 %i.v
  %next.gep245 = getelementptr i8, ptr %i.m, i64 %i.w
  %next.gep246 = getelementptr i8, ptr %2, i64 %i.v ; 2 uses
  %next.gep247 = getelementptr i8, ptr %2, i64 %i.w ; 2 uses
  %wide.vec = load <4 x i32>, ptr %next.gep246, align 4, !tbaa !343, !alias.scope !7021
  %wide.vec249 = load <4 x i32>, ptr %next.gep247, align 4, !tbaa !343, !alias.scope !7021
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !343, !alias.scope !7022, !noalias !7021
  store <4 x i32> %wide.vec249, ptr %next.gep245, align 4, !tbaa !343, !alias.scope !7022, !noalias !7021
  store <4 x i32> zeroinitializer, ptr %next.gep246, align 4, !tbaa !343, !alias.scope !7021
  store <4 x i32> zeroinitializer, ptr %next.gep247, align 4, !tbaa !343, !alias.scope !7021
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !7000

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.q, %n.vec
  br i1 %cmp.n, label %_ZN5boost4moveIPNS_9container3dtl4pairINS1_4test24movable_and_copyable_intES5_EES7_EET0_T_S9_S8_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader.i, %middle.block
  %.010.i.i.ph = phi ptr [ %i.m, %vector.memcheck ], [ %i.m, %.lr.ph.i.preheader.i ], [ %i.t, %middle.block ]
  %.079.i.i.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph.i.preheader.i ], [ %i.u, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.ad, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %.079.i.i = phi ptr [ %i.ac, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader ] ; 4 uses
  %i.y = load i32, ptr %.079.i.i, align 4, !tbaa !343
  store i32 %i.y, ptr %.010.i.i, align 4, !tbaa !343
  store i32 0, ptr %.079.i.i, align 4, !tbaa !343
  %i.z = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !343
  store i32 %i.ab, ptr %i.aa, align 4, !tbaa !343
  store i32 0, ptr %i.z, align 4, !tbaa !343
  %i.ac = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %.not.i.i = icmp eq ptr %i.ac, %i.n
  br i1 %.not.i.i, label %_ZN5boost4moveIPNS_9container3dtl4pairINS1_4test24movable_and_copyable_intES5_EES7_EET0_T_S9_S8_.exit.i, label %.lr.ph.i.i, !llvm.loop !7001

_ZN5boost4moveIPNS_9container3dtl4pairINS1_4test24movable_and_copyable_intES5_EES7_EET0_T_S9_S8_.exit.i: ; preds = %.lr.ph.i.i, %middle.block
  %.not1731.i = icmp eq i64 %i.l, %i.b
  br i1 %.not1731.i, label %.thread, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZN5boost4moveIPNS_9container3dtl4pairINS1_4test24movable_and_copyable_intES5_EES7_EET0_T_S9_S8_.exit.i
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.ae = trunc i64 %i.b to i32
  %i.af = trunc i64 %i.l to i32
  %i.ag = sub i32 %i.ae, %i.af
  %i.ah = shl i32 %i.ag, 1
  %i.ai = add i32 %i.ah, %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i
  store i32 %i.ai, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  br label %.thread

bb.c:                                             ; preds = %bb.b
  %.idx28.i = shl i64 %i.l, 3                     ; 4 uses
  %i.aj = getelementptr i8, ptr %2, i64 %.idx28.i ; 3 uses
  %.not8.i18.i = icmp eq i64 %i.l, 0
  br i1 %.not8.i18.i, label %_ZN5boost4moveIPNS_9container3dtl4pairINS1_4test24movable_and_copyable_intES5_EES7_EET0_T_S9_S8_.exit24.i, label %.lr.ph.i19.i.preheader

.lr.ph.i19.i.preheader:                           ; preds = %bb.c
  %i.ak = add i64 %.idx28.i, -8                   ; 2 uses
  %i.al = lshr exact i64 %i.ak, 3
  %i.am = add nuw nsw i64 %i.al, 1                ; 2 uses
  %min.iters.check259 = icmp ult i64 %i.ak, 40
  br i1 %min.iters.check259, label %.lr.ph.i19.i.preheader435, label %vector.memcheck260

vector.memcheck260:                               ; preds = %.lr.ph.i19.i.preheader
  %i.an = getelementptr i8, ptr %i.m, i64 %.idx28.i
  %bound0261 = icmp ult ptr %i.m, %i.aj
  %bound1262 = icmp ult ptr %2, %i.an
  %found.conflict263 = and i1 %bound0261, %bound1262
  br i1 %found.conflict263, label %.lr.ph.i19.i.preheader435, label %vector.ph264

vector.ph264:                                     ; preds = %vector.memcheck260
  %n.vec265 = and i64 %i.am, 4611686018427387900  ; 3 uses
  %i.ao = shl i64 %n.vec265, 3                    ; 2 uses
  %i.ap = getelementptr i8, ptr %i.m, i64 %i.ao   ; 2 uses
  %i.aq = getelementptr i8, ptr %2, i64 %i.ao
  br label %vector.body266

vector.body266:                                   ; preds = %vector.body266, %vector.ph264
  %index267 = phi i64 [ 0, %vector.ph264 ], [ %index.next280, %vector.body266 ] ; 2 uses
  %i.ar = shl i64 %index267, 3                    ; 3 uses
  %i.as = or disjoint i64 %i.ar, 16               ; 2 uses
  %next.gep268 = getelementptr i8, ptr %i.m, i64 %i.ar
  %next.gep269 = getelementptr i8, ptr %i.m, i64 %i.as
  %next.gep270 = getelementptr i8, ptr %2, i64 %i.ar ; 2 uses
  %next.gep271 = getelementptr i8, ptr %2, i64 %i.as ; 2 uses
  %wide.vec272 = load <4 x i32>, ptr %next.gep270, align 4, !tbaa !343, !alias.scope !7023
  %wide.vec275 = load <4 x i32>, ptr %next.gep271, align 4, !tbaa !343, !alias.scope !7023
  store <4 x i32> %wide.vec272, ptr %next.gep268, align 4, !tbaa !343, !alias.scope !7024, !noalias !7023
  store <4 x i32> %wide.vec275, ptr %next.gep269, align 4, !tbaa !343, !alias.scope !7024, !noalias !7023
  store <4 x i32> zeroinitializer, ptr %next.gep270, align 4, !tbaa !343, !alias.scope !7023
  store <4 x i32> zeroinitializer, ptr %next.gep271, align 4, !tbaa !343, !alias.scope !7023
  %index.next280 = add nuw i64 %index267, 4       ; 2 uses
  %i.at = icmp eq i64 %index.next280, %n.vec265
  br i1 %i.at, label %middle.block281, label %vector.body266, !llvm.loop !7005

middle.block281:                                  ; preds = %vector.body266
  %cmp.n282 = icmp eq i64 %i.am, %n.vec265
  br i1 %cmp.n282, label %_ZN5boost4moveIPNS_9container3dtl4pairINS1_4test24movable_and_copyable_intES5_EES7_EET0_T_S9_S8_.exit24.i, label %.lr.ph.i19.i.preheader435

.lr.ph.i19.i.preheader435:                        ; preds = %vector.memcheck260, %.lr.ph.i19.i.preheader, %middle.block281
  %.010.i20.i.ph = phi ptr [ %i.m, %vector.memcheck260 ], [ %i.m, %.lr.ph.i19.i.preheader ], [ %i.ap, %middle.block281 ]
  %.079.i21.i.ph = phi ptr [ %2, %vector.memcheck260 ], [ %2, %.lr.ph.i19.i.preheader ], [ %i.aq, %middle.block281 ]
  br label %.lr.ph.i19.i

.lr.ph.i19.i:                                     ; preds = %.lr.ph.i19.i.preheader435, %.lr.ph.i19.i
  %.010.i20.i = phi ptr [ %i.az, %.lr.ph.i19.i ], [ %.010.i20.i.ph, %.lr.ph.i19.i.preheader435 ] ; 3 uses
  %.079.i21.i = phi ptr [ %i.ay, %.lr.ph.i19.i ], [ %.079.i21.i.ph, %.lr.ph.i19.i.preheader435 ] ; 4 uses
  %i.au = load i32, ptr %.079.i21.i, align 4, !tbaa !343
  store i32 %i.au, ptr %.010.i20.i, align 4, !tbaa !343
  store i32 0, ptr %.079.i21.i, align 4, !tbaa !343
  %i.av = getelementptr inbounds nuw i8, ptr %.079.i21.i, i64 4 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.010.i20.i, i64 4
  %i.ax = load i32, ptr %i.av, align 4, !tbaa !343
  store i32 %i.ax, ptr %i.aw, align 4, !tbaa !343
  store i32 0, ptr %i.av, align 4, !tbaa !343
  %i.ay = getelementptr inbounds nuw i8, ptr %.079.i21.i, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.010.i20.i, i64 8 ; 2 uses
  %.not.i22.i = icmp eq ptr %i.ay, %i.aj
  br i1 %.not.i22.i, label %_ZN5boost4moveIPNS_9container3dtl4pairINS1_4test24movable_and_copyable_intES5_EES7_EET0_T_S9_S8_.exit24.i, label %.lr.ph.i19.i, !llvm.loop !7006

_ZN5boost4moveIPNS_9container3dtl4pairINS1_4test24movable_and_copyable_intES5_EES7_EET0_T_S9_S8_.exit24.i: ; preds = %.lr.ph.i19.i, %middle.block281, %bb.c
  %.0.lcssa.i23.i = phi ptr [ %i.m, %bb.c ], [ %i.ap, %middle.block281 ], [ %i.az, %.lr.ph.i19.i ]
  %.idx29.i = shl nsw i64 %i.b, 3                 ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %2, i64 %.idx29.i
  %.not16.i.i = icmp eq i64 %.idx28.i, %.idx29.i
  br i1 %.not16.i.i, label %.thread, label %.lr.ph.i25.i

.lr.ph.i25.i:                                     ; preds = %_ZN5boost4moveIPNS_9container3dtl4pairINS1_4test24movable_and_copyable_intES5_EES7_EET0_T_S9_S8_.exit24.i, %.lr.ph.i25.i
  %.018.i.i = phi ptr [ %i.bi, %.lr.ph.i25.i ], [ %.0.lcssa.i23.i, %_ZN5boost4moveIPNS_9container3dtl4pairINS1_4test24movable_and_copyable_intES5_EES7_EET0_T_S9_S8_.exit24.i ] ; 3 uses
  %.01217.i.i = phi ptr [ %i.bh, %.lr.ph.i25.i ], [ %i.aj, %_ZN5boost4moveIPNS_9container3dtl4pairINS1_4test24movable_and_copyable_intES5_EES7_EET0_T_S9_S8_.exit24.i ] ; 4 uses
  %i.bb = load i32, ptr %.01217.i.i, align 4, !tbaa !343
  store i32 %i.bb, ptr %.018.i.i, align 4, !tbaa !343
  store i32 0, ptr %.01217.i.i, align 4, !tbaa !343
  %i.bc = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.bd = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 4
  %i.be = getelementptr inbounds nuw i8, ptr %.01217.i.i, i64 4 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !343
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !343
  store i32 0, ptr %i.be, align 4, !tbaa !343
  %i.bg = add i32 %i.bc, 2
  store i32 %i.bg, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.bh = getelementptr inbounds nuw i8, ptr %.01217.i.i, i64 8 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 8
  %.not.i26.i = icmp eq ptr %i.bh, %i.ba
  br i1 %.not.i26.i, label %.thread, label %.lr.ph.i25.i, !llvm.loop !102

.thread:                                          ; preds = %.lr.ph.i25.i, %_ZN5boost4moveIPNS_9container3dtl4pairINS1_4test24movable_and_copyable_intES5_EES7_EET0_T_S9_S8_.exit24.i, %.lr.ph.preheader.i, %_ZN5boost4moveIPNS_9container3dtl4pairINS1_4test24movable_and_copyable_intES5_EES7_EET0_T_S9_S8_.exit.i
  store i64 %i.b, ptr %i.k, align 8, !tbaa !359
  br i1 %i.g, label %.lr.ph, label %_ZN5boost4moveIPNS_9container3dtl4pairINS1_4test24movable_and_copyable_intES5_EES7_EET0_T_S9_S8_.exit.sink.split

.thread.thread:                                   ; preds = %bb.a
  br i1 %i.g, label %.lr.ph, label %_ZN5boost4moveIPNS_9container3dtl4pairINS1_4test24movable_and_copyable_intES5_EES7_EET0_T_S9_S8_.exit.sink.split

.lr.ph:                                           ; preds = %.thread.thread, %.thread
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bk = shl i64 %3, 3                           ; 2 uses
  %7 = shl i64 %i.b, 3
  %8 = or disjoint i64 %7, 4                      ; 2 uses
  %9 = add i64 %i.bk, -4                          ; 2 uses
  %i.bl = shl i64 %3, 3
  %i.bm = add i64 %i.bl, -8
  %10 = getelementptr i8, ptr %2, i64 %8
  %11 = getelementptr i8, ptr %2, i64 %8
  br label %bb.d

._crit_edge:                                      ; preds = %bb.s
  %i.bn = select i1 %.1, i1 %i.by, i1 false       ; 2 uses
  %spec.select = select i1 %.1, i64 %.1.i, i64 0  ; 2 uses
  store i64 %spec.select, ptr %5, align 8, !tbaa !340
  %i.bo = sub i64 %i.f, %spec.select
  store i64 %i.bo, ptr %1, align 8, !tbaa !340
  br i1 %or.cond188, label %bb.t, label %_ZN5boost4moveIPNS_9container3dtl4pairINS1_4test24movable_and_copyable_intES5_EES7_EET0_T_S9_S8_.exit

bb.d:                                             ; preds = %.lr.ph, %bb.s
  %.0206 = phi i64 [ %4, %.lr.ph ], [ %i.br, %bb.s ] ; 5 uses
  %.0130205 = phi i64 [ 0, %.lr.ph ], [ %i.hs, %bb.s ] ; 3 uses
  %.0131204 = phi i1 [ true, %.lr.ph ], [ %.1, %bb.s ]
  %.0132203 = phi i64 [ 0, %.lr.ph ], [ %.1.i, %bb.s ]
  %.0133202 = phi i64 [ %4, %.lr.ph ], [ %spec.select15.i, %bb.s ] ; 13 uses
  %.0134201 = phi i1 [ true, %.lr.ph ], [ %i.by, %bb.s ]
  %i.bp = load i64, ptr %5, align 8, !tbaa !340   ; 2 uses
  %i.bq = load i64, ptr %1, align 8, !tbaa !340   ; 4 uses
  %i.br = shl i64 %.0206, 1                       ; 6 uses
  %.not.i144 = icmp eq i64 %i.bp, 0
  br i1 %.not.i144, label %bb.e, label %_ZN5boost7movelib15detail_adaptive18lblock_for_combineImEET_S3_S3_S3_Rb.exit

bb.e:                                             ; preds = %bb.d
  %i.bs = lshr i64 %i.bq, 1                       ; 3 uses
  %i.bt = sub nuw i64 %i.bq, %i.bs                ; 2 uses
  %i.bu = icmp ugt i64 %i.bt, 3
  br i1 %i.bu, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  %i.bv = udiv i64 %i.br, %i.bs
  %.not193 = icmp ult i64 %i.bt, %i.bv
  br i1 %.not193, label %.critedge.i, label %_ZN5boost7movelib15detail_adaptive18lblock_for_combineImEET_S3_S3_S3_Rb.exit

.critedge.i:                                      ; preds = %bb.e, %bb.f
  %i.bw = udiv i64 %i.br, %i.bq
  br label %_ZN5boost7movelib15detail_adaptive18lblock_for_combineImEET_S3_S3_S3_Rb.exit

_ZN5boost7movelib15detail_adaptive18lblock_for_combineImEET_S3_S3_S3_Rb.exit: ; preds = %bb.d, %bb.f, %.critedge.i
  %.1 = phi i1 [ true, %bb.f ], [ false, %.critedge.i ], [ true, %bb.d ] ; 10 uses
  %.1.i = phi i64 [ %i.bs, %bb.f ], [ %i.bw, %.critedge.i ], [ %i.bp, %bb.d ] ; 12 uses
  %i.bx = and i64 %.0130205, 1
  %i.by = icmp eq i64 %i.bx, 0                    ; 9 uses
  %i.bz = urem i64 %i.d, %i.br                    ; 2 uses
  %.not.i145 = icmp ugt i64 %i.bz, %.0206
  %i.ca = select i1 %.not.i145, i64 0, i64 %i.bz  ; 4 uses
  %spec.select15.i = sub i64 %i.d, %i.ca          ; 5 uses
  %i.cb = icmp ne i64 %.0130205, 0
  %or.cond = and i1 %i.cb, %.0131204
  %or.cond3 = select i1 %or.cond, i1 %.0134201, i1 false
  br i1 %or.cond3, label %bb.g, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EEEEvT_NS0_9iter_sizeISA_E4typeESA_b.exit

bb.g:                                             ; preds = %_ZN5boost7movelib15detail_adaptive18lblock_for_combineImEET_S3_S3_S3_Rb.exit
  %.not = xor i1 %i.by, true
  %or.cond5 = and i1 %.1, %.not
  br i1 %or.cond5, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cc = sub i64 0, %.0132203
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.cc ; 4 uses
  %.not8.i.i146 = icmp eq i64 %.0133202, 0        ; 2 uses
  br i1 %or.cond188, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  br i1 %.not8.i.i146, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EEEEvT_NS0_9iter_sizeISA_E4typeESA_b.exit, label %.lr.ph.i.preheader.i148

.lr.ph.i.preheader.i148:                          ; preds = %bb.i
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.0133202 ; 2 uses
  %.idx13.i = shl i64 %.0133202, 3                ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.idx13.i ; 2 uses
  %i.cg = add i64 %.idx13.i, -8                   ; 2 uses
  %i.ch = lshr exact i64 %i.cg, 3
  %i.ci = add nuw nsw i64 %i.ch, 1
  %xtraiter437 = and i64 %i.ci, 3                 ; 2 uses
  %lcmp.mod438.not = icmp eq i64 %xtraiter437, 0
  br i1 %lcmp.mod438.not, label %.lr.ph.i.i149.prol.loopexit, label %.lr.ph.i.i149.prol

.lr.ph.i.i149.prol:                               ; preds = %.lr.ph.i.preheader.i148, %.lr.ph.i.i149.prol
  %.010.i.i150.prol = phi ptr [ %i.ck, %.lr.ph.i.i149.prol ], [ %i.ce, %.lr.ph.i.preheader.i148 ] ; 2 uses
  %.079.i.i151.prol = phi ptr [ %i.cj, %.lr.ph.i.i149.prol ], [ %i.cf, %.lr.ph.i.preheader.i148 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i149.prol ], [ 0, %.lr.ph.i.preheader.i148 ]
  %i.cj = getelementptr inbounds i8, ptr %.079.i.i151.prol, i64 -8 ; 4 uses
  %i.ck = getelementptr inbounds i8, ptr %.010.i.i150.prol, i64 -8 ; 3 uses
  %i.cl = load i32, ptr %i.cj, align 4, !tbaa !343
  store i32 %i.cl, ptr %i.ck, align 4, !tbaa !343
  store i32 0, ptr %i.cj, align 4, !tbaa !343
  %i.cm = getelementptr inbounds i8, ptr %.079.i.i151.prol, i64 -4 ; 2 uses
  %i.cn = getelementptr inbounds i8, ptr %.010.i.i150.prol, i64 -4
  %i.co = load i32, ptr %i.cm, align 4, !tbaa !343
  store i32 %i.co, ptr %i.cn, align 4, !tbaa !343
  store i32 0, ptr %i.cm, align 4, !tbaa !343
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter437
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i149.prol.loopexit, label %.lr.ph.i.i149.prol, !llvm.loop !7007

.lr.ph.i.i149.prol.loopexit:                      ; preds = %.lr.ph.i.i149.prol, %.lr.ph.i.preheader.i148
  %.010.i.i150.unr = phi ptr [ %i.ce, %.lr.ph.i.preheader.i148 ], [ %i.ck, %.lr.ph.i.i149.prol ]
  %.079.i.i151.unr = phi ptr [ %i.cf, %.lr.ph.i.preheader.i148 ], [ %i.cj, %.lr.ph.i.i149.prol ]
  %i.cp = icmp ult i64 %i.cg, 24
  br i1 %i.cp, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EEEEvT_NS0_9iter_sizeISA_E4typeESA_b.exit, label %.lr.ph.i.i149

.lr.ph.i.i149:                                    ; preds = %.lr.ph.i.i149.prol.loopexit, %.lr.ph.i.i149
  %.010.i.i150 = phi ptr [ %i.dj, %.lr.ph.i.i149 ], [ %.010.i.i150.unr, %.lr.ph.i.i149.prol.loopexit ] ; 8 uses
  %.079.i.i151 = phi ptr [ %i.di, %.lr.ph.i.i149 ], [ %.079.i.i151.unr, %.lr.ph.i.i149.prol.loopexit ] ; 8 uses
  %i.cq = getelementptr inbounds i8, ptr %.079.i.i151, i64 -8 ; 2 uses
  %i.cr = getelementptr inbounds i8, ptr %.010.i.i150, i64 -8
  %i.cs = load i32, ptr %i.cq, align 4, !tbaa !343
  store i32 %i.cs, ptr %i.cr, align 4, !tbaa !343
  store i32 0, ptr %i.cq, align 4, !tbaa !343
  %i.ct = getelementptr inbounds i8, ptr %.079.i.i151, i64 -4 ; 2 uses
  %i.cu = getelementptr inbounds i8, ptr %.010.i.i150, i64 -4
  %i.cv = load i32, ptr %i.ct, align 4, !tbaa !343
  store i32 %i.cv, ptr %i.cu, align 4, !tbaa !343
  store i32 0, ptr %i.ct, align 4, !tbaa !343
  %i.cw = getelementptr inbounds i8, ptr %.079.i.i151, i64 -16 ; 2 uses
  %i.cx = getelementptr inbounds i8, ptr %.010.i.i150, i64 -16
  %i.cy = load i32, ptr %i.cw, align 4, !tbaa !343
  store i32 %i.cy, ptr %i.cx, align 4, !tbaa !343
  store i32 0, ptr %i.cw, align 4, !tbaa !343
  %i.cz = getelementptr inbounds i8, ptr %.079.i.i151, i64 -12 ; 2 uses
  %i.da = getelementptr inbounds i8, ptr %.010.i.i150, i64 -12
  %i.db = load i32, ptr %i.cz, align 4, !tbaa !343
  store i32 %i.db, ptr %i.da, align 4, !tbaa !343
  store i32 0, ptr %i.cz, align 4, !tbaa !343
  %i.dc = getelementptr inbounds i8, ptr %.079.i.i151, i64 -24 ; 2 uses
  %i.dd = getelementptr inbounds i8, ptr %.010.i.i150, i64 -24
  %i.de = load i32, ptr %i.dc, align 4, !tbaa !343
  store i32 %i.de, ptr %i.dd, align 4, !tbaa !343
  store i32 0, ptr %i.dc, align 4, !tbaa !343
  %i.df = getelementptr inbounds i8, ptr %.079.i.i151, i64 -20 ; 2 uses
  %i.dg = getelementptr inbounds i8, ptr %.010.i.i150, i64 -20
  %i.dh = load i32, ptr %i.df, align 4, !tbaa !343
  store i32 %i.dh, ptr %i.dg, align 4, !tbaa !343
  store i32 0, ptr %i.df, align 4, !tbaa !343
  %i.di = getelementptr inbounds i8, ptr %.079.i.i151, i64 -32 ; 4 uses
  %i.dj = getelementptr inbounds i8, ptr %.010.i.i150, i64 -32 ; 2 uses
  %i.dk = load i32, ptr %i.di, align 4, !tbaa !343
  store i32 %i.dk, ptr %i.dj, align 4, !tbaa !343
  store i32 0, ptr %i.di, align 4, !tbaa !343
  %i.dl = getelementptr inbounds i8, ptr %.079.i.i151, i64 -28 ; 2 uses
  %i.dm = getelementptr inbounds i8, ptr %.010.i.i150, i64 -28
  %i.dn = load i32, ptr %i.dl, align 4, !tbaa !343
  store i32 %i.dn, ptr %i.dm, align 4, !tbaa !343
  store i32 0, ptr %i.dl, align 4, !tbaa !343
  %.not.i.i152.3 = icmp eq ptr %i.cd, %i.di
  br i1 %.not.i.i152.3, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EEEEvT_NS0_9iter_sizeISA_E4typeESA_b.exit, label %.lr.ph.i.i149, !llvm.loop !100

bb.j:                                             ; preds = %bb.h
  br i1 %.not8.i.i146, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EEEEvT_NS0_9iter_sizeISA_E4typeESA_b.exit, label %.lr.ph.i10.preheader.i

.lr.ph.i10.preheader.i:                           ; preds = %bb.j
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.0133202 ; 3 uses
  %.idx.i147 = shl i64 %.0133202, 3               ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.idx.i147 ; 3 uses
  %i.dq = add i64 %.idx.i147, -8                  ; 2 uses
  %i.dr = and i64 %i.dq, 8
  %lcmp.mod.not.not = icmp eq i64 %i.dr, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i10.i.prol, label %.lr.ph.i10.i.prol.loopexit

.lr.ph.i10.i.prol:                                ; preds = %.lr.ph.i10.preheader.i
  %i.ds = getelementptr inbounds i8, ptr %i.dp, i64 -8 ; 4 uses
  %i.dt = getelementptr inbounds i8, ptr %i.do, i64 -8 ; 3 uses
  %i.du = load i32, ptr %i.ds, align 4, !tbaa !343
  store i32 0, ptr %i.ds, align 4, !tbaa !343
  %i.dv = load i32, ptr %i.dt, align 4, !tbaa !343
  store i32 %i.dv, ptr %i.ds, align 4, !tbaa !343
  store i32 %i.du, ptr %i.dt, align 4, !tbaa !343
  %i.dw = getelementptr inbounds i8, ptr %i.dp, i64 -4 ; 3 uses
  %i.dx = getelementptr inbounds i8, ptr %i.do, i64 -4 ; 2 uses
  %i.dy = load i32, ptr %i.dw, align 4, !tbaa !343
  store i32 0, ptr %i.dw, align 4, !tbaa !343
  %i.dz = load i32, ptr %i.dx, align 4, !tbaa !343
  store i32 %i.dz, ptr %i.dw, align 4, !tbaa !343
  store i32 %i.dy, ptr %i.dx, align 4, !tbaa !343
  br label %.lr.ph.i10.i.prol.loopexit

.lr.ph.i10.i.prol.loopexit:                       ; preds = %.lr.ph.i10.i.prol, %.lr.ph.i10.preheader.i
  %.08.i.i.unr = phi ptr [ %i.do, %.lr.ph.i10.preheader.i ], [ %i.dt, %.lr.ph.i10.i.prol ]
  %.057.i.i.unr = phi ptr [ %i.dp, %.lr.ph.i10.preheader.i ], [ %i.ds, %.lr.ph.i10.i.prol ]
  %i.ea = icmp eq i64 %i.dq, 0
  br i1 %i.ea, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EEEEvT_NS0_9iter_sizeISA_E4typeESA_b.exit, label %.lr.ph.i10.i

.lr.ph.i10.i:                                     ; preds = %.lr.ph.i10.i.prol.loopexit, %.lr.ph.i10.i
  %.08.i.i = phi ptr [ %i.ek, %.lr.ph.i10.i ], [ %.08.i.i.unr, %.lr.ph.i10.i.prol.loopexit ] ; 4 uses
  %.057.i.i = phi ptr [ %i.ej, %.lr.ph.i10.i ], [ %.057.i.i.unr, %.lr.ph.i10.i.prol.loopexit ] ; 4 uses
  %i.eb = getelementptr inbounds i8, ptr %.057.i.i, i64 -8 ; 3 uses
  %i.ec = getelementptr inbounds i8, ptr %.08.i.i, i64 -8 ; 2 uses
  %i.ed = load i32, ptr %i.eb, align 4, !tbaa !343
  store i32 0, ptr %i.eb, align 4, !tbaa !343
  %i.ee = load i32, ptr %i.ec, align 4, !tbaa !343
  store i32 %i.ee, ptr %i.eb, align 4, !tbaa !343
  store i32 %i.ed, ptr %i.ec, align 4, !tbaa !343
  %i.ef = getelementptr inbounds i8, ptr %.057.i.i, i64 -4 ; 3 uses
  %i.eg = getelementptr inbounds i8, ptr %.08.i.i, i64 -4 ; 2 uses
  %i.eh = load i32, ptr %i.ef, align 4, !tbaa !343
  store i32 0, ptr %i.ef, align 4, !tbaa !343
  %i.ei = load i32, ptr %i.eg, align 4, !tbaa !343
  store i32 %i.ei, ptr %i.ef, align 4, !tbaa !343
  store i32 %i.eh, ptr %i.eg, align 4, !tbaa !343
  %i.ej = getelementptr inbounds i8, ptr %.057.i.i, i64 -16 ; 5 uses
  %i.ek = getelementptr inbounds i8, ptr %.08.i.i, i64 -16 ; 3 uses
  %i.el = load i32, ptr %i.ej, align 4, !tbaa !343
  store i32 0, ptr %i.ej, align 4, !tbaa !343
  %i.em = load i32, ptr %i.ek, align 4, !tbaa !343
  store i32 %i.em, ptr %i.ej, align 4, !tbaa !343
  store i32 %i.el, ptr %i.ek, align 4, !tbaa !343
  %i.en = getelementptr inbounds i8, ptr %.057.i.i, i64 -12 ; 3 uses
  %i.eo = getelementptr inbounds i8, ptr %.08.i.i, i64 -12 ; 2 uses
  %i.ep = load i32, ptr %i.en, align 4, !tbaa !343
  store i32 0, ptr %i.en, align 4, !tbaa !343
  %i.eq = load i32, ptr %i.eo, align 4, !tbaa !343
  store i32 %i.eq, ptr %i.en, align 4, !tbaa !343
  store i32 %i.ep, ptr %i.eo, align 4, !tbaa !343
  %.not.i11.i.1 = icmp eq ptr %i.cd, %i.ej
  br i1 %.not.i11.i.1, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EEEEvT_NS0_9iter_sizeISA_E4typeESA_b.exit, label %.lr.ph.i10.i, !llvm.loop !109

bb.k:                                             ; preds = %bb.g
  %i.er = getelementptr [8 x i8], ptr %i.c, i64 %.0133202 ; 13 uses
  %i.es = sub i64 0, %.1.i
  %i.et = getelementptr [8 x i8], ptr %i.er, i64 %i.es ; 10 uses
  %i.eu = icmp ugt i64 %.0133202, %spec.select15.i
  br i1 %i.eu, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ev = sub nuw i64 %.0133202, %spec.select15.i ; 2 uses
  %i.ew = sub i64 0, %i.ev
  %i.ex = getelementptr inbounds [8 x i8], ptr %i.et, i64 %i.ew ; 3 uses
  %.idx13.i161 = shl nuw nsw i64 %i.ev, 3
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 %.idx13.i161 ; 2 uses
  br i1 %or.cond188, label %.lr.ph.i.i162, label %.lr.ph.i10.i156

.lr.ph.i.i162:                                    ; preds = %bb.l, %.lr.ph.i.i162
  %.010.i.i163 = phi ptr [ %i.fa, %.lr.ph.i.i162 ], [ %i.er, %bb.l ] ; 2 uses
  %.079.i.i164 = phi ptr [ %i.ez, %.lr.ph.i.i162 ], [ %i.ey, %bb.l ] ; 2 uses
  %i.ez = getelementptr inbounds i8, ptr %.079.i.i164, i64 -8 ; 4 uses
  %i.fa = getelementptr inbounds i8, ptr %.010.i.i163, i64 -8 ; 2 uses
  %i.fb = load i32, ptr %i.ez, align 4, !tbaa !343
  store i32 %i.fb, ptr %i.fa, align 4, !tbaa !343
  store i32 0, ptr %i.ez, align 4, !tbaa !343
  %i.fc = getelementptr inbounds i8, ptr %.079.i.i164, i64 -4 ; 2 uses
  %i.fd = getelementptr inbounds i8, ptr %.010.i.i163, i64 -4
  %i.fe = load i32, ptr %i.fc, align 4, !tbaa !343
  store i32 %i.fe, ptr %i.fd, align 4, !tbaa !343
  store i32 0, ptr %i.fc, align 4, !tbaa !343
  %.not.i.i165 = icmp eq ptr %i.ex, %i.ez
  br i1 %.not.i.i165, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EEEEvT_NS0_9iter_sizeISA_E4typeESA_b.exit, label %.lr.ph.i.i162, !llvm.loop !100

.lr.ph.i10.i156:                                  ; preds = %bb.l, %.lr.ph.i10.i156
  %.08.i.i157 = phi ptr [ %i.fg, %.lr.ph.i10.i156 ], [ %i.er, %bb.l ] ; 2 uses
  %.057.i.i158 = phi ptr [ %i.ff, %.lr.ph.i10.i156 ], [ %i.ey, %bb.l ] ; 2 uses
  %i.ff = getelementptr inbounds i8, ptr %.057.i.i158, i64 -8 ; 5 uses
  %i.fg = getelementptr inbounds i8, ptr %.08.i.i157, i64 -8 ; 3 uses
  %i.fh = load i32, ptr %i.ff, align 4, !tbaa !343
  store i32 0, ptr %i.ff, align 4, !tbaa !343
  %i.fi = load i32, ptr %i.fg, align 4, !tbaa !343
  store i32 %i.fi, ptr %i.ff, align 4, !tbaa !343
  store i32 %i.fh, ptr %i.fg, align 4, !tbaa !343
  %i.fj = getelementptr inbounds i8, ptr %.057.i.i158, i64 -4 ; 3 uses
  %i.fk = getelementptr inbounds i8, ptr %.08.i.i157, i64 -4 ; 2 uses
  %i.fl = load i32, ptr %i.fj, align 4, !tbaa !343
  store i32 0, ptr %i.fj, align 4, !tbaa !343
  %i.fm = load i32, ptr %i.fk, align 4, !tbaa !343
  store i32 %i.fm, ptr %i.fj, align 4, !tbaa !343
  store i32 %i.fl, ptr %i.fk, align 4, !tbaa !343
  %.not.i11.i159 = icmp eq ptr %i.ex, %i.ff
  br i1 %.not.i11.i159, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EEEEvT_NS0_9iter_sizeISA_E4typeESA_b.exit, label %.lr.ph.i10.i156, !llvm.loop !109

bb.m:                                             ; preds = %bb.k
  %i.fn = icmp ult i64 %.0133202, %spec.select15.i
  br i1 %i.fn, label %bb.n, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EEEEvT_NS0_9iter_sizeISA_E4typeESA_b.exit

bb.n:                                             ; preds = %bb.m
  %i.fo = sub nuw i64 %spec.select15.i, %.0133202
  %.idx14.i = shl i64 %i.fo, 3
  %i.fp = getelementptr i8, ptr %i.er, i64 %.idx14.i ; 5 uses
  br i1 %or.cond188, label %.lr.ph.i.i169.preheader, label %.lr.ph.i9.i

.lr.ph.i.i169.preheader:                          ; preds = %bb.n
  %i.fq = add i64 %i.ca, %.0133202
  %i.fr = add i64 %i.fq, %i.b
  %i.fs = shl i64 %i.fr, 3
  %i.ft = sub i64 %i.bm, %i.fs                    ; 2 uses
  %i.fu = lshr exact i64 %i.ft, 3
  %i.fv = add nuw nsw i64 %i.fu, 1                ; 2 uses
  %min.iters.check318 = icmp ult i64 %i.ft, 168
  br i1 %min.iters.check318, label %.lr.ph.i.i169.preheader430, label %vector.memcheck319

vector.memcheck319:                               ; preds = %.lr.ph.i.i169.preheader
  %i.fw = add i64 %i.ca, %.1.i
  %i.fx = shl i64 %i.fw, 3                        ; 2 uses
  %i.fy = sub i64 %9, %i.fx
  %i.fz = getelementptr i8, ptr %2, i64 %i.fy     ; 3 uses
  %i.ga = shl i64 %i.ca, 3
  %i.gb = sub i64 %9, %i.ga
  %i.gc = getelementptr i8, ptr %2, i64 %i.gb     ; 3 uses
  %i.gd = shl i64 %.0133202, 3
  %12 = sub i64 %.0133202, %.1.i
  %i.ge = shl i64 %12, 3
  %i.gf = getelementptr i8, ptr %10, i64 %i.ge    ; 3 uses
  %i.gg = sub i64 %i.bk, %i.fx
  %i.gh = getelementptr i8, ptr %2, i64 %i.gg     ; 3 uses
  %i.gi = getelementptr i8, ptr %11, i64 %i.gd    ; 3 uses
  %bound0320 = icmp ult ptr %i.et, %i.gc
  %bound1321 = icmp ult ptr %i.er, %i.fz
  %found.conflict322 = and i1 %bound0320, %bound1321
  %bound0323 = icmp ult ptr %i.et, %i.gh
  %bound1324 = icmp ult ptr %i.gf, %i.fz
  %found.conflict325 = and i1 %bound0323, %bound1324
  %conflict.rdx = or i1 %found.conflict322, %found.conflict325
  %bound0326 = icmp ult ptr %i.et, %i.fp
  %bound1327 = icmp ult ptr %i.gi, %i.fz
  %found.conflict328 = and i1 %bound0326, %bound1327
  %conflict.rdx329 = or i1 %conflict.rdx, %found.conflict328
  %bound0330 = icmp ult ptr %i.er, %i.gh
  %bound1331 = icmp ult ptr %i.gf, %i.gc
  %found.conflict332 = and i1 %bound0330, %bound1331
  %conflict.rdx333 = or i1 %conflict.rdx329, %found.conflict332
  %bound0334 = icmp ult ptr %i.er, %i.fp
  %bound1335 = icmp ult ptr %i.gi, %i.gc
  %found.conflict336 = and i1 %bound0334, %bound1335
  %conflict.rdx337 = or i1 %conflict.rdx333, %found.conflict336
  %bound0338 = icmp ult ptr %i.gf, %i.fp
  %bound1339 = icmp ult ptr %i.gi, %i.gh
  %found.conflict340 = and i1 %bound0338, %bound1339
  %conflict.rdx341 = or i1 %conflict.rdx337, %found.conflict340
  br i1 %conflict.rdx341, label %.lr.ph.i.i169.preheader430, label %vector.ph342

vector.ph342:                                     ; preds = %vector.memcheck319
  %n.vec343 = and i64 %i.fv, 4611686018427387900  ; 3 uses
  %i.gj = shl i64 %n.vec343, 3                    ; 2 uses
  %i.gk = getelementptr i8, ptr %i.et, i64 %i.gj
  %i.gl = getelementptr i8, ptr %i.er, i64 %i.gj
  br label %vector.body344

vector.body344:                                   ; preds = %vector.body344, %vector.ph342
  %index345 = phi i64 [ 0, %vector.ph342 ], [ %index.next358, %vector.body344 ] ; 2 uses
  %i.gm = shl i64 %index345, 3                    ; 3 uses
  %i.gn = or disjoint i64 %i.gm, 16               ; 2 uses
  %next.gep346 = getelementptr i8, ptr %i.et, i64 %i.gm
  %next.gep347 = getelementptr i8, ptr %i.et, i64 %i.gn
  %next.gep348 = getelementptr i8, ptr %i.er, i64 %i.gm ; 2 uses
  %next.gep349 = getelementptr i8, ptr %i.er, i64 %i.gn ; 2 uses
  %wide.vec350 = load <4 x i32>, ptr %next.gep348, align 4, !tbaa !343
  %wide.vec353 = load <4 x i32>, ptr %next.gep349, align 4, !tbaa !343
  store <4 x i32> %wide.vec350, ptr %next.gep346, align 4, !tbaa !343
  store <4 x i32> %wide.vec353, ptr %next.gep347, align 4, !tbaa !343
  store <4 x i32> zeroinitializer, ptr %next.gep348, align 4, !tbaa !343
  store <4 x i32> zeroinitializer, ptr %next.gep349, align 4, !tbaa !343
  %index.next358 = add nuw i64 %index345, 4       ; 2 uses
  %i.go = icmp eq i64 %index.next358, %n.vec343
  br i1 %i.go, label %middle.block359, label %vector.body344, !llvm.loop !7008

middle.block359:                                  ; preds = %vector.body344
  %cmp.n360 = icmp eq i64 %i.fv, %n.vec343
  br i1 %cmp.n360, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EEEEvT_NS0_9iter_sizeISA_E4typeESA_b.exit, label %.lr.ph.i.i169.preheader430

.lr.ph.i.i169.preheader430:                       ; preds = %vector.memcheck319, %.lr.ph.i.i169.preheader, %middle.block359
  %.010.i.i170.ph = phi ptr [ %i.et, %vector.memcheck319 ], [ %i.et, %.lr.ph.i.i169.preheader ], [ %i.gk, %middle.block359 ]
  %.079.i.i171.ph = phi ptr [ %i.er, %vector.memcheck319 ], [ %i.er, %.lr.ph.i.i169.preheader ], [ %i.gl, %middle.block359 ]
  br label %.lr.ph.i.i169

.lr.ph.i.i169:                                    ; preds = %.lr.ph.i.i169.preheader430, %.lr.ph.i.i169
  %.010.i.i170 = phi ptr [ %i.gu, %.lr.ph.i.i169 ], [ %.010.i.i170.ph, %.lr.ph.i.i169.preheader430 ] ; 3 uses
  %.079.i.i171 = phi ptr [ %i.gt, %.lr.ph.i.i169 ], [ %.079.i.i171.ph, %.lr.ph.i.i169.preheader430 ] ; 4 uses
  %i.gp = load i32, ptr %.079.i.i171, align 4, !tbaa !343
  store i32 %i.gp, ptr %.010.i.i170, align 4, !tbaa !343
  store i32 0, ptr %.079.i.i171, align 4, !tbaa !343
  %i.gq = getelementptr inbounds nuw i8, ptr %.079.i.i171, i64 4 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.010.i.i170, i64 4
  %i.gs = load i32, ptr %i.gq, align 4, !tbaa !343
  store i32 %i.gs, ptr %i.gr, align 4, !tbaa !343
  store i32 0, ptr %i.gq, align 4, !tbaa !343
  %i.gt = getelementptr inbounds nuw i8, ptr %.079.i.i171, i64 8 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.010.i.i170, i64 8
  %.not.i.i172 = icmp eq ptr %i.gt, %i.fp
  br i1 %.not.i.i172, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EEEEvT_NS0_9iter_sizeISA_E4typeESA_b.exit, label %.lr.ph.i.i169, !llvm.loop !7009

.lr.ph.i9.i:                                      ; preds = %bb.n, %.lr.ph.i9.i
  %.010.i10.i = phi ptr [ %i.hc, %.lr.ph.i9.i ], [ %i.et, %bb.n ] ; 4 uses
  %.079.i11.i = phi ptr [ %i.hb, %.lr.ph.i9.i ], [ %i.er, %bb.n ] ; 5 uses
  %i.gv = load i32, ptr %.079.i11.i, align 4, !tbaa !343
  store i32 0, ptr %.079.i11.i, align 4, !tbaa !343
  %i.gw = load i32, ptr %.010.i10.i, align 4, !tbaa !343
  store i32 %i.gw, ptr %.079.i11.i, align 4, !tbaa !343
  store i32 %i.gv, ptr %.010.i10.i, align 4, !tbaa !343
  %i.gx = getelementptr inbounds nuw i8, ptr %.079.i11.i, i64 4 ; 3 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.010.i10.i, i64 4 ; 2 uses
  %i.gz = load i32, ptr %i.gx, align 4, !tbaa !343
  store i32 0, ptr %i.gx, align 4, !tbaa !343
  %i.ha = load i32, ptr %i.gy, align 4, !tbaa !343
  store i32 %i.ha, ptr %i.gx, align 4, !tbaa !343
  store i32 %i.gz, ptr %i.gy, align 4, !tbaa !343
  %i.hb = getelementptr inbounds nuw i8, ptr %.079.i11.i, i64 8 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.010.i10.i, i64 8
  %.not.i12.i = icmp eq ptr %i.hb, %i.fp
  br i1 %.not.i12.i, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EEEEvT_NS0_9iter_sizeISA_E4typeESA_b.exit, label %.lr.ph.i9.i, !llvm.loop !105

_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EEEEvT_NS0_9iter_sizeISA_E4typeESA_b.exit: ; preds = %.lr.ph.i10.i.prol.loopexit, %.lr.ph.i10.i, %.lr.ph.i.i149.prol.loopexit, %.lr.ph.i.i149, %.lr.ph.i9.i, %.lr.ph.i.i169, %.lr.ph.i10.i156, %.lr.ph.i.i162, %middle.block359, %bb.j, %bb.i, %bb.m, %_ZN5boost7movelib15detail_adaptive18lblock_for_combineImEET_S3_S3_S3_Rb.exit
  %.not140 = icmp eq i64 %i.bq, 0
  br i1 %.not140, label %bb.r, label %bb.o

bb.o:                                             ; preds = %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EEEEvT_NS0_9iter_sizeISA_E4typeESA_b.exit
  %i.hd = udiv i64 %i.br, %.1.i
  %i.he = icmp ugt i64 %i.hd, 256
  br i1 %i.he, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %.not6 = xor i1 %.1, true
  %or.cond8 = select i1 %.not6, i1 true, i1 %i.by
  %i.hf = sub i64 0, %.1.i
  %.idx142 = select i1 %or.cond8, i64 0, i64 %i.hf
  %i.hg = getelementptr inbounds [8 x i8], ptr %i.c, i64 %.idx142
  call void @_ZN5boost7movelib15detail_adaptive28adaptive_sort_combine_blocksIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EENS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEES9_SF_NS0_13adaptive_xbufIS8_S9_mEEEEvT_T0_T1_NS0_9iter_sizeISK_E4typeESN_SN_bbRT3_T2_b(ptr noundef %0, ptr noundef %i.hg, i64 noundef %i.d, i64 noundef %.0206, i64 noundef %.1.i, i1 noundef zeroext %.1, i1 noundef zeroext %or.cond188, ptr noundef nonnull align 8 dereferenceable(24) %6, i1 noundef zeroext %i.by)
  br label %bb.s

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %.not9 = xor i1 %.1, true
  %or.cond11 = select i1 %.not9, i1 true, i1 %i.by
  %i.hh = sub i64 0, %.1.i
  %.idx141 = select i1 %or.cond11, i64 0, i64 %i.hh
  %i.hi = getelementptr inbounds [8 x i8], ptr %i.c, i64 %.idx141
  call void @_ZN5boost7movelib15detail_adaptive28adaptive_sort_combine_blocksIPhNS1_4lessEPNS_9container3dtl4pairINS5_4test24movable_and_copyable_intES9_EENS6_23flat_tree_value_compareISt4lessIS9_ESA_NS6_9select1stIS9_EEEENS0_13adaptive_xbufISA_SB_mEEEEvT_T0_T1_NS0_9iter_sizeISM_E4typeESP_SP_bbRT3_T2_b(ptr noundef nonnull %i.a, ptr noundef %i.hi, i64 noundef %i.d, i64 noundef %.0206, i64 noundef %.1.i, i1 noundef zeroext %.1, i1 noundef zeroext %or.cond188, ptr noundef nonnull align 8 dereferenceable(24) %6, i1 noundef zeroext %i.by)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.s

bb.r:                                             ; preds = %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EEEEvT_NS0_9iter_sizeISA_E4typeESA_b.exit
  %i.hj = load i64, ptr %i.bj, align 8, !tbaa !359
  %i.hk = load ptr, ptr %6, align 8, !tbaa !358
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.hk, i64 %i.hj
  %i.hm = ptrtoint ptr %i.hl to i64
  %i.hn = add i64 %i.hm, 7
  %i.ho = and i64 %i.hn, -8
  %i.hp = inttoptr i64 %i.ho to ptr
  %.not12 = xor i1 %.1, true
  %or.cond14 = select i1 %.not12, i1 true, i1 %i.by
  %i.hq = sub i64 0, %.1.i
  %.idx = select i1 %or.cond14, i64 0, i64 %i.hq
  %i.hr = getelementptr inbounds [8 x i8], ptr %i.c, i64 %.idx
  call void @_ZN5boost7movelib15detail_adaptive28adaptive_sort_combine_blocksIPmNS1_4lessEPNS_9container3dtl4pairINS5_4test24movable_and_copyable_intES9_EENS6_23flat_tree_value_compareISt4lessIS9_ESA_NS6_9select1stIS9_EEEENS0_13adaptive_xbufISA_SB_mEEEEvT_T0_T1_NS0_9iter_sizeISM_E4typeESP_SP_bbRT3_T2_b(ptr noundef %i.hp, ptr noundef %i.hr, i64 noundef %i.d, i64 noundef %.0206, i64 noundef %.1.i, i1 noundef zeroext %.1, i1 noundef zeroext %or.cond188, ptr noundef nonnull align 8 dereferenceable(24) %6, i1 noundef zeroext %i.by)
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.q, %bb.r
  %i.hs = add i64 %.0130205, 1
  %i.ht = icmp ugt i64 %i.d, %i.br
  br i1 %i.ht, label %bb.d, label %._crit_edge, !llvm.loop !7010

bb.t:                                             ; preds = %._crit_edge
  %i.hu = load ptr, ptr %6, align 8, !tbaa !358   ; 13 uses
  %i.hv = load i64, ptr %5, align 8, !tbaa !340   ; 3 uses
  %.idx192 = shl i64 %i.hv, 3                     ; 4 uses
  %i.hw = getelementptr i8, ptr %i.hu, i64 %.idx192 ; 4 uses
  %.not8.i = icmp eq i64 %i.hv, 0                 ; 2 uses
  br i1 %i.bn, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  br i1 %.not8.i, label %_ZN5boost4moveIPNS_9container3dtl4pairINS1_4test24movable_and_copyable_intES5_EES7_EET0_T_S9_S8_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.u
  %i.hx = getelementptr [8 x i8], ptr %2, i64 %i.d ; 6 uses
  %i.hy = add i64 %.idx192, -8                    ; 2 uses
  %i.hz = lshr exact i64 %i.hy, 3
  %i.ia = add nuw nsw i64 %i.hz, 1                ; 2 uses
  %min.iters.check399 = icmp ult i64 %i.hy, 72
  br i1 %min.iters.check399, label %.lr.ph.i.preheader426, label %vector.memcheck400

vector.memcheck400:                               ; preds = %.lr.ph.i.preheader
  %.idx192425 = add i64 %i.hv, %3
  %i.ib = sub i64 %.idx192425, %i.b
  %i.ic = shl i64 %i.ib, 3
  %i.id = getelementptr i8, ptr %2, i64 %i.ic
  %bound0401 = icmp ult ptr %i.hx, %i.hw
  %bound1402 = icmp ult ptr %i.hu, %i.id
  %found.conflict403 = and i1 %bound0401, %bound1402
  br i1 %found.conflict403, label %.lr.ph.i.preheader426, label %vector.ph404

vector.ph404:                                     ; preds = %vector.memcheck400
  %n.vec405 = and i64 %i.ia, 4611686018427387900  ; 3 uses
  %i.ie = shl i64 %n.vec405, 3                    ; 2 uses
  %i.if = getelementptr i8, ptr %i.hx, i64 %i.ie
  %i.ig = getelementptr i8, ptr %i.hu, i64 %i.ie
  br label %vector.body406

vector.body406:                                   ; preds = %vector.body406, %vector.ph404
  %index407 = phi i64 [ 0, %vector.ph404 ], [ %index.next420, %vector.body406 ] ; 2 uses
  %i.ih = shl i64 %index407, 3                    ; 3 uses
  %i.ii = or disjoint i64 %i.ih, 16               ; 2 uses
  %next.gep408 = getelementptr i8, ptr %i.hx, i64 %i.ih
  %next.gep409 = getelementptr i8, ptr %i.hx, i64 %i.ii
  %next.gep410 = getelementptr i8, ptr %i.hu, i64 %i.ih ; 2 uses
  %next.gep411 = getelementptr i8, ptr %i.hu, i64 %i.ii ; 2 uses
  %wide.vec412 = load <4 x i32>, ptr %next.gep410, align 4, !tbaa !343, !alias.scope !7025
  %wide.vec415 = load <4 x i32>, ptr %next.gep411, align 4, !tbaa !343, !alias.scope !7025
  store <4 x i32> %wide.vec412, ptr %next.gep408, align 4, !tbaa !343, !alias.scope !7026, !noalias !7025
  store <4 x i32> %wide.vec415, ptr %next.gep409, align 4, !tbaa !343, !alias.scope !7026, !noalias !7025
  store <4 x i32> zeroinitializer, ptr %next.gep410, align 4, !tbaa !343, !alias.scope !7025
  store <4 x i32> zeroinitializer, ptr %next.gep411, align 4, !tbaa !343, !alias.scope !7025
  %index.next420 = add nuw i64 %index407, 4       ; 2 uses
  %i.ij = icmp eq i64 %index.next420, %n.vec405
  br i1 %i.ij, label %middle.block421, label %vector.body406, !llvm.loop !7014

middle.block421:                                  ; preds = %vector.body406
end_hunk_0
begin_hunk_1_@_ZN5boost7movelib15detail_adaptive27op_insertion_sort_step_leftIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EENS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEENS0_7move_opEEENS0_9iter_sizeIT_E4typeESI_SK_SK_T0_T1_:bb.a
  br i1 %i.a, label %.lr.ph, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.pre = sub nsw i64 0, %.sroa.speculated
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.idx37 = shl nuw nsw i64 %.sroa.speculated, 3
  %i.b = sub nsw i64 0, %.sroa.speculated         ; 5 uses
  switch i64 %2, label %.lr.ph43.i.preheader [
    i64 0, label %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEENS3_4pairIS7_S7_EENS3_9select1stIS7_EEEEPSA_SE_NS0_7move_opEEEvT0_SG_T1_T_T2_.exit.us
    i64 1, label %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEENS3_4pairIS7_S7_EENS3_9select1stIS7_EEEEPSA_SE_NS0_7move_opEEEvT0_SG_T1_T_T2_.exit.us40
  ]

_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEENS3_4pairIS7_S7_EENS3_9select1stIS7_EEEEPSA_SE_NS0_7move_opEEEvT0_SG_T1_T_T2_.exit.us: ; preds = %.lr.ph, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEENS3_4pairIS7_S7_EENS3_9select1stIS7_EEEEPSA_SE_NS0_7move_opEEEvT0_SG_T1_T_T2_.exit.us
  %.038.us = phi i64 [ %i.c, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEENS3_4pairIS7_S7_EENS3_9select1stIS7_EEEEPSA_SE_NS0_7move_opEEEvT0_SG_T1_T_T2_.exit.us ], [ %2, %.lr.ph ]
  %i.c = add i64 %.038.us, %.sroa.speculated      ; 3 uses
  %i.d = sub i64 %1, %i.c
  %i.e = icmp ugt i64 %i.d, %.sroa.speculated
  br i1 %i.e, label %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEENS3_4pairIS7_S7_EENS3_9select1stIS7_EEEEPSA_SE_NS0_7move_opEEEvT0_SG_T1_T_T2_.exit.us, label %._crit_edge, !llvm.loop !7056

_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEENS3_4pairIS7_S7_EENS3_9select1stIS7_EEEEPSA_SE_NS0_7move_opEEEvT0_SG_T1_T_T2_.exit.us40: ; preds = %.lr.ph, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEENS3_4pairIS7_S7_EENS3_9select1stIS7_EEEEPSA_SE_NS0_7move_opEEEvT0_SG_T1_T_T2_.exit.us40
  %.038.us39 = phi i64 [ %i.j, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEENS3_4pairIS7_S7_EENS3_9select1stIS7_EEEEPSA_SE_NS0_7move_opEEEvT0_SG_T1_T_T2_.exit.us40 ], [ 0, %.lr.ph ] ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.038.us39 ; 4 uses
  %i.g = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.i = load <2 x i32>, ptr %i.f, align 4, !tbaa !343
  store <2 x i32> %i.i, ptr %i.g, align 4, !tbaa !343
  store i32 0, ptr %i.f, align 4, !tbaa !343
  store i32 0, ptr %i.h, align 4, !tbaa !343
  %i.j = add i64 %.038.us39, %.sroa.speculated    ; 3 uses
  %i.k = sub i64 %1, %i.j
  %i.l = icmp ugt i64 %i.k, %.sroa.speculated
  br i1 %i.l, label %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEENS3_4pairIS7_S7_EENS3_9select1stIS7_EEEEPSA_SE_NS0_7move_opEEEvT0_SG_T1_T_T2_.exit.us40, label %._crit_edge, !llvm.loop !7056

.lr.ph43.i.preheader:                             ; preds = %.lr.ph, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEENS3_4pairIS7_S7_EENS3_9select1stIS7_EEEEPSA_SE_NS0_7move_opEEEvT0_SG_T1_T_T2_.exit.loopexit
  %.038 = phi i64 [ %i.al, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEENS3_4pairIS7_S7_EENS3_9select1stIS7_EEEEPSA_SE_NS0_7move_opEEEvT0_SG_T1_T_T2_.exit.loopexit ], [ 0, %.lr.ph ] ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.038 ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx37
  %i.o = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.b ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.q = load <2 x i32>, ptr %i.m, align 4, !tbaa !343
  store <2 x i32> %i.q, ptr %i.o, align 4, !tbaa !343
  store i32 0, ptr %i.m, align 4, !tbaa !343
  store i32 0, ptr %i.p, align 4, !tbaa !343
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  br label %.lr.ph43.i

.lr.ph43.i:                                       ; preds = %.lr.ph43.i.preheader, %.critedge.i
  %i.s = phi ptr [ %i.ak, %.critedge.i ], [ %i.r, %.lr.ph43.i.preheader ] ; 6 uses
  %.pn41.i = phi ptr [ %.02642.i, %.critedge.i ], [ %i.o, %.lr.ph43.i.preheader ] ; 7 uses
  %.02740.i = phi ptr [ %i.s, %.critedge.i ], [ %i.m, %.lr.ph43.i.preheader ]
  %.02642.i = getelementptr inbounds nuw i8, ptr %.pn41.i, i64 8 ; 3 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !343
  %i.u = load i32, ptr %.pn41.i, align 4, !tbaa !343 ; 2 uses
  %i.v = icmp slt i32 %i.t, %i.u
  br i1 %i.v, label %bb.b, label %.critedge.i

bb.b:                                             ; preds = %.lr.ph43.i
  store i32 %i.u, ptr %.02642.i, align 4, !tbaa !343
  store i32 0, ptr %.pn41.i, align 4, !tbaa !343
  %i.w = getelementptr inbounds nuw i8, ptr %.pn41.i, i64 4 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.pn41.i, i64 12
  %i.y = load i32, ptr %i.w, align 4, !tbaa !343
  store i32 %i.y, ptr %i.x, align 4, !tbaa !343
  store i32 0, ptr %i.w, align 4, !tbaa !343
  %.not3233.i = icmp eq ptr %.pn41.i, %i.o
  br i1 %.not3233.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.035.i = phi ptr [ %i.z, %bb.c ], [ %.pn41.i, %bb.b ] ; 5 uses
  %i.z = getelementptr i8, ptr %.035.i, i64 -8    ; 4 uses
  %i.aa = load i32, ptr %i.s, align 4, !tbaa !343
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !343 ; 2 uses
  %i.ac = icmp slt i32 %i.aa, %i.ab
  br i1 %i.ac, label %bb.c, label %.critedge.i

bb.c:                                             ; preds = %.lr.ph.i
  store i32 %i.ab, ptr %.035.i, align 4, !tbaa !343
  store i32 0, ptr %i.z, align 4, !tbaa !343
  %i.ad = getelementptr inbounds i8, ptr %.035.i, i64 -4 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.035.i, i64 4
  %i.af = load i32, ptr %i.ad, align 4, !tbaa !343
  store i32 %i.af, ptr %i.ae, align 4, !tbaa !343
  store i32 0, ptr %i.ad, align 4, !tbaa !343
  %.not32.i = icmp eq ptr %i.z, %i.o
  br i1 %.not32.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !142

.critedge.i:                                      ; preds = %bb.c, %.lr.ph.i, %bb.b, %.lr.ph43.i
  %.1.i = phi ptr [ %.02642.i, %.lr.ph43.i ], [ %i.o, %bb.b ], [ %.035.i, %.lr.ph.i ], [ %i.o, %bb.c ] ; 2 uses
  %i.ag = load i32, ptr %i.s, align 4, !tbaa !343
  store i32 %i.ag, ptr %.1.i, align 4, !tbaa !343
  store i32 0, ptr %i.s, align 4, !tbaa !343
  %i.ah = getelementptr inbounds nuw i8, ptr %.02740.i, i64 12 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.1.i, i64 4
  %i.aj = load i32, ptr %i.ah, align 4, !tbaa !343
  store i32 %i.aj, ptr %i.ai, align 4, !tbaa !343
  store i32 0, ptr %i.ah, align 4, !tbaa !343
  %i.ak = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %.not31.i = icmp eq ptr %i.ak, %i.n
  br i1 %.not31.i, label %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEENS3_4pairIS7_S7_EENS3_9select1stIS7_EEEEPSA_SE_NS0_7move_opEEEvT0_SG_T1_T_T2_.exit.loopexit, label %.lr.ph43.i, !llvm.loop !143

_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEENS3_4pairIS7_S7_EENS3_9select1stIS7_EEEEPSA_SE_NS0_7move_opEEEvT0_SG_T1_T_T2_.exit.loopexit: ; preds = %.critedge.i
  %i.al = add i64 %.038, %.sroa.speculated        ; 3 uses
  %i.am = sub i64 %1, %i.al
  %i.an = icmp ugt i64 %i.am, %.sroa.speculated
  br i1 %i.an, label %.lr.ph43.i.preheader, label %._crit_edge, !llvm.loop !7056

._crit_edge:                                      ; preds = %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEENS3_4pairIS7_S7_EENS3_9select1stIS7_EEEEPSA_SE_NS0_7move_opEEEvT0_SG_T1_T_T2_.exit.us40, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEENS3_4pairIS7_S7_EENS3_9select1stIS7_EEEEPSA_SE_NS0_7move_opEEEvT0_SG_T1_T_T2_.exit.us, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEENS3_4pairIS7_S7_EENS3_9select1stIS7_EEEEPSA_SE_NS0_7move_opEEEvT0_SG_T1_T_T2_.exit.loopexit, %.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.._crit_edge_crit_edge ], [ %i.b, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEENS3_4pairIS7_S7_EENS3_9select1stIS7_EEEEPSA_SE_NS0_7move_opEEEvT0_SG_T1_T_T2_.exit.us ], [ %i.b, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEENS3_4pairIS7_S7_EENS3_9select1stIS7_EEEEPSA_SE_NS0_7move_opEEEvT0_SG_T1_T_T2_.exit.loopexit ], [ %i.b, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEENS3_4pairIS7_S7_EENS3_9select1stIS7_EEEEPSA_SE_NS0_7move_opEEEvT0_SG_T1_T_T2_.exit.us40 ]
  %.0.lcssa = phi i64 [ 0, %.._crit_edge_crit_edge ], [ %i.c, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEENS3_4pairIS7_S7_EENS3_9select1stIS7_EEEEPSA_SE_NS0_7move_opEEEvT0_SG_T1_T_T2_.exit.us ], [ %i.al, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEENS3_4pairIS7_S7_EENS3_9select1stIS7_EEEEPSA_SE_NS0_7move_opEEEvT0_SG_T1_T_T2_.exit.loopexit ], [ %i.j, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEENS3_4pairIS7_S7_EENS3_9select1stIS7_EEEEPSA_SE_NS0_7move_opEEEvT0_SG_T1_T_T2_.exit.us40 ] ; 2 uses
  %.idx = shl nuw nsw i64 %.0.lcssa, 3            ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 6 uses
  %.idx36 = shl nuw nsw i64 %1, 3                 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %.idx36
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %.pre-phi ; 6 uses
  %.not.i21 = icmp samesign eq i64 %.0.lcssa, %1
  br i1 %.not.i21, label %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEENS3_4pairIS7_S7_EENS3_9select1stIS7_EEEEPSA_SE_NS0_7move_opEEEvT0_SG_T1_T_T2_.exit34, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.as = load <2 x i32>, ptr %i.ao, align 4, !tbaa !343
  store <2 x i32> %i.as, ptr %i.aq, align 4, !tbaa !343
  store i32 0, ptr %i.ao, align 4, !tbaa !343
  store i32 0, ptr %i.ar, align 4, !tbaa !343
  %i.at = add nuw nsw i64 %.idx, 8
  %.not3139.i22 = icmp samesign eq i64 %i.at, %.idx36
  br i1 %.not3139.i22, label %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEENS3_4pairIS7_S7_EENS3_9select1stIS7_EEEEPSA_SE_NS0_7move_opEEEvT0_SG_T1_T_T2_.exit34, label %.lr.ph43.i23.preheader

.lr.ph43.i23.preheader:                           ; preds = %bb.d
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  br label %.lr.ph43.i23

.lr.ph43.i23:                                     ; preds = %.lr.ph43.i23.preheader, %.critedge.i27
  %i.av = phi ptr [ %i.bn, %.critedge.i27 ], [ %i.au, %.lr.ph43.i23.preheader ] ; 6 uses
  %.pn41.i24 = phi ptr [ %.02642.i26, %.critedge.i27 ], [ %i.aq, %.lr.ph43.i23.preheader ] ; 7 uses
  %.02740.i25 = phi ptr [ %i.av, %.critedge.i27 ], [ %i.ao, %.lr.ph43.i23.preheader ]
  %.02642.i26 = getelementptr inbounds nuw i8, ptr %.pn41.i24, i64 8 ; 3 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !343
  %i.ax = load i32, ptr %.pn41.i24, align 4, !tbaa !343 ; 2 uses
  %i.ay = icmp slt i32 %i.aw, %i.ax
  br i1 %i.ay, label %bb.e, label %.critedge.i27

bb.e:                                             ; preds = %.lr.ph43.i23
  store i32 %i.ax, ptr %.02642.i26, align 4, !tbaa !343
  store i32 0, ptr %.pn41.i24, align 4, !tbaa !343
  %i.az = getelementptr inbounds nuw i8, ptr %.pn41.i24, i64 4 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.pn41.i24, i64 12
  %i.bb = load i32, ptr %i.az, align 4, !tbaa !343
  store i32 %i.bb, ptr %i.ba, align 4, !tbaa !343
  store i32 0, ptr %i.az, align 4, !tbaa !343
  %.not3233.i30 = icmp eq ptr %.pn41.i24, %i.aq
  br i1 %.not3233.i30, label %.critedge.i27, label %.lr.ph.i31

.lr.ph.i31:                                       ; preds = %bb.e, %bb.f
  %.035.i32 = phi ptr [ %i.bc, %bb.f ], [ %.pn41.i24, %bb.e ] ; 5 uses
  %i.bc = getelementptr i8, ptr %.035.i32, i64 -8 ; 4 uses
  %i.bd = load i32, ptr %i.av, align 4, !tbaa !343
  %i.be = load i32, ptr %i.bc, align 4, !tbaa !343 ; 2 uses
  %i.bf = icmp slt i32 %i.bd, %i.be
  br i1 %i.bf, label %bb.f, label %.critedge.i27

bb.f:                                             ; preds = %.lr.ph.i31
  store i32 %i.be, ptr %.035.i32, align 4, !tbaa !343
  store i32 0, ptr %i.bc, align 4, !tbaa !343
  %i.bg = getelementptr inbounds i8, ptr %.035.i32, i64 -4 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.035.i32, i64 4
  %i.bi = load i32, ptr %i.bg, align 4, !tbaa !343
  store i32 %i.bi, ptr %i.bh, align 4, !tbaa !343
  store i32 0, ptr %i.bg, align 4, !tbaa !343
  %.not32.i33 = icmp eq ptr %i.bc, %i.aq
  br i1 %.not32.i33, label %.critedge.i27, label %.lr.ph.i31, !llvm.loop !142

.critedge.i27:                                    ; preds = %bb.f, %.lr.ph.i31, %bb.e, %.lr.ph43.i23
  %.1.i28 = phi ptr [ %.02642.i26, %.lr.ph43.i23 ], [ %i.aq, %bb.e ], [ %.035.i32, %.lr.ph.i31 ], [ %i.aq, %bb.f ] ; 2 uses
  %i.bj = load i32, ptr %i.av, align 4, !tbaa !343
  store i32 %i.bj, ptr %.1.i28, align 4, !tbaa !343
  store i32 0, ptr %i.av, align 4, !tbaa !343
  %i.bk = getelementptr inbounds nuw i8, ptr %.02740.i25, i64 12 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.1.i28, i64 4
  %i.bm = load i32, ptr %i.bk, align 4, !tbaa !343
  store i32 %i.bm, ptr %i.bl, align 4, !tbaa !343
  store i32 0, ptr %i.bk, align 4, !tbaa !343
  %i.bn = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 2 uses
  %.not31.i29 = icmp eq ptr %i.bn, %i.ap
  br i1 %.not31.i29, label %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEENS3_4pairIS7_S7_EENS3_9select1stIS7_EEEEPSA_SE_NS0_7move_opEEEvT0_SG_T1_T_T2_.exit34, label %.lr.ph43.i23, !llvm.loop !143

_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEENS3_4pairIS7_S7_EENS3_9select1stIS7_EEEEPSA_SE_NS0_7move_opEEEvT0_SG_T1_T_T2_.exit34: ; preds = %.critedge.i27, %._crit_edge, %bb.d
  ret i64 %.sroa.speculated
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost7movelib15detail_adaptive27op_merge_left_step_multipleIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EENS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEENS0_7move_opEEENS0_9iter_sizeIT_E4typeESI_SK_SK_SK_SK_T0_T1_(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = icmp ult i64 %2, %3
  %i.b = icmp uge i64 %4, %2
  %i.c = and i1 %i.a, %i.b
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge88

.preheader.lr.ph:                                 ; preds = %bb.a
  %.idx68 = shl i64 %1, 3                         ; 5 uses
  %5 = add i64 %.idx68, -8                        ; 2 uses
  %invariant.op = add i64 %.idx68, -8
  %invariant.op589 = add i64 %.idx68, -8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_ZN5boost7movelib13op_merge_leftIPNS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EENS3_23flat_tree_value_compareISt4lessIS6_ES7_NS3_9select1stIS6_EEEENS0_7move_opEEEvT_SG_SG_SG_T0_T1_.exit67
  %.04087 = phi i64 [ %4, %.preheader.lr.ph ], [ %i.jc, %_ZN5boost7movelib13op_merge_leftIPNS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EENS3_23flat_tree_value_compareISt4lessIS6_ES7_NS3_9select1stIS6_EEEENS0_7move_opEEEvT_SG_SG_SG_T0_T1_.exit67 ]
  %.04186 = phi ptr [ %0, %.preheader.lr.ph ], [ %i.jb, %_ZN5boost7movelib13op_merge_leftIPNS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EENS3_23flat_tree_value_compareISt4lessIS6_ES7_NS3_9select1stIS6_EEEENS0_7move_opEEEvT_SG_SG_SG_T0_T1_.exit67 ] ; 10 uses
  %.04285 = phi i64 [ %2, %.preheader.lr.ph ], [ %i.d, %_ZN5boost7movelib13op_merge_leftIPNS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EENS3_23flat_tree_value_compareISt4lessIS6_ES7_NS3_9select1stIS6_EEEENS0_7move_opEEEvT_SG_SG_SG_T0_T1_.exit67 ] ; 15 uses
  %.04186239 = ptrtoaddr ptr %.04186 to i64       ; 7 uses
  %i.d = shl i64 %.04285, 1                       ; 8 uses
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.f = sub i64 0, %.04285
  %.not43.i = icmp eq i64 %.04285, 0
  %i.g = shl i64 %.04285, 4                       ; 3 uses
  %i.h = add i64 %.04186239, -8                   ; 2 uses
  %i.i = shl i64 %.04285, 3                       ; 3 uses
  %i.j = add i64 %i.h, %i.i
  %i.k = add i64 %i.h, %i.g
  %i.l = shl i64 %.04285, 4                       ; 2 uses
  %i.m = add i64 %i.l, %.04186239
  %i.n = add i64 %i.m, -8
  %i.o = shl i64 %.04285, 3
  %i.p = add i64 %i.o, %.04186239
  %i.q = add i64 %i.p, -8
  %i.r = shl i64 %.04285, 4
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib13op_merge_leftIPNS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EENS3_23flat_tree_value_compareISt4lessIS6_ES7_NS3_9select1stIS6_EEEENS0_7move_opEEEvT_SG_SG_SG_T0_T1_.exit
  %indvar404 = phi i64 [ 0, %.lr.ph ], [ %indvar.next405, %_ZN5boost7movelib13op_merge_leftIPNS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EENS3_23flat_tree_value_compareISt4lessIS6_ES7_NS3_9select1stIS6_EEEENS0_7move_opEEEvT_SG_SG_SG_T0_T1_.exit ] ; 5 uses
  %.080 = phi ptr [ %.04186, %.lr.ph ], [ %.0, %_ZN5boost7movelib13op_merge_leftIPNS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EENS3_23flat_tree_value_compareISt4lessIS6_ES7_NS3_9select1stIS6_EEEENS0_7move_opEEEvT_SG_SG_SG_T0_T1_.exit ] ; 5 uses
  %.03979 = phi i64 [ 0, %.lr.ph ], [ %i.ey, %_ZN5boost7movelib13op_merge_leftIPNS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EENS3_23flat_tree_value_compareISt4lessIS6_ES7_NS3_9select1stIS6_EEEENS0_7move_opEEEvT_SG_SG_SG_T0_T1_.exit ]
  %i.s = getelementptr [8 x i8], ptr %.080, i64 %i.f ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %.080, i64 %.04285 ; 4 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %.080, i64 %i.d ; 2 uses
  br i1 %.not43.i, label %_ZN5boost7movelib7move_opclIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_EET0_NS0_9forward_tET_SC_SA_.exit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.f
  %indvar488 = phi i64 [ %indvar.next489, %bb.f ], [ 0, %bb.b ] ; 2 uses
  %.02246.i = phi ptr [ %.1.i, %bb.f ], [ %i.t, %bb.b ] ; 17 uses
  %.02345.i = phi ptr [ %i.cs, %bb.f ], [ %i.s, %bb.b ] ; 12 uses
  %.02444.i = phi ptr [ %.125.i, %bb.f ], [ %.080, %bb.b ] ; 6 uses
  %i.v = icmp eq ptr %.02444.i, %i.t
  br i1 %i.v, label %.lr.ph.i.i.i.preheader, label %bb.c

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i
  %.02246.i490.le = ptrtoaddr ptr %.02246.i to i64 ; 2 uses
  %i.w = mul i64 %indvar404, %i.l
  %i.x = add i64 %i.n, %i.w                       ; 2 uses
  %i.y = sub i64 %i.x, %.02246.i490.le            ; 2 uses
  %i.z = lshr i64 %i.y, 3
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %min.iters.check492 = icmp ult i64 %i.y, 152
  br i1 %min.iters.check492, label %.lr.ph.i.i.i.preheader546, label %vector.memcheck493

vector.memcheck493:                               ; preds = %.lr.ph.i.i.i.preheader
  %i.ab = mul i64 %indvar404, %i.g                ; 3 uses
  %reass.sub = sub i64 %i.ab, %i.i
  %i.ac = or disjoint i64 %reass.sub, 4
  %i.ad = shl i64 %indvar488, 3                   ; 2 uses
  %i.ae = add i64 %i.ac, %i.ad                    ; 2 uses
  %i.af = add i64 %i.k, %i.ab
  %i.ag = sub i64 %i.af, %.02246.i490.le
  %i.ah = and i64 %i.ag, -8                       ; 4 uses
  %i.ai = getelementptr i8, ptr %.04186, i64 %i.ae
  %i.aj = getelementptr i8, ptr %i.ai, i64 %i.ah  ; 3 uses
  %i.ak = getelementptr i8, ptr %.02246.i, i64 %i.ah
  %i.al = getelementptr i8, ptr %i.ak, i64 4      ; 3 uses
  %i.am = getelementptr i8, ptr %.04186, i64 %i.ae ; 3 uses
  %reass.sub542 = sub i64 %i.ab, %i.i
  %i.an = getelementptr i8, ptr %.04186, i64 %reass.sub542
  %i.ao = getelementptr i8, ptr %i.an, i64 8
  %i.ap = getelementptr i8, ptr %i.ao, i64 %i.ad
  %i.aq = getelementptr i8, ptr %i.ap, i64 %i.ah  ; 3 uses
  %i.ar = getelementptr i8, ptr %.02246.i, i64 4  ; 3 uses
  %i.as = getelementptr i8, ptr %.02246.i, i64 %i.ah
  %i.at = getelementptr i8, ptr %i.as, i64 8      ; 3 uses
  %bound0494 = icmp ult ptr %.02345.i, %i.al
  %bound1495 = icmp ult ptr %.02246.i, %i.aj
  %found.conflict496 = and i1 %bound0494, %bound1495
  %bound0497 = icmp ult ptr %.02345.i, %i.aq
  %bound1498 = icmp ult ptr %i.am, %i.aj
  %found.conflict499 = and i1 %bound0497, %bound1498
  %conflict.rdx500 = or i1 %found.conflict496, %found.conflict499
  %bound0501 = icmp ult ptr %.02345.i, %i.at
  %bound1502 = icmp ult ptr %i.ar, %i.aj
  %found.conflict503 = and i1 %bound0501, %bound1502
  %conflict.rdx504 = or i1 %conflict.rdx500, %found.conflict503
  %bound0505 = icmp ult ptr %.02246.i, %i.aq
  %bound1506 = icmp ult ptr %i.am, %i.al
  %found.conflict507 = and i1 %bound0505, %bound1506
  %conflict.rdx508 = or i1 %conflict.rdx504, %found.conflict507
  %bound0509 = icmp ult ptr %.02246.i, %i.at
  %bound1510 = icmp ult ptr %i.ar, %i.al
  %found.conflict511 = and i1 %bound0509, %bound1510
  %conflict.rdx512 = or i1 %conflict.rdx508, %found.conflict511
  %bound0513 = icmp ult ptr %i.am, %i.at
  %bound1514 = icmp ult ptr %i.ar, %i.aq
  %found.conflict515 = and i1 %bound0513, %bound1514
  %conflict.rdx516 = or i1 %conflict.rdx512, %found.conflict515
  br i1 %conflict.rdx516, label %.lr.ph.i.i.i.preheader546, label %vector.ph517

vector.ph517:                                     ; preds = %vector.memcheck493
  %n.vec518 = and i64 %i.aa, 4611686018427387900  ; 3 uses
  %i.au = shl i64 %n.vec518, 3                    ; 2 uses
  %i.av = getelementptr i8, ptr %.02345.i, i64 %i.au
  %i.aw = getelementptr i8, ptr %.02246.i, i64 %i.au
  br label %vector.body519

vector.body519:                                   ; preds = %vector.body519, %vector.ph517
  %index520 = phi i64 [ 0, %vector.ph517 ], [ %index.next533, %vector.body519 ] ; 2 uses
  %i.ax = shl i64 %index520, 3                    ; 3 uses
  %i.ay = or disjoint i64 %i.ax, 16               ; 2 uses
  %next.gep521 = getelementptr i8, ptr %.02345.i, i64 %i.ax
  %next.gep522 = getelementptr i8, ptr %.02345.i, i64 %i.ay
  %next.gep523 = getelementptr i8, ptr %.02246.i, i64 %i.ax ; 2 uses
  %next.gep524 = getelementptr i8, ptr %.02246.i, i64 %i.ay ; 2 uses
  %wide.vec525 = load <4 x i32>, ptr %next.gep523, align 4, !tbaa !343
  %wide.vec528 = load <4 x i32>, ptr %next.gep524, align 4, !tbaa !343
  store <4 x i32> %wide.vec525, ptr %next.gep521, align 4, !tbaa !343
  store <4 x i32> %wide.vec528, ptr %next.gep522, align 4, !tbaa !343
  store <4 x i32> zeroinitializer, ptr %next.gep523, align 4, !tbaa !343
  store <4 x i32> zeroinitializer, ptr %next.gep524, align 4, !tbaa !343
  %index.next533 = add nuw i64 %index520, 4       ; 2 uses
  %i.az = icmp eq i64 %index.next533, %n.vec518
  br i1 %i.az, label %middle.block534, label %vector.body519, !llvm.loop !7057

middle.block534:                                  ; preds = %vector.body519
  %cmp.n535 = icmp eq i64 %i.aa, %n.vec518
  br i1 %cmp.n535, label %_ZN5boost7movelib13op_merge_leftIPNS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EENS3_23flat_tree_value_compareISt4lessIS6_ES7_NS3_9select1stIS6_EEEENS0_7move_opEEEvT_SG_SG_SG_T0_T1_.exit, label %.lr.ph.i.i.i.preheader546

.lr.ph.i.i.i.preheader546:                        ; preds = %vector.memcheck493, %.lr.ph.i.i.i.preheader, %middle.block534
  %.010.i.i.i.ph = phi ptr [ %.02345.i, %vector.memcheck493 ], [ %.02345.i, %.lr.ph.i.i.i.preheader ], [ %i.av, %middle.block534 ] ; 2 uses
  %.079.i.i.i.ph = phi ptr [ %.02246.i, %vector.memcheck493 ], [ %.02246.i, %.lr.ph.i.i.i.preheader ], [ %i.aw, %middle.block534 ] ; 3 uses
  %.079.i.i.i.ph566 = ptrtoaddr ptr %.079.i.i.i.ph to i64
  %i.ba = sub i64 %i.x, %.079.i.i.i.ph566         ; 2 uses
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = add nuw nsw i64 %i.bb, 1
  %xtraiter = and i64 %i.bc, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader546, %.lr.ph.i.i.i.prol
  %.010.i.i.i.prol = phi ptr [ %i.bi, %.lr.ph.i.i.i.prol ], [ %.010.i.i.i.ph, %.lr.ph.i.i.i.preheader546 ] ; 3 uses
  %.079.i.i.i.prol = phi ptr [ %i.bh, %.lr.ph.i.i.i.prol ], [ %.079.i.i.i.ph, %.lr.ph.i.i.i.preheader546 ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader546 ]
  %i.bd = load i32, ptr %.079.i.i.i.prol, align 4, !tbaa !343
  store i32 %i.bd, ptr %.010.i.i.i.prol, align 4, !tbaa !343
  store i32 0, ptr %.079.i.i.i.prol, align 4, !tbaa !343
  %i.be = getelementptr inbounds nuw i8, ptr %.079.i.i.i.prol, i64 4 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.010.i.i.i.prol, i64 4
  %i.bg = load i32, ptr %i.be, align 4, !tbaa !343
  store i32 %i.bg, ptr %i.bf, align 4, !tbaa !343
  store i32 0, ptr %i.be, align 4, !tbaa !343
  %i.bh = getelementptr inbounds nuw i8, ptr %.079.i.i.i.prol, i64 8 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.010.i.i.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !7058

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader546
  %.010.i.i.i.unr = phi ptr [ %.010.i.i.i.ph, %.lr.ph.i.i.i.preheader546 ], [ %i.bi, %.lr.ph.i.i.i.prol ]
  %.079.i.i.i.unr = phi ptr [ %.079.i.i.i.ph, %.lr.ph.i.i.i.preheader546 ], [ %i.bh, %.lr.ph.i.i.i.prol ]
  %i.bj = icmp ult i64 %i.ba, 24
  br i1 %i.bj, label %_ZN5boost7movelib13op_merge_leftIPNS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EENS3_23flat_tree_value_compareISt4lessIS6_ES7_NS3_9select1stIS6_EEEENS0_7move_opEEEvT_SG_SG_SG_T0_T1_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.ch, %.lr.ph.i.i.i ], [ %.010.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  %.079.i.i.i = phi ptr [ %i.cg, %.lr.ph.i.i.i ], [ %.079.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 10 uses
  %i.bk = load i32, ptr %.079.i.i.i, align 4, !tbaa !343
  store i32 %i.bk, ptr %.010.i.i.i, align 4, !tbaa !343
  store i32 0, ptr %.079.i.i.i, align 4, !tbaa !343
  %i.bl = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 4 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 4
  %i.bn = load i32, ptr %i.bl, align 4, !tbaa !343
  store i32 %i.bn, ptr %i.bm, align 4, !tbaa !343
  store i32 0, ptr %i.bl, align 4, !tbaa !343
  %i.bo = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 8 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 8
  %i.bq = load i32, ptr %i.bo, align 4, !tbaa !343
  store i32 %i.bq, ptr %i.bp, align 4, !tbaa !343
  store i32 0, ptr %i.bo, align 4, !tbaa !343
  %i.br = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 12 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 12
  %i.bt = load i32, ptr %i.br, align 4, !tbaa !343
  store i32 %i.bt, ptr %i.bs, align 4, !tbaa !343
  store i32 0, ptr %i.br, align 4, !tbaa !343
  %i.bu = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 16 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 16
  %i.bw = load i32, ptr %i.bu, align 4, !tbaa !343
  store i32 %i.bw, ptr %i.bv, align 4, !tbaa !343
  store i32 0, ptr %i.bu, align 4, !tbaa !343
  %i.bx = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 20 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 20
  %i.bz = load i32, ptr %i.bx, align 4, !tbaa !343
  store i32 %i.bz, ptr %i.by, align 4, !tbaa !343
  store i32 0, ptr %i.bx, align 4, !tbaa !343
  %i.ca = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 24 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 24
  %i.cc = load i32, ptr %i.ca, align 4, !tbaa !343
  store i32 %i.cc, ptr %i.cb, align 4, !tbaa !343
  store i32 0, ptr %i.ca, align 4, !tbaa !343
  %i.cd = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 28 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 28
  %i.cf = load i32, ptr %i.cd, align 4, !tbaa !343
  store i32 %i.cf, ptr %i.ce, align 4, !tbaa !343
  store i32 0, ptr %i.cd, align 4, !tbaa !343
end_hunk_1
begin_hunk_2_@_ZN5boost7movelib15detail_adaptive27op_merge_left_step_multipleIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EENS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEENS0_7move_opEEENS0_9iter_sizeIT_E4typeESI_SK_SK_SK_SK_T0_T1_:bb.a
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store i32 %i.cj, ptr %.02345.i, align 4, !tbaa !343
  store i32 0, ptr %.02444.i, align 4, !tbaa !343
  %i.cp = getelementptr inbounds nuw i8, ptr %.02444.i, i64 4 ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !343
  store i32 %i.cq, ptr %i.cl, align 4, !tbaa !343
  store i32 0, ptr %i.cp, align 4, !tbaa !343
  %i.cr = getelementptr inbounds nuw i8, ptr %.02444.i, i64 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.125.i = phi ptr [ %.02444.i, %bb.d ], [ %i.cr, %bb.e ] ; 2 uses
  %.1.i = phi ptr [ %i.co, %bb.d ], [ %.02246.i, %bb.e ] ; 2 uses
  %i.cs = getelementptr i8, ptr %.02345.i, i64 8  ; 2 uses
  %.not.i = icmp eq ptr %.1.i, %i.u
  %indvar.next489 = add i64 %indvar488, 1
  br i1 %.not.i, label %_ZN5boost7movelib7move_opclIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_EET0_NS0_9forward_tET_SC_SA_.exit.i, label %.lr.ph.i, !llvm.loop !7060

_ZN5boost7movelib7move_opclIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_EET0_NS0_9forward_tET_SC_SA_.exit.i: ; preds = %bb.f, %bb.b
  %.024.lcssa.i = phi ptr [ %.080, %bb.b ], [ %.125.i, %bb.f ] ; 14 uses
  %.023.lcssa.i = phi ptr [ %i.s, %bb.b ], [ %i.cs, %bb.f ] ; 12 uses
  %.024.lcssa.i406 = ptrtoaddr ptr %.024.lcssa.i to i64 ; 2 uses
  %.not27.i = icmp eq ptr %.023.lcssa.i, %.024.lcssa.i
  %.not8.i.i28.i = icmp eq ptr %.024.lcssa.i, %i.t
  %or.cond38.i = or i1 %.not8.i.i28.i, %.not27.i
  br i1 %or.cond38.i, label %_ZN5boost7movelib13op_merge_leftIPNS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EENS3_23flat_tree_value_compareISt4lessIS6_ES7_NS3_9select1stIS6_EEEENS0_7move_opEEEvT_SG_SG_SG_T0_T1_.exit, label %.lr.ph.i.i29.i.preheader

.lr.ph.i.i29.i.preheader:                         ; preds = %_ZN5boost7movelib7move_opclIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_EET0_NS0_9forward_tET_SC_SA_.exit.i
  %i.ct = mul i64 %indvar404, %i.r
  %i.cu = add i64 %i.q, %i.ct                     ; 2 uses
  %i.cv = sub i64 %i.cu, %.024.lcssa.i406         ; 2 uses
  %i.cw = lshr i64 %i.cv, 3
  %i.cx = add nuw nsw i64 %i.cw, 1                ; 2 uses
  %min.iters.check408 = icmp ult i64 %i.cv, 136
  br i1 %min.iters.check408, label %.lr.ph.i.i29.i.preheader545, label %vector.memcheck409

vector.memcheck409:                               ; preds = %.lr.ph.i.i29.i.preheader
  %i.cy = mul i64 %indvar404, %i.g
  %i.cz = add i64 %i.j, %i.cy
  %i.da = sub i64 %i.cz, %.024.lcssa.i406
  %i.db = and i64 %i.da, -8                       ; 2 uses
  %i.dc = or disjoint i64 %i.db, 4                ; 2 uses
  %i.dd = getelementptr i8, ptr %.023.lcssa.i, i64 %i.dc ; 3 uses
  %i.de = getelementptr i8, ptr %.024.lcssa.i, i64 %i.dc ; 3 uses
  %i.df = getelementptr i8, ptr %.023.lcssa.i, i64 4 ; 3 uses
  %i.dg = add i64 %i.db, 8                        ; 2 uses
  %i.dh = getelementptr i8, ptr %.023.lcssa.i, i64 %i.dg ; 3 uses
  %i.di = getelementptr i8, ptr %.024.lcssa.i, i64 4 ; 3 uses
  %i.dj = getelementptr i8, ptr %.024.lcssa.i, i64 %i.dg ; 3 uses
  %bound0410 = icmp ult ptr %.023.lcssa.i, %i.de
  %bound1411 = icmp ult ptr %.024.lcssa.i, %i.dd
  %found.conflict412 = and i1 %bound0410, %bound1411
  %bound0413 = icmp ult ptr %.023.lcssa.i, %i.dh
  %bound1414 = icmp ult ptr %i.df, %i.dd
  %found.conflict415 = and i1 %bound0413, %bound1414
  %conflict.rdx416 = or i1 %found.conflict412, %found.conflict415
  %bound0417 = icmp ult ptr %.023.lcssa.i, %i.dj
  %bound1418 = icmp ult ptr %i.di, %i.dd
  %found.conflict419 = and i1 %bound0417, %bound1418
  %conflict.rdx420 = or i1 %conflict.rdx416, %found.conflict419
  %bound0421 = icmp ult ptr %.024.lcssa.i, %i.dh
  %bound1422 = icmp ult ptr %i.df, %i.de
  %found.conflict423 = and i1 %bound0421, %bound1422
  %conflict.rdx424 = or i1 %conflict.rdx420, %found.conflict423
  %bound0425 = icmp ult ptr %.024.lcssa.i, %i.dj
  %bound1426 = icmp ult ptr %i.di, %i.de
  %found.conflict427 = and i1 %bound0425, %bound1426
  %conflict.rdx428 = or i1 %conflict.rdx424, %found.conflict427
  %bound0429 = icmp ult ptr %i.df, %i.dj
  %bound1430 = icmp ult ptr %i.di, %i.dh
  %found.conflict431 = and i1 %bound0429, %bound1430
  %conflict.rdx432 = or i1 %conflict.rdx428, %found.conflict431
  br i1 %conflict.rdx432, label %.lr.ph.i.i29.i.preheader545, label %vector.ph433

vector.ph433:                                     ; preds = %vector.memcheck409
  %n.vec434 = and i64 %i.cx, 4611686018427387900  ; 3 uses
  %i.dk = shl i64 %n.vec434, 3                    ; 2 uses
  %i.dl = getelementptr i8, ptr %.023.lcssa.i, i64 %i.dk
  %i.dm = getelementptr i8, ptr %.024.lcssa.i, i64 %i.dk
  br label %vector.body435

vector.body435:                                   ; preds = %vector.body435, %vector.ph433
  %index436 = phi i64 [ 0, %vector.ph433 ], [ %index.next449, %vector.body435 ] ; 2 uses
  %i.dn = shl i64 %index436, 3                    ; 3 uses
  %i.do = or disjoint i64 %i.dn, 16               ; 2 uses
  %next.gep437 = getelementptr i8, ptr %.023.lcssa.i, i64 %i.dn
  %next.gep438 = getelementptr i8, ptr %.023.lcssa.i, i64 %i.do
  %next.gep439 = getelementptr i8, ptr %.024.lcssa.i, i64 %i.dn ; 2 uses
  %next.gep440 = getelementptr i8, ptr %.024.lcssa.i, i64 %i.do ; 2 uses
  %wide.vec441 = load <4 x i32>, ptr %next.gep439, align 4, !tbaa !343
  %wide.vec444 = load <4 x i32>, ptr %next.gep440, align 4, !tbaa !343
  store <4 x i32> %wide.vec441, ptr %next.gep437, align 4, !tbaa !343
  store <4 x i32> %wide.vec444, ptr %next.gep438, align 4, !tbaa !343
  store <4 x i32> zeroinitializer, ptr %next.gep439, align 4, !tbaa !343
  store <4 x i32> zeroinitializer, ptr %next.gep440, align 4, !tbaa !343
  %index.next449 = add nuw i64 %index436, 4       ; 2 uses
  %i.dp = icmp eq i64 %index.next449, %n.vec434
  br i1 %i.dp, label %middle.block450, label %vector.body435, !llvm.loop !7061

middle.block450:                                  ; preds = %vector.body435
  %cmp.n451 = icmp eq i64 %i.cx, %n.vec434
  br i1 %cmp.n451, label %_ZN5boost7movelib13op_merge_leftIPNS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EENS3_23flat_tree_value_compareISt4lessIS6_ES7_NS3_9select1stIS6_EEEENS0_7move_opEEEvT_SG_SG_SG_T0_T1_.exit, label %.lr.ph.i.i29.i.preheader545

.lr.ph.i.i29.i.preheader545:                      ; preds = %vector.memcheck409, %.lr.ph.i.i29.i.preheader, %middle.block450
  %.010.i.i30.i.ph = phi ptr [ %.023.lcssa.i, %vector.memcheck409 ], [ %.023.lcssa.i, %.lr.ph.i.i29.i.preheader ], [ %i.dl, %middle.block450 ] ; 2 uses
  %.079.i.i31.i.ph = phi ptr [ %.024.lcssa.i, %vector.memcheck409 ], [ %.024.lcssa.i, %.lr.ph.i.i29.i.preheader ], [ %i.dm, %middle.block450 ] ; 3 uses
  %.079.i.i31.i.ph567 = ptrtoaddr ptr %.079.i.i31.i.ph to i64
  %i.dq = sub i64 %i.cu, %.079.i.i31.i.ph567      ; 2 uses
  %i.dr = lshr i64 %i.dq, 3
  %i.ds = add nuw nsw i64 %i.dr, 1
  %xtraiter568 = and i64 %i.ds, 3                 ; 2 uses
  %lcmp.mod569.not = icmp eq i64 %xtraiter568, 0
  br i1 %lcmp.mod569.not, label %.lr.ph.i.i29.i.prol.loopexit, label %.lr.ph.i.i29.i.prol

.lr.ph.i.i29.i.prol:                              ; preds = %.lr.ph.i.i29.i.preheader545, %.lr.ph.i.i29.i.prol
  %.010.i.i30.i.prol = phi ptr [ %i.dy, %.lr.ph.i.i29.i.prol ], [ %.010.i.i30.i.ph, %.lr.ph.i.i29.i.preheader545 ] ; 3 uses
  %.079.i.i31.i.prol = phi ptr [ %i.dx, %.lr.ph.i.i29.i.prol ], [ %.079.i.i31.i.ph, %.lr.ph.i.i29.i.preheader545 ] ; 4 uses
  %prol.iter570 = phi i64 [ %prol.iter570.next, %.lr.ph.i.i29.i.prol ], [ 0, %.lr.ph.i.i29.i.preheader545 ]
  %i.dt = load i32, ptr %.079.i.i31.i.prol, align 4, !tbaa !343
  store i32 %i.dt, ptr %.010.i.i30.i.prol, align 4, !tbaa !343
  store i32 0, ptr %.079.i.i31.i.prol, align 4, !tbaa !343
  %i.du = getelementptr inbounds nuw i8, ptr %.079.i.i31.i.prol, i64 4 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.010.i.i30.i.prol, i64 4
  %i.dw = load i32, ptr %i.du, align 4, !tbaa !343
  store i32 %i.dw, ptr %i.dv, align 4, !tbaa !343
  store i32 0, ptr %i.du, align 4, !tbaa !343
  %i.dx = getelementptr inbounds nuw i8, ptr %.079.i.i31.i.prol, i64 8 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.010.i.i30.i.prol, i64 8 ; 2 uses
  %prol.iter570.next = add i64 %prol.iter570, 1   ; 2 uses
  %prol.iter570.cmp.not = icmp eq i64 %prol.iter570.next, %xtraiter568
  br i1 %prol.iter570.cmp.not, label %.lr.ph.i.i29.i.prol.loopexit, label %.lr.ph.i.i29.i.prol, !llvm.loop !7062

.lr.ph.i.i29.i.prol.loopexit:                     ; preds = %.lr.ph.i.i29.i.prol, %.lr.ph.i.i29.i.preheader545
  %.010.i.i30.i.unr = phi ptr [ %.010.i.i30.i.ph, %.lr.ph.i.i29.i.preheader545 ], [ %i.dy, %.lr.ph.i.i29.i.prol ]
  %.079.i.i31.i.unr = phi ptr [ %.079.i.i31.i.ph, %.lr.ph.i.i29.i.preheader545 ], [ %i.dx, %.lr.ph.i.i29.i.prol ]
  %i.dz = icmp ult i64 %i.dq, 24
  br i1 %i.dz, label %_ZN5boost7movelib13op_merge_leftIPNS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EENS3_23flat_tree_value_compareISt4lessIS6_ES7_NS3_9select1stIS6_EEEENS0_7move_opEEEvT_SG_SG_SG_T0_T1_.exit, label %.lr.ph.i.i29.i

.lr.ph.i.i29.i:                                   ; preds = %.lr.ph.i.i29.i.prol.loopexit, %.lr.ph.i.i29.i
  %.010.i.i30.i = phi ptr [ %i.ex, %.lr.ph.i.i29.i ], [ %.010.i.i30.i.unr, %.lr.ph.i.i29.i.prol.loopexit ] ; 9 uses
  %.079.i.i31.i = phi ptr [ %i.ew, %.lr.ph.i.i29.i ], [ %.079.i.i31.i.unr, %.lr.ph.i.i29.i.prol.loopexit ] ; 10 uses
  %i.ea = load i32, ptr %.079.i.i31.i, align 4, !tbaa !343
  store i32 %i.ea, ptr %.010.i.i30.i, align 4, !tbaa !343
  store i32 0, ptr %.079.i.i31.i, align 4, !tbaa !343
  %i.eb = getelementptr inbounds nuw i8, ptr %.079.i.i31.i, i64 4 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.010.i.i30.i, i64 4
  %i.ed = load i32, ptr %i.eb, align 4, !tbaa !343
  store i32 %i.ed, ptr %i.ec, align 4, !tbaa !343
  store i32 0, ptr %i.eb, align 4, !tbaa !343
  %i.ee = getelementptr inbounds nuw i8, ptr %.079.i.i31.i, i64 8 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.010.i.i30.i, i64 8
  %i.eg = load i32, ptr %i.ee, align 4, !tbaa !343
  store i32 %i.eg, ptr %i.ef, align 4, !tbaa !343
  store i32 0, ptr %i.ee, align 4, !tbaa !343
  %i.eh = getelementptr inbounds nuw i8, ptr %.079.i.i31.i, i64 12 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.010.i.i30.i, i64 12
  %i.ej = load i32, ptr %i.eh, align 4, !tbaa !343
  store i32 %i.ej, ptr %i.ei, align 4, !tbaa !343
  store i32 0, ptr %i.eh, align 4, !tbaa !343
  %i.ek = getelementptr inbounds nuw i8, ptr %.079.i.i31.i, i64 16 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.010.i.i30.i, i64 16
  %i.em = load i32, ptr %i.ek, align 4, !tbaa !343
  store i32 %i.em, ptr %i.el, align 4, !tbaa !343
  store i32 0, ptr %i.ek, align 4, !tbaa !343
  %i.en = getelementptr inbounds nuw i8, ptr %.079.i.i31.i, i64 20 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.010.i.i30.i, i64 20
  %i.ep = load i32, ptr %i.en, align 4, !tbaa !343
  store i32 %i.ep, ptr %i.eo, align 4, !tbaa !343
  store i32 0, ptr %i.en, align 4, !tbaa !343
  %i.eq = getelementptr inbounds nuw i8, ptr %.079.i.i31.i, i64 24 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.010.i.i30.i, i64 24
  %i.es = load i32, ptr %i.eq, align 4, !tbaa !343
  store i32 %i.es, ptr %i.er, align 4, !tbaa !343
  store i32 0, ptr %i.eq, align 4, !tbaa !343
  %i.et = getelementptr inbounds nuw i8, ptr %.079.i.i31.i, i64 28 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.010.i.i30.i, i64 28
  %i.ev = load i32, ptr %i.et, align 4, !tbaa !343
  store i32 %i.ev, ptr %i.eu, align 4, !tbaa !343
  store i32 0, ptr %i.et, align 4, !tbaa !343
  %i.ew = getelementptr inbounds nuw i8, ptr %.079.i.i31.i, i64 32 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.010.i.i30.i, i64 32
  %.not.i.i32.i.3 = icmp eq ptr %i.ew, %i.t
  br i1 %.not.i.i32.i.3, label %_ZN5boost7movelib13op_merge_leftIPNS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EENS3_23flat_tree_value_compareISt4lessIS6_ES7_NS3_9select1stIS6_EEEENS0_7move_opEEEvT_SG_SG_SG_T0_T1_.exit, label %.lr.ph.i.i29.i, !llvm.loop !7063

_ZN5boost7movelib13op_merge_leftIPNS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EENS3_23flat_tree_value_compareISt4lessIS6_ES7_NS3_9select1stIS6_EEEENS0_7move_opEEEvT_SG_SG_SG_T0_T1_.exit: ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %.lr.ph.i.i29.i.prol.loopexit, %.lr.ph.i.i29.i, %middle.block534, %middle.block450, %_ZN5boost7movelib7move_opclIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_EET0_NS0_9forward_tET_SC_SA_.exit.i
  %i.ey = add i64 %.03979, %i.d                   ; 4 uses
  %.0.idx = shl i64 %i.ey, 3                      ; 2 uses
  %.0 = getelementptr i8, ptr %.04186, i64 %.0.idx ; 2 uses
  %i.ez = sub i64 %1, %i.ey                       ; 2 uses
  %i.fa = icmp ugt i64 %i.ez, %i.d
  %indvar.next405 = add i64 %indvar404, 1
  br i1 %i.fa, label %bb.b, label %._crit_edge, !llvm.loop !7064

._crit_edge:                                      ; preds = %_ZN5boost7movelib13op_merge_leftIPNS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EENS3_23flat_tree_value_compareISt4lessIS6_ES7_NS3_9select1stIS6_EEEENS0_7move_opEEEvT_SG_SG_SG_T0_T1_.exit, %.preheader
  %.039.lcssa = phi i64 [ 0, %.preheader ], [ %i.ey, %_ZN5boost7movelib13op_merge_leftIPNS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EENS3_23flat_tree_value_compareISt4lessIS6_ES7_NS3_9select1stIS6_EEEENS0_7move_opEEEvT_SG_SG_SG_T0_T1_.exit ]
  %.0.idx.lcssa = phi i64 [ 0, %.preheader ], [ %.0.idx, %_ZN5boost7movelib13op_merge_leftIPNS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EENS3_23flat_tree_value_compareISt4lessIS6_ES7_NS3_9select1stIS6_EEEENS0_7move_opEEEvT_SG_SG_SG_T0_T1_.exit ]
  %.0.lcssa = phi ptr [ %.04186, %.preheader ], [ %.0, %_ZN5boost7movelib13op_merge_leftIPNS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EENS3_23flat_tree_value_compareISt4lessIS6_ES7_NS3_9select1stIS6_EEEENS0_7move_opEEEvT_SG_SG_SG_T0_T1_.exit ] ; 23 uses
  %.lcssa75 = phi i64 [ %1, %.preheader ], [ %i.ez, %_ZN5boost7movelib13op_merge_leftIPNS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EENS3_23flat_tree_value_compareISt4lessIS6_ES7_NS3_9select1stIS6_EEEENS0_7move_opEEEvT_SG_SG_SG_T0_T1_.exit ]
  %.0.lcssa176 = ptrtoaddr ptr %.0.lcssa to i64   ; 3 uses
  %i.fb = icmp ugt i64 %.lcssa75, %.04285
  br i1 %i.fb, label %bb.g, label %bb.l

bb.g:                                             ; preds = %._crit_edge
  %i.fc = sub i64 0, %.04285                      ; 6 uses
  %i.fd = getelementptr [8 x i8], ptr %.0.lcssa, i64 %i.fc ; 2 uses
  %.idx = shl nuw nsw i64 %.04285, 3              ; 5 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 %.idx ; 4 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.04186, i64 %.idx68 ; 2 uses
  %i.fg = add nuw nsw i64 %.0.idx.lcssa, %.idx
  %.not43.i45 = icmp samesign eq i64 %i.fg, %.idx68
  br i1 %.not43.i45, label %_ZN5boost7movelib7move_opclIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_EET0_NS0_9forward_tET_SC_SA_.exit.i53, label %.lr.ph.i46

.lr.ph.i46:                                       ; preds = %bb.g, %bb.k
  %indvar = phi i64 [ %indvar.next, %bb.k ], [ 0, %bb.g ] ; 2 uses
  %.02246.i47 = phi ptr [ %.1.i51, %bb.k ], [ %i.fe, %bb.g ] ; 17 uses
  %.02345.i48 = phi ptr [ %i.gv, %bb.k ], [ %i.fd, %bb.g ] ; 12 uses
  %.02444.i49 = phi ptr [ %.125.i50, %bb.k ], [ %.0.lcssa, %bb.g ] ; 6 uses
  %i.fh = icmp eq ptr %.02444.i49, %i.fe
  br i1 %i.fh, label %.lr.ph.i.i.i63.preheader, label %bb.h

.lr.ph.i.i.i63.preheader:                         ; preds = %.lr.ph.i46
  %.02246.i47240 = ptrtoaddr ptr %.02246.i47 to i64 ; 2 uses
  %.reass590 = add i64 %.04186239, %invariant.op589
  %i.fi = sub i64 %.reass590, %.02246.i47240      ; 2 uses
  %i.fj = lshr i64 %i.fi, 3
  %i.fk = add nuw nsw i64 %i.fj, 1                ; 2 uses
  %min.iters.check242 = icmp ult i64 %i.fi, 168
  br i1 %min.iters.check242, label %.lr.ph.i.i.i63.preheader549, label %vector.memcheck243

vector.memcheck243:                               ; preds = %.lr.ph.i.i.i63.preheader
  %i.fl = shl i64 %indvar, 3                      ; 2 uses
  %reass.sub543 = sub i64 %i.fl, %.idx
  %i.fm = or disjoint i64 %reass.sub543, 4        ; 2 uses
  %6 = sub i64 %.04186239, %.02246.i47240
  %7 = add i64 %5, %6
  %i.fn = and i64 %7, -8                          ; 4 uses
  %i.fo = getelementptr i8, ptr %.0.lcssa, i64 %i.fm
  %i.fp = getelementptr i8, ptr %i.fo, i64 %i.fn  ; 3 uses
  %i.fq = getelementptr i8, ptr %.02246.i47, i64 %i.fn
  %i.fr = getelementptr i8, ptr %i.fq, i64 4      ; 3 uses
  %i.fs = getelementptr i8, ptr %.0.lcssa, i64 %i.fm ; 3 uses
  %reass.sub544 = sub i64 %i.fl, %.idx
  %i.ft = getelementptr i8, ptr %.0.lcssa, i64 %reass.sub544
  %i.fu = getelementptr i8, ptr %i.ft, i64 8
  %i.fv = getelementptr i8, ptr %i.fu, i64 %i.fn  ; 3 uses
  %i.fw = getelementptr i8, ptr %.02246.i47, i64 4 ; 3 uses
  %i.fx = getelementptr i8, ptr %.02246.i47, i64 %i.fn
  %i.fy = getelementptr i8, ptr %i.fx, i64 8      ; 3 uses
  %bound0244 = icmp ult ptr %.02345.i48, %i.fr
  %bound1245 = icmp ult ptr %.02246.i47, %i.fp
  %found.conflict246 = and i1 %bound0244, %bound1245
  %bound0247 = icmp ult ptr %.02345.i48, %i.fv
  %bound1248 = icmp ult ptr %i.fs, %i.fp
  %found.conflict249 = and i1 %bound0247, %bound1248
  %conflict.rdx250 = or i1 %found.conflict246, %found.conflict249
  %bound0251 = icmp ult ptr %.02345.i48, %i.fy
  %bound1252 = icmp ult ptr %i.fw, %i.fp
  %found.conflict253 = and i1 %bound0251, %bound1252
  %conflict.rdx254 = or i1 %conflict.rdx250, %found.conflict253
  %bound0255 = icmp ult ptr %.02246.i47, %i.fv
  %bound1256 = icmp ult ptr %i.fs, %i.fr
  %found.conflict257 = and i1 %bound0255, %bound1256
  %conflict.rdx258 = or i1 %conflict.rdx254, %found.conflict257
  %bound0259 = icmp ult ptr %.02246.i47, %i.fy
  %bound1260 = icmp ult ptr %i.fw, %i.fr
  %found.conflict261 = and i1 %bound0259, %bound1260
  %conflict.rdx262 = or i1 %conflict.rdx258, %found.conflict261
  %bound0263 = icmp ult ptr %i.fs, %i.fy
  %bound1264 = icmp ult ptr %i.fw, %i.fv
  %found.conflict265 = and i1 %bound0263, %bound1264
  %conflict.rdx266 = or i1 %conflict.rdx262, %found.conflict265
  br i1 %conflict.rdx266, label %.lr.ph.i.i.i63.preheader549, label %vector.ph267

vector.ph267:                                     ; preds = %vector.memcheck243
  %n.vec268 = and i64 %i.fk, 4611686018427387900  ; 3 uses
  %i.fz = shl i64 %n.vec268, 3                    ; 2 uses
  %i.ga = getelementptr i8, ptr %.02345.i48, i64 %i.fz
  %i.gb = getelementptr i8, ptr %.02246.i47, i64 %i.fz
  br label %vector.body269

vector.body269:                                   ; preds = %vector.body269, %vector.ph267
  %index270 = phi i64 [ 0, %vector.ph267 ], [ %index.next283, %vector.body269 ] ; 2 uses
  %i.gc = shl i64 %index270, 3                    ; 3 uses
  %i.gd = or disjoint i64 %i.gc, 16               ; 2 uses
  %next.gep271 = getelementptr i8, ptr %.02345.i48, i64 %i.gc
  %next.gep272 = getelementptr i8, ptr %.02345.i48, i64 %i.gd
  %next.gep273 = getelementptr i8, ptr %.02246.i47, i64 %i.gc ; 2 uses
  %next.gep274 = getelementptr i8, ptr %.02246.i47, i64 %i.gd ; 2 uses
  %wide.vec275 = load <4 x i32>, ptr %next.gep273, align 4, !tbaa !343
  %wide.vec278 = load <4 x i32>, ptr %next.gep274, align 4, !tbaa !343
  store <4 x i32> %wide.vec275, ptr %next.gep271, align 4, !tbaa !343
  store <4 x i32> %wide.vec278, ptr %next.gep272, align 4, !tbaa !343
  store <4 x i32> zeroinitializer, ptr %next.gep273, align 4, !tbaa !343
  store <4 x i32> zeroinitializer, ptr %next.gep274, align 4, !tbaa !343
  %index.next283 = add nuw i64 %index270, 4       ; 2 uses
  %i.ge = icmp eq i64 %index.next283, %n.vec268
  br i1 %i.ge, label %middle.block284, label %vector.body269, !llvm.loop !7065

middle.block284:                                  ; preds = %vector.body269
  %cmp.n285 = icmp eq i64 %i.fk, %n.vec268
  br i1 %cmp.n285, label %_ZN5boost7movelib13op_merge_leftIPNS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EENS3_23flat_tree_value_compareISt4lessIS6_ES7_NS3_9select1stIS6_EEEENS0_7move_opEEEvT_SG_SG_SG_T0_T1_.exit67, label %.lr.ph.i.i.i63.preheader549

.lr.ph.i.i.i63.preheader549:                      ; preds = %vector.memcheck243, %.lr.ph.i.i.i63.preheader, %middle.block284
  %.010.i.i.i64.ph = phi ptr [ %.02345.i48, %vector.memcheck243 ], [ %.02345.i48, %.lr.ph.i.i.i63.preheader ], [ %i.ga, %middle.block284 ]
  %.079.i.i.i65.ph = phi ptr [ %.02246.i47, %vector.memcheck243 ], [ %.02246.i47, %.lr.ph.i.i.i63.preheader ], [ %i.gb, %middle.block284 ]
  br label %.lr.ph.i.i.i63

.lr.ph.i.i.i63:                                   ; preds = %.lr.ph.i.i.i63.preheader549, %.lr.ph.i.i.i63
  %.010.i.i.i64 = phi ptr [ %i.gk, %.lr.ph.i.i.i63 ], [ %.010.i.i.i64.ph, %.lr.ph.i.i.i63.preheader549 ] ; 3 uses
  %.079.i.i.i65 = phi ptr [ %i.gj, %.lr.ph.i.i.i63 ], [ %.079.i.i.i65.ph, %.lr.ph.i.i.i63.preheader549 ] ; 4 uses
  %i.gf = load i32, ptr %.079.i.i.i65, align 4, !tbaa !343
  store i32 %i.gf, ptr %.010.i.i.i64, align 4, !tbaa !343
  store i32 0, ptr %.079.i.i.i65, align 4, !tbaa !343
  %i.gg = getelementptr inbounds nuw i8, ptr %.079.i.i.i65, i64 4 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.010.i.i.i64, i64 4
  %i.gi = load i32, ptr %i.gg, align 4, !tbaa !343
  store i32 %i.gi, ptr %i.gh, align 4, !tbaa !343
  store i32 0, ptr %i.gg, align 4, !tbaa !343
  %i.gj = getelementptr inbounds nuw i8, ptr %.079.i.i.i65, i64 8 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.010.i.i.i64, i64 8
  %.not.i.i.i66 = icmp eq ptr %i.gj, %i.ff
  br i1 %.not.i.i.i66, label %_ZN5boost7movelib13op_merge_leftIPNS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EENS3_23flat_tree_value_compareISt4lessIS6_ES7_NS3_9select1stIS6_EEEENS0_7move_opEEEvT_SG_SG_SG_T0_T1_.exit67, label %.lr.ph.i.i.i63, !llvm.loop !7066

bb.h:                                             ; preds = %.lr.ph.i46
  %i.gl = load i32, ptr %.02246.i47, align 4, !tbaa !343 ; 2 uses
  %i.gm = load i32, ptr %.02444.i49, align 4, !tbaa !343 ; 2 uses
  %i.gn = icmp slt i32 %i.gl, %i.gm
  %i.go = getelementptr inbounds nuw i8, ptr %.02345.i48, i64 4 ; 2 uses
  br i1 %i.gn, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 %i.gl, ptr %.02345.i48, align 4, !tbaa !343
  store i32 0, ptr %.02246.i47, align 4, !tbaa !343
  %i.gp = getelementptr inbounds nuw i8, ptr %.02246.i47, i64 4 ; 2 uses
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !343
  store i32 %i.gq, ptr %i.go, align 4, !tbaa !343
  store i32 0, ptr %i.gp, align 4, !tbaa !343
  %i.gr = getelementptr inbounds nuw i8, ptr %.02246.i47, i64 8
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  store i32 %i.gm, ptr %.02345.i48, align 4, !tbaa !343
  store i32 0, ptr %.02444.i49, align 4, !tbaa !343
  %i.gs = getelementptr inbounds nuw i8, ptr %.02444.i49, i64 4 ; 2 uses
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !343
  store i32 %i.gt, ptr %i.go, align 4, !tbaa !343
  store i32 0, ptr %i.gs, align 4, !tbaa !343
  %i.gu = getelementptr inbounds nuw i8, ptr %.02444.i49, i64 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.125.i50 = phi ptr [ %.02444.i49, %bb.i ], [ %i.gu, %bb.j ] ; 2 uses
  %.1.i51 = phi ptr [ %i.gr, %bb.i ], [ %.02246.i47, %bb.j ] ; 2 uses
  %i.gv = getelementptr i8, ptr %.02345.i48, i64 8 ; 2 uses
  %.not.i52 = icmp eq ptr %.1.i51, %i.ff
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i52, label %_ZN5boost7movelib7move_opclIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_EET0_NS0_9forward_tET_SC_SA_.exit.i53, label %.lr.ph.i46, !llvm.loop !7060

_ZN5boost7movelib7move_opclIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_EET0_NS0_9forward_tET_SC_SA_.exit.i53: ; preds = %bb.k, %bb.g
  %.024.lcssa.i54 = phi ptr [ %.0.lcssa, %bb.g ], [ %.125.i50, %bb.k ] ; 14 uses
  %.023.lcssa.i55 = phi ptr [ %i.fd, %bb.g ], [ %i.gv, %bb.k ] ; 12 uses
  %.not27.i56 = icmp eq ptr %.023.lcssa.i55, %.024.lcssa.i54
  %.not8.i.i28.i57 = icmp eq ptr %.024.lcssa.i54, %i.fe
  %or.cond38.i58 = or i1 %.not8.i.i28.i57, %.not27.i56
  br i1 %or.cond38.i58, label %_ZN5boost7movelib13op_merge_leftIPNS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EENS3_23flat_tree_value_compareISt4lessIS6_ES7_NS3_9select1stIS6_EEEENS0_7move_opEEEvT_SG_SG_SG_T0_T1_.exit67, label %.lr.ph.i.i29.i59.preheader

.lr.ph.i.i29.i59.preheader:                       ; preds = %_ZN5boost7movelib7move_opclIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_EET0_NS0_9forward_tET_SC_SA_.exit.i53
  %.024.lcssa.i54177 = ptrtoaddr ptr %.024.lcssa.i54 to i64
  %i.gw = add i64 %.idx, %.0.lcssa176
  %i.gx = add i64 %i.gw, -8
  %i.gy = sub i64 %i.gx, %.024.lcssa.i54177       ; 3 uses
  %i.gz = lshr i64 %i.gy, 3
  %i.ha = add nuw nsw i64 %i.gz, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.gy, 152
  br i1 %min.iters.check, label %.lr.ph.i.i29.i59.preheader548, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i29.i59.preheader
  %i.hb = and i64 %i.gy, -8                       ; 2 uses
  %i.hc = or disjoint i64 %i.hb, 4                ; 2 uses
  %i.hd = getelementptr i8, ptr %.023.lcssa.i55, i64 %i.hc ; 3 uses
  %i.he = getelementptr i8, ptr %.024.lcssa.i54, i64 %i.hc ; 3 uses
  %i.hf = getelementptr i8, ptr %.023.lcssa.i55, i64 4 ; 3 uses
  %i.hg = add i64 %i.hb, 8                        ; 2 uses
  %i.hh = getelementptr i8, ptr %.023.lcssa.i55, i64 %i.hg ; 3 uses
  %i.hi = getelementptr i8, ptr %.024.lcssa.i54, i64 4 ; 3 uses
  %i.hj = getelementptr i8, ptr %.024.lcssa.i54, i64 %i.hg ; 3 uses
  %bound0 = icmp ult ptr %.023.lcssa.i55, %i.he
  %bound1 = icmp ult ptr %.024.lcssa.i54, %i.hd
  %found.conflict = and i1 %bound0, %bound1
  %bound0178 = icmp ult ptr %.023.lcssa.i55, %i.hh
  %bound1179 = icmp ult ptr %i.hf, %i.hd
  %found.conflict180 = and i1 %bound0178, %bound1179
  %conflict.rdx = or i1 %found.conflict, %found.conflict180
  %bound0181 = icmp ult ptr %.023.lcssa.i55, %i.hj
  %bound1182 = icmp ult ptr %i.hi, %i.hd
  %found.conflict183 = and i1 %bound0181, %bound1182
  %conflict.rdx184 = or i1 %conflict.rdx, %found.conflict183
  %bound0185 = icmp ult ptr %.024.lcssa.i54, %i.hh
  %bound1186 = icmp ult ptr %i.hf, %i.he
  %found.conflict187 = and i1 %bound0185, %bound1186
  %conflict.rdx188 = or i1 %conflict.rdx184, %found.conflict187
  %bound0189 = icmp ult ptr %.024.lcssa.i54, %i.hj
  %bound1190 = icmp ult ptr %i.hi, %i.he
  %found.conflict191 = and i1 %bound0189, %bound1190
  %conflict.rdx192 = or i1 %conflict.rdx188, %found.conflict191
  %bound0193 = icmp ult ptr %i.hf, %i.hj
  %bound1194 = icmp ult ptr %i.hi, %i.hh
  %found.conflict195 = and i1 %bound0193, %bound1194
  %conflict.rdx196 = or i1 %conflict.rdx192, %found.conflict195
  br i1 %conflict.rdx196, label %.lr.ph.i.i29.i59.preheader548, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ha, 4611686018427387900     ; 3 uses
  %i.hk = shl i64 %n.vec, 3                       ; 2 uses
  %i.hl = getelementptr i8, ptr %.023.lcssa.i55, i64 %i.hk
  %i.hm = getelementptr i8, ptr %.024.lcssa.i54, i64 %i.hk
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.hn = shl i64 %index, 3                       ; 3 uses
  %i.ho = or disjoint i64 %i.hn, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %.023.lcssa.i55, i64 %i.hn
  %next.gep197 = getelementptr i8, ptr %.023.lcssa.i55, i64 %i.ho
  %next.gep198 = getelementptr i8, ptr %.024.lcssa.i54, i64 %i.hn ; 2 uses
  %next.gep199 = getelementptr i8, ptr %.024.lcssa.i54, i64 %i.ho ; 2 uses
  %wide.vec = load <4 x i32>, ptr %next.gep198, align 4, !tbaa !343
  %wide.vec201 = load <4 x i32>, ptr %next.gep199, align 4, !tbaa !343
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !343
  store <4 x i32> %wide.vec201, ptr %next.gep197, align 4, !tbaa !343
  store <4 x i32> zeroinitializer, ptr %next.gep198, align 4, !tbaa !343
  store <4 x i32> zeroinitializer, ptr %next.gep199, align 4, !tbaa !343
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hp = icmp eq i64 %index.next, %n.vec
  br i1 %i.hp, label %middle.block, label %vector.body, !llvm.loop !7067

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ha, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib13op_merge_leftIPNS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EENS3_23flat_tree_value_compareISt4lessIS6_ES7_NS3_9select1stIS6_EEEENS0_7move_opEEEvT_SG_SG_SG_T0_T1_.exit67, label %.lr.ph.i.i29.i59.preheader548

.lr.ph.i.i29.i59.preheader548:                    ; preds = %vector.memcheck, %.lr.ph.i.i29.i59.preheader, %middle.block
  %.010.i.i30.i60.ph = phi ptr [ %.023.lcssa.i55, %vector.memcheck ], [ %.023.lcssa.i55, %.lr.ph.i.i29.i59.preheader ], [ %i.hl, %middle.block ]
  %.079.i.i31.i61.ph = phi ptr [ %.024.lcssa.i54, %vector.memcheck ], [ %.024.lcssa.i54, %.lr.ph.i.i29.i59.preheader ], [ %i.hm, %middle.block ]
  br label %.lr.ph.i.i29.i59

.lr.ph.i.i29.i59:                                 ; preds = %.lr.ph.i.i29.i59.preheader548, %.lr.ph.i.i29.i59
  %.010.i.i30.i60 = phi ptr [ %i.hv, %.lr.ph.i.i29.i59 ], [ %.010.i.i30.i60.ph, %.lr.ph.i.i29.i59.preheader548 ] ; 3 uses
  %.079.i.i31.i61 = phi ptr [ %i.hu, %.lr.ph.i.i29.i59 ], [ %.079.i.i31.i61.ph, %.lr.ph.i.i29.i59.preheader548 ] ; 4 uses
  %i.hq = load i32, ptr %.079.i.i31.i61, align 4, !tbaa !343
  store i32 %i.hq, ptr %.010.i.i30.i60, align 4, !tbaa !343
  store i32 0, ptr %.079.i.i31.i61, align 4, !tbaa !343
  %i.hr = getelementptr inbounds nuw i8, ptr %.079.i.i31.i61, i64 4 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.010.i.i30.i60, i64 4
  %i.ht = load i32, ptr %i.hr, align 4, !tbaa !343
  store i32 %i.ht, ptr %i.hs, align 4, !tbaa !343
  store i32 0, ptr %i.hr, align 4, !tbaa !343
  %i.hu = getelementptr inbounds nuw i8, ptr %.079.i.i31.i61, i64 8 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %.010.i.i30.i60, i64 8
  %.not.i.i32.i62 = icmp eq ptr %i.hu, %i.fe
  br i1 %.not.i.i32.i62, label %_ZN5boost7movelib13op_merge_leftIPNS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EENS3_23flat_tree_value_compareISt4lessIS6_ES7_NS3_9select1stIS6_EEEENS0_7move_opEEEvT_SG_SG_SG_T0_T1_.exit67, label %.lr.ph.i.i29.i59, !llvm.loop !7068

bb.l:                                             ; preds = %._crit_edge
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %.04186, i64 %1
  %i.hx = sub i64 0, %.04285                      ; 4 uses
  %.not8.i.i = icmp samesign eq i64 %.039.lcssa, %1
  br i1 %.not8.i.i, label %_ZN5boost7movelib13op_merge_leftIPNS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EENS3_23flat_tree_value_compareISt4lessIS6_ES7_NS3_9select1stIS6_EEEENS0_7move_opEEEvT_SG_SG_SG_T0_T1_.exit67, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.l
  %i.hy = getelementptr [8 x i8], ptr %.0.lcssa, i64 %i.hx ; 8 uses
  %.reass = add i64 %.04186239, %invariant.op
  %i.hz = sub i64 %.reass, %.0.lcssa176           ; 2 uses
  %i.ia = lshr i64 %i.hz, 3
  %i.ib = add nuw nsw i64 %i.ia, 1                ; 2 uses
  %min.iters.check324 = icmp ult i64 %i.hz, 168
  br i1 %min.iters.check324, label %.lr.ph.i.i.preheader551, label %vector.memcheck325

vector.memcheck325:                               ; preds = %.lr.ph.i.i.preheader
  %8 = sub i64 %.04186239, %.0.lcssa176
  %9 = add i64 %5, %8
  %i.ic = and i64 %9, -8                          ; 2 uses
  %i.id = shl i64 %.04285, 3                      ; 3 uses
  %i.ie = or disjoint i64 %i.ic, 4                ; 2 uses
  %i.if = sub i64 %i.ie, %i.id
  %i.ig = getelementptr i8, ptr %.0.lcssa, i64 %i.if ; 3 uses
  %i.ih = getelementptr i8, ptr %.0.lcssa, i64 %i.ie ; 3 uses
  %i.ii = sub i64 4, %i.id
  %i.ij = getelementptr i8, ptr %.0.lcssa, i64 %i.ii ; 3 uses
  %i.ik = add i64 %i.ic, 8                        ; 2 uses
  %i.il = sub i64 %i.ik, %i.id
  %i.im = getelementptr i8, ptr %.0.lcssa, i64 %i.il ; 3 uses
  %i.in = getelementptr i8, ptr %.0.lcssa, i64 4  ; 3 uses
  %i.io = getelementptr i8, ptr %.0.lcssa, i64 %i.ik ; 3 uses
  %bound0326 = icmp ult ptr %i.hy, %i.ih
  %bound1327 = icmp ult ptr %.0.lcssa, %i.ig
  %found.conflict328 = and i1 %bound0326, %bound1327
  %bound0329 = icmp ult ptr %i.hy, %i.im
  %bound1330 = icmp ult ptr %i.ij, %i.ig
  %found.conflict331 = and i1 %bound0329, %bound1330
  %conflict.rdx332 = or i1 %found.conflict328, %found.conflict331
  %bound0333 = icmp ult ptr %i.hy, %i.io
  %bound1334 = icmp ult ptr %i.in, %i.ig
  %found.conflict335 = and i1 %bound0333, %bound1334
  %conflict.rdx336 = or i1 %conflict.rdx332, %found.conflict335
  %bound0337 = icmp ult ptr %.0.lcssa, %i.im
  %bound1338 = icmp ult ptr %i.ij, %i.ih
  %found.conflict339 = and i1 %bound0337, %bound1338
  %conflict.rdx340 = or i1 %conflict.rdx336, %found.conflict339
  %bound0341 = icmp ult ptr %.0.lcssa, %i.io
  %bound1342 = icmp ult ptr %i.in, %i.ih
  %found.conflict343 = and i1 %bound0341, %bound1342
  %conflict.rdx344 = or i1 %conflict.rdx340, %found.conflict343
  %bound0345 = icmp ult ptr %i.ij, %i.io
  %bound1346 = icmp ult ptr %i.in, %i.im
  %found.conflict347 = and i1 %bound0345, %bound1346
  %conflict.rdx348 = or i1 %conflict.rdx344, %found.conflict347
  br i1 %conflict.rdx348, label %.lr.ph.i.i.preheader551, label %vector.ph349

vector.ph349:                                     ; preds = %vector.memcheck325
  %n.vec350 = and i64 %i.ib, 4611686018427387900  ; 3 uses
  %i.ip = shl i64 %n.vec350, 3                    ; 2 uses
  %i.iq = getelementptr i8, ptr %i.hy, i64 %i.ip
  %i.ir = getelementptr i8, ptr %.0.lcssa, i64 %i.ip
  br label %vector.body351

vector.body351:                                   ; preds = %vector.body351, %vector.ph349
  %index352 = phi i64 [ 0, %vector.ph349 ], [ %index.next365, %vector.body351 ] ; 2 uses
  %i.is = shl i64 %index352, 3                    ; 3 uses
  %i.it = or disjoint i64 %i.is, 16               ; 2 uses
  %next.gep353 = getelementptr i8, ptr %i.hy, i64 %i.is
  %next.gep354 = getelementptr i8, ptr %i.hy, i64 %i.it
  %next.gep355 = getelementptr i8, ptr %.0.lcssa, i64 %i.is ; 2 uses
  %next.gep356 = getelementptr i8, ptr %.0.lcssa, i64 %i.it ; 2 uses
  %wide.vec357 = load <4 x i32>, ptr %next.gep355, align 4, !tbaa !343
  %wide.vec360 = load <4 x i32>, ptr %next.gep356, align 4, !tbaa !343
  store <4 x i32> %wide.vec357, ptr %next.gep353, align 4, !tbaa !343
  store <4 x i32> %wide.vec360, ptr %next.gep354, align 4, !tbaa !343
  store <4 x i32> zeroinitializer, ptr %next.gep355, align 4, !tbaa !343
  store <4 x i32> zeroinitializer, ptr %next.gep356, align 4, !tbaa !343
  %index.next365 = add nuw i64 %index352, 4       ; 2 uses
  %i.iu = icmp eq i64 %index.next365, %n.vec350
  br i1 %i.iu, label %middle.block366, label %vector.body351, !llvm.loop !7069

middle.block366:                                  ; preds = %vector.body351
  %cmp.n367 = icmp eq i64 %i.ib, %n.vec350
  br i1 %cmp.n367, label %_ZN5boost7movelib13op_merge_leftIPNS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EENS3_23flat_tree_value_compareISt4lessIS6_ES7_NS3_9select1stIS6_EEEENS0_7move_opEEEvT_SG_SG_SG_T0_T1_.exit67, label %.lr.ph.i.i.preheader551

.lr.ph.i.i.preheader551:                          ; preds = %vector.memcheck325, %.lr.ph.i.i.preheader, %middle.block366
  %.010.i.i.ph = phi ptr [ %i.hy, %vector.memcheck325 ], [ %i.hy, %.lr.ph.i.i.preheader ], [ %i.iq, %middle.block366 ]
  %.079.i.i.ph = phi ptr [ %.0.lcssa, %vector.memcheck325 ], [ %.0.lcssa, %.lr.ph.i.i.preheader ], [ %i.ir, %middle.block366 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader551, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.ja, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader551 ] ; 3 uses
  %.079.i.i = phi ptr [ %i.iz, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader551 ] ; 4 uses
  %i.iv = load i32, ptr %.079.i.i, align 4, !tbaa !343
  store i32 %i.iv, ptr %.010.i.i, align 4, !tbaa !343
  store i32 0, ptr %.079.i.i, align 4, !tbaa !343
  %i.iw = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  %i.iy = load i32, ptr %i.iw, align 4, !tbaa !343
  store i32 %i.iy, ptr %i.ix, align 4, !tbaa !343
  store i32 0, ptr %i.iw, align 4, !tbaa !343
  %i.iz = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %.not.i.i = icmp eq ptr %i.iz, %i.hw
  br i1 %.not.i.i, label %_ZN5boost7movelib13op_merge_leftIPNS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EENS3_23flat_tree_value_compareISt4lessIS6_ES7_NS3_9select1stIS6_EEEENS0_7move_opEEEvT_SG_SG_SG_T0_T1_.exit67, label %.lr.ph.i.i, !llvm.loop !7070

_ZN5boost7movelib13op_merge_leftIPNS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EENS3_23flat_tree_value_compareISt4lessIS6_ES7_NS3_9select1stIS6_EEEENS0_7move_opEEEvT_SG_SG_SG_T0_T1_.exit67: ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i63, %.lr.ph.i.i29.i59, %middle.block366, %middle.block284, %middle.block, %bb.l, %_ZN5boost7movelib7move_opclIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_EET0_NS0_9forward_tET_SC_SA_.exit.i53
  %.pre-phi = phi i64 [ %i.fc, %middle.block284 ], [ %i.fc, %middle.block ], [ %i.fc, %_ZN5boost7movelib7move_opclIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_EET0_NS0_9forward_tET_SC_SA_.exit.i53 ], [ %i.hx, %bb.l ], [ %i.hx, %middle.block366 ], [ %i.fc, %.lr.ph.i.i.i63 ], [ %i.fc, %.lr.ph.i.i29.i59 ], [ %i.hx, %.lr.ph.i.i ]
  %i.jb = getelementptr inbounds [8 x i8], ptr %.04186, i64 %.pre-phi
  %i.jc = sub nuw i64 %.04087, %.04285            ; 2 uses
  %i.jd = icmp ult i64 %i.d, %3
  %i.je = icmp uge i64 %i.jc, %i.d
  %i.jf = select i1 %i.jd, i1 %i.je, i1 false
  br i1 %i.jf, label %.preheader, label %._crit_edge88, !llvm.loop !7071

._crit_edge88:                                    ; preds = %_ZN5boost7movelib13op_merge_leftIPNS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EENS3_23flat_tree_value_compareISt4lessIS6_ES7_NS3_9select1stIS6_EEEENS0_7move_opEEEvT_SG_SG_SG_T0_T1_.exit67, %bb.a
  %.042.lcssa = phi i64 [ %2, %bb.a ], [ %i.d, %_ZN5boost7movelib13op_merge_leftIPNS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EENS3_23flat_tree_value_compareISt4lessIS6_ES7_NS3_9select1stIS6_EEEENS0_7move_opEEEvT_SG_SG_SG_T0_T1_.exit67 ]
  ret i64 %.042.lcssa
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost7movelib15detail_adaptive19insertion_sort_stepIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EENS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEENS0_9iter_sizeIT_E4typeESH_SJ_SJ_T0_(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %2, i64 16) ; 7 uses
  %i.a = icmp ugt i64 %1, %.sroa.speculated
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.idx33 = shl nuw nsw i64 %.sroa.speculated, 3
  %or.cond.i = icmp ult i64 %2, 2
  br i1 %or.cond.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEENS3_4pairIS7_S7_EENS3_9select1stIS7_EEEEPSA_EEvT0_SF_T_.exit.us, label %.lr.ph42.i.preheader

_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEENS3_4pairIS7_S7_EENS3_9select1stIS7_EEEEPSA_EEvT0_SF_T_.exit.us: ; preds = %.lr.ph, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEENS3_4pairIS7_S7_EENS3_9select1stIS7_EEEEPSA_EEvT0_SF_T_.exit.us
  %.034.us = phi i64 [ %i.b, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEENS3_4pairIS7_S7_EENS3_9select1stIS7_EEEEPSA_EEvT0_SF_T_.exit.us ], [ 0, %.lr.ph ]
  %i.b = add i64 %.034.us, %.sroa.speculated      ; 3 uses
  %i.c = sub i64 %1, %i.b
  %i.d = icmp ugt i64 %i.c, %.sroa.speculated
  br i1 %i.d, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEENS3_4pairIS7_S7_EENS3_9select1stIS7_EEEEPSA_EEvT0_SF_T_.exit.us, label %._crit_edge, !llvm.loop !7072

.lr.ph42.i.preheader:                             ; preds = %.lr.ph, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEENS3_4pairIS7_S7_EENS3_9select1stIS7_EEEEPSA_EEvT0_SF_T_.exit.loopexit
  %.034 = phi i64 [ %i.z, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEENS3_4pairIS7_S7_EENS3_9select1stIS7_EEEEPSA_EEvT0_SF_T_.exit.loopexit ], [ 0, %.lr.ph ] ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.034 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx33
  %.02538.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  br label %.lr.ph42.i

.lr.ph42.i:                                       ; preds = %.lr.ph42.i.preheader, %bb.d
  %.02541.i = phi ptr [ %.025.i, %bb.d ], [ %.02538.i, %.lr.ph42.i.preheader ] ; 5 uses
  %.pn40.i = phi ptr [ %.02541.i, %bb.d ], [ %i.e, %.lr.ph42.i.preheader ] ; 7 uses
  %i.g = load i32, ptr %.02541.i, align 4, !tbaa !343 ; 3 uses
  %i.h = load i32, ptr %.pn40.i, align 4, !tbaa !343
  %i.i = icmp slt i32 %i.g, %i.h
  br i1 %i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph42.i
  store i32 0, ptr %.02541.i, align 4, !tbaa !343
  %i.j = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.k = getelementptr inbounds nuw i8, ptr %.pn40.i, i64 12 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !343
  %i.m = add i32 %i.j, 2
  store i32 %i.m, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.n = load i32, ptr %.pn40.i, align 4, !tbaa !343
  store i32 %i.n, ptr %.02541.i, align 4, !tbaa !343
  store i32 0, ptr %.pn40.i, align 4, !tbaa !343
  %i.o = getelementptr inbounds nuw i8, ptr %.pn40.i, i64 4 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !343
  store i32 %i.p, ptr %i.k, align 4, !tbaa !343
  store i32 0, ptr %i.o, align 4, !tbaa !343
  %.not2933.i = icmp eq ptr %.pn40.i, %i.e
  br i1 %.not2933.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.035.i = phi ptr [ %i.q, %bb.c ], [ %.pn40.i, %bb.b ] ; 5 uses
  %i.q = getelementptr i8, ptr %.035.i, i64 -8    ; 4 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !343  ; 2 uses
  %i.s = icmp slt i32 %i.g, %i.r
  br i1 %i.s, label %bb.c, label %._crit_edge.i

bb.c:                                             ; preds = %.lr.ph.i
  store i32 %i.r, ptr %.035.i, align 4, !tbaa !343
  store i32 0, ptr %i.q, align 4, !tbaa !343
  %i.t = getelementptr inbounds i8, ptr %.035.i, i64 -4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.035.i, i64 4
  %i.v = load i32, ptr %i.t, align 4, !tbaa !343
  store i32 %i.v, ptr %i.u, align 4, !tbaa !343
  store i32 0, ptr %i.t, align 4, !tbaa !343
  %.not29.i = icmp eq ptr %i.q, %i.e
  br i1 %.not29.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !138

._crit_edge.i:                                    ; preds = %bb.c, %.lr.ph.i, %bb.b
  %.024.lcssa.i = phi ptr [ %i.e, %bb.b ], [ %i.e, %bb.c ], [ %.035.i, %.lr.ph.i ] ; 2 uses
  store i32 %i.g, ptr %.024.lcssa.i, align 4, !tbaa !343
  %i.w = getelementptr inbounds nuw i8, ptr %.024.lcssa.i, i64 4
  store i32 %i.l, ptr %i.w, align 4, !tbaa !343
  %i.x = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.y = add i32 %i.x, -2
  store i32 %i.y, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i, %.lr.ph42.i
  %.025.i = getelementptr inbounds nuw i8, ptr %.02541.i, i64 8 ; 2 uses
  %.not28.i = icmp eq ptr %.025.i, %i.f
  br i1 %.not28.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEENS3_4pairIS7_S7_EENS3_9select1stIS7_EEEEPSA_EEvT0_SF_T_.exit.loopexit, label %.lr.ph42.i, !llvm.loop !139

_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEENS3_4pairIS7_S7_EENS3_9select1stIS7_EEEEPSA_EEvT0_SF_T_.exit.loopexit: ; preds = %bb.d
  %i.z = add i64 %.034, %.sroa.speculated         ; 3 uses
  %i.aa = sub i64 %1, %i.z
  %i.ab = icmp ugt i64 %i.aa, %.sroa.speculated
  br i1 %i.ab, label %.lr.ph42.i.preheader, label %._crit_edge, !llvm.loop !7072

._crit_edge:                                      ; preds = %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEENS3_4pairIS7_S7_EENS3_9select1stIS7_EEEEPSA_EEvT0_SF_T_.exit.loopexit, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEENS3_4pairIS7_S7_EENS3_9select1stIS7_EEEEPSA_EEvT0_SF_T_.exit.us, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.b, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEENS3_4pairIS7_S7_EENS3_9select1stIS7_EEEEPSA_EEvT0_SF_T_.exit.us ], [ %i.z, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEENS3_4pairIS7_S7_EENS3_9select1stIS7_EEEEPSA_EEvT0_SF_T_.exit.loopexit ] ; 2 uses
  %.idx = shl nuw nsw i64 %.0.lcssa, 3            ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 6 uses
  %.idx32 = shl nuw nsw i64 %1, 3                 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %.idx32
  %.not.i15 = icmp samesign eq i64 %.0.lcssa, %1
  %i.ae = add nuw nsw i64 %.idx, 8
  %.not2839.i17 = icmp samesign eq i64 %i.ae, %.idx32
end_hunk_2
begin_hunk_3_@_ZN5boost7movelib16heap_sort_helperIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEE4sortES5_S5_SD_:bb.a
  br i1 %i.e, label %bb.b, label %_ZN5boost7movelib16heap_sort_helperIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEE9sort_heapES5_S5_SD_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = lshr i64 %i.d, 1
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.i, %bb.b
  %.0.in.i = phi i64 [ %i.f, %bb.b ], [ %.0.i, %.loopexit.i ]
  %.0.i = add nsw i64 %.0.in.i, -1                ; 8 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.i ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !343  ; 2 uses
  store i32 0, ptr %i.g, align 4, !tbaa !343
  %i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.j = add i32 %i.i, 1
  store i32 %i.j, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %.036.in40.i.i = shl i64 %.0.i, 1               ; 3 uses
  %.03641.i.i = add i64 %.036.in40.i.i, 2         ; 3 uses
  %i.k = icmp ult i64 %.03641.i.i, %i.d
  br i1 %i.k, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.03644.i.i = phi i64 [ %.036.i.i, %.lr.ph.i.i ], [ %.03641.i.i, %bb.c ] ; 2 uses
  %.036.in43.i.i = phi i64 [ %.036.in.i.i, %.lr.ph.i.i ], [ %.036.in40.i.i, %bb.c ]
  %.03742.i.i = phi i64 [ %spec.select.i.i, %.lr.ph.i.i ], [ %.0.i, %bb.c ]
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.03644.i.i ; 2 uses
  %i.m = getelementptr i8, ptr %i.l, i64 -4
  %i.n = load i32, ptr %i.l, align 4, !tbaa !343
  %i.o = load i32, ptr %i.m, align 4, !tbaa !343
  %i.p = icmp slt i32 %i.n, %i.o
  %i.q = or disjoint i64 %.036.in43.i.i, 1
  %spec.select.i.i = select i1 %i.p, i64 %i.q, i64 %.03644.i.i ; 4 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %spec.select.i.i ; 2 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.03742.i.i
  %i.t = load i32, ptr %i.r, align 4, !tbaa !343
  store i32 %i.t, ptr %i.s, align 4, !tbaa !343
  store i32 0, ptr %i.r, align 4, !tbaa !343
  %.036.in.i.i = shl i64 %spec.select.i.i, 1      ; 3 uses
  %.036.i.i = add i64 %.036.in.i.i, 2             ; 3 uses
  %i.u = icmp ult i64 %.036.i.i, %i.d
  br i1 %i.u, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !13643

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.c
  %.037.lcssa.i.i = phi i64 [ %.0.i, %bb.c ], [ %spec.select.i.i, %.lr.ph.i.i ] ; 2 uses
  %.036.in.lcssa.i.i = phi i64 [ %.036.in40.i.i, %bb.c ], [ %.036.in.i.i, %.lr.ph.i.i ]
  %.036.lcssa.i.i = phi i64 [ %.03641.i.i, %bb.c ], [ %.036.i.i, %.lr.ph.i.i ]
  %i.v = icmp eq i64 %.036.lcssa.i.i, %i.d
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.w = or disjoint i64 %.036.in.lcssa.i.i, 1    ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.w ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.037.lcssa.i.i
  %i.z = load i32, ptr %i.x, align 4, !tbaa !343
  store i32 %i.z, ptr %i.y, align 4, !tbaa !343
  store i32 0, ptr %i.x, align 4, !tbaa !343
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i
  %.138.i.i = phi i64 [ %i.w, %bb.d ], [ %.037.lcssa.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.aa = icmp ugt i64 %.138.i.i, %.0.i
  br i1 %i.aa, label %.lr.ph52.i.i, label %.loopexit.i

.lr.ph52.i.i:                                     ; preds = %bb.e, %bb.f
  %.249.i.i = phi i64 [ %.050.i.i, %bb.f ], [ %.138.i.i, %bb.e ] ; 3 uses
  %.050.in.i.i = add i64 %.249.i.i, -1
  %.050.i.i = lshr i64 %.050.in.i.i, 1            ; 4 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.050.i.i ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !343 ; 2 uses
  %i.ad = icmp slt i32 %i.ac, %i.h
  br i1 %i.ad, label %bb.f, label %.loopexit.i

bb.f:                                             ; preds = %.lr.ph52.i.i
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.249.i.i
  store i32 %i.ac, ptr %i.ae, align 4, !tbaa !343
  store i32 0, ptr %i.ab, align 4, !tbaa !343
  %i.af = icmp ugt i64 %.050.i.i, %.0.i
  br i1 %i.af, label %.lr.ph52.i.i, label %.loopexit.i, !llvm.loop !13644

.loopexit.i:                                      ; preds = %bb.f, %.lr.ph52.i.i, %bb.e
  %.2.lcssa.i.i = phi i64 [ %.138.i.i, %bb.e ], [ %.050.i.i, %bb.f ], [ %.249.i.i, %.lr.ph52.i.i ]
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.2.lcssa.i.i
  store i32 %i.h, ptr %i.ag, align 4, !tbaa !343
  %i.ah = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.ai = add i32 %i.ah, -1
  store i32 %i.ai, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %.not.i = icmp eq i64 %.0.i, 0
  br i1 %.not.i, label %.lr.ph.i, label %bb.c, !llvm.loop !13645

.lr.ph.i:                                         ; preds = %.loopexit.i, %.loopexit.i13
  %.014.i = phi ptr [ %i.aj, %.loopexit.i13 ], [ %1, %.loopexit.i ]
  %.01013.i = phi i64 [ %i.ao, %.loopexit.i13 ], [ %i.d, %.loopexit.i ]
  %i.aj = getelementptr inbounds i8, ptr %.014.i, i64 -4 ; 4 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !343 ; 3 uses
  store i32 0, ptr %i.aj, align 4, !tbaa !343
  %i.al = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.am = add i32 %i.al, 1
  store i32 %i.am, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.an = load i32, ptr %0, align 4, !tbaa !343
  store i32 %i.an, ptr %i.aj, align 4, !tbaa !343
  store i32 0, ptr %0, align 4, !tbaa !343
  %i.ao = add i64 %.01013.i, -1                   ; 6 uses
  %i.ap = icmp ugt i64 %i.ao, 2
  br i1 %i.ap, label %.lr.ph.i.i15, label %._crit_edge.i.i4.thread

.lr.ph.i.i15:                                     ; preds = %.lr.ph.i, %.lr.ph.i.i15
  %.03644.i.i16 = phi i64 [ %.036.i.i21, %.lr.ph.i.i15 ], [ 2, %.lr.ph.i ] ; 2 uses
  %.036.in43.i.i17 = phi i64 [ %.036.in.i.i20, %.lr.ph.i.i15 ], [ 0, %.lr.ph.i ]
  %.03742.i.i18 = phi i64 [ %spec.select.i.i19, %.lr.ph.i.i15 ], [ 0, %.lr.ph.i ]
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.03644.i.i16 ; 2 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 -4
  %i.as = load i32, ptr %i.aq, align 4, !tbaa !343
  %i.at = load i32, ptr %i.ar, align 4, !tbaa !343
  %i.au = icmp slt i32 %i.as, %i.at
  %i.av = or disjoint i64 %.036.in43.i.i17, 1
  %spec.select.i.i19 = select i1 %i.au, i64 %i.av, i64 %.03644.i.i16 ; 6 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %spec.select.i.i19 ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.03742.i.i18
  %i.ay = load i32, ptr %i.aw, align 4, !tbaa !343
  store i32 %i.ay, ptr %i.ax, align 4, !tbaa !343
  store i32 0, ptr %i.aw, align 4, !tbaa !343
  %.036.in.i.i20 = shl i64 %spec.select.i.i19, 1  ; 3 uses
  %.036.i.i21 = add i64 %.036.in.i.i20, 2         ; 3 uses
  %i.az = icmp ult i64 %.036.i.i21, %i.ao
  br i1 %i.az, label %.lr.ph.i.i15, label %._crit_edge.i.i4, !llvm.loop !13643

._crit_edge.i.i4:                                 ; preds = %.lr.ph.i.i15
  %i.ba = or disjoint i64 %.036.in.i.i20, 1
  %i.bb = icmp eq i64 %.036.i.i21, %i.ao
  br i1 %i.bb, label %.thread.i, label %bb.g

._crit_edge.i.i4.thread:                          ; preds = %.lr.ph.i
  %i.bc = icmp eq i64 %i.ao, 2
  br i1 %i.bc, label %.thread.i, label %.loopexit.i13.thread

.loopexit.i13.thread:                             ; preds = %._crit_edge.i.i4.thread
  store i32 %i.ak, ptr %0, align 4, !tbaa !343
  %i.bd = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.be = add i32 %i.bd, -1
  store i32 %i.be, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  br label %_ZN5boost7movelib16heap_sort_helperIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEE9sort_heapES5_S5_SD_.exit

.thread.i:                                        ; preds = %._crit_edge.i.i4.thread, %._crit_edge.i.i4
  %.036.in.lcssa.i.i627 = phi i64 [ 1, %._crit_edge.i.i4.thread ], [ %i.ba, %._crit_edge.i.i4 ] ; 2 uses
  %.037.lcssa.i.i526 = phi i64 [ 0, %._crit_edge.i.i4.thread ], [ %spec.select.i.i19, %._crit_edge.i.i4 ]
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.036.in.lcssa.i.i627 ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.037.lcssa.i.i526
  %i.bh = load i32, ptr %i.bf, align 4, !tbaa !343
  store i32 %i.bh, ptr %i.bg, align 4, !tbaa !343
  store i32 0, ptr %i.bf, align 4, !tbaa !343
  br label %.lr.ph52.i.i9.preheader

bb.g:                                             ; preds = %._crit_edge.i.i4
  %.not.i8 = icmp eq i64 %spec.select.i.i19, 0
  br i1 %.not.i8, label %.loopexit.i13, label %.lr.ph52.i.i9.preheader

.lr.ph52.i.i9.preheader:                          ; preds = %bb.g, %.thread.i
  %.249.i.i10.ph = phi i64 [ %spec.select.i.i19, %bb.g ], [ %.036.in.lcssa.i.i627, %.thread.i ]
  br label %.lr.ph52.i.i9

.lr.ph52.i.i9:                                    ; preds = %.lr.ph52.i.i9.preheader, %bb.h
  %.249.i.i10 = phi i64 [ %.050.i.i12, %bb.h ], [ %.249.i.i10.ph, %.lr.ph52.i.i9.preheader ] ; 3 uses
  %.050.in.i.i11 = add i64 %.249.i.i10, -1
  %.050.i.i12 = lshr i64 %.050.in.i.i11, 1        ; 3 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.050.i.i12 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !343 ; 2 uses
  %i.bk = icmp slt i32 %i.bj, %i.ak
  br i1 %i.bk, label %bb.h, label %.loopexit.i13

bb.h:                                             ; preds = %.lr.ph52.i.i9
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.249.i.i10
  store i32 %i.bj, ptr %i.bl, align 4, !tbaa !343
  store i32 0, ptr %i.bi, align 4, !tbaa !343
  %.not12.i = icmp eq i64 %.050.i.i12, 0
  br i1 %.not12.i, label %.loopexit.i13, label %.lr.ph52.i.i9, !llvm.loop !13644

.loopexit.i13:                                    ; preds = %bb.h, %.lr.ph52.i.i9, %bb.g
  %.2.lcssa.i.i14 = phi i64 [ 0, %bb.g ], [ 0, %bb.h ], [ %.249.i.i10, %.lr.ph52.i.i9 ]
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.2.lcssa.i.i14
  store i32 %i.ak, ptr %i.bm, align 4, !tbaa !343
  %i.bn = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.bo = add i32 %i.bn, -1
  store i32 %i.bo, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.bp = icmp ugt i64 %i.ao, 1
  br i1 %i.bp, label %.lr.ph.i, label %_ZN5boost7movelib16heap_sort_helperIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEE9sort_heapES5_S5_SD_.exit, !llvm.loop !13646

_ZN5boost7movelib16heap_sort_helperIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEE9sort_heapES5_S5_SD_.exit: ; preds = %.loopexit.i13, %bb.a, %.loopexit.i13.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEES8_S8_S8_SI_NS0_7move_opEEET3_T_SL_T0_T1_RT2_SO_SK_NS0_9iter_sizeISN_E4typeESS_SS_SS_T4_bT5_(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::reverse_iterator.179") align 8 %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef align 8 dead_on_return %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef align 8 dead_on_return %5, ptr noundef align 8 dead_on_return %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i1 noundef zeroext %11) local_unnamed_addr #2 comdat {
bb.a:
  %.not138 = icmp eq i64 %8, 0
  br i1 %.not138, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = sub i64 0, %7                            ; 2 uses
  %.idx = shl nsw i64 %i.a, 2
  %.not.i.i = icmp eq i64 %7, 0
  %.pre = load ptr, ptr %1, align 8, !tbaa !522
  %i.b = shl i64 %7, 2
  %12 = add i64 %i.b, -4                          ; 2 uses
  %i.c = shl i64 %7, 2
  %invariant.op = add i64 %i.c, -4
  %i.d = shl i64 %7, 2
  %invariant.op470 = add i64 %i.d, -4
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EEvT_S9_RS9_T0_SB_SB_.exit
  %i.e = phi ptr [ %.pre, %.lr.ph ], [ %i.el, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EEvT_S9_RS9_T0_SB_SB_.exit ] ; 2 uses
  %.0 = phi i64 [ %10, %.lr.ph ], [ %i.ep, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EEvT_S9_RS9_T0_SB_SB_.exit ] ; 3 uses
  %.0140 = phi i64 [ %9, %.lr.ph ], [ %i.en, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EEvT_S9_RS9_T0_SB_SB_.exit ] ; 4 uses
  %.095139 = phi i64 [ %8, %.lr.ph ], [ %i.eq, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EEvT_S9_RS9_T0_SB_SB_.exit ] ; 2 uses
  %i.f = load ptr, ptr %3, align 8, !tbaa !522    ; 11 uses
  %i.g = ptrtoaddr ptr %i.f to i64                ; 4 uses
  %i.h = icmp ult i64 %.0140, %.0
  br i1 %i.h, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEES8_SI_EENS0_9iter_sizeIT1_E4typeET_T0_SK_SM_SM_SM_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread20.i
  %.023.i = phi i64 [ %i.aa, %.thread20.i ], [ %.0140, %bb.b ] ; 4 uses
  %.01822.i = phi i64 [ %i.z, %.thread20.i ], [ 0, %bb.b ] ; 4 uses
  %i.i = mul i64 %.01822.i, %7
  %i.j = xor i64 %i.i, -1
  %i.k = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.j
  %i.l = mul i64 %.023.i, %7
  %i.m = xor i64 %i.l, -1
  %i.n = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.m
  %i.o = xor i64 %.01822.i, -1
  %i.p = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.o
  %i.q = xor i64 %.023.i, -1
  %i.r = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.q
  %i.s = load i32, ptr %i.k, align 4, !tbaa !343  ; 2 uses
  %i.t = load i32, ptr %i.n, align 4, !tbaa !343  ; 2 uses
  %i.u = icmp slt i32 %i.s, %i.t
  br i1 %i.u, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.v = icmp slt i32 %i.t, %i.s
  br i1 %i.v, label %.thread20.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load i32, ptr %i.p, align 4, !tbaa !343
  %i.x = load i32, ptr %i.r, align 4, !tbaa !343
  %i.y = icmp slt i32 %i.w, %i.x
  %cond.fr.i = freeze i1 %i.y
  br i1 %cond.fr.i, label %.thread.i, label %.thread20.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread20.i

.thread20.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.z = phi i64 [ %.023.i, %.thread.i ], [ %.01822.i, %bb.d ], [ %.01822.i, %bb.c ] ; 2 uses
  %i.aa = add nuw i64 %.023.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.aa, %.0
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEES8_SI_EENS0_9iter_sizeIT1_E4typeET_T0_SK_SM_SM_SM_T2_.exit, label %.lr.ph.i, !llvm.loop !224

_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEES8_SI_EENS0_9iter_sizeIT1_E4typeET_T0_SK_SM_SM_SM_T2_.exit: ; preds = %.thread20.i, %bb.b
  %.018.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.z, %.thread20.i ] ; 4 uses
  %i.ab = add i64 %.018.lcssa.i, 2
  %i.ac = tail call i64 @llvm.umax.i64(i64 %.0, i64 %i.ab) ; 2 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 %.095139)
  %i.ad = getelementptr inbounds i8, ptr %i.f, i64 %.idx ; 14 uses
  %i.ae = mul i64 %7, %.018.lcssa.i
  %i.af = sub i64 0, %i.ae
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.af ; 11 uses
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %i.a ; 2 uses
  %.not23 = icmp eq i64 %.018.lcssa.i, 0          ; 3 uses
  %i.ai = load ptr, ptr %5, align 8, !tbaa !522   ; 5 uses
  %i.aj = load ptr, ptr %6, align 8, !tbaa !522   ; 8 uses
  %i.ak = load ptr, ptr %4, align 8, !tbaa !522, !noalias !485 ; 7 uses
  %.not17.i.i = icmp eq ptr %i.ai, %i.ak
  %or.cond.i26 = select i1 %.not.i.i, i1 true, i1 %.not17.i.i ; 4 uses
  br i1 %.not23, label %bb.l, label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEES8_SI_EENS0_9iter_sizeIT1_E4typeET_T0_SK_SM_SM_SM_T2_.exit
  br i1 %11, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  br i1 %or.cond.i26, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit, label %.outer.i.i

.outer.i.i:                                       ; preds = %bb.f, %.split.i.i
  %.sroa.027.0.i = phi ptr [ %i.ar, %.split.i.i ], [ %i.aj, %bb.f ]
  %.sroa.010.0.ph.i.i = phi ptr [ %i.al, %.split.i.i ], [ %i.ag, %bb.f ] ; 2 uses
  %.sroa.013.0.ph.i.i = phi ptr [ %i.aq, %.split.i.i ], [ %i.f, %bb.f ] ; 2 uses
  %.sroa.017.0.ph.i.i = phi ptr [ %.sroa.017.0.i.i, %.split.i.i ], [ %i.ak, %bb.f ]
  %i.al = getelementptr inbounds i8, ptr %.sroa.010.0.ph.i.i, i64 -4 ; 5 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.outer.i.i
  %.sroa.027.1.i = phi ptr [ %.sroa.027.0.i, %.outer.i.i ], [ %i.at, %bb.h ] ; 2 uses
  %.sroa.017.0.i.i = phi ptr [ %.sroa.017.0.ph.i.i, %.outer.i.i ], [ %i.am, %bb.h ] ; 3 uses
  %i.am = getelementptr inbounds i8, ptr %.sroa.017.0.i.i, i64 -4 ; 5 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !343, !noalias !13679 ; 2 uses
  %i.ao = load i32, ptr %i.al, align 4, !tbaa !343, !noalias !13679 ; 2 uses
  %i.ap = icmp slt i32 %i.an, %i.ao
  br i1 %i.ap, label %.split.i.i, label %bb.h

.split.i.i:                                       ; preds = %bb.g
  %i.aq = getelementptr inbounds i8, ptr %.sroa.013.0.ph.i.i, i64 -4 ; 4 uses
  %i.ar = getelementptr inbounds i8, ptr %.sroa.027.1.i, i64 -4 ; 3 uses
  store i32 %i.ao, ptr %i.ar, align 4, !tbaa !343, !noalias !13679
  store i32 0, ptr %i.al, align 4, !tbaa !343, !noalias !13679
  %i.as = load i32, ptr %i.aq, align 4, !tbaa !343, !noalias !13679
  store i32 %i.as, ptr %i.al, align 4, !tbaa !343, !noalias !13679
  store i32 0, ptr %i.aq, align 4, !tbaa !343, !noalias !13679
  %.not27.i.i = icmp eq ptr %i.aq, %i.ad
  br i1 %.not27.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit.sink.split, label %.outer.i.i, !llvm.loop !225

bb.h:                                             ; preds = %bb.g
  %i.at = getelementptr inbounds i8, ptr %.sroa.027.1.i, i64 -4 ; 3 uses
  store i32 %i.an, ptr %i.at, align 4, !tbaa !343, !noalias !13679
  store i32 0, ptr %i.am, align 4, !tbaa !343, !noalias !13679
  %.not26.i.i = icmp eq ptr %i.am, %i.ai
  br i1 %.not26.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit.sink.split, label %bb.g, !llvm.loop !225

bb.i:                                             ; preds = %bb.e
  br i1 %or.cond.i26, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit, label %.outer.i8.i

.outer.i8.i:                                      ; preds = %bb.i, %.split.i14.i
  %.sroa.020.0.i = phi ptr [ %i.az, %.split.i14.i ], [ %i.aj, %bb.i ]
  %.sroa.010.0.ph.i9.i = phi ptr [ %i.au, %.split.i14.i ], [ %i.ag, %bb.i ] ; 2 uses
  %.sroa.013.0.ph.i10.i = phi ptr [ %i.ay, %.split.i14.i ], [ %i.f, %bb.i ] ; 2 uses
  %.sroa.017.0.ph.i11.i = phi ptr [ %.sroa.017.0.i12.i, %.split.i14.i ], [ %i.ak, %bb.i ]
  %i.au = getelementptr inbounds i8, ptr %.sroa.010.0.ph.i9.i, i64 -4 ; 5 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.outer.i8.i
  %.sroa.020.1.i = phi ptr [ %.sroa.020.0.i, %.outer.i8.i ], [ %i.bb, %bb.k ] ; 2 uses
  %.sroa.017.0.i12.i = phi ptr [ %.sroa.017.0.ph.i11.i, %.outer.i8.i ], [ %i.av, %bb.k ] ; 3 uses
  %i.av = getelementptr inbounds i8, ptr %.sroa.017.0.i12.i, i64 -4 ; 5 uses
  %i.aw = load i32, ptr %i.au, align 4, !tbaa !343, !noalias !13680 ; 2 uses
  %i.ax = load i32, ptr %i.av, align 4, !tbaa !343, !noalias !13680 ; 2 uses
  %.not26.i13.i = icmp slt i32 %i.aw, %i.ax
  br i1 %.not26.i13.i, label %bb.k, label %.split.i14.i

.split.i14.i:                                     ; preds = %bb.j
  %i.ay = getelementptr inbounds i8, ptr %.sroa.013.0.ph.i10.i, i64 -4 ; 4 uses
  %i.az = getelementptr inbounds i8, ptr %.sroa.020.1.i, i64 -4 ; 3 uses
  store i32 %i.aw, ptr %i.az, align 4, !tbaa !343, !noalias !13680
  store i32 0, ptr %i.au, align 4, !tbaa !343, !noalias !13680
  %i.ba = load i32, ptr %i.ay, align 4, !tbaa !343, !noalias !13680
  store i32 %i.ba, ptr %i.au, align 4, !tbaa !343, !noalias !13680
  store i32 0, ptr %i.ay, align 4, !tbaa !343, !noalias !13680
  %.not28.i.i = icmp eq ptr %i.ay, %i.ad
  br i1 %.not28.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit.sink.split, label %.outer.i8.i, !llvm.loop !226

bb.k:                                             ; preds = %bb.j
  %i.bb = getelementptr inbounds i8, ptr %.sroa.020.1.i, i64 -4 ; 3 uses
  store i32 %i.ax, ptr %i.bb, align 4, !tbaa !343, !noalias !13680
  store i32 0, ptr %i.av, align 4, !tbaa !343, !noalias !13680
  %.not27.i19.i = icmp eq ptr %i.av, %i.ai
  br i1 %.not27.i19.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit.sink.split, label %bb.j, !llvm.loop !226

bb.l:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEES8_SI_EENS0_9iter_sizeIT1_E4typeET_T0_SK_SM_SM_SM_T2_.exit
  br i1 %11, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  br i1 %or.cond.i26, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit.sink.split, label %.preheader.i.i.outer

.preheader.i.i.outer:                             ; preds = %bb.m, %bb.n
  %.sroa.019.0.i.ph = phi ptr [ %i.bh, %bb.n ], [ %i.aj, %bb.m ]
  %.sroa.07.0.i.i.ph = phi ptr [ %i.bi, %bb.n ], [ %i.f, %bb.m ] ; 3 uses
  %.sroa.012.0.i.i.ph = phi ptr [ %.sroa.012.0.i.i, %bb.n ], [ %i.ak, %bb.m ]
  %i.bc = getelementptr inbounds i8, ptr %.sroa.07.0.i.i.ph, i64 -4
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.outer, %bb.o
  %.sroa.019.0.i = phi ptr [ %i.bh, %bb.o ], [ %.sroa.019.0.i.ph, %.preheader.i.i.outer ]
  %.sroa.012.0.i.i = phi ptr [ %i.bd, %bb.o ], [ %.sroa.012.0.i.i.ph, %.preheader.i.i.outer ] ; 3 uses
  %i.bd = getelementptr inbounds i8, ptr %.sroa.012.0.i.i, i64 -4 ; 5 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !343, !noalias !13681 ; 2 uses
  %i.bf = load i32, ptr %i.bc, align 4, !tbaa !343, !noalias !13681 ; 2 uses
  %i.bg = icmp slt i32 %i.be, %i.bf
  %i.bh = getelementptr inbounds i8, ptr %.sroa.019.0.i, i64 -4 ; 6 uses
  br i1 %i.bg, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.preheader.i.i
  %i.bi = getelementptr inbounds i8, ptr %.sroa.07.0.i.i.ph, i64 -4 ; 3 uses
  store i32 %i.bf, ptr %i.bh, align 4, !tbaa !343, !noalias !13681
  store i32 0, ptr %i.bi, align 4, !tbaa !343, !noalias !13681
  %i.bj = icmp eq ptr %i.bi, %i.ad
  br i1 %i.bj, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit.sink.split, label %.preheader.i.i.outer, !llvm.loop !227

bb.o:                                             ; preds = %.preheader.i.i
  store i32 %i.be, ptr %i.bh, align 4, !tbaa !343, !noalias !13681
  store i32 0, ptr %i.bd, align 4, !tbaa !343, !noalias !13681
  %i.bk = icmp eq ptr %i.bd, %i.ai
  br i1 %i.bk, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit.sink.split, label %.preheader.i.i, !llvm.loop !227

bb.p:                                             ; preds = %bb.l
  br i1 %or.cond.i26, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit.sink.split, label %.preheader.i6.i.outer

.preheader.i6.i.outer:                            ; preds = %bb.p, %bb.q
  %.sroa.013.0.i.ph = phi ptr [ %i.bp, %bb.q ], [ %i.aj, %bb.p ]
  %.sroa.07.0.i7.i.ph = phi ptr [ %i.bq, %bb.q ], [ %i.f, %bb.p ] ; 3 uses
  %.sroa.012.0.i8.i.ph = phi ptr [ %.sroa.012.0.i8.i, %bb.q ], [ %i.ak, %bb.p ]
  %i.bl = getelementptr inbounds i8, ptr %.sroa.07.0.i7.i.ph, i64 -4
  br label %.preheader.i6.i

.preheader.i6.i:                                  ; preds = %.preheader.i6.i.outer, %bb.r
  %.sroa.013.0.i = phi ptr [ %i.bp, %bb.r ], [ %.sroa.013.0.i.ph, %.preheader.i6.i.outer ]
  %.sroa.012.0.i8.i = phi ptr [ %i.bm, %bb.r ], [ %.sroa.012.0.i8.i.ph, %.preheader.i6.i.outer ] ; 3 uses
  %i.bm = getelementptr inbounds i8, ptr %.sroa.012.0.i8.i, i64 -4 ; 5 uses
  %i.bn = load i32, ptr %i.bl, align 4, !tbaa !343, !noalias !13682 ; 2 uses
  %i.bo = load i32, ptr %i.bm, align 4, !tbaa !343, !noalias !13682 ; 2 uses
  %.not18.i.i = icmp slt i32 %i.bn, %i.bo
  %i.bp = getelementptr inbounds i8, ptr %.sroa.013.0.i, i64 -4 ; 6 uses
  br i1 %.not18.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.preheader.i6.i
  %i.bq = getelementptr inbounds i8, ptr %.sroa.07.0.i7.i.ph, i64 -4 ; 3 uses
  store i32 %i.bn, ptr %i.bp, align 4, !tbaa !343, !noalias !13682
  store i32 0, ptr %i.bq, align 4, !tbaa !343, !noalias !13682
  %i.br = icmp eq ptr %i.bq, %i.ad
  br i1 %i.br, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit.sink.split, label %.preheader.i6.i.outer, !llvm.loop !228

bb.r:                                             ; preds = %.preheader.i6.i
  store i32 %i.bo, ptr %i.bp, align 4, !tbaa !343, !noalias !13682
  store i32 0, ptr %i.bm, align 4, !tbaa !343, !noalias !13682
  %i.bs = icmp eq ptr %i.bm, %i.ai
  br i1 %i.bs, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit.sink.split, label %.preheader.i6.i, !llvm.loop !228

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit.sink.split: ; preds = %.split.i14.i, %.split.i.i, %bb.r, %bb.q, %bb.o, %bb.n, %bb.k, %bb.h, %bb.p, %bb.m
  %.sroa.017.124.i16.sink.i.sink = phi ptr [ %i.am, %bb.h ], [ %i.av, %bb.k ], [ %.sroa.012.0.i8.i, %bb.q ], [ %.sroa.012.0.i.i, %bb.n ], [ %i.ak, %bb.p ], [ %i.ak, %bb.m ], [ %.sroa.017.0.i.i, %.split.i.i ], [ %i.bd, %bb.o ], [ %i.bm, %bb.r ], [ %.sroa.017.0.i12.i, %.split.i14.i ]
  %.sroa.013.123.i17.sink.i.sink = phi ptr [ %.sroa.013.0.ph.i.i, %bb.h ], [ %.sroa.013.0.ph.i10.i, %bb.k ], [ %i.ad, %bb.q ], [ %i.ad, %bb.n ], [ %i.f, %bb.p ], [ %i.f, %bb.m ], [ %i.ad, %.split.i.i ], [ %.sroa.07.0.i.i.ph, %bb.o ], [ %.sroa.07.0.i7.i.ph, %bb.r ], [ %i.ad, %.split.i14.i ]
  %.sroa.064.0.ph = phi ptr [ %i.at, %bb.h ], [ %i.bb, %bb.k ], [ %i.bp, %bb.r ], [ %i.bh, %bb.o ], [ %i.aj, %bb.p ], [ %i.aj, %bb.m ], [ %i.ar, %.split.i.i ], [ %i.bh, %bb.n ], [ %i.bp, %bb.q ], [ %i.az, %.split.i14.i ]
  %.sroa.069.0.ph = phi ptr [ %.sroa.010.0.ph.i.i, %bb.h ], [ %.sroa.010.0.ph.i9.i, %bb.k ], [ %i.ag, %bb.r ], [ %i.ag, %bb.o ], [ %i.ag, %bb.p ], [ %i.ag, %bb.m ], [ %i.al, %.split.i.i ], [ %i.ag, %bb.n ], [ %i.ag, %bb.q ], [ %i.au, %.split.i14.i ]
  store ptr %.sroa.017.124.i16.sink.i.sink, ptr %4, align 8, !tbaa !522, !noalias !485
  store ptr %.sroa.013.123.i17.sink.i.sink, ptr %3, align 8, !tbaa !522, !noalias !485
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit: ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit.sink.split, %bb.i, %bb.f
  %.sroa.064.0 = phi ptr [ %i.aj, %bb.f ], [ %i.aj, %bb.i ], [ %.sroa.064.0.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit.sink.split ] ; 17 uses
  %.sroa.069.0 = phi ptr [ %i.ag, %bb.f ], [ %i.ag, %bb.i ], [ %.sroa.069.0.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit.sink.split ] ; 10 uses
  store ptr %.sroa.064.0, ptr %6, align 8, !tbaa !522
  %i.bt = load ptr, ptr %3, align 8, !tbaa !522   ; 18 uses
  %i.bu = ptrtoaddr ptr %i.bt to i64              ; 4 uses
  %i.bv = icmp eq ptr %i.bt, %.sroa.064.0
  br i1 %i.bv, label %bb.s, label %bb.u

bb.s:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit
  br i1 %.not23, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not1.i = icmp eq ptr %.sroa.069.0, %i.ah
  br i1 %.not1.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %bb.t, %.lr.ph.i28
  %.sroa.052.0 = phi ptr [ %i.by, %.lr.ph.i28 ], [ %i.bt, %bb.t ]
  %i.bw = phi ptr [ %i.bx, %.lr.ph.i28 ], [ %.sroa.069.0, %bb.t ]
  %i.bx = getelementptr inbounds i8, ptr %i.bw, i64 -4 ; 5 uses
  %i.by = getelementptr inbounds i8, ptr %.sroa.052.0, i64 -4 ; 4 uses
  %i.bz = load i32, ptr %i.bx, align 4, !tbaa !343, !noalias !13683
  store i32 0, ptr %i.bx, align 4, !tbaa !343, !noalias !13683
  %i.ca = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341, !noalias !13683
  %i.cb = add i32 %i.ca, 1
  store i32 %i.cb, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341, !noalias !13683
  %i.cc = load i32, ptr %i.by, align 4, !tbaa !343, !noalias !13683
  store i32 %i.cc, ptr %i.bx, align 4, !tbaa !343, !noalias !13683
  store i32 %i.bz, ptr %i.by, align 4, !tbaa !343, !noalias !13683
  %i.cd = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341, !noalias !13683
  %i.ce = add i32 %i.cd, -1
  store i32 %i.ce, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341, !noalias !13683
  %.not.i = icmp eq ptr %i.bx, %i.ah
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i28, !llvm.loop !229

bb.u:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit
  %.not1.i.i = icmp eq ptr %i.bt, %i.ad           ; 2 uses
  br i1 %.not23, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i29.preheader

.lr.ph.i29.preheader:                             ; preds = %bb.v
  %.reass = add i64 %i.bu, %invariant.op
  %i.cf = sub i64 %.reass, %i.g                   ; 2 uses
  %i.cg = lshr i64 %i.cf, 2
  %i.ch = add nuw nsw i64 %i.cg, 1                ; 2 uses
  %min.iters.check330 = icmp ult i64 %i.cf, 44
  br i1 %min.iters.check330, label %.lr.ph.i29.preheader365, label %vector.memcheck331

vector.memcheck331:                               ; preds = %.lr.ph.i29.preheader
  %reass.sub = sub i64 %i.bu, %i.g
  %.not359.a = add i64 %12, %reass.sub
  %i.ci = and i64 %.not359.a, -4
  %13 = xor i64 %i.ci, -4                         ; 3 uses
  %i.cj = getelementptr i8, ptr %.sroa.064.0, i64 %13 ; 2 uses
  %i.ck = getelementptr i8, ptr %.sroa.069.0, i64 %13 ; 2 uses
  %i.cl = getelementptr i8, ptr %i.bt, i64 %13    ; 2 uses
  %bound0332 = icmp ult ptr %i.cj, %.sroa.069.0
  %bound1333 = icmp ult ptr %i.ck, %.sroa.064.0
  %found.conflict334 = and i1 %bound0332, %bound1333
  %bound0335 = icmp ult ptr %i.cj, %i.bt
  %bound1336 = icmp ult ptr %i.cl, %.sroa.064.0
  %found.conflict337 = and i1 %bound0335, %bound1336
  %conflict.rdx = or i1 %found.conflict334, %found.conflict337
  %bound0338 = icmp ult ptr %i.ck, %i.bt
  %bound1339 = icmp ult ptr %i.cl, %.sroa.069.0
  %found.conflict340 = and i1 %bound0338, %bound1339
  %conflict.rdx341 = or i1 %conflict.rdx, %found.conflict340
  br i1 %conflict.rdx341, label %.lr.ph.i29.preheader365, label %vector.ph342

vector.ph342:                                     ; preds = %vector.memcheck331
  %n.vec343 = and i64 %i.ch, 9223372036854775800  ; 3 uses
  %i.cm = mul i64 %n.vec343, -4                   ; 3 uses
  %i.cn = getelementptr i8, ptr %.sroa.069.0, i64 %i.cm
  %i.co = getelementptr i8, ptr %.sroa.064.0, i64 %i.cm ; 2 uses
  %i.cp = getelementptr i8, ptr %i.bt, i64 %i.cm
  br label %vector.body344

vector.body344:                                   ; preds = %vector.body344, %vector.ph342
  %index345 = phi i64 [ 0, %vector.ph342 ], [ %index.next353, %vector.body344 ] ; 2 uses
  %i.cq = mul i64 %index345, -4                   ; 3 uses
  %next.gep346 = getelementptr i8, ptr %.sroa.069.0, i64 %i.cq ; 2 uses
  %next.gep347 = getelementptr i8, ptr %.sroa.064.0, i64 %i.cq ; 2 uses
  %next.gep348 = getelementptr i8, ptr %i.bt, i64 %i.cq ; 2 uses
  %i.cr = getelementptr inbounds i8, ptr %next.gep346, i64 -16 ; 3 uses
  %i.cs = getelementptr inbounds i8, ptr %next.gep346, i64 -32 ; 3 uses
  %wide.load349 = load <4 x i32>, ptr %i.cr, align 4, !tbaa !343, !alias.scope !13684, !noalias !13685
  %wide.load350 = load <4 x i32>, ptr %i.cs, align 4, !tbaa !343, !alias.scope !13684, !noalias !13685
  %i.ct = getelementptr inbounds i8, ptr %next.gep347, i64 -16
  %i.cu = getelementptr inbounds i8, ptr %next.gep347, i64 -32
  store <4 x i32> %wide.load349, ptr %i.ct, align 4, !tbaa !343, !alias.scope !13686, !noalias !13687
  store <4 x i32> %wide.load350, ptr %i.cu, align 4, !tbaa !343, !alias.scope !13686, !noalias !13687
  store <4 x i32> zeroinitializer, ptr %i.cr, align 4, !tbaa !343, !alias.scope !13684, !noalias !13685
  store <4 x i32> zeroinitializer, ptr %i.cs, align 4, !tbaa !343, !alias.scope !13684, !noalias !13685
  %i.cv = getelementptr inbounds i8, ptr %next.gep348, i64 -16 ; 2 uses
  %i.cw = getelementptr inbounds i8, ptr %next.gep348, i64 -32 ; 2 uses
  %wide.load351 = load <4 x i32>, ptr %i.cv, align 4, !tbaa !343, !alias.scope !13688, !noalias !13689
  %wide.load352 = load <4 x i32>, ptr %i.cw, align 4, !tbaa !343, !alias.scope !13688, !noalias !13689
  store <4 x i32> %wide.load351, ptr %i.cr, align 4, !tbaa !343, !alias.scope !13684, !noalias !13685
  store <4 x i32> %wide.load352, ptr %i.cs, align 4, !tbaa !343, !alias.scope !13684, !noalias !13685
  store <4 x i32> zeroinitializer, ptr %i.cv, align 4, !tbaa !343, !alias.scope !13688, !noalias !13689
  store <4 x i32> zeroinitializer, ptr %i.cw, align 4, !tbaa !343, !alias.scope !13688, !noalias !13689
  %index.next353 = add nuw i64 %index345, 8       ; 2 uses
  %i.cx = icmp eq i64 %index.next353, %n.vec343
  br i1 %i.cx, label %middle.block354, label %vector.body344, !llvm.loop !13667

middle.block354:                                  ; preds = %vector.body344
  %cmp.n355 = icmp eq i64 %i.ch, %n.vec343
  br i1 %cmp.n355, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i29.preheader365

.lr.ph.i29.preheader365:                          ; preds = %vector.memcheck331, %.lr.ph.i29.preheader, %middle.block354
  %.sroa.046.0.ph = phi ptr [ %.sroa.069.0, %vector.memcheck331 ], [ %.sroa.069.0, %.lr.ph.i29.preheader ], [ %i.cn, %middle.block354 ]
  %.sroa.045.0.ph = phi ptr [ %.sroa.064.0, %vector.memcheck331 ], [ %.sroa.064.0, %.lr.ph.i29.preheader ], [ %i.co, %middle.block354 ]
  %.ph366 = phi ptr [ %i.bt, %vector.memcheck331 ], [ %i.bt, %.lr.ph.i29.preheader ], [ %i.cp, %middle.block354 ]
  br label %.lr.ph.i29

.lr.ph.i29:                                       ; preds = %.lr.ph.i29.preheader365, %.lr.ph.i29
  %.sroa.046.0 = phi ptr [ %i.da, %.lr.ph.i29 ], [ %.sroa.046.0.ph, %.lr.ph.i29.preheader365 ]
  %.sroa.045.0 = phi ptr [ %i.db, %.lr.ph.i29 ], [ %.sroa.045.0.ph, %.lr.ph.i29.preheader365 ]
  %i.cy = phi ptr [ %i.cz, %.lr.ph.i29 ], [ %.ph366, %.lr.ph.i29.preheader365 ]
  %i.cz = getelementptr inbounds i8, ptr %i.cy, i64 -4 ; 4 uses
  %i.da = getelementptr inbounds i8, ptr %.sroa.046.0, i64 -4 ; 4 uses
  %i.db = getelementptr inbounds i8, ptr %.sroa.045.0, i64 -4 ; 3 uses
  %i.dc = load i32, ptr %i.da, align 4, !tbaa !343, !noalias !13689
  store i32 %i.dc, ptr %i.db, align 4, !tbaa !343, !noalias !13689
  store i32 0, ptr %i.da, align 4, !tbaa !343, !noalias !13689
  %i.dd = load i32, ptr %i.cz, align 4, !tbaa !343, !noalias !13689
  store i32 %i.dd, ptr %i.da, align 4, !tbaa !343, !noalias !13689
  store i32 0, ptr %i.cz, align 4, !tbaa !343, !noalias !13689
  %.not.i30 = icmp eq ptr %i.cz, %i.ad
  br i1 %.not.i30, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i29, !llvm.loop !13668

bb.w:                                             ; preds = %bb.u
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.w
  %.reass471 = add i64 %i.bu, %invariant.op470
  %i.de = sub i64 %.reass471, %i.g                ; 2 uses
  %i.df = lshr i64 %i.de, 2
  %i.dg = add nuw nsw i64 %i.df, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.de, 44
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader363, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %reass.sub361 = sub i64 %i.bu, %i.g
  %.not360.a = add i64 %12, %reass.sub361
  %i.dh = and i64 %.not360.a, -4
  %14 = xor i64 %i.dh, -4                         ; 2 uses
  %i.di = getelementptr i8, ptr %.sroa.064.0, i64 %14
  %i.dj = getelementptr i8, ptr %i.bt, i64 %14
  %bound0 = icmp ult ptr %i.di, %i.bt
  %bound1 = icmp ult ptr %i.dj, %.sroa.064.0
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader363, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dg, 9223372036854775800     ; 3 uses
  %i.dk = mul i64 %n.vec, -4                      ; 2 uses
  %i.dl = getelementptr i8, ptr %.sroa.064.0, i64 %i.dk ; 2 uses
  %i.dm = getelementptr i8, ptr %i.bt, i64 %i.dk
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dn = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %.sroa.064.0, i64 %i.dn ; 2 uses
  %next.gep310 = getelementptr i8, ptr %i.bt, i64 %i.dn ; 2 uses
  %i.do = getelementptr inbounds i8, ptr %next.gep310, i64 -16 ; 2 uses
  %i.dp = getelementptr inbounds i8, ptr %next.gep310, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.do, align 4, !tbaa !343, !alias.scope !13690, !noalias !13691
  %wide.load311 = load <4 x i32>, ptr %i.dp, align 4, !tbaa !343, !alias.scope !13690, !noalias !13691
  %i.dq = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.dr = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.dq, align 4, !tbaa !343, !alias.scope !13692, !noalias !13693
  store <4 x i32> %wide.load311, ptr %i.dr, align 4, !tbaa !343, !alias.scope !13692, !noalias !13693
  store <4 x i32> zeroinitializer, ptr %i.do, align 4, !tbaa !343, !alias.scope !13690, !noalias !13691
  store <4 x i32> zeroinitializer, ptr %i.dp, align 4, !tbaa !343, !alias.scope !13690, !noalias !13691
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ds = icmp eq i64 %index.next, %n.vec
  br i1 %i.ds, label %middle.block, label %vector.body, !llvm.loop !13676

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dg, %n.vec
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i.i.preheader363

.lr.ph.i.i.preheader363:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.sroa.0.0.i.ph = phi ptr [ %.sroa.064.0, %vector.memcheck ], [ %.sroa.064.0, %.lr.ph.i.i.preheader ], [ %i.dl, %middle.block ]
  %.ph = phi ptr [ %i.bt, %vector.memcheck ], [ %i.bt, %.lr.ph.i.i.preheader ], [ %i.dm, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader363, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.dv, %.lr.ph.i.i ], [ %.sroa.0.0.i.ph, %.lr.ph.i.i.preheader363 ]
  %i.dt = phi ptr [ %i.du, %.lr.ph.i.i ], [ %.ph, %.lr.ph.i.i.preheader363 ]
  %i.du = getelementptr inbounds i8, ptr %i.dt, i64 -4 ; 4 uses
  %i.dv = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -4 ; 3 uses
  %i.dw = load i32, ptr %i.du, align 4, !tbaa !343, !noalias !13691
  store i32 %i.dw, ptr %i.dv, align 4, !tbaa !343, !noalias !13691
  store i32 0, ptr %i.du, align 4, !tbaa !343, !noalias !13691
  %.not.i.i31 = icmp eq ptr %i.du, %i.ad
  br i1 %.not.i.i31, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i.i, !llvm.loop !13677

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit: ; preds = %.lr.ph.i29, %.lr.ph.i.i, %.lr.ph.i28, %middle.block354, %middle.block, %bb.v, %bb.w, %bb.t, %bb.s
  %storemerge = phi ptr [ %i.ad, %bb.s ], [ %i.dv, %.lr.ph.i.i ], [ %i.bt, %bb.t ], [ %i.by, %.lr.ph.i28 ], [ %.sroa.064.0, %bb.v ], [ %.sroa.064.0, %bb.w ], [ %i.dl, %middle.block ], [ %i.co, %middle.block354 ], [ %i.db, %.lr.ph.i29 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !522
  %i.dx = load ptr, ptr %1, align 8, !tbaa !522   ; 4 uses
  %.neg98 = mul i64 %.018.lcssa.i, -4             ; 2 uses
  %i.dy = getelementptr inbounds i8, ptr %i.dx, i64 %.neg98 ; 3 uses
  %.not.i32 = icmp eq ptr %i.ad, %.sroa.069.0
  br i1 %.not.i32, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EEvT_S9_RS9_T0_SB_SB_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit.i: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit
  %.not9.i = icmp eq i64 %.neg98, 0
  br i1 %.not9.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit.i
  %i.dz = getelementptr inbounds i8, ptr %i.dy, i64 -4 ; 3 uses
  %i.ea = getelementptr inbounds i8, ptr %i.dx, i64 -4 ; 2 uses
  %i.eb = load i32, ptr %i.dz, align 4, !tbaa !343
  store i32 0, ptr %i.dz, align 4, !tbaa !343
  %i.ec = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.ed = add i32 %i.ec, 1
  store i32 %i.ed, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.ee = load i32, ptr %i.ea, align 4, !tbaa !343
  store i32 %i.ee, ptr %i.dz, align 4, !tbaa !343
  store i32 %i.eb, ptr %i.ea, align 4, !tbaa !343
  %i.ef = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.eg = add i32 %i.ef, -1
  store i32 %i.eg, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit.i
  %i.eh = load ptr, ptr %2, align 8, !tbaa !522   ; 2 uses
  %i.ei = icmp eq ptr %i.dy, %i.eh
  br i1 %i.ei, label %.sink.split.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ej = icmp eq ptr %i.eh, %i.dx
  br i1 %i.ej, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EEvT_S9_RS9_T0_SB_SB_.exit

.sink.split.i:                                    ; preds = %bb.z, %bb.y
  %.sink.i = phi ptr [ %i.dx, %bb.y ], [ %i.dy, %bb.z ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !522
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EEvT_S9_RS9_T0_SB_SB_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EEvT_S9_RS9_T0_SB_SB_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, %bb.z, %.sink.split.i
  store ptr %i.ad, ptr %3, align 8, !tbaa !522
  %i.ek = load ptr, ptr %1, align 8, !tbaa !522
  %i.el = getelementptr inbounds i8, ptr %i.ek, i64 -4 ; 2 uses
  store ptr %i.el, ptr %1, align 8, !tbaa !522
  %i.em = icmp ne i64 %.0140, 0
  %.neg = sext i1 %i.em to i64
  %i.en = add i64 %.0140, %.neg
  %i.eo = icmp ne i64 %i.ac, 0
  %.neg24 = sext i1 %i.eo to i64
  %i.ep = add i64 %.sroa.speculated, %.neg24
  %i.eq = add i64 %.095139, -1                    ; 2 uses
  %.not = icmp eq i64 %i.eq, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !13678

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EEvT_S9_RS9_T0_SB_SB_.exit, %bb.a
  %i.er = load ptr, ptr %6, align 8, !tbaa !522
  store ptr %i.er, ptr %0, align 8, !tbaa !522
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPNS_9container4test24movable_and_copyable_intES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET_SG_SG_RSG_SG_SG_RT0_SJ_T1_T2_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = load ptr, ptr %5, align 8, !tbaa !419    ; 3 uses
  %i.c = load ptr, ptr %6, align 8, !tbaa !419    ; 2 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !419    ; 11 uses
  %.not = icmp eq ptr %i.d, %4                    ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.c
  br i1 %i.e, label %bb.b, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit

bb.b:                                             ; preds = %bb.a
  %.not6.i = icmp eq ptr %0, %1
  br i1 %.not6.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.f = load i32, ptr %4, align 4, !tbaa !343
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %.07.i = phi ptr [ %0, %.lr.ph.i ], [ %i.i, %bb.d ] ; 3 uses
  %i.g = load i32, ptr %.07.i, align 4, !tbaa !343
  %i.h = icmp slt i32 %i.f, %i.g
  br i1 %i.h, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.07.i, i64 4 ; 3 uses
  %.not.i = icmp eq ptr %i.i, %1
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit, label %bb.c, !llvm.loop !230

_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit: ; preds = %bb.c, %bb.d, %bb.b
  %.0.lcssa.i = phi ptr [ %0, %bb.b ], [ %.07.i, %bb.c ], [ %i.i, %bb.d ] ; 12 uses
  %i.j = ptrtoint ptr %.0.lcssa.i to i64          ; 3 uses
  %i.k = ptrtoint ptr %0 to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = getelementptr inbounds i8, ptr %i.b, i64 %i.l ; 12 uses
  %.not.i32 = icmp eq ptr %.0.lcssa.i, %1         ; 2 uses
  br i1 %.not, label %bb.k, label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit
  %.not47.i = icmp eq ptr %i.d, %3
  %or.cond.i = select i1 %.not.i32, i1 true, i1 %.not47.i
  br i1 %or.cond.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.p = load i32, ptr %.0.lcssa.i, align 4, !tbaa !343
  store i32 %i.p, ptr %i.m, align 4, !tbaa !343
  store i32 0, ptr %.0.lcssa.i, align 4, !tbaa !343
  %i.q = load i32, ptr %4, align 4, !tbaa !343
  store i32 %i.q, ptr %.0.lcssa.i, align 4, !tbaa !343
  store i32 0, ptr %4, align 4, !tbaa !343
  %i.r = load i32, ptr %i.d, align 4, !tbaa !343
  store i32 %i.r, ptr %4, align 4, !tbaa !343
  store i32 0, ptr %i.d, align 4, !tbaa !343
  %.03759.i = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 2 uses
  %.04160.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 4 ; 2 uses
  %.not4861.i = icmp eq ptr %.04160.i, %1
  br i1 %.not4861.i, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread90, label %.lr.ph.i31

.lr.ph.i31:                                       ; preds = %bb.f, %bb.j
  %indvar = phi i64 [ %indvar.next, %bb.j ], [ 0, %bb.f ] ; 3 uses
  %.04166.i = phi ptr [ %.041.i, %bb.j ], [ %.04160.i, %bb.f ] ; 10 uses
  %.03765.i = phi ptr [ %.037.i, %bb.j ], [ %.03759.i, %bb.f ] ; 3 uses
  %.064.i = phi ptr [ %.1.i, %bb.j ], [ %i.o, %bb.f ] ; 6 uses
  %.03563.i = phi ptr [ %.136.i, %bb.j ], [ %i.n, %bb.f ] ; 6 uses
  %.03962.i = phi ptr [ %.140.i, %bb.j ], [ %i.m, %bb.f ] ; 12 uses
  %i.s = icmp eq ptr %.03563.i, %3
  br i1 %i.s, label %.lr.ph.i.i.i.preheader, label %bb.g

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i31
  %i.t = add i64 %i.a, -8
  %i.u = shl i64 %indvar, 2
  %i.v = add i64 %i.u, %i.j
  %i.w = sub i64 %i.t, %i.v                       ; 3 uses
  %i.x = lshr i64 %i.w, 2
  %i.y = add nuw nsw i64 %i.x, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.w, 108
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader296, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.z = and i64 %i.w, -4                         ; 2 uses
  %i.aa = getelementptr i8, ptr %.03962.i, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 4
end_hunk_3
begin_hunk_4_@_ZN5boost7movelib21merge_adaptive_ONlogNIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEES5_EEvT_SE_SE_T0_T1_NS0_9iter_sizeISE_E4typeE:bb.a
  br i1 %lcmp.mod45.not, label %.loopexit, label %.lr.ph.i.lver.orig.epil.preheader

.lr.ph.i.lver.orig.epil.preheader:                ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i.lver.orig.preheader
  %storemerge13.i.lver.orig.epil.init = phi i64 [ 1, %.lr.ph.i.lver.orig.preheader ], [ %storemerge.i.lver.orig.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %storemerge.in712.i.lver.orig.epil.init = phi i64 [ 0, %.lr.ph.i.lver.orig.preheader ], [ %storemerge.i.lver.orig, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod47 = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod47)
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %storemerge13.i.lver.orig.epil.init
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %storemerge.in712.i.lver.orig.epil.init ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !343
  store i32 %i.u, ptr %i.s, align 4, !tbaa !343
  store i32 0, ptr %i.t, align 4, !tbaa !343
  %storemerge6.in.i.lver.orig.epil = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %storemerge6.i.lver.orig.epil = add i32 %storemerge6.in.i.lver.orig.epil, 1
  store i32 %storemerge6.i.lver.orig.epil, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  br label %.loopexit

.loopexit.loopexit41.unr-lcssa:                   ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.loopexit.loopexit41.unr-lcssa, %.lr.ph.i.ph
  %storemerge13.i.epil.init = phi i64 [ 1, %.lr.ph.i.ph ], [ %storemerge.i.1, %.loopexit.loopexit41.unr-lcssa ] ; 2 uses
  %storemerge.in712.i.epil.init = phi i64 [ 0, %.lr.ph.i.ph ], [ %storemerge.i, %.loopexit.loopexit41.unr-lcssa ]
  %lcmp.mod43 = trunc i64 %i.m to i1
  tail call void @llvm.assume(i1 %lcmp.mod43)
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %storemerge13.i.epil.init
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %storemerge.in712.i.epil.init
  store i32 %load_initial, ptr %i.v, align 4, !tbaa !343
  store i32 0, ptr %i.w, align 4, !tbaa !343
  %storemerge6.in.i.epil = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %storemerge6.i.epil = add i32 %storemerge6.in.i.epil, 1
  store i32 %storemerge6.i.epil, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.epil.preheader, %.loopexit.loopexit41.unr-lcssa, %.lr.ph.i.lver.orig.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.c
  %storemerge.in.lcssa.i = phi i64 [ 0, %bb.c ], [ %storemerge13.i.lver.orig.epil.init, %.lr.ph.i.lver.orig.epil.preheader ], [ %storemerge.i.lver.orig, %.loopexit.loopexit.unr-lcssa ], [ %storemerge.i, %.loopexit.loopexit41.unr-lcssa ], [ %storemerge13.i.epil.init, %.lr.ph.i.epil.preheader ]
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %storemerge.in.lcssa.i ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !343
  store i32 %i.y, ptr %0, align 4, !tbaa !343
  store i32 0, ptr %i.x, align 4, !tbaa !343
  %i.z = ptrtoint ptr %2 to i64
  %i.aa = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = ashr exact i64 %i.ab, 2
  %i.ad = ptrtoint ptr %0 to i64
  %i.ae = sub i64 %i.aa, %i.ad
  %i.af = ashr exact i64 %i.ae, 2
  invoke void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveIPNS_9container4test24movable_and_copyable_intES5_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_SE_NS0_9iter_sizeISE_E4typeESH_T0_SH_T1_(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i64 noundef %i.af, i64 noundef %i.ac, ptr noundef nonnull %3, i64 noundef %4)
          to label %.preheader.i.i.i.preheader unwind label %.preheader.i.i.i27

.preheader.i.i.i.preheader:                       ; preds = %.loopexit
  %xtraiter55 = and i64 %4, 3                     ; 3 uses
  %i.ag = icmp ult i64 %4, 4
  br i1 %i.ag, label %.preheader.i.i.i.epil.preheader, label %.preheader.i.i.i.preheader.new

.preheader.i.i.i.preheader.new:                   ; preds = %.preheader.i.i.i.preheader
  %unroll_iter59 = and i64 %4, -4
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i, %.preheader.i.i.i.preheader.new
  %.07.i.i.i = phi i64 [ 0, %.preheader.i.i.i.preheader.new ], [ %i.aw, %.preheader.i.i.i ] ; 5 uses
  %niter60 = phi i64 [ 0, %.preheader.i.i.i.preheader.new ], [ %niter60.next.3, %.preheader.i.i.i ]
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.07.i.i.i
  store i32 -2147483648, ptr %i.ah, align 4, !tbaa !343
  %i.ai = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.aj = add i32 %i.ai, -1
  store i32 %i.aj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.07.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  store i32 -2147483648, ptr %i.al, align 4, !tbaa !343
  %i.am = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.an = add i32 %i.am, -1
  store i32 %i.an, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.07.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i32 -2147483648, ptr %i.ap, align 4, !tbaa !343
  %i.aq = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.ar = add i32 %i.aq, -1
  store i32 %i.ar, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.07.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  store i32 -2147483648, ptr %i.at, align 4, !tbaa !343
  %i.au = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.av = add i32 %i.au, -1
  store i32 %i.av, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.aw = add nuw i64 %.07.i.i.i, 4               ; 2 uses
  %niter60.next.3 = add nuw i64 %niter60, 4       ; 2 uses
  %niter60.ncmp.3 = icmp eq i64 %niter60.next.3, %unroll_iter59
  br i1 %niter60.ncmp.3, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit.loopexit.unr-lcssa, label %.preheader.i.i.i, !llvm.loop !44

.preheader.i.i.i27:                               ; preds = %.loopexit
  %i.ax = landingpad { ptr, i32 }
          cleanup
  %xtraiter50 = and i64 %4, 3                     ; 3 uses
  %i.ay = icmp ult i64 %4, 4
  br i1 %i.ay, label %.epil.preheader, label %.preheader.i.i.i27.new

.preheader.i.i.i27.new:                           ; preds = %.preheader.i.i.i27
  %unroll_iter53 = and i64 %4, -4
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i.i.i27.new
  %.07.i.i.i28 = phi i64 [ 0, %.preheader.i.i.i27.new ], [ %i.bo, %bb.d ] ; 5 uses
  %niter54 = phi i64 [ 0, %.preheader.i.i.i27.new ], [ %niter54.next.3, %bb.d ]
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.07.i.i.i28
  store i32 -2147483648, ptr %i.az, align 4, !tbaa !343
  %i.ba = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.bb = add i32 %i.ba, -1
  store i32 %i.bb, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.07.i.i.i28
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  store i32 -2147483648, ptr %i.bd, align 4, !tbaa !343
  %i.be = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.bf = add i32 %i.be, -1
  store i32 %i.bf, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.07.i.i.i28
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i32 -2147483648, ptr %i.bh, align 4, !tbaa !343
  %i.bi = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.bj = add i32 %i.bi, -1
  store i32 %i.bj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.07.i.i.i28
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  store i32 -2147483648, ptr %i.bl, align 4, !tbaa !343
  %i.bm = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.bn = add i32 %i.bm, -1
  store i32 %i.bn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.bo = add nuw i64 %.07.i.i.i28, 4             ; 2 uses
  %niter54.next.3 = add nuw i64 %niter54, 4       ; 2 uses
  %niter54.ncmp.3 = icmp eq i64 %niter54.next.3, %unroll_iter53
  br i1 %niter54.ncmp.3, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit30.unr-lcssa, label %bb.d, !llvm.loop !44

_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit30.unr-lcssa: ; preds = %bb.d
  %lcmp.mod51.not = icmp eq i64 %xtraiter50, 0
  br i1 %lcmp.mod51.not, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit30, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit30.unr-lcssa, %.preheader.i.i.i27
  %.07.i.i.i28.epil.init = phi i64 [ 0, %.preheader.i.i.i27 ], [ %i.bo, %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit30.unr-lcssa ]
  %lcmp.mod52 = icmp ne i64 %xtraiter50, 0
  tail call void @llvm.assume(i1 %lcmp.mod52)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader
  %.07.i.i.i28.epil = phi i64 [ %.07.i.i.i28.epil.init, %.epil.preheader ], [ %i.bs, %bb.e ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.e ]
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.07.i.i.i28.epil
  store i32 -2147483648, ptr %i.bp, align 4, !tbaa !343
  %i.bq = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.br = add i32 %i.bq, -1
  store i32 %i.br, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.bs = add nuw i64 %.07.i.i.i28.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter50
  br i1 %epil.iter.cmp.not, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit30, label %bb.e, !llvm.loop !13809

_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit30: ; preds = %bb.e, %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit30.unr-lcssa
  resume { ptr, i32 } %i.ax

bb.f:                                             ; preds = %bb.b
  %i.bt = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bu = ptrtoint ptr %0 to i64
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = ashr exact i64 %i.bv, 2
  %i.bx = ptrtoint ptr %2 to i64
  %i.by = sub i64 %i.bx, %i.bt
  %i.bz = ashr exact i64 %i.by, 2
  tail call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_SE_NS0_9iter_sizeISE_E4typeESH_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %i.bw, i64 noundef %i.bz)
  br label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit

_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit.loopexit.unr-lcssa: ; preds = %.preheader.i.i.i
  %lcmp.mod57.not = icmp eq i64 %xtraiter55, 0
  br i1 %lcmp.mod57.not, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit, label %.preheader.i.i.i.epil.preheader

.preheader.i.i.i.epil.preheader:                  ; preds = %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit.loopexit.unr-lcssa, %.preheader.i.i.i.preheader
  %.07.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.preheader ], [ %i.aw, %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit.loopexit.unr-lcssa ]
  %lcmp.mod58 = icmp ne i64 %xtraiter55, 0
  tail call void @llvm.assume(i1 %lcmp.mod58)
  br label %.preheader.i.i.i.epil

.preheader.i.i.i.epil:                            ; preds = %.preheader.i.i.i.epil, %.preheader.i.i.i.epil.preheader
  %.07.i.i.i.epil = phi i64 [ %i.cd, %.preheader.i.i.i.epil ], [ %.07.i.i.i.epil.init, %.preheader.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter56 = phi i64 [ %epil.iter56.next, %.preheader.i.i.i.epil ], [ 0, %.preheader.i.i.i.epil.preheader ]
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.07.i.i.i.epil
  store i32 -2147483648, ptr %i.ca, align 4, !tbaa !343
  %i.cb = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.cc = add i32 %i.cb, -1
  store i32 %i.cc, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.cd = add nuw i64 %.07.i.i.i.epil, 1
  %epil.iter56.next = add i64 %epil.iter56, 1     ; 2 uses
  %epil.iter56.cmp.not = icmp eq i64 %epil.iter56.next, %xtraiter55
  br i1 %epil.iter56.cmp.not, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit, label %.preheader.i.i.i.epil, !llvm.loop !13810

_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit: ; preds = %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit.loopexit.unr-lcssa, %.preheader.i.i.i.epil, %bb.a, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveIPNS_9container4test24movable_and_copyable_intES5_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_SE_NS0_9iter_sizeISE_E4typeESH_T0_SH_T1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %5 to i64                  ; 3 uses
  %7 = alloca %"class.boost::movelib::range_xbuf.183", align 8 ; 6 uses
  %i.b = icmp ne i64 %4, 0
  %i.c = icmp ne i64 %3, 0
  %or.cond104 = and i1 %i.c, %i.b
  br i1 %or.cond104, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.d = ptrtoint ptr %2 to i64
  %8 = sub i64 -4, %i.a                           ; 2 uses
  %invariant.op = sub i64 -4, %i.a
  %invariant.op331 = sub i64 -4, %i.a
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib15rotate_adaptiveIPNS_9container4test24movable_and_copyable_intES5_EET_S6_S6_S6_NS0_9iter_sizeIS6_E4typeES9_T0_S9_.exit
  %.tr91108 = phi i64 [ %4, %.lr.ph ], [ %i.fa, %_ZN5boost7movelib15rotate_adaptiveIPNS_9container4test24movable_and_copyable_intES5_EET_S6_S6_S6_NS0_9iter_sizeIS6_E4typeES9_T0_S9_.exit ] ; 5 uses
  %.tr90107 = phi i64 [ %3, %.lr.ph ], [ %i.au, %_ZN5boost7movelib15rotate_adaptiveIPNS_9container4test24movable_and_copyable_intES5_EET_S6_S6_S6_NS0_9iter_sizeIS6_E4typeES9_T0_S9_.exit ] ; 6 uses
  %.tr88106 = phi ptr [ %1, %.lr.ph ], [ %.071, %_ZN5boost7movelib15rotate_adaptiveIPNS_9container4test24movable_and_copyable_intES5_EET_S6_S6_S6_NS0_9iter_sizeIS6_E4typeES9_T0_S9_.exit ] ; 37 uses
  %.tr105 = phi ptr [ %0, %.lr.ph ], [ %.0.i, %_ZN5boost7movelib15rotate_adaptiveIPNS_9container4test24movable_and_copyable_intES5_EET_S6_S6_S6_NS0_9iter_sizeIS6_E4typeES9_T0_S9_.exit ] ; 11 uses
  %.tr88106177 = ptrtoaddr ptr %.tr88106 to i64   ; 4 uses
  %.not = icmp ugt i64 %.tr90107, %6
  %.not76 = icmp ugt i64 %.tr91108, %6
  %or.cond77 = and i1 %.not, %.not76
  br i1 %or.cond77, label %bb.c, label %_ZN5boost7movelib14buffered_mergeIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_10range_xbufIS5_mNS0_7move_opEEEEEvT_SH_SH_T0_RT1_.exit

_ZN5boost7movelib14buffered_mergeIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_10range_xbufIS5_mNS0_7move_opEEEEEvT_SH_SH_T0_RT1_.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %6
  store ptr %5, ptr %7, align 8, !tbaa !526
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %5, ptr %i.f, align 8, !tbaa !527
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.e, ptr %i.g, align 8, !tbaa !528
  call void @_ZN5boost7movelib17op_buffered_mergeIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7move_opENS0_10range_xbufIS5_mSE_EEEEvT_SH_SH_T0_T1_RT2_(ptr noundef %.tr105, ptr noundef %.tr88106, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.h = add i64 %.tr91108, %.tr90107             ; 2 uses
  %i.i = icmp eq i64 %i.h, 2
  br i1 %i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.j = load i32, ptr %.tr88106, align 4, !tbaa !343
  %i.k = load i32, ptr %.tr105, align 4, !tbaa !343 ; 2 uses
  %i.l = icmp slt i32 %i.j, %i.k
  br i1 %i.l, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %.tr105, align 4, !tbaa !343
  %i.m = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.n = add i32 %i.m, 1
  store i32 %i.n, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.o = load i32, ptr %.tr88106, align 4, !tbaa !343
  store i32 %i.o, ptr %.tr105, align 4, !tbaa !343
  store i32 %i.k, ptr %.tr88106, align 4, !tbaa !343
  %i.p = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.q = add i32 %i.p, -1
  store i32 %i.q, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  br label %.loopexit

bb.f:                                             ; preds = %bb.c
  %i.r = icmp ult i64 %i.h, 16
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN5boost7movelib20merge_bufferless_ON2IPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_SE_T0_(ptr noundef %.tr105, ptr noundef %.tr88106, ptr noundef %2)
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  %i.s = icmp ugt i64 %.tr90107, %.tr91108
  br i1 %i.s, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.t = lshr i64 %.tr90107, 1                    ; 2 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %.tr105, i64 %i.t ; 2 uses
  %.not15.i = icmp eq ptr %2, %.tr88106
  %.pre = ptrtoint ptr %.tr88106 to i64           ; 3 uses
  br i1 %.not15.i, label %_ZN5boost7movelib11lower_boundIPNS_9container4test24movable_and_copyable_intES4_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEET_SE_SE_RKT0_T1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i
  %i.v = sub i64 %i.d, %.pre
  %i.w = ashr exact i64 %i.v, 2
  %i.x = load i32, ptr %i.u, align 4, !tbaa !343
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph.i
  %.017.i = phi i64 [ %i.w, %.lr.ph.i ], [ %.1.i, %bb.j ] ; 2 uses
  %.01316.i = phi ptr [ %.tr88106, %.lr.ph.i ], [ %.114.i, %bb.j ] ; 2 uses
  %i.y = lshr i64 %.017.i, 1                      ; 3 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.01316.i, i64 %i.y ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !343
  %i.ab = icmp slt i32 %i.aa, %i.x                ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %.neg.i = xor i64 %i.y, -1
  %i.ad = add i64 %.017.i, %.neg.i
  %.114.i = select i1 %i.ab, ptr %i.ac, ptr %.01316.i ; 3 uses
  %.1.i = select i1 %i.ab, i64 %i.ad, i64 %i.y    ; 2 uses
  %.not.i = icmp eq i64 %.1.i, 0
  br i1 %.not.i, label %_ZN5boost7movelib11lower_boundIPNS_9container4test24movable_and_copyable_intES4_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEET_SE_SE_RKT0_T1_.exit.loopexit, label %bb.j, !llvm.loop !212

_ZN5boost7movelib11lower_boundIPNS_9container4test24movable_and_copyable_intES4_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEET_SE_SE_RKT0_T1_.exit.loopexit: ; preds = %bb.j
  %.pre127 = ptrtoint ptr %.114.i to i64
  br label %_ZN5boost7movelib11lower_boundIPNS_9container4test24movable_and_copyable_intES4_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEET_SE_SE_RKT0_T1_.exit

_ZN5boost7movelib11lower_boundIPNS_9container4test24movable_and_copyable_intES4_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEET_SE_SE_RKT0_T1_.exit: ; preds = %bb.i, %_ZN5boost7movelib11lower_boundIPNS_9container4test24movable_and_copyable_intES4_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEET_SE_SE_RKT0_T1_.exit.loopexit
  %.pre-phi128 = phi i64 [ %.pre127, %_ZN5boost7movelib11lower_boundIPNS_9container4test24movable_and_copyable_intES4_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEET_SE_SE_RKT0_T1_.exit.loopexit ], [ %.pre, %bb.i ]
  %.013.lcssa.i = phi ptr [ %.114.i, %_ZN5boost7movelib11lower_boundIPNS_9container4test24movable_and_copyable_intES4_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEET_SE_SE_RKT0_T1_.exit.loopexit ], [ %.tr88106, %bb.i ]
  %i.ae = sub i64 %.pre-phi128, %.pre
  %i.af = ashr exact i64 %i.ae, 2
  br label %bb.m

bb.k:                                             ; preds = %bb.h
  %i.ag = lshr i64 %.tr91108, 1                   ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.tr88106, i64 %i.ag ; 2 uses
  %.not15.i78 = icmp eq ptr %.tr88106, %.tr105
  %.pre125 = ptrtoint ptr %.tr105 to i64          ; 3 uses
  br i1 %.not15.i78, label %_ZN5boost7movelib11upper_boundIPNS_9container4test24movable_and_copyable_intES4_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEET_SE_SE_RKT0_T1_.exit, label %.lr.ph.i79

.lr.ph.i79:                                       ; preds = %bb.k
  %i.ai = ptrtoint ptr %.tr88106 to i64
  %i.aj = sub i64 %i.ai, %.pre125
  %i.ak = ashr exact i64 %i.aj, 2
  %i.al = load i32, ptr %i.ah, align 4, !tbaa !343
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.i79
  %.017.i80 = phi i64 [ %i.ak, %.lr.ph.i79 ], [ %.1.i84, %bb.l ] ; 2 uses
  %.01316.i81 = phi ptr [ %.tr105, %.lr.ph.i79 ], [ %.114.i83, %bb.l ] ; 2 uses
  %i.am = lshr i64 %.017.i80, 1                   ; 3 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %.01316.i81, i64 %i.am ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !343
  %i.ap = icmp slt i32 %i.al, %i.ao               ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %.neg.i82 = xor i64 %i.am, -1
  %i.ar = add i64 %.017.i80, %.neg.i82
  %.114.i83 = select i1 %i.ap, ptr %.01316.i81, ptr %i.aq ; 3 uses
  %.1.i84 = select i1 %i.ap, i64 %i.am, i64 %i.ar ; 2 uses
  %.not.i85 = icmp eq i64 %.1.i84, 0
  br i1 %.not.i85, label %_ZN5boost7movelib11upper_boundIPNS_9container4test24movable_and_copyable_intES4_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEET_SE_SE_RKT0_T1_.exit.loopexit, label %bb.l, !llvm.loop !215

_ZN5boost7movelib11upper_boundIPNS_9container4test24movable_and_copyable_intES4_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEET_SE_SE_RKT0_T1_.exit.loopexit: ; preds = %bb.l
  %.pre129 = ptrtoint ptr %.114.i83 to i64
  br label %_ZN5boost7movelib11upper_boundIPNS_9container4test24movable_and_copyable_intES4_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEET_SE_SE_RKT0_T1_.exit

_ZN5boost7movelib11upper_boundIPNS_9container4test24movable_and_copyable_intES4_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEET_SE_SE_RKT0_T1_.exit: ; preds = %bb.k, %_ZN5boost7movelib11upper_boundIPNS_9container4test24movable_and_copyable_intES4_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEET_SE_SE_RKT0_T1_.exit.loopexit
  %.pre-phi130 = phi i64 [ %.pre129, %_ZN5boost7movelib11upper_boundIPNS_9container4test24movable_and_copyable_intES4_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEET_SE_SE_RKT0_T1_.exit.loopexit ], [ %.pre125, %bb.k ]
  %.013.lcssa.i86 = phi ptr [ %.114.i83, %_ZN5boost7movelib11upper_boundIPNS_9container4test24movable_and_copyable_intES4_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEET_SE_SE_RKT0_T1_.exit.loopexit ], [ %.tr105, %bb.k ]
  %i.as = sub i64 %.pre-phi130, %.pre125
  %i.at = ashr exact i64 %i.as, 2
  br label %bb.m

bb.m:                                             ; preds = %_ZN5boost7movelib11upper_boundIPNS_9container4test24movable_and_copyable_intES4_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEET_SE_SE_RKT0_T1_.exit, %_ZN5boost7movelib11lower_boundIPNS_9container4test24movable_and_copyable_intES4_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEET_SE_SE_RKT0_T1_.exit
  %.071 = phi ptr [ %.013.lcssa.i, %_ZN5boost7movelib11lower_boundIPNS_9container4test24movable_and_copyable_intES4_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEET_SE_SE_RKT0_T1_.exit ], [ %i.ah, %_ZN5boost7movelib11upper_boundIPNS_9container4test24movable_and_copyable_intES4_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEET_SE_SE_RKT0_T1_.exit ] ; 14 uses
  %.070 = phi i64 [ %i.t, %_ZN5boost7movelib11lower_boundIPNS_9container4test24movable_and_copyable_intES4_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEET_SE_SE_RKT0_T1_.exit ], [ %i.at, %_ZN5boost7movelib11upper_boundIPNS_9container4test24movable_and_copyable_intES4_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEET_SE_SE_RKT0_T1_.exit ] ; 3 uses
  %.069 = phi i64 [ %i.af, %_ZN5boost7movelib11lower_boundIPNS_9container4test24movable_and_copyable_intES4_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEET_SE_SE_RKT0_T1_.exit ], [ %i.ag, %_ZN5boost7movelib11upper_boundIPNS_9container4test24movable_and_copyable_intES4_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEET_SE_SE_RKT0_T1_.exit ] ; 5 uses
  %.0 = phi ptr [ %i.u, %_ZN5boost7movelib11lower_boundIPNS_9container4test24movable_and_copyable_intES4_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEET_SE_SE_RKT0_T1_.exit ], [ %.013.lcssa.i86, %_ZN5boost7movelib11upper_boundIPNS_9container4test24movable_and_copyable_intES4_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEET_SE_SE_RKT0_T1_.exit ] ; 27 uses
  %.0205 = ptrtoaddr ptr %.0 to i64               ; 2 uses
  %.071176 = ptrtoaddr ptr %.071 to i64           ; 2 uses
  %i.au = sub i64 %.tr90107, %.070                ; 4 uses
  %i.av = icmp ule i64 %i.au, %.069
  %.not.i87 = icmp ugt i64 %.069, %6
  %or.cond.i = or i1 %i.av, %.not.i87
  br i1 %or.cond.i, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not36.i = icmp eq i64 %.069, 0
  br i1 %.not36.i, label %_ZN5boost7movelib15rotate_adaptiveIPNS_9container4test24movable_and_copyable_intES5_EET_S6_S6_S6_NS0_9iter_sizeIS6_E4typeES9_T0_S9_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.not8.i.i = icmp eq ptr %.tr88106, %.071
  br i1 %.not8.i.i, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.o
  %i.aw = add i64 %.071176, -4
  %i.ax = sub i64 %i.aw, %.tr88106177             ; 3 uses
  %i.ay = lshr i64 %i.ax, 2
  %i.az = add nuw nsw i64 %i.ay, 1                ; 2 uses
  %min.iters.check287 = icmp ult i64 %i.ax, 28
  br i1 %min.iters.check287, label %.lr.ph.i.i.preheader312, label %vector.memcheck288

vector.memcheck288:                               ; preds = %.lr.ph.i.i.preheader
  %i.ba = and i64 %i.ax, -4
  %i.bb = add i64 %i.ba, 4                        ; 2 uses
  %i.bc = getelementptr i8, ptr %5, i64 %i.bb
  %i.bd = getelementptr i8, ptr %.tr88106, i64 %i.bb
  %bound0289 = icmp ult ptr %5, %i.bd
  %bound1290 = icmp ult ptr %.tr88106, %i.bc
  %found.conflict291 = and i1 %bound0289, %bound1290
  br i1 %found.conflict291, label %.lr.ph.i.i.preheader312, label %vector.ph292

vector.ph292:                                     ; preds = %vector.memcheck288
  %n.vec293 = and i64 %i.az, 9223372036854775800  ; 3 uses
  %i.be = shl i64 %n.vec293, 2                    ; 2 uses
  %i.bf = getelementptr i8, ptr %5, i64 %i.be     ; 2 uses
  %i.bg = getelementptr i8, ptr %.tr88106, i64 %i.be
  br label %vector.body294

vector.body294:                                   ; preds = %vector.body294, %vector.ph292
  %index295 = phi i64 [ 0, %vector.ph292 ], [ %index.next300, %vector.body294 ] ; 2 uses
  %i.bh = shl i64 %index295, 2                    ; 2 uses
  %next.gep296 = getelementptr i8, ptr %5, i64 %i.bh ; 2 uses
  %next.gep297 = getelementptr i8, ptr %.tr88106, i64 %i.bh ; 3 uses
  %i.bi = getelementptr i8, ptr %next.gep297, i64 16 ; 2 uses
  %wide.load298 = load <4 x i32>, ptr %next.gep297, align 4, !tbaa !343, !alias.scope !13841
  %wide.load299 = load <4 x i32>, ptr %i.bi, align 4, !tbaa !343, !alias.scope !13841
  %i.bj = getelementptr i8, ptr %next.gep296, i64 16
  store <4 x i32> %wide.load298, ptr %next.gep296, align 4, !tbaa !343, !alias.scope !13842, !noalias !13841
  store <4 x i32> %wide.load299, ptr %i.bj, align 4, !tbaa !343, !alias.scope !13842, !noalias !13841
  store <4 x i32> zeroinitializer, ptr %next.gep297, align 4, !tbaa !343, !alias.scope !13841
  store <4 x i32> zeroinitializer, ptr %i.bi, align 4, !tbaa !343, !alias.scope !13841
  %index.next300 = add nuw i64 %index295, 8       ; 2 uses
  %i.bk = icmp eq i64 %index.next300, %n.vec293
  br i1 %i.bk, label %middle.block301, label %vector.body294, !llvm.loop !13814

middle.block301:                                  ; preds = %vector.body294
  %cmp.n302 = icmp eq i64 %i.az, %n.vec293
  br i1 %cmp.n302, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i.i.preheader312

.lr.ph.i.i.preheader312:                          ; preds = %vector.memcheck288, %.lr.ph.i.i.preheader, %middle.block301
  %.010.i.i.ph = phi ptr [ %5, %vector.memcheck288 ], [ %5, %.lr.ph.i.i.preheader ], [ %i.bf, %middle.block301 ]
  %.079.i.i.ph = phi ptr [ %.tr88106, %vector.memcheck288 ], [ %.tr88106, %.lr.ph.i.i.preheader ], [ %i.bg, %middle.block301 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader312, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.bn, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader312 ] ; 2 uses
  %.079.i.i = phi ptr [ %i.bm, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader312 ] ; 3 uses
  %i.bl = load i32, ptr %.079.i.i, align 4, !tbaa !343
  store i32 %i.bl, ptr %.010.i.i, align 4, !tbaa !343
  store i32 0, ptr %.079.i.i, align 4, !tbaa !343
  %i.bm = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bm, %.071
  br i1 %.not.i.i, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i.i, !llvm.loop !13815

_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i: ; preds = %.lr.ph.i.i, %middle.block301, %bb.o
  %.0.lcssa.i.i = phi ptr [ %5, %bb.o ], [ %i.bf, %middle.block301 ], [ %i.bn, %.lr.ph.i.i ] ; 3 uses
  %.0.lcssa.i.i233 = ptrtoaddr ptr %.0.lcssa.i.i to i64 ; 2 uses
  %.not8.i37.i = icmp eq ptr %.0, %.tr88106
  br i1 %.not8.i37.i, label %_ZN5boost13move_backwardIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i38.i.preheader

.lr.ph.i38.i.preheader:                           ; preds = %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i
  %i.bo = add i64 %.tr88106177, -4
  %i.bp = sub i64 %i.bo, %.0205                   ; 3 uses
  %i.bq = lshr i64 %i.bp, 2
  %i.br = add nuw nsw i64 %i.bq, 1                ; 2 uses
  %min.iters.check261 = icmp ult i64 %i.bp, 44
  br i1 %min.iters.check261, label %.lr.ph.i38.i.preheader311, label %vector.memcheck262

vector.memcheck262:                               ; preds = %.lr.ph.i38.i.preheader
  %.not305 = and i64 %i.bp, -4
  %i.bs = xor i64 %.not305, -4                    ; 2 uses
  %i.bt = getelementptr i8, ptr %.071, i64 %i.bs
  %i.bu = getelementptr i8, ptr %.tr88106, i64 %i.bs
  %bound0263 = icmp ult ptr %i.bt, %.tr88106
  %bound1264 = icmp ult ptr %i.bu, %.071
  %found.conflict265 = and i1 %bound0263, %bound1264
  br i1 %found.conflict265, label %.lr.ph.i38.i.preheader311, label %vector.ph266

vector.ph266:                                     ; preds = %vector.memcheck262
  %n.vec267 = and i64 %i.br, 9223372036854775800  ; 3 uses
  %i.bv = mul i64 %n.vec267, -4                   ; 2 uses
  %i.bw = getelementptr i8, ptr %.071, i64 %i.bv
  %i.bx = getelementptr i8, ptr %.tr88106, i64 %i.bv
  br label %vector.body268

vector.body268:                                   ; preds = %vector.body268, %vector.ph266
  %index269 = phi i64 [ 0, %vector.ph266 ], [ %index.next274, %vector.body268 ] ; 2 uses
  %i.by = mul i64 %index269, -4                   ; 2 uses
  %next.gep270 = getelementptr i8, ptr %.071, i64 %i.by ; 2 uses
  %next.gep271 = getelementptr i8, ptr %.tr88106, i64 %i.by ; 2 uses
  %i.bz = getelementptr inbounds i8, ptr %next.gep271, i64 -16 ; 2 uses
  %i.ca = getelementptr inbounds i8, ptr %next.gep271, i64 -32 ; 2 uses
  %wide.load272 = load <4 x i32>, ptr %i.bz, align 4, !tbaa !343, !alias.scope !13843
  %wide.load273 = load <4 x i32>, ptr %i.ca, align 4, !tbaa !343, !alias.scope !13843
  %i.cb = getelementptr inbounds i8, ptr %next.gep270, i64 -16
  %i.cc = getelementptr inbounds i8, ptr %next.gep270, i64 -32
  store <4 x i32> %wide.load272, ptr %i.cb, align 4, !tbaa !343, !alias.scope !13844, !noalias !13843
  store <4 x i32> %wide.load273, ptr %i.cc, align 4, !tbaa !343, !alias.scope !13844, !noalias !13843
  store <4 x i32> zeroinitializer, ptr %i.bz, align 4, !tbaa !343, !alias.scope !13843
  store <4 x i32> zeroinitializer, ptr %i.ca, align 4, !tbaa !343, !alias.scope !13843
  %index.next274 = add nuw i64 %index269, 8       ; 2 uses
  %i.cd = icmp eq i64 %index.next274, %n.vec267
  br i1 %i.cd, label %middle.block275, label %vector.body268, !llvm.loop !13819

middle.block275:                                  ; preds = %vector.body268
  %cmp.n276 = icmp eq i64 %i.br, %n.vec267
  br i1 %cmp.n276, label %_ZN5boost13move_backwardIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i38.i.preheader311

.lr.ph.i38.i.preheader311:                        ; preds = %vector.memcheck262, %.lr.ph.i38.i.preheader, %middle.block275
  %.010.i39.i.ph = phi ptr [ %.071, %vector.memcheck262 ], [ %.071, %.lr.ph.i38.i.preheader ], [ %i.bw, %middle.block275 ]
  %.079.i40.i.ph = phi ptr [ %.tr88106, %vector.memcheck262 ], [ %.tr88106, %.lr.ph.i38.i.preheader ], [ %i.bx, %middle.block275 ]
  br label %.lr.ph.i38.i

.lr.ph.i38.i:                                     ; preds = %.lr.ph.i38.i.preheader311, %.lr.ph.i38.i
  %.010.i39.i = phi ptr [ %i.cf, %.lr.ph.i38.i ], [ %.010.i39.i.ph, %.lr.ph.i38.i.preheader311 ]
  %.079.i40.i = phi ptr [ %i.ce, %.lr.ph.i38.i ], [ %.079.i40.i.ph, %.lr.ph.i38.i.preheader311 ]
  %i.ce = getelementptr inbounds i8, ptr %.079.i40.i, i64 -4 ; 4 uses
  %i.cf = getelementptr inbounds i8, ptr %.010.i39.i, i64 -4 ; 2 uses
  %i.cg = load i32, ptr %i.ce, align 4, !tbaa !343
  store i32 %i.cg, ptr %i.cf, align 4, !tbaa !343
  store i32 0, ptr %i.ce, align 4, !tbaa !343
  %.not.i41.i = icmp eq ptr %.0, %i.ce
  br i1 %.not.i41.i, label %_ZN5boost13move_backwardIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i38.i, !llvm.loop !13820

_ZN5boost13move_backwardIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i: ; preds = %.lr.ph.i38.i, %middle.block275, %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i
  %.not8.i43.i = icmp eq ptr %5, %.0.lcssa.i.i
  br i1 %.not8.i43.i, label %_ZN5boost7movelib15rotate_adaptiveIPNS_9container4test24movable_and_copyable_intES5_EET_S6_S6_S6_NS0_9iter_sizeIS6_E4typeES9_T0_S9_.exit, label %.lr.ph.i44.i.preheader

.lr.ph.i44.i.preheader:                           ; preds = %_ZN5boost13move_backwardIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i
  %i.ch = add i64 %.0.lcssa.i.i233, %invariant.op ; 2 uses
  %i.ci = lshr i64 %i.ch, 2
  %i.cj = add nuw nsw i64 %i.ci, 1                ; 2 uses
  %min.iters.check235 = icmp ult i64 %i.ch, 28
  br i1 %min.iters.check235, label %.lr.ph.i44.i.preheader309, label %vector.memcheck236

vector.memcheck236:                               ; preds = %.lr.ph.i44.i.preheader
  %9 = add i64 %8, %.0.lcssa.i.i233
  %i.ck = and i64 %9, -4
  %i.cl = add i64 %i.ck, 4                        ; 2 uses
  %i.cm = getelementptr i8, ptr %.0, i64 %i.cl
  %i.cn = getelementptr i8, ptr %5, i64 %i.cl
  %bound0237 = icmp ult ptr %.0, %i.cn
  %bound1238 = icmp ult ptr %5, %i.cm
  %found.conflict239 = and i1 %bound0237, %bound1238
  br i1 %found.conflict239, label %.lr.ph.i44.i.preheader309, label %vector.ph240

vector.ph240:                                     ; preds = %vector.memcheck236
  %n.vec241 = and i64 %i.cj, 9223372036854775800  ; 3 uses
  %i.co = shl i64 %n.vec241, 2                    ; 2 uses
  %i.cp = getelementptr i8, ptr %.0, i64 %i.co    ; 2 uses
  %i.cq = getelementptr i8, ptr %5, i64 %i.co
  br label %vector.body242

vector.body242:                                   ; preds = %vector.body242, %vector.ph240
  %index243 = phi i64 [ 0, %vector.ph240 ], [ %index.next248, %vector.body242 ] ; 2 uses
  %i.cr = shl i64 %index243, 2                    ; 2 uses
  %next.gep244 = getelementptr i8, ptr %.0, i64 %i.cr ; 2 uses
  %next.gep245 = getelementptr i8, ptr %5, i64 %i.cr ; 3 uses
  %i.cs = getelementptr i8, ptr %next.gep245, i64 16 ; 2 uses
  %wide.load246 = load <4 x i32>, ptr %next.gep245, align 4, !tbaa !343, !alias.scope !13845
  %wide.load247 = load <4 x i32>, ptr %i.cs, align 4, !tbaa !343, !alias.scope !13845
  %i.ct = getelementptr i8, ptr %next.gep244, i64 16
  store <4 x i32> %wide.load246, ptr %next.gep244, align 4, !tbaa !343, !alias.scope !13846, !noalias !13845
  store <4 x i32> %wide.load247, ptr %i.ct, align 4, !tbaa !343, !alias.scope !13846, !noalias !13845
  store <4 x i32> zeroinitializer, ptr %next.gep245, align 4, !tbaa !343, !alias.scope !13845
  store <4 x i32> zeroinitializer, ptr %i.cs, align 4, !tbaa !343, !alias.scope !13845
  %index.next248 = add nuw i64 %index243, 8       ; 2 uses
  %i.cu = icmp eq i64 %index.next248, %n.vec241
  br i1 %i.cu, label %middle.block249, label %vector.body242, !llvm.loop !13824

middle.block249:                                  ; preds = %vector.body242
  %cmp.n250 = icmp eq i64 %i.cj, %n.vec241
  br i1 %cmp.n250, label %_ZN5boost7movelib15rotate_adaptiveIPNS_9container4test24movable_and_copyable_intES5_EET_S6_S6_S6_NS0_9iter_sizeIS6_E4typeES9_T0_S9_.exit, label %.lr.ph.i44.i.preheader309

.lr.ph.i44.i.preheader309:                        ; preds = %vector.memcheck236, %.lr.ph.i44.i.preheader, %middle.block249
  %.010.i45.i.ph = phi ptr [ %.0, %vector.memcheck236 ], [ %.0, %.lr.ph.i44.i.preheader ], [ %i.cp, %middle.block249 ]
  %.079.i46.i.ph = phi ptr [ %5, %vector.memcheck236 ], [ %5, %.lr.ph.i44.i.preheader ], [ %i.cq, %middle.block249 ]
  br label %.lr.ph.i44.i

.lr.ph.i44.i:                                     ; preds = %.lr.ph.i44.i.preheader309, %.lr.ph.i44.i
  %.010.i45.i = phi ptr [ %i.cx, %.lr.ph.i44.i ], [ %.010.i45.i.ph, %.lr.ph.i44.i.preheader309 ] ; 2 uses
  %.079.i46.i = phi ptr [ %i.cw, %.lr.ph.i44.i ], [ %.079.i46.i.ph, %.lr.ph.i44.i.preheader309 ] ; 3 uses
  %i.cv = load i32, ptr %.079.i46.i, align 4, !tbaa !343
  store i32 %i.cv, ptr %.010.i45.i, align 4, !tbaa !343
  store i32 0, ptr %.079.i46.i, align 4, !tbaa !343
  %i.cw = getelementptr inbounds nuw i8, ptr %.079.i46.i, i64 4 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.010.i45.i, i64 4 ; 2 uses
  %.not.i47.i = icmp eq ptr %i.cw, %.0.lcssa.i.i
  br i1 %.not.i47.i, label %_ZN5boost7movelib15rotate_adaptiveIPNS_9container4test24movable_and_copyable_intES5_EET_S6_S6_S6_NS0_9iter_sizeIS6_E4typeES9_T0_S9_.exit, label %.lr.ph.i44.i, !llvm.loop !13825

bb.p:                                             ; preds = %bb.m
  %.not34.i = icmp ugt i64 %i.au, %6
  br i1 %.not34.i, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.not35.i = icmp eq i64 %.tr90107, %.070
  br i1 %.not35.i, label %_ZN5boost7movelib15rotate_adaptiveIPNS_9container4test24movable_and_copyable_intES5_EET_S6_S6_S6_NS0_9iter_sizeIS6_E4typeES9_T0_S9_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not8.i50.i = icmp eq ptr %.0, %.tr88106
  br i1 %.not8.i50.i, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit56.i, label %.lr.ph.i51.i.preheader

.lr.ph.i51.i.preheader:                           ; preds = %bb.r
  %i.cy = add i64 %.tr88106177, -4
  %i.cz = sub i64 %i.cy, %.0205                   ; 3 uses
  %i.da = lshr i64 %i.cz, 2
  %i.db = add nuw nsw i64 %i.da, 1                ; 2 uses
  %min.iters.check207 = icmp ult i64 %i.cz, 28
  br i1 %min.iters.check207, label %.lr.ph.i51.i.preheader308, label %vector.memcheck208

vector.memcheck208:                               ; preds = %.lr.ph.i51.i.preheader
  %i.dc = and i64 %i.cz, -4
  %i.dd = add i64 %i.dc, 4                        ; 2 uses
  %i.de = getelementptr i8, ptr %5, i64 %i.dd
  %i.df = getelementptr i8, ptr %.0, i64 %i.dd
  %bound0209 = icmp ult ptr %5, %i.df
  %bound1210 = icmp ult ptr %.0, %i.de
  %found.conflict211 = and i1 %bound0209, %bound1210
  br i1 %found.conflict211, label %.lr.ph.i51.i.preheader308, label %vector.ph212

vector.ph212:                                     ; preds = %vector.memcheck208
  %n.vec213 = and i64 %i.db, 9223372036854775800  ; 3 uses
  %i.dg = shl i64 %n.vec213, 2                    ; 2 uses
  %i.dh = getelementptr i8, ptr %5, i64 %i.dg     ; 2 uses
  %i.di = getelementptr i8, ptr %.0, i64 %i.dg
  br label %vector.body214

vector.body214:                                   ; preds = %vector.body214, %vector.ph212
  %index215 = phi i64 [ 0, %vector.ph212 ], [ %index.next220, %vector.body214 ] ; 2 uses
  %i.dj = shl i64 %index215, 2                    ; 2 uses
  %next.gep216 = getelementptr i8, ptr %5, i64 %i.dj ; 2 uses
  %next.gep217 = getelementptr i8, ptr %.0, i64 %i.dj ; 3 uses
  %i.dk = getelementptr i8, ptr %next.gep217, i64 16 ; 2 uses
  %wide.load218 = load <4 x i32>, ptr %next.gep217, align 4, !tbaa !343, !alias.scope !13847
  %wide.load219 = load <4 x i32>, ptr %i.dk, align 4, !tbaa !343, !alias.scope !13847
  %i.dl = getelementptr i8, ptr %next.gep216, i64 16
  store <4 x i32> %wide.load218, ptr %next.gep216, align 4, !tbaa !343, !alias.scope !13848, !noalias !13847
  store <4 x i32> %wide.load219, ptr %i.dl, align 4, !tbaa !343, !alias.scope !13848, !noalias !13847
  store <4 x i32> zeroinitializer, ptr %next.gep217, align 4, !tbaa !343, !alias.scope !13847
  store <4 x i32> zeroinitializer, ptr %i.dk, align 4, !tbaa !343, !alias.scope !13847
  %index.next220 = add nuw i64 %index215, 8       ; 2 uses
  %i.dm = icmp eq i64 %index.next220, %n.vec213
  br i1 %i.dm, label %middle.block221, label %vector.body214, !llvm.loop !13829

middle.block221:                                  ; preds = %vector.body214
  %cmp.n222 = icmp eq i64 %i.db, %n.vec213
  br i1 %cmp.n222, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit56.i, label %.lr.ph.i51.i.preheader308

.lr.ph.i51.i.preheader308:                        ; preds = %vector.memcheck208, %.lr.ph.i51.i.preheader, %middle.block221
  %.010.i52.i.ph = phi ptr [ %5, %vector.memcheck208 ], [ %5, %.lr.ph.i51.i.preheader ], [ %i.dh, %middle.block221 ]
  %.079.i53.i.ph = phi ptr [ %.0, %vector.memcheck208 ], [ %.0, %.lr.ph.i51.i.preheader ], [ %i.di, %middle.block221 ]
  br label %.lr.ph.i51.i

.lr.ph.i51.i:                                     ; preds = %.lr.ph.i51.i.preheader308, %.lr.ph.i51.i
  %.010.i52.i = phi ptr [ %i.dp, %.lr.ph.i51.i ], [ %.010.i52.i.ph, %.lr.ph.i51.i.preheader308 ] ; 2 uses
  %.079.i53.i = phi ptr [ %i.do, %.lr.ph.i51.i ], [ %.079.i53.i.ph, %.lr.ph.i51.i.preheader308 ] ; 3 uses
  %i.dn = load i32, ptr %.079.i53.i, align 4, !tbaa !343
  store i32 %i.dn, ptr %.010.i52.i, align 4, !tbaa !343
  store i32 0, ptr %.079.i53.i, align 4, !tbaa !343
  %i.do = getelementptr inbounds nuw i8, ptr %.079.i53.i, i64 4 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.010.i52.i, i64 4 ; 2 uses
  %.not.i54.i = icmp eq ptr %i.do, %.tr88106
  br i1 %.not.i54.i, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit56.i, label %.lr.ph.i51.i, !llvm.loop !13830

_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit56.i: ; preds = %.lr.ph.i51.i, %middle.block221, %bb.r
  %.0.lcssa.i55.i = phi ptr [ %5, %bb.r ], [ %i.dh, %middle.block221 ], [ %i.dp, %.lr.ph.i51.i ] ; 3 uses
  %.0.lcssa.i55.i163 = ptrtoaddr ptr %.0.lcssa.i55.i to i64 ; 2 uses
  %.not8.i57.i = icmp eq ptr %.tr88106, %.071
  br i1 %.not8.i57.i, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit63.i, label %.lr.ph.i58.i.preheader

.lr.ph.i58.i.preheader:                           ; preds = %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit56.i
  %i.dq = add i64 %.071176, -4
  %i.dr = sub i64 %i.dq, %.tr88106177             ; 3 uses
  %i.ds = lshr i64 %i.dr, 2
  %i.dt = add nuw nsw i64 %i.ds, 1                ; 2 uses
  %min.iters.check179 = icmp ult i64 %i.dr, 28
  br i1 %min.iters.check179, label %.lr.ph.i58.i.preheader307, label %vector.memcheck180

vector.memcheck180:                               ; preds = %.lr.ph.i58.i.preheader
  %i.du = and i64 %i.dr, -4
  %i.dv = add i64 %i.du, 4                        ; 2 uses
  %i.dw = getelementptr i8, ptr %.0, i64 %i.dv
  %i.dx = getelementptr i8, ptr %.tr88106, i64 %i.dv
  %bound0181 = icmp ult ptr %.0, %i.dx
  %bound1182 = icmp ult ptr %.tr88106, %i.dw
  %found.conflict183 = and i1 %bound0181, %bound1182
  br i1 %found.conflict183, label %.lr.ph.i58.i.preheader307, label %vector.ph184

vector.ph184:                                     ; preds = %vector.memcheck180
  %n.vec185 = and i64 %i.dt, 9223372036854775800  ; 3 uses
  %i.dy = shl i64 %n.vec185, 2                    ; 2 uses
  %i.dz = getelementptr i8, ptr %.0, i64 %i.dy    ; 2 uses
  %i.ea = getelementptr i8, ptr %.tr88106, i64 %i.dy
  br label %vector.body186

vector.body186:                                   ; preds = %vector.body186, %vector.ph184
  %index187 = phi i64 [ 0, %vector.ph184 ], [ %index.next192, %vector.body186 ] ; 2 uses
  %i.eb = shl i64 %index187, 2                    ; 2 uses
  %next.gep188 = getelementptr i8, ptr %.0, i64 %i.eb ; 2 uses
  %next.gep189 = getelementptr i8, ptr %.tr88106, i64 %i.eb ; 3 uses
  %i.ec = getelementptr i8, ptr %next.gep189, i64 16 ; 2 uses
  %wide.load190 = load <4 x i32>, ptr %next.gep189, align 4, !tbaa !343, !alias.scope !13849
  %wide.load191 = load <4 x i32>, ptr %i.ec, align 4, !tbaa !343, !alias.scope !13849
  %i.ed = getelementptr i8, ptr %next.gep188, i64 16
  store <4 x i32> %wide.load190, ptr %next.gep188, align 4, !tbaa !343, !alias.scope !13850, !noalias !13849
  store <4 x i32> %wide.load191, ptr %i.ed, align 4, !tbaa !343, !alias.scope !13850, !noalias !13849
  store <4 x i32> zeroinitializer, ptr %next.gep189, align 4, !tbaa !343, !alias.scope !13849
  store <4 x i32> zeroinitializer, ptr %i.ec, align 4, !tbaa !343, !alias.scope !13849
  %index.next192 = add nuw i64 %index187, 8       ; 2 uses
  %i.ee = icmp eq i64 %index.next192, %n.vec185
  br i1 %i.ee, label %middle.block193, label %vector.body186, !llvm.loop !13834

middle.block193:                                  ; preds = %vector.body186
  %cmp.n194 = icmp eq i64 %i.dt, %n.vec185
  br i1 %cmp.n194, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit63.i, label %.lr.ph.i58.i.preheader307

.lr.ph.i58.i.preheader307:                        ; preds = %vector.memcheck180, %.lr.ph.i58.i.preheader, %middle.block193
  %.010.i59.i.ph = phi ptr [ %.0, %vector.memcheck180 ], [ %.0, %.lr.ph.i58.i.preheader ], [ %i.dz, %middle.block193 ]
  %.079.i60.i.ph = phi ptr [ %.tr88106, %vector.memcheck180 ], [ %.tr88106, %.lr.ph.i58.i.preheader ], [ %i.ea, %middle.block193 ]
  br label %.lr.ph.i58.i

.lr.ph.i58.i:                                     ; preds = %.lr.ph.i58.i.preheader307, %.lr.ph.i58.i
  %.010.i59.i = phi ptr [ %i.eh, %.lr.ph.i58.i ], [ %.010.i59.i.ph, %.lr.ph.i58.i.preheader307 ] ; 2 uses
  %.079.i60.i = phi ptr [ %i.eg, %.lr.ph.i58.i ], [ %.079.i60.i.ph, %.lr.ph.i58.i.preheader307 ] ; 3 uses
  %i.ef = load i32, ptr %.079.i60.i, align 4, !tbaa !343
  store i32 %i.ef, ptr %.010.i59.i, align 4, !tbaa !343
  store i32 0, ptr %.079.i60.i, align 4, !tbaa !343
  %i.eg = getelementptr inbounds nuw i8, ptr %.079.i60.i, i64 4 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.010.i59.i, i64 4 ; 2 uses
  %.not.i61.i = icmp eq ptr %i.eg, %.071
  br i1 %.not.i61.i, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit63.i, label %.lr.ph.i58.i, !llvm.loop !13835

_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit63.i: ; preds = %.lr.ph.i58.i, %middle.block193, %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit56.i
  %.0.lcssa.i62.i = phi ptr [ %.0, %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit56.i ], [ %i.dz, %middle.block193 ], [ %i.eh, %.lr.ph.i58.i ] ; 9 uses
  %.not8.i64.i = icmp eq ptr %5, %.0.lcssa.i55.i
  br i1 %.not8.i64.i, label %_ZN5boost7movelib15rotate_adaptiveIPNS_9container4test24movable_and_copyable_intES5_EET_S6_S6_S6_NS0_9iter_sizeIS6_E4typeES9_T0_S9_.exit, label %.lr.ph.i65.i.preheader

.lr.ph.i65.i.preheader:                           ; preds = %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit63.i
  %i.ei = add i64 %.0.lcssa.i55.i163, %invariant.op331 ; 2 uses
  %i.ej = lshr i64 %i.ei, 2
  %i.ek = add nuw nsw i64 %i.ej, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ei, 28
  br i1 %min.iters.check, label %.lr.ph.i65.i.preheader306, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i65.i.preheader
  %10 = add i64 %8, %.0.lcssa.i55.i163
  %i.el = and i64 %10, -4
  %i.em = add i64 %i.el, 4                        ; 2 uses
  %i.en = getelementptr i8, ptr %.0.lcssa.i62.i, i64 %i.em
  %i.eo = getelementptr i8, ptr %5, i64 %i.em
  %bound0 = icmp ult ptr %.0.lcssa.i62.i, %i.eo
  %bound1 = icmp ult ptr %5, %i.en
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i65.i.preheader306, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ek, 9223372036854775800     ; 3 uses
  %i.ep = shl i64 %n.vec, 2                       ; 2 uses
  %i.eq = getelementptr i8, ptr %.0.lcssa.i62.i, i64 %i.ep
  %i.er = getelementptr i8, ptr %5, i64 %i.ep
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.es = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.0.lcssa.i62.i, i64 %i.es ; 2 uses
  %next.gep164 = getelementptr i8, ptr %5, i64 %i.es ; 3 uses
  %i.et = getelementptr i8, ptr %next.gep164, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep164, align 4, !tbaa !343, !alias.scope !13851
  %wide.load165 = load <4 x i32>, ptr %i.et, align 4, !tbaa !343, !alias.scope !13851
  %i.eu = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !343, !alias.scope !13852, !noalias !13851
  store <4 x i32> %wide.load165, ptr %i.eu, align 4, !tbaa !343, !alias.scope !13852, !noalias !13851
  store <4 x i32> zeroinitializer, ptr %next.gep164, align 4, !tbaa !343, !alias.scope !13851
  store <4 x i32> zeroinitializer, ptr %i.et, align 4, !tbaa !343, !alias.scope !13851
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ev = icmp eq i64 %index.next, %n.vec
  br i1 %i.ev, label %middle.block, label %vector.body, !llvm.loop !13839

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ek, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib15rotate_adaptiveIPNS_9container4test24movable_and_copyable_intES5_EET_S6_S6_S6_NS0_9iter_sizeIS6_E4typeES9_T0_S9_.exit, label %.lr.ph.i65.i.preheader306

.lr.ph.i65.i.preheader306:                        ; preds = %vector.memcheck, %.lr.ph.i65.i.preheader, %middle.block
  %.010.i66.i.ph = phi ptr [ %.0.lcssa.i62.i, %vector.memcheck ], [ %.0.lcssa.i62.i, %.lr.ph.i65.i.preheader ], [ %i.eq, %middle.block ]
  %.079.i67.i.ph = phi ptr [ %5, %vector.memcheck ], [ %5, %.lr.ph.i65.i.preheader ], [ %i.er, %middle.block ]
  br label %.lr.ph.i65.i

.lr.ph.i65.i:                                     ; preds = %.lr.ph.i65.i.preheader306, %.lr.ph.i65.i
  %.010.i66.i = phi ptr [ %i.ey, %.lr.ph.i65.i ], [ %.010.i66.i.ph, %.lr.ph.i65.i.preheader306 ] ; 2 uses
  %.079.i67.i = phi ptr [ %i.ex, %.lr.ph.i65.i ], [ %.079.i67.i.ph, %.lr.ph.i65.i.preheader306 ] ; 3 uses
  %i.ew = load i32, ptr %.079.i67.i, align 4, !tbaa !343
  store i32 %i.ew, ptr %.010.i66.i, align 4, !tbaa !343
  store i32 0, ptr %.079.i67.i, align 4, !tbaa !343
  %i.ex = getelementptr inbounds nuw i8, ptr %.079.i67.i, i64 4 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.010.i66.i, i64 4
  %.not.i68.i = icmp eq ptr %i.ex, %.0.lcssa.i55.i
  br i1 %.not.i68.i, label %_ZN5boost7movelib15rotate_adaptiveIPNS_9container4test24movable_and_copyable_intES5_EET_S6_S6_S6_NS0_9iter_sizeIS6_E4typeES9_T0_S9_.exit, label %.lr.ph.i65.i, !llvm.loop !13840

bb.s:                                             ; preds = %bb.p
  %i.ez = tail call noundef ptr @_ZN5boost7movelib10rotate_gcdIPNS_9container4test24movable_and_copyable_intEEET_S6_S6_S6_(ptr noundef %.0, ptr noundef %.tr88106, ptr noundef %.071)
  br label %_ZN5boost7movelib15rotate_adaptiveIPNS_9container4test24movable_and_copyable_intES5_EET_S6_S6_S6_NS0_9iter_sizeIS6_E4typeES9_T0_S9_.exit

_ZN5boost7movelib15rotate_adaptiveIPNS_9container4test24movable_and_copyable_intES5_EET_S6_S6_S6_NS0_9iter_sizeIS6_E4typeES9_T0_S9_.exit: ; preds = %.lr.ph.i44.i, %.lr.ph.i65.i, %middle.block249, %middle.block, %bb.n, %_ZN5boost13move_backwardIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i, %bb.q, %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit63.i, %bb.s
  %.0.i = phi ptr [ %.071, %bb.q ], [ %i.ez, %bb.s ], [ %.0.lcssa.i62.i, %middle.block ], [ %.0, %bb.n ], [ %.0, %_ZN5boost13move_backwardIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i ], [ %.0.lcssa.i62.i, %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit63.i ], [ %.0.lcssa.i62.i, %.lr.ph.i65.i ], [ %i.cp, %middle.block249 ], [ %i.cx, %.lr.ph.i44.i ] ; 2 uses
  tail call void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveIPNS_9container4test24movable_and_copyable_intES5_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_SE_NS0_9iter_sizeISE_E4typeESH_T0_SH_T1_(ptr noundef %.tr105, ptr noundef %.0, ptr noundef %.0.i, i64 noundef %.070, i64 noundef %.069, ptr noundef %5, i64 noundef %6)
  %i.fa = sub i64 %.tr91108, %.069                ; 2 uses
  %i.fb = icmp ne i64 %i.fa, 0
  %i.fc = icmp ne i64 %i.au, 0
  %or.cond = and i1 %i.fc, %i.fb
  br i1 %or.cond, label %bb.b, label %.loopexit

.loopexit:                                        ; preds = %_ZN5boost7movelib15rotate_adaptiveIPNS_9container4test24movable_and_copyable_intES5_EET_S6_S6_S6_NS0_9iter_sizeIS6_E4typeES9_T0_S9_.exit, %bb.a, %_ZN5boost7movelib14buffered_mergeIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_10range_xbufIS5_mNS0_7move_opEEEEEvT_SH_SH_T0_RT1_.exit, %bb.g, %bb.d, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib17op_buffered_mergeIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7move_opENS0_10range_xbufIS5_mSE_EEEEvT_SH_SH_T0_T1_RT2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #2 comdat {
bb.a:
  %.not = icmp eq ptr %0, %1
  %.not37 = icmp eq ptr %1, %2
  %or.cond = or i1 %.not, %.not37
  br i1 %or.cond, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_NS0_7move_opEEEvT0_SF_T1_SG_SG_T_T2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds i8, ptr %1, i64 -4
  %i.b = load i32, ptr %1, align 4, !tbaa !343    ; 2 uses
  %i.c = load i32, ptr %i.a, align 4, !tbaa !343  ; 2 uses
  %i.d = icmp slt i32 %i.b, %i.c
  br i1 %i.d, label %bb.c, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_NS0_7move_opEEEvT0_SF_T1_SG_SG_T_T2_.exit

bb.c:                                             ; preds = %bb.b
  %i.e = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.f = ptrtoint ptr %0 to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ptrtoint ptr %2 to i64
  %i.i = sub i64 %i.h, %i.e                       ; 2 uses
  %.not38 = icmp ugt i64 %i.g, %i.i
  br i1 %.not38, label %.lr.ph.i47, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.j = ashr exact i64 %i.g, 2
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i
  %.017.i = phi i64 [ %i.j, %.lr.ph.i ], [ %.1.i, %bb.d ] ; 2 uses
  %.01316.i = phi ptr [ %0, %.lr.ph.i ], [ %.114.i, %bb.d ] ; 2 uses
  %i.k = lshr i64 %.017.i, 1                      ; 3 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %.01316.i, i64 %i.k ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !343
  %i.n = icmp slt i32 %i.b, %i.m                  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %.neg.i = xor i64 %i.k, -1
  %i.p = add i64 %.017.i, %.neg.i
  %.114.i = select i1 %i.n, ptr %.01316.i, ptr %i.o ; 11 uses
  %.1.i = select i1 %i.n, i64 %i.k, i64 %i.p      ; 2 uses
  %.not.i = icmp eq i64 %.1.i, 0
  br i1 %.not.i, label %_ZN5boost7movelib11upper_boundIPNS_9container4test24movable_and_copyable_intES4_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEET_SE_SE_RKT0_T1_.exit, label %bb.d, !llvm.loop !215

_ZN5boost7movelib11upper_boundIPNS_9container4test24movable_and_copyable_intES4_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEET_SE_SE_RKT0_T1_.exit: ; preds = %bb.d
  %.114.i133.le = ptrtoaddr ptr %.114.i to i64    ; 2 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !526    ; 9 uses
  %i.r = ptrtoaddr ptr %i.q to i64                ; 2 uses
  %.not8.i.i.i = icmp eq ptr %1, %.114.i
  br i1 %.not8.i.i.i, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_NS0_7move_opEEEvT0_SF_T1_SG_SG_T_T2_.exit.sink.split, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN5boost7movelib11upper_boundIPNS_9container4test24movable_and_copyable_intES4_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEET_SE_SE_RKT0_T1_.exit
  %i.s = add i64 %i.e, -4
  %i.t = sub i64 %i.s, %.114.i133.le              ; 3 uses
  %i.u = lshr i64 %i.t, 2
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 60
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader239, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.w = and i64 %i.t, -4
  %i.x = add i64 %i.w, 4                          ; 2 uses
  %i.y = getelementptr i8, ptr %i.q, i64 %i.x
  %i.z = getelementptr i8, ptr %.114.i, i64 %i.x
  %bound0 = icmp ult ptr %i.q, %i.z
  %bound1 = icmp ult ptr %.114.i, %i.y
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader239, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.v, 9223372036854775800      ; 3 uses
  %i.aa = shl i64 %n.vec, 2                       ; 2 uses
  %i.ab = getelementptr i8, ptr %i.q, i64 %i.aa   ; 3 uses
  %i.ac = getelementptr i8, ptr %.114.i, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.q, i64 %i.ad ; 2 uses
  %next.gep134 = getelementptr i8, ptr %.114.i, i64 %i.ad ; 3 uses
  %i.ae = getelementptr i8, ptr %next.gep134, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep134, align 4, !tbaa !343, !alias.scope !13874
  %wide.load135 = load <4 x i32>, ptr %i.ae, align 4, !tbaa !343, !alias.scope !13874
  %i.af = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !343, !alias.scope !13875, !noalias !13874
  store <4 x i32> %wide.load135, ptr %i.af, align 4, !tbaa !343, !alias.scope !13875, !noalias !13874
  store <4 x i32> zeroinitializer, ptr %next.gep134, align 4, !tbaa !343, !alias.scope !13874
  store <4 x i32> zeroinitializer, ptr %i.ae, align 4, !tbaa !343, !alias.scope !13874
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !13856

middle.block:                                     ; preds = %vector.body
  %ind.escape = getelementptr i8, ptr %i.ab, i64 -4
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib10range_xbufIPNS_9container4test24movable_and_copyable_intEmNS0_7move_opEE11move_assignIS5_EEvT_m.exit, label %.lr.ph.i.i.i.preheader239

.lr.ph.i.i.i.preheader239:                        ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.010.i.i.i.ph = phi ptr [ %i.q, %vector.memcheck ], [ %i.q, %.lr.ph.i.i.i.preheader ], [ %i.ab, %middle.block ]
  %.079.i.i.i.ph = phi ptr [ %.114.i, %vector.memcheck ], [ %.114.i, %.lr.ph.i.i.i.preheader ], [ %i.ac, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader239, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %.010.i.i.i.ph, %.lr.ph.i.i.i.preheader239 ] ; 3 uses
  %.079.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i ], [ %.079.i.i.i.ph, %.lr.ph.i.i.i.preheader239 ] ; 3 uses
  %i.ah = load i32, ptr %.079.i.i.i, align 4, !tbaa !343
  store i32 %i.ah, ptr %.010.i.i.i, align 4, !tbaa !343
  store i32 0, ptr %.079.i.i.i, align 4, !tbaa !343
  %i.ai = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 4 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ai, %1
  br i1 %.not.i.i.i, label %_ZN5boost7movelib10range_xbufIPNS_9container4test24movable_and_copyable_intEmNS0_7move_opEE11move_assignIS5_EEvT_m.exit, label %.lr.ph.i.i.i, !llvm.loop !13857

_ZN5boost7movelib10range_xbufIPNS_9container4test24movable_and_copyable_intEmNS0_7move_opEE11move_assignIS5_EEvT_m.exit: ; preds = %.lr.ph.i.i.i, %middle.block
  %.010.i.i.i.lcssa = phi ptr [ %ind.escape, %middle.block ], [ %.010.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa128 = phi ptr [ %i.ab, %middle.block ], [ %i.aj, %.lr.ph.i.i.i ] ; 2 uses
  %.010.i.i.i.lcssa242 = ptrtoaddr ptr %.010.i.i.i.lcssa to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.lcssa128, ptr %i.ak, align 8, !tbaa !527
  br label %.lr.ph.i39

.lr.ph.i39:                                       ; preds = %_ZN5boost7movelib10range_xbufIPNS_9container4test24movable_and_copyable_intEmNS0_7move_opEE11move_assignIS5_EEvT_m.exit, %bb.h
  %indvar = phi i64 [ 0, %_ZN5boost7movelib10range_xbufIPNS_9container4test24movable_and_copyable_intEmNS0_7move_opEE11move_assignIS5_EEvT_m.exit ], [ %indvar.next, %bb.h ] ; 2 uses
  %.026.i = phi ptr [ %i.q, %_ZN5boost7movelib10range_xbufIPNS_9container4test24movable_and_copyable_intEmNS0_7move_opEE11move_assignIS5_EEvT_m.exit ], [ %.1.i40, %bb.h ] ; 11 uses
  %.01625.i = phi ptr [ %1, %_ZN5boost7movelib10range_xbufIPNS_9container4test24movable_and_copyable_intEmNS0_7move_opEE11move_assignIS5_EEvT_m.exit ], [ %.117.i, %bb.h ] ; 5 uses
  %.01824.i = phi ptr [ %.114.i, %_ZN5boost7movelib10range_xbufIPNS_9container4test24movable_and_copyable_intEmNS0_7move_opEE11move_assignIS5_EEvT_m.exit ], [ %i.cu, %bb.h ] ; 8 uses
  %i.al = icmp eq ptr %.01625.i, %2
  br i1 %i.al, label %.lr.ph.i.i.i42.preheader, label %bb.e

.lr.ph.i.i.i42.preheader:                         ; preds = %.lr.ph.i39
  %.026.i145.le = ptrtoaddr ptr %.026.i to i64    ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN5boost7movelib15detail_adaptive16slow_stable_sortIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEvT_SF_T0_:bb.a
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph63, %bb.i
  %.061 = phi i64 [ 0, %.lr.ph63 ], [ %i.ao, %bb.i ] ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.061 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx59
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx
  tail call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_SE_NS0_9iter_sizeISE_E4typeESH_T0_(ptr noundef %i.al, ptr noundef %i.am, ptr noundef %i.an, i64 noundef %.04365, i64 noundef %i.ak)
  %i.ao = add i64 %.061, %i.ai                    ; 3 uses
  %i.ap = sub i64 %i.d, %i.ao
  %i.aq = icmp ugt i64 %i.ap, %i.ai
  br i1 %i.aq, label %bb.i, label %.loopexit, !llvm.loop !14021

.loopexit:                                        ; preds = %bb.i, %bb.h, %.lr.ph67
  %.1 = phi i64 [ 0, %.lr.ph67 ], [ 0, %bb.h ], [ %i.ao, %bb.i ] ; 2 uses
  %i.ar = sub i64 %i.d, %.1
  %i.as = icmp ugt i64 %i.ar, %.04365
  br i1 %i.as, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.loopexit
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.1 ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %.04365 ; 2 uses
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = sub i64 %i.a, %i.av
  %i.ax = ashr exact i64 %i.aw, 2
  tail call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_SE_NS0_9iter_sizeISE_E4typeESH_T0_(ptr noundef %i.at, ptr noundef %i.au, ptr noundef %1, i64 noundef %.04365, i64 noundef %i.ax)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.loopexit
  %i.ay = shl i64 %.04365, 1
  br i1 %i.ah, label %.lr.ph67, label %._crit_edge68, !llvm.loop !14022
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost7movelib15detail_adaptive27op_insertion_sort_step_leftIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEENS0_9iter_sizeIT_E4typeESH_SJ_SJ_T0_T1_(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 comdat {
bb.a:
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %2, i64 16) ; 11 uses
  %i.a = icmp ugt i64 %1, %.sroa.speculated
  br i1 %i.a, label %.lr.ph, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.pre = sub nsw i64 0, %.sroa.speculated
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.idx36 = shl nuw nsw i64 %.sroa.speculated, 2
  %i.b = sub nsw i64 0, %.sroa.speculated         ; 5 uses
  switch i64 %2, label %.lr.ph42.i.preheader [
    i64 0, label %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_NS0_7move_opEEEvT0_SF_T1_T_T2_.exit.us
    i64 1, label %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_NS0_7move_opEEEvT0_SF_T1_T_T2_.exit.us39
  ]

_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_NS0_7move_opEEEvT0_SF_T1_T_T2_.exit.us: ; preds = %.lr.ph, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_NS0_7move_opEEEvT0_SF_T1_T_T2_.exit.us
  %.037.us = phi i64 [ %i.c, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_NS0_7move_opEEEvT0_SF_T1_T_T2_.exit.us ], [ %2, %.lr.ph ]
  %i.c = add i64 %.037.us, %.sroa.speculated      ; 3 uses
  %i.d = sub i64 %1, %i.c
  %i.e = icmp ugt i64 %i.d, %.sroa.speculated
  br i1 %i.e, label %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_NS0_7move_opEEEvT0_SF_T1_T_T2_.exit.us, label %._crit_edge, !llvm.loop !14023

_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_NS0_7move_opEEEvT0_SF_T1_T_T2_.exit.us39: ; preds = %.lr.ph, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_NS0_7move_opEEEvT0_SF_T1_T_T2_.exit.us39
  %.037.us38 = phi i64 [ %i.i, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_NS0_7move_opEEEvT0_SF_T1_T_T2_.exit.us39 ], [ 0, %.lr.ph ] ; 2 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.037.us38 ; 3 uses
  %i.g = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.b
  %i.h = load i32, ptr %i.f, align 4, !tbaa !343
  store i32 %i.h, ptr %i.g, align 4, !tbaa !343
  store i32 0, ptr %i.f, align 4, !tbaa !343
  %i.i = add i64 %.037.us38, %.sroa.speculated    ; 3 uses
  %i.j = sub i64 %1, %i.i
  %i.k = icmp ugt i64 %i.j, %.sroa.speculated
  br i1 %i.k, label %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_NS0_7move_opEEEvT0_SF_T1_T_T2_.exit.us39, label %._crit_edge, !llvm.loop !14023

.lr.ph42.i.preheader:                             ; preds = %.lr.ph, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_NS0_7move_opEEEvT0_SF_T1_T_T2_.exit.loopexit
  %.037 = phi i64 [ %i.aa, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_NS0_7move_opEEEvT0_SF_T1_T_T2_.exit.loopexit ], [ 0, %.lr.ph ] ; 2 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.037 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx36
  %i.n = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.b ; 6 uses
  %i.o = load i32, ptr %i.l, align 4, !tbaa !343
  store i32 %i.o, ptr %i.n, align 4, !tbaa !343
  store i32 0, ptr %i.l, align 4, !tbaa !343
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  br label %.lr.ph42.i

.lr.ph42.i:                                       ; preds = %.lr.ph42.i.preheader, %.critedge.i
  %i.q = phi ptr [ %i.z, %.critedge.i ], [ %i.p, %.lr.ph42.i.preheader ] ; 5 uses
  %.pn40.i = phi ptr [ %.02641.i, %.critedge.i ], [ %i.n, %.lr.ph42.i.preheader ] ; 5 uses
  %.02641.i = getelementptr inbounds nuw i8, ptr %.pn40.i, i64 4 ; 3 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !343
  %i.s = load i32, ptr %.pn40.i, align 4, !tbaa !343 ; 2 uses
  %i.t = icmp slt i32 %i.r, %i.s
  br i1 %i.t, label %bb.b, label %.critedge.i

bb.b:                                             ; preds = %.lr.ph42.i
  store i32 %i.s, ptr %.02641.i, align 4, !tbaa !343
  store i32 0, ptr %.pn40.i, align 4, !tbaa !343
  %.not3233.i = icmp eq ptr %.pn40.i, %i.n
  br i1 %.not3233.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.035.i = phi ptr [ %i.u, %bb.c ], [ %.pn40.i, %bb.b ] ; 3 uses
  %i.u = getelementptr i8, ptr %.035.i, i64 -4    ; 4 uses
  %i.v = load i32, ptr %i.q, align 4, !tbaa !343
  %i.w = load i32, ptr %i.u, align 4, !tbaa !343  ; 2 uses
  %i.x = icmp slt i32 %i.v, %i.w
  br i1 %i.x, label %bb.c, label %.critedge.i

bb.c:                                             ; preds = %.lr.ph.i
  store i32 %i.w, ptr %.035.i, align 4, !tbaa !343
  store i32 0, ptr %i.u, align 4, !tbaa !343
  %.not32.i = icmp eq ptr %i.u, %i.n
  br i1 %.not32.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !251

.critedge.i:                                      ; preds = %bb.c, %.lr.ph.i, %bb.b, %.lr.ph42.i
  %.1.i = phi ptr [ %.02641.i, %.lr.ph42.i ], [ %i.n, %bb.b ], [ %.035.i, %.lr.ph.i ], [ %i.n, %bb.c ]
  %i.y = load i32, ptr %i.q, align 4, !tbaa !343
  store i32 %i.y, ptr %.1.i, align 4, !tbaa !343
  store i32 0, ptr %i.q, align 4, !tbaa !343
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 4 ; 2 uses
  %.not31.i = icmp eq ptr %i.z, %i.m
  br i1 %.not31.i, label %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_NS0_7move_opEEEvT0_SF_T1_T_T2_.exit.loopexit, label %.lr.ph42.i, !llvm.loop !252

_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_NS0_7move_opEEEvT0_SF_T1_T_T2_.exit.loopexit: ; preds = %.critedge.i
  %i.aa = add i64 %.037, %.sroa.speculated        ; 3 uses
  %i.ab = sub i64 %1, %i.aa
  %i.ac = icmp ugt i64 %i.ab, %.sroa.speculated
  br i1 %i.ac, label %.lr.ph42.i.preheader, label %._crit_edge, !llvm.loop !14023

._crit_edge:                                      ; preds = %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_NS0_7move_opEEEvT0_SF_T1_T_T2_.exit.us39, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_NS0_7move_opEEEvT0_SF_T1_T_T2_.exit.us, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_NS0_7move_opEEEvT0_SF_T1_T_T2_.exit.loopexit, %.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.._crit_edge_crit_edge ], [ %i.b, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_NS0_7move_opEEEvT0_SF_T1_T_T2_.exit.us ], [ %i.b, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_NS0_7move_opEEEvT0_SF_T1_T_T2_.exit.loopexit ], [ %i.b, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_NS0_7move_opEEEvT0_SF_T1_T_T2_.exit.us39 ]
  %.0.lcssa = phi i64 [ 0, %.._crit_edge_crit_edge ], [ %i.c, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_NS0_7move_opEEEvT0_SF_T1_T_T2_.exit.us ], [ %i.aa, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_NS0_7move_opEEEvT0_SF_T1_T_T2_.exit.loopexit ], [ %i.i, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_NS0_7move_opEEEvT0_SF_T1_T_T2_.exit.us39 ] ; 2 uses
  %.idx = shl nuw nsw i64 %.0.lcssa, 2            ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 4 uses
  %.idx35 = shl nuw nsw i64 %1, 2                 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %.idx35
  %i.af = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %.pre-phi ; 6 uses
  %.not.i21 = icmp samesign eq i64 %.0.lcssa, %1
  br i1 %.not.i21, label %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_NS0_7move_opEEEvT0_SF_T1_T_T2_.exit33, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.ag = load i32, ptr %i.ad, align 4, !tbaa !343
  store i32 %i.ag, ptr %i.af, align 4, !tbaa !343
  store i32 0, ptr %i.ad, align 4, !tbaa !343
  %i.ah = add nuw nsw i64 %.idx, 4
  %.not3139.i22 = icmp samesign eq i64 %i.ah, %.idx35
  br i1 %.not3139.i22, label %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_NS0_7move_opEEEvT0_SF_T1_T_T2_.exit33, label %.lr.ph42.i23.preheader

.lr.ph42.i23.preheader:                           ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  br label %.lr.ph42.i23

.lr.ph42.i23:                                     ; preds = %.lr.ph42.i23.preheader, %.critedge.i26
  %i.aj = phi ptr [ %i.as, %.critedge.i26 ], [ %i.ai, %.lr.ph42.i23.preheader ] ; 5 uses
  %.pn40.i24 = phi ptr [ %.02641.i25, %.critedge.i26 ], [ %i.af, %.lr.ph42.i23.preheader ] ; 5 uses
  %.02641.i25 = getelementptr inbounds nuw i8, ptr %.pn40.i24, i64 4 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !343
  %i.al = load i32, ptr %.pn40.i24, align 4, !tbaa !343 ; 2 uses
  %i.am = icmp slt i32 %i.ak, %i.al
  br i1 %i.am, label %bb.e, label %.critedge.i26

bb.e:                                             ; preds = %.lr.ph42.i23
  store i32 %i.al, ptr %.02641.i25, align 4, !tbaa !343
  store i32 0, ptr %.pn40.i24, align 4, !tbaa !343
  %.not3233.i29 = icmp eq ptr %.pn40.i24, %i.af
  br i1 %.not3233.i29, label %.critedge.i26, label %.lr.ph.i30

.lr.ph.i30:                                       ; preds = %bb.e, %bb.f
  %.035.i31 = phi ptr [ %i.an, %bb.f ], [ %.pn40.i24, %bb.e ] ; 3 uses
  %i.an = getelementptr i8, ptr %.035.i31, i64 -4 ; 4 uses
  %i.ao = load i32, ptr %i.aj, align 4, !tbaa !343
  %i.ap = load i32, ptr %i.an, align 4, !tbaa !343 ; 2 uses
  %i.aq = icmp slt i32 %i.ao, %i.ap
  br i1 %i.aq, label %bb.f, label %.critedge.i26

bb.f:                                             ; preds = %.lr.ph.i30
  store i32 %i.ap, ptr %.035.i31, align 4, !tbaa !343
  store i32 0, ptr %i.an, align 4, !tbaa !343
  %.not32.i32 = icmp eq ptr %i.an, %i.af
  br i1 %.not32.i32, label %.critedge.i26, label %.lr.ph.i30, !llvm.loop !251

.critedge.i26:                                    ; preds = %bb.f, %.lr.ph.i30, %bb.e, %.lr.ph42.i23
  %.1.i27 = phi ptr [ %.02641.i25, %.lr.ph42.i23 ], [ %i.af, %bb.e ], [ %.035.i31, %.lr.ph.i30 ], [ %i.af, %bb.f ]
  %i.ar = load i32, ptr %i.aj, align 4, !tbaa !343
  store i32 %i.ar, ptr %.1.i27, align 4, !tbaa !343
  store i32 0, ptr %i.aj, align 4, !tbaa !343
  %i.as = getelementptr inbounds nuw i8, ptr %i.aj, i64 4 ; 2 uses
  %.not31.i28 = icmp eq ptr %i.as, %i.ae
  br i1 %.not31.i28, label %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_NS0_7move_opEEEvT0_SF_T1_T_T2_.exit33, label %.lr.ph42.i23, !llvm.loop !252

_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_NS0_7move_opEEEvT0_SF_T1_T_T2_.exit33: ; preds = %.critedge.i26, %._crit_edge, %bb.d
  ret i64 %.sroa.speculated
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost7movelib15detail_adaptive27op_merge_left_step_multipleIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEENS0_9iter_sizeIT_E4typeESH_SJ_SJ_SJ_SJ_T0_T1_(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = icmp ult i64 %2, %3
  %i.b = icmp uge i64 %4, %2
  %i.c = and i1 %i.a, %i.b
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge88

.preheader.lr.ph:                                 ; preds = %bb.a
  %.idx68 = shl i64 %1, 2                         ; 5 uses
  %5 = add i64 %.idx68, -4                        ; 2 uses
  %invariant.op = add i64 %.idx68, -4
  %invariant.op330 = add i64 %.idx68, -4
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7move_opEEEvT_SF_SF_SF_T0_T1_.exit67
  %.04087 = phi i64 [ %4, %.preheader.lr.ph ], [ %i.hc, %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7move_opEEEvT_SF_SF_SF_T0_T1_.exit67 ]
  %.04186 = phi ptr [ %0, %.preheader.lr.ph ], [ %i.hb, %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7move_opEEEvT_SF_SF_SF_T0_T1_.exit67 ] ; 8 uses
  %.04285 = phi i64 [ %2, %.preheader.lr.ph ], [ %i.d, %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7move_opEEEvT_SF_SF_SF_T0_T1_.exit67 ] ; 16 uses
  %.04186166 = ptrtoaddr ptr %.04186 to i64       ; 7 uses
  %i.d = shl i64 %.04285, 1                       ; 8 uses
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.f = sub i64 0, %.04285
  %.not43.i = icmp eq i64 %.04285, 0
  %i.g = shl i64 %.04285, 3                       ; 3 uses
  %i.h = add i64 %.04186166, -4                   ; 2 uses
  %i.i = shl i64 %.04285, 2                       ; 2 uses
  %i.j = add i64 %i.h, %i.i
  %i.k = add i64 %i.h, %i.g
  %i.l = shl i64 %.04285, 3                       ; 2 uses
  %i.m = add i64 %i.l, %.04186166
  %i.n = add i64 %i.m, -4
  %i.o = shl i64 %.04285, 2
  %i.p = add i64 %i.o, %.04186166
  %i.q = add i64 %i.p, -4
  %i.r = shl i64 %.04285, 3
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7move_opEEEvT_SF_SF_SF_T0_T1_.exit
  %indvar227 = phi i64 [ 0, %.lr.ph ], [ %indvar.next228, %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7move_opEEEvT_SF_SF_SF_T0_T1_.exit ] ; 5 uses
  %.080 = phi ptr [ %.04186, %.lr.ph ], [ %.0, %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7move_opEEEvT_SF_SF_SF_T0_T1_.exit ] ; 5 uses
  %.03979 = phi i64 [ 0, %.lr.ph ], [ %i.ec, %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7move_opEEEvT_SF_SF_SF_T0_T1_.exit ]
  %i.s = getelementptr [4 x i8], ptr %.080, i64 %i.f ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %.080, i64 %.04285 ; 4 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %.080, i64 %i.d ; 2 uses
  br i1 %.not43.i, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.f
  %indvar259 = phi i64 [ %indvar.next260, %bb.f ], [ 0, %bb.b ] ; 2 uses
  %.02246.i = phi ptr [ %.1.i, %bb.f ], [ %i.t, %bb.b ] ; 11 uses
  %.02345.i = phi ptr [ %i.cd, %bb.f ], [ %i.s, %bb.b ] ; 8 uses
  %.02444.i = phi ptr [ %.125.i, %bb.f ], [ %.080, %bb.b ] ; 5 uses
  %i.v = icmp eq ptr %.02444.i, %i.t
  br i1 %i.v, label %.lr.ph.i.i.i.preheader, label %bb.c

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i
  %.02246.i261.le = ptrtoaddr ptr %.02246.i to i64 ; 2 uses
  %i.w = mul i64 %indvar227, %i.l
  %i.x = add i64 %i.n, %i.w                       ; 2 uses
  %i.y = sub i64 %i.x, %.02246.i261.le            ; 2 uses
  %i.z = lshr i64 %i.y, 2
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %min.iters.check263 = icmp ult i64 %i.y, 28
  br i1 %min.iters.check263, label %.lr.ph.i.i.i.preheader287, label %vector.memcheck264

vector.memcheck264:                               ; preds = %.lr.ph.i.i.i.preheader
  %i.ab = mul i64 %indvar227, %i.g                ; 2 uses
  %reass.sub = sub i64 %i.ab, %i.i
  %i.ac = shl i64 %indvar259, 2
  %i.ad = add i64 %i.k, %i.ab
  %i.ae = sub i64 %i.ad, %.02246.i261.le
  %i.af = and i64 %i.ae, -4                       ; 2 uses
  %i.ag = getelementptr i8, ptr %.04186, i64 %reass.sub
  %i.ah = getelementptr i8, ptr %i.ag, i64 4
  %i.ai = getelementptr i8, ptr %i.ah, i64 %i.ac
  %i.aj = getelementptr i8, ptr %i.ai, i64 %i.af
  %i.ak = getelementptr i8, ptr %.02246.i, i64 %i.af
  %i.al = getelementptr i8, ptr %i.ak, i64 4
  %bound0265 = icmp ult ptr %.02345.i, %i.al
  %bound1266 = icmp ult ptr %.02246.i, %i.aj
  %found.conflict267 = and i1 %bound0265, %bound1266
  br i1 %found.conflict267, label %.lr.ph.i.i.i.preheader287, label %vector.ph268

vector.ph268:                                     ; preds = %vector.memcheck264
  %n.vec269 = and i64 %i.aa, 9223372036854775800  ; 3 uses
  %i.am = shl i64 %n.vec269, 2                    ; 2 uses
  %i.an = getelementptr i8, ptr %.02345.i, i64 %i.am
  %i.ao = getelementptr i8, ptr %.02246.i, i64 %i.am
  br label %vector.body270

vector.body270:                                   ; preds = %vector.body270, %vector.ph268
  %index271 = phi i64 [ 0, %vector.ph268 ], [ %index.next276, %vector.body270 ] ; 2 uses
  %i.ap = shl i64 %index271, 2                    ; 2 uses
  %next.gep272 = getelementptr i8, ptr %.02345.i, i64 %i.ap ; 2 uses
  %next.gep273 = getelementptr i8, ptr %.02246.i, i64 %i.ap ; 3 uses
  %i.aq = getelementptr i8, ptr %next.gep273, i64 16 ; 2 uses
  %wide.load274 = load <4 x i32>, ptr %next.gep273, align 4, !tbaa !343, !alias.scope !14054
  %wide.load275 = load <4 x i32>, ptr %i.aq, align 4, !tbaa !343, !alias.scope !14054
  %i.ar = getelementptr i8, ptr %next.gep272, i64 16
  store <4 x i32> %wide.load274, ptr %next.gep272, align 4, !tbaa !343, !alias.scope !14055, !noalias !14054
  store <4 x i32> %wide.load275, ptr %i.ar, align 4, !tbaa !343, !alias.scope !14055, !noalias !14054
  store <4 x i32> zeroinitializer, ptr %next.gep273, align 4, !tbaa !343, !alias.scope !14054
  store <4 x i32> zeroinitializer, ptr %i.aq, align 4, !tbaa !343, !alias.scope !14054
  %index.next276 = add nuw i64 %index271, 8       ; 2 uses
  %i.as = icmp eq i64 %index.next276, %n.vec269
  br i1 %i.as, label %middle.block277, label %vector.body270, !llvm.loop !14027

middle.block277:                                  ; preds = %vector.body270
  %cmp.n278 = icmp eq i64 %i.aa, %n.vec269
  br i1 %cmp.n278, label %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7move_opEEEvT_SF_SF_SF_T0_T1_.exit, label %.lr.ph.i.i.i.preheader287

.lr.ph.i.i.i.preheader287:                        ; preds = %vector.memcheck264, %.lr.ph.i.i.i.preheader, %middle.block277
  %.010.i.i.i.ph = phi ptr [ %.02345.i, %vector.memcheck264 ], [ %.02345.i, %.lr.ph.i.i.i.preheader ], [ %i.an, %middle.block277 ] ; 2 uses
  %.079.i.i.i.ph = phi ptr [ %.02246.i, %vector.memcheck264 ], [ %.02246.i, %.lr.ph.i.i.i.preheader ], [ %i.ao, %middle.block277 ] ; 3 uses
  %.079.i.i.i.ph307 = ptrtoaddr ptr %.079.i.i.i.ph to i64
  %i.at = sub i64 %i.x, %.079.i.i.i.ph307         ; 2 uses
  %i.au = lshr i64 %i.at, 2
  %i.av = add nuw nsw i64 %i.au, 1
  %xtraiter = and i64 %i.av, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader287, %.lr.ph.i.i.i.prol
  %.010.i.i.i.prol = phi ptr [ %i.ay, %.lr.ph.i.i.i.prol ], [ %.010.i.i.i.ph, %.lr.ph.i.i.i.preheader287 ] ; 2 uses
  %.079.i.i.i.prol = phi ptr [ %i.ax, %.lr.ph.i.i.i.prol ], [ %.079.i.i.i.ph, %.lr.ph.i.i.i.preheader287 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader287 ]
  %i.aw = load i32, ptr %.079.i.i.i.prol, align 4, !tbaa !343
  store i32 %i.aw, ptr %.010.i.i.i.prol, align 4, !tbaa !343
  store i32 0, ptr %.079.i.i.i.prol, align 4, !tbaa !343
  %i.ax = getelementptr inbounds nuw i8, ptr %.079.i.i.i.prol, i64 4 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.010.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !14028

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader287
  %.010.i.i.i.unr = phi ptr [ %.010.i.i.i.ph, %.lr.ph.i.i.i.preheader287 ], [ %i.ay, %.lr.ph.i.i.i.prol ]
  %.079.i.i.i.unr = phi ptr [ %.079.i.i.i.ph, %.lr.ph.i.i.i.preheader287 ], [ %i.ax, %.lr.ph.i.i.i.prol ]
  %i.az = icmp ult i64 %i.at, 28
  br i1 %i.az, label %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7move_opEEEvT_SF_SF_SF_T0_T1_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.bx, %.lr.ph.i.i.i ], [ %.010.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  %.079.i.i.i = phi ptr [ %i.bw, %.lr.ph.i.i.i ], [ %.079.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 10 uses
  %i.ba = load i32, ptr %.079.i.i.i, align 4, !tbaa !343
  store i32 %i.ba, ptr %.010.i.i.i, align 4, !tbaa !343
  store i32 0, ptr %.079.i.i.i, align 4, !tbaa !343
  %i.bb = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 4 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 4
  %i.bd = load i32, ptr %i.bb, align 4, !tbaa !343
  store i32 %i.bd, ptr %i.bc, align 4, !tbaa !343
  store i32 0, ptr %i.bb, align 4, !tbaa !343
  %i.be = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 8 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 8
  %i.bg = load i32, ptr %i.be, align 4, !tbaa !343
  store i32 %i.bg, ptr %i.bf, align 4, !tbaa !343
  store i32 0, ptr %i.be, align 4, !tbaa !343
  %i.bh = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 12 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 12
  %i.bj = load i32, ptr %i.bh, align 4, !tbaa !343
  store i32 %i.bj, ptr %i.bi, align 4, !tbaa !343
  store i32 0, ptr %i.bh, align 4, !tbaa !343
  %i.bk = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 16 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 16
  %i.bm = load i32, ptr %i.bk, align 4, !tbaa !343
  store i32 %i.bm, ptr %i.bl, align 4, !tbaa !343
  store i32 0, ptr %i.bk, align 4, !tbaa !343
  %i.bn = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 20 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 20
  %i.bp = load i32, ptr %i.bn, align 4, !tbaa !343
  store i32 %i.bp, ptr %i.bo, align 4, !tbaa !343
  store i32 0, ptr %i.bn, align 4, !tbaa !343
  %i.bq = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 24 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 24
  %i.bs = load i32, ptr %i.bq, align 4, !tbaa !343
  store i32 %i.bs, ptr %i.br, align 4, !tbaa !343
  store i32 0, ptr %i.bq, align 4, !tbaa !343
  %i.bt = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 28 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 28
  %i.bv = load i32, ptr %i.bt, align 4, !tbaa !343
  store i32 %i.bv, ptr %i.bu, align 4, !tbaa !343
  store i32 0, ptr %i.bt, align 4, !tbaa !343
  %i.bw = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 32 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 32
  %.not.i.i.i.7 = icmp eq ptr %i.bw, %i.u
  br i1 %.not.i.i.i.7, label %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7move_opEEEvT_SF_SF_SF_T0_T1_.exit, label %.lr.ph.i.i.i, !llvm.loop !14029

bb.c:                                             ; preds = %.lr.ph.i
  %i.by = load i32, ptr %.02246.i, align 4, !tbaa !343 ; 2 uses
  %i.bz = load i32, ptr %.02444.i, align 4, !tbaa !343 ; 2 uses
  %i.ca = icmp slt i32 %i.by, %i.bz
  br i1 %i.ca, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 %i.by, ptr %.02345.i, align 4, !tbaa !343
  store i32 0, ptr %.02246.i, align 4, !tbaa !343
  %i.cb = getelementptr inbounds nuw i8, ptr %.02246.i, i64 4
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store i32 %i.bz, ptr %.02345.i, align 4, !tbaa !343
  store i32 0, ptr %.02444.i, align 4, !tbaa !343
  %i.cc = getelementptr inbounds nuw i8, ptr %.02444.i, i64 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.125.i = phi ptr [ %.02444.i, %bb.d ], [ %i.cc, %bb.e ] ; 2 uses
  %.1.i = phi ptr [ %i.cb, %bb.d ], [ %.02246.i, %bb.e ] ; 2 uses
  %i.cd = getelementptr i8, ptr %.02345.i, i64 4  ; 2 uses
  %.not.i = icmp eq ptr %.1.i, %i.u
  %indvar.next260 = add i64 %indvar259, 1
  br i1 %.not.i, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit.i, label %.lr.ph.i, !llvm.loop !14030

_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit.i: ; preds = %bb.f, %bb.b
  %.024.lcssa.i = phi ptr [ %.080, %bb.b ], [ %.125.i, %bb.f ] ; 9 uses
  %.023.lcssa.i = phi ptr [ %i.s, %bb.b ], [ %i.cd, %bb.f ] ; 7 uses
  %.024.lcssa.i229 = ptrtoaddr ptr %.024.lcssa.i to i64 ; 2 uses
  %.not27.i = icmp eq ptr %.023.lcssa.i, %.024.lcssa.i
  %.not8.i.i28.i = icmp eq ptr %.024.lcssa.i, %i.t
  %or.cond38.i = or i1 %.not8.i.i28.i, %.not27.i
  br i1 %or.cond38.i, label %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7move_opEEEvT_SF_SF_SF_T0_T1_.exit, label %.lr.ph.i.i29.i.preheader

.lr.ph.i.i29.i.preheader:                         ; preds = %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit.i
  %i.ce = mul i64 %indvar227, %i.r
  %i.cf = add i64 %i.q, %i.ce                     ; 2 uses
  %i.cg = sub i64 %i.cf, %.024.lcssa.i229         ; 2 uses
  %i.ch = lshr i64 %i.cg, 2
  %i.ci = add nuw nsw i64 %i.ch, 1                ; 2 uses
  %min.iters.check231 = icmp ult i64 %i.cg, 28
  br i1 %min.iters.check231, label %.lr.ph.i.i29.i.preheader286, label %vector.memcheck232

vector.memcheck232:                               ; preds = %.lr.ph.i.i29.i.preheader
  %i.cj = mul i64 %indvar227, %i.g
  %i.ck = add i64 %i.j, %i.cj
  %i.cl = sub i64 %i.ck, %.024.lcssa.i229
  %i.cm = and i64 %i.cl, -4
  %i.cn = add i64 %i.cm, 4                        ; 2 uses
  %i.co = getelementptr i8, ptr %.023.lcssa.i, i64 %i.cn
  %i.cp = getelementptr i8, ptr %.024.lcssa.i, i64 %i.cn
  %bound0233 = icmp ult ptr %.023.lcssa.i, %i.cp
  %bound1234 = icmp ult ptr %.024.lcssa.i, %i.co
  %found.conflict235 = and i1 %bound0233, %bound1234
  br i1 %found.conflict235, label %.lr.ph.i.i29.i.preheader286, label %vector.ph236

vector.ph236:                                     ; preds = %vector.memcheck232
  %n.vec237 = and i64 %i.ci, 9223372036854775800  ; 3 uses
  %i.cq = shl i64 %n.vec237, 2                    ; 2 uses
  %i.cr = getelementptr i8, ptr %.023.lcssa.i, i64 %i.cq
  %i.cs = getelementptr i8, ptr %.024.lcssa.i, i64 %i.cq
  br label %vector.body238

vector.body238:                                   ; preds = %vector.body238, %vector.ph236
  %index239 = phi i64 [ 0, %vector.ph236 ], [ %index.next244, %vector.body238 ] ; 2 uses
  %i.ct = shl i64 %index239, 2                    ; 2 uses
  %next.gep240 = getelementptr i8, ptr %.023.lcssa.i, i64 %i.ct ; 2 uses
  %next.gep241 = getelementptr i8, ptr %.024.lcssa.i, i64 %i.ct ; 3 uses
  %i.cu = getelementptr i8, ptr %next.gep241, i64 16 ; 2 uses
  %wide.load242 = load <4 x i32>, ptr %next.gep241, align 4, !tbaa !343, !alias.scope !14056
  %wide.load243 = load <4 x i32>, ptr %i.cu, align 4, !tbaa !343, !alias.scope !14056
  %i.cv = getelementptr i8, ptr %next.gep240, i64 16
  store <4 x i32> %wide.load242, ptr %next.gep240, align 4, !tbaa !343, !alias.scope !14057, !noalias !14056
  store <4 x i32> %wide.load243, ptr %i.cv, align 4, !tbaa !343, !alias.scope !14057, !noalias !14056
  store <4 x i32> zeroinitializer, ptr %next.gep241, align 4, !tbaa !343, !alias.scope !14056
  store <4 x i32> zeroinitializer, ptr %i.cu, align 4, !tbaa !343, !alias.scope !14056
  %index.next244 = add nuw i64 %index239, 8       ; 2 uses
  %i.cw = icmp eq i64 %index.next244, %n.vec237
  br i1 %i.cw, label %middle.block245, label %vector.body238, !llvm.loop !14034

middle.block245:                                  ; preds = %vector.body238
  %cmp.n246 = icmp eq i64 %i.ci, %n.vec237
  br i1 %cmp.n246, label %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7move_opEEEvT_SF_SF_SF_T0_T1_.exit, label %.lr.ph.i.i29.i.preheader286

.lr.ph.i.i29.i.preheader286:                      ; preds = %vector.memcheck232, %.lr.ph.i.i29.i.preheader, %middle.block245
  %.010.i.i30.i.ph = phi ptr [ %.023.lcssa.i, %vector.memcheck232 ], [ %.023.lcssa.i, %.lr.ph.i.i29.i.preheader ], [ %i.cr, %middle.block245 ] ; 2 uses
  %.079.i.i31.i.ph = phi ptr [ %.024.lcssa.i, %vector.memcheck232 ], [ %.024.lcssa.i, %.lr.ph.i.i29.i.preheader ], [ %i.cs, %middle.block245 ] ; 3 uses
  %.079.i.i31.i.ph308 = ptrtoaddr ptr %.079.i.i31.i.ph to i64
  %i.cx = sub i64 %i.cf, %.079.i.i31.i.ph308      ; 2 uses
  %i.cy = lshr i64 %i.cx, 2
  %i.cz = add nuw nsw i64 %i.cy, 1
  %xtraiter309 = and i64 %i.cz, 7                 ; 2 uses
  %lcmp.mod310.not = icmp eq i64 %xtraiter309, 0
  br i1 %lcmp.mod310.not, label %.lr.ph.i.i29.i.prol.loopexit, label %.lr.ph.i.i29.i.prol

.lr.ph.i.i29.i.prol:                              ; preds = %.lr.ph.i.i29.i.preheader286, %.lr.ph.i.i29.i.prol
  %.010.i.i30.i.prol = phi ptr [ %i.dc, %.lr.ph.i.i29.i.prol ], [ %.010.i.i30.i.ph, %.lr.ph.i.i29.i.preheader286 ] ; 2 uses
  %.079.i.i31.i.prol = phi ptr [ %i.db, %.lr.ph.i.i29.i.prol ], [ %.079.i.i31.i.ph, %.lr.ph.i.i29.i.preheader286 ] ; 3 uses
  %prol.iter311 = phi i64 [ %prol.iter311.next, %.lr.ph.i.i29.i.prol ], [ 0, %.lr.ph.i.i29.i.preheader286 ]
  %i.da = load i32, ptr %.079.i.i31.i.prol, align 4, !tbaa !343
  store i32 %i.da, ptr %.010.i.i30.i.prol, align 4, !tbaa !343
  store i32 0, ptr %.079.i.i31.i.prol, align 4, !tbaa !343
  %i.db = getelementptr inbounds nuw i8, ptr %.079.i.i31.i.prol, i64 4 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.010.i.i30.i.prol, i64 4 ; 2 uses
  %prol.iter311.next = add i64 %prol.iter311, 1   ; 2 uses
  %prol.iter311.cmp.not = icmp eq i64 %prol.iter311.next, %xtraiter309
  br i1 %prol.iter311.cmp.not, label %.lr.ph.i.i29.i.prol.loopexit, label %.lr.ph.i.i29.i.prol, !llvm.loop !14035

.lr.ph.i.i29.i.prol.loopexit:                     ; preds = %.lr.ph.i.i29.i.prol, %.lr.ph.i.i29.i.preheader286
  %.010.i.i30.i.unr = phi ptr [ %.010.i.i30.i.ph, %.lr.ph.i.i29.i.preheader286 ], [ %i.dc, %.lr.ph.i.i29.i.prol ]
  %.079.i.i31.i.unr = phi ptr [ %.079.i.i31.i.ph, %.lr.ph.i.i29.i.preheader286 ], [ %i.db, %.lr.ph.i.i29.i.prol ]
  %i.dd = icmp ult i64 %i.cx, 28
  br i1 %i.dd, label %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7move_opEEEvT_SF_SF_SF_T0_T1_.exit, label %.lr.ph.i.i29.i

.lr.ph.i.i29.i:                                   ; preds = %.lr.ph.i.i29.i.prol.loopexit, %.lr.ph.i.i29.i
  %.010.i.i30.i = phi ptr [ %i.eb, %.lr.ph.i.i29.i ], [ %.010.i.i30.i.unr, %.lr.ph.i.i29.i.prol.loopexit ] ; 9 uses
  %.079.i.i31.i = phi ptr [ %i.ea, %.lr.ph.i.i29.i ], [ %.079.i.i31.i.unr, %.lr.ph.i.i29.i.prol.loopexit ] ; 10 uses
  %i.de = load i32, ptr %.079.i.i31.i, align 4, !tbaa !343
  store i32 %i.de, ptr %.010.i.i30.i, align 4, !tbaa !343
  store i32 0, ptr %.079.i.i31.i, align 4, !tbaa !343
  %i.df = getelementptr inbounds nuw i8, ptr %.079.i.i31.i, i64 4 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.010.i.i30.i, i64 4
  %i.dh = load i32, ptr %i.df, align 4, !tbaa !343
  store i32 %i.dh, ptr %i.dg, align 4, !tbaa !343
  store i32 0, ptr %i.df, align 4, !tbaa !343
  %i.di = getelementptr inbounds nuw i8, ptr %.079.i.i31.i, i64 8 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.010.i.i30.i, i64 8
  %i.dk = load i32, ptr %i.di, align 4, !tbaa !343
  store i32 %i.dk, ptr %i.dj, align 4, !tbaa !343
  store i32 0, ptr %i.di, align 4, !tbaa !343
  %i.dl = getelementptr inbounds nuw i8, ptr %.079.i.i31.i, i64 12 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.010.i.i30.i, i64 12
  %i.dn = load i32, ptr %i.dl, align 4, !tbaa !343
  store i32 %i.dn, ptr %i.dm, align 4, !tbaa !343
  store i32 0, ptr %i.dl, align 4, !tbaa !343
  %i.do = getelementptr inbounds nuw i8, ptr %.079.i.i31.i, i64 16 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.010.i.i30.i, i64 16
  %i.dq = load i32, ptr %i.do, align 4, !tbaa !343
  store i32 %i.dq, ptr %i.dp, align 4, !tbaa !343
  store i32 0, ptr %i.do, align 4, !tbaa !343
  %i.dr = getelementptr inbounds nuw i8, ptr %.079.i.i31.i, i64 20 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.010.i.i30.i, i64 20
  %i.dt = load i32, ptr %i.dr, align 4, !tbaa !343
  store i32 %i.dt, ptr %i.ds, align 4, !tbaa !343
  store i32 0, ptr %i.dr, align 4, !tbaa !343
  %i.du = getelementptr inbounds nuw i8, ptr %.079.i.i31.i, i64 24 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.010.i.i30.i, i64 24
  %i.dw = load i32, ptr %i.du, align 4, !tbaa !343
  store i32 %i.dw, ptr %i.dv, align 4, !tbaa !343
  store i32 0, ptr %i.du, align 4, !tbaa !343
  %i.dx = getelementptr inbounds nuw i8, ptr %.079.i.i31.i, i64 28 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.010.i.i30.i, i64 28
  %i.dz = load i32, ptr %i.dx, align 4, !tbaa !343
  store i32 %i.dz, ptr %i.dy, align 4, !tbaa !343
  store i32 0, ptr %i.dx, align 4, !tbaa !343
  %i.ea = getelementptr inbounds nuw i8, ptr %.079.i.i31.i, i64 32 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.010.i.i30.i, i64 32
  %.not.i.i32.i.7 = icmp eq ptr %i.ea, %i.t
  br i1 %.not.i.i32.i.7, label %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7move_opEEEvT_SF_SF_SF_T0_T1_.exit, label %.lr.ph.i.i29.i, !llvm.loop !14036

_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7move_opEEEvT_SF_SF_SF_T0_T1_.exit: ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %.lr.ph.i.i29.i.prol.loopexit, %.lr.ph.i.i29.i, %middle.block277, %middle.block245, %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit.i
  %i.ec = add i64 %.03979, %i.d                   ; 4 uses
  %.0.idx = shl i64 %i.ec, 2                      ; 2 uses
  %.0 = getelementptr i8, ptr %.04186, i64 %.0.idx ; 2 uses
  %i.ed = sub i64 %1, %i.ec                       ; 2 uses
  %i.ee = icmp ugt i64 %i.ed, %i.d
  %indvar.next228 = add i64 %indvar227, 1
  br i1 %i.ee, label %bb.b, label %._crit_edge, !llvm.loop !14037

._crit_edge:                                      ; preds = %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7move_opEEEvT_SF_SF_SF_T0_T1_.exit, %.preheader
  %.039.lcssa = phi i64 [ 0, %.preheader ], [ %i.ec, %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7move_opEEEvT_SF_SF_SF_T0_T1_.exit ]
  %.0.idx.lcssa = phi i64 [ 0, %.preheader ], [ %.0.idx, %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7move_opEEEvT_SF_SF_SF_T0_T1_.exit ]
  %.0.lcssa = phi ptr [ %.04186, %.preheader ], [ %.0, %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7move_opEEEvT_SF_SF_SF_T0_T1_.exit ] ; 14 uses
  %.lcssa75 = phi i64 [ %1, %.preheader ], [ %i.ed, %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7move_opEEEvT_SF_SF_SF_T0_T1_.exit ]
  %.0.lcssa152 = ptrtoaddr ptr %.0.lcssa to i64   ; 3 uses
  %i.ef = icmp ugt i64 %.lcssa75, %.04285
  br i1 %i.ef, label %bb.g, label %bb.l

bb.g:                                             ; preds = %._crit_edge
  %i.eg = sub i64 0, %.04285                      ; 6 uses
  %i.eh = getelementptr [4 x i8], ptr %.0.lcssa, i64 %i.eg ; 2 uses
  %.idx = shl nuw nsw i64 %.04285, 2              ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 %.idx ; 4 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.04186, i64 %.idx68 ; 2 uses
  %i.ek = add nuw nsw i64 %.0.idx.lcssa, %.idx
  %.not43.i45 = icmp samesign eq i64 %i.ek, %.idx68
  br i1 %.not43.i45, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit.i53, label %.lr.ph.i46

.lr.ph.i46:                                       ; preds = %bb.g, %bb.k
  %indvar = phi i64 [ %indvar.next, %bb.k ], [ 0, %bb.g ] ; 2 uses
  %.02246.i47 = phi ptr [ %.1.i51, %bb.k ], [ %i.ei, %bb.g ] ; 11 uses
  %.02345.i48 = phi ptr [ %i.fl, %bb.k ], [ %i.eh, %bb.g ] ; 8 uses
  %.02444.i49 = phi ptr [ %.125.i50, %bb.k ], [ %.0.lcssa, %bb.g ] ; 5 uses
  %i.el = icmp eq ptr %.02444.i49, %i.ei
  br i1 %i.el, label %.lr.ph.i.i.i63.preheader, label %bb.h

.lr.ph.i.i.i63.preheader:                         ; preds = %.lr.ph.i46
  %.02246.i47167 = ptrtoaddr ptr %.02246.i47 to i64 ; 2 uses
  %.reass331 = add i64 %.04186166, %invariant.op330
  %i.em = sub i64 %.reass331, %.02246.i47167      ; 2 uses
  %i.en = lshr i64 %i.em, 2
  %i.eo = add nuw nsw i64 %i.en, 1                ; 2 uses
  %min.iters.check169 = icmp ult i64 %i.em, 44
  br i1 %min.iters.check169, label %.lr.ph.i.i.i63.preheader290, label %vector.memcheck170

vector.memcheck170:                               ; preds = %.lr.ph.i.i.i63.preheader
  %i.ep = sub i64 %indvar, %.04285
  %reass.sub285 = shl i64 %i.ep, 2
  %6 = sub i64 %.04186166, %.02246.i47167
  %7 = add i64 %5, %6
  %i.eq = and i64 %7, -4                          ; 2 uses
  %i.er = getelementptr i8, ptr %.0.lcssa, i64 %reass.sub285
  %i.es = getelementptr i8, ptr %i.er, i64 4
  %i.et = getelementptr i8, ptr %i.es, i64 %i.eq
  %i.eu = getelementptr i8, ptr %.02246.i47, i64 %i.eq
  %i.ev = getelementptr i8, ptr %i.eu, i64 4
  %bound0171 = icmp ult ptr %.02345.i48, %i.ev
  %bound1172 = icmp ult ptr %.02246.i47, %i.et
  %found.conflict173 = and i1 %bound0171, %bound1172
  br i1 %found.conflict173, label %.lr.ph.i.i.i63.preheader290, label %vector.ph174

vector.ph174:                                     ; preds = %vector.memcheck170
  %n.vec175 = and i64 %i.eo, 9223372036854775800  ; 3 uses
  %i.ew = shl i64 %n.vec175, 2                    ; 2 uses
  %i.ex = getelementptr i8, ptr %.02345.i48, i64 %i.ew
  %i.ey = getelementptr i8, ptr %.02246.i47, i64 %i.ew
  br label %vector.body176

vector.body176:                                   ; preds = %vector.body176, %vector.ph174
  %index177 = phi i64 [ 0, %vector.ph174 ], [ %index.next182, %vector.body176 ] ; 2 uses
  %i.ez = shl i64 %index177, 2                    ; 2 uses
  %next.gep178 = getelementptr i8, ptr %.02345.i48, i64 %i.ez ; 2 uses
  %next.gep179 = getelementptr i8, ptr %.02246.i47, i64 %i.ez ; 3 uses
  %i.fa = getelementptr i8, ptr %next.gep179, i64 16 ; 2 uses
  %wide.load180 = load <4 x i32>, ptr %next.gep179, align 4, !tbaa !343, !alias.scope !14058
  %wide.load181 = load <4 x i32>, ptr %i.fa, align 4, !tbaa !343, !alias.scope !14058
  %i.fb = getelementptr i8, ptr %next.gep178, i64 16
  store <4 x i32> %wide.load180, ptr %next.gep178, align 4, !tbaa !343, !alias.scope !14059, !noalias !14058
  store <4 x i32> %wide.load181, ptr %i.fb, align 4, !tbaa !343, !alias.scope !14059, !noalias !14058
  store <4 x i32> zeroinitializer, ptr %next.gep179, align 4, !tbaa !343, !alias.scope !14058
  store <4 x i32> zeroinitializer, ptr %i.fa, align 4, !tbaa !343, !alias.scope !14058
  %index.next182 = add nuw i64 %index177, 8       ; 2 uses
  %i.fc = icmp eq i64 %index.next182, %n.vec175
  br i1 %i.fc, label %middle.block183, label %vector.body176, !llvm.loop !14041

middle.block183:                                  ; preds = %vector.body176
  %cmp.n184 = icmp eq i64 %i.eo, %n.vec175
  br i1 %cmp.n184, label %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7move_opEEEvT_SF_SF_SF_T0_T1_.exit67, label %.lr.ph.i.i.i63.preheader290

.lr.ph.i.i.i63.preheader290:                      ; preds = %vector.memcheck170, %.lr.ph.i.i.i63.preheader, %middle.block183
  %.010.i.i.i64.ph = phi ptr [ %.02345.i48, %vector.memcheck170 ], [ %.02345.i48, %.lr.ph.i.i.i63.preheader ], [ %i.ex, %middle.block183 ]
  %.079.i.i.i65.ph = phi ptr [ %.02246.i47, %vector.memcheck170 ], [ %.02246.i47, %.lr.ph.i.i.i63.preheader ], [ %i.ey, %middle.block183 ]
  br label %.lr.ph.i.i.i63

.lr.ph.i.i.i63:                                   ; preds = %.lr.ph.i.i.i63.preheader290, %.lr.ph.i.i.i63
  %.010.i.i.i64 = phi ptr [ %i.ff, %.lr.ph.i.i.i63 ], [ %.010.i.i.i64.ph, %.lr.ph.i.i.i63.preheader290 ] ; 2 uses
  %.079.i.i.i65 = phi ptr [ %i.fe, %.lr.ph.i.i.i63 ], [ %.079.i.i.i65.ph, %.lr.ph.i.i.i63.preheader290 ] ; 3 uses
  %i.fd = load i32, ptr %.079.i.i.i65, align 4, !tbaa !343
  store i32 %i.fd, ptr %.010.i.i.i64, align 4, !tbaa !343
  store i32 0, ptr %.079.i.i.i65, align 4, !tbaa !343
  %i.fe = getelementptr inbounds nuw i8, ptr %.079.i.i.i65, i64 4 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.010.i.i.i64, i64 4
  %.not.i.i.i66 = icmp eq ptr %i.fe, %i.ej
  br i1 %.not.i.i.i66, label %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7move_opEEEvT_SF_SF_SF_T0_T1_.exit67, label %.lr.ph.i.i.i63, !llvm.loop !14042

bb.h:                                             ; preds = %.lr.ph.i46
  %i.fg = load i32, ptr %.02246.i47, align 4, !tbaa !343 ; 2 uses
  %i.fh = load i32, ptr %.02444.i49, align 4, !tbaa !343 ; 2 uses
  %i.fi = icmp slt i32 %i.fg, %i.fh
  br i1 %i.fi, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 %i.fg, ptr %.02345.i48, align 4, !tbaa !343
  store i32 0, ptr %.02246.i47, align 4, !tbaa !343
  %i.fj = getelementptr inbounds nuw i8, ptr %.02246.i47, i64 4
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  store i32 %i.fh, ptr %.02345.i48, align 4, !tbaa !343
  store i32 0, ptr %.02444.i49, align 4, !tbaa !343
  %i.fk = getelementptr inbounds nuw i8, ptr %.02444.i49, i64 4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.125.i50 = phi ptr [ %.02444.i49, %bb.i ], [ %i.fk, %bb.j ] ; 2 uses
  %.1.i51 = phi ptr [ %i.fj, %bb.i ], [ %.02246.i47, %bb.j ] ; 2 uses
  %i.fl = getelementptr i8, ptr %.02345.i48, i64 4 ; 2 uses
  %.not.i52 = icmp eq ptr %.1.i51, %i.ej
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i52, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit.i53, label %.lr.ph.i46, !llvm.loop !14030

_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit.i53: ; preds = %bb.k, %bb.g
  %.024.lcssa.i54 = phi ptr [ %.0.lcssa, %bb.g ], [ %.125.i50, %bb.k ] ; 9 uses
  %.023.lcssa.i55 = phi ptr [ %i.eh, %bb.g ], [ %i.fl, %bb.k ] ; 7 uses
  %.not27.i56 = icmp eq ptr %.023.lcssa.i55, %.024.lcssa.i54
  %.not8.i.i28.i57 = icmp eq ptr %.024.lcssa.i54, %i.ei
  %or.cond38.i58 = or i1 %.not8.i.i28.i57, %.not27.i56
  br i1 %or.cond38.i58, label %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7move_opEEEvT_SF_SF_SF_T0_T1_.exit67, label %.lr.ph.i.i29.i59.preheader

.lr.ph.i.i29.i59.preheader:                       ; preds = %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit.i53
  %.024.lcssa.i54153 = ptrtoaddr ptr %.024.lcssa.i54 to i64
  %i.fm = add i64 %.idx, %.0.lcssa152
  %i.fn = add i64 %i.fm, -4
  %i.fo = sub i64 %i.fn, %.024.lcssa.i54153       ; 3 uses
  %i.fp = lshr i64 %i.fo, 2
  %i.fq = add nuw nsw i64 %i.fp, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.fo, 28
  br i1 %min.iters.check, label %.lr.ph.i.i29.i59.preheader289, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i29.i59.preheader
  %i.fr = and i64 %i.fo, -4
  %i.fs = add i64 %i.fr, 4                        ; 2 uses
  %i.ft = getelementptr i8, ptr %.023.lcssa.i55, i64 %i.fs
  %i.fu = getelementptr i8, ptr %.024.lcssa.i54, i64 %i.fs
  %bound0 = icmp ult ptr %.023.lcssa.i55, %i.fu
  %bound1 = icmp ult ptr %.024.lcssa.i54, %i.ft
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i29.i59.preheader289, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.fq, 9223372036854775800     ; 3 uses
  %i.fv = shl i64 %n.vec, 2                       ; 2 uses
  %i.fw = getelementptr i8, ptr %.023.lcssa.i55, i64 %i.fv
  %i.fx = getelementptr i8, ptr %.024.lcssa.i54, i64 %i.fv
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fy = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.023.lcssa.i55, i64 %i.fy ; 2 uses
  %next.gep154 = getelementptr i8, ptr %.024.lcssa.i54, i64 %i.fy ; 3 uses
  %i.fz = getelementptr i8, ptr %next.gep154, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep154, align 4, !tbaa !343, !alias.scope !14060
  %wide.load155 = load <4 x i32>, ptr %i.fz, align 4, !tbaa !343, !alias.scope !14060
  %i.ga = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !343, !alias.scope !14061, !noalias !14060
  store <4 x i32> %wide.load155, ptr %i.ga, align 4, !tbaa !343, !alias.scope !14061, !noalias !14060
  store <4 x i32> zeroinitializer, ptr %next.gep154, align 4, !tbaa !343, !alias.scope !14060
  store <4 x i32> zeroinitializer, ptr %i.fz, align 4, !tbaa !343, !alias.scope !14060
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.gb = icmp eq i64 %index.next, %n.vec
  br i1 %i.gb, label %middle.block, label %vector.body, !llvm.loop !14046

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fq, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7move_opEEEvT_SF_SF_SF_T0_T1_.exit67, label %.lr.ph.i.i29.i59.preheader289

.lr.ph.i.i29.i59.preheader289:                    ; preds = %vector.memcheck, %.lr.ph.i.i29.i59.preheader, %middle.block
  %.010.i.i30.i60.ph = phi ptr [ %.023.lcssa.i55, %vector.memcheck ], [ %.023.lcssa.i55, %.lr.ph.i.i29.i59.preheader ], [ %i.fw, %middle.block ]
  %.079.i.i31.i61.ph = phi ptr [ %.024.lcssa.i54, %vector.memcheck ], [ %.024.lcssa.i54, %.lr.ph.i.i29.i59.preheader ], [ %i.fx, %middle.block ]
  br label %.lr.ph.i.i29.i59

.lr.ph.i.i29.i59:                                 ; preds = %.lr.ph.i.i29.i59.preheader289, %.lr.ph.i.i29.i59
  %.010.i.i30.i60 = phi ptr [ %i.ge, %.lr.ph.i.i29.i59 ], [ %.010.i.i30.i60.ph, %.lr.ph.i.i29.i59.preheader289 ] ; 2 uses
  %.079.i.i31.i61 = phi ptr [ %i.gd, %.lr.ph.i.i29.i59 ], [ %.079.i.i31.i61.ph, %.lr.ph.i.i29.i59.preheader289 ] ; 3 uses
  %i.gc = load i32, ptr %.079.i.i31.i61, align 4, !tbaa !343
  store i32 %i.gc, ptr %.010.i.i30.i60, align 4, !tbaa !343
  store i32 0, ptr %.079.i.i31.i61, align 4, !tbaa !343
  %i.gd = getelementptr inbounds nuw i8, ptr %.079.i.i31.i61, i64 4 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.010.i.i30.i60, i64 4
  %.not.i.i32.i62 = icmp eq ptr %i.gd, %i.ei
  br i1 %.not.i.i32.i62, label %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7move_opEEEvT_SF_SF_SF_T0_T1_.exit67, label %.lr.ph.i.i29.i59, !llvm.loop !14047

bb.l:                                             ; preds = %._crit_edge
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %.04186, i64 %1
  %i.gg = sub i64 0, %.04285                      ; 4 uses
  %.not8.i.i = icmp samesign eq i64 %.039.lcssa, %1
  br i1 %.not8.i.i, label %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7move_opEEEvT_SF_SF_SF_T0_T1_.exit67, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.l
  %i.gh = getelementptr [4 x i8], ptr %.0.lcssa, i64 %i.gg ; 5 uses
  %.reass = add i64 %.04186166, %invariant.op
  %i.gi = sub i64 %.reass, %.0.lcssa152           ; 2 uses
  %i.gj = lshr i64 %i.gi, 2
  %i.gk = add nuw nsw i64 %i.gj, 1                ; 2 uses
  %min.iters.check199 = icmp ult i64 %i.gi, 44
  br i1 %min.iters.check199, label %.lr.ph.i.i.preheader292, label %vector.memcheck200

vector.memcheck200:                               ; preds = %.lr.ph.i.i.preheader
  %8 = sub i64 %.04186166, %.0.lcssa152
  %9 = add i64 %5, %8
  %i.gl = and i64 %9, -4
  %i.gm = shl i64 %.04285, 2
  %i.gn = add i64 %i.gl, 4                        ; 2 uses
  %i.go = sub i64 %i.gn, %i.gm
  %i.gp = getelementptr i8, ptr %.0.lcssa, i64 %i.go
  %i.gq = getelementptr i8, ptr %.0.lcssa, i64 %i.gn
  %bound0201 = icmp ult ptr %i.gh, %i.gq
  %bound1202 = icmp ult ptr %.0.lcssa, %i.gp
  %found.conflict203 = and i1 %bound0201, %bound1202
  br i1 %found.conflict203, label %.lr.ph.i.i.preheader292, label %vector.ph204

vector.ph204:                                     ; preds = %vector.memcheck200
  %n.vec205 = and i64 %i.gk, 9223372036854775800  ; 3 uses
  %i.gr = shl i64 %n.vec205, 2                    ; 2 uses
  %i.gs = getelementptr i8, ptr %i.gh, i64 %i.gr
  %i.gt = getelementptr i8, ptr %.0.lcssa, i64 %i.gr
  br label %vector.body206

vector.body206:                                   ; preds = %vector.body206, %vector.ph204
  %index207 = phi i64 [ 0, %vector.ph204 ], [ %index.next212, %vector.body206 ] ; 2 uses
  %i.gu = shl i64 %index207, 2                    ; 2 uses
  %next.gep208 = getelementptr i8, ptr %i.gh, i64 %i.gu ; 2 uses
  %next.gep209 = getelementptr i8, ptr %.0.lcssa, i64 %i.gu ; 3 uses
  %i.gv = getelementptr i8, ptr %next.gep209, i64 16 ; 2 uses
  %wide.load210 = load <4 x i32>, ptr %next.gep209, align 4, !tbaa !343, !alias.scope !14062
  %wide.load211 = load <4 x i32>, ptr %i.gv, align 4, !tbaa !343, !alias.scope !14062
  %i.gw = getelementptr i8, ptr %next.gep208, i64 16
  store <4 x i32> %wide.load210, ptr %next.gep208, align 4, !tbaa !343, !alias.scope !14063, !noalias !14062
  store <4 x i32> %wide.load211, ptr %i.gw, align 4, !tbaa !343, !alias.scope !14063, !noalias !14062
  store <4 x i32> zeroinitializer, ptr %next.gep209, align 4, !tbaa !343, !alias.scope !14062
  store <4 x i32> zeroinitializer, ptr %i.gv, align 4, !tbaa !343, !alias.scope !14062
  %index.next212 = add nuw i64 %index207, 8       ; 2 uses
  %i.gx = icmp eq i64 %index.next212, %n.vec205
  br i1 %i.gx, label %middle.block213, label %vector.body206, !llvm.loop !14051

middle.block213:                                  ; preds = %vector.body206
  %cmp.n214 = icmp eq i64 %i.gk, %n.vec205
  br i1 %cmp.n214, label %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7move_opEEEvT_SF_SF_SF_T0_T1_.exit67, label %.lr.ph.i.i.preheader292

.lr.ph.i.i.preheader292:                          ; preds = %vector.memcheck200, %.lr.ph.i.i.preheader, %middle.block213
  %.010.i.i.ph = phi ptr [ %i.gh, %vector.memcheck200 ], [ %i.gh, %.lr.ph.i.i.preheader ], [ %i.gs, %middle.block213 ]
  %.079.i.i.ph = phi ptr [ %.0.lcssa, %vector.memcheck200 ], [ %.0.lcssa, %.lr.ph.i.i.preheader ], [ %i.gt, %middle.block213 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader292, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.ha, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader292 ] ; 2 uses
  %.079.i.i = phi ptr [ %i.gz, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader292 ] ; 3 uses
  %i.gy = load i32, ptr %.079.i.i, align 4, !tbaa !343
  store i32 %i.gy, ptr %.010.i.i, align 4, !tbaa !343
  store i32 0, ptr %.079.i.i, align 4, !tbaa !343
  %i.gz = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  %.not.i.i = icmp eq ptr %i.gz, %i.gf
  br i1 %.not.i.i, label %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7move_opEEEvT_SF_SF_SF_T0_T1_.exit67, label %.lr.ph.i.i, !llvm.loop !14052

_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7move_opEEEvT_SF_SF_SF_T0_T1_.exit67: ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i63, %.lr.ph.i.i29.i59, %middle.block213, %middle.block183, %middle.block, %bb.l, %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit.i53
  %.pre-phi = phi i64 [ %i.eg, %middle.block183 ], [ %i.eg, %middle.block ], [ %i.eg, %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit.i53 ], [ %i.gg, %bb.l ], [ %i.gg, %middle.block213 ], [ %i.eg, %.lr.ph.i.i.i63 ], [ %i.eg, %.lr.ph.i.i29.i59 ], [ %i.gg, %.lr.ph.i.i ]
  %i.hb = getelementptr inbounds [4 x i8], ptr %.04186, i64 %.pre-phi
  %i.hc = sub nuw i64 %.04087, %.04285            ; 2 uses
  %i.hd = icmp ult i64 %i.d, %3
  %i.he = icmp uge i64 %i.hc, %i.d
  %i.hf = select i1 %i.hd, i1 %i.he, i1 false
  br i1 %i.hf, label %.preheader, label %._crit_edge88, !llvm.loop !14053

._crit_edge88:                                    ; preds = %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7move_opEEEvT_SF_SF_SF_T0_T1_.exit67, %bb.a
  %.042.lcssa = phi i64 [ %2, %bb.a ], [ %i.d, %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7move_opEEEvT_SF_SF_SF_T0_T1_.exit67 ]
  ret i64 %.042.lcssa
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost7movelib15detail_adaptive19insertion_sort_stepIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_9iter_sizeIT_E4typeESG_SI_SI_T0_(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %2, i64 16) ; 7 uses
  %i.a = icmp ugt i64 %1, %.sroa.speculated
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.idx33 = shl nuw nsw i64 %.sroa.speculated, 2
  %or.cond.i = icmp ult i64 %2, 2
  br i1 %or.cond.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_EEvT0_SE_T_.exit.us, label %.lr.ph38.i.preheader

_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_EEvT0_SE_T_.exit.us: ; preds = %.lr.ph, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_EEvT0_SE_T_.exit.us
  %.034.us = phi i64 [ %i.b, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_EEvT0_SE_T_.exit.us ], [ 0, %.lr.ph ]
  %i.b = add i64 %.034.us, %.sroa.speculated      ; 3 uses
  %i.c = sub i64 %1, %i.b
  %i.d = icmp ugt i64 %i.c, %.sroa.speculated
  br i1 %i.d, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_EEvT0_SE_T_.exit.us, label %._crit_edge, !llvm.loop !14064

.lr.ph38.i.preheader:                             ; preds = %.lr.ph, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_EEvT0_SE_T_.exit.loopexit
  %.034 = phi i64 [ %i.r, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_EEvT0_SE_T_.exit.loopexit ], [ 0, %.lr.ph ] ; 2 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.034 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx33
  %.034.i = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  br label %.lr.ph38.i

.lr.ph38.i:                                       ; preds = %.lr.ph38.i.preheader, %bb.d
  %.037.i = phi ptr [ %.0.i, %bb.d ], [ %.034.i, %.lr.ph38.i.preheader ] ; 5 uses
  %.pn36.i = phi ptr [ %.037.i, %bb.d ], [ %i.e, %.lr.ph38.i.preheader ] ; 5 uses
  %i.g = load i32, ptr %.037.i, align 4, !tbaa !343 ; 3 uses
  %i.h = load i32, ptr %.pn36.i, align 4, !tbaa !343
  %i.i = icmp slt i32 %i.g, %i.h
  br i1 %i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph38.i
  store i32 0, ptr %.037.i, align 4, !tbaa !343
  %i.j = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.l = load i32, ptr %.pn36.i, align 4, !tbaa !343
  store i32 %i.l, ptr %.037.i, align 4, !tbaa !343
  store i32 0, ptr %.pn36.i, align 4, !tbaa !343
  %.not2729.i = icmp eq ptr %.pn36.i, %i.e
  br i1 %.not2729.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.02231.i = phi ptr [ %i.m, %bb.c ], [ %.pn36.i, %bb.b ] ; 3 uses
  %i.m = getelementptr i8, ptr %.02231.i, i64 -4  ; 4 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !343  ; 2 uses
  %i.o = icmp slt i32 %i.g, %i.n
  br i1 %i.o, label %bb.c, label %.critedge.i

.critedge.i:                                      ; preds = %bb.c, %.lr.ph.i, %bb.b
  %.022.lcssa.i = phi ptr [ %i.e, %bb.b ], [ %.02231.i, %.lr.ph.i ], [ %i.e, %bb.c ]
  store i32 %i.g, ptr %.022.lcssa.i, align 4, !tbaa !343
  %i.p = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.q = add i32 %i.p, -1
  store i32 %i.q, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph.i
  store i32 %i.n, ptr %.02231.i, align 4, !tbaa !343
  store i32 0, ptr %i.m, align 4, !tbaa !343
  %.not27.i = icmp eq ptr %i.m, %i.e
  br i1 %.not27.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !247

bb.d:                                             ; preds = %.critedge.i, %.lr.ph38.i
  %.0.i = getelementptr inbounds nuw i8, ptr %.037.i, i64 4 ; 2 uses
  %.not26.i = icmp eq ptr %.0.i, %i.f
  br i1 %.not26.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_EEvT0_SE_T_.exit.loopexit, label %.lr.ph38.i, !llvm.loop !248

_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_EEvT0_SE_T_.exit.loopexit: ; preds = %bb.d
  %i.r = add i64 %.034, %.sroa.speculated         ; 3 uses
  %i.s = sub i64 %1, %i.r
  %i.t = icmp ugt i64 %i.s, %.sroa.speculated
  br i1 %i.t, label %.lr.ph38.i.preheader, label %._crit_edge, !llvm.loop !14064

._crit_edge:                                      ; preds = %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_EEvT0_SE_T_.exit.loopexit, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_EEvT0_SE_T_.exit.us, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.b, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_EEvT0_SE_T_.exit.us ], [ %i.r, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_EEvT0_SE_T_.exit.loopexit ] ; 2 uses
  %.idx = shl nuw nsw i64 %.0.lcssa, 2            ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 6 uses
  %.idx32 = shl nuw nsw i64 %1, 2                 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %.idx32
  %.not.i15 = icmp samesign eq i64 %.0.lcssa, %1
  %i.w = add nuw nsw i64 %.idx, 4
  %.not2635.i17 = icmp samesign eq i64 %i.w, %.idx32
  %or.cond.i18 = select i1 %.not.i15, i1 true, i1 %.not2635.i17
  br i1 %or.cond.i18, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_EEvT0_SE_T_.exit30, label %.lr.ph38.i19.preheader

.lr.ph38.i19.preheader:                           ; preds = %._crit_edge
  %.034.i16 = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  br label %.lr.ph38.i19

.lr.ph38.i19:                                     ; preds = %.lr.ph38.i19.preheader, %bb.g
  %.037.i20 = phi ptr [ %.0.i22, %bb.g ], [ %.034.i16, %.lr.ph38.i19.preheader ] ; 5 uses
  %.pn36.i21 = phi ptr [ %.037.i20, %bb.g ], [ %i.u, %.lr.ph38.i19.preheader ] ; 5 uses
  %i.x = load i32, ptr %.037.i20, align 4, !tbaa !343 ; 3 uses
  %i.y = load i32, ptr %.pn36.i21, align 4, !tbaa !343
  %i.z = icmp slt i32 %i.x, %i.y
  br i1 %i.z, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph38.i19
  store i32 0, ptr %.037.i20, align 4, !tbaa !343
  %i.aa = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.ab = add i32 %i.aa, 1
  store i32 %i.ab, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.ac = load i32, ptr %.pn36.i21, align 4, !tbaa !343
  store i32 %i.ac, ptr %.037.i20, align 4, !tbaa !343
  store i32 0, ptr %.pn36.i21, align 4, !tbaa !343
  %.not2729.i24 = icmp eq ptr %.pn36.i21, %i.u
  br i1 %.not2729.i24, label %.critedge.i27, label %.lr.ph.i25

.lr.ph.i25:                                       ; preds = %bb.e, %bb.f
  %.02231.i26 = phi ptr [ %i.ad, %bb.f ], [ %.pn36.i21, %bb.e ] ; 3 uses
  %i.ad = getelementptr i8, ptr %.02231.i26, i64 -4 ; 4 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !343 ; 2 uses
  %i.af = icmp slt i32 %i.x, %i.ae
  br i1 %i.af, label %bb.f, label %.critedge.i27

.critedge.i27:                                    ; preds = %bb.f, %.lr.ph.i25, %bb.e
  %.022.lcssa.i28 = phi ptr [ %i.u, %bb.e ], [ %.02231.i26, %.lr.ph.i25 ], [ %i.u, %bb.f ]
  store i32 %i.x, ptr %.022.lcssa.i28, align 4, !tbaa !343
  %i.ag = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.ah = add i32 %i.ag, -1
  store i32 %i.ah, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph.i25
  store i32 %i.ae, ptr %.02231.i26, align 4, !tbaa !343
  store i32 0, ptr %i.ad, align 4, !tbaa !343
  %.not27.i29 = icmp eq ptr %i.ad, %i.u
  br i1 %.not27.i29, label %.critedge.i27, label %.lr.ph.i25, !llvm.loop !247
end_hunk_5
