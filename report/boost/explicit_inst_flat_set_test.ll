Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/explicit_inst_flat_set_test?download=true
inline.NumInlined: 23167
inline.NumDeleted: 2555
loop-unroll.NumRuntimeUnrolled: 280
loop-unroll.NumUnrolled: 291
begin_hunk_0_@_ZN5boost7movelib15detail_adaptive32adaptive_sort_combine_all_blocksIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_13adaptive_xbufIS5_S6_mEEEEbT_RNS0_9iter_sizeISH_E4typeESH_SK_SK_SL_RT1_T0_:bb.a
  %bound1 = icmp ult ptr %2, %i.r
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.q, 9223372036854775800      ; 3 uses
  %i.s = shl i64 %n.vec, 2                        ; 2 uses
  %i.t = getelementptr i8, ptr %i.m, i64 %i.s
  %i.u = getelementptr i8, ptr %2, i64 %i.s
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.v = shl i64 %index, 2                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.m, i64 %i.v ; 2 uses
  %next.gep249 = getelementptr i8, ptr %2, i64 %i.v ; 3 uses
  %i.w = getelementptr i8, ptr %next.gep249, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep249, align 4, !tbaa !247, !alias.scope !1687
  %wide.load250 = load <4 x i32>, ptr %i.w, align 4, !tbaa !247, !alias.scope !1687
  %i.x = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !247, !alias.scope !1688, !noalias !1687
  store <4 x i32> %wide.load250, ptr %i.x, align 4, !tbaa !247, !alias.scope !1688, !noalias !1687
  store <4 x i32> zeroinitializer, ptr %next.gep249, align 4, !tbaa !247, !alias.scope !1687
  store <4 x i32> zeroinitializer, ptr %i.w, align 4, !tbaa !247, !alias.scope !1687
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !1653

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.q, %n.vec
  br i1 %cmp.n, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %bb.c, %middle.block
  %.010.i.i.ph = phi ptr [ %i.m, %vector.memcheck ], [ %i.m, %bb.c ], [ %i.t, %middle.block ]
  %.079.i.i.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %bb.c ], [ %i.u, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.ab, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.079.i.i = phi ptr [ %i.aa, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.z = load i32, ptr %.079.i.i, align 4, !tbaa !247
  store i32 %i.z, ptr %.010.i.i, align 4, !tbaa !247
  store i32 0, ptr %.079.i.i, align 4, !tbaa !247
  %i.aa = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  %.not.i.i = icmp eq ptr %i.aa, %i.n
  br i1 %.not.i.i, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i.i, !llvm.loop !1654

_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i: ; preds = %.lr.ph.i.i, %middle.block
  %.not1730.i = icmp eq i64 %i.l, %i.b
  br i1 %.not1730.i, label %.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i
  %i.ac = sub i64 %i.l, %i.b
  %xtraiter = and i64 %i.ac, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.031.i.prol = phi i64 [ %i.ad, %.lr.ph.i.prol ], [ %i.l, %.lr.ph.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.ad = add i64 %.031.i.prol, -1                ; 3 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.ad
  store i32 -2147483648, ptr %i.ae, align 4, !tbaa !247
  %i.af = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.ag = add i32 %i.af, -1
  store i32 %i.ag, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !1655

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.031.i.unr = phi i64 [ %i.l, %.lr.ph.i.preheader ], [ %i.ad, %.lr.ph.i.prol ]
  %i.ah = sub i64 %i.b, %i.l
  %i.ai = icmp ugt i64 %i.ah, -4
  br i1 %i.ai, label %.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.031.i = phi i64 [ %i.av, %.lr.ph.i ], [ %.031.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.aj = getelementptr [4 x i8], ptr %i.m, i64 %.031.i
  %i.ak = getelementptr i8, ptr %i.aj, i64 -4
  store i32 -2147483648, ptr %i.ak, align 4, !tbaa !247
  %i.al = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.am = add i32 %i.al, -1
  store i32 %i.am, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.an = getelementptr [4 x i8], ptr %i.m, i64 %.031.i
  %i.ao = getelementptr i8, ptr %i.an, i64 -8
  store i32 -2147483648, ptr %i.ao, align 4, !tbaa !247
  %i.ap = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.aq = add i32 %i.ap, -1
  store i32 %i.aq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.ar = getelementptr [4 x i8], ptr %i.m, i64 %.031.i
  %i.as = getelementptr i8, ptr %i.ar, i64 -12
  store i32 -2147483648, ptr %i.as, align 4, !tbaa !247
  %i.at = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.au = add i32 %i.at, -1
  store i32 %i.au, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.av = add i64 %.031.i, -4                     ; 3 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.av
  store i32 -2147483648, ptr %i.aw, align 4, !tbaa !247
  %i.ax = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.ay = add i32 %i.ax, -1
  store i32 %i.ay, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %.not17.i.3 = icmp eq i64 %i.av, %i.b
  br i1 %.not17.i.3, label %.thread, label %.lr.ph.i, !llvm.loop !38

bb.d:                                             ; preds = %bb.b
  %.idx27.i = shl i64 %i.l, 2                     ; 4 uses
  %i.az = getelementptr i8, ptr %2, i64 %.idx27.i ; 3 uses
  %.not8.i18.i = icmp eq i64 %i.l, 0
  br i1 %.not8.i18.i, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit24.i, label %.lr.ph.i19.i.preheader

.lr.ph.i19.i.preheader:                           ; preds = %bb.d
  %i.ba = add i64 %.idx27.i, -4                   ; 2 uses
  %i.bb = lshr exact i64 %i.ba, 2
  %i.bc = add nuw nsw i64 %i.bb, 1                ; 2 uses
  %min.iters.check257 = icmp ult i64 %i.ba, 28
  br i1 %min.iters.check257, label %.lr.ph.i19.i.preheader403, label %vector.memcheck258

vector.memcheck258:                               ; preds = %.lr.ph.i19.i.preheader
  %i.bd = getelementptr i8, ptr %i.m, i64 %.idx27.i
  %bound0259 = icmp ult ptr %i.m, %i.az
  %bound1260 = icmp ult ptr %2, %i.bd
  %found.conflict261 = and i1 %bound0259, %bound1260
  br i1 %found.conflict261, label %.lr.ph.i19.i.preheader403, label %vector.ph262

vector.ph262:                                     ; preds = %vector.memcheck258
  %n.vec263 = and i64 %i.bc, 9223372036854775800  ; 3 uses
  %i.be = shl i64 %n.vec263, 2                    ; 2 uses
  %i.bf = getelementptr i8, ptr %i.m, i64 %i.be   ; 2 uses
  %i.bg = getelementptr i8, ptr %2, i64 %i.be
  br label %vector.body264

vector.body264:                                   ; preds = %vector.body264, %vector.ph262
  %index265 = phi i64 [ 0, %vector.ph262 ], [ %index.next270, %vector.body264 ] ; 2 uses
  %i.bh = shl i64 %index265, 2                    ; 2 uses
  %next.gep266 = getelementptr i8, ptr %i.m, i64 %i.bh ; 2 uses
  %next.gep267 = getelementptr i8, ptr %2, i64 %i.bh ; 3 uses
  %i.bi = getelementptr i8, ptr %next.gep267, i64 16 ; 2 uses
  %wide.load268 = load <4 x i32>, ptr %next.gep267, align 4, !tbaa !247, !alias.scope !1689
  %wide.load269 = load <4 x i32>, ptr %i.bi, align 4, !tbaa !247, !alias.scope !1689
  %i.bj = getelementptr i8, ptr %next.gep266, i64 16
  store <4 x i32> %wide.load268, ptr %next.gep266, align 4, !tbaa !247, !alias.scope !1690, !noalias !1689
  store <4 x i32> %wide.load269, ptr %i.bj, align 4, !tbaa !247, !alias.scope !1690, !noalias !1689
  store <4 x i32> zeroinitializer, ptr %next.gep267, align 4, !tbaa !247, !alias.scope !1689
  store <4 x i32> zeroinitializer, ptr %i.bi, align 4, !tbaa !247, !alias.scope !1689
  %index.next270 = add nuw i64 %index265, 8       ; 2 uses
  %i.bk = icmp eq i64 %index.next270, %n.vec263
  br i1 %i.bk, label %middle.block271, label %vector.body264, !llvm.loop !1659

middle.block271:                                  ; preds = %vector.body264
  %cmp.n272 = icmp eq i64 %i.bc, %n.vec263
  br i1 %cmp.n272, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit24.i, label %.lr.ph.i19.i.preheader403

.lr.ph.i19.i.preheader403:                        ; preds = %vector.memcheck258, %.lr.ph.i19.i.preheader, %middle.block271
  %.010.i20.i.ph = phi ptr [ %i.m, %vector.memcheck258 ], [ %i.m, %.lr.ph.i19.i.preheader ], [ %i.bf, %middle.block271 ]
  %.079.i21.i.ph = phi ptr [ %2, %vector.memcheck258 ], [ %2, %.lr.ph.i19.i.preheader ], [ %i.bg, %middle.block271 ]
  br label %.lr.ph.i19.i

.lr.ph.i19.i:                                     ; preds = %.lr.ph.i19.i.preheader403, %.lr.ph.i19.i
  %.010.i20.i = phi ptr [ %i.bn, %.lr.ph.i19.i ], [ %.010.i20.i.ph, %.lr.ph.i19.i.preheader403 ] ; 2 uses
  %.079.i21.i = phi ptr [ %i.bm, %.lr.ph.i19.i ], [ %.079.i21.i.ph, %.lr.ph.i19.i.preheader403 ] ; 3 uses
  %i.bl = load i32, ptr %.079.i21.i, align 4, !tbaa !247
  store i32 %i.bl, ptr %.010.i20.i, align 4, !tbaa !247
  store i32 0, ptr %.079.i21.i, align 4, !tbaa !247
  %i.bm = getelementptr inbounds nuw i8, ptr %.079.i21.i, i64 4 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.010.i20.i, i64 4 ; 2 uses
  %.not.i22.i = icmp eq ptr %i.bm, %i.az
  br i1 %.not.i22.i, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit24.i, label %.lr.ph.i19.i, !llvm.loop !1660

_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit24.i: ; preds = %.lr.ph.i19.i, %middle.block271, %bb.d
  %.0.lcssa.i23.i = phi ptr [ %i.m, %bb.d ], [ %i.bf, %middle.block271 ], [ %i.bn, %.lr.ph.i19.i ]
  %.idx28.i = shl nsw i64 %i.b, 2                 ; 2 uses
  %i.bo = getelementptr inbounds i8, ptr %2, i64 %.idx28.i
  %.not10.i.i = icmp eq i64 %.idx27.i, %.idx28.i
  br i1 %.not10.i.i, label %.thread, label %.lr.ph.i25.i

.lr.ph.i25.i:                                     ; preds = %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit24.i, %.lr.ph.i25.i
  %.012.i.i = phi ptr [ %i.bs, %.lr.ph.i25.i ], [ %i.az, %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit24.i ] ; 3 uses
  %.0911.i.i = phi ptr [ %i.bt, %.lr.ph.i25.i ], [ %.0.lcssa.i23.i, %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit24.i ] ; 2 uses
  %i.bp = load i32, ptr %.012.i.i, align 4, !tbaa !247
  store i32 %i.bp, ptr %.0911.i.i, align 4, !tbaa !247
  store i32 0, ptr %.012.i.i, align 4, !tbaa !247
  %i.bq = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.br = add i32 %i.bq, 1
  store i32 %i.br, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.bs = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 4 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 4
  %.not.i26.i = icmp eq ptr %i.bs, %i.bo
  br i1 %.not.i26.i, label %.thread, label %.lr.ph.i25.i, !llvm.loop !39

.thread:                                          ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %.lr.ph.i25.i, %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit24.i, %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i
  store i64 %i.b, ptr %i.k, align 8, !tbaa !254
  br i1 %i.g, label %.lr.ph, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.sink.split

.thread.thread:                                   ; preds = %bb.a
  br i1 %i.g, label %.lr.ph, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.sink.split

.lr.ph:                                           ; preds = %.thread.thread, %.thread
  %i.bu = getelementptr inbounds nuw i8, ptr %6, i64 8
  %7 = shl i64 %3, 2
  %scevgep = getelementptr i8, ptr %2, i64 %7     ; 2 uses
  %i.bv = shl i64 %3, 2
  %i.bw = add i64 %i.bv, -4
  %i.bx = shl i64 %3, 2
  %invariant.op = sub i64 -4, %i.bx
  br label %bb.e

._crit_edge:                                      ; preds = %bb.t
  %i.by = select i1 %.1, i1 %i.cj, i1 false       ; 2 uses
  %spec.select = select i1 %.1, i64 %.1.i, i64 0  ; 2 uses
  store i64 %spec.select, ptr %5, align 8, !tbaa !223
  %i.bz = sub i64 %i.f, %spec.select
  store i64 %i.bz, ptr %1, align 8, !tbaa !223
  br i1 %or.cond188, label %bb.u, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit

bb.e:                                             ; preds = %.lr.ph, %bb.t
  %.0206 = phi i64 [ %4, %.lr.ph ], [ %i.cc, %bb.t ] ; 5 uses
  %.0130205 = phi i64 [ 0, %.lr.ph ], [ %i.hj, %bb.t ] ; 3 uses
  %.0131204 = phi i1 [ true, %.lr.ph ], [ %.1, %bb.t ]
  %.0132203 = phi i64 [ 0, %.lr.ph ], [ %.1.i, %bb.t ]
  %.0133202 = phi i64 [ %4, %.lr.ph ], [ %spec.select15.i, %bb.t ] ; 12 uses
  %.0134201 = phi i1 [ true, %.lr.ph ], [ %i.cj, %bb.t ]
  %i.ca = load i64, ptr %5, align 8, !tbaa !223   ; 2 uses
  %i.cb = load i64, ptr %1, align 8, !tbaa !223   ; 4 uses
  %i.cc = shl i64 %.0206, 1                       ; 6 uses
  %.not.i144 = icmp eq i64 %i.ca, 0
  br i1 %.not.i144, label %bb.f, label %_ZN5boost7movelib15detail_adaptive18lblock_for_combineImEET_S3_S3_S3_Rb.exit

bb.f:                                             ; preds = %bb.e
  %i.cd = lshr i64 %i.cb, 1                       ; 3 uses
  %i.ce = sub nuw i64 %i.cb, %i.cd                ; 2 uses
  %i.cf = icmp ugt i64 %i.ce, 3
  br i1 %i.cf, label %bb.g, label %.critedge.i

bb.g:                                             ; preds = %bb.f
  %i.cg = udiv i64 %i.cc, %i.cd
  %.not193 = icmp ult i64 %i.ce, %i.cg
  br i1 %.not193, label %.critedge.i, label %_ZN5boost7movelib15detail_adaptive18lblock_for_combineImEET_S3_S3_S3_Rb.exit

.critedge.i:                                      ; preds = %bb.f, %bb.g
  %i.ch = udiv i64 %i.cc, %i.cb
  br label %_ZN5boost7movelib15detail_adaptive18lblock_for_combineImEET_S3_S3_S3_Rb.exit

_ZN5boost7movelib15detail_adaptive18lblock_for_combineImEET_S3_S3_S3_Rb.exit: ; preds = %bb.e, %bb.g, %.critedge.i
  %.1 = phi i1 [ true, %bb.g ], [ false, %.critedge.i ], [ true, %bb.e ] ; 10 uses
  %.1.i = phi i64 [ %i.cd, %bb.g ], [ %i.ch, %.critedge.i ], [ %i.ca, %bb.e ] ; 11 uses
  %i.ci = and i64 %.0130205, 1
  %i.cj = icmp eq i64 %i.ci, 0                    ; 9 uses
  %i.ck = urem i64 %i.d, %i.cc                    ; 2 uses
  %.not.i145 = icmp ugt i64 %i.ck, %.0206
  %i.cl = select i1 %.not.i145, i64 0, i64 %i.ck  ; 5 uses
  %spec.select15.i = sub i64 %i.d, %i.cl          ; 5 uses
  %i.cm = icmp ne i64 %.0130205, 0
  %or.cond = and i1 %i.cm, %.0131204
  %or.cond3 = select i1 %or.cond, i1 %.0134201, i1 false
  br i1 %or.cond3, label %bb.h, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container4test24movable_and_copyable_intEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit

bb.h:                                             ; preds = %_ZN5boost7movelib15detail_adaptive18lblock_for_combineImEET_S3_S3_S3_Rb.exit
  %.not = xor i1 %i.cj, true
  %or.cond5 = and i1 %.1, %.not
  br i1 %or.cond5, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cn = sub i64 0, %.0132203
  %i.co = getelementptr [4 x i8], ptr %i.c, i64 %i.cn ; 5 uses
  %.not8.i.i146 = icmp eq i64 %.0133202, 0        ; 2 uses
  br i1 %or.cond188, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  br i1 %.not8.i.i146, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container4test24movable_and_copyable_intEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.j
  %i.cp = getelementptr [4 x i8], ptr %i.c, i64 %.0133202 ; 5 uses
  %.idx13.i = shl i64 %.0133202, 2                ; 2 uses
  %i.cq = getelementptr i8, ptr %i.co, i64 %.idx13.i ; 5 uses
  %i.cr = add i64 %.idx13.i, -4                   ; 2 uses
  %i.cs = lshr exact i64 %i.cr, 2
  %i.ct = add nuw nsw i64 %i.cs, 1                ; 2 uses
  %min.iters.check328 = icmp ult i64 %i.cr, 28
  br i1 %min.iters.check328, label %.lr.ph.i.i148.preheader, label %vector.memcheck329

vector.memcheck329:                               ; preds = %.lr.ph.i.preheader.i
  %bound0330 = icmp ult ptr %i.c, %i.cq
  %bound1331 = icmp ult ptr %i.co, %i.cp
  %found.conflict332 = and i1 %bound0330, %bound1331
  br i1 %found.conflict332, label %.lr.ph.i.i148.preheader, label %vector.ph333

vector.ph333:                                     ; preds = %vector.memcheck329
  %n.vec334 = and i64 %i.ct, 9223372036854775800  ; 3 uses
  %i.cu = mul i64 %n.vec334, -4                   ; 2 uses
  %i.cv = getelementptr i8, ptr %i.cp, i64 %i.cu
  %i.cw = getelementptr i8, ptr %i.cq, i64 %i.cu
  br label %vector.body335

vector.body335:                                   ; preds = %vector.body335, %vector.ph333
  %index336 = phi i64 [ 0, %vector.ph333 ], [ %index.next341, %vector.body335 ] ; 2 uses
  %i.cx = mul i64 %index336, -4                   ; 2 uses
  %next.gep337 = getelementptr i8, ptr %i.cp, i64 %i.cx ; 2 uses
  %next.gep338 = getelementptr i8, ptr %i.cq, i64 %i.cx ; 2 uses
  %i.cy = getelementptr inbounds i8, ptr %next.gep338, i64 -16 ; 2 uses
  %i.cz = getelementptr inbounds i8, ptr %next.gep338, i64 -32 ; 2 uses
  %wide.load339 = load <4 x i32>, ptr %i.cy, align 4, !tbaa !247, !alias.scope !1691
  %wide.load340 = load <4 x i32>, ptr %i.cz, align 4, !tbaa !247, !alias.scope !1691
  %i.da = getelementptr inbounds i8, ptr %next.gep337, i64 -16
  %i.db = getelementptr inbounds i8, ptr %next.gep337, i64 -32
  store <4 x i32> %wide.load339, ptr %i.da, align 4, !tbaa !247, !alias.scope !1692, !noalias !1691
  store <4 x i32> %wide.load340, ptr %i.db, align 4, !tbaa !247, !alias.scope !1692, !noalias !1691
  store <4 x i32> zeroinitializer, ptr %i.cy, align 4, !tbaa !247, !alias.scope !1691
  store <4 x i32> zeroinitializer, ptr %i.cz, align 4, !tbaa !247, !alias.scope !1691
  %index.next341 = add nuw i64 %index336, 8       ; 2 uses
  %i.dc = icmp eq i64 %index.next341, %n.vec334
  br i1 %i.dc, label %middle.block342, label %vector.body335, !llvm.loop !1664

middle.block342:                                  ; preds = %vector.body335
  %cmp.n343 = icmp eq i64 %i.ct, %n.vec334
  br i1 %cmp.n343, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container4test24movable_and_copyable_intEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit, label %.lr.ph.i.i148.preheader

.lr.ph.i.i148.preheader:                          ; preds = %vector.memcheck329, %.lr.ph.i.preheader.i, %middle.block342
  %.010.i.i149.ph = phi ptr [ %i.cp, %vector.memcheck329 ], [ %i.cp, %.lr.ph.i.preheader.i ], [ %i.cv, %middle.block342 ]
  %.079.i.i150.ph = phi ptr [ %i.cq, %vector.memcheck329 ], [ %i.cq, %.lr.ph.i.preheader.i ], [ %i.cw, %middle.block342 ]
  br label %.lr.ph.i.i148

.lr.ph.i.i148:                                    ; preds = %.lr.ph.i.i148.preheader, %.lr.ph.i.i148
  %.010.i.i149 = phi ptr [ %i.de, %.lr.ph.i.i148 ], [ %.010.i.i149.ph, %.lr.ph.i.i148.preheader ]
  %.079.i.i150 = phi ptr [ %i.dd, %.lr.ph.i.i148 ], [ %.079.i.i150.ph, %.lr.ph.i.i148.preheader ]
  %i.dd = getelementptr inbounds i8, ptr %.079.i.i150, i64 -4 ; 4 uses
  %i.de = getelementptr inbounds i8, ptr %.010.i.i149, i64 -4 ; 2 uses
  %i.df = load i32, ptr %i.dd, align 4, !tbaa !247
  store i32 %i.df, ptr %i.de, align 4, !tbaa !247
  store i32 0, ptr %i.dd, align 4, !tbaa !247
  %.not.i.i151 = icmp eq ptr %i.co, %i.dd
  br i1 %.not.i.i151, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container4test24movable_and_copyable_intEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit, label %.lr.ph.i.i148, !llvm.loop !1665

bb.k:                                             ; preds = %bb.i
  br i1 %.not8.i.i146, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container4test24movable_and_copyable_intEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit, label %.lr.ph.i10.preheader.i

.lr.ph.i10.preheader.i:                           ; preds = %bb.k
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.0133202 ; 2 uses
  %.idx.i147 = shl i64 %.0133202, 2               ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.co, i64 %.idx.i147 ; 2 uses
  %i.di = add i64 %.idx.i147, -4                  ; 2 uses
  %i.dj = and i64 %i.di, 4
  %lcmp.mod407.not.not = icmp eq i64 %i.dj, 0
  br i1 %lcmp.mod407.not.not, label %.lr.ph.i10.i.prol, label %.lr.ph.i10.i.prol.loopexit

.lr.ph.i10.i.prol:                                ; preds = %.lr.ph.i10.preheader.i
  %i.dk = getelementptr inbounds i8, ptr %i.dh, i64 -4 ; 4 uses
  %i.dl = getelementptr inbounds i8, ptr %i.dg, i64 -4 ; 3 uses
  %i.dm = load i32, ptr %i.dk, align 4, !tbaa !247
  store i32 0, ptr %i.dk, align 4, !tbaa !247
  %i.dn = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.do = add i32 %i.dn, 1
  store i32 %i.do, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.dp = load i32, ptr %i.dl, align 4, !tbaa !247
  store i32 %i.dp, ptr %i.dk, align 4, !tbaa !247
  store i32 %i.dm, ptr %i.dl, align 4, !tbaa !247
  %i.dq = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.dr = add i32 %i.dq, -1
  store i32 %i.dr, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  br label %.lr.ph.i10.i.prol.loopexit

.lr.ph.i10.i.prol.loopexit:                       ; preds = %.lr.ph.i10.i.prol, %.lr.ph.i10.preheader.i
  %.08.i.i.unr = phi ptr [ %i.dg, %.lr.ph.i10.preheader.i ], [ %i.dl, %.lr.ph.i10.i.prol ]
  %.057.i.i.unr = phi ptr [ %i.dh, %.lr.ph.i10.preheader.i ], [ %i.dk, %.lr.ph.i10.i.prol ]
  %i.ds = icmp eq i64 %i.di, 0
  br i1 %i.ds, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container4test24movable_and_copyable_intEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit, label %.lr.ph.i10.i

.lr.ph.i10.i:                                     ; preds = %.lr.ph.i10.i.prol.loopexit, %.lr.ph.i10.i
  %.08.i.i = phi ptr [ %i.ec, %.lr.ph.i10.i ], [ %.08.i.i.unr, %.lr.ph.i10.i.prol.loopexit ] ; 2 uses
  %.057.i.i = phi ptr [ %i.eb, %.lr.ph.i10.i ], [ %.057.i.i.unr, %.lr.ph.i10.i.prol.loopexit ] ; 2 uses
  %i.dt = getelementptr inbounds i8, ptr %.057.i.i, i64 -4 ; 3 uses
  %i.du = getelementptr inbounds i8, ptr %.08.i.i, i64 -4 ; 2 uses
  %i.dv = load i32, ptr %i.dt, align 4, !tbaa !247
  store i32 0, ptr %i.dt, align 4, !tbaa !247
  %i.dw = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.dx = add i32 %i.dw, 1
  store i32 %i.dx, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.dy = load i32, ptr %i.du, align 4, !tbaa !247
  store i32 %i.dy, ptr %i.dt, align 4, !tbaa !247
  store i32 %i.dv, ptr %i.du, align 4, !tbaa !247
  %i.dz = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.ea = add i32 %i.dz, -1
  store i32 %i.ea, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.eb = getelementptr inbounds i8, ptr %.057.i.i, i64 -8 ; 5 uses
  %i.ec = getelementptr inbounds i8, ptr %.08.i.i, i64 -8 ; 3 uses
  %i.ed = load i32, ptr %i.eb, align 4, !tbaa !247
  store i32 0, ptr %i.eb, align 4, !tbaa !247
  %i.ee = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.ef = add i32 %i.ee, 1
  store i32 %i.ef, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.eg = load i32, ptr %i.ec, align 4, !tbaa !247
  store i32 %i.eg, ptr %i.eb, align 4, !tbaa !247
  store i32 %i.ed, ptr %i.ec, align 4, !tbaa !247
  %i.eh = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.ei = add i32 %i.eh, -1
  store i32 %i.ei, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %.not.i11.i.1 = icmp eq ptr %i.co, %i.eb
  br i1 %.not.i11.i.1, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container4test24movable_and_copyable_intEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit, label %.lr.ph.i10.i, !llvm.loop !40

bb.l:                                             ; preds = %bb.h
  %i.ej = getelementptr [4 x i8], ptr %i.c, i64 %.0133202 ; 14 uses
  %i.ek = sub i64 0, %.1.i
  %i.el = getelementptr [4 x i8], ptr %i.ej, i64 %i.ek ; 7 uses
  %i.em = icmp ugt i64 %.0133202, %spec.select15.i
  br i1 %i.em, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.en = sub nuw i64 %.0133202, %spec.select15.i ; 2 uses
  %i.eo = sub i64 0, %i.en
  %i.ep = getelementptr [4 x i8], ptr %i.el, i64 %i.eo ; 4 uses
  %.idx13.i160 = shl i64 %i.en, 2
  %i.eq = getelementptr i8, ptr %i.ep, i64 %.idx13.i160 ; 6 uses
  br i1 %or.cond188, label %.lr.ph.i.i161.preheader, label %.lr.ph.i10.i155

.lr.ph.i.i161.preheader:                          ; preds = %bb.m
  %i.er = add i64 %i.cl, %.0133202
  %i.es = add i64 %i.er, %i.b
  %i.et = shl i64 %i.es, 2
  %.reass = add i64 %i.et, %invariant.op          ; 2 uses
  %i.eu = lshr exact i64 %.reass, 2
  %i.ev = add nuw nsw i64 %i.eu, 1                ; 2 uses
  %min.iters.check281 = icmp ult i64 %.reass, 28
  br i1 %min.iters.check281, label %.lr.ph.i.i161.preheader396, label %vector.memcheck282

vector.memcheck282:                               ; preds = %.lr.ph.i.i161.preheader
  %8 = mul i64 %i.cl, -4
  %i.ew = getelementptr i8, ptr %scevgep, i64 %8
  %bound0283 = icmp ult ptr %i.ew, %i.eq
  %bound1284 = icmp ult ptr %i.ep, %i.ej
  %found.conflict285 = and i1 %bound0283, %bound1284
  br i1 %found.conflict285, label %.lr.ph.i.i161.preheader396, label %vector.ph286

vector.ph286:                                     ; preds = %vector.memcheck282
  %n.vec287 = and i64 %i.ev, 9223372036854775800  ; 3 uses
  %i.ex = mul i64 %n.vec287, -4                   ; 2 uses
  %i.ey = getelementptr i8, ptr %i.ej, i64 %i.ex
  %i.ez = getelementptr i8, ptr %i.eq, i64 %i.ex
  br label %vector.body288

vector.body288:                                   ; preds = %vector.body288, %vector.ph286
  %index289 = phi i64 [ 0, %vector.ph286 ], [ %index.next294, %vector.body288 ] ; 2 uses
  %i.fa = mul i64 %index289, -4                   ; 2 uses
  %next.gep290 = getelementptr i8, ptr %i.ej, i64 %i.fa ; 2 uses
  %next.gep291 = getelementptr i8, ptr %i.eq, i64 %i.fa ; 2 uses
  %i.fb = getelementptr inbounds i8, ptr %next.gep291, i64 -16 ; 2 uses
  %i.fc = getelementptr inbounds i8, ptr %next.gep291, i64 -32 ; 2 uses
  %wide.load292 = load <4 x i32>, ptr %i.fb, align 4, !tbaa !247, !alias.scope !1693
  %wide.load293 = load <4 x i32>, ptr %i.fc, align 4, !tbaa !247, !alias.scope !1693
  %i.fd = getelementptr inbounds i8, ptr %next.gep290, i64 -16
  %i.fe = getelementptr inbounds i8, ptr %next.gep290, i64 -32
  store <4 x i32> %wide.load292, ptr %i.fd, align 4, !tbaa !247, !alias.scope !1694, !noalias !1693
  store <4 x i32> %wide.load293, ptr %i.fe, align 4, !tbaa !247, !alias.scope !1694, !noalias !1693
  store <4 x i32> zeroinitializer, ptr %i.fb, align 4, !tbaa !247, !alias.scope !1693
  store <4 x i32> zeroinitializer, ptr %i.fc, align 4, !tbaa !247, !alias.scope !1693
  %index.next294 = add nuw i64 %index289, 8       ; 2 uses
  %i.ff = icmp eq i64 %index.next294, %n.vec287
  br i1 %i.ff, label %middle.block295, label %vector.body288, !llvm.loop !1669

middle.block295:                                  ; preds = %vector.body288
  %cmp.n296 = icmp eq i64 %i.ev, %n.vec287
  br i1 %cmp.n296, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container4test24movable_and_copyable_intEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit, label %.lr.ph.i.i161.preheader396

.lr.ph.i.i161.preheader396:                       ; preds = %vector.memcheck282, %.lr.ph.i.i161.preheader, %middle.block295
  %.010.i.i162.ph = phi ptr [ %i.ej, %vector.memcheck282 ], [ %i.ej, %.lr.ph.i.i161.preheader ], [ %i.ey, %middle.block295 ]
  %.079.i.i163.ph = phi ptr [ %i.eq, %vector.memcheck282 ], [ %i.eq, %.lr.ph.i.i161.preheader ], [ %i.ez, %middle.block295 ]
  br label %.lr.ph.i.i161

.lr.ph.i.i161:                                    ; preds = %.lr.ph.i.i161.preheader396, %.lr.ph.i.i161
  %.010.i.i162 = phi ptr [ %i.fh, %.lr.ph.i.i161 ], [ %.010.i.i162.ph, %.lr.ph.i.i161.preheader396 ]
  %.079.i.i163 = phi ptr [ %i.fg, %.lr.ph.i.i161 ], [ %.079.i.i163.ph, %.lr.ph.i.i161.preheader396 ]
  %i.fg = getelementptr inbounds i8, ptr %.079.i.i163, i64 -4 ; 4 uses
  %i.fh = getelementptr inbounds i8, ptr %.010.i.i162, i64 -4 ; 2 uses
  %i.fi = load i32, ptr %i.fg, align 4, !tbaa !247
  store i32 %i.fi, ptr %i.fh, align 4, !tbaa !247
  store i32 0, ptr %i.fg, align 4, !tbaa !247
  %.not.i.i164 = icmp eq ptr %i.ep, %i.fg
  br i1 %.not.i.i164, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container4test24movable_and_copyable_intEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit, label %.lr.ph.i.i161, !llvm.loop !1670

.lr.ph.i10.i155:                                  ; preds = %bb.m, %.lr.ph.i10.i155
  %.08.i.i156 = phi ptr [ %i.fk, %.lr.ph.i10.i155 ], [ %i.ej, %bb.m ]
  %.057.i.i157 = phi ptr [ %i.fj, %.lr.ph.i10.i155 ], [ %i.eq, %bb.m ]
  %i.fj = getelementptr inbounds i8, ptr %.057.i.i157, i64 -4 ; 5 uses
  %i.fk = getelementptr inbounds i8, ptr %.08.i.i156, i64 -4 ; 3 uses
  %i.fl = load i32, ptr %i.fj, align 4, !tbaa !247
  store i32 0, ptr %i.fj, align 4, !tbaa !247
  %i.fm = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.fn = add i32 %i.fm, 1
  store i32 %i.fn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.fo = load i32, ptr %i.fk, align 4, !tbaa !247
  store i32 %i.fo, ptr %i.fj, align 4, !tbaa !247
  store i32 %i.fl, ptr %i.fk, align 4, !tbaa !247
  %i.fp = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.fq = add i32 %i.fp, -1
  store i32 %i.fq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %.not.i11.i158 = icmp eq ptr %i.ep, %i.fj
  br i1 %.not.i11.i158, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container4test24movable_and_copyable_intEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit, label %.lr.ph.i10.i155, !llvm.loop !40

bb.n:                                             ; preds = %bb.l
  %i.fr = icmp ult i64 %.0133202, %spec.select15.i
  br i1 %i.fr, label %bb.o, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container4test24movable_and_copyable_intEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit

bb.o:                                             ; preds = %bb.n
  %i.fs = sub nuw i64 %spec.select15.i, %.0133202
  %.idx14.i = shl i64 %i.fs, 2
  %i.ft = getelementptr i8, ptr %i.ej, i64 %.idx14.i ; 3 uses
  br i1 %or.cond188, label %.lr.ph.i.i168.preheader, label %.lr.ph.i9.i

.lr.ph.i.i168.preheader:                          ; preds = %bb.o
  %i.fu = add i64 %i.cl, %.0133202
  %i.fv = add i64 %i.fu, %i.b
  %i.fw = shl i64 %i.fv, 2
  %i.fx = sub i64 %i.bw, %i.fw                    ; 2 uses
  %i.fy = lshr exact i64 %i.fx, 2
  %i.fz = add nuw nsw i64 %i.fy, 1                ; 2 uses
  %min.iters.check305 = icmp ult i64 %i.fx, 28
  br i1 %min.iters.check305, label %.lr.ph.i.i168.preheader398, label %vector.memcheck306

vector.memcheck306:                               ; preds = %.lr.ph.i.i168.preheader
  %i.ga = add i64 %i.cl, %.1.i
  %9 = mul i64 %i.ga, -4
  %i.gb = getelementptr i8, ptr %scevgep, i64 %9
  %bound0307 = icmp ult ptr %i.el, %i.ft
  %bound1308 = icmp ult ptr %i.ej, %i.gb
  %found.conflict309 = and i1 %bound0307, %bound1308
  br i1 %found.conflict309, label %.lr.ph.i.i168.preheader398, label %vector.ph310

vector.ph310:                                     ; preds = %vector.memcheck306
  %n.vec311 = and i64 %i.fz, 9223372036854775800  ; 3 uses
  %i.gc = shl i64 %n.vec311, 2                    ; 2 uses
  %i.gd = getelementptr i8, ptr %i.el, i64 %i.gc
  %i.ge = getelementptr i8, ptr %i.ej, i64 %i.gc
  br label %vector.body312

vector.body312:                                   ; preds = %vector.body312, %vector.ph310
  %index313 = phi i64 [ 0, %vector.ph310 ], [ %index.next318, %vector.body312 ] ; 2 uses
  %i.gf = shl i64 %index313, 2                    ; 2 uses
  %next.gep314 = getelementptr i8, ptr %i.el, i64 %i.gf ; 2 uses
  %next.gep315 = getelementptr i8, ptr %i.ej, i64 %i.gf ; 3 uses
  %i.gg = getelementptr i8, ptr %next.gep315, i64 16 ; 2 uses
  %wide.load316 = load <4 x i32>, ptr %next.gep315, align 4, !tbaa !247, !alias.scope !1695
  %wide.load317 = load <4 x i32>, ptr %i.gg, align 4, !tbaa !247, !alias.scope !1695
  %i.gh = getelementptr i8, ptr %next.gep314, i64 16
  store <4 x i32> %wide.load316, ptr %next.gep314, align 4, !tbaa !247, !alias.scope !1696, !noalias !1695
  store <4 x i32> %wide.load317, ptr %i.gh, align 4, !tbaa !247, !alias.scope !1696, !noalias !1695
  store <4 x i32> zeroinitializer, ptr %next.gep315, align 4, !tbaa !247, !alias.scope !1695
  store <4 x i32> zeroinitializer, ptr %i.gg, align 4, !tbaa !247, !alias.scope !1695
  %index.next318 = add nuw i64 %index313, 8       ; 2 uses
  %i.gi = icmp eq i64 %index.next318, %n.vec311
  br i1 %i.gi, label %middle.block319, label %vector.body312, !llvm.loop !1674

middle.block319:                                  ; preds = %vector.body312
  %cmp.n320 = icmp eq i64 %i.fz, %n.vec311
  br i1 %cmp.n320, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container4test24movable_and_copyable_intEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit, label %.lr.ph.i.i168.preheader398

.lr.ph.i.i168.preheader398:                       ; preds = %vector.memcheck306, %.lr.ph.i.i168.preheader, %middle.block319
  %.010.i.i169.ph = phi ptr [ %i.el, %vector.memcheck306 ], [ %i.el, %.lr.ph.i.i168.preheader ], [ %i.gd, %middle.block319 ]
  %.079.i.i170.ph = phi ptr [ %i.ej, %vector.memcheck306 ], [ %i.ej, %.lr.ph.i.i168.preheader ], [ %i.ge, %middle.block319 ]
  br label %.lr.ph.i.i168

.lr.ph.i.i168:                                    ; preds = %.lr.ph.i.i168.preheader398, %.lr.ph.i.i168
  %.010.i.i169 = phi ptr [ %i.gl, %.lr.ph.i.i168 ], [ %.010.i.i169.ph, %.lr.ph.i.i168.preheader398 ] ; 2 uses
  %.079.i.i170 = phi ptr [ %i.gk, %.lr.ph.i.i168 ], [ %.079.i.i170.ph, %.lr.ph.i.i168.preheader398 ] ; 3 uses
  %i.gj = load i32, ptr %.079.i.i170, align 4, !tbaa !247
  store i32 %i.gj, ptr %.010.i.i169, align 4, !tbaa !247
  store i32 0, ptr %.079.i.i170, align 4, !tbaa !247
  %i.gk = getelementptr inbounds nuw i8, ptr %.079.i.i170, i64 4 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.010.i.i169, i64 4
  %.not.i.i171 = icmp eq ptr %i.gk, %i.ft
  br i1 %.not.i.i171, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container4test24movable_and_copyable_intEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit, label %.lr.ph.i.i168, !llvm.loop !1675

.lr.ph.i9.i:                                      ; preds = %bb.o, %.lr.ph.i9.i
  %.010.i10.i = phi ptr [ %i.gt, %.lr.ph.i9.i ], [ %i.el, %bb.o ] ; 3 uses
  %.079.i11.i = phi ptr [ %i.gs, %.lr.ph.i9.i ], [ %i.ej, %bb.o ] ; 4 uses
  %i.gm = load i32, ptr %.079.i11.i, align 4, !tbaa !247
  store i32 0, ptr %.079.i11.i, align 4, !tbaa !247
  %i.gn = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.go = add i32 %i.gn, 1
  store i32 %i.go, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.gp = load i32, ptr %.010.i10.i, align 4, !tbaa !247
  store i32 %i.gp, ptr %.079.i11.i, align 4, !tbaa !247
  store i32 %i.gm, ptr %.010.i10.i, align 4, !tbaa !247
  %i.gq = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.gr = add i32 %i.gq, -1
  store i32 %i.gr, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.gs = getelementptr inbounds nuw i8, ptr %.079.i11.i, i64 4 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.010.i10.i, i64 4
  %.not.i12.i = icmp eq ptr %i.gs, %i.ft
  br i1 %.not.i12.i, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container4test24movable_and_copyable_intEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit, label %.lr.ph.i9.i, !llvm.loop !41

_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container4test24movable_and_copyable_intEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit: ; preds = %.lr.ph.i10.i.prol.loopexit, %.lr.ph.i10.i, %.lr.ph.i.i148, %.lr.ph.i9.i, %.lr.ph.i.i168, %.lr.ph.i10.i155, %.lr.ph.i.i161, %middle.block342, %middle.block319, %middle.block295, %bb.k, %bb.j, %bb.n, %_ZN5boost7movelib15detail_adaptive18lblock_for_combineImEET_S3_S3_S3_Rb.exit
  %.not140 = icmp eq i64 %i.cb, 0
  br i1 %.not140, label %bb.s, label %bb.p

bb.p:                                             ; preds = %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container4test24movable_and_copyable_intEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit
  %i.gu = udiv i64 %i.cc, %.1.i
  %i.gv = icmp ugt i64 %i.gu, 256
  br i1 %i.gv, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %.not6 = xor i1 %.1, true
  %or.cond8 = select i1 %.not6, i1 true, i1 %i.cj
  %i.gw = sub i64 0, %.1.i
  %.idx142 = select i1 %or.cond8, i64 0, i64 %i.gw
  %i.gx = getelementptr inbounds [4 x i8], ptr %i.c, i64 %.idx142
  call void @_ZN5boost7movelib15detail_adaptive28adaptive_sort_combine_blocksIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEES6_SE_NS0_13adaptive_xbufIS5_S6_mEEEEvT_T0_T1_NS0_9iter_sizeISJ_E4typeESM_SM_bbRT3_T2_b(ptr noundef %0, ptr noundef %i.gx, i64 noundef %i.d, i64 noundef %.0206, i64 noundef %.1.i, i1 noundef zeroext %.1, i1 noundef zeroext %or.cond188, ptr noundef nonnull align 8 dereferenceable(24) %6, i1 noundef zeroext %i.cj)
  br label %bb.t

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %.not9 = xor i1 %.1, true
  %or.cond11 = select i1 %.not9, i1 true, i1 %i.cj
  %i.gy = sub i64 0, %.1.i
  %.idx141 = select i1 %or.cond11, i64 0, i64 %i.gy
  %i.gz = getelementptr inbounds [4 x i8], ptr %i.c, i64 %.idx141
  call void @_ZN5boost7movelib15detail_adaptive28adaptive_sort_combine_blocksIPhNS1_4lessEPNS_9container4test24movable_and_copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEENS0_13adaptive_xbufIS7_S8_mEEEEvT_T0_T1_NS0_9iter_sizeISL_E4typeESO_SO_bbRT3_T2_b(ptr noundef nonnull %i.a, ptr noundef %i.gz, i64 noundef %i.d, i64 noundef %.0206, i64 noundef %.1.i, i1 noundef zeroext %.1, i1 noundef zeroext %or.cond188, ptr noundef nonnull align 8 dereferenceable(24) %6, i1 noundef zeroext %i.cj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.t

bb.s:                                             ; preds = %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container4test24movable_and_copyable_intEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit
  %i.ha = load i64, ptr %i.bu, align 8, !tbaa !254
  %i.hb = load ptr, ptr %6, align 8, !tbaa !255
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.hb, i64 %i.ha
  %i.hd = ptrtoint ptr %i.hc to i64
  %i.he = add i64 %i.hd, 7
  %i.hf = and i64 %i.he, -8
  %i.hg = inttoptr i64 %i.hf to ptr
  %.not12 = xor i1 %.1, true
  %or.cond14 = select i1 %.not12, i1 true, i1 %i.cj
  %i.hh = sub i64 0, %.1.i
  %.idx = select i1 %or.cond14, i64 0, i64 %i.hh
  %i.hi = getelementptr inbounds [4 x i8], ptr %i.c, i64 %.idx
  call void @_ZN5boost7movelib15detail_adaptive28adaptive_sort_combine_blocksIPmNS1_4lessEPNS_9container4test24movable_and_copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEENS0_13adaptive_xbufIS7_S8_mEEEEvT_T0_T1_NS0_9iter_sizeISL_E4typeESO_SO_bbRT3_T2_b(ptr noundef %i.hg, ptr noundef %i.hi, i64 noundef %i.d, i64 noundef %.0206, i64 noundef %.1.i, i1 noundef zeroext %.1, i1 noundef zeroext %or.cond188, ptr noundef nonnull align 8 dereferenceable(24) %6, i1 noundef zeroext %i.cj)
  br label %bb.t

bb.t:                                             ; preds = %bb.q, %bb.r, %bb.s
  %i.hj = add i64 %.0130205, 1
  %i.hk = icmp ugt i64 %i.d, %i.cc
  br i1 %i.hk, label %bb.e, label %._crit_edge, !llvm.loop !1676

bb.u:                                             ; preds = %._crit_edge
  %i.hl = load ptr, ptr %6, align 8, !tbaa !255   ; 11 uses
  %i.hm = load i64, ptr %5, align 8, !tbaa !223   ; 3 uses
  %.idx192 = shl i64 %i.hm, 2                     ; 4 uses
  %i.hn = getelementptr i8, ptr %i.hl, i64 %.idx192 ; 4 uses
  %.not8.i = icmp eq i64 %i.hm, 0                 ; 2 uses
  br i1 %i.by, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  br i1 %.not8.i, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit, label %.lr.ph.i172.preheader

.lr.ph.i172.preheader:                            ; preds = %bb.v
  %i.ho = getelementptr [4 x i8], ptr %2, i64 %i.d ; 5 uses
  %i.hp = add i64 %.idx192, -4                    ; 2 uses
  %i.hq = lshr exact i64 %i.hp, 2
  %i.hr = add nuw nsw i64 %i.hq, 1                ; 2 uses
  %min.iters.check374 = icmp ult i64 %i.hp, 76
  br i1 %min.iters.check374, label %.lr.ph.i172.preheader393, label %vector.memcheck375

vector.memcheck375:                               ; preds = %.lr.ph.i172.preheader
  %.idx192392 = add i64 %i.hm, %3
  %i.hs = sub i64 %.idx192392, %i.b
  %i.ht = shl i64 %i.hs, 2
  %i.hu = getelementptr i8, ptr %2, i64 %i.ht
  %bound0376 = icmp ult ptr %i.ho, %i.hn
  %bound1377 = icmp ult ptr %i.hl, %i.hu
  %found.conflict378 = and i1 %bound0376, %bound1377
  br i1 %found.conflict378, label %.lr.ph.i172.preheader393, label %vector.ph379

vector.ph379:                                     ; preds = %vector.memcheck375
  %n.vec380 = and i64 %i.hr, 9223372036854775800  ; 3 uses
  %i.hv = shl i64 %n.vec380, 2                    ; 2 uses
  %i.hw = getelementptr i8, ptr %i.ho, i64 %i.hv
  %i.hx = getelementptr i8, ptr %i.hl, i64 %i.hv
  br label %vector.body381

vector.body381:                                   ; preds = %vector.body381, %vector.ph379
  %index382 = phi i64 [ 0, %vector.ph379 ], [ %index.next387, %vector.body381 ] ; 2 uses
  %i.hy = shl i64 %index382, 2                    ; 2 uses
  %next.gep383 = getelementptr i8, ptr %i.ho, i64 %i.hy ; 2 uses
  %next.gep384 = getelementptr i8, ptr %i.hl, i64 %i.hy ; 3 uses
  %i.hz = getelementptr i8, ptr %next.gep384, i64 16 ; 2 uses
  %wide.load385 = load <4 x i32>, ptr %next.gep384, align 4, !tbaa !247, !alias.scope !1697
  %wide.load386 = load <4 x i32>, ptr %i.hz, align 4, !tbaa !247, !alias.scope !1697
  %i.ia = getelementptr i8, ptr %next.gep383, i64 16
  store <4 x i32> %wide.load385, ptr %next.gep383, align 4, !tbaa !247, !alias.scope !1698, !noalias !1697
  store <4 x i32> %wide.load386, ptr %i.ia, align 4, !tbaa !247, !alias.scope !1698, !noalias !1697
  store <4 x i32> zeroinitializer, ptr %next.gep384, align 4, !tbaa !247, !alias.scope !1697
  store <4 x i32> zeroinitializer, ptr %i.hz, align 4, !tbaa !247, !alias.scope !1697
  %index.next387 = add nuw i64 %index382, 8       ; 2 uses
  %i.ib = icmp eq i64 %index.next387, %n.vec380
  br i1 %i.ib, label %middle.block388, label %vector.body381, !llvm.loop !1680

middle.block388:                                  ; preds = %vector.body381
  %cmp.n389 = icmp eq i64 %i.hr, %n.vec380
  br i1 %cmp.n389, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit, label %.lr.ph.i172.preheader393

.lr.ph.i172.preheader393:                         ; preds = %vector.memcheck375, %.lr.ph.i172.preheader, %middle.block388
  %.010.i.ph = phi ptr [ %i.ho, %vector.memcheck375 ], [ %i.ho, %.lr.ph.i172.preheader ], [ %i.hw, %middle.block388 ]
  %.079.i.ph = phi ptr [ %i.hl, %vector.memcheck375 ], [ %i.hl, %.lr.ph.i172.preheader ], [ %i.hx, %middle.block388 ]
  br label %.lr.ph.i172

.lr.ph.i172:                                      ; preds = %.lr.ph.i172.preheader393, %.lr.ph.i172
  %.010.i = phi ptr [ %i.ie, %.lr.ph.i172 ], [ %.010.i.ph, %.lr.ph.i172.preheader393 ] ; 2 uses
  %.079.i = phi ptr [ %i.id, %.lr.ph.i172 ], [ %.079.i.ph, %.lr.ph.i172.preheader393 ] ; 3 uses
  %i.ic = load i32, ptr %.079.i, align 4, !tbaa !247
  store i32 %i.ic, ptr %.010.i, align 4, !tbaa !247
  store i32 0, ptr %.079.i, align 4, !tbaa !247
  %i.id = getelementptr inbounds nuw i8, ptr %.079.i, i64 4 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %.010.i, i64 4
  %.not.i173 = icmp eq ptr %i.id, %i.hn
  br i1 %.not.i173, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit, label %.lr.ph.i172, !llvm.loop !1681

bb.w:                                             ; preds = %bb.u
  br i1 %.not8.i, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit, label %.lr.ph.i175.preheader

.lr.ph.i175.preheader:                            ; preds = %bb.w
  %i.if = add i64 %.idx192, -4                    ; 2 uses
  %i.ig = lshr exact i64 %i.if, 2
  %i.ih = add nuw nsw i64 %i.ig, 1                ; 2 uses
  %min.iters.check351 = icmp ult i64 %i.if, 28
  br i1 %min.iters.check351, label %.lr.ph.i175.preheader394, label %vector.memcheck352
end_hunk_0
begin_hunk_1_@_ZN5boost7movelib21merge_adaptive_ONlogNIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEES5_EEvT_SE_SE_T0_T1_NS0_9iter_sizeISE_E4typeE:bb.a
  %i.u = load i32, ptr %i.t, align 4, !tbaa !247
  store i32 %i.u, ptr %i.s, align 4, !tbaa !247
  store i32 0, ptr %i.t, align 4, !tbaa !247
  %storemerge6.in.i.lver.orig.epil = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %storemerge6.i.lver.orig.epil = add i32 %storemerge6.in.i.lver.orig.epil, 1
  store i32 %storemerge6.i.lver.orig.epil, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
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
  store i32 %load_initial, ptr %i.v, align 4, !tbaa !247
  store i32 0, ptr %i.w, align 4, !tbaa !247
  %storemerge6.in.i.epil = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %storemerge6.i.epil = add i32 %storemerge6.in.i.epil, 1
  store i32 %storemerge6.i.epil, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.epil.preheader, %.loopexit.loopexit41.unr-lcssa, %.lr.ph.i.lver.orig.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.c
  %storemerge.in.lcssa.i = phi i64 [ 0, %bb.c ], [ %storemerge13.i.lver.orig.epil.init, %.lr.ph.i.lver.orig.epil.preheader ], [ %storemerge.i.lver.orig, %.loopexit.loopexit.unr-lcssa ], [ %storemerge.i, %.loopexit.loopexit41.unr-lcssa ], [ %storemerge13.i.epil.init, %.lr.ph.i.epil.preheader ]
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %storemerge.in.lcssa.i ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !247
  store i32 %i.y, ptr %0, align 4, !tbaa !247
  store i32 0, ptr %i.x, align 4, !tbaa !247
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
  store i32 -2147483648, ptr %i.ah, align 4, !tbaa !247
  %i.ai = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.aj = add i32 %i.ai, -1
  store i32 %i.aj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.07.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  store i32 -2147483648, ptr %i.al, align 4, !tbaa !247
  %i.am = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.an = add i32 %i.am, -1
  store i32 %i.an, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.07.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i32 -2147483648, ptr %i.ap, align 4, !tbaa !247
  %i.aq = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.ar = add i32 %i.aq, -1
  store i32 %i.ar, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.07.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  store i32 -2147483648, ptr %i.at, align 4, !tbaa !247
  %i.au = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.av = add i32 %i.au, -1
  store i32 %i.av, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.aw = add nuw i64 %.07.i.i.i, 4               ; 2 uses
  %niter60.next.3 = add nuw i64 %niter60, 4       ; 2 uses
  %niter60.ncmp.3 = icmp eq i64 %niter60.next.3, %unroll_iter59
  br i1 %niter60.ncmp.3, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit.loopexit.unr-lcssa, label %.preheader.i.i.i, !llvm.loop !5

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
  store i32 -2147483648, ptr %i.az, align 4, !tbaa !247
  %i.ba = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.bb = add i32 %i.ba, -1
  store i32 %i.bb, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.07.i.i.i28
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  store i32 -2147483648, ptr %i.bd, align 4, !tbaa !247
  %i.be = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.bf = add i32 %i.be, -1
  store i32 %i.bf, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.07.i.i.i28
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i32 -2147483648, ptr %i.bh, align 4, !tbaa !247
  %i.bi = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.bj = add i32 %i.bi, -1
  store i32 %i.bj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.07.i.i.i28
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  store i32 -2147483648, ptr %i.bl, align 4, !tbaa !247
  %i.bm = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.bn = add i32 %i.bm, -1
  store i32 %i.bn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.bo = add nuw i64 %.07.i.i.i28, 4             ; 2 uses
  %niter54.next.3 = add nuw i64 %niter54, 4       ; 2 uses
  %niter54.ncmp.3 = icmp eq i64 %niter54.next.3, %unroll_iter53
  br i1 %niter54.ncmp.3, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit30.unr-lcssa, label %bb.d, !llvm.loop !5

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
  store i32 -2147483648, ptr %i.bp, align 4, !tbaa !247
  %i.bq = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.br = add i32 %i.bq, -1
  store i32 %i.br, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.bs = add nuw i64 %.07.i.i.i28.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter50
  br i1 %epil.iter.cmp.not, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit30, label %bb.e, !llvm.loop !2991

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
  store i32 -2147483648, ptr %i.ca, align 4, !tbaa !247
  %i.cb = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.cc = add i32 %i.cb, -1
  store i32 %i.cc, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.cd = add nuw i64 %.07.i.i.i.epil, 1
  %epil.iter56.next = add i64 %epil.iter56, 1     ; 2 uses
  %epil.iter56.cmp.not = icmp eq i64 %epil.iter56.next, %xtraiter55
  br i1 %epil.iter56.cmp.not, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit, label %.preheader.i.i.i.epil, !llvm.loop !2992

_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit: ; preds = %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit.loopexit.unr-lcssa, %.preheader.i.i.i.epil, %bb.a, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveIPNS_9container4test24movable_and_copyable_intES5_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_SE_NS0_9iter_sizeISE_E4typeESH_T0_SH_T1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %5 to i64                  ; 3 uses
  %7 = alloca %"class.boost::movelib::range_xbuf.66", align 8 ; 6 uses
  %i.b = icmp ne i64 %4, 0
  %i.c = icmp ne i64 %3, 0
  %or.cond104 = and i1 %i.c, %i.b
  br i1 %or.cond104, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.d = ptrtoint ptr %2 to i64
  %scevgep = getelementptr i8, ptr %5, i64 4      ; 4 uses
  %i.e = sub i64 -4, %i.a                         ; 2 uses
  %invariant.op = sub i64 -4, %i.a
  %invariant.op331 = sub i64 -4, %i.a
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib15rotate_adaptiveIPNS_9container4test24movable_and_copyable_intES5_EET_S6_S6_S6_NS0_9iter_sizeIS6_E4typeES9_T0_S9_.exit
  %.tr91108 = phi i64 [ %4, %.lr.ph ], [ %i.ex, %_ZN5boost7movelib15rotate_adaptiveIPNS_9container4test24movable_and_copyable_intES5_EET_S6_S6_S6_NS0_9iter_sizeIS6_E4typeES9_T0_S9_.exit ] ; 5 uses
  %.tr90107 = phi i64 [ %3, %.lr.ph ], [ %i.av, %_ZN5boost7movelib15rotate_adaptiveIPNS_9container4test24movable_and_copyable_intES5_EET_S6_S6_S6_NS0_9iter_sizeIS6_E4typeES9_T0_S9_.exit ] ; 6 uses
  %.tr88106 = phi ptr [ %1, %.lr.ph ], [ %.071, %_ZN5boost7movelib15rotate_adaptiveIPNS_9container4test24movable_and_copyable_intES5_EET_S6_S6_S6_NS0_9iter_sizeIS6_E4typeES9_T0_S9_.exit ] ; 37 uses
  %.tr105 = phi ptr [ %0, %.lr.ph ], [ %.0.i, %_ZN5boost7movelib15rotate_adaptiveIPNS_9container4test24movable_and_copyable_intES5_EET_S6_S6_S6_NS0_9iter_sizeIS6_E4typeES9_T0_S9_.exit ] ; 11 uses
  %.tr88106177 = ptrtoaddr ptr %.tr88106 to i64   ; 4 uses
  %.not = icmp ugt i64 %.tr90107, %6
  %.not76 = icmp ugt i64 %.tr91108, %6
  %or.cond77 = and i1 %.not, %.not76
  br i1 %or.cond77, label %bb.c, label %_ZN5boost7movelib14buffered_mergeIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_10range_xbufIS5_mNS0_7move_opEEEEEvT_SH_SH_T0_RT1_.exit

_ZN5boost7movelib14buffered_mergeIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_10range_xbufIS5_mNS0_7move_opEEEEEvT_SH_SH_T0_RT1_.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %6
  store ptr %5, ptr %7, align 8, !tbaa !340
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %5, ptr %i.g, align 8, !tbaa !341
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.f, ptr %i.h, align 8, !tbaa !342
  call void @_ZN5boost7movelib17op_buffered_mergeIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7move_opENS0_10range_xbufIS5_mSE_EEEEvT_SH_SH_T0_T1_RT2_(ptr noundef %.tr105, ptr noundef %.tr88106, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.i = add i64 %.tr91108, %.tr90107             ; 2 uses
  %i.j = icmp eq i64 %i.i, 2
  br i1 %i.j, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.k = load i32, ptr %.tr88106, align 4, !tbaa !247
  %i.l = load i32, ptr %.tr105, align 4, !tbaa !247 ; 2 uses
  %i.m = icmp slt i32 %i.k, %i.l
  br i1 %i.m, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %.tr105, align 4, !tbaa !247
  %i.n = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.p = load i32, ptr %.tr88106, align 4, !tbaa !247
  store i32 %i.p, ptr %.tr105, align 4, !tbaa !247
  store i32 %i.l, ptr %.tr88106, align 4, !tbaa !247
  %i.q = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.r = add i32 %i.q, -1
  store i32 %i.r, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  br label %.loopexit

bb.f:                                             ; preds = %bb.c
  %i.s = icmp ult i64 %i.i, 16
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN5boost7movelib20merge_bufferless_ON2IPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_SE_T0_(ptr noundef %.tr105, ptr noundef %.tr88106, ptr noundef %2)
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  %i.t = icmp ugt i64 %.tr90107, %.tr91108
  br i1 %i.t, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.u = lshr i64 %.tr90107, 1                    ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.tr105, i64 %i.u ; 2 uses
  %.not15.i = icmp eq ptr %2, %.tr88106
  %.pre = ptrtoint ptr %.tr88106 to i64           ; 3 uses
  br i1 %.not15.i, label %_ZN5boost7movelib11lower_boundIPNS_9container4test24movable_and_copyable_intES4_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEET_SE_SE_RKT0_T1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i
  %i.w = sub i64 %i.d, %.pre
  %i.x = ashr exact i64 %i.w, 2
  %i.y = load i32, ptr %i.v, align 4, !tbaa !247
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph.i
  %.017.i = phi i64 [ %i.x, %.lr.ph.i ], [ %.1.i, %bb.j ] ; 2 uses
  %.01316.i = phi ptr [ %.tr88106, %.lr.ph.i ], [ %.114.i, %bb.j ] ; 2 uses
  %i.z = lshr i64 %.017.i, 1                      ; 3 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %.01316.i, i64 %i.z ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !247
  %i.ac = icmp slt i32 %i.ab, %i.y                ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %.neg.i = xor i64 %i.z, -1
  %i.ae = add i64 %.017.i, %.neg.i
  %.114.i = select i1 %i.ac, ptr %i.ad, ptr %.01316.i ; 3 uses
  %.1.i = select i1 %i.ac, i64 %i.ae, i64 %i.z    ; 2 uses
  %.not.i = icmp eq i64 %.1.i, 0
  br i1 %.not.i, label %_ZN5boost7movelib11lower_boundIPNS_9container4test24movable_and_copyable_intES4_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEET_SE_SE_RKT0_T1_.exit.loopexit, label %bb.j, !llvm.loop !45

_ZN5boost7movelib11lower_boundIPNS_9container4test24movable_and_copyable_intES4_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEET_SE_SE_RKT0_T1_.exit.loopexit: ; preds = %bb.j
  %.pre127 = ptrtoint ptr %.114.i to i64
  br label %_ZN5boost7movelib11lower_boundIPNS_9container4test24movable_and_copyable_intES4_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEET_SE_SE_RKT0_T1_.exit

_ZN5boost7movelib11lower_boundIPNS_9container4test24movable_and_copyable_intES4_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEET_SE_SE_RKT0_T1_.exit: ; preds = %bb.i, %_ZN5boost7movelib11lower_boundIPNS_9container4test24movable_and_copyable_intES4_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEET_SE_SE_RKT0_T1_.exit.loopexit
  %.pre-phi128 = phi i64 [ %.pre127, %_ZN5boost7movelib11lower_boundIPNS_9container4test24movable_and_copyable_intES4_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEET_SE_SE_RKT0_T1_.exit.loopexit ], [ %.pre, %bb.i ]
  %.013.lcssa.i = phi ptr [ %.114.i, %_ZN5boost7movelib11lower_boundIPNS_9container4test24movable_and_copyable_intES4_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEET_SE_SE_RKT0_T1_.exit.loopexit ], [ %.tr88106, %bb.i ]
  %i.af = sub i64 %.pre-phi128, %.pre
  %i.ag = ashr exact i64 %i.af, 2
  br label %bb.m

bb.k:                                             ; preds = %bb.h
  %i.ah = lshr i64 %.tr91108, 1                   ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.tr88106, i64 %i.ah ; 2 uses
  %.not15.i78 = icmp eq ptr %.tr88106, %.tr105
  %.pre125 = ptrtoint ptr %.tr105 to i64          ; 3 uses
  br i1 %.not15.i78, label %_ZN5boost7movelib11upper_boundIPNS_9container4test24movable_and_copyable_intES4_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEET_SE_SE_RKT0_T1_.exit, label %.lr.ph.i79

.lr.ph.i79:                                       ; preds = %bb.k
  %i.aj = ptrtoint ptr %.tr88106 to i64
  %i.ak = sub i64 %i.aj, %.pre125
  %i.al = ashr exact i64 %i.ak, 2
  %i.am = load i32, ptr %i.ai, align 4, !tbaa !247
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.i79
  %.017.i80 = phi i64 [ %i.al, %.lr.ph.i79 ], [ %.1.i84, %bb.l ] ; 2 uses
  %.01316.i81 = phi ptr [ %.tr105, %.lr.ph.i79 ], [ %.114.i83, %bb.l ] ; 2 uses
  %i.an = lshr i64 %.017.i80, 1                   ; 3 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.01316.i81, i64 %i.an ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !247
  %i.aq = icmp slt i32 %i.am, %i.ap               ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %.neg.i82 = xor i64 %i.an, -1
  %i.as = add i64 %.017.i80, %.neg.i82
  %.114.i83 = select i1 %i.aq, ptr %.01316.i81, ptr %i.ar ; 3 uses
  %.1.i84 = select i1 %i.aq, i64 %i.an, i64 %i.as ; 2 uses
  %.not.i85 = icmp eq i64 %.1.i84, 0
  br i1 %.not.i85, label %_ZN5boost7movelib11upper_boundIPNS_9container4test24movable_and_copyable_intES4_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEET_SE_SE_RKT0_T1_.exit.loopexit, label %bb.l, !llvm.loop !49

_ZN5boost7movelib11upper_boundIPNS_9container4test24movable_and_copyable_intES4_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEET_SE_SE_RKT0_T1_.exit.loopexit: ; preds = %bb.l
  %.pre129 = ptrtoint ptr %.114.i83 to i64
  br label %_ZN5boost7movelib11upper_boundIPNS_9container4test24movable_and_copyable_intES4_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEET_SE_SE_RKT0_T1_.exit

_ZN5boost7movelib11upper_boundIPNS_9container4test24movable_and_copyable_intES4_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEET_SE_SE_RKT0_T1_.exit: ; preds = %bb.k, %_ZN5boost7movelib11upper_boundIPNS_9container4test24movable_and_copyable_intES4_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEET_SE_SE_RKT0_T1_.exit.loopexit
  %.pre-phi130 = phi i64 [ %.pre129, %_ZN5boost7movelib11upper_boundIPNS_9container4test24movable_and_copyable_intES4_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEET_SE_SE_RKT0_T1_.exit.loopexit ], [ %.pre125, %bb.k ]
  %.013.lcssa.i86 = phi ptr [ %.114.i83, %_ZN5boost7movelib11upper_boundIPNS_9container4test24movable_and_copyable_intES4_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEET_SE_SE_RKT0_T1_.exit.loopexit ], [ %.tr105, %bb.k ]
  %i.at = sub i64 %.pre-phi130, %.pre125
  %i.au = ashr exact i64 %i.at, 2
  br label %bb.m

bb.m:                                             ; preds = %_ZN5boost7movelib11upper_boundIPNS_9container4test24movable_and_copyable_intES4_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEET_SE_SE_RKT0_T1_.exit, %_ZN5boost7movelib11lower_boundIPNS_9container4test24movable_and_copyable_intES4_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEET_SE_SE_RKT0_T1_.exit
  %.071 = phi ptr [ %.013.lcssa.i, %_ZN5boost7movelib11lower_boundIPNS_9container4test24movable_and_copyable_intES4_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEET_SE_SE_RKT0_T1_.exit ], [ %i.ai, %_ZN5boost7movelib11upper_boundIPNS_9container4test24movable_and_copyable_intES4_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEET_SE_SE_RKT0_T1_.exit ] ; 14 uses
  %.070 = phi i64 [ %i.u, %_ZN5boost7movelib11lower_boundIPNS_9container4test24movable_and_copyable_intES4_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEET_SE_SE_RKT0_T1_.exit ], [ %i.au, %_ZN5boost7movelib11upper_boundIPNS_9container4test24movable_and_copyable_intES4_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEET_SE_SE_RKT0_T1_.exit ] ; 3 uses
  %.069 = phi i64 [ %i.ag, %_ZN5boost7movelib11lower_boundIPNS_9container4test24movable_and_copyable_intES4_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEET_SE_SE_RKT0_T1_.exit ], [ %i.ah, %_ZN5boost7movelib11upper_boundIPNS_9container4test24movable_and_copyable_intES4_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEET_SE_SE_RKT0_T1_.exit ] ; 5 uses
  %.0 = phi ptr [ %i.v, %_ZN5boost7movelib11lower_boundIPNS_9container4test24movable_and_copyable_intES4_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEET_SE_SE_RKT0_T1_.exit ], [ %.013.lcssa.i86, %_ZN5boost7movelib11upper_boundIPNS_9container4test24movable_and_copyable_intES4_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEET_SE_SE_RKT0_T1_.exit ] ; 27 uses
  %.0205 = ptrtoaddr ptr %.0 to i64               ; 2 uses
  %.071176 = ptrtoaddr ptr %.071 to i64           ; 2 uses
  %i.av = sub i64 %.tr90107, %.070                ; 4 uses
  %i.aw = icmp ule i64 %i.av, %.069
  %.not.i87 = icmp ugt i64 %.069, %6
  %or.cond.i = or i1 %i.aw, %.not.i87
  br i1 %or.cond.i, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not36.i = icmp eq i64 %.069, 0
  br i1 %.not36.i, label %_ZN5boost7movelib15rotate_adaptiveIPNS_9container4test24movable_and_copyable_intES5_EET_S6_S6_S6_NS0_9iter_sizeIS6_E4typeES9_T0_S9_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.not8.i.i = icmp eq ptr %.tr88106, %.071
  br i1 %.not8.i.i, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.o
  %i.ax = add i64 %.071176, -4
  %i.ay = sub i64 %i.ax, %.tr88106177             ; 3 uses
  %i.az = lshr i64 %i.ay, 2
  %i.ba = add nuw nsw i64 %i.az, 1                ; 2 uses
  %min.iters.check287 = icmp ult i64 %i.ay, 28
  br i1 %min.iters.check287, label %.lr.ph.i.i.preheader312, label %vector.memcheck288

vector.memcheck288:                               ; preds = %.lr.ph.i.i.preheader
  %i.bb = and i64 %i.ay, -4                       ; 2 uses
  %8 = getelementptr i8, ptr %scevgep, i64 %i.bb
  %i.bc = getelementptr i8, ptr %.tr88106, i64 %i.bb
  %i.bd = getelementptr i8, ptr %i.bc, i64 4
  %bound0289 = icmp ult ptr %5, %i.bd
  %bound1290 = icmp ult ptr %.tr88106, %8
  %found.conflict291 = and i1 %bound0289, %bound1290
  br i1 %found.conflict291, label %.lr.ph.i.i.preheader312, label %vector.ph292

vector.ph292:                                     ; preds = %vector.memcheck288
  %n.vec293 = and i64 %i.ba, 9223372036854775800  ; 3 uses
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
  %wide.load298 = load <4 x i32>, ptr %next.gep297, align 4, !tbaa !247, !alias.scope !3023
  %wide.load299 = load <4 x i32>, ptr %i.bi, align 4, !tbaa !247, !alias.scope !3023
  %i.bj = getelementptr i8, ptr %next.gep296, i64 16
  store <4 x i32> %wide.load298, ptr %next.gep296, align 4, !tbaa !247, !alias.scope !3024, !noalias !3023
  store <4 x i32> %wide.load299, ptr %i.bj, align 4, !tbaa !247, !alias.scope !3024, !noalias !3023
  store <4 x i32> zeroinitializer, ptr %next.gep297, align 4, !tbaa !247, !alias.scope !3023
  store <4 x i32> zeroinitializer, ptr %i.bi, align 4, !tbaa !247, !alias.scope !3023
  %index.next300 = add nuw i64 %index295, 8       ; 2 uses
  %i.bk = icmp eq i64 %index.next300, %n.vec293
  br i1 %i.bk, label %middle.block301, label %vector.body294, !llvm.loop !2996

middle.block301:                                  ; preds = %vector.body294
  %cmp.n302 = icmp eq i64 %i.ba, %n.vec293
  br i1 %cmp.n302, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i.i.preheader312

.lr.ph.i.i.preheader312:                          ; preds = %vector.memcheck288, %.lr.ph.i.i.preheader, %middle.block301
  %.010.i.i.ph = phi ptr [ %5, %vector.memcheck288 ], [ %5, %.lr.ph.i.i.preheader ], [ %i.bf, %middle.block301 ]
  %.079.i.i.ph = phi ptr [ %.tr88106, %vector.memcheck288 ], [ %.tr88106, %.lr.ph.i.i.preheader ], [ %i.bg, %middle.block301 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader312, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.bn, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader312 ] ; 2 uses
  %.079.i.i = phi ptr [ %i.bm, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader312 ] ; 3 uses
  %i.bl = load i32, ptr %.079.i.i, align 4, !tbaa !247
  store i32 %i.bl, ptr %.010.i.i, align 4, !tbaa !247
  store i32 0, ptr %.079.i.i, align 4, !tbaa !247
  %i.bm = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bm, %.071
  br i1 %.not.i.i, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i.i, !llvm.loop !2997

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
  %wide.load272 = load <4 x i32>, ptr %i.bz, align 4, !tbaa !247, !alias.scope !3025
  %wide.load273 = load <4 x i32>, ptr %i.ca, align 4, !tbaa !247, !alias.scope !3025
  %i.cb = getelementptr inbounds i8, ptr %next.gep270, i64 -16
  %i.cc = getelementptr inbounds i8, ptr %next.gep270, i64 -32
  store <4 x i32> %wide.load272, ptr %i.cb, align 4, !tbaa !247, !alias.scope !3026, !noalias !3025
  store <4 x i32> %wide.load273, ptr %i.cc, align 4, !tbaa !247, !alias.scope !3026, !noalias !3025
  store <4 x i32> zeroinitializer, ptr %i.bz, align 4, !tbaa !247, !alias.scope !3025
  store <4 x i32> zeroinitializer, ptr %i.ca, align 4, !tbaa !247, !alias.scope !3025
  %index.next274 = add nuw i64 %index269, 8       ; 2 uses
  %i.cd = icmp eq i64 %index.next274, %n.vec267
  br i1 %i.cd, label %middle.block275, label %vector.body268, !llvm.loop !3001

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
  %i.cg = load i32, ptr %i.ce, align 4, !tbaa !247
  store i32 %i.cg, ptr %i.cf, align 4, !tbaa !247
  store i32 0, ptr %i.ce, align 4, !tbaa !247
  %.not.i41.i = icmp eq ptr %.0, %i.ce
  br i1 %.not.i41.i, label %_ZN5boost13move_backwardIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i38.i, !llvm.loop !3002

_ZN5boost13move_backwardIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i: ; preds = %.lr.ph.i38.i, %middle.block275, %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i
  %.not8.i43.i = icmp eq ptr %5, %.0.lcssa.i.i
  br i1 %.not8.i43.i, label %_ZN5boost7movelib15rotate_adaptiveIPNS_9container4test24movable_and_copyable_intES5_EET_S6_S6_S6_NS0_9iter_sizeIS6_E4typeES9_T0_S9_.exit, label %.lr.ph.i44.i.preheader

.lr.ph.i44.i.preheader:                           ; preds = %_ZN5boost13move_backwardIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i
  %.reass = add i64 %.0.lcssa.i.i233, %invariant.op ; 2 uses
  %i.ch = lshr i64 %.reass, 2
  %i.ci = add nuw nsw i64 %i.ch, 1                ; 2 uses
  %min.iters.check235 = icmp ult i64 %.reass, 28
  br i1 %min.iters.check235, label %.lr.ph.i44.i.preheader309, label %vector.memcheck236

vector.memcheck236:                               ; preds = %.lr.ph.i44.i.preheader
  %i.cj = add i64 %i.e, %.0.lcssa.i.i233
  %i.ck = and i64 %i.cj, -4                       ; 2 uses
  %9 = getelementptr i8, ptr %.0, i64 %i.ck
  %i.cl = getelementptr i8, ptr %9, i64 4
  %i.cm = getelementptr i8, ptr %scevgep, i64 %i.ck
  %bound0237 = icmp ult ptr %.0, %i.cm
  %bound1238 = icmp ult ptr %5, %i.cl
  %found.conflict239 = and i1 %bound0237, %bound1238
  br i1 %found.conflict239, label %.lr.ph.i44.i.preheader309, label %vector.ph240

vector.ph240:                                     ; preds = %vector.memcheck236
  %n.vec241 = and i64 %i.ci, 9223372036854775800  ; 3 uses
  %i.cn = shl i64 %n.vec241, 2                    ; 2 uses
  %i.co = getelementptr i8, ptr %.0, i64 %i.cn    ; 2 uses
  %i.cp = getelementptr i8, ptr %5, i64 %i.cn
  br label %vector.body242

vector.body242:                                   ; preds = %vector.body242, %vector.ph240
  %index243 = phi i64 [ 0, %vector.ph240 ], [ %index.next248, %vector.body242 ] ; 2 uses
  %i.cq = shl i64 %index243, 2                    ; 2 uses
  %next.gep244 = getelementptr i8, ptr %.0, i64 %i.cq ; 2 uses
  %next.gep245 = getelementptr i8, ptr %5, i64 %i.cq ; 3 uses
  %i.cr = getelementptr i8, ptr %next.gep245, i64 16 ; 2 uses
  %wide.load246 = load <4 x i32>, ptr %next.gep245, align 4, !tbaa !247, !alias.scope !3027
  %wide.load247 = load <4 x i32>, ptr %i.cr, align 4, !tbaa !247, !alias.scope !3027
  %i.cs = getelementptr i8, ptr %next.gep244, i64 16
  store <4 x i32> %wide.load246, ptr %next.gep244, align 4, !tbaa !247, !alias.scope !3028, !noalias !3027
  store <4 x i32> %wide.load247, ptr %i.cs, align 4, !tbaa !247, !alias.scope !3028, !noalias !3027
  store <4 x i32> zeroinitializer, ptr %next.gep245, align 4, !tbaa !247, !alias.scope !3027
  store <4 x i32> zeroinitializer, ptr %i.cr, align 4, !tbaa !247, !alias.scope !3027
  %index.next248 = add nuw i64 %index243, 8       ; 2 uses
  %i.ct = icmp eq i64 %index.next248, %n.vec241
  br i1 %i.ct, label %middle.block249, label %vector.body242, !llvm.loop !3006

middle.block249:                                  ; preds = %vector.body242
  %cmp.n250 = icmp eq i64 %i.ci, %n.vec241
  br i1 %cmp.n250, label %_ZN5boost7movelib15rotate_adaptiveIPNS_9container4test24movable_and_copyable_intES5_EET_S6_S6_S6_NS0_9iter_sizeIS6_E4typeES9_T0_S9_.exit, label %.lr.ph.i44.i.preheader309

.lr.ph.i44.i.preheader309:                        ; preds = %vector.memcheck236, %.lr.ph.i44.i.preheader, %middle.block249
  %.010.i45.i.ph = phi ptr [ %.0, %vector.memcheck236 ], [ %.0, %.lr.ph.i44.i.preheader ], [ %i.co, %middle.block249 ]
  %.079.i46.i.ph = phi ptr [ %5, %vector.memcheck236 ], [ %5, %.lr.ph.i44.i.preheader ], [ %i.cp, %middle.block249 ]
  br label %.lr.ph.i44.i

.lr.ph.i44.i:                                     ; preds = %.lr.ph.i44.i.preheader309, %.lr.ph.i44.i
  %.010.i45.i = phi ptr [ %i.cw, %.lr.ph.i44.i ], [ %.010.i45.i.ph, %.lr.ph.i44.i.preheader309 ] ; 2 uses
  %.079.i46.i = phi ptr [ %i.cv, %.lr.ph.i44.i ], [ %.079.i46.i.ph, %.lr.ph.i44.i.preheader309 ] ; 3 uses
  %i.cu = load i32, ptr %.079.i46.i, align 4, !tbaa !247
  store i32 %i.cu, ptr %.010.i45.i, align 4, !tbaa !247
  store i32 0, ptr %.079.i46.i, align 4, !tbaa !247
  %i.cv = getelementptr inbounds nuw i8, ptr %.079.i46.i, i64 4 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.010.i45.i, i64 4 ; 2 uses
  %.not.i47.i = icmp eq ptr %i.cv, %.0.lcssa.i.i
  br i1 %.not.i47.i, label %_ZN5boost7movelib15rotate_adaptiveIPNS_9container4test24movable_and_copyable_intES5_EET_S6_S6_S6_NS0_9iter_sizeIS6_E4typeES9_T0_S9_.exit, label %.lr.ph.i44.i, !llvm.loop !3007

bb.p:                                             ; preds = %bb.m
  %.not34.i = icmp ugt i64 %i.av, %6
  br i1 %.not34.i, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.not35.i = icmp eq i64 %.tr90107, %.070
  br i1 %.not35.i, label %_ZN5boost7movelib15rotate_adaptiveIPNS_9container4test24movable_and_copyable_intES5_EET_S6_S6_S6_NS0_9iter_sizeIS6_E4typeES9_T0_S9_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not8.i50.i = icmp eq ptr %.0, %.tr88106
  br i1 %.not8.i50.i, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit56.i, label %.lr.ph.i51.i.preheader

.lr.ph.i51.i.preheader:                           ; preds = %bb.r
  %i.cx = add i64 %.tr88106177, -4
  %i.cy = sub i64 %i.cx, %.0205                   ; 3 uses
  %i.cz = lshr i64 %i.cy, 2
  %i.da = add nuw nsw i64 %i.cz, 1                ; 2 uses
  %min.iters.check207 = icmp ult i64 %i.cy, 28
  br i1 %min.iters.check207, label %.lr.ph.i51.i.preheader308, label %vector.memcheck208

vector.memcheck208:                               ; preds = %.lr.ph.i51.i.preheader
  %i.db = and i64 %i.cy, -4                       ; 2 uses
  %10 = getelementptr i8, ptr %scevgep, i64 %i.db
  %i.dc = getelementptr i8, ptr %.0, i64 %i.db
  %i.dd = getelementptr i8, ptr %i.dc, i64 4
  %bound0209 = icmp ult ptr %5, %i.dd
  %bound1210 = icmp ult ptr %.0, %10
  %found.conflict211 = and i1 %bound0209, %bound1210
  br i1 %found.conflict211, label %.lr.ph.i51.i.preheader308, label %vector.ph212

vector.ph212:                                     ; preds = %vector.memcheck208
  %n.vec213 = and i64 %i.da, 9223372036854775800  ; 3 uses
  %i.de = shl i64 %n.vec213, 2                    ; 2 uses
  %i.df = getelementptr i8, ptr %5, i64 %i.de     ; 2 uses
  %i.dg = getelementptr i8, ptr %.0, i64 %i.de
  br label %vector.body214

vector.body214:                                   ; preds = %vector.body214, %vector.ph212
  %index215 = phi i64 [ 0, %vector.ph212 ], [ %index.next220, %vector.body214 ] ; 2 uses
  %i.dh = shl i64 %index215, 2                    ; 2 uses
  %next.gep216 = getelementptr i8, ptr %5, i64 %i.dh ; 2 uses
  %next.gep217 = getelementptr i8, ptr %.0, i64 %i.dh ; 3 uses
  %i.di = getelementptr i8, ptr %next.gep217, i64 16 ; 2 uses
  %wide.load218 = load <4 x i32>, ptr %next.gep217, align 4, !tbaa !247, !alias.scope !3029
  %wide.load219 = load <4 x i32>, ptr %i.di, align 4, !tbaa !247, !alias.scope !3029
  %i.dj = getelementptr i8, ptr %next.gep216, i64 16
  store <4 x i32> %wide.load218, ptr %next.gep216, align 4, !tbaa !247, !alias.scope !3030, !noalias !3029
  store <4 x i32> %wide.load219, ptr %i.dj, align 4, !tbaa !247, !alias.scope !3030, !noalias !3029
  store <4 x i32> zeroinitializer, ptr %next.gep217, align 4, !tbaa !247, !alias.scope !3029
  store <4 x i32> zeroinitializer, ptr %i.di, align 4, !tbaa !247, !alias.scope !3029
  %index.next220 = add nuw i64 %index215, 8       ; 2 uses
  %i.dk = icmp eq i64 %index.next220, %n.vec213
  br i1 %i.dk, label %middle.block221, label %vector.body214, !llvm.loop !3011

middle.block221:                                  ; preds = %vector.body214
  %cmp.n222 = icmp eq i64 %i.da, %n.vec213
  br i1 %cmp.n222, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit56.i, label %.lr.ph.i51.i.preheader308

.lr.ph.i51.i.preheader308:                        ; preds = %vector.memcheck208, %.lr.ph.i51.i.preheader, %middle.block221
  %.010.i52.i.ph = phi ptr [ %5, %vector.memcheck208 ], [ %5, %.lr.ph.i51.i.preheader ], [ %i.df, %middle.block221 ]
  %.079.i53.i.ph = phi ptr [ %.0, %vector.memcheck208 ], [ %.0, %.lr.ph.i51.i.preheader ], [ %i.dg, %middle.block221 ]
  br label %.lr.ph.i51.i

.lr.ph.i51.i:                                     ; preds = %.lr.ph.i51.i.preheader308, %.lr.ph.i51.i
  %.010.i52.i = phi ptr [ %i.dn, %.lr.ph.i51.i ], [ %.010.i52.i.ph, %.lr.ph.i51.i.preheader308 ] ; 2 uses
  %.079.i53.i = phi ptr [ %i.dm, %.lr.ph.i51.i ], [ %.079.i53.i.ph, %.lr.ph.i51.i.preheader308 ] ; 3 uses
  %i.dl = load i32, ptr %.079.i53.i, align 4, !tbaa !247
  store i32 %i.dl, ptr %.010.i52.i, align 4, !tbaa !247
  store i32 0, ptr %.079.i53.i, align 4, !tbaa !247
  %i.dm = getelementptr inbounds nuw i8, ptr %.079.i53.i, i64 4 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.010.i52.i, i64 4 ; 2 uses
  %.not.i54.i = icmp eq ptr %i.dm, %.tr88106
  br i1 %.not.i54.i, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit56.i, label %.lr.ph.i51.i, !llvm.loop !3012

_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit56.i: ; preds = %.lr.ph.i51.i, %middle.block221, %bb.r
  %.0.lcssa.i55.i = phi ptr [ %5, %bb.r ], [ %i.df, %middle.block221 ], [ %i.dn, %.lr.ph.i51.i ] ; 3 uses
  %.0.lcssa.i55.i163 = ptrtoaddr ptr %.0.lcssa.i55.i to i64 ; 2 uses
  %.not8.i57.i = icmp eq ptr %.tr88106, %.071
  br i1 %.not8.i57.i, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit63.i, label %.lr.ph.i58.i.preheader

.lr.ph.i58.i.preheader:                           ; preds = %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit56.i
  %i.do = add i64 %.071176, -4
  %i.dp = sub i64 %i.do, %.tr88106177             ; 3 uses
  %i.dq = lshr i64 %i.dp, 2
  %i.dr = add nuw nsw i64 %i.dq, 1                ; 2 uses
  %min.iters.check179 = icmp ult i64 %i.dp, 28
  br i1 %min.iters.check179, label %.lr.ph.i58.i.preheader307, label %vector.memcheck180

vector.memcheck180:                               ; preds = %.lr.ph.i58.i.preheader
  %i.ds = and i64 %i.dp, -4
  %i.dt = add i64 %i.ds, 4                        ; 2 uses
  %i.du = getelementptr i8, ptr %.0, i64 %i.dt
  %i.dv = getelementptr i8, ptr %.tr88106, i64 %i.dt
  %bound0181 = icmp ult ptr %.0, %i.dv
  %bound1182 = icmp ult ptr %.tr88106, %i.du
  %found.conflict183 = and i1 %bound0181, %bound1182
  br i1 %found.conflict183, label %.lr.ph.i58.i.preheader307, label %vector.ph184

vector.ph184:                                     ; preds = %vector.memcheck180
  %n.vec185 = and i64 %i.dr, 9223372036854775800  ; 3 uses
  %i.dw = shl i64 %n.vec185, 2                    ; 2 uses
  %i.dx = getelementptr i8, ptr %.0, i64 %i.dw    ; 2 uses
  %i.dy = getelementptr i8, ptr %.tr88106, i64 %i.dw
  br label %vector.body186

vector.body186:                                   ; preds = %vector.body186, %vector.ph184
  %index187 = phi i64 [ 0, %vector.ph184 ], [ %index.next192, %vector.body186 ] ; 2 uses
  %i.dz = shl i64 %index187, 2                    ; 2 uses
  %next.gep188 = getelementptr i8, ptr %.0, i64 %i.dz ; 2 uses
  %next.gep189 = getelementptr i8, ptr %.tr88106, i64 %i.dz ; 3 uses
  %i.ea = getelementptr i8, ptr %next.gep189, i64 16 ; 2 uses
  %wide.load190 = load <4 x i32>, ptr %next.gep189, align 4, !tbaa !247, !alias.scope !3031
  %wide.load191 = load <4 x i32>, ptr %i.ea, align 4, !tbaa !247, !alias.scope !3031
  %i.eb = getelementptr i8, ptr %next.gep188, i64 16
  store <4 x i32> %wide.load190, ptr %next.gep188, align 4, !tbaa !247, !alias.scope !3032, !noalias !3031
  store <4 x i32> %wide.load191, ptr %i.eb, align 4, !tbaa !247, !alias.scope !3032, !noalias !3031
  store <4 x i32> zeroinitializer, ptr %next.gep189, align 4, !tbaa !247, !alias.scope !3031
  store <4 x i32> zeroinitializer, ptr %i.ea, align 4, !tbaa !247, !alias.scope !3031
  %index.next192 = add nuw i64 %index187, 8       ; 2 uses
  %i.ec = icmp eq i64 %index.next192, %n.vec185
  br i1 %i.ec, label %middle.block193, label %vector.body186, !llvm.loop !3016

middle.block193:                                  ; preds = %vector.body186
  %cmp.n194 = icmp eq i64 %i.dr, %n.vec185
  br i1 %cmp.n194, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit63.i, label %.lr.ph.i58.i.preheader307

.lr.ph.i58.i.preheader307:                        ; preds = %vector.memcheck180, %.lr.ph.i58.i.preheader, %middle.block193
  %.010.i59.i.ph = phi ptr [ %.0, %vector.memcheck180 ], [ %.0, %.lr.ph.i58.i.preheader ], [ %i.dx, %middle.block193 ]
  %.079.i60.i.ph = phi ptr [ %.tr88106, %vector.memcheck180 ], [ %.tr88106, %.lr.ph.i58.i.preheader ], [ %i.dy, %middle.block193 ]
  br label %.lr.ph.i58.i

.lr.ph.i58.i:                                     ; preds = %.lr.ph.i58.i.preheader307, %.lr.ph.i58.i
  %.010.i59.i = phi ptr [ %i.ef, %.lr.ph.i58.i ], [ %.010.i59.i.ph, %.lr.ph.i58.i.preheader307 ] ; 2 uses
  %.079.i60.i = phi ptr [ %i.ee, %.lr.ph.i58.i ], [ %.079.i60.i.ph, %.lr.ph.i58.i.preheader307 ] ; 3 uses
  %i.ed = load i32, ptr %.079.i60.i, align 4, !tbaa !247
  store i32 %i.ed, ptr %.010.i59.i, align 4, !tbaa !247
  store i32 0, ptr %.079.i60.i, align 4, !tbaa !247
  %i.ee = getelementptr inbounds nuw i8, ptr %.079.i60.i, i64 4 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.010.i59.i, i64 4 ; 2 uses
  %.not.i61.i = icmp eq ptr %i.ee, %.071
  br i1 %.not.i61.i, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit63.i, label %.lr.ph.i58.i, !llvm.loop !3017

_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit63.i: ; preds = %.lr.ph.i58.i, %middle.block193, %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit56.i
  %.0.lcssa.i62.i = phi ptr [ %.0, %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit56.i ], [ %i.dx, %middle.block193 ], [ %i.ef, %.lr.ph.i58.i ] ; 9 uses
  %.not8.i64.i = icmp eq ptr %5, %.0.lcssa.i55.i
  br i1 %.not8.i64.i, label %_ZN5boost7movelib15rotate_adaptiveIPNS_9container4test24movable_and_copyable_intES5_EET_S6_S6_S6_NS0_9iter_sizeIS6_E4typeES9_T0_S9_.exit, label %.lr.ph.i65.i.preheader

.lr.ph.i65.i.preheader:                           ; preds = %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit63.i
  %.reass332 = add i64 %.0.lcssa.i55.i163, %invariant.op331 ; 2 uses
  %i.eg = lshr i64 %.reass332, 2
  %i.eh = add nuw nsw i64 %i.eg, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %.reass332, 28
  br i1 %min.iters.check, label %.lr.ph.i65.i.preheader306, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i65.i.preheader
  %i.ei = add i64 %i.e, %.0.lcssa.i55.i163
  %i.ej = and i64 %i.ei, -4                       ; 2 uses
  %11 = getelementptr i8, ptr %.0.lcssa.i62.i, i64 %i.ej
  %i.ek = getelementptr i8, ptr %11, i64 4
  %i.el = getelementptr i8, ptr %scevgep, i64 %i.ej
  %bound0 = icmp ult ptr %.0.lcssa.i62.i, %i.el
  %bound1 = icmp ult ptr %5, %i.ek
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i65.i.preheader306, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.eh, 9223372036854775800     ; 3 uses
  %i.em = shl i64 %n.vec, 2                       ; 2 uses
  %i.en = getelementptr i8, ptr %.0.lcssa.i62.i, i64 %i.em
  %i.eo = getelementptr i8, ptr %5, i64 %i.em
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ep = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.0.lcssa.i62.i, i64 %i.ep ; 2 uses
  %next.gep164 = getelementptr i8, ptr %5, i64 %i.ep ; 3 uses
  %i.eq = getelementptr i8, ptr %next.gep164, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep164, align 4, !tbaa !247, !alias.scope !3033
  %wide.load165 = load <4 x i32>, ptr %i.eq, align 4, !tbaa !247, !alias.scope !3033
  %i.er = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !247, !alias.scope !3034, !noalias !3033
  store <4 x i32> %wide.load165, ptr %i.er, align 4, !tbaa !247, !alias.scope !3034, !noalias !3033
  store <4 x i32> zeroinitializer, ptr %next.gep164, align 4, !tbaa !247, !alias.scope !3033
  store <4 x i32> zeroinitializer, ptr %i.eq, align 4, !tbaa !247, !alias.scope !3033
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.es = icmp eq i64 %index.next, %n.vec
  br i1 %i.es, label %middle.block, label %vector.body, !llvm.loop !3021

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.eh, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib15rotate_adaptiveIPNS_9container4test24movable_and_copyable_intES5_EET_S6_S6_S6_NS0_9iter_sizeIS6_E4typeES9_T0_S9_.exit, label %.lr.ph.i65.i.preheader306

.lr.ph.i65.i.preheader306:                        ; preds = %vector.memcheck, %.lr.ph.i65.i.preheader, %middle.block
  %.010.i66.i.ph = phi ptr [ %.0.lcssa.i62.i, %vector.memcheck ], [ %.0.lcssa.i62.i, %.lr.ph.i65.i.preheader ], [ %i.en, %middle.block ]
  %.079.i67.i.ph = phi ptr [ %5, %vector.memcheck ], [ %5, %.lr.ph.i65.i.preheader ], [ %i.eo, %middle.block ]
  br label %.lr.ph.i65.i

.lr.ph.i65.i:                                     ; preds = %.lr.ph.i65.i.preheader306, %.lr.ph.i65.i
  %.010.i66.i = phi ptr [ %i.ev, %.lr.ph.i65.i ], [ %.010.i66.i.ph, %.lr.ph.i65.i.preheader306 ] ; 2 uses
  %.079.i67.i = phi ptr [ %i.eu, %.lr.ph.i65.i ], [ %.079.i67.i.ph, %.lr.ph.i65.i.preheader306 ] ; 3 uses
  %i.et = load i32, ptr %.079.i67.i, align 4, !tbaa !247
  store i32 %i.et, ptr %.010.i66.i, align 4, !tbaa !247
  store i32 0, ptr %.079.i67.i, align 4, !tbaa !247
  %i.eu = getelementptr inbounds nuw i8, ptr %.079.i67.i, i64 4 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.010.i66.i, i64 4
  %.not.i68.i = icmp eq ptr %i.eu, %.0.lcssa.i55.i
  br i1 %.not.i68.i, label %_ZN5boost7movelib15rotate_adaptiveIPNS_9container4test24movable_and_copyable_intES5_EET_S6_S6_S6_NS0_9iter_sizeIS6_E4typeES9_T0_S9_.exit, label %.lr.ph.i65.i, !llvm.loop !3022

bb.s:                                             ; preds = %bb.p
  %i.ew = tail call noundef ptr @_ZN5boost7movelib10rotate_gcdIPNS_9container4test24movable_and_copyable_intEEET_S6_S6_S6_(ptr noundef %.0, ptr noundef %.tr88106, ptr noundef %.071)
  br label %_ZN5boost7movelib15rotate_adaptiveIPNS_9container4test24movable_and_copyable_intES5_EET_S6_S6_S6_NS0_9iter_sizeIS6_E4typeES9_T0_S9_.exit

_ZN5boost7movelib15rotate_adaptiveIPNS_9container4test24movable_and_copyable_intES5_EET_S6_S6_S6_NS0_9iter_sizeIS6_E4typeES9_T0_S9_.exit: ; preds = %.lr.ph.i44.i, %.lr.ph.i65.i, %middle.block249, %middle.block, %bb.n, %_ZN5boost13move_backwardIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i, %bb.q, %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit63.i, %bb.s
  %.0.i = phi ptr [ %.071, %bb.q ], [ %i.ew, %bb.s ], [ %.0.lcssa.i62.i, %middle.block ], [ %.0, %bb.n ], [ %.0, %_ZN5boost13move_backwardIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i ], [ %.0.lcssa.i62.i, %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit63.i ], [ %.0.lcssa.i62.i, %.lr.ph.i65.i ], [ %i.co, %middle.block249 ], [ %i.cw, %.lr.ph.i44.i ] ; 2 uses
  tail call void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveIPNS_9container4test24movable_and_copyable_intES5_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_SE_NS0_9iter_sizeISE_E4typeESH_T0_SH_T1_(ptr noundef %.tr105, ptr noundef %.0, ptr noundef %.0.i, i64 noundef %.070, i64 noundef %.069, ptr noundef %5, i64 noundef %6)
  %i.ex = sub i64 %.tr91108, %.069                ; 2 uses
  %i.ey = icmp ne i64 %i.ex, 0
  %i.ez = icmp ne i64 %i.av, 0
  %or.cond = and i1 %i.ez, %i.ey
  br i1 %or.cond, label %bb.b, label %.loopexit

.loopexit:                                        ; preds = %_ZN5boost7movelib15rotate_adaptiveIPNS_9container4test24movable_and_copyable_intES5_EET_S6_S6_S6_NS0_9iter_sizeIS6_E4typeES9_T0_S9_.exit, %bb.a, %_ZN5boost7movelib14buffered_mergeIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_10range_xbufIS5_mNS0_7move_opEEEEEvT_SH_SH_T0_RT1_.exit, %bb.g, %bb.d, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib17op_buffered_mergeIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7move_opENS0_10range_xbufIS5_mSE_EEEEvT_SH_SH_T0_T1_RT2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #5 comdat {
bb.a:
  %.not = icmp eq ptr %0, %1
  %.not37 = icmp eq ptr %1, %2
  %or.cond = or i1 %.not, %.not37
  br i1 %or.cond, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_NS0_7move_opEEEvT0_SF_T1_SG_SG_T_T2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds i8, ptr %1, i64 -4
  %i.b = load i32, ptr %1, align 4, !tbaa !247    ; 2 uses
  %i.c = load i32, ptr %i.a, align 4, !tbaa !247  ; 2 uses
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
  %i.m = load i32, ptr %i.l, align 4, !tbaa !247
  %i.n = icmp slt i32 %i.b, %i.m                  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %.neg.i = xor i64 %i.k, -1
  %i.p = add i64 %.017.i, %.neg.i
  %.114.i = select i1 %i.n, ptr %.01316.i, ptr %i.o ; 11 uses
  %.1.i = select i1 %i.n, i64 %i.k, i64 %i.p      ; 2 uses
  %.not.i = icmp eq i64 %.1.i, 0
  br i1 %.not.i, label %_ZN5boost7movelib11upper_boundIPNS_9container4test24movable_and_copyable_intES4_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEET_SE_SE_RKT0_T1_.exit, label %bb.d, !llvm.loop !49

_ZN5boost7movelib11upper_boundIPNS_9container4test24movable_and_copyable_intES4_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEET_SE_SE_RKT0_T1_.exit: ; preds = %bb.d
  %.114.i133.le = ptrtoaddr ptr %.114.i to i64    ; 2 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !340    ; 9 uses
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
  %wide.load = load <4 x i32>, ptr %next.gep134, align 4, !tbaa !247, !alias.scope !3056
  %wide.load135 = load <4 x i32>, ptr %i.ae, align 4, !tbaa !247, !alias.scope !3056
  %i.af = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !247, !alias.scope !3057, !noalias !3056
  store <4 x i32> %wide.load135, ptr %i.af, align 4, !tbaa !247, !alias.scope !3057, !noalias !3056
  store <4 x i32> zeroinitializer, ptr %next.gep134, align 4, !tbaa !247, !alias.scope !3056
  store <4 x i32> zeroinitializer, ptr %i.ae, align 4, !tbaa !247, !alias.scope !3056
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !3038

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
  %i.ah = load i32, ptr %.079.i.i.i, align 4, !tbaa !247
  store i32 %i.ah, ptr %.010.i.i.i, align 4, !tbaa !247
  store i32 0, ptr %.079.i.i.i, align 4, !tbaa !247
  %i.ai = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 4 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ai, %1
  br i1 %.not.i.i.i, label %_ZN5boost7movelib10range_xbufIPNS_9container4test24movable_and_copyable_intEmNS0_7move_opEE11move_assignIS5_EEvT_m.exit, label %.lr.ph.i.i.i, !llvm.loop !3039

_ZN5boost7movelib10range_xbufIPNS_9container4test24movable_and_copyable_intEmNS0_7move_opEE11move_assignIS5_EEvT_m.exit: ; preds = %.lr.ph.i.i.i, %middle.block
  %.010.i.i.i.lcssa = phi ptr [ %ind.escape, %middle.block ], [ %.010.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa128 = phi ptr [ %i.ab, %middle.block ], [ %i.aj, %.lr.ph.i.i.i ] ; 2 uses
  %.010.i.i.i.lcssa242 = ptrtoaddr ptr %.010.i.i.i.lcssa to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.lcssa128, ptr %i.ak, align 8, !tbaa !341
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
  %i.am = add i64 %i.e, -4
  %i.an = sub i64 %i.am, %.114.i133.le            ; 2 uses
  %i.ao = and i64 %i.an, -4
end_hunk_1
begin_hunk_2_@_ZN5boost7movelib15detail_adaptive29adaptive_merge_combine_blocksIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_13adaptive_xbufIS5_S6_mEEEEvT_NS0_9iter_sizeISH_E4typeESK_SK_SK_SK_bbT0_RT1_:bb.a
  store i32 %storemerge6.i66.1, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %storemerge.i67.1 = add nuw i64 %storemerge13.i63, 2 ; 2 uses
  %.not.i68.1 = icmp eq i64 %storemerge.i67.1, %5
  br i1 %.not.i68.1, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mE16initialize_untilEmRS4_.exit71, label %.lr.ph.i62, !llvm.loop !80

_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mE16initialize_untilEmRS4_.exit71: ; preds = %.lr.ph.i62.prol.loopexit, %.lr.ph.i62, %.lr.ph.i62.lver.orig.prol.loopexit, %.lr.ph.i62.lver.orig, %bb.j
  %storemerge.in.lcssa.i70 = phi i64 [ %i.bi, %bb.j ], [ %storemerge.i67.lver.orig, %.lr.ph.i62.lver.orig ], [ %storemerge10.i60, %.lr.ph.i62.lver.orig.prol.loopexit ], [ %storemerge10.i60, %.lr.ph.i62.prol.loopexit ], [ %storemerge.i67, %.lr.ph.i62 ]
  store i64 %5, ptr %i.bh, align 8, !tbaa !254
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %.pre.pre, i64 %storemerge.in.lcssa.i70 ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !247
  store i32 %i.dl, ptr %0, align 4, !tbaa !247
  store i32 0, ptr %i.dk, align 4, !tbaa !247
  br label %bb.k

bb.k:                                             ; preds = %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mE13shrink_to_fitEm.exit.thread, %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mE16initialize_untilEmRS4_.exit71, %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mE13shrink_to_fitEm.exit
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %.pre.pre, i64 %5
  %i.dn = ptrtoint ptr %i.dm to i64
  %i.do = add i64 %i.dn, 7
  %i.dp = and i64 %i.do, -8
  %i.dq = inttoptr i64 %i.dp to ptr               ; 4 uses
  %i.dr = urem i64 %i.c, %5                       ; 3 uses
  %i.ds = sub i64 %i.b, %i.dr
  %i.dt = urem i64 %i.ds, %5                      ; 2 uses
  %i.du = add i64 %i.dr, %i.dt
  %i.dv = sub i64 %i.b, %i.du
  %i.dw = udiv i64 %i.dv, %5                      ; 4 uses
  %i.dx = udiv i64 %i.c, %5                       ; 2 uses
  %i.dy = sub i64 %i.dw, %i.dx
  %i.dz = shl i64 %i.dw, 3
  %i.ea = ashr exact i64 %i.dz, 3                 ; 3 uses
  %.mask.i = and i64 %i.dw, 2305843009213693951
  %.not8.i.i = icmp eq i64 %.mask.i, 0
  br i1 %.not8.i.i, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS8_mEEEEvT_T0_T1_SD_SD_RT2_RSD_SG_SG_SG_b.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.k
  %min.iters.check = icmp ult i64 %i.ea, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader124, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %i.eb = and i64 %i.dw, 3                        ; 2 uses
  %n.vec = sub nuw nsw i64 %i.ea, %i.eb           ; 3 uses
  %i.ec = shl i64 %n.vec, 3
  %i.ed = getelementptr i8, ptr %i.dq, i64 %i.ec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.ee = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.dq, i64 %i.ee ; 2 uses
  %i.ef = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %vec.ind, ptr %next.gep, align 8, !tbaa !223
  store <2 x i64> %step.add, ptr %i.ef, align 8, !tbaa !223
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.eg = icmp eq i64 %index.next, %n.vec
  br i1 %i.eg, label %middle.block, label %vector.body, !llvm.loop !3111

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.eb, 0
  br i1 %cmp.n, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS8_mEEEEvT_T0_T1_SD_SD_RT2_RSD_SG_SG_SG_b.exit, label %.lr.ph.i.i.preheader124

.lr.ph.i.i.preheader124:                          ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %n.vec, %middle.block ]
  %.079.i.i.ph = phi ptr [ %i.dq, %.lr.ph.i.i.preheader ], [ %i.ed, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader124, %.lr.ph.i.i
  %.010.i.i = phi i64 [ %i.ei, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader124 ] ; 2 uses
  %.079.i.i = phi ptr [ %i.eh, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader124 ] ; 2 uses
  store i64 %.010.i.i, ptr %.079.i.i, align 8, !tbaa !223
  %i.eh = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8
  %i.ei = add nuw i64 %.010.i.i, 1                ; 2 uses
  %.not.i.i = icmp eq i64 %i.ei, %i.ea
  br i1 %.not.i.i, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS8_mEEEEvT_T0_T1_SD_SD_RT2_RSD_SG_SG_SG_b.exit, label %.lr.ph.i.i, !llvm.loop !3112

_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS8_mEEEEvT_T0_T1_SD_SD_RT2_RSD_SG_SG_SG_b.exit: ; preds = %.lr.ph.i.i, %middle.block, %bb.k
  tail call void @_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPmNS1_4lessEPNS_9container4test24movable_and_copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEENS0_7move_opES8_EEvT_T0_T1_NS0_9iter_sizeISK_E4typeESN_SN_SN_SN_T2_T3_T4_(ptr noundef %i.dq, ptr noundef %0, i64 noundef %5, i64 noundef %i.dr, i64 noundef %i.dx, i64 noundef %i.dy, i64 noundef %i.dt, ptr noundef %.pre.pre)
  %i.ej = load i64, ptr %i.bh, align 8, !tbaa !254 ; 4 uses
  %.not.i72 = icmp eq i64 %i.ej, 0
  br i1 %.not.i72, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mE5clearEv.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS8_mEEEEvT_T0_T1_SD_SD_RT2_RSD_SG_SG_SG_b.exit
  %i.ek = load ptr, ptr %8, align 8, !tbaa !255   ; 5 uses
  %xtraiter135 = and i64 %i.ej, 3                 ; 3 uses
  %i.el = icmp ult i64 %i.ej, 4
  br i1 %i.el, label %.epil.preheader, label %.preheader.i.i.new

.preheader.i.i.new:                               ; preds = %.preheader.i.i
  %unroll_iter = and i64 %i.ej, -4
  br label %bb.m

.unr-lcssa:                                       ; preds = %bb.m
  %lcmp.mod136.not = icmp eq i64 %xtraiter135, 0
  br i1 %lcmp.mod136.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader.i.i
  %.07.i.i.epil.init = phi i64 [ 0, %.preheader.i.i ], [ %i.ff, %.unr-lcssa ]
  %lcmp.mod137 = icmp ne i64 %xtraiter135, 0
  tail call void @llvm.assume(i1 %lcmp.mod137)
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.epil.preheader
  %.07.i.i.epil = phi i64 [ %.07.i.i.epil.init, %.epil.preheader ], [ %i.ep, %bb.l ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.l ]
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %.07.i.i.epil
  store i32 -2147483648, ptr %i.em, align 4, !tbaa !247
  %i.en = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.eo = add i32 %i.en, -1
  store i32 %i.eo, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.ep = add nuw i64 %.07.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter135
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.l, !llvm.loop !3113

.epilog-lcssa:                                    ; preds = %bb.l, %.unr-lcssa
  store i64 0, ptr %i.bh, align 8, !tbaa !254
  br label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mE5clearEv.exit

bb.m:                                             ; preds = %bb.m, %.preheader.i.i.new
  %.07.i.i = phi i64 [ 0, %.preheader.i.i.new ], [ %i.ff, %bb.m ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader.i.i.new ], [ %niter.next.3, %bb.m ]
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %.07.i.i
  store i32 -2147483648, ptr %i.eq, align 4, !tbaa !247
  %i.er = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.es = add i32 %i.er, -1
  store i32 %i.es, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %.07.i.i
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 4
  store i32 -2147483648, ptr %i.eu, align 4, !tbaa !247
  %i.ev = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.ew = add i32 %i.ev, -1
  store i32 %i.ew, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %.07.i.i
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  store i32 -2147483648, ptr %i.ey, align 4, !tbaa !247
  %i.ez = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.fa = add i32 %i.ez, -1
  store i32 %i.fa, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %.07.i.i
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 12
  store i32 -2147483648, ptr %i.fc, align 4, !tbaa !247
  %i.fd = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.fe = add i32 %i.fd, -1
  store i32 %i.fe, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.ff = add nuw i64 %.07.i.i, 4                 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %bb.m, !llvm.loop !5

_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mE5clearEv.exit: ; preds = %.epilog-lcssa, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS8_mEEEEvT_T0_T1_SD_SD_RT2_RSD_SG_SG_SG_b.exit, %bb.g, %bb.h, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEES6_SE_NS0_7move_opES6_EEvT_T0_T1_NS0_9iter_sizeISI_E4typeESL_SL_SL_SL_T2_T3_T4_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef %7) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %8 = alloca %"class.boost::container::dtl::flat_tree_value_compare.7", align 1 ; 4 uses
  %9 = alloca %"struct.boost::movelib::antistable.65", align 8 ; 5 uses
  %i.b = alloca ptr, align 8                      ; 10 uses
  %i.c = alloca ptr, align 8                      ; 9 uses
  %i.d = alloca ptr, align 8                      ; 7 uses
  %10 = alloca %"class.boost::movelib::reverse_iterator.67", align 8 ; 5 uses
  %11 = alloca %"class.boost::movelib::reverse_iterator.67", align 8 ; 4 uses
  %12 = alloca %"class.boost::movelib::reverse_iterator.67", align 8 ; 2 uses
  %13 = alloca %"class.boost::movelib::reverse_iterator.67", align 8 ; 2 uses
  %14 = alloca %"class.boost::movelib::reverse_iterator.67", align 8 ; 2 uses
  %15 = alloca %"class.boost::movelib::reverse_iterator.67", align 8 ; 2 uses
  %16 = alloca %"class.boost::movelib::reverse_iterator.67", align 8 ; 2 uses
  %i.e = add i64 %5, %4                           ; 5 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store ptr %7, ptr %i.b, align 8, !tbaa !250
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store ptr %7, ptr %i.c, align 8, !tbaa !250
  %i.g = getelementptr [4 x i8], ptr %1, i64 %3   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store ptr %i.g, ptr %i.d, align 8, !tbaa !250
  %i.h = mul i64 %i.e, %2
  %i.i = getelementptr [4 x i8], ptr %i.g, i64 %i.h ; 10 uses
  %.not216 = icmp eq i64 %i.e, 0
  br i1 %.not216, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit150, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = icmp eq i64 %5, 0
  %i.k = select i1 %i.j, i64 0, i64 %4            ; 2 uses
  %i.l = add i64 %i.k, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %i.e)
  %.idx208 = shl i64 %2, 2                        ; 7 uses
  %.not121 = icmp eq i64 %6, 0
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.e
  %.not2830.i = icmp eq i64 %2, 0
  %scevgep = getelementptr i8, ptr %7, i64 %.idx208 ; 2 uses
  %i.n = shl i64 %3, 2                            ; 2 uses
  %i.o = add i64 %i.n, 4
  %i.p = add i64 %i.n, %i.a
  %i.q = add i64 %i.p, %.idx208
  %i.r = add i64 %i.q, -4
  %scevgep366 = getelementptr i8, ptr %7, i64 4
  %i.s = shl i64 %3, 2
  %i.t = add i64 %i.s, %i.a
  %i.u = add i64 %i.t, %.idx208
  %i.v = add i64 %i.u, -4
  %i.w = add i64 %.idx208, -4                     ; 2 uses
  %i.x = lshr exact i64 %i.w, 2
  %i.y = add nuw nsw i64 %i.x, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.w, 44
  %bound0309 = icmp ult ptr %7, %i.i
  %bound1310 = icmp ult ptr %i.g, %scevgep
  %found.conflict311 = and i1 %bound0309, %bound1310
  %stride.check = icmp slt i64 %.idx208, 0
  %i.z = or i1 %found.conflict311, %stride.check
  %n.vec = and i64 %i.y, 9223372036854775804      ; 3 uses
  %i.aa = shl i64 %n.vec, 2                       ; 3 uses
  %i.ab = getelementptr i8, ptr %7, i64 %i.aa     ; 2 uses
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.x
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %bb.x ] ; 2 uses
  %i.ac = phi ptr [ %7, %.lr.ph ], [ %i.gk, %bb.x ] ; 5 uses
  %i.ad = phi ptr [ %7, %.lr.ph ], [ %i.gl, %bb.x ] ; 10 uses
  %i.ae = phi ptr [ %i.g, %.lr.ph ], [ %i.bc, %bb.x ] ; 9 uses
  %.0 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.gt, %bb.x ] ; 3 uses
  %.0227 = phi i64 [ %5, %.lr.ph ], [ %.1, %bb.x ] ; 2 uses
  %.0104226 = phi i64 [ %i.k, %.lr.ph ], [ %i.gr, %bb.x ] ; 4 uses
  %.0106223 = phi ptr [ %0, %.lr.ph ], [ %i.gp, %bb.x ] ; 16 uses
  %.0108222 = phi i8 [ 1, %.lr.ph ], [ %.1109, %bb.x ] ; 5 uses
  %.0111220 = phi ptr [ %i.g, %.lr.ph ], [ %i.go, %bb.x ] ; 5 uses
  %.0114219 = phi ptr [ %1, %.lr.ph ], [ %.1115, %bb.x ] ; 10 uses
  %.0191218 = phi ptr [ %i.f, %.lr.ph ], [ %.2193, %bb.x ] ; 16 uses
  %.0195217 = phi i64 [ %i.e, %.lr.ph ], [ %i.gu, %bb.x ] ; 4 uses
  %i.af = ptrtoaddr ptr %i.ac to i64
  %i.ag = ptrtoaddr ptr %i.ad to i64
  %i.ah = icmp ult i64 %.0104226, %.0
  br i1 %i.ah, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEES6_SE_EENS0_9iter_sizeIT1_E4typeET_T0_SG_SI_SI_SI_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread24.i
  %.027.i = phi i64 [ %i.aw, %.thread24.i ], [ %.0104226, %bb.b ] ; 4 uses
  %.02226.i = phi i64 [ %i.av, %.thread24.i ], [ 0, %bb.b ] ; 4 uses
  %i.ai = mul i64 %.02226.i, %2
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.ai
  %i.ak = mul i64 %.027.i, %2
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.ak
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.0106223, i64 %.02226.i
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %.0106223, i64 %.027.i
  %i.ao = load i32, ptr %i.al, align 4, !tbaa !247 ; 2 uses
  %i.ap = load i32, ptr %i.aj, align 4, !tbaa !247 ; 2 uses
  %i.aq = icmp slt i32 %i.ao, %i.ap
  br i1 %i.aq, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.ar = icmp slt i32 %i.ap, %i.ao
  br i1 %i.ar, label %.thread24.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.as = load i32, ptr %i.an, align 4, !tbaa !247
  %i.at = load i32, ptr %i.am, align 4, !tbaa !247
  %i.au = icmp slt i32 %i.as, %i.at
  %cond.fr.i = freeze i1 %i.au
  br i1 %cond.fr.i, label %.thread.i, label %.thread24.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread24.i

.thread24.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.av = phi i64 [ %.027.i, %.thread.i ], [ %.02226.i, %bb.d ], [ %.02226.i, %bb.c ] ; 2 uses
  %i.aw = add nuw i64 %.027.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.aw, %.0
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEES6_SE_EENS0_9iter_sizeIT1_E4typeET_T0_SG_SI_SI_SI_T2_.exit, label %.lr.ph.i, !llvm.loop !50

_ZN5boost7movelib15detail_adaptive15find_next_blockIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEES6_SE_EENS0_9iter_sizeIT1_E4typeET_T0_SG_SI_SI_SI_T2_.exit: ; preds = %.thread24.i, %bb.b
  %.022.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.av, %.thread24.i ] ; 7 uses
  %i.ax = add i64 %.022.lcssa.i, 2
  %i.ay = call i64 @llvm.umax.i64(i64 %.0, i64 %i.ax) ; 2 uses
  %.sroa.speculated180 = call i64 @llvm.umin.i64(i64 %i.ay, i64 %.0195217)
  %i.az = mul i64 %.022.lcssa.i, %2               ; 2 uses
  %.idx = shl i64 %i.az, 2
  %i.ba = getelementptr i8, ptr %i.ae, i64 %.idx  ; 10 uses
  %i.bb = getelementptr [4 x i8], ptr %i.ba, i64 %2 ; 3 uses
  %i.bc = getelementptr i8, ptr %i.ae, i64 %.idx208 ; 8 uses
  %i.bd = icmp eq ptr %i.ad, %i.ac
  %.not120 = icmp eq i64 %.0227, 0
  br i1 %.not120, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEES6_SE_EENS0_9iter_sizeIT1_E4typeET_T0_SG_SI_SI_SI_T2_.exit
  br i1 %.not121, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.be = load i32, ptr %i.i, align 4, !tbaa !247
  %i.bf = load i32, ptr %i.ba, align 4, !tbaa !247
  %i.bg = icmp slt i32 %i.be, %i.bf
  br i1 %i.bg, label %.thread, label %bb.h

bb.g:                                             ; preds = %bb.e
  %.old123 = trunc nuw i8 %.0108222 to i1
  br i1 %.old123, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEES6_SE_EENS0_9iter_sizeIT1_E4typeET_T0_SG_SI_SI_SI_T2_.exit
  %.idx209 = shl nuw nsw i64 %.022.lcssa.i, 2
  %i.bh = getelementptr inbounds nuw i8, ptr %.0106223, i64 %.idx209 ; 16 uses
  %i.bi = icmp eq ptr %.0191218, %i.m
  br i1 %i.bi, label %._crit_edge, label %bb.i

._crit_edge:                                      ; preds = %bb.h
  %i.bj = trunc nuw i8 %.0108222 to i1
  br i1 %i.bj, label %bb.j, label %.thread281

.thread281:                                       ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  br label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.bk = load i32, ptr %i.bh, align 4, !tbaa !247
  %i.bl = load i32, ptr %.0191218, align 4, !tbaa !247
  %i.bm = icmp slt i32 %i.bk, %i.bl               ; 4 uses
  %i.bn = trunc nuw i8 %.0108222 to i1            ; 2 uses
  %i.bo = xor i1 %i.bm, %i.bn
  br i1 %i.bo, label %bb.n, label %bb.j

bb.j:                                             ; preds = %._crit_edge, %bb.i
  %i.bp = phi i1 [ true, %._crit_edge ], [ %i.bm, %bb.i ]
  br i1 %i.bd, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.j
  %i.bq = add i64 %i.af, -4
  %i.br = sub i64 %i.bq, %i.ag                    ; 3 uses
  %i.bs = lshr i64 %i.br, 2
  %i.bt = add nuw nsw i64 %i.bs, 1                ; 2 uses
  %min.iters.check330 = icmp ult i64 %i.br, 28
  br i1 %min.iters.check330, label %.lr.ph.i.i.preheader485, label %vector.memcheck331

vector.memcheck331:                               ; preds = %.lr.ph.i.i.preheader
  %i.bu = and i64 %i.br, -4
  %i.bv = add i64 %i.bu, 4                        ; 2 uses
  %i.bw = getelementptr i8, ptr %.0114219, i64 %i.bv
  %i.bx = getelementptr i8, ptr %i.ad, i64 %i.bv
  %bound0332 = icmp ult ptr %.0114219, %i.bx
  %bound1333 = icmp ult ptr %i.ad, %i.bw
  %found.conflict334 = and i1 %bound0332, %bound1333
  br i1 %found.conflict334, label %.lr.ph.i.i.preheader485, label %vector.ph335

vector.ph335:                                     ; preds = %vector.memcheck331
  %n.vec336 = and i64 %i.bt, 9223372036854775800  ; 3 uses
  %i.by = shl i64 %n.vec336, 2                    ; 2 uses
  %i.bz = getelementptr i8, ptr %.0114219, i64 %i.by
  %i.ca = getelementptr i8, ptr %i.ad, i64 %i.by
  br label %vector.body337

vector.body337:                                   ; preds = %vector.body337, %vector.ph335
  %index338 = phi i64 [ 0, %vector.ph335 ], [ %index.next343, %vector.body337 ] ; 2 uses
  %i.cb = shl i64 %index338, 2                    ; 2 uses
  %next.gep339 = getelementptr i8, ptr %.0114219, i64 %i.cb ; 2 uses
  %next.gep340 = getelementptr i8, ptr %i.ad, i64 %i.cb ; 3 uses
  %i.cc = getelementptr i8, ptr %next.gep340, i64 16 ; 2 uses
  %wide.load341 = load <4 x i32>, ptr %next.gep340, align 4, !tbaa !247, !alias.scope !3158
  %wide.load342 = load <4 x i32>, ptr %i.cc, align 4, !tbaa !247, !alias.scope !3158
  %i.cd = getelementptr i8, ptr %next.gep339, i64 16
  store <4 x i32> %wide.load341, ptr %next.gep339, align 4, !tbaa !247, !alias.scope !3159, !noalias !3158
  store <4 x i32> %wide.load342, ptr %i.cd, align 4, !tbaa !247, !alias.scope !3159, !noalias !3158
  store <4 x i32> zeroinitializer, ptr %next.gep340, align 4, !tbaa !247, !alias.scope !3158
  store <4 x i32> zeroinitializer, ptr %i.cc, align 4, !tbaa !247, !alias.scope !3158
  %index.next343 = add nuw i64 %index338, 8       ; 2 uses
  %i.ce = icmp eq i64 %index.next343, %n.vec336
  br i1 %i.ce, label %middle.block344, label %vector.body337, !llvm.loop !3117

middle.block344:                                  ; preds = %vector.body337
  %cmp.n345 = icmp eq i64 %i.bt, %n.vec336
  br i1 %cmp.n345, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit, label %.lr.ph.i.i.preheader485

.lr.ph.i.i.preheader485:                          ; preds = %vector.memcheck331, %.lr.ph.i.i.preheader, %middle.block344
  %.010.i.i.ph = phi ptr [ %.0114219, %vector.memcheck331 ], [ %.0114219, %.lr.ph.i.i.preheader ], [ %i.bz, %middle.block344 ]
  %.079.i.i.ph = phi ptr [ %i.ad, %vector.memcheck331 ], [ %i.ad, %.lr.ph.i.i.preheader ], [ %i.ca, %middle.block344 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader485, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.ch, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader485 ] ; 2 uses
  %.079.i.i = phi ptr [ %i.cg, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader485 ] ; 3 uses
  %i.cf = load i32, ptr %.079.i.i, align 4, !tbaa !247
  store i32 %i.cf, ptr %.010.i.i, align 4, !tbaa !247
  store i32 0, ptr %.079.i.i, align 4, !tbaa !247
  %i.cg = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  %.not.i.i = icmp eq ptr %i.cg, %i.ac
  br i1 %.not.i.i, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit, label %.lr.ph.i.i, !llvm.loop !3118

_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit: ; preds = %.lr.ph.i.i, %middle.block344, %bb.j
  store ptr %7, ptr %i.b, align 8, !tbaa !250
  %.not.i = icmp eq i64 %i.az, 0
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_7move_opEEET1_T_S9_RS9_T0_SB_SB_S8_T2_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit
  br i1 %.not2830.i, label %._crit_edge.i, label %.lr.ph.i125.preheader

.lr.ph.i125.preheader:                            ; preds = %.preheader.i
  br i1 %min.iters.check, label %.lr.ph.i125.preheader484, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i125.preheader
  %bound0 = icmp ult ptr %7, %i.bb
  %bound1 = icmp ult ptr %i.ba, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %conflict.rdx = or i1 %found.conflict, %i.z
  %bound0312 = icmp ult ptr %i.ba, %i.i
  %bound1313 = icmp ult ptr %i.g, %i.bb
  %found.conflict314 = and i1 %bound0312, %bound1313
  %conflict.rdx315 = or i1 %conflict.rdx, %found.conflict314
  br i1 %conflict.rdx315, label %.lr.ph.i125.preheader484, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ci = getelementptr i8, ptr %i.ba, i64 %i.aa
  %i.cj = getelementptr i8, ptr %i.ae, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ck = shl i64 %index, 2                       ; 3 uses
  %next.gep = getelementptr i8, ptr %7, i64 %i.ck
  %next.gep316 = getelementptr i8, ptr %i.ba, i64 %i.ck ; 3 uses
  %next.gep317 = getelementptr i8, ptr %i.ae, i64 %i.ck ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep316, align 4, !tbaa !247, !alias.scope !3160, !noalias !3161
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !247, !alias.scope !3162, !noalias !3163
  store <4 x i32> zeroinitializer, ptr %next.gep316, align 4, !tbaa !247, !alias.scope !3160, !noalias !3161
  %wide.load318 = load <4 x i32>, ptr %next.gep317, align 4, !tbaa !247, !alias.scope !3161
  store <4 x i32> %wide.load318, ptr %next.gep316, align 4, !tbaa !247, !alias.scope !3160, !noalias !3161
  store <4 x i32> zeroinitializer, ptr %next.gep317, align 4, !tbaa !247, !alias.scope !3161
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cl = icmp eq i64 %index.next, %n.vec
  br i1 %i.cl, label %middle.block, label %vector.body, !llvm.loop !3123

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i125.preheader484

.lr.ph.i125.preheader484:                         ; preds = %vector.memcheck, %.lr.ph.i125.preheader, %middle.block
  %.033.i.ph = phi ptr [ %7, %vector.memcheck ], [ %7, %.lr.ph.i125.preheader ], [ %i.ab, %middle.block ]
  %.02032.i.ph = phi ptr [ %i.ba, %vector.memcheck ], [ %i.ba, %.lr.ph.i125.preheader ], [ %i.ci, %middle.block ]
  %.02131.i.ph = phi ptr [ %i.ae, %vector.memcheck ], [ %i.ae, %.lr.ph.i125.preheader ], [ %i.cj, %middle.block ]
  br label %.lr.ph.i125

.lr.ph.i125:                                      ; preds = %.lr.ph.i125.preheader484, %.lr.ph.i125
  %.033.i = phi ptr [ %i.co, %.lr.ph.i125 ], [ %.033.i.ph, %.lr.ph.i125.preheader484 ] ; 2 uses
  %.02032.i = phi ptr [ %i.cn, %.lr.ph.i125 ], [ %.02032.i.ph, %.lr.ph.i125.preheader484 ] ; 4 uses
  %.02131.i = phi ptr [ %i.cm, %.lr.ph.i125 ], [ %.02131.i.ph, %.lr.ph.i125.preheader484 ] ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.02131.i, i64 4 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.02032.i, i64 4
  %i.co = getelementptr inbounds nuw i8, ptr %.033.i, i64 4 ; 2 uses
  %i.cp = load i32, ptr %.02032.i, align 4, !tbaa !247
  store i32 %i.cp, ptr %.033.i, align 4, !tbaa !247
  store i32 0, ptr %.02032.i, align 4, !tbaa !247
  %i.cq = load i32, ptr %.02131.i, align 4, !tbaa !247
  store i32 %i.cq, ptr %.02032.i, align 4, !tbaa !247
  store i32 0, ptr %.02131.i, align 4, !tbaa !247
  %.not28.i = icmp eq ptr %i.cm, %i.bc
  br i1 %.not28.i, label %._crit_edge.i, label %.lr.ph.i125, !llvm.loop !3124

._crit_edge.i:                                    ; preds = %.lr.ph.i125, %middle.block, %.preheader.i
  %.0.lcssa.i = phi ptr [ %7, %.preheader.i ], [ %i.ab, %middle.block ], [ %i.co, %.lr.ph.i125 ] ; 2 uses
  %.not29.i = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not29.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %._crit_edge.i
  %i.cr = load i32, ptr %i.bh, align 4, !tbaa !247
  store i32 0, ptr %i.bh, align 4, !tbaa !247
  %i.cs = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.ct = add i32 %i.cs, 1
  store i32 %i.ct, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.cu = load i32, ptr %.0106223, align 4, !tbaa !247
  store i32 %i.cu, ptr %i.bh, align 4, !tbaa !247
  store i32 %i.cr, ptr %.0106223, align 4, !tbaa !247
  %i.cv = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.cw = add i32 %i.cv, -1
  store i32 %i.cw, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i
  %i.cx = icmp eq ptr %i.bh, %.0191218
  br i1 %i.cx, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_7move_opEEET1_T_S9_RS9_T0_SB_SB_S8_T2_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cy = icmp eq ptr %.0191218, %.0106223
  %spec.select = select i1 %i.cy, ptr %i.bh, ptr %.0191218
  br label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_7move_opEEET1_T_S9_RS9_T0_SB_SB_S8_T2_.exit

_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_7move_opEEET1_T_S9_RS9_T0_SB_SB_S8_T2_.exit: ; preds = %bb.m, %bb.l, %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit
  %.5 = phi ptr [ %.0191218, %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit ], [ %spec.select, %bb.m ], [ %.0106223, %bb.l ]
  %.1.i = phi ptr [ %7, %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit ], [ %.0.lcssa.i, %bb.m ], [ %.0.lcssa.i, %bb.l ] ; 2 uses
  store ptr %.1.i, ptr %i.c, align 8, !tbaa !250
  br label %bb.x

bb.n:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  br i1 %i.bn, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cz = call noundef ptr @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPNS_9container4test24movable_and_copyable_intES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET_SG_SG_RSG_SG_SG_RT0_SJ_T1_T2_(ptr noundef %.0114219, ptr noundef %.0111220, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %i.bc, ptr noundef %i.ba, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPNS_9container4test24movable_and_copyable_intES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET_SG_SG_RSG_SG_SG_RT0_SJ_T1_T2_b.exit

bb.p:                                             ; preds = %.thread281, %bb.n
  %i.da = phi i1 [ true, %.thread281 ], [ %i.bm, %bb.n ]
  store ptr %8, ptr %9, align 8, !tbaa !327
  %i.db = call noundef ptr @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPNS_9container4test24movable_and_copyable_intES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_(ptr noundef %.0114219, ptr noundef %.0111220, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %i.bc, ptr noundef %i.ba, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dead_on_return %9)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPNS_9container4test24movable_and_copyable_intES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET_SG_SG_RSG_SG_SG_RT0_SJ_T1_T2_b.exit

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPNS_9container4test24movable_and_copyable_intES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET_SG_SG_RSG_SG_SG_RT0_SJ_T1_T2_b.exit: ; preds = %bb.o, %bb.p
  %i.dc = phi i1 [ %i.bm, %bb.o ], [ %i.da, %bb.p ]
  %i.dd = phi i1 [ true, %bb.o ], [ false, %bb.p ]
  %i.de = phi ptr [ %i.cz, %bb.o ], [ %i.db, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.df = load ptr, ptr %i.b, align 8, !tbaa !250 ; 4 uses
  %i.dg = load ptr, ptr %i.c, align 8, !tbaa !250 ; 4 uses
  %i.dh = icmp eq ptr %i.df, %i.dg                ; 2 uses
  br i1 %i.dh, label %bb.q, label %bb.u

bb.q:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPNS_9container4test24movable_and_copyable_intES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET_SG_SG_RSG_SG_SG_RT0_SJ_T1_T2_b.exit
  store ptr %7, ptr %i.b, align 8, !tbaa !250
  %i.di = load ptr, ptr %i.d, align 8, !tbaa !250 ; 10 uses
  %i.dj = ptrtoint ptr %i.bc to i64
  %i.dk = ptrtoint ptr %i.di to i64               ; 3 uses
  %i.dl = sub i64 %i.dj, %i.dk                    ; 2 uses
  %i.dm = ashr exact i64 %i.dl, 2
  %i.dn = sub nsw i64 0, %i.dm
  %i.do = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.dn ; 7 uses
  %.not.i126 = icmp eq ptr %i.di, %i.do
  br i1 %.not.i126, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_7move_opEEET1_T_S9_RS9_T0_SB_SB_S8_T2_.exit140, label %.preheader.i127

.preheader.i127:                                  ; preds = %bb.q
  %.not2830.i128 = icmp eq ptr %i.di, %i.bc
  br i1 %.not2830.i128, label %._crit_edge.i134, label %.lr.ph.i129.preheader

.lr.ph.i129.preheader:                            ; preds = %.preheader.i127
  %i.dp = mul i64 %indvar, %.idx208               ; 3 uses
  %i.dq = add i64 %i.v, %i.dp                     ; 2 uses
  %i.dr = sub i64 %i.dq, %i.dk                    ; 2 uses
  %i.ds = lshr i64 %i.dr, 2
  %i.dt = add nuw nsw i64 %i.ds, 1                ; 2 uses
  %min.iters.check367 = icmp ult i64 %i.dr, 60
  br i1 %min.iters.check367, label %.lr.ph.i129.preheader486, label %vector.memcheck368

vector.memcheck368:                               ; preds = %.lr.ph.i129.preheader
  %i.du = add i64 %i.r, %i.dp
  %i.dv = sub i64 %i.du, %i.dk
  %i.dw = and i64 %i.dv, -4                       ; 3 uses
  %i.dx = getelementptr i8, ptr %scevgep366, i64 %i.dw ; 2 uses
  %i.dy = add i64 %i.o, %i.dp
  %i.dz = shl i64 %.022.lcssa.i, 2
  %i.ea = add i64 %i.dz, 4
  %i.eb = mul i64 %2, %i.ea
  %i.ec = add i64 %i.dy, %i.eb
  %i.ed = add i64 %i.ec, %i.dw
  %i.ee = sub i64 %i.ed, %i.dl
  %17 = getelementptr i8, ptr %1, i64 %i.ee       ; 2 uses
  %i.ef = getelementptr i8, ptr %i.di, i64 %i.dw
  %i.eg = getelementptr i8, ptr %i.ef, i64 4      ; 2 uses
  %bound0369 = icmp ult ptr %7, %17
  %bound1370 = icmp ult ptr %i.do, %i.dx
  %found.conflict371 = and i1 %bound0369, %bound1370
  %bound0372 = icmp ult ptr %7, %i.eg
  %bound1373 = icmp ult ptr %i.di, %i.dx
  %found.conflict374 = and i1 %bound0372, %bound1373
  %conflict.rdx375 = or i1 %found.conflict371, %found.conflict374
  %bound0376 = icmp ult ptr %i.do, %i.eg
  %bound1377 = icmp ult ptr %i.di, %17
  %found.conflict378 = and i1 %bound0376, %bound1377
  %conflict.rdx379 = or i1 %conflict.rdx375, %found.conflict378
  br i1 %conflict.rdx379, label %.lr.ph.i129.preheader486, label %vector.ph380

vector.ph380:                                     ; preds = %vector.memcheck368
  %n.vec381 = and i64 %i.dt, 9223372036854775804  ; 3 uses
  %i.eh = shl i64 %n.vec381, 2                    ; 3 uses
  %i.ei = getelementptr i8, ptr %7, i64 %i.eh     ; 2 uses
  %i.ej = getelementptr i8, ptr %i.do, i64 %i.eh
  %i.ek = getelementptr i8, ptr %i.di, i64 %i.eh
  br label %vector.body382

vector.body382:                                   ; preds = %vector.body382, %vector.ph380
  %index383 = phi i64 [ 0, %vector.ph380 ], [ %index.next389, %vector.body382 ] ; 2 uses
  %i.el = shl i64 %index383, 2                    ; 3 uses
  %next.gep384 = getelementptr i8, ptr %7, i64 %i.el
  %next.gep385 = getelementptr i8, ptr %i.do, i64 %i.el ; 3 uses
  %next.gep386 = getelementptr i8, ptr %i.di, i64 %i.el ; 2 uses
  %wide.load387 = load <4 x i32>, ptr %next.gep385, align 4, !tbaa !247, !alias.scope !3164, !noalias !3165
  store <4 x i32> %wide.load387, ptr %next.gep384, align 4, !tbaa !247, !alias.scope !3166, !noalias !3167
  store <4 x i32> zeroinitializer, ptr %next.gep385, align 4, !tbaa !247, !alias.scope !3164, !noalias !3165
  %wide.load388 = load <4 x i32>, ptr %next.gep386, align 4, !tbaa !247, !alias.scope !3165
  store <4 x i32> %wide.load388, ptr %next.gep385, align 4, !tbaa !247, !alias.scope !3164, !noalias !3165
  store <4 x i32> zeroinitializer, ptr %next.gep386, align 4, !tbaa !247, !alias.scope !3165
  %index.next389 = add nuw i64 %index383, 4       ; 2 uses
  %i.em = icmp eq i64 %index.next389, %n.vec381
  br i1 %i.em, label %middle.block390, label %vector.body382, !llvm.loop !3129

middle.block390:                                  ; preds = %vector.body382
  %cmp.n391 = icmp eq i64 %i.dt, %n.vec381
  br i1 %cmp.n391, label %._crit_edge.i134, label %.lr.ph.i129.preheader486

.lr.ph.i129.preheader486:                         ; preds = %vector.memcheck368, %.lr.ph.i129.preheader, %middle.block390
  %.033.i130.ph = phi ptr [ %7, %vector.memcheck368 ], [ %7, %.lr.ph.i129.preheader ], [ %i.ei, %middle.block390 ] ; 2 uses
  %.02032.i131.ph = phi ptr [ %i.do, %vector.memcheck368 ], [ %i.do, %.lr.ph.i129.preheader ], [ %i.ej, %middle.block390 ] ; 2 uses
  %.02131.i132.ph = phi ptr [ %i.di, %vector.memcheck368 ], [ %i.di, %.lr.ph.i129.preheader ], [ %i.ek, %middle.block390 ] ; 3 uses
  %.02131.i132.ph489 = ptrtoaddr ptr %.02131.i132.ph to i64
  %i.en = sub i64 %i.dq, %.02131.i132.ph489       ; 2 uses
  %i.eo = lshr i64 %i.en, 2
  %i.ep = add nuw nsw i64 %i.eo, 1
  %xtraiter = and i64 %i.ep, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i129.prol.loopexit, label %.lr.ph.i129.prol

.lr.ph.i129.prol:                                 ; preds = %.lr.ph.i129.preheader486, %.lr.ph.i129.prol
  %.033.i130.prol = phi ptr [ %i.es, %.lr.ph.i129.prol ], [ %.033.i130.ph, %.lr.ph.i129.preheader486 ] ; 2 uses
  %.02032.i131.prol = phi ptr [ %i.er, %.lr.ph.i129.prol ], [ %.02032.i131.ph, %.lr.ph.i129.preheader486 ] ; 4 uses
  %.02131.i132.prol = phi ptr [ %i.eq, %.lr.ph.i129.prol ], [ %.02131.i132.ph, %.lr.ph.i129.preheader486 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i129.prol ], [ 0, %.lr.ph.i129.preheader486 ]
  %i.eq = getelementptr inbounds nuw i8, ptr %.02131.i132.prol, i64 4 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.02032.i131.prol, i64 4 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.033.i130.prol, i64 4 ; 3 uses
  %i.et = load i32, ptr %.02032.i131.prol, align 4, !tbaa !247
  store i32 %i.et, ptr %.033.i130.prol, align 4, !tbaa !247
  store i32 0, ptr %.02032.i131.prol, align 4, !tbaa !247
  %i.eu = load i32, ptr %.02131.i132.prol, align 4, !tbaa !247
  store i32 %i.eu, ptr %.02032.i131.prol, align 4, !tbaa !247
  store i32 0, ptr %.02131.i132.prol, align 4, !tbaa !247
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i129.prol.loopexit, label %.lr.ph.i129.prol, !llvm.loop !3130

.lr.ph.i129.prol.loopexit:                        ; preds = %.lr.ph.i129.prol, %.lr.ph.i129.preheader486
  %.lcssa487.unr = phi ptr [ poison, %.lr.ph.i129.preheader486 ], [ %i.es, %.lr.ph.i129.prol ]
  %.033.i130.unr = phi ptr [ %.033.i130.ph, %.lr.ph.i129.preheader486 ], [ %i.es, %.lr.ph.i129.prol ]
  %.02032.i131.unr = phi ptr [ %.02032.i131.ph, %.lr.ph.i129.preheader486 ], [ %i.er, %.lr.ph.i129.prol ]
  %.02131.i132.unr = phi ptr [ %.02131.i132.ph, %.lr.ph.i129.preheader486 ], [ %i.eq, %.lr.ph.i129.prol ]
  %i.ev = icmp ult i64 %i.en, 12
  br i1 %i.ev, label %._crit_edge.i134, label %.lr.ph.i129

.lr.ph.i129:                                      ; preds = %.lr.ph.i129.prol.loopexit, %.lr.ph.i129
  %.033.i130 = phi ptr [ %i.fn, %.lr.ph.i129 ], [ %.033.i130.unr, %.lr.ph.i129.prol.loopexit ] ; 5 uses
  %.02032.i131 = phi ptr [ %i.fm, %.lr.ph.i129 ], [ %.02032.i131.unr, %.lr.ph.i129.prol.loopexit ] ; 7 uses
  %.02131.i132 = phi ptr [ %i.fl, %.lr.ph.i129 ], [ %.02131.i132.unr, %.lr.ph.i129.prol.loopexit ] ; 6 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.02131.i132, i64 4 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.02032.i131, i64 4 ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.033.i130, i64 4
  %i.ez = load i32, ptr %.02032.i131, align 4, !tbaa !247
  store i32 %i.ez, ptr %.033.i130, align 4, !tbaa !247
  store i32 0, ptr %.02032.i131, align 4, !tbaa !247
  %i.fa = load i32, ptr %.02131.i132, align 4, !tbaa !247
  store i32 %i.fa, ptr %.02032.i131, align 4, !tbaa !247
  store i32 0, ptr %.02131.i132, align 4, !tbaa !247
  %i.fb = getelementptr inbounds nuw i8, ptr %.02131.i132, i64 8 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.02032.i131, i64 8 ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.033.i130, i64 8
  %i.fe = load i32, ptr %i.ex, align 4, !tbaa !247
  store i32 %i.fe, ptr %i.ey, align 4, !tbaa !247
  store i32 0, ptr %i.ex, align 4, !tbaa !247
  %i.ff = load i32, ptr %i.ew, align 4, !tbaa !247
  store i32 %i.ff, ptr %i.ex, align 4, !tbaa !247
  store i32 0, ptr %i.ew, align 4, !tbaa !247
  %i.fg = getelementptr inbounds nuw i8, ptr %.02131.i132, i64 12 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.02032.i131, i64 12 ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.033.i130, i64 12
  %i.fj = load i32, ptr %i.fc, align 4, !tbaa !247
  store i32 %i.fj, ptr %i.fd, align 4, !tbaa !247
  store i32 0, ptr %i.fc, align 4, !tbaa !247
  %i.fk = load i32, ptr %i.fb, align 4, !tbaa !247
  store i32 %i.fk, ptr %i.fc, align 4, !tbaa !247
  store i32 0, ptr %i.fb, align 4, !tbaa !247
  %i.fl = getelementptr inbounds nuw i8, ptr %.02131.i132, i64 16 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.02032.i131, i64 16
  %i.fn = getelementptr inbounds nuw i8, ptr %.033.i130, i64 16 ; 2 uses
  %i.fo = load i32, ptr %i.fh, align 4, !tbaa !247
  store i32 %i.fo, ptr %i.fi, align 4, !tbaa !247
  store i32 0, ptr %i.fh, align 4, !tbaa !247
  %i.fp = load i32, ptr %i.fg, align 4, !tbaa !247
  store i32 %i.fp, ptr %i.fh, align 4, !tbaa !247
  store i32 0, ptr %i.fg, align 4, !tbaa !247
  %.not28.i133.3 = icmp eq ptr %i.fl, %i.bc
  br i1 %.not28.i133.3, label %._crit_edge.i134, label %.lr.ph.i129, !llvm.loop !3131

._crit_edge.i134:                                 ; preds = %.lr.ph.i129.prol.loopexit, %.lr.ph.i129, %middle.block390, %.preheader.i127
  %.0.lcssa.i135 = phi ptr [ %7, %.preheader.i127 ], [ %i.ei, %middle.block390 ], [ %.lcssa487.unr, %.lr.ph.i129.prol.loopexit ], [ %i.fn, %.lr.ph.i129 ] ; 2 uses
  %.not29.i136 = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not29.i136, label %bb.s, label %bb.r

bb.r:                                             ; preds = %._crit_edge.i134
  %i.fq = load i32, ptr %i.bh, align 4, !tbaa !247
  store i32 0, ptr %i.bh, align 4, !tbaa !247
  %i.fr = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.fs = add i32 %i.fr, 1
  store i32 %i.fs, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.ft = load i32, ptr %.0106223, align 4, !tbaa !247
  store i32 %i.ft, ptr %i.bh, align 4, !tbaa !247
  store i32 %i.fq, ptr %.0106223, align 4, !tbaa !247
  %i.fu = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.fv = add i32 %i.fu, -1
  store i32 %i.fv, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge.i134
  %i.fw = icmp eq ptr %i.bh, %.0191218
  br i1 %i.fw, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_7move_opEEET1_T_S9_RS9_T0_SB_SB_S8_T2_.exit140, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fx = icmp eq ptr %.0191218, %.0106223
  %spec.select205 = select i1 %i.fx, ptr %i.bh, ptr %.0191218
  br label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_7move_opEEET1_T_S9_RS9_T0_SB_SB_S8_T2_.exit140

_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_7move_opEEET1_T_S9_RS9_T0_SB_SB_S8_T2_.exit140: ; preds = %bb.t, %bb.s, %bb.q
  %.6 = phi ptr [ %.0191218, %bb.q ], [ %spec.select205, %bb.t ], [ %.0106223, %bb.s ]
  %.1.i137 = phi ptr [ %7, %bb.q ], [ %.0.lcssa.i135, %bb.t ], [ %.0.lcssa.i135, %bb.s ] ; 2 uses
  store ptr %.1.i137, ptr %i.c, align 8, !tbaa !250
  br label %_ZN5boost7movelib15detail_adaptive10update_keyIPNS_9container4test24movable_and_copyable_intEEEvT_S7_RS7_.exit

bb.u:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPNS_9container4test24movable_and_copyable_intES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET_SG_SG_RSG_SG_SG_RT0_SJ_T1_T2_b.exit
  %.not.i141 = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not.i141, label %_ZN5boost7movelib15detail_adaptive10update_keyIPNS_9container4test24movable_and_copyable_intEEEvT_S7_RS7_.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fy = load i32, ptr %i.bh, align 4, !tbaa !247
  store i32 0, ptr %i.bh, align 4, !tbaa !247
  %i.fz = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.ga = add i32 %i.fz, 1
  store i32 %i.ga, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.gb = load i32, ptr %.0106223, align 4, !tbaa !247
  store i32 %i.gb, ptr %i.bh, align 4, !tbaa !247
  store i32 %i.fy, ptr %.0106223, align 4, !tbaa !247
  %i.gc = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.gd = add i32 %i.gc, -1
  store i32 %i.gd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.ge = icmp eq ptr %i.bh, %.0191218
  br i1 %i.ge, label %_ZN5boost7movelib15detail_adaptive10update_keyIPNS_9container4test24movable_and_copyable_intEEEvT_S7_RS7_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gf = icmp eq ptr %.0191218, %.0106223
  %spec.select206 = select i1 %i.gf, ptr %i.bh, ptr %.0191218
  br label %_ZN5boost7movelib15detail_adaptive10update_keyIPNS_9container4test24movable_and_copyable_intEEEvT_S7_RS7_.exit

_ZN5boost7movelib15detail_adaptive10update_keyIPNS_9container4test24movable_and_copyable_intEEEvT_S7_RS7_.exit: ; preds = %bb.w, %bb.u, %bb.v, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_7move_opEEET1_T_S9_RS9_T0_SB_SB_S8_T2_.exit140
  %i.gg = phi ptr [ %.1.i137, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_7move_opEEET1_T_S9_RS9_T0_SB_SB_S8_T2_.exit140 ], [ %i.dg, %bb.u ], [ %i.dg, %bb.w ], [ %i.dg, %bb.v ]
  %i.gh = phi ptr [ %7, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_7move_opEEET1_T_S9_RS9_T0_SB_SB_S8_T2_.exit140 ], [ %i.df, %bb.u ], [ %i.df, %bb.w ], [ %i.df, %bb.v ]
  %.1192 = phi ptr [ %.6, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_7move_opEEET1_T_S9_RS9_T0_SB_SB_S8_T2_.exit140 ], [ %.0191218, %bb.u ], [ %spec.select206, %bb.w ], [ %.0106223, %bb.v ]
  %i.gi = xor i1 %i.dd, %i.dh
  %i.gj = zext i1 %i.gi to i8
  br label %bb.x

bb.x:                                             ; preds = %_ZN5boost7movelib15detail_adaptive10update_keyIPNS_9container4test24movable_and_copyable_intEEEvT_S7_RS7_.exit, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_7move_opEEET1_T_S9_RS9_T0_SB_SB_S8_T2_.exit
  %i.gk = phi ptr [ %i.gg, %_ZN5boost7movelib15detail_adaptive10update_keyIPNS_9container4test24movable_and_copyable_intEEEvT_S7_RS7_.exit ], [ %.1.i, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_7move_opEEET1_T_S9_RS9_T0_SB_SB_S8_T2_.exit ] ; 2 uses
  %i.gl = phi ptr [ %i.gh, %_ZN5boost7movelib15detail_adaptive10update_keyIPNS_9container4test24movable_and_copyable_intEEEvT_S7_RS7_.exit ], [ %7, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_7move_opEEET1_T_S9_RS9_T0_SB_SB_S8_T2_.exit ] ; 2 uses
  %i.gm = phi i1 [ %i.dc, %_ZN5boost7movelib15detail_adaptive10update_keyIPNS_9container4test24movable_and_copyable_intEEEvT_S7_RS7_.exit ], [ %i.bp, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_7move_opEEET1_T_S9_RS9_T0_SB_SB_S8_T2_.exit ]
  %.2193 = phi ptr [ %.1192, %_ZN5boost7movelib15detail_adaptive10update_keyIPNS_9container4test24movable_and_copyable_intEEEvT_S7_RS7_.exit ], [ %.5, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_7move_opEEET1_T_S9_RS9_T0_SB_SB_S8_T2_.exit ] ; 2 uses
  %.1115 = phi ptr [ %i.de, %_ZN5boost7movelib15detail_adaptive10update_keyIPNS_9container4test24movable_and_copyable_intEEEvT_S7_RS7_.exit ], [ %i.ae, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_7move_opEEET1_T_S9_RS9_T0_SB_SB_S8_T2_.exit ] ; 2 uses
  %.1109 = phi i8 [ %i.gj, %_ZN5boost7movelib15detail_adaptive10update_keyIPNS_9container4test24movable_and_copyable_intEEEvT_S7_RS7_.exit ], [ %.0108222, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_7move_opEEET1_T_S9_RS9_T0_SB_SB_S8_T2_.exit ] ; 2 uses
  %not. = xor i1 %i.gm, true
  %i.gn = sext i1 %not. to i64
  %.1 = add i64 %.0227, %i.gn
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %.0111220, i64 %2 ; 2 uses
  store ptr %i.bc, ptr %i.d, align 8, !tbaa !250
  %i.gp = getelementptr inbounds nuw i8, ptr %.0106223, i64 4
  %i.gq = icmp ne i64 %.0104226, 0
  %.neg = sext i1 %i.gq to i64
  %i.gr = add i64 %.0104226, %.neg
  %i.gs = icmp ne i64 %i.ay, 0
  %.neg122 = sext i1 %i.gs to i64
  %i.gt = add i64 %.sroa.speculated180, %.neg122
  %i.gu = add i64 %.0195217, -1                   ; 2 uses
  %.not = icmp eq i64 %i.gu, 0
end_hunk_2
begin_hunk_3_@_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEES6_SE_NS0_7swap_opES6_EEvT_T0_T1_NS0_9iter_sizeISI_E4typeESL_SL_SL_SL_T2_T3_T4_:bb.a
  %.0191.lcssa291 = phi ptr [ %i.e, %bb.a ], [ %.0191.lcssa.ph, %.thread ], [ %.0191.lcssa.ph, %.lr.ph.i.i145 ]
  %.0195.lcssa290 = phi i64 [ 0, %bb.a ], [ %.0195.lcssa.ph, %.thread ], [ %.0195.lcssa.ph, %.lr.ph.i.i145 ] ; 2 uses
  %.idx210 = shl i64 %6, 2                        ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx210 ; 2 uses
  %.not8.i.i151 = icmp eq i64 %6, 0
  br i1 %.not8.i.i151, label %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit157, label %.lr.ph.i.i152.preheader

.lr.ph.i.i152.preheader:                          ; preds = %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit150
  %i.eq = add i64 %.idx210, -4                    ; 2 uses
  %i.er = and i64 %i.eq, 4
  %lcmp.mod.not.not = icmp eq i64 %i.er, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i152.prol, label %.lr.ph.i.i152.prol.loopexit

.lr.ph.i.i152.prol:                               ; preds = %.lr.ph.i.i152.preheader
  %i.es = load i32, ptr %i.h, align 4, !tbaa !247
  store i32 0, ptr %i.h, align 4, !tbaa !247
  %i.et = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.eu = add i32 %i.et, 1
  store i32 %i.eu, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.ev = load i32, ptr %7, align 4, !tbaa !247
  store i32 %i.ev, ptr %i.h, align 4, !tbaa !247
  store i32 %i.es, ptr %7, align 4, !tbaa !247
  %i.ew = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.ex = add i32 %i.ew, -1
  store i32 %i.ex, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.ey = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.ez = getelementptr inbounds nuw i8, ptr %7, i64 4
  br label %.lr.ph.i.i152.prol.loopexit

.lr.ph.i.i152.prol.loopexit:                      ; preds = %.lr.ph.i.i152.prol, %.lr.ph.i.i152.preheader
  %.010.i.i153.unr = phi ptr [ %7, %.lr.ph.i.i152.preheader ], [ %i.ez, %.lr.ph.i.i152.prol ]
  %.079.i.i154.unr = phi ptr [ %i.h, %.lr.ph.i.i152.preheader ], [ %i.ey, %.lr.ph.i.i152.prol ]
  %i.fa = icmp eq i64 %i.eq, 0
  br i1 %i.fa, label %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit157, label %.lr.ph.i.i152

.lr.ph.i.i152:                                    ; preds = %.lr.ph.i.i152.prol.loopexit, %.lr.ph.i.i152
  %.010.i.i153 = phi ptr [ %i.fn, %.lr.ph.i.i152 ], [ %.010.i.i153.unr, %.lr.ph.i.i152.prol.loopexit ] ; 4 uses
  %.079.i.i154 = phi ptr [ %i.fm, %.lr.ph.i.i152 ], [ %.079.i.i154.unr, %.lr.ph.i.i152.prol.loopexit ] ; 5 uses
  %i.fb = load i32, ptr %.079.i.i154, align 4, !tbaa !247
  store i32 0, ptr %.079.i.i154, align 4, !tbaa !247
  %i.fc = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.fd = add i32 %i.fc, 1
  store i32 %i.fd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.fe = load i32, ptr %.010.i.i153, align 4, !tbaa !247
  store i32 %i.fe, ptr %.079.i.i154, align 4, !tbaa !247
  store i32 %i.fb, ptr %.010.i.i153, align 4, !tbaa !247
  %i.ff = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248 ; 3 uses
  %i.fg = add i32 %i.ff, -1
  store i32 %i.fg, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.fh = getelementptr inbounds nuw i8, ptr %.079.i.i154, i64 4 ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.010.i.i153, i64 4 ; 2 uses
  %i.fj = load i32, ptr %i.fh, align 4, !tbaa !247
  store i32 0, ptr %i.fh, align 4, !tbaa !247
  store i32 %i.ff, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.fk = load i32, ptr %i.fi, align 4, !tbaa !247
  store i32 %i.fk, ptr %i.fh, align 4, !tbaa !247
  store i32 %i.fj, ptr %i.fi, align 4, !tbaa !247
  %i.fl = add i32 %i.ff, -1
  store i32 %i.fl, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.fm = getelementptr inbounds nuw i8, ptr %.079.i.i154, i64 8 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.010.i.i153, i64 8
  %.not.i.i155.1 = icmp eq ptr %i.fm, %i.ep
  br i1 %.not.i.i155.1, label %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit157, label %.lr.ph.i.i152, !llvm.loop !41

_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit157: ; preds = %.lr.ph.i.i152.prol.loopexit, %.lr.ph.i.i152, %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit150
  store ptr %7, ptr %i.a, align 8, !tbaa !250
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %6 ; 2 uses
  store ptr %i.fo, ptr %i.b, align 8, !tbaa !250
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  store ptr %i.fo, ptr %10, align 8, !tbaa !330
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %5
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %4
  store ptr %i.fq, ptr %12, align 8, !tbaa !330, !alias.scope !3192
  store ptr %.0191.lcssa291, ptr %13, align 8, !tbaa !330, !alias.scope !3193
  store ptr %i.h, ptr %14, align 8, !tbaa !330, !alias.scope !3194
  store ptr %7, ptr %15, align 8, !tbaa !330, !alias.scope !3195
  store ptr %i.ep, ptr %16, align 8, !tbaa !330, !alias.scope !3196
  call void @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEES8_S8_S8_SI_NS0_7swap_opEEET3_T_SL_T0_T1_RT2_SO_SK_NS0_9iter_sizeISN_E4typeESS_SS_SS_T4_bT5_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator.67") align 8 %11, ptr noundef nonnull align 8 dead_on_return %12, ptr noundef nonnull align 8 dead_on_return %13, ptr noundef nonnull align 8 dead_on_return %14, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dead_on_return %15, ptr noundef nonnull align 8 dead_on_return %16, i64 noundef %2, i64 noundef %.0195.lcssa290, i64 noundef 0, i64 noundef %.0195.lcssa290, i1 noundef zeroext true)
  %i.fr = load ptr, ptr %11, align 8, !tbaa !330
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  %i.fs = load ptr, ptr %10, align 8, !tbaa !330  ; 2 uses
  %i.ft = load ptr, ptr %i.a, align 8, !tbaa !250 ; 3 uses
  %.not27.i = icmp eq ptr %i.ft, %i.fs
  br i1 %.not27.i, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEENS0_7swap_opEPS7_SE_EEvT2_SF_SF_T1_SG_T_T0_.exit, label %.lr.ph.i158

.lr.ph.i158:                                      ; preds = %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit157, %bb.ab
  %.030.i = phi ptr [ %.1.i159, %bb.ab ], [ %i.fs, %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit157 ] ; 3 uses
  %.01929.i = phi ptr [ %.120.i, %bb.ab ], [ %.0111.lcssa292, %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit157 ] ; 3 uses
  %.02128.i = phi ptr [ %i.gi, %bb.ab ], [ %i.fr, %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit157 ] ; 2 uses
  %i.fu = icmp eq ptr %.0108.lcssa293, %.01929.i
  br i1 %i.fu, label %.lr.ph.i.i.i, label %bb.y

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i158, %.lr.ph.i.i.i
  %.08.i.i.i = phi ptr [ %i.fw, %.lr.ph.i.i.i ], [ %.02128.i, %.lr.ph.i158 ]
  %.057.i.i.i = phi ptr [ %i.fv, %.lr.ph.i.i.i ], [ %.030.i, %.lr.ph.i158 ]
  %i.fv = getelementptr inbounds i8, ptr %.057.i.i.i, i64 -4 ; 5 uses
  %i.fw = getelementptr inbounds i8, ptr %.08.i.i.i, i64 -4 ; 3 uses
  %i.fx = load i32, ptr %i.fv, align 4, !tbaa !247
  store i32 0, ptr %i.fv, align 4, !tbaa !247
  %i.fy = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.fz = add i32 %i.fy, 1
  store i32 %i.fz, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.ga = load i32, ptr %i.fw, align 4, !tbaa !247
  store i32 %i.ga, ptr %i.fv, align 4, !tbaa !247
  store i32 %i.fx, ptr %i.fw, align 4, !tbaa !247
  %i.gb = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.gc = add i32 %i.gb, -1
  store i32 %i.gc, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %.not.i.i.i = icmp eq ptr %i.ft, %i.fv
  br i1 %.not.i.i.i, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEENS0_7swap_opEPS7_SE_EEvT2_SF_SF_T1_SG_T_T0_.exit, label %.lr.ph.i.i.i, !llvm.loop !40

bb.y:                                             ; preds = %.lr.ph.i158
  %i.gd = getelementptr inbounds i8, ptr %.030.i, i64 -4 ; 4 uses
  %i.ge = getelementptr inbounds i8, ptr %.01929.i, i64 -4 ; 4 uses
  %i.gf = load i32, ptr %i.gd, align 4, !tbaa !247
  %i.gg = load i32, ptr %i.ge, align 4, !tbaa !247
  %i.gh = icmp slt i32 %i.gf, %i.gg
  %i.gi = getelementptr inbounds i8, ptr %.02128.i, i64 -4 ; 5 uses
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !247 ; 2 uses
  store i32 0, ptr %i.gi, align 4, !tbaa !247
  %i.gk = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.gl = add i32 %i.gk, 1
  store i32 %i.gl, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  br i1 %i.gh, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.gm = load i32, ptr %i.ge, align 4, !tbaa !247
  store i32 %i.gm, ptr %i.gi, align 4, !tbaa !247
  store i32 %i.gj, ptr %i.ge, align 4, !tbaa !247
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.gn = load i32, ptr %i.gd, align 4, !tbaa !247
  store i32 %i.gn, ptr %i.gi, align 4, !tbaa !247
  store i32 %i.gj, ptr %i.gd, align 4, !tbaa !247
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.120.i = phi ptr [ %i.ge, %bb.z ], [ %.01929.i, %bb.aa ]
  %.1.i159 = phi ptr [ %.030.i, %bb.z ], [ %i.gd, %bb.aa ] ; 2 uses
  %storemerge.in.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %storemerge.i = add i32 %storemerge.in.i, -1
  store i32 %storemerge.i, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %.not.i160 = icmp eq ptr %i.ft, %.1.i159
  br i1 %.not.i160, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEENS0_7swap_opEPS7_SE_EEvT2_SF_SF_T1_SG_T_T0_.exit, label %.lr.ph.i158, !llvm.loop !3191

_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEENS0_7swap_opEPS7_SE_EEvT2_SF_SF_T1_SG_T_T0_.exit: ; preds = %bb.ab, %.lr.ph.i.i.i, %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit157
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPmNS1_4lessEPNS_9container4test24movable_and_copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEENS0_7move_opES8_EEvT_T0_T1_NS0_9iter_sizeISK_E4typeESN_SN_SN_SN_T2_T3_T4_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef %7) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %8 = alloca %"class.boost::container::dtl::flat_tree_value_compare.7", align 1 ; 4 uses
  %9 = alloca %"struct.boost::movelib::antistable.65", align 8 ; 5 uses
  %i.b = alloca ptr, align 8                      ; 10 uses
  %i.c = alloca ptr, align 8                      ; 9 uses
  %i.d = alloca ptr, align 8                      ; 7 uses
  %10 = alloca %"class.boost::movelib::reverse_iterator.67", align 8 ; 5 uses
  %11 = alloca %"class.boost::movelib::reverse_iterator.67", align 8 ; 4 uses
  %12 = alloca %"class.boost::movelib::reverse_iterator.54", align 8 ; 2 uses
  %13 = alloca %"class.boost::movelib::reverse_iterator.54", align 8 ; 2 uses
  %14 = alloca %"class.boost::movelib::reverse_iterator.67", align 8 ; 2 uses
  %15 = alloca %"class.boost::movelib::reverse_iterator.67", align 8 ; 2 uses
  %16 = alloca %"class.boost::movelib::reverse_iterator.67", align 8 ; 2 uses
  %i.e = add i64 %5, %4                           ; 5 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store ptr %7, ptr %i.b, align 8, !tbaa !250
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store ptr %7, ptr %i.c, align 8, !tbaa !250
  %i.g = getelementptr [4 x i8], ptr %1, i64 %3   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store ptr %i.g, ptr %i.d, align 8, !tbaa !250
  %i.h = mul i64 %i.e, %2
  %i.i = getelementptr [4 x i8], ptr %i.g, i64 %i.h ; 10 uses
  %.not216 = icmp eq i64 %i.e, 0
  br i1 %.not216, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit150, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = icmp eq i64 %5, 0
  %i.k = select i1 %i.j, i64 0, i64 %4            ; 2 uses
  %i.l = add i64 %i.k, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %i.e)
  %.idx208 = shl i64 %2, 2                        ; 7 uses
  %.not121 = icmp eq i64 %6, 0
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.e
  %.not2830.i = icmp eq i64 %2, 0
  %scevgep = getelementptr i8, ptr %7, i64 %.idx208 ; 2 uses
  %i.n = shl i64 %3, 2                            ; 2 uses
  %i.o = add i64 %i.n, 4
  %i.p = add i64 %i.n, %i.a
  %i.q = add i64 %i.p, %.idx208
  %i.r = add i64 %i.q, -4
  %scevgep366 = getelementptr i8, ptr %7, i64 4
  %i.s = shl i64 %3, 2
  %i.t = add i64 %i.s, %i.a
  %i.u = add i64 %i.t, %.idx208
  %i.v = add i64 %i.u, -4
  %i.w = add i64 %.idx208, -4                     ; 2 uses
  %i.x = lshr exact i64 %i.w, 2
  %i.y = add nuw nsw i64 %i.x, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.w, 44
  %bound0309 = icmp ult ptr %7, %i.i
  %bound1310 = icmp ult ptr %i.g, %scevgep
  %found.conflict311 = and i1 %bound0309, %bound1310
  %stride.check = icmp slt i64 %.idx208, 0
  %i.z = or i1 %found.conflict311, %stride.check
  %n.vec = and i64 %i.y, 9223372036854775804      ; 3 uses
  %i.aa = shl i64 %n.vec, 2                       ; 3 uses
  %i.ab = getelementptr i8, ptr %7, i64 %i.aa     ; 2 uses
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.x
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %bb.x ] ; 2 uses
  %i.ac = phi ptr [ %7, %.lr.ph ], [ %i.fy, %bb.x ] ; 5 uses
  %i.ad = phi ptr [ %7, %.lr.ph ], [ %i.fz, %bb.x ] ; 10 uses
  %i.ae = phi ptr [ %i.g, %.lr.ph ], [ %i.bc, %bb.x ] ; 9 uses
  %.0 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.gh, %bb.x ] ; 3 uses
  %.0227 = phi i64 [ %5, %.lr.ph ], [ %.1, %bb.x ] ; 2 uses
  %.0104226 = phi i64 [ %i.k, %.lr.ph ], [ %i.gf, %bb.x ] ; 4 uses
  %.0106223 = phi ptr [ %0, %.lr.ph ], [ %i.gd, %bb.x ] ; 16 uses
  %.0108222 = phi i8 [ 1, %.lr.ph ], [ %.1109, %bb.x ] ; 5 uses
  %.0111220 = phi ptr [ %i.g, %.lr.ph ], [ %i.gc, %bb.x ] ; 5 uses
  %.0114219 = phi ptr [ %1, %.lr.ph ], [ %.1115, %bb.x ] ; 10 uses
  %.0191218 = phi ptr [ %i.f, %.lr.ph ], [ %.2193, %bb.x ] ; 16 uses
  %.0195217 = phi i64 [ %i.e, %.lr.ph ], [ %i.gi, %bb.x ] ; 4 uses
  %i.af = ptrtoaddr ptr %i.ac to i64
  %i.ag = ptrtoaddr ptr %i.ad to i64
  %i.ah = icmp ult i64 %.0104226, %.0
  br i1 %i.ah, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPNS_9container4test24movable_and_copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread24.i
  %.027.i = phi i64 [ %i.aw, %.thread24.i ], [ %.0104226, %bb.b ] ; 4 uses
  %.02226.i = phi i64 [ %i.av, %.thread24.i ], [ 0, %bb.b ] ; 4 uses
  %i.ai = mul i64 %.02226.i, %2
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.ai
  %i.ak = mul i64 %.027.i, %2
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.ak
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.0106223, i64 %.02226.i
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %.0106223, i64 %.027.i
  %i.ao = load i32, ptr %i.al, align 4, !tbaa !247 ; 2 uses
  %i.ap = load i32, ptr %i.aj, align 4, !tbaa !247 ; 2 uses
  %i.aq = icmp slt i32 %i.ao, %i.ap
  br i1 %i.aq, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.ar = icmp slt i32 %i.ap, %i.ao
  br i1 %i.ar, label %.thread24.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.as = load i64, ptr %i.an, align 8, !tbaa !223
  %i.at = load i64, ptr %i.am, align 8, !tbaa !223
  %i.au = icmp ult i64 %i.as, %i.at
  %cond.fr.i = freeze i1 %i.au
  br i1 %cond.fr.i, label %.thread.i, label %.thread24.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread24.i

.thread24.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.av = phi i64 [ %.027.i, %.thread.i ], [ %.02226.i, %bb.d ], [ %.02226.i, %bb.c ] ; 2 uses
  %i.aw = add nuw i64 %.027.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.aw, %.0
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPNS_9container4test24movable_and_copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit, label %.lr.ph.i, !llvm.loop !78

_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPNS_9container4test24movable_and_copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit: ; preds = %.thread24.i, %bb.b
  %.022.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.av, %.thread24.i ] ; 7 uses
  %i.ax = add i64 %.022.lcssa.i, 2
  %i.ay = call i64 @llvm.umax.i64(i64 %.0, i64 %i.ax) ; 2 uses
  %.sroa.speculated180 = call i64 @llvm.umin.i64(i64 %i.ay, i64 %.0195217)
  %i.az = mul i64 %.022.lcssa.i, %2               ; 2 uses
  %.idx = shl i64 %i.az, 2
  %i.ba = getelementptr i8, ptr %i.ae, i64 %.idx  ; 10 uses
  %i.bb = getelementptr [4 x i8], ptr %i.ba, i64 %2 ; 3 uses
  %i.bc = getelementptr i8, ptr %i.ae, i64 %.idx208 ; 8 uses
  %i.bd = icmp eq ptr %i.ad, %i.ac
  %.not120 = icmp eq i64 %.0227, 0
  br i1 %.not120, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPNS_9container4test24movable_and_copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit
  br i1 %.not121, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.be = load i32, ptr %i.i, align 4, !tbaa !247
  %i.bf = load i32, ptr %i.ba, align 4, !tbaa !247
  %i.bg = icmp slt i32 %i.be, %i.bf
  br i1 %i.bg, label %.thread, label %bb.h

bb.g:                                             ; preds = %bb.e
  %.old123 = trunc nuw i8 %.0108222 to i1
  br i1 %.old123, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPNS_9container4test24movable_and_copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit
  %.idx209 = shl nuw nsw i64 %.022.lcssa.i, 3
  %i.bh = getelementptr inbounds nuw i8, ptr %.0106223, i64 %.idx209 ; 13 uses
  %i.bi = icmp eq ptr %.0191218, %i.m
  br i1 %i.bi, label %._crit_edge, label %bb.i

._crit_edge:                                      ; preds = %bb.h
  %i.bj = trunc nuw i8 %.0108222 to i1
  br i1 %i.bj, label %bb.j, label %.thread281

.thread281:                                       ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  br label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.bk = load i64, ptr %i.bh, align 8, !tbaa !223
  %i.bl = load i64, ptr %.0191218, align 8, !tbaa !223
  %i.bm = icmp ult i64 %i.bk, %i.bl               ; 4 uses
  %i.bn = trunc nuw i8 %.0108222 to i1            ; 2 uses
  %i.bo = xor i1 %i.bm, %i.bn
  br i1 %i.bo, label %bb.n, label %bb.j

bb.j:                                             ; preds = %._crit_edge, %bb.i
  %i.bp = phi i1 [ true, %._crit_edge ], [ %i.bm, %bb.i ]
  br i1 %i.bd, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.j
  %i.bq = add i64 %i.af, -4
  %i.br = sub i64 %i.bq, %i.ag                    ; 3 uses
  %i.bs = lshr i64 %i.br, 2
  %i.bt = add nuw nsw i64 %i.bs, 1                ; 2 uses
  %min.iters.check330 = icmp ult i64 %i.br, 28
  br i1 %min.iters.check330, label %.lr.ph.i.i.preheader485, label %vector.memcheck331

vector.memcheck331:                               ; preds = %.lr.ph.i.i.preheader
  %i.bu = and i64 %i.br, -4
  %i.bv = add i64 %i.bu, 4                        ; 2 uses
  %i.bw = getelementptr i8, ptr %.0114219, i64 %i.bv
  %i.bx = getelementptr i8, ptr %i.ad, i64 %i.bv
  %bound0332 = icmp ult ptr %.0114219, %i.bx
  %bound1333 = icmp ult ptr %i.ad, %i.bw
  %found.conflict334 = and i1 %bound0332, %bound1333
  br i1 %found.conflict334, label %.lr.ph.i.i.preheader485, label %vector.ph335

vector.ph335:                                     ; preds = %vector.memcheck331
  %n.vec336 = and i64 %i.bt, 9223372036854775800  ; 3 uses
  %i.by = shl i64 %n.vec336, 2                    ; 2 uses
  %i.bz = getelementptr i8, ptr %.0114219, i64 %i.by
  %i.ca = getelementptr i8, ptr %i.ad, i64 %i.by
  br label %vector.body337

vector.body337:                                   ; preds = %vector.body337, %vector.ph335
  %index338 = phi i64 [ 0, %vector.ph335 ], [ %index.next343, %vector.body337 ] ; 2 uses
  %i.cb = shl i64 %index338, 2                    ; 2 uses
  %next.gep339 = getelementptr i8, ptr %.0114219, i64 %i.cb ; 2 uses
  %next.gep340 = getelementptr i8, ptr %i.ad, i64 %i.cb ; 3 uses
  %i.cc = getelementptr i8, ptr %next.gep340, i64 16 ; 2 uses
  %wide.load341 = load <4 x i32>, ptr %next.gep340, align 4, !tbaa !247, !alias.scope !3241
  %wide.load342 = load <4 x i32>, ptr %i.cc, align 4, !tbaa !247, !alias.scope !3241
  %i.cd = getelementptr i8, ptr %next.gep339, i64 16
  store <4 x i32> %wide.load341, ptr %next.gep339, align 4, !tbaa !247, !alias.scope !3242, !noalias !3241
  store <4 x i32> %wide.load342, ptr %i.cd, align 4, !tbaa !247, !alias.scope !3242, !noalias !3241
  store <4 x i32> zeroinitializer, ptr %next.gep340, align 4, !tbaa !247, !alias.scope !3241
  store <4 x i32> zeroinitializer, ptr %i.cc, align 4, !tbaa !247, !alias.scope !3241
  %index.next343 = add nuw i64 %index338, 8       ; 2 uses
  %i.ce = icmp eq i64 %index.next343, %n.vec336
  br i1 %i.ce, label %middle.block344, label %vector.body337, !llvm.loop !3200

middle.block344:                                  ; preds = %vector.body337
  %cmp.n345 = icmp eq i64 %i.bt, %n.vec336
  br i1 %cmp.n345, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit, label %.lr.ph.i.i.preheader485

.lr.ph.i.i.preheader485:                          ; preds = %vector.memcheck331, %.lr.ph.i.i.preheader, %middle.block344
  %.010.i.i.ph = phi ptr [ %.0114219, %vector.memcheck331 ], [ %.0114219, %.lr.ph.i.i.preheader ], [ %i.bz, %middle.block344 ]
  %.079.i.i.ph = phi ptr [ %i.ad, %vector.memcheck331 ], [ %i.ad, %.lr.ph.i.i.preheader ], [ %i.ca, %middle.block344 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader485, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.ch, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader485 ] ; 2 uses
  %.079.i.i = phi ptr [ %i.cg, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader485 ] ; 3 uses
  %i.cf = load i32, ptr %.079.i.i, align 4, !tbaa !247
  store i32 %i.cf, ptr %.010.i.i, align 4, !tbaa !247
  store i32 0, ptr %.079.i.i, align 4, !tbaa !247
  %i.cg = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  %.not.i.i = icmp eq ptr %i.cg, %i.ac
  br i1 %.not.i.i, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit, label %.lr.ph.i.i, !llvm.loop !3201

_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit: ; preds = %.lr.ph.i.i, %middle.block344, %bb.j
  store ptr %7, ptr %i.b, align 8, !tbaa !250
  %.not.i = icmp eq i64 %i.az, 0
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPNS_9container4test24movable_and_copyable_intES7_NS0_7move_opEEET1_T_SA_RSA_T0_SC_SC_S9_T2_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit
  br i1 %.not2830.i, label %._crit_edge.i, label %.lr.ph.i125.preheader

.lr.ph.i125.preheader:                            ; preds = %.preheader.i
  br i1 %min.iters.check, label %.lr.ph.i125.preheader484, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i125.preheader
  %bound0 = icmp ult ptr %7, %i.bb
  %bound1 = icmp ult ptr %i.ba, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %conflict.rdx = or i1 %found.conflict, %i.z
  %bound0312 = icmp ult ptr %i.ba, %i.i
  %bound1313 = icmp ult ptr %i.g, %i.bb
  %found.conflict314 = and i1 %bound0312, %bound1313
  %conflict.rdx315 = or i1 %conflict.rdx, %found.conflict314
  br i1 %conflict.rdx315, label %.lr.ph.i125.preheader484, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ci = getelementptr i8, ptr %i.ba, i64 %i.aa
  %i.cj = getelementptr i8, ptr %i.ae, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ck = shl i64 %index, 2                       ; 3 uses
  %next.gep = getelementptr i8, ptr %7, i64 %i.ck
  %next.gep316 = getelementptr i8, ptr %i.ba, i64 %i.ck ; 3 uses
  %next.gep317 = getelementptr i8, ptr %i.ae, i64 %i.ck ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep316, align 4, !tbaa !247, !alias.scope !3243, !noalias !3244
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !247, !alias.scope !3245, !noalias !3246
  store <4 x i32> zeroinitializer, ptr %next.gep316, align 4, !tbaa !247, !alias.scope !3243, !noalias !3244
  %wide.load318 = load <4 x i32>, ptr %next.gep317, align 4, !tbaa !247, !alias.scope !3244
  store <4 x i32> %wide.load318, ptr %next.gep316, align 4, !tbaa !247, !alias.scope !3243, !noalias !3244
  store <4 x i32> zeroinitializer, ptr %next.gep317, align 4, !tbaa !247, !alias.scope !3244
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cl = icmp eq i64 %index.next, %n.vec
  br i1 %i.cl, label %middle.block, label %vector.body, !llvm.loop !3206

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i125.preheader484

.lr.ph.i125.preheader484:                         ; preds = %vector.memcheck, %.lr.ph.i125.preheader, %middle.block
  %.033.i.ph = phi ptr [ %7, %vector.memcheck ], [ %7, %.lr.ph.i125.preheader ], [ %i.ab, %middle.block ]
  %.02032.i.ph = phi ptr [ %i.ba, %vector.memcheck ], [ %i.ba, %.lr.ph.i125.preheader ], [ %i.ci, %middle.block ]
  %.02131.i.ph = phi ptr [ %i.ae, %vector.memcheck ], [ %i.ae, %.lr.ph.i125.preheader ], [ %i.cj, %middle.block ]
  br label %.lr.ph.i125

.lr.ph.i125:                                      ; preds = %.lr.ph.i125.preheader484, %.lr.ph.i125
  %.033.i = phi ptr [ %i.co, %.lr.ph.i125 ], [ %.033.i.ph, %.lr.ph.i125.preheader484 ] ; 2 uses
  %.02032.i = phi ptr [ %i.cn, %.lr.ph.i125 ], [ %.02032.i.ph, %.lr.ph.i125.preheader484 ] ; 4 uses
  %.02131.i = phi ptr [ %i.cm, %.lr.ph.i125 ], [ %.02131.i.ph, %.lr.ph.i125.preheader484 ] ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.02131.i, i64 4 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.02032.i, i64 4
  %i.co = getelementptr inbounds nuw i8, ptr %.033.i, i64 4 ; 2 uses
  %i.cp = load i32, ptr %.02032.i, align 4, !tbaa !247
  store i32 %i.cp, ptr %.033.i, align 4, !tbaa !247
  store i32 0, ptr %.02032.i, align 4, !tbaa !247
  %i.cq = load i32, ptr %.02131.i, align 4, !tbaa !247
  store i32 %i.cq, ptr %.02032.i, align 4, !tbaa !247
  store i32 0, ptr %.02131.i, align 4, !tbaa !247
  %.not28.i = icmp eq ptr %i.cm, %i.bc
  br i1 %.not28.i, label %._crit_edge.i, label %.lr.ph.i125, !llvm.loop !3207

._crit_edge.i:                                    ; preds = %.lr.ph.i125, %middle.block, %.preheader.i
  %.0.lcssa.i = phi ptr [ %7, %.preheader.i ], [ %i.ab, %middle.block ], [ %i.co, %.lr.ph.i125 ] ; 2 uses
  %.not29.i = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not29.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %._crit_edge.i
  %i.cr = load i64, ptr %i.bh, align 8, !tbaa !223
  %i.cs = load i64, ptr %.0106223, align 8, !tbaa !223
  store i64 %i.cs, ptr %i.bh, align 8, !tbaa !223
  store i64 %i.cr, ptr %.0106223, align 8, !tbaa !223
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i
  %i.ct = icmp eq ptr %i.bh, %.0191218
  br i1 %i.ct, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPNS_9container4test24movable_and_copyable_intES7_NS0_7move_opEEET1_T_SA_RSA_T0_SC_SC_S9_T2_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cu = icmp eq ptr %.0191218, %.0106223
  %spec.select = select i1 %i.cu, ptr %i.bh, ptr %.0191218
  br label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPNS_9container4test24movable_and_copyable_intES7_NS0_7move_opEEET1_T_SA_RSA_T0_SC_SC_S9_T2_.exit

_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPNS_9container4test24movable_and_copyable_intES7_NS0_7move_opEEET1_T_SA_RSA_T0_SC_SC_S9_T2_.exit: ; preds = %bb.m, %bb.l, %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit
  %.5 = phi ptr [ %.0191218, %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit ], [ %spec.select, %bb.m ], [ %.0106223, %bb.l ]
  %.1.i = phi ptr [ %7, %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit ], [ %.0.lcssa.i, %bb.m ], [ %.0.lcssa.i, %bb.l ] ; 2 uses
  store ptr %.1.i, ptr %i.c, align 8, !tbaa !250
  br label %bb.x

bb.n:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  br i1 %i.bn, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cv = call noundef ptr @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPNS_9container4test24movable_and_copyable_intES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET_SG_SG_RSG_SG_SG_RT0_SJ_T1_T2_(ptr noundef %.0114219, ptr noundef %.0111220, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %i.bc, ptr noundef %i.ba, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPNS_9container4test24movable_and_copyable_intES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET_SG_SG_RSG_SG_SG_RT0_SJ_T1_T2_b.exit

bb.p:                                             ; preds = %.thread281, %bb.n
  %i.cw = phi i1 [ true, %.thread281 ], [ %i.bm, %bb.n ]
  store ptr %8, ptr %9, align 8, !tbaa !327
  %i.cx = call noundef ptr @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPNS_9container4test24movable_and_copyable_intES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_(ptr noundef %.0114219, ptr noundef %.0111220, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %i.bc, ptr noundef %i.ba, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dead_on_return %9)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPNS_9container4test24movable_and_copyable_intES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET_SG_SG_RSG_SG_SG_RT0_SJ_T1_T2_b.exit

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPNS_9container4test24movable_and_copyable_intES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET_SG_SG_RSG_SG_SG_RT0_SJ_T1_T2_b.exit: ; preds = %bb.o, %bb.p
  %i.cy = phi i1 [ %i.bm, %bb.o ], [ %i.cw, %bb.p ]
  %i.cz = phi i1 [ true, %bb.o ], [ false, %bb.p ]
  %i.da = phi ptr [ %i.cv, %bb.o ], [ %i.cx, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.db = load ptr, ptr %i.b, align 8, !tbaa !250 ; 4 uses
  %i.dc = load ptr, ptr %i.c, align 8, !tbaa !250 ; 4 uses
  %i.dd = icmp eq ptr %i.db, %i.dc                ; 2 uses
  br i1 %i.dd, label %bb.q, label %bb.u

bb.q:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPNS_9container4test24movable_and_copyable_intES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET_SG_SG_RSG_SG_SG_RT0_SJ_T1_T2_b.exit
  store ptr %7, ptr %i.b, align 8, !tbaa !250
  %i.de = load ptr, ptr %i.d, align 8, !tbaa !250 ; 10 uses
  %i.df = ptrtoint ptr %i.bc to i64
  %i.dg = ptrtoint ptr %i.de to i64               ; 3 uses
  %i.dh = sub i64 %i.df, %i.dg                    ; 2 uses
  %i.di = ashr exact i64 %i.dh, 2
  %i.dj = sub nsw i64 0, %i.di
  %i.dk = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.dj ; 7 uses
  %.not.i126 = icmp eq ptr %i.de, %i.dk
  br i1 %.not.i126, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPNS_9container4test24movable_and_copyable_intES7_NS0_7move_opEEET1_T_SA_RSA_T0_SC_SC_S9_T2_.exit140, label %.preheader.i127

.preheader.i127:                                  ; preds = %bb.q
  %.not2830.i128 = icmp eq ptr %i.de, %i.bc
  br i1 %.not2830.i128, label %._crit_edge.i134, label %.lr.ph.i129.preheader

.lr.ph.i129.preheader:                            ; preds = %.preheader.i127
  %i.dl = mul i64 %indvar, %.idx208               ; 3 uses
  %i.dm = add i64 %i.v, %i.dl                     ; 2 uses
  %i.dn = sub i64 %i.dm, %i.dg                    ; 2 uses
  %i.do = lshr i64 %i.dn, 2
  %i.dp = add nuw nsw i64 %i.do, 1                ; 2 uses
  %min.iters.check367 = icmp ult i64 %i.dn, 60
  br i1 %min.iters.check367, label %.lr.ph.i129.preheader486, label %vector.memcheck368

vector.memcheck368:                               ; preds = %.lr.ph.i129.preheader
  %i.dq = add i64 %i.r, %i.dl
  %i.dr = sub i64 %i.dq, %i.dg
  %i.ds = and i64 %i.dr, -4                       ; 3 uses
  %i.dt = getelementptr i8, ptr %scevgep366, i64 %i.ds ; 2 uses
  %i.du = add i64 %i.o, %i.dl
  %i.dv = shl i64 %.022.lcssa.i, 2
  %i.dw = add i64 %i.dv, 4
  %i.dx = mul i64 %2, %i.dw
  %i.dy = add i64 %i.du, %i.dx
  %i.dz = add i64 %i.dy, %i.ds
  %i.ea = sub i64 %i.dz, %i.dh
  %17 = getelementptr i8, ptr %1, i64 %i.ea       ; 2 uses
  %i.eb = getelementptr i8, ptr %i.de, i64 %i.ds
  %i.ec = getelementptr i8, ptr %i.eb, i64 4      ; 2 uses
  %bound0369 = icmp ult ptr %7, %17
  %bound1370 = icmp ult ptr %i.dk, %i.dt
  %found.conflict371 = and i1 %bound0369, %bound1370
  %bound0372 = icmp ult ptr %7, %i.ec
  %bound1373 = icmp ult ptr %i.de, %i.dt
  %found.conflict374 = and i1 %bound0372, %bound1373
  %conflict.rdx375 = or i1 %found.conflict371, %found.conflict374
  %bound0376 = icmp ult ptr %i.dk, %i.ec
  %bound1377 = icmp ult ptr %i.de, %17
  %found.conflict378 = and i1 %bound0376, %bound1377
  %conflict.rdx379 = or i1 %conflict.rdx375, %found.conflict378
  br i1 %conflict.rdx379, label %.lr.ph.i129.preheader486, label %vector.ph380

vector.ph380:                                     ; preds = %vector.memcheck368
  %n.vec381 = and i64 %i.dp, 9223372036854775804  ; 3 uses
  %i.ed = shl i64 %n.vec381, 2                    ; 3 uses
  %i.ee = getelementptr i8, ptr %7, i64 %i.ed     ; 2 uses
  %i.ef = getelementptr i8, ptr %i.dk, i64 %i.ed
  %i.eg = getelementptr i8, ptr %i.de, i64 %i.ed
  br label %vector.body382

vector.body382:                                   ; preds = %vector.body382, %vector.ph380
  %index383 = phi i64 [ 0, %vector.ph380 ], [ %index.next389, %vector.body382 ] ; 2 uses
  %i.eh = shl i64 %index383, 2                    ; 3 uses
  %next.gep384 = getelementptr i8, ptr %7, i64 %i.eh
  %next.gep385 = getelementptr i8, ptr %i.dk, i64 %i.eh ; 3 uses
  %next.gep386 = getelementptr i8, ptr %i.de, i64 %i.eh ; 2 uses
  %wide.load387 = load <4 x i32>, ptr %next.gep385, align 4, !tbaa !247, !alias.scope !3247, !noalias !3248
  store <4 x i32> %wide.load387, ptr %next.gep384, align 4, !tbaa !247, !alias.scope !3249, !noalias !3250
  store <4 x i32> zeroinitializer, ptr %next.gep385, align 4, !tbaa !247, !alias.scope !3247, !noalias !3248
  %wide.load388 = load <4 x i32>, ptr %next.gep386, align 4, !tbaa !247, !alias.scope !3248
  store <4 x i32> %wide.load388, ptr %next.gep385, align 4, !tbaa !247, !alias.scope !3247, !noalias !3248
  store <4 x i32> zeroinitializer, ptr %next.gep386, align 4, !tbaa !247, !alias.scope !3248
  %index.next389 = add nuw i64 %index383, 4       ; 2 uses
  %i.ei = icmp eq i64 %index.next389, %n.vec381
  br i1 %i.ei, label %middle.block390, label %vector.body382, !llvm.loop !3212

middle.block390:                                  ; preds = %vector.body382
  %cmp.n391 = icmp eq i64 %i.dp, %n.vec381
  br i1 %cmp.n391, label %._crit_edge.i134, label %.lr.ph.i129.preheader486

.lr.ph.i129.preheader486:                         ; preds = %vector.memcheck368, %.lr.ph.i129.preheader, %middle.block390
  %.033.i130.ph = phi ptr [ %7, %vector.memcheck368 ], [ %7, %.lr.ph.i129.preheader ], [ %i.ee, %middle.block390 ] ; 2 uses
  %.02032.i131.ph = phi ptr [ %i.dk, %vector.memcheck368 ], [ %i.dk, %.lr.ph.i129.preheader ], [ %i.ef, %middle.block390 ] ; 2 uses
  %.02131.i132.ph = phi ptr [ %i.de, %vector.memcheck368 ], [ %i.de, %.lr.ph.i129.preheader ], [ %i.eg, %middle.block390 ] ; 3 uses
  %.02131.i132.ph489 = ptrtoaddr ptr %.02131.i132.ph to i64
  %i.ej = sub i64 %i.dm, %.02131.i132.ph489       ; 2 uses
  %i.ek = lshr i64 %i.ej, 2
  %i.el = add nuw nsw i64 %i.ek, 1
  %xtraiter = and i64 %i.el, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i129.prol.loopexit, label %.lr.ph.i129.prol

.lr.ph.i129.prol:                                 ; preds = %.lr.ph.i129.preheader486, %.lr.ph.i129.prol
  %.033.i130.prol = phi ptr [ %i.eo, %.lr.ph.i129.prol ], [ %.033.i130.ph, %.lr.ph.i129.preheader486 ] ; 2 uses
  %.02032.i131.prol = phi ptr [ %i.en, %.lr.ph.i129.prol ], [ %.02032.i131.ph, %.lr.ph.i129.preheader486 ] ; 4 uses
  %.02131.i132.prol = phi ptr [ %i.em, %.lr.ph.i129.prol ], [ %.02131.i132.ph, %.lr.ph.i129.preheader486 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i129.prol ], [ 0, %.lr.ph.i129.preheader486 ]
  %i.em = getelementptr inbounds nuw i8, ptr %.02131.i132.prol, i64 4 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.02032.i131.prol, i64 4 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.033.i130.prol, i64 4 ; 3 uses
  %i.ep = load i32, ptr %.02032.i131.prol, align 4, !tbaa !247
  store i32 %i.ep, ptr %.033.i130.prol, align 4, !tbaa !247
  store i32 0, ptr %.02032.i131.prol, align 4, !tbaa !247
  %i.eq = load i32, ptr %.02131.i132.prol, align 4, !tbaa !247
  store i32 %i.eq, ptr %.02032.i131.prol, align 4, !tbaa !247
  store i32 0, ptr %.02131.i132.prol, align 4, !tbaa !247
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i129.prol.loopexit, label %.lr.ph.i129.prol, !llvm.loop !3213

.lr.ph.i129.prol.loopexit:                        ; preds = %.lr.ph.i129.prol, %.lr.ph.i129.preheader486
  %.lcssa487.unr = phi ptr [ poison, %.lr.ph.i129.preheader486 ], [ %i.eo, %.lr.ph.i129.prol ]
  %.033.i130.unr = phi ptr [ %.033.i130.ph, %.lr.ph.i129.preheader486 ], [ %i.eo, %.lr.ph.i129.prol ]
  %.02032.i131.unr = phi ptr [ %.02032.i131.ph, %.lr.ph.i129.preheader486 ], [ %i.en, %.lr.ph.i129.prol ]
  %.02131.i132.unr = phi ptr [ %.02131.i132.ph, %.lr.ph.i129.preheader486 ], [ %i.em, %.lr.ph.i129.prol ]
  %i.er = icmp ult i64 %i.ej, 12
  br i1 %i.er, label %._crit_edge.i134, label %.lr.ph.i129

.lr.ph.i129:                                      ; preds = %.lr.ph.i129.prol.loopexit, %.lr.ph.i129
  %.033.i130 = phi ptr [ %i.fj, %.lr.ph.i129 ], [ %.033.i130.unr, %.lr.ph.i129.prol.loopexit ] ; 5 uses
  %.02032.i131 = phi ptr [ %i.fi, %.lr.ph.i129 ], [ %.02032.i131.unr, %.lr.ph.i129.prol.loopexit ] ; 7 uses
  %.02131.i132 = phi ptr [ %i.fh, %.lr.ph.i129 ], [ %.02131.i132.unr, %.lr.ph.i129.prol.loopexit ] ; 6 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.02131.i132, i64 4 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.02032.i131, i64 4 ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.033.i130, i64 4
  %i.ev = load i32, ptr %.02032.i131, align 4, !tbaa !247
  store i32 %i.ev, ptr %.033.i130, align 4, !tbaa !247
  store i32 0, ptr %.02032.i131, align 4, !tbaa !247
  %i.ew = load i32, ptr %.02131.i132, align 4, !tbaa !247
  store i32 %i.ew, ptr %.02032.i131, align 4, !tbaa !247
  store i32 0, ptr %.02131.i132, align 4, !tbaa !247
  %i.ex = getelementptr inbounds nuw i8, ptr %.02131.i132, i64 8 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.02032.i131, i64 8 ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.033.i130, i64 8
  %i.fa = load i32, ptr %i.et, align 4, !tbaa !247
  store i32 %i.fa, ptr %i.eu, align 4, !tbaa !247
  store i32 0, ptr %i.et, align 4, !tbaa !247
  %i.fb = load i32, ptr %i.es, align 4, !tbaa !247
  store i32 %i.fb, ptr %i.et, align 4, !tbaa !247
  store i32 0, ptr %i.es, align 4, !tbaa !247
  %i.fc = getelementptr inbounds nuw i8, ptr %.02131.i132, i64 12 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.02032.i131, i64 12 ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.033.i130, i64 12
  %i.ff = load i32, ptr %i.ey, align 4, !tbaa !247
  store i32 %i.ff, ptr %i.ez, align 4, !tbaa !247
  store i32 0, ptr %i.ey, align 4, !tbaa !247
  %i.fg = load i32, ptr %i.ex, align 4, !tbaa !247
  store i32 %i.fg, ptr %i.ey, align 4, !tbaa !247
  store i32 0, ptr %i.ex, align 4, !tbaa !247
  %i.fh = getelementptr inbounds nuw i8, ptr %.02131.i132, i64 16 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.02032.i131, i64 16
  %i.fj = getelementptr inbounds nuw i8, ptr %.033.i130, i64 16 ; 2 uses
  %i.fk = load i32, ptr %i.fd, align 4, !tbaa !247
  store i32 %i.fk, ptr %i.fe, align 4, !tbaa !247
  store i32 0, ptr %i.fd, align 4, !tbaa !247
  %i.fl = load i32, ptr %i.fc, align 4, !tbaa !247
  store i32 %i.fl, ptr %i.fd, align 4, !tbaa !247
  store i32 0, ptr %i.fc, align 4, !tbaa !247
  %.not28.i133.3 = icmp eq ptr %i.fh, %i.bc
  br i1 %.not28.i133.3, label %._crit_edge.i134, label %.lr.ph.i129, !llvm.loop !3214

._crit_edge.i134:                                 ; preds = %.lr.ph.i129.prol.loopexit, %.lr.ph.i129, %middle.block390, %.preheader.i127
  %.0.lcssa.i135 = phi ptr [ %7, %.preheader.i127 ], [ %i.ee, %middle.block390 ], [ %.lcssa487.unr, %.lr.ph.i129.prol.loopexit ], [ %i.fj, %.lr.ph.i129 ] ; 2 uses
  %.not29.i136 = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not29.i136, label %bb.s, label %bb.r

bb.r:                                             ; preds = %._crit_edge.i134
  %i.fm = load i64, ptr %i.bh, align 8, !tbaa !223
  %i.fn = load i64, ptr %.0106223, align 8, !tbaa !223
  store i64 %i.fn, ptr %i.bh, align 8, !tbaa !223
  store i64 %i.fm, ptr %.0106223, align 8, !tbaa !223
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge.i134
  %i.fo = icmp eq ptr %i.bh, %.0191218
  br i1 %i.fo, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPNS_9container4test24movable_and_copyable_intES7_NS0_7move_opEEET1_T_SA_RSA_T0_SC_SC_S9_T2_.exit140, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fp = icmp eq ptr %.0191218, %.0106223
  %spec.select205 = select i1 %i.fp, ptr %i.bh, ptr %.0191218
  br label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPNS_9container4test24movable_and_copyable_intES7_NS0_7move_opEEET1_T_SA_RSA_T0_SC_SC_S9_T2_.exit140

_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPNS_9container4test24movable_and_copyable_intES7_NS0_7move_opEEET1_T_SA_RSA_T0_SC_SC_S9_T2_.exit140: ; preds = %bb.t, %bb.s, %bb.q
  %.6 = phi ptr [ %.0191218, %bb.q ], [ %spec.select205, %bb.t ], [ %.0106223, %bb.s ]
  %.1.i137 = phi ptr [ %7, %bb.q ], [ %.0.lcssa.i135, %bb.t ], [ %.0.lcssa.i135, %bb.s ] ; 2 uses
  store ptr %.1.i137, ptr %i.c, align 8, !tbaa !250
  br label %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit

bb.u:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPNS_9container4test24movable_and_copyable_intES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET_SG_SG_RSG_SG_SG_RT0_SJ_T1_T2_b.exit
  %.not.i141 = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not.i141, label %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fq = load i64, ptr %i.bh, align 8, !tbaa !223
  %i.fr = load i64, ptr %.0106223, align 8, !tbaa !223
  store i64 %i.fr, ptr %i.bh, align 8, !tbaa !223
  store i64 %i.fq, ptr %.0106223, align 8, !tbaa !223
  %i.fs = icmp eq ptr %i.bh, %.0191218
  br i1 %i.fs, label %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ft = icmp eq ptr %.0191218, %.0106223
  %spec.select206 = select i1 %i.ft, ptr %i.bh, ptr %.0191218
  br label %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit

_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit: ; preds = %bb.w, %bb.u, %bb.v, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPNS_9container4test24movable_and_copyable_intES7_NS0_7move_opEEET1_T_SA_RSA_T0_SC_SC_S9_T2_.exit140
  %i.fu = phi ptr [ %.1.i137, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPNS_9container4test24movable_and_copyable_intES7_NS0_7move_opEEET1_T_SA_RSA_T0_SC_SC_S9_T2_.exit140 ], [ %i.dc, %bb.u ], [ %i.dc, %bb.w ], [ %i.dc, %bb.v ]
  %i.fv = phi ptr [ %7, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPNS_9container4test24movable_and_copyable_intES7_NS0_7move_opEEET1_T_SA_RSA_T0_SC_SC_S9_T2_.exit140 ], [ %i.db, %bb.u ], [ %i.db, %bb.w ], [ %i.db, %bb.v ]
  %.1192 = phi ptr [ %.6, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPNS_9container4test24movable_and_copyable_intES7_NS0_7move_opEEET1_T_SA_RSA_T0_SC_SC_S9_T2_.exit140 ], [ %.0191218, %bb.u ], [ %spec.select206, %bb.w ], [ %.0106223, %bb.v ]
  %i.fw = xor i1 %i.cz, %i.dd
  %i.fx = zext i1 %i.fw to i8
  br label %bb.x

bb.x:                                             ; preds = %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPNS_9container4test24movable_and_copyable_intES7_NS0_7move_opEEET1_T_SA_RSA_T0_SC_SC_S9_T2_.exit
  %i.fy = phi ptr [ %i.fu, %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit ], [ %.1.i, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPNS_9container4test24movable_and_copyable_intES7_NS0_7move_opEEET1_T_SA_RSA_T0_SC_SC_S9_T2_.exit ] ; 2 uses
  %i.fz = phi ptr [ %i.fv, %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit ], [ %7, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPNS_9container4test24movable_and_copyable_intES7_NS0_7move_opEEET1_T_SA_RSA_T0_SC_SC_S9_T2_.exit ] ; 2 uses
  %i.ga = phi i1 [ %i.cy, %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit ], [ %i.bp, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPNS_9container4test24movable_and_copyable_intES7_NS0_7move_opEEET1_T_SA_RSA_T0_SC_SC_S9_T2_.exit ]
  %.2193 = phi ptr [ %.1192, %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit ], [ %.5, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPNS_9container4test24movable_and_copyable_intES7_NS0_7move_opEEET1_T_SA_RSA_T0_SC_SC_S9_T2_.exit ] ; 2 uses
  %.1115 = phi ptr [ %i.da, %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit ], [ %i.ae, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPNS_9container4test24movable_and_copyable_intES7_NS0_7move_opEEET1_T_SA_RSA_T0_SC_SC_S9_T2_.exit ] ; 2 uses
  %.1109 = phi i8 [ %i.fx, %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit ], [ %.0108222, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPNS_9container4test24movable_and_copyable_intES7_NS0_7move_opEEET1_T_SA_RSA_T0_SC_SC_S9_T2_.exit ] ; 2 uses
  %not. = xor i1 %i.ga, true
  %i.gb = sext i1 %not. to i64
  %.1 = add i64 %.0227, %i.gb
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %.0111220, i64 %2 ; 2 uses
  store ptr %i.bc, ptr %i.d, align 8, !tbaa !250
  %i.gd = getelementptr inbounds nuw i8, ptr %.0106223, i64 8
  %i.ge = icmp ne i64 %.0104226, 0
  %.neg = sext i1 %i.ge to i64
  %i.gf = add i64 %.0104226, %.neg
  %i.gg = icmp ne i64 %i.ay, 0
  %.neg122 = sext i1 %i.gg to i64
  %i.gh = add i64 %.sroa.speculated180, %.neg122
  %i.gi = add i64 %.0195217, -1                   ; 2 uses
  %.not = icmp eq i64 %i.gi, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %.thread, label %bb.b, !llvm.loop !3215

.thread:                                          ; preds = %bb.x, %bb.g, %bb.f
  %i.gj = phi ptr [ %i.fy, %bb.x ], [ %i.ac, %bb.g ], [ %i.ac, %bb.f ] ; 3 uses
  %i.gk = phi ptr [ %i.fz, %bb.x ], [ %i.ad, %bb.g ], [ %i.ad, %bb.f ] ; 8 uses
  %.0195.lcssa.ph = phi i64 [ 0, %bb.x ], [ %.0195217, %bb.g ], [ %.0195217, %bb.f ] ; 3 uses
  %.0191.lcssa.ph = phi ptr [ %.2193, %bb.x ], [ %.0191218, %bb.g ], [ %.0191218, %bb.f ] ; 3 uses
  %.0114.lcssa.ph = phi ptr [ %.1115, %bb.x ], [ %.0114219, %bb.g ], [ %.0114219, %bb.f ] ; 7 uses
  %.0111.lcssa.ph = phi ptr [ %i.gc, %bb.x ], [ %.0111220, %bb.g ], [ %.0111220, %bb.f ] ; 4 uses
  %.0108.lcssa.ph = phi i8 [ %.1109, %bb.x ], [ 1, %bb.g ], [ %.0108222, %bb.f ]
  %i.gl = trunc nuw i8 %.0108.lcssa.ph to i1
  %i.gm = select i1 %i.gl, ptr %.0114.lcssa.ph, ptr %.0111.lcssa.ph ; 3 uses
  %.not8.i.i144 = icmp eq ptr %i.gk, %i.gj
end_hunk_3
