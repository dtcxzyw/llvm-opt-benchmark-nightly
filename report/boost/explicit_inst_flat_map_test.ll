Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/explicit_inst_flat_map_test?download=true
inline.NumInlined: 24578
inline.NumDeleted: 2911
loop-unroll.NumRuntimeUnrolled: 171
loop-unroll.NumUnrolled: 179
begin_hunk_0_@_ZN5boost7movelib15detail_adaptive32adaptive_sort_combine_all_blocksIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_13adaptive_xbufIS7_S8_mEEEEbT_RNS0_9iter_sizeISI_E4typeESI_SL_SL_SM_RT1_T0_:bb.a
  %or.cond143.not190 = and i1 %.not139, %i.g
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.i = load i64, ptr %i.h, align 8
  %i.j = icmp ule i64 %i.b, %i.i
  %or.cond188 = select i1 %or.cond143.not190, i1 %i.j, i1 false ; 8 uses
  br i1 %or.cond188, label %bb.b, label %.thread.thread

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !266  ; 5 uses
  %.not.i = icmp ugt i64 %i.b, %i.l
  %i.m = load ptr, ptr %6, align 8, !tbaa !267    ; 15 uses
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
  %wide.vec = load <4 x i32>, ptr %next.gep246, align 4, !tbaa !254, !alias.scope !3664
  %wide.vec249 = load <4 x i32>, ptr %next.gep247, align 4, !tbaa !254, !alias.scope !3664
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !254, !alias.scope !3665, !noalias !3664
  store <4 x i32> %wide.vec249, ptr %next.gep245, align 4, !tbaa !254, !alias.scope !3665, !noalias !3664
  store <4 x i32> zeroinitializer, ptr %next.gep246, align 4, !tbaa !254, !alias.scope !3664
  store <4 x i32> zeroinitializer, ptr %next.gep247, align 4, !tbaa !254, !alias.scope !3664
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !3643

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.q, %n.vec
  br i1 %cmp.n, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader.i, %middle.block
  %.010.i.i.ph = phi ptr [ %i.m, %vector.memcheck ], [ %i.m, %.lr.ph.i.preheader.i ], [ %i.t, %middle.block ]
  %.079.i.i.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph.i.preheader.i ], [ %i.u, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.ad, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %.079.i.i = phi ptr [ %i.ac, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader ] ; 4 uses
  %i.y = load i32, ptr %.079.i.i, align 4, !tbaa !254
  store i32 %i.y, ptr %.010.i.i, align 4, !tbaa !254
  store i32 0, ptr %.079.i.i, align 4, !tbaa !254
  %i.z = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !254
  store i32 %i.ab, ptr %i.aa, align 4, !tbaa !254
  store i32 0, ptr %i.z, align 4, !tbaa !254
  %i.ac = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %.not.i.i = icmp eq ptr %i.ac, %i.n
  br i1 %.not.i.i, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i, label %.lr.ph.i.i, !llvm.loop !3644

_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i: ; preds = %.lr.ph.i.i, %middle.block
  %.not1731.i = icmp eq i64 %i.l, %i.b
  br i1 %.not1731.i, label %.thread, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.ae = trunc i64 %i.b to i32
  %i.af = trunc i64 %i.l to i32
  %i.ag = sub i32 %i.ae, %i.af
  %i.ah = shl i32 %i.ag, 1
  %i.ai = add i32 %i.ah, %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i
  store i32 %i.ai, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  br label %.thread

bb.c:                                             ; preds = %bb.b
  %.idx28.i = shl i64 %i.l, 3                     ; 4 uses
  %i.aj = getelementptr i8, ptr %2, i64 %.idx28.i ; 3 uses
  %.not8.i18.i = icmp eq i64 %i.l, 0
  br i1 %.not8.i18.i, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit24.i, label %.lr.ph.i19.i.preheader

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
  %wide.vec272 = load <4 x i32>, ptr %next.gep270, align 4, !tbaa !254, !alias.scope !3666
  %wide.vec275 = load <4 x i32>, ptr %next.gep271, align 4, !tbaa !254, !alias.scope !3666
  store <4 x i32> %wide.vec272, ptr %next.gep268, align 4, !tbaa !254, !alias.scope !3667, !noalias !3666
  store <4 x i32> %wide.vec275, ptr %next.gep269, align 4, !tbaa !254, !alias.scope !3667, !noalias !3666
  store <4 x i32> zeroinitializer, ptr %next.gep270, align 4, !tbaa !254, !alias.scope !3666
  store <4 x i32> zeroinitializer, ptr %next.gep271, align 4, !tbaa !254, !alias.scope !3666
  %index.next280 = add nuw i64 %index267, 4       ; 2 uses
  %i.at = icmp eq i64 %index.next280, %n.vec265
  br i1 %i.at, label %middle.block281, label %vector.body266, !llvm.loop !3648

middle.block281:                                  ; preds = %vector.body266
  %cmp.n282 = icmp eq i64 %i.am, %n.vec265
  br i1 %cmp.n282, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit24.i, label %.lr.ph.i19.i.preheader435

.lr.ph.i19.i.preheader435:                        ; preds = %vector.memcheck260, %.lr.ph.i19.i.preheader, %middle.block281
  %.010.i20.i.ph = phi ptr [ %i.m, %vector.memcheck260 ], [ %i.m, %.lr.ph.i19.i.preheader ], [ %i.ap, %middle.block281 ]
  %.079.i21.i.ph = phi ptr [ %2, %vector.memcheck260 ], [ %2, %.lr.ph.i19.i.preheader ], [ %i.aq, %middle.block281 ]
  br label %.lr.ph.i19.i

.lr.ph.i19.i:                                     ; preds = %.lr.ph.i19.i.preheader435, %.lr.ph.i19.i
  %.010.i20.i = phi ptr [ %i.az, %.lr.ph.i19.i ], [ %.010.i20.i.ph, %.lr.ph.i19.i.preheader435 ] ; 3 uses
  %.079.i21.i = phi ptr [ %i.ay, %.lr.ph.i19.i ], [ %.079.i21.i.ph, %.lr.ph.i19.i.preheader435 ] ; 4 uses
  %i.au = load i32, ptr %.079.i21.i, align 4, !tbaa !254
  store i32 %i.au, ptr %.010.i20.i, align 4, !tbaa !254
  store i32 0, ptr %.079.i21.i, align 4, !tbaa !254
  %i.av = getelementptr inbounds nuw i8, ptr %.079.i21.i, i64 4 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.010.i20.i, i64 4
  %i.ax = load i32, ptr %i.av, align 4, !tbaa !254
  store i32 %i.ax, ptr %i.aw, align 4, !tbaa !254
  store i32 0, ptr %i.av, align 4, !tbaa !254
  %i.ay = getelementptr inbounds nuw i8, ptr %.079.i21.i, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.010.i20.i, i64 8 ; 2 uses
  %.not.i22.i = icmp eq ptr %i.ay, %i.aj
  br i1 %.not.i22.i, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit24.i, label %.lr.ph.i19.i, !llvm.loop !3649

_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit24.i: ; preds = %.lr.ph.i19.i, %middle.block281, %bb.c
  %.0.lcssa.i23.i = phi ptr [ %i.m, %bb.c ], [ %i.ap, %middle.block281 ], [ %i.az, %.lr.ph.i19.i ]
  %.idx29.i = shl nsw i64 %i.b, 3                 ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %2, i64 %.idx29.i
  %.not16.i.i = icmp eq i64 %.idx28.i, %.idx29.i
  br i1 %.not16.i.i, label %.thread, label %.lr.ph.i25.i

.lr.ph.i25.i:                                     ; preds = %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit24.i, %.lr.ph.i25.i
  %.018.i.i = phi ptr [ %i.bi, %.lr.ph.i25.i ], [ %.0.lcssa.i23.i, %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit24.i ] ; 3 uses
  %.01217.i.i = phi ptr [ %i.bh, %.lr.ph.i25.i ], [ %i.aj, %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit24.i ] ; 4 uses
  %i.bb = load i32, ptr %.01217.i.i, align 4, !tbaa !254
  store i32 %i.bb, ptr %.018.i.i, align 4, !tbaa !254
  store i32 0, ptr %.01217.i.i, align 4, !tbaa !254
  %i.bc = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.bd = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 4
  %i.be = getelementptr inbounds nuw i8, ptr %.01217.i.i, i64 4 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !254
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !254
  store i32 0, ptr %i.be, align 4, !tbaa !254
  %i.bg = add i32 %i.bc, 2
  store i32 %i.bg, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.bh = getelementptr inbounds nuw i8, ptr %.01217.i.i, i64 8 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 8
  %.not.i26.i = icmp eq ptr %i.bh, %i.ba
  br i1 %.not.i26.i, label %.thread, label %.lr.ph.i25.i, !llvm.loop !44

.thread:                                          ; preds = %.lr.ph.i25.i, %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit24.i, %.lr.ph.preheader.i, %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i
  store i64 %i.b, ptr %i.k, align 8, !tbaa !266
  br i1 %i.g, label %.lr.ph, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.sink.split

.thread.thread:                                   ; preds = %bb.a
  br i1 %i.g, label %.lr.ph, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.sink.split

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
  store i64 %spec.select, ptr %5, align 8, !tbaa !226
  %i.bo = sub i64 %i.f, %spec.select
  store i64 %i.bo, ptr %1, align 8, !tbaa !226
  br i1 %or.cond188, label %bb.t, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit

bb.d:                                             ; preds = %.lr.ph, %bb.s
  %.0206 = phi i64 [ %4, %.lr.ph ], [ %i.br, %bb.s ] ; 5 uses
  %.0130205 = phi i64 [ 0, %.lr.ph ], [ %i.hs, %bb.s ] ; 3 uses
  %.0131204 = phi i1 [ true, %.lr.ph ], [ %.1, %bb.s ]
  %.0132203 = phi i64 [ 0, %.lr.ph ], [ %.1.i, %bb.s ]
  %.0133202 = phi i64 [ %4, %.lr.ph ], [ %spec.select15.i, %bb.s ] ; 13 uses
  %.0134201 = phi i1 [ true, %.lr.ph ], [ %i.by, %bb.s ]
  %i.bp = load i64, ptr %5, align 8, !tbaa !226   ; 2 uses
  %i.bq = load i64, ptr %1, align 8, !tbaa !226   ; 4 uses
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
  br i1 %or.cond3, label %bb.g, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEEvT_NS0_9iter_sizeIS9_E4typeES9_b.exit

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
  br i1 %.not8.i.i146, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEEvT_NS0_9iter_sizeIS9_E4typeES9_b.exit, label %.lr.ph.i.preheader.i148

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
  %i.cl = load i32, ptr %i.cj, align 4, !tbaa !254
  store i32 %i.cl, ptr %i.ck, align 4, !tbaa !254
  store i32 0, ptr %i.cj, align 4, !tbaa !254
  %i.cm = getelementptr inbounds i8, ptr %.079.i.i151.prol, i64 -4 ; 2 uses
  %i.cn = getelementptr inbounds i8, ptr %.010.i.i150.prol, i64 -4
  %i.co = load i32, ptr %i.cm, align 4, !tbaa !254
  store i32 %i.co, ptr %i.cn, align 4, !tbaa !254
  store i32 0, ptr %i.cm, align 4, !tbaa !254
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter437
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i149.prol.loopexit, label %.lr.ph.i.i149.prol, !llvm.loop !3650

.lr.ph.i.i149.prol.loopexit:                      ; preds = %.lr.ph.i.i149.prol, %.lr.ph.i.preheader.i148
  %.010.i.i150.unr = phi ptr [ %i.ce, %.lr.ph.i.preheader.i148 ], [ %i.ck, %.lr.ph.i.i149.prol ]
  %.079.i.i151.unr = phi ptr [ %i.cf, %.lr.ph.i.preheader.i148 ], [ %i.cj, %.lr.ph.i.i149.prol ]
  %i.cp = icmp ult i64 %i.cg, 24
  br i1 %i.cp, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEEvT_NS0_9iter_sizeIS9_E4typeES9_b.exit, label %.lr.ph.i.i149

.lr.ph.i.i149:                                    ; preds = %.lr.ph.i.i149.prol.loopexit, %.lr.ph.i.i149
  %.010.i.i150 = phi ptr [ %i.dj, %.lr.ph.i.i149 ], [ %.010.i.i150.unr, %.lr.ph.i.i149.prol.loopexit ] ; 8 uses
  %.079.i.i151 = phi ptr [ %i.di, %.lr.ph.i.i149 ], [ %.079.i.i151.unr, %.lr.ph.i.i149.prol.loopexit ] ; 8 uses
  %i.cq = getelementptr inbounds i8, ptr %.079.i.i151, i64 -8 ; 2 uses
  %i.cr = getelementptr inbounds i8, ptr %.010.i.i150, i64 -8
  %i.cs = load i32, ptr %i.cq, align 4, !tbaa !254
  store i32 %i.cs, ptr %i.cr, align 4, !tbaa !254
  store i32 0, ptr %i.cq, align 4, !tbaa !254
  %i.ct = getelementptr inbounds i8, ptr %.079.i.i151, i64 -4 ; 2 uses
  %i.cu = getelementptr inbounds i8, ptr %.010.i.i150, i64 -4
  %i.cv = load i32, ptr %i.ct, align 4, !tbaa !254
  store i32 %i.cv, ptr %i.cu, align 4, !tbaa !254
  store i32 0, ptr %i.ct, align 4, !tbaa !254
  %i.cw = getelementptr inbounds i8, ptr %.079.i.i151, i64 -16 ; 2 uses
  %i.cx = getelementptr inbounds i8, ptr %.010.i.i150, i64 -16
  %i.cy = load i32, ptr %i.cw, align 4, !tbaa !254
  store i32 %i.cy, ptr %i.cx, align 4, !tbaa !254
  store i32 0, ptr %i.cw, align 4, !tbaa !254
  %i.cz = getelementptr inbounds i8, ptr %.079.i.i151, i64 -12 ; 2 uses
  %i.da = getelementptr inbounds i8, ptr %.010.i.i150, i64 -12
  %i.db = load i32, ptr %i.cz, align 4, !tbaa !254
  store i32 %i.db, ptr %i.da, align 4, !tbaa !254
  store i32 0, ptr %i.cz, align 4, !tbaa !254
  %i.dc = getelementptr inbounds i8, ptr %.079.i.i151, i64 -24 ; 2 uses
  %i.dd = getelementptr inbounds i8, ptr %.010.i.i150, i64 -24
  %i.de = load i32, ptr %i.dc, align 4, !tbaa !254
  store i32 %i.de, ptr %i.dd, align 4, !tbaa !254
  store i32 0, ptr %i.dc, align 4, !tbaa !254
  %i.df = getelementptr inbounds i8, ptr %.079.i.i151, i64 -20 ; 2 uses
  %i.dg = getelementptr inbounds i8, ptr %.010.i.i150, i64 -20
  %i.dh = load i32, ptr %i.df, align 4, !tbaa !254
  store i32 %i.dh, ptr %i.dg, align 4, !tbaa !254
  store i32 0, ptr %i.df, align 4, !tbaa !254
  %i.di = getelementptr inbounds i8, ptr %.079.i.i151, i64 -32 ; 4 uses
  %i.dj = getelementptr inbounds i8, ptr %.010.i.i150, i64 -32 ; 2 uses
  %i.dk = load i32, ptr %i.di, align 4, !tbaa !254
  store i32 %i.dk, ptr %i.dj, align 4, !tbaa !254
  store i32 0, ptr %i.di, align 4, !tbaa !254
  %i.dl = getelementptr inbounds i8, ptr %.079.i.i151, i64 -28 ; 2 uses
  %i.dm = getelementptr inbounds i8, ptr %.010.i.i150, i64 -28
  %i.dn = load i32, ptr %i.dl, align 4, !tbaa !254
  store i32 %i.dn, ptr %i.dm, align 4, !tbaa !254
  store i32 0, ptr %i.dl, align 4, !tbaa !254
  %.not.i.i152.3 = icmp eq ptr %i.cd, %i.di
  br i1 %.not.i.i152.3, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEEvT_NS0_9iter_sizeIS9_E4typeES9_b.exit, label %.lr.ph.i.i149, !llvm.loop !45

bb.j:                                             ; preds = %bb.h
  br i1 %.not8.i.i146, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEEvT_NS0_9iter_sizeIS9_E4typeES9_b.exit, label %.lr.ph.i10.preheader.i

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
  %i.du = load i32, ptr %i.ds, align 4, !tbaa !254
  store i32 0, ptr %i.ds, align 4, !tbaa !254
  %i.dv = load i32, ptr %i.dt, align 4, !tbaa !254
  store i32 %i.dv, ptr %i.ds, align 4, !tbaa !254
  store i32 %i.du, ptr %i.dt, align 4, !tbaa !254
  %i.dw = getelementptr inbounds i8, ptr %i.dp, i64 -4 ; 3 uses
  %i.dx = getelementptr inbounds i8, ptr %i.do, i64 -4 ; 2 uses
  %i.dy = load i32, ptr %i.dw, align 4, !tbaa !254
  store i32 0, ptr %i.dw, align 4, !tbaa !254
  %i.dz = load i32, ptr %i.dx, align 4, !tbaa !254
  store i32 %i.dz, ptr %i.dw, align 4, !tbaa !254
  store i32 %i.dy, ptr %i.dx, align 4, !tbaa !254
  br label %.lr.ph.i10.i.prol.loopexit

.lr.ph.i10.i.prol.loopexit:                       ; preds = %.lr.ph.i10.i.prol, %.lr.ph.i10.preheader.i
  %.08.i.i.unr = phi ptr [ %i.do, %.lr.ph.i10.preheader.i ], [ %i.dt, %.lr.ph.i10.i.prol ]
  %.057.i.i.unr = phi ptr [ %i.dp, %.lr.ph.i10.preheader.i ], [ %i.ds, %.lr.ph.i10.i.prol ]
  %i.ea = icmp eq i64 %i.dq, 0
  br i1 %i.ea, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEEvT_NS0_9iter_sizeIS9_E4typeES9_b.exit, label %.lr.ph.i10.i

.lr.ph.i10.i:                                     ; preds = %.lr.ph.i10.i.prol.loopexit, %.lr.ph.i10.i
  %.08.i.i = phi ptr [ %i.ek, %.lr.ph.i10.i ], [ %.08.i.i.unr, %.lr.ph.i10.i.prol.loopexit ] ; 4 uses
  %.057.i.i = phi ptr [ %i.ej, %.lr.ph.i10.i ], [ %.057.i.i.unr, %.lr.ph.i10.i.prol.loopexit ] ; 4 uses
  %i.eb = getelementptr inbounds i8, ptr %.057.i.i, i64 -8 ; 3 uses
  %i.ec = getelementptr inbounds i8, ptr %.08.i.i, i64 -8 ; 2 uses
  %i.ed = load i32, ptr %i.eb, align 4, !tbaa !254
  store i32 0, ptr %i.eb, align 4, !tbaa !254
  %i.ee = load i32, ptr %i.ec, align 4, !tbaa !254
  store i32 %i.ee, ptr %i.eb, align 4, !tbaa !254
  store i32 %i.ed, ptr %i.ec, align 4, !tbaa !254
  %i.ef = getelementptr inbounds i8, ptr %.057.i.i, i64 -4 ; 3 uses
  %i.eg = getelementptr inbounds i8, ptr %.08.i.i, i64 -4 ; 2 uses
  %i.eh = load i32, ptr %i.ef, align 4, !tbaa !254
  store i32 0, ptr %i.ef, align 4, !tbaa !254
  %i.ei = load i32, ptr %i.eg, align 4, !tbaa !254
  store i32 %i.ei, ptr %i.ef, align 4, !tbaa !254
  store i32 %i.eh, ptr %i.eg, align 4, !tbaa !254
  %i.ej = getelementptr inbounds i8, ptr %.057.i.i, i64 -16 ; 5 uses
  %i.ek = getelementptr inbounds i8, ptr %.08.i.i, i64 -16 ; 3 uses
  %i.el = load i32, ptr %i.ej, align 4, !tbaa !254
  store i32 0, ptr %i.ej, align 4, !tbaa !254
  %i.em = load i32, ptr %i.ek, align 4, !tbaa !254
  store i32 %i.em, ptr %i.ej, align 4, !tbaa !254
  store i32 %i.el, ptr %i.ek, align 4, !tbaa !254
  %i.en = getelementptr inbounds i8, ptr %.057.i.i, i64 -12 ; 3 uses
  %i.eo = getelementptr inbounds i8, ptr %.08.i.i, i64 -12 ; 2 uses
  %i.ep = load i32, ptr %i.en, align 4, !tbaa !254
  store i32 0, ptr %i.en, align 4, !tbaa !254
  %i.eq = load i32, ptr %i.eo, align 4, !tbaa !254
  store i32 %i.eq, ptr %i.en, align 4, !tbaa !254
  store i32 %i.ep, ptr %i.eo, align 4, !tbaa !254
  %.not.i11.i.1 = icmp eq ptr %i.cd, %i.ej
  br i1 %.not.i11.i.1, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEEvT_NS0_9iter_sizeIS9_E4typeES9_b.exit, label %.lr.ph.i10.i, !llvm.loop !46

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
  %i.fb = load i32, ptr %i.ez, align 4, !tbaa !254
  store i32 %i.fb, ptr %i.fa, align 4, !tbaa !254
  store i32 0, ptr %i.ez, align 4, !tbaa !254
  %i.fc = getelementptr inbounds i8, ptr %.079.i.i164, i64 -4 ; 2 uses
  %i.fd = getelementptr inbounds i8, ptr %.010.i.i163, i64 -4
  %i.fe = load i32, ptr %i.fc, align 4, !tbaa !254
  store i32 %i.fe, ptr %i.fd, align 4, !tbaa !254
  store i32 0, ptr %i.fc, align 4, !tbaa !254
  %.not.i.i165 = icmp eq ptr %i.ex, %i.ez
  br i1 %.not.i.i165, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEEvT_NS0_9iter_sizeIS9_E4typeES9_b.exit, label %.lr.ph.i.i162, !llvm.loop !45

.lr.ph.i10.i156:                                  ; preds = %bb.l, %.lr.ph.i10.i156
  %.08.i.i157 = phi ptr [ %i.fg, %.lr.ph.i10.i156 ], [ %i.er, %bb.l ] ; 2 uses
  %.057.i.i158 = phi ptr [ %i.ff, %.lr.ph.i10.i156 ], [ %i.ey, %bb.l ] ; 2 uses
  %i.ff = getelementptr inbounds i8, ptr %.057.i.i158, i64 -8 ; 5 uses
  %i.fg = getelementptr inbounds i8, ptr %.08.i.i157, i64 -8 ; 3 uses
  %i.fh = load i32, ptr %i.ff, align 4, !tbaa !254
  store i32 0, ptr %i.ff, align 4, !tbaa !254
  %i.fi = load i32, ptr %i.fg, align 4, !tbaa !254
  store i32 %i.fi, ptr %i.ff, align 4, !tbaa !254
  store i32 %i.fh, ptr %i.fg, align 4, !tbaa !254
  %i.fj = getelementptr inbounds i8, ptr %.057.i.i158, i64 -4 ; 3 uses
  %i.fk = getelementptr inbounds i8, ptr %.08.i.i157, i64 -4 ; 2 uses
  %i.fl = load i32, ptr %i.fj, align 4, !tbaa !254
  store i32 0, ptr %i.fj, align 4, !tbaa !254
  %i.fm = load i32, ptr %i.fk, align 4, !tbaa !254
  store i32 %i.fm, ptr %i.fj, align 4, !tbaa !254
  store i32 %i.fl, ptr %i.fk, align 4, !tbaa !254
  %.not.i11.i159 = icmp eq ptr %i.ex, %i.ff
  br i1 %.not.i11.i159, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEEvT_NS0_9iter_sizeIS9_E4typeES9_b.exit, label %.lr.ph.i10.i156, !llvm.loop !46

bb.m:                                             ; preds = %bb.k
  %i.fn = icmp ult i64 %.0133202, %spec.select15.i
  br i1 %i.fn, label %bb.n, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEEvT_NS0_9iter_sizeIS9_E4typeES9_b.exit

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
  %wide.vec350 = load <4 x i32>, ptr %next.gep348, align 4, !tbaa !254
  %wide.vec353 = load <4 x i32>, ptr %next.gep349, align 4, !tbaa !254
  store <4 x i32> %wide.vec350, ptr %next.gep346, align 4, !tbaa !254
  store <4 x i32> %wide.vec353, ptr %next.gep347, align 4, !tbaa !254
  store <4 x i32> zeroinitializer, ptr %next.gep348, align 4, !tbaa !254
  store <4 x i32> zeroinitializer, ptr %next.gep349, align 4, !tbaa !254
  %index.next358 = add nuw i64 %index345, 4       ; 2 uses
  %i.go = icmp eq i64 %index.next358, %n.vec343
  br i1 %i.go, label %middle.block359, label %vector.body344, !llvm.loop !3651

middle.block359:                                  ; preds = %vector.body344
  %cmp.n360 = icmp eq i64 %i.fv, %n.vec343
  br i1 %cmp.n360, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEEvT_NS0_9iter_sizeIS9_E4typeES9_b.exit, label %.lr.ph.i.i169.preheader430

.lr.ph.i.i169.preheader430:                       ; preds = %vector.memcheck319, %.lr.ph.i.i169.preheader, %middle.block359
  %.010.i.i170.ph = phi ptr [ %i.et, %vector.memcheck319 ], [ %i.et, %.lr.ph.i.i169.preheader ], [ %i.gk, %middle.block359 ]
  %.079.i.i171.ph = phi ptr [ %i.er, %vector.memcheck319 ], [ %i.er, %.lr.ph.i.i169.preheader ], [ %i.gl, %middle.block359 ]
  br label %.lr.ph.i.i169

.lr.ph.i.i169:                                    ; preds = %.lr.ph.i.i169.preheader430, %.lr.ph.i.i169
  %.010.i.i170 = phi ptr [ %i.gu, %.lr.ph.i.i169 ], [ %.010.i.i170.ph, %.lr.ph.i.i169.preheader430 ] ; 3 uses
  %.079.i.i171 = phi ptr [ %i.gt, %.lr.ph.i.i169 ], [ %.079.i.i171.ph, %.lr.ph.i.i169.preheader430 ] ; 4 uses
  %i.gp = load i32, ptr %.079.i.i171, align 4, !tbaa !254
  store i32 %i.gp, ptr %.010.i.i170, align 4, !tbaa !254
  store i32 0, ptr %.079.i.i171, align 4, !tbaa !254
  %i.gq = getelementptr inbounds nuw i8, ptr %.079.i.i171, i64 4 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.010.i.i170, i64 4
  %i.gs = load i32, ptr %i.gq, align 4, !tbaa !254
  store i32 %i.gs, ptr %i.gr, align 4, !tbaa !254
  store i32 0, ptr %i.gq, align 4, !tbaa !254
  %i.gt = getelementptr inbounds nuw i8, ptr %.079.i.i171, i64 8 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.010.i.i170, i64 8
  %.not.i.i172 = icmp eq ptr %i.gt, %i.fp
  br i1 %.not.i.i172, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEEvT_NS0_9iter_sizeIS9_E4typeES9_b.exit, label %.lr.ph.i.i169, !llvm.loop !3652

.lr.ph.i9.i:                                      ; preds = %bb.n, %.lr.ph.i9.i
  %.010.i10.i = phi ptr [ %i.hc, %.lr.ph.i9.i ], [ %i.et, %bb.n ] ; 4 uses
  %.079.i11.i = phi ptr [ %i.hb, %.lr.ph.i9.i ], [ %i.er, %bb.n ] ; 5 uses
  %i.gv = load i32, ptr %.079.i11.i, align 4, !tbaa !254
  store i32 0, ptr %.079.i11.i, align 4, !tbaa !254
  %i.gw = load i32, ptr %.010.i10.i, align 4, !tbaa !254
  store i32 %i.gw, ptr %.079.i11.i, align 4, !tbaa !254
  store i32 %i.gv, ptr %.010.i10.i, align 4, !tbaa !254
  %i.gx = getelementptr inbounds nuw i8, ptr %.079.i11.i, i64 4 ; 3 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.010.i10.i, i64 4 ; 2 uses
  %i.gz = load i32, ptr %i.gx, align 4, !tbaa !254
  store i32 0, ptr %i.gx, align 4, !tbaa !254
  %i.ha = load i32, ptr %i.gy, align 4, !tbaa !254
  store i32 %i.ha, ptr %i.gx, align 4, !tbaa !254
  store i32 %i.gz, ptr %i.gy, align 4, !tbaa !254
  %i.hb = getelementptr inbounds nuw i8, ptr %.079.i11.i, i64 8 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.010.i10.i, i64 8
  %.not.i12.i = icmp eq ptr %i.hb, %i.fp
  br i1 %.not.i12.i, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEEvT_NS0_9iter_sizeIS9_E4typeES9_b.exit, label %.lr.ph.i9.i, !llvm.loop !47

_ZN5boost7movelib15detail_adaptive18move_data_backwardIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEEvT_NS0_9iter_sizeIS9_E4typeES9_b.exit: ; preds = %.lr.ph.i10.i.prol.loopexit, %.lr.ph.i10.i, %.lr.ph.i.i149.prol.loopexit, %.lr.ph.i.i149, %.lr.ph.i9.i, %.lr.ph.i.i169, %.lr.ph.i10.i156, %.lr.ph.i.i162, %middle.block359, %bb.j, %bb.i, %bb.m, %_ZN5boost7movelib15detail_adaptive18lblock_for_combineImEET_S3_S3_S3_Rb.exit
  %.not140 = icmp eq i64 %i.bq, 0
  br i1 %.not140, label %bb.r, label %bb.o

bb.o:                                             ; preds = %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEEvT_NS0_9iter_sizeIS9_E4typeES9_b.exit
  %i.hd = udiv i64 %i.br, %.1.i
  %i.he = icmp ugt i64 %i.hd, 256
  br i1 %i.he, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %.not6 = xor i1 %.1, true
  %or.cond8 = select i1 %.not6, i1 true, i1 %i.by
  %i.hf = sub i64 0, %.1.i
  %.idx142 = select i1 %or.cond8, i64 0, i64 %i.hf
  %i.hg = getelementptr inbounds [8 x i8], ptr %i.c, i64 %.idx142
  call void @_ZN5boost7movelib15detail_adaptive28adaptive_sort_combine_blocksIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEES8_SF_NS0_13adaptive_xbufIS7_S8_mEEEEvT_T0_T1_NS0_9iter_sizeISK_E4typeESN_SN_bbRT3_T2_b(ptr noundef %0, ptr noundef %i.hg, i64 noundef %i.d, i64 noundef %.0206, i64 noundef %.1.i, i1 noundef zeroext %.1, i1 noundef zeroext %or.cond188, ptr noundef nonnull align 8 dereferenceable(24) %6, i1 noundef zeroext %i.by)
  br label %bb.s

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %.not9 = xor i1 %.1, true
  %or.cond11 = select i1 %.not9, i1 true, i1 %i.by
  %i.hh = sub i64 0, %.1.i
  %.idx141 = select i1 %or.cond11, i64 0, i64 %i.hh
  %i.hi = getelementptr inbounds [8 x i8], ptr %i.c, i64 %.idx141
  call void @_ZN5boost7movelib15detail_adaptive28adaptive_sort_combine_blocksIPhNS1_4lessEPSt4pairINS_9container4test24movable_and_copyable_intES8_ENS6_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSB_9select1stIS8_EEEENS0_13adaptive_xbufIS9_SA_mEEEEvT_T0_T1_NS0_9iter_sizeISM_E4typeESP_SP_bbRT3_T2_b(ptr noundef nonnull %i.a, ptr noundef %i.hi, i64 noundef %i.d, i64 noundef %.0206, i64 noundef %.1.i, i1 noundef zeroext %.1, i1 noundef zeroext %or.cond188, ptr noundef nonnull align 8 dereferenceable(24) %6, i1 noundef zeroext %i.by)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.s

bb.r:                                             ; preds = %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEEvT_NS0_9iter_sizeIS9_E4typeES9_b.exit
  %i.hj = load i64, ptr %i.bj, align 8, !tbaa !266
  %i.hk = load ptr, ptr %6, align 8, !tbaa !267
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
  call void @_ZN5boost7movelib15detail_adaptive28adaptive_sort_combine_blocksIPmNS1_4lessEPSt4pairINS_9container4test24movable_and_copyable_intES8_ENS6_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSB_9select1stIS8_EEEENS0_13adaptive_xbufIS9_SA_mEEEEvT_T0_T1_NS0_9iter_sizeISM_E4typeESP_SP_bbRT3_T2_b(ptr noundef %i.hp, ptr noundef %i.hr, i64 noundef %i.d, i64 noundef %.0206, i64 noundef %.1.i, i1 noundef zeroext %.1, i1 noundef zeroext %or.cond188, ptr noundef nonnull align 8 dereferenceable(24) %6, i1 noundef zeroext %i.by)
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.q, %bb.r
  %i.hs = add i64 %.0130205, 1
  %i.ht = icmp ugt i64 %i.d, %i.br
  br i1 %i.ht, label %bb.d, label %._crit_edge, !llvm.loop !3653

bb.t:                                             ; preds = %._crit_edge
  %i.hu = load ptr, ptr %6, align 8, !tbaa !267   ; 13 uses
  %i.hv = load i64, ptr %5, align 8, !tbaa !226   ; 3 uses
  %.idx192 = shl i64 %i.hv, 3                     ; 4 uses
  %i.hw = getelementptr i8, ptr %i.hu, i64 %.idx192 ; 4 uses
  %.not8.i = icmp eq i64 %i.hv, 0                 ; 2 uses
  br i1 %i.bn, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  br i1 %.not8.i, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit, label %.lr.ph.i.preheader

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
  %wide.vec412 = load <4 x i32>, ptr %next.gep410, align 4, !tbaa !254, !alias.scope !3668
  %wide.vec415 = load <4 x i32>, ptr %next.gep411, align 4, !tbaa !254, !alias.scope !3668
  store <4 x i32> %wide.vec412, ptr %next.gep408, align 4, !tbaa !254, !alias.scope !3669, !noalias !3668
  store <4 x i32> %wide.vec415, ptr %next.gep409, align 4, !tbaa !254, !alias.scope !3669, !noalias !3668
  store <4 x i32> zeroinitializer, ptr %next.gep410, align 4, !tbaa !254, !alias.scope !3668
  store <4 x i32> zeroinitializer, ptr %next.gep411, align 4, !tbaa !254, !alias.scope !3668
  %index.next420 = add nuw i64 %index407, 4       ; 2 uses
  %i.ij = icmp eq i64 %index.next420, %n.vec405
  br i1 %i.ij, label %middle.block421, label %vector.body406, !llvm.loop !3657

middle.block421:                                  ; preds = %vector.body406
end_hunk_0
begin_hunk_1_@_ZN5boost7movelib15detail_adaptive27op_insertion_sort_step_leftIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEENS0_9iter_sizeIT_E4typeESI_SK_SK_T0_T1_:bb.a
  br i1 %i.a, label %.lr.ph, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.pre = sub nsw i64 0, %.sroa.speculated
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.idx37 = shl nuw nsw i64 %.sroa.speculated, 3
  %i.b = sub nsw i64 0, %.sroa.speculated         ; 5 uses
  switch i64 %2, label %.lr.ph43.i.preheader [
    i64 0, label %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_SE_NS0_7move_opEEEvT0_SG_T1_T_T2_.exit.us
    i64 1, label %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_SE_NS0_7move_opEEEvT0_SG_T1_T_T2_.exit.us40
  ]

_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_SE_NS0_7move_opEEEvT0_SG_T1_T_T2_.exit.us: ; preds = %.lr.ph, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_SE_NS0_7move_opEEEvT0_SG_T1_T_T2_.exit.us
  %.038.us = phi i64 [ %i.c, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_SE_NS0_7move_opEEEvT0_SG_T1_T_T2_.exit.us ], [ %2, %.lr.ph ]
  %i.c = add i64 %.038.us, %.sroa.speculated      ; 3 uses
  %i.d = sub i64 %1, %i.c
  %i.e = icmp ugt i64 %i.d, %.sroa.speculated
  br i1 %i.e, label %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_SE_NS0_7move_opEEEvT0_SG_T1_T_T2_.exit.us, label %._crit_edge, !llvm.loop !3716

_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_SE_NS0_7move_opEEEvT0_SG_T1_T_T2_.exit.us40: ; preds = %.lr.ph, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_SE_NS0_7move_opEEEvT0_SG_T1_T_T2_.exit.us40
  %.038.us39 = phi i64 [ %i.j, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_SE_NS0_7move_opEEEvT0_SG_T1_T_T2_.exit.us40 ], [ 0, %.lr.ph ] ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.038.us39 ; 4 uses
  %i.g = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.i = load <2 x i32>, ptr %i.f, align 4, !tbaa !254
  store <2 x i32> %i.i, ptr %i.g, align 4, !tbaa !254
  store i32 0, ptr %i.f, align 4, !tbaa !254
  store i32 0, ptr %i.h, align 4, !tbaa !254
  %i.j = add i64 %.038.us39, %.sroa.speculated    ; 3 uses
  %i.k = sub i64 %1, %i.j
  %i.l = icmp ugt i64 %i.k, %.sroa.speculated
  br i1 %i.l, label %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_SE_NS0_7move_opEEEvT0_SG_T1_T_T2_.exit.us40, label %._crit_edge, !llvm.loop !3716

.lr.ph43.i.preheader:                             ; preds = %.lr.ph, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_SE_NS0_7move_opEEEvT0_SG_T1_T_T2_.exit.loopexit
  %.038 = phi i64 [ %i.al, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_SE_NS0_7move_opEEEvT0_SG_T1_T_T2_.exit.loopexit ], [ 0, %.lr.ph ] ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.038 ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx37
  %i.o = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.b ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.q = load <2 x i32>, ptr %i.m, align 4, !tbaa !254
  store <2 x i32> %i.q, ptr %i.o, align 4, !tbaa !254
  store i32 0, ptr %i.m, align 4, !tbaa !254
  store i32 0, ptr %i.p, align 4, !tbaa !254
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  br label %.lr.ph43.i

.lr.ph43.i:                                       ; preds = %.lr.ph43.i.preheader, %.critedge.i
  %i.s = phi ptr [ %i.ak, %.critedge.i ], [ %i.r, %.lr.ph43.i.preheader ] ; 6 uses
  %.pn41.i = phi ptr [ %.02642.i, %.critedge.i ], [ %i.o, %.lr.ph43.i.preheader ] ; 7 uses
  %.02740.i = phi ptr [ %i.s, %.critedge.i ], [ %i.m, %.lr.ph43.i.preheader ]
  %.02642.i = getelementptr inbounds nuw i8, ptr %.pn41.i, i64 8 ; 3 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !254
  %i.u = load i32, ptr %.pn41.i, align 4, !tbaa !254 ; 2 uses
  %i.v = icmp slt i32 %i.t, %i.u
  br i1 %i.v, label %bb.b, label %.critedge.i

bb.b:                                             ; preds = %.lr.ph43.i
  store i32 %i.u, ptr %.02642.i, align 4, !tbaa !254
  store i32 0, ptr %.pn41.i, align 4, !tbaa !254
  %i.w = getelementptr inbounds nuw i8, ptr %.pn41.i, i64 4 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.pn41.i, i64 12
  %i.y = load i32, ptr %i.w, align 4, !tbaa !254
  store i32 %i.y, ptr %i.x, align 4, !tbaa !254
  store i32 0, ptr %i.w, align 4, !tbaa !254
  %.not3233.i = icmp eq ptr %.pn41.i, %i.o
  br i1 %.not3233.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.035.i = phi ptr [ %i.z, %bb.c ], [ %.pn41.i, %bb.b ] ; 5 uses
  %i.z = getelementptr i8, ptr %.035.i, i64 -8    ; 4 uses
  %i.aa = load i32, ptr %i.s, align 4, !tbaa !254
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !254 ; 2 uses
  %i.ac = icmp slt i32 %i.aa, %i.ab
  br i1 %i.ac, label %bb.c, label %.critedge.i

bb.c:                                             ; preds = %.lr.ph.i
  store i32 %i.ab, ptr %.035.i, align 4, !tbaa !254
  store i32 0, ptr %i.z, align 4, !tbaa !254
  %i.ad = getelementptr inbounds i8, ptr %.035.i, i64 -4 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.035.i, i64 4
  %i.af = load i32, ptr %i.ad, align 4, !tbaa !254
  store i32 %i.af, ptr %i.ae, align 4, !tbaa !254
  store i32 0, ptr %i.ad, align 4, !tbaa !254
  %.not32.i = icmp eq ptr %i.z, %i.o
  br i1 %.not32.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !48

.critedge.i:                                      ; preds = %bb.c, %.lr.ph.i, %bb.b, %.lr.ph43.i
  %.1.i = phi ptr [ %.02642.i, %.lr.ph43.i ], [ %i.o, %bb.b ], [ %.035.i, %.lr.ph.i ], [ %i.o, %bb.c ] ; 2 uses
  %i.ag = load i32, ptr %i.s, align 4, !tbaa !254
  store i32 %i.ag, ptr %.1.i, align 4, !tbaa !254
  store i32 0, ptr %i.s, align 4, !tbaa !254
  %i.ah = getelementptr inbounds nuw i8, ptr %.02740.i, i64 12 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.1.i, i64 4
  %i.aj = load i32, ptr %i.ah, align 4, !tbaa !254
  store i32 %i.aj, ptr %i.ai, align 4, !tbaa !254
  store i32 0, ptr %i.ah, align 4, !tbaa !254
  %i.ak = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %.not31.i = icmp eq ptr %i.ak, %i.n
  br i1 %.not31.i, label %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_SE_NS0_7move_opEEEvT0_SG_T1_T_T2_.exit.loopexit, label %.lr.ph43.i, !llvm.loop !49

_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_SE_NS0_7move_opEEEvT0_SG_T1_T_T2_.exit.loopexit: ; preds = %.critedge.i
  %i.al = add i64 %.038, %.sroa.speculated        ; 3 uses
  %i.am = sub i64 %1, %i.al
  %i.an = icmp ugt i64 %i.am, %.sroa.speculated
  br i1 %i.an, label %.lr.ph43.i.preheader, label %._crit_edge, !llvm.loop !3716

._crit_edge:                                      ; preds = %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_SE_NS0_7move_opEEEvT0_SG_T1_T_T2_.exit.us40, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_SE_NS0_7move_opEEEvT0_SG_T1_T_T2_.exit.us, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_SE_NS0_7move_opEEEvT0_SG_T1_T_T2_.exit.loopexit, %.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.._crit_edge_crit_edge ], [ %i.b, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_SE_NS0_7move_opEEEvT0_SG_T1_T_T2_.exit.us ], [ %i.b, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_SE_NS0_7move_opEEEvT0_SG_T1_T_T2_.exit.loopexit ], [ %i.b, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_SE_NS0_7move_opEEEvT0_SG_T1_T_T2_.exit.us40 ]
  %.0.lcssa = phi i64 [ 0, %.._crit_edge_crit_edge ], [ %i.c, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_SE_NS0_7move_opEEEvT0_SG_T1_T_T2_.exit.us ], [ %i.al, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_SE_NS0_7move_opEEEvT0_SG_T1_T_T2_.exit.loopexit ], [ %i.j, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_SE_NS0_7move_opEEEvT0_SG_T1_T_T2_.exit.us40 ] ; 2 uses
  %.idx = shl nuw nsw i64 %.0.lcssa, 3            ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 6 uses
  %.idx36 = shl nuw nsw i64 %1, 3                 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %.idx36
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %.pre-phi ; 6 uses
  %.not.i21 = icmp samesign eq i64 %.0.lcssa, %1
  br i1 %.not.i21, label %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_SE_NS0_7move_opEEEvT0_SG_T1_T_T2_.exit34, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.as = load <2 x i32>, ptr %i.ao, align 4, !tbaa !254
  store <2 x i32> %i.as, ptr %i.aq, align 4, !tbaa !254
  store i32 0, ptr %i.ao, align 4, !tbaa !254
  store i32 0, ptr %i.ar, align 4, !tbaa !254
  %i.at = add nuw nsw i64 %.idx, 8
  %.not3139.i22 = icmp samesign eq i64 %i.at, %.idx36
  br i1 %.not3139.i22, label %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_SE_NS0_7move_opEEEvT0_SG_T1_T_T2_.exit34, label %.lr.ph43.i23.preheader

.lr.ph43.i23.preheader:                           ; preds = %bb.d
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  br label %.lr.ph43.i23

.lr.ph43.i23:                                     ; preds = %.lr.ph43.i23.preheader, %.critedge.i27
  %i.av = phi ptr [ %i.bn, %.critedge.i27 ], [ %i.au, %.lr.ph43.i23.preheader ] ; 6 uses
  %.pn41.i24 = phi ptr [ %.02642.i26, %.critedge.i27 ], [ %i.aq, %.lr.ph43.i23.preheader ] ; 7 uses
  %.02740.i25 = phi ptr [ %i.av, %.critedge.i27 ], [ %i.ao, %.lr.ph43.i23.preheader ]
  %.02642.i26 = getelementptr inbounds nuw i8, ptr %.pn41.i24, i64 8 ; 3 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !254
  %i.ax = load i32, ptr %.pn41.i24, align 4, !tbaa !254 ; 2 uses
  %i.ay = icmp slt i32 %i.aw, %i.ax
  br i1 %i.ay, label %bb.e, label %.critedge.i27

bb.e:                                             ; preds = %.lr.ph43.i23
  store i32 %i.ax, ptr %.02642.i26, align 4, !tbaa !254
  store i32 0, ptr %.pn41.i24, align 4, !tbaa !254
  %i.az = getelementptr inbounds nuw i8, ptr %.pn41.i24, i64 4 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.pn41.i24, i64 12
  %i.bb = load i32, ptr %i.az, align 4, !tbaa !254
  store i32 %i.bb, ptr %i.ba, align 4, !tbaa !254
  store i32 0, ptr %i.az, align 4, !tbaa !254
  %.not3233.i30 = icmp eq ptr %.pn41.i24, %i.aq
  br i1 %.not3233.i30, label %.critedge.i27, label %.lr.ph.i31

.lr.ph.i31:                                       ; preds = %bb.e, %bb.f
  %.035.i32 = phi ptr [ %i.bc, %bb.f ], [ %.pn41.i24, %bb.e ] ; 5 uses
  %i.bc = getelementptr i8, ptr %.035.i32, i64 -8 ; 4 uses
  %i.bd = load i32, ptr %i.av, align 4, !tbaa !254
  %i.be = load i32, ptr %i.bc, align 4, !tbaa !254 ; 2 uses
  %i.bf = icmp slt i32 %i.bd, %i.be
  br i1 %i.bf, label %bb.f, label %.critedge.i27

bb.f:                                             ; preds = %.lr.ph.i31
  store i32 %i.be, ptr %.035.i32, align 4, !tbaa !254
  store i32 0, ptr %i.bc, align 4, !tbaa !254
  %i.bg = getelementptr inbounds i8, ptr %.035.i32, i64 -4 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.035.i32, i64 4
  %i.bi = load i32, ptr %i.bg, align 4, !tbaa !254
  store i32 %i.bi, ptr %i.bh, align 4, !tbaa !254
  store i32 0, ptr %i.bg, align 4, !tbaa !254
  %.not32.i33 = icmp eq ptr %i.bc, %i.aq
  br i1 %.not32.i33, label %.critedge.i27, label %.lr.ph.i31, !llvm.loop !48

.critedge.i27:                                    ; preds = %bb.f, %.lr.ph.i31, %bb.e, %.lr.ph43.i23
  %.1.i28 = phi ptr [ %.02642.i26, %.lr.ph43.i23 ], [ %i.aq, %bb.e ], [ %.035.i32, %.lr.ph.i31 ], [ %i.aq, %bb.f ] ; 2 uses
  %i.bj = load i32, ptr %i.av, align 4, !tbaa !254
  store i32 %i.bj, ptr %.1.i28, align 4, !tbaa !254
  store i32 0, ptr %i.av, align 4, !tbaa !254
  %i.bk = getelementptr inbounds nuw i8, ptr %.02740.i25, i64 12 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.1.i28, i64 4
  %i.bm = load i32, ptr %i.bk, align 4, !tbaa !254
  store i32 %i.bm, ptr %i.bl, align 4, !tbaa !254
  store i32 0, ptr %i.bk, align 4, !tbaa !254
  %i.bn = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 2 uses
  %.not31.i29 = icmp eq ptr %i.bn, %i.ap
  br i1 %.not31.i29, label %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_SE_NS0_7move_opEEEvT0_SG_T1_T_T2_.exit34, label %.lr.ph43.i23, !llvm.loop !49

_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_SE_NS0_7move_opEEEvT0_SG_T1_T_T2_.exit34: ; preds = %.critedge.i27, %._crit_edge, %bb.d
  ret i64 %.sroa.speculated
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost7movelib15detail_adaptive27op_merge_left_step_multipleIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEENS0_9iter_sizeIT_E4typeESI_SK_SK_SK_SK_T0_T1_(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #4 comdat {
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

.preheader:                                       ; preds = %.preheader.lr.ph, %_ZN5boost7movelib13op_merge_leftIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEENS0_7move_opEEEvT_SG_SG_SG_T0_T1_.exit67
  %.04087 = phi i64 [ %4, %.preheader.lr.ph ], [ %i.jc, %_ZN5boost7movelib13op_merge_leftIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEENS0_7move_opEEEvT_SG_SG_SG_T0_T1_.exit67 ]
  %.04186 = phi ptr [ %0, %.preheader.lr.ph ], [ %i.jb, %_ZN5boost7movelib13op_merge_leftIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEENS0_7move_opEEEvT_SG_SG_SG_T0_T1_.exit67 ] ; 10 uses
  %.04285 = phi i64 [ %2, %.preheader.lr.ph ], [ %i.d, %_ZN5boost7movelib13op_merge_leftIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEENS0_7move_opEEEvT_SG_SG_SG_T0_T1_.exit67 ] ; 15 uses
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

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib13op_merge_leftIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEENS0_7move_opEEEvT_SG_SG_SG_T0_T1_.exit
  %indvar404 = phi i64 [ 0, %.lr.ph ], [ %indvar.next405, %_ZN5boost7movelib13op_merge_leftIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEENS0_7move_opEEEvT_SG_SG_SG_T0_T1_.exit ] ; 5 uses
  %.080 = phi ptr [ %.04186, %.lr.ph ], [ %.0, %_ZN5boost7movelib13op_merge_leftIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEENS0_7move_opEEEvT_SG_SG_SG_T0_T1_.exit ] ; 5 uses
  %.03979 = phi i64 [ 0, %.lr.ph ], [ %i.ey, %_ZN5boost7movelib13op_merge_leftIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEENS0_7move_opEEEvT_SG_SG_SG_T0_T1_.exit ]
  %i.s = getelementptr [8 x i8], ptr %.080, i64 %i.f ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %.080, i64 %.04285 ; 4 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %.080, i64 %i.d ; 2 uses
  br i1 %.not43.i, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit.i, label %.lr.ph.i

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
  %wide.vec525 = load <4 x i32>, ptr %next.gep523, align 4, !tbaa !254
  %wide.vec528 = load <4 x i32>, ptr %next.gep524, align 4, !tbaa !254
  store <4 x i32> %wide.vec525, ptr %next.gep521, align 4, !tbaa !254
  store <4 x i32> %wide.vec528, ptr %next.gep522, align 4, !tbaa !254
  store <4 x i32> zeroinitializer, ptr %next.gep523, align 4, !tbaa !254
  store <4 x i32> zeroinitializer, ptr %next.gep524, align 4, !tbaa !254
  %index.next533 = add nuw i64 %index520, 4       ; 2 uses
  %i.az = icmp eq i64 %index.next533, %n.vec518
  br i1 %i.az, label %middle.block534, label %vector.body519, !llvm.loop !3717

middle.block534:                                  ; preds = %vector.body519
  %cmp.n535 = icmp eq i64 %i.aa, %n.vec518
  br i1 %cmp.n535, label %_ZN5boost7movelib13op_merge_leftIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEENS0_7move_opEEEvT_SG_SG_SG_T0_T1_.exit, label %.lr.ph.i.i.i.preheader546

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
  %i.bd = load i32, ptr %.079.i.i.i.prol, align 4, !tbaa !254
  store i32 %i.bd, ptr %.010.i.i.i.prol, align 4, !tbaa !254
  store i32 0, ptr %.079.i.i.i.prol, align 4, !tbaa !254
  %i.be = getelementptr inbounds nuw i8, ptr %.079.i.i.i.prol, i64 4 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.010.i.i.i.prol, i64 4
  %i.bg = load i32, ptr %i.be, align 4, !tbaa !254
  store i32 %i.bg, ptr %i.bf, align 4, !tbaa !254
  store i32 0, ptr %i.be, align 4, !tbaa !254
  %i.bh = getelementptr inbounds nuw i8, ptr %.079.i.i.i.prol, i64 8 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.010.i.i.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !3718

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader546
  %.010.i.i.i.unr = phi ptr [ %.010.i.i.i.ph, %.lr.ph.i.i.i.preheader546 ], [ %i.bi, %.lr.ph.i.i.i.prol ]
  %.079.i.i.i.unr = phi ptr [ %.079.i.i.i.ph, %.lr.ph.i.i.i.preheader546 ], [ %i.bh, %.lr.ph.i.i.i.prol ]
  %i.bj = icmp ult i64 %i.ba, 24
  br i1 %i.bj, label %_ZN5boost7movelib13op_merge_leftIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEENS0_7move_opEEEvT_SG_SG_SG_T0_T1_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.ch, %.lr.ph.i.i.i ], [ %.010.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  %.079.i.i.i = phi ptr [ %i.cg, %.lr.ph.i.i.i ], [ %.079.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 10 uses
  %i.bk = load i32, ptr %.079.i.i.i, align 4, !tbaa !254
  store i32 %i.bk, ptr %.010.i.i.i, align 4, !tbaa !254
  store i32 0, ptr %.079.i.i.i, align 4, !tbaa !254
  %i.bl = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 4 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 4
  %i.bn = load i32, ptr %i.bl, align 4, !tbaa !254
  store i32 %i.bn, ptr %i.bm, align 4, !tbaa !254
  store i32 0, ptr %i.bl, align 4, !tbaa !254
  %i.bo = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 8 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 8
  %i.bq = load i32, ptr %i.bo, align 4, !tbaa !254
  store i32 %i.bq, ptr %i.bp, align 4, !tbaa !254
  store i32 0, ptr %i.bo, align 4, !tbaa !254
  %i.br = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 12 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 12
  %i.bt = load i32, ptr %i.br, align 4, !tbaa !254
  store i32 %i.bt, ptr %i.bs, align 4, !tbaa !254
  store i32 0, ptr %i.br, align 4, !tbaa !254
  %i.bu = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 16 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 16
  %i.bw = load i32, ptr %i.bu, align 4, !tbaa !254
  store i32 %i.bw, ptr %i.bv, align 4, !tbaa !254
  store i32 0, ptr %i.bu, align 4, !tbaa !254
  %i.bx = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 20 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 20
  %i.bz = load i32, ptr %i.bx, align 4, !tbaa !254
  store i32 %i.bz, ptr %i.by, align 4, !tbaa !254
  store i32 0, ptr %i.bx, align 4, !tbaa !254
  %i.ca = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 24 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 24
  %i.cc = load i32, ptr %i.ca, align 4, !tbaa !254
  store i32 %i.cc, ptr %i.cb, align 4, !tbaa !254
  store i32 0, ptr %i.ca, align 4, !tbaa !254
  %i.cd = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 28 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 28
  %i.cf = load i32, ptr %i.cd, align 4, !tbaa !254
  store i32 %i.cf, ptr %i.ce, align 4, !tbaa !254
  store i32 0, ptr %i.cd, align 4, !tbaa !254
end_hunk_1
begin_hunk_2_@_ZN5boost7movelib15detail_adaptive27op_merge_left_step_multipleIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEENS0_9iter_sizeIT_E4typeESI_SK_SK_SK_SK_T0_T1_:bb.a
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store i32 %i.cj, ptr %.02345.i, align 4, !tbaa !254
  store i32 0, ptr %.02444.i, align 4, !tbaa !254
  %i.cp = getelementptr inbounds nuw i8, ptr %.02444.i, i64 4 ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !254
  store i32 %i.cq, ptr %i.cl, align 4, !tbaa !254
  store i32 0, ptr %i.cp, align 4, !tbaa !254
  %i.cr = getelementptr inbounds nuw i8, ptr %.02444.i, i64 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.125.i = phi ptr [ %.02444.i, %bb.d ], [ %i.cr, %bb.e ] ; 2 uses
  %.1.i = phi ptr [ %i.co, %bb.d ], [ %.02246.i, %bb.e ] ; 2 uses
  %i.cs = getelementptr i8, ptr %.02345.i, i64 8  ; 2 uses
  %.not.i = icmp eq ptr %.1.i, %i.u
  %indvar.next489 = add i64 %indvar488, 1
  br i1 %.not.i, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit.i, label %.lr.ph.i, !llvm.loop !3720

_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit.i: ; preds = %bb.f, %bb.b
  %.024.lcssa.i = phi ptr [ %.080, %bb.b ], [ %.125.i, %bb.f ] ; 14 uses
  %.023.lcssa.i = phi ptr [ %i.s, %bb.b ], [ %i.cs, %bb.f ] ; 12 uses
  %.024.lcssa.i406 = ptrtoaddr ptr %.024.lcssa.i to i64 ; 2 uses
  %.not27.i = icmp eq ptr %.023.lcssa.i, %.024.lcssa.i
  %.not8.i.i28.i = icmp eq ptr %.024.lcssa.i, %i.t
  %or.cond38.i = or i1 %.not8.i.i28.i, %.not27.i
  br i1 %or.cond38.i, label %_ZN5boost7movelib13op_merge_leftIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEENS0_7move_opEEEvT_SG_SG_SG_T0_T1_.exit, label %.lr.ph.i.i29.i.preheader

.lr.ph.i.i29.i.preheader:                         ; preds = %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit.i
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
  %wide.vec441 = load <4 x i32>, ptr %next.gep439, align 4, !tbaa !254
  %wide.vec444 = load <4 x i32>, ptr %next.gep440, align 4, !tbaa !254
  store <4 x i32> %wide.vec441, ptr %next.gep437, align 4, !tbaa !254
  store <4 x i32> %wide.vec444, ptr %next.gep438, align 4, !tbaa !254
  store <4 x i32> zeroinitializer, ptr %next.gep439, align 4, !tbaa !254
  store <4 x i32> zeroinitializer, ptr %next.gep440, align 4, !tbaa !254
  %index.next449 = add nuw i64 %index436, 4       ; 2 uses
  %i.dp = icmp eq i64 %index.next449, %n.vec434
  br i1 %i.dp, label %middle.block450, label %vector.body435, !llvm.loop !3721

middle.block450:                                  ; preds = %vector.body435
  %cmp.n451 = icmp eq i64 %i.cx, %n.vec434
  br i1 %cmp.n451, label %_ZN5boost7movelib13op_merge_leftIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEENS0_7move_opEEEvT_SG_SG_SG_T0_T1_.exit, label %.lr.ph.i.i29.i.preheader545

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
  %i.dt = load i32, ptr %.079.i.i31.i.prol, align 4, !tbaa !254
  store i32 %i.dt, ptr %.010.i.i30.i.prol, align 4, !tbaa !254
  store i32 0, ptr %.079.i.i31.i.prol, align 4, !tbaa !254
  %i.du = getelementptr inbounds nuw i8, ptr %.079.i.i31.i.prol, i64 4 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.010.i.i30.i.prol, i64 4
  %i.dw = load i32, ptr %i.du, align 4, !tbaa !254
  store i32 %i.dw, ptr %i.dv, align 4, !tbaa !254
  store i32 0, ptr %i.du, align 4, !tbaa !254
  %i.dx = getelementptr inbounds nuw i8, ptr %.079.i.i31.i.prol, i64 8 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.010.i.i30.i.prol, i64 8 ; 2 uses
  %prol.iter570.next = add i64 %prol.iter570, 1   ; 2 uses
  %prol.iter570.cmp.not = icmp eq i64 %prol.iter570.next, %xtraiter568
  br i1 %prol.iter570.cmp.not, label %.lr.ph.i.i29.i.prol.loopexit, label %.lr.ph.i.i29.i.prol, !llvm.loop !3722

.lr.ph.i.i29.i.prol.loopexit:                     ; preds = %.lr.ph.i.i29.i.prol, %.lr.ph.i.i29.i.preheader545
  %.010.i.i30.i.unr = phi ptr [ %.010.i.i30.i.ph, %.lr.ph.i.i29.i.preheader545 ], [ %i.dy, %.lr.ph.i.i29.i.prol ]
  %.079.i.i31.i.unr = phi ptr [ %.079.i.i31.i.ph, %.lr.ph.i.i29.i.preheader545 ], [ %i.dx, %.lr.ph.i.i29.i.prol ]
  %i.dz = icmp ult i64 %i.dq, 24
  br i1 %i.dz, label %_ZN5boost7movelib13op_merge_leftIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEENS0_7move_opEEEvT_SG_SG_SG_T0_T1_.exit, label %.lr.ph.i.i29.i

.lr.ph.i.i29.i:                                   ; preds = %.lr.ph.i.i29.i.prol.loopexit, %.lr.ph.i.i29.i
  %.010.i.i30.i = phi ptr [ %i.ex, %.lr.ph.i.i29.i ], [ %.010.i.i30.i.unr, %.lr.ph.i.i29.i.prol.loopexit ] ; 9 uses
  %.079.i.i31.i = phi ptr [ %i.ew, %.lr.ph.i.i29.i ], [ %.079.i.i31.i.unr, %.lr.ph.i.i29.i.prol.loopexit ] ; 10 uses
  %i.ea = load i32, ptr %.079.i.i31.i, align 4, !tbaa !254
  store i32 %i.ea, ptr %.010.i.i30.i, align 4, !tbaa !254
  store i32 0, ptr %.079.i.i31.i, align 4, !tbaa !254
  %i.eb = getelementptr inbounds nuw i8, ptr %.079.i.i31.i, i64 4 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.010.i.i30.i, i64 4
  %i.ed = load i32, ptr %i.eb, align 4, !tbaa !254
  store i32 %i.ed, ptr %i.ec, align 4, !tbaa !254
  store i32 0, ptr %i.eb, align 4, !tbaa !254
  %i.ee = getelementptr inbounds nuw i8, ptr %.079.i.i31.i, i64 8 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.010.i.i30.i, i64 8
  %i.eg = load i32, ptr %i.ee, align 4, !tbaa !254
  store i32 %i.eg, ptr %i.ef, align 4, !tbaa !254
  store i32 0, ptr %i.ee, align 4, !tbaa !254
  %i.eh = getelementptr inbounds nuw i8, ptr %.079.i.i31.i, i64 12 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.010.i.i30.i, i64 12
  %i.ej = load i32, ptr %i.eh, align 4, !tbaa !254
  store i32 %i.ej, ptr %i.ei, align 4, !tbaa !254
  store i32 0, ptr %i.eh, align 4, !tbaa !254
  %i.ek = getelementptr inbounds nuw i8, ptr %.079.i.i31.i, i64 16 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.010.i.i30.i, i64 16
  %i.em = load i32, ptr %i.ek, align 4, !tbaa !254
  store i32 %i.em, ptr %i.el, align 4, !tbaa !254
  store i32 0, ptr %i.ek, align 4, !tbaa !254
  %i.en = getelementptr inbounds nuw i8, ptr %.079.i.i31.i, i64 20 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.010.i.i30.i, i64 20
  %i.ep = load i32, ptr %i.en, align 4, !tbaa !254
  store i32 %i.ep, ptr %i.eo, align 4, !tbaa !254
  store i32 0, ptr %i.en, align 4, !tbaa !254
  %i.eq = getelementptr inbounds nuw i8, ptr %.079.i.i31.i, i64 24 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.010.i.i30.i, i64 24
  %i.es = load i32, ptr %i.eq, align 4, !tbaa !254
  store i32 %i.es, ptr %i.er, align 4, !tbaa !254
  store i32 0, ptr %i.eq, align 4, !tbaa !254
  %i.et = getelementptr inbounds nuw i8, ptr %.079.i.i31.i, i64 28 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.010.i.i30.i, i64 28
  %i.ev = load i32, ptr %i.et, align 4, !tbaa !254
  store i32 %i.ev, ptr %i.eu, align 4, !tbaa !254
  store i32 0, ptr %i.et, align 4, !tbaa !254
  %i.ew = getelementptr inbounds nuw i8, ptr %.079.i.i31.i, i64 32 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.010.i.i30.i, i64 32
  %.not.i.i32.i.3 = icmp eq ptr %i.ew, %i.t
  br i1 %.not.i.i32.i.3, label %_ZN5boost7movelib13op_merge_leftIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEENS0_7move_opEEEvT_SG_SG_SG_T0_T1_.exit, label %.lr.ph.i.i29.i, !llvm.loop !3723

_ZN5boost7movelib13op_merge_leftIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEENS0_7move_opEEEvT_SG_SG_SG_T0_T1_.exit: ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %.lr.ph.i.i29.i.prol.loopexit, %.lr.ph.i.i29.i, %middle.block534, %middle.block450, %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit.i
  %i.ey = add i64 %.03979, %i.d                   ; 4 uses
  %.0.idx = shl i64 %i.ey, 3                      ; 2 uses
  %.0 = getelementptr i8, ptr %.04186, i64 %.0.idx ; 2 uses
  %i.ez = sub i64 %1, %i.ey                       ; 2 uses
  %i.fa = icmp ugt i64 %i.ez, %i.d
  %indvar.next405 = add i64 %indvar404, 1
  br i1 %i.fa, label %bb.b, label %._crit_edge, !llvm.loop !3724

._crit_edge:                                      ; preds = %_ZN5boost7movelib13op_merge_leftIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEENS0_7move_opEEEvT_SG_SG_SG_T0_T1_.exit, %.preheader
  %.039.lcssa = phi i64 [ 0, %.preheader ], [ %i.ey, %_ZN5boost7movelib13op_merge_leftIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEENS0_7move_opEEEvT_SG_SG_SG_T0_T1_.exit ]
  %.0.idx.lcssa = phi i64 [ 0, %.preheader ], [ %.0.idx, %_ZN5boost7movelib13op_merge_leftIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEENS0_7move_opEEEvT_SG_SG_SG_T0_T1_.exit ]
  %.0.lcssa = phi ptr [ %.04186, %.preheader ], [ %.0, %_ZN5boost7movelib13op_merge_leftIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEENS0_7move_opEEEvT_SG_SG_SG_T0_T1_.exit ] ; 23 uses
  %.lcssa75 = phi i64 [ %1, %.preheader ], [ %i.ez, %_ZN5boost7movelib13op_merge_leftIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEENS0_7move_opEEEvT_SG_SG_SG_T0_T1_.exit ]
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
  br i1 %.not43.i45, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit.i53, label %.lr.ph.i46

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
  %wide.vec275 = load <4 x i32>, ptr %next.gep273, align 4, !tbaa !254
  %wide.vec278 = load <4 x i32>, ptr %next.gep274, align 4, !tbaa !254
  store <4 x i32> %wide.vec275, ptr %next.gep271, align 4, !tbaa !254
  store <4 x i32> %wide.vec278, ptr %next.gep272, align 4, !tbaa !254
  store <4 x i32> zeroinitializer, ptr %next.gep273, align 4, !tbaa !254
  store <4 x i32> zeroinitializer, ptr %next.gep274, align 4, !tbaa !254
  %index.next283 = add nuw i64 %index270, 4       ; 2 uses
  %i.ge = icmp eq i64 %index.next283, %n.vec268
  br i1 %i.ge, label %middle.block284, label %vector.body269, !llvm.loop !3725

middle.block284:                                  ; preds = %vector.body269
  %cmp.n285 = icmp eq i64 %i.fk, %n.vec268
  br i1 %cmp.n285, label %_ZN5boost7movelib13op_merge_leftIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEENS0_7move_opEEEvT_SG_SG_SG_T0_T1_.exit67, label %.lr.ph.i.i.i63.preheader549

.lr.ph.i.i.i63.preheader549:                      ; preds = %vector.memcheck243, %.lr.ph.i.i.i63.preheader, %middle.block284
  %.010.i.i.i64.ph = phi ptr [ %.02345.i48, %vector.memcheck243 ], [ %.02345.i48, %.lr.ph.i.i.i63.preheader ], [ %i.ga, %middle.block284 ]
  %.079.i.i.i65.ph = phi ptr [ %.02246.i47, %vector.memcheck243 ], [ %.02246.i47, %.lr.ph.i.i.i63.preheader ], [ %i.gb, %middle.block284 ]
  br label %.lr.ph.i.i.i63

.lr.ph.i.i.i63:                                   ; preds = %.lr.ph.i.i.i63.preheader549, %.lr.ph.i.i.i63
  %.010.i.i.i64 = phi ptr [ %i.gk, %.lr.ph.i.i.i63 ], [ %.010.i.i.i64.ph, %.lr.ph.i.i.i63.preheader549 ] ; 3 uses
  %.079.i.i.i65 = phi ptr [ %i.gj, %.lr.ph.i.i.i63 ], [ %.079.i.i.i65.ph, %.lr.ph.i.i.i63.preheader549 ] ; 4 uses
  %i.gf = load i32, ptr %.079.i.i.i65, align 4, !tbaa !254
  store i32 %i.gf, ptr %.010.i.i.i64, align 4, !tbaa !254
  store i32 0, ptr %.079.i.i.i65, align 4, !tbaa !254
  %i.gg = getelementptr inbounds nuw i8, ptr %.079.i.i.i65, i64 4 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.010.i.i.i64, i64 4
  %i.gi = load i32, ptr %i.gg, align 4, !tbaa !254
  store i32 %i.gi, ptr %i.gh, align 4, !tbaa !254
  store i32 0, ptr %i.gg, align 4, !tbaa !254
  %i.gj = getelementptr inbounds nuw i8, ptr %.079.i.i.i65, i64 8 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.010.i.i.i64, i64 8
  %.not.i.i.i66 = icmp eq ptr %i.gj, %i.ff
  br i1 %.not.i.i.i66, label %_ZN5boost7movelib13op_merge_leftIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEENS0_7move_opEEEvT_SG_SG_SG_T0_T1_.exit67, label %.lr.ph.i.i.i63, !llvm.loop !3726

bb.h:                                             ; preds = %.lr.ph.i46
  %i.gl = load i32, ptr %.02246.i47, align 4, !tbaa !254 ; 2 uses
  %i.gm = load i32, ptr %.02444.i49, align 4, !tbaa !254 ; 2 uses
  %i.gn = icmp slt i32 %i.gl, %i.gm
  %i.go = getelementptr inbounds nuw i8, ptr %.02345.i48, i64 4 ; 2 uses
  br i1 %i.gn, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 %i.gl, ptr %.02345.i48, align 4, !tbaa !254
  store i32 0, ptr %.02246.i47, align 4, !tbaa !254
  %i.gp = getelementptr inbounds nuw i8, ptr %.02246.i47, i64 4 ; 2 uses
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !254
  store i32 %i.gq, ptr %i.go, align 4, !tbaa !254
  store i32 0, ptr %i.gp, align 4, !tbaa !254
  %i.gr = getelementptr inbounds nuw i8, ptr %.02246.i47, i64 8
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  store i32 %i.gm, ptr %.02345.i48, align 4, !tbaa !254
  store i32 0, ptr %.02444.i49, align 4, !tbaa !254
  %i.gs = getelementptr inbounds nuw i8, ptr %.02444.i49, i64 4 ; 2 uses
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !254
  store i32 %i.gt, ptr %i.go, align 4, !tbaa !254
  store i32 0, ptr %i.gs, align 4, !tbaa !254
  %i.gu = getelementptr inbounds nuw i8, ptr %.02444.i49, i64 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.125.i50 = phi ptr [ %.02444.i49, %bb.i ], [ %i.gu, %bb.j ] ; 2 uses
  %.1.i51 = phi ptr [ %i.gr, %bb.i ], [ %.02246.i47, %bb.j ] ; 2 uses
  %i.gv = getelementptr i8, ptr %.02345.i48, i64 8 ; 2 uses
  %.not.i52 = icmp eq ptr %.1.i51, %i.ff
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i52, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit.i53, label %.lr.ph.i46, !llvm.loop !3720

_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit.i53: ; preds = %bb.k, %bb.g
  %.024.lcssa.i54 = phi ptr [ %.0.lcssa, %bb.g ], [ %.125.i50, %bb.k ] ; 14 uses
  %.023.lcssa.i55 = phi ptr [ %i.fd, %bb.g ], [ %i.gv, %bb.k ] ; 12 uses
  %.not27.i56 = icmp eq ptr %.023.lcssa.i55, %.024.lcssa.i54
  %.not8.i.i28.i57 = icmp eq ptr %.024.lcssa.i54, %i.fe
  %or.cond38.i58 = or i1 %.not8.i.i28.i57, %.not27.i56
  br i1 %or.cond38.i58, label %_ZN5boost7movelib13op_merge_leftIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEENS0_7move_opEEEvT_SG_SG_SG_T0_T1_.exit67, label %.lr.ph.i.i29.i59.preheader

.lr.ph.i.i29.i59.preheader:                       ; preds = %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit.i53
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
  %wide.vec = load <4 x i32>, ptr %next.gep198, align 4, !tbaa !254
  %wide.vec201 = load <4 x i32>, ptr %next.gep199, align 4, !tbaa !254
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !254
  store <4 x i32> %wide.vec201, ptr %next.gep197, align 4, !tbaa !254
  store <4 x i32> zeroinitializer, ptr %next.gep198, align 4, !tbaa !254
  store <4 x i32> zeroinitializer, ptr %next.gep199, align 4, !tbaa !254
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hp = icmp eq i64 %index.next, %n.vec
  br i1 %i.hp, label %middle.block, label %vector.body, !llvm.loop !3727

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ha, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib13op_merge_leftIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEENS0_7move_opEEEvT_SG_SG_SG_T0_T1_.exit67, label %.lr.ph.i.i29.i59.preheader548

.lr.ph.i.i29.i59.preheader548:                    ; preds = %vector.memcheck, %.lr.ph.i.i29.i59.preheader, %middle.block
  %.010.i.i30.i60.ph = phi ptr [ %.023.lcssa.i55, %vector.memcheck ], [ %.023.lcssa.i55, %.lr.ph.i.i29.i59.preheader ], [ %i.hl, %middle.block ]
  %.079.i.i31.i61.ph = phi ptr [ %.024.lcssa.i54, %vector.memcheck ], [ %.024.lcssa.i54, %.lr.ph.i.i29.i59.preheader ], [ %i.hm, %middle.block ]
  br label %.lr.ph.i.i29.i59

.lr.ph.i.i29.i59:                                 ; preds = %.lr.ph.i.i29.i59.preheader548, %.lr.ph.i.i29.i59
  %.010.i.i30.i60 = phi ptr [ %i.hv, %.lr.ph.i.i29.i59 ], [ %.010.i.i30.i60.ph, %.lr.ph.i.i29.i59.preheader548 ] ; 3 uses
  %.079.i.i31.i61 = phi ptr [ %i.hu, %.lr.ph.i.i29.i59 ], [ %.079.i.i31.i61.ph, %.lr.ph.i.i29.i59.preheader548 ] ; 4 uses
  %i.hq = load i32, ptr %.079.i.i31.i61, align 4, !tbaa !254
  store i32 %i.hq, ptr %.010.i.i30.i60, align 4, !tbaa !254
  store i32 0, ptr %.079.i.i31.i61, align 4, !tbaa !254
  %i.hr = getelementptr inbounds nuw i8, ptr %.079.i.i31.i61, i64 4 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.010.i.i30.i60, i64 4
  %i.ht = load i32, ptr %i.hr, align 4, !tbaa !254
  store i32 %i.ht, ptr %i.hs, align 4, !tbaa !254
  store i32 0, ptr %i.hr, align 4, !tbaa !254
  %i.hu = getelementptr inbounds nuw i8, ptr %.079.i.i31.i61, i64 8 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %.010.i.i30.i60, i64 8
  %.not.i.i32.i62 = icmp eq ptr %i.hu, %i.fe
  br i1 %.not.i.i32.i62, label %_ZN5boost7movelib13op_merge_leftIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEENS0_7move_opEEEvT_SG_SG_SG_T0_T1_.exit67, label %.lr.ph.i.i29.i59, !llvm.loop !3728

bb.l:                                             ; preds = %._crit_edge
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %.04186, i64 %1
  %i.hx = sub i64 0, %.04285                      ; 4 uses
  %.not8.i.i = icmp samesign eq i64 %.039.lcssa, %1
  br i1 %.not8.i.i, label %_ZN5boost7movelib13op_merge_leftIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEENS0_7move_opEEEvT_SG_SG_SG_T0_T1_.exit67, label %.lr.ph.i.i.preheader

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
  %wide.vec357 = load <4 x i32>, ptr %next.gep355, align 4, !tbaa !254
  %wide.vec360 = load <4 x i32>, ptr %next.gep356, align 4, !tbaa !254
  store <4 x i32> %wide.vec357, ptr %next.gep353, align 4, !tbaa !254
  store <4 x i32> %wide.vec360, ptr %next.gep354, align 4, !tbaa !254
  store <4 x i32> zeroinitializer, ptr %next.gep355, align 4, !tbaa !254
  store <4 x i32> zeroinitializer, ptr %next.gep356, align 4, !tbaa !254
  %index.next365 = add nuw i64 %index352, 4       ; 2 uses
  %i.iu = icmp eq i64 %index.next365, %n.vec350
  br i1 %i.iu, label %middle.block366, label %vector.body351, !llvm.loop !3729

middle.block366:                                  ; preds = %vector.body351
  %cmp.n367 = icmp eq i64 %i.ib, %n.vec350
  br i1 %cmp.n367, label %_ZN5boost7movelib13op_merge_leftIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEENS0_7move_opEEEvT_SG_SG_SG_T0_T1_.exit67, label %.lr.ph.i.i.preheader551

.lr.ph.i.i.preheader551:                          ; preds = %vector.memcheck325, %.lr.ph.i.i.preheader, %middle.block366
  %.010.i.i.ph = phi ptr [ %i.hy, %vector.memcheck325 ], [ %i.hy, %.lr.ph.i.i.preheader ], [ %i.iq, %middle.block366 ]
  %.079.i.i.ph = phi ptr [ %.0.lcssa, %vector.memcheck325 ], [ %.0.lcssa, %.lr.ph.i.i.preheader ], [ %i.ir, %middle.block366 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader551, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.ja, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader551 ] ; 3 uses
  %.079.i.i = phi ptr [ %i.iz, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader551 ] ; 4 uses
  %i.iv = load i32, ptr %.079.i.i, align 4, !tbaa !254
  store i32 %i.iv, ptr %.010.i.i, align 4, !tbaa !254
  store i32 0, ptr %.079.i.i, align 4, !tbaa !254
  %i.iw = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  %i.iy = load i32, ptr %i.iw, align 4, !tbaa !254
  store i32 %i.iy, ptr %i.ix, align 4, !tbaa !254
  store i32 0, ptr %i.iw, align 4, !tbaa !254
  %i.iz = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %.not.i.i = icmp eq ptr %i.iz, %i.hw
  br i1 %.not.i.i, label %_ZN5boost7movelib13op_merge_leftIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEENS0_7move_opEEEvT_SG_SG_SG_T0_T1_.exit67, label %.lr.ph.i.i, !llvm.loop !3730

_ZN5boost7movelib13op_merge_leftIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEENS0_7move_opEEEvT_SG_SG_SG_T0_T1_.exit67: ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i63, %.lr.ph.i.i29.i59, %middle.block366, %middle.block284, %middle.block, %bb.l, %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit.i53
  %.pre-phi = phi i64 [ %i.fc, %middle.block284 ], [ %i.fc, %middle.block ], [ %i.fc, %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit.i53 ], [ %i.hx, %bb.l ], [ %i.hx, %middle.block366 ], [ %i.fc, %.lr.ph.i.i.i63 ], [ %i.fc, %.lr.ph.i.i29.i59 ], [ %i.hx, %.lr.ph.i.i ]
  %i.jb = getelementptr inbounds [8 x i8], ptr %.04186, i64 %.pre-phi
  %i.jc = sub nuw i64 %.04087, %.04285            ; 2 uses
  %i.jd = icmp ult i64 %i.d, %3
  %i.je = icmp uge i64 %i.jc, %i.d
  %i.jf = select i1 %i.jd, i1 %i.je, i1 false
  br i1 %i.jf, label %.preheader, label %._crit_edge88, !llvm.loop !3731

._crit_edge88:                                    ; preds = %_ZN5boost7movelib13op_merge_leftIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEENS0_7move_opEEEvT_SG_SG_SG_T0_T1_.exit67, %bb.a
  %.042.lcssa = phi i64 [ %2, %bb.a ], [ %i.d, %_ZN5boost7movelib13op_merge_leftIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEENS0_7move_opEEEvT_SG_SG_SG_T0_T1_.exit67 ]
  ret i64 %.042.lcssa
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost7movelib15detail_adaptive19insertion_sort_stepIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEEEENS0_9iter_sizeIT_E4typeESH_SJ_SJ_T0_(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %2, i64 16) ; 7 uses
  %i.a = icmp ugt i64 %1, %.sroa.speculated
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.idx33 = shl nuw nsw i64 %.sroa.speculated, 3
  %or.cond.i = icmp ult i64 %2, 2
  br i1 %or.cond.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_EEvT0_SF_T_.exit.us, label %.lr.ph42.i.preheader

_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_EEvT0_SF_T_.exit.us: ; preds = %.lr.ph, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_EEvT0_SF_T_.exit.us
  %.034.us = phi i64 [ %i.b, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_EEvT0_SF_T_.exit.us ], [ 0, %.lr.ph ]
  %i.b = add i64 %.034.us, %.sroa.speculated      ; 3 uses
  %i.c = sub i64 %1, %i.b
  %i.d = icmp ugt i64 %i.c, %.sroa.speculated
  br i1 %i.d, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_EEvT0_SF_T_.exit.us, label %._crit_edge, !llvm.loop !3732

.lr.ph42.i.preheader:                             ; preds = %.lr.ph, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_EEvT0_SF_T_.exit.loopexit
  %.034 = phi i64 [ %i.z, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_EEvT0_SF_T_.exit.loopexit ], [ 0, %.lr.ph ] ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.034 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx33
  %.02538.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  br label %.lr.ph42.i

.lr.ph42.i:                                       ; preds = %.lr.ph42.i.preheader, %bb.d
  %.02541.i = phi ptr [ %.025.i, %bb.d ], [ %.02538.i, %.lr.ph42.i.preheader ] ; 5 uses
  %.pn40.i = phi ptr [ %.02541.i, %bb.d ], [ %i.e, %.lr.ph42.i.preheader ] ; 7 uses
  %i.g = load i32, ptr %.02541.i, align 4, !tbaa !254 ; 3 uses
  %i.h = load i32, ptr %.pn40.i, align 4, !tbaa !254
  %i.i = icmp slt i32 %i.g, %i.h
  br i1 %i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph42.i
  store i32 0, ptr %.02541.i, align 4, !tbaa !254
  %i.j = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.k = getelementptr inbounds nuw i8, ptr %.pn40.i, i64 12 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !254
  %i.m = add i32 %i.j, 2
  store i32 %i.m, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.n = load i32, ptr %.pn40.i, align 4, !tbaa !254
  store i32 %i.n, ptr %.02541.i, align 4, !tbaa !254
  store i32 0, ptr %.pn40.i, align 4, !tbaa !254
  %i.o = getelementptr inbounds nuw i8, ptr %.pn40.i, i64 4 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !254
  store i32 %i.p, ptr %i.k, align 4, !tbaa !254
  store i32 0, ptr %i.o, align 4, !tbaa !254
  %.not2933.i = icmp eq ptr %.pn40.i, %i.e
  br i1 %.not2933.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.035.i = phi ptr [ %i.q, %bb.c ], [ %.pn40.i, %bb.b ] ; 5 uses
  %i.q = getelementptr i8, ptr %.035.i, i64 -8    ; 4 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !254  ; 2 uses
  %i.s = icmp slt i32 %i.g, %i.r
  br i1 %i.s, label %bb.c, label %._crit_edge.i

bb.c:                                             ; preds = %.lr.ph.i
  store i32 %i.r, ptr %.035.i, align 4, !tbaa !254
  store i32 0, ptr %i.q, align 4, !tbaa !254
  %i.t = getelementptr inbounds i8, ptr %.035.i, i64 -4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.035.i, i64 4
  %i.v = load i32, ptr %i.t, align 4, !tbaa !254
  store i32 %i.v, ptr %i.u, align 4, !tbaa !254
  store i32 0, ptr %i.t, align 4, !tbaa !254
  %.not29.i = icmp eq ptr %i.q, %i.e
  br i1 %.not29.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !41

._crit_edge.i:                                    ; preds = %bb.c, %.lr.ph.i, %bb.b
  %.024.lcssa.i = phi ptr [ %i.e, %bb.b ], [ %i.e, %bb.c ], [ %.035.i, %.lr.ph.i ] ; 2 uses
  store i32 %i.g, ptr %.024.lcssa.i, align 4, !tbaa !254
  %i.w = getelementptr inbounds nuw i8, ptr %.024.lcssa.i, i64 4
  store i32 %i.l, ptr %i.w, align 4, !tbaa !254
  %i.x = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.y = add i32 %i.x, -2
  store i32 %i.y, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i, %.lr.ph42.i
  %.025.i = getelementptr inbounds nuw i8, ptr %.02541.i, i64 8 ; 2 uses
  %.not28.i = icmp eq ptr %.025.i, %i.f
  br i1 %.not28.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_EEvT0_SF_T_.exit.loopexit, label %.lr.ph42.i, !llvm.loop !42

_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_EEvT0_SF_T_.exit.loopexit: ; preds = %bb.d
  %i.z = add i64 %.034, %.sroa.speculated         ; 3 uses
  %i.aa = sub i64 %1, %i.z
  %i.ab = icmp ugt i64 %i.aa, %.sroa.speculated
  br i1 %i.ab, label %.lr.ph42.i.preheader, label %._crit_edge, !llvm.loop !3732

._crit_edge:                                      ; preds = %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_EEvT0_SF_T_.exit.loopexit, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_EEvT0_SF_T_.exit.us, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.b, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_EEvT0_SF_T_.exit.us ], [ %i.z, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_EEvT0_SF_T_.exit.loopexit ] ; 2 uses
  %.idx = shl nuw nsw i64 %.0.lcssa, 3            ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 6 uses
  %.idx32 = shl nuw nsw i64 %1, 3                 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %.idx32
  %.not.i15 = icmp samesign eq i64 %.0.lcssa, %1
  %i.ae = add nuw nsw i64 %.idx, 8
  %.not2839.i17 = icmp samesign eq i64 %i.ae, %.idx32
end_hunk_2
