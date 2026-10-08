Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/flat_tree_test?download=true
inline.NumInlined: 27414
inline.NumDeleted: 3408
loop-unroll.NumRuntimeUnrolled: 494
loop-unroll.NumUnrolled: 502
begin_hunk_0_@_ZN5boost7movelib15detail_adaptive26adaptive_sort_build_blocksIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_13adaptive_xbufIS5_S6_mEEEENS0_9iter_sizeIT_E4typeESI_SK_SK_SK_RT1_T0_:bb.a
  %wide.load160 = load <4 x i32>, ptr %i.cl, align 4, !tbaa !343, !alias.scope !14002
  %i.cm = getelementptr i8, ptr %next.gep157, i64 16
  store <4 x i32> %wide.load159, ptr %next.gep157, align 4, !tbaa !343, !alias.scope !14003, !noalias !14002
  store <4 x i32> %wide.load160, ptr %i.cm, align 4, !tbaa !343, !alias.scope !14003, !noalias !14002
  store <4 x i32> zeroinitializer, ptr %next.gep158, align 4, !tbaa !343, !alias.scope !14002
  store <4 x i32> zeroinitializer, ptr %i.cl, align 4, !tbaa !343, !alias.scope !14002
  %index.next161 = add nuw i64 %index156, 8       ; 2 uses
  %i.cn = icmp eq i64 %index.next161, %n.vec154
  br i1 %i.cn, label %middle.block162, label %vector.body155, !llvm.loop !13990

middle.block162:                                  ; preds = %vector.body155
  %cmp.n163 = icmp eq i64 %i.ce, %n.vec154
  br i1 %cmp.n163, label %.loopexit.thread, label %.lr.ph.i47.preheader166

.lr.ph.i47.preheader166:                          ; preds = %vector.memcheck149, %.lr.ph.i47.preheader, %middle.block162
  %.010.i.ph = phi ptr [ %i.ca, %vector.memcheck149 ], [ %i.ca, %.lr.ph.i47.preheader ], [ %i.ci, %middle.block162 ]
  %.079.i.ph = phi ptr [ %i.cb, %vector.memcheck149 ], [ %i.cb, %.lr.ph.i47.preheader ], [ %i.cj, %middle.block162 ]
  br label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %.lr.ph.i47.preheader166, %.lr.ph.i47
  %.010.i = phi ptr [ %i.cq, %.lr.ph.i47 ], [ %.010.i.ph, %.lr.ph.i47.preheader166 ] ; 2 uses
  %.079.i = phi ptr [ %i.cp, %.lr.ph.i47 ], [ %.079.i.ph, %.lr.ph.i47.preheader166 ] ; 3 uses
  %i.co = load i32, ptr %.079.i, align 4, !tbaa !343
  store i32 %i.co, ptr %.010.i, align 4, !tbaa !343
  store i32 0, ptr %.079.i, align 4, !tbaa !343
  %i.cp = getelementptr inbounds nuw i8, ptr %.079.i, i64 4 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.010.i, i64 4
  %.not.i48 = icmp eq ptr %i.cp, %i.bx
  br i1 %.not.i48, label %.loopexit.thread, label %.lr.ph.i47, !llvm.loop !13991

_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit: ; preds = %bb.a
  %i.cr = tail call noundef i64 @_ZN5boost7movelib15detail_adaptive19insertion_sort_stepIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_9iter_sizeIT_E4typeESG_SI_SI_T0_(ptr noundef %i.a, i64 noundef %i.b, i64 noundef %2) ; 3 uses
  %i.cs = sub i64 0, %i.cr
  %i.ct = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.cs ; 2 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %1
  %i.cv = tail call noundef ptr @_ZN5boost7movelib10rotate_gcdIPNS_9container4test24movable_and_copyable_intEEET_S6_S6_S6_(ptr noundef %i.ct, ptr noundef %i.a, ptr noundef %i.cu) ; 0 uses
  %i.cw = sub i64 %3, %i.cr
  %i.cx = tail call noundef i64 @_ZN5boost7movelib15detail_adaptive27op_merge_left_step_multipleIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7swap_opEEENS0_9iter_sizeIT_E4typeESH_SJ_SJ_SJ_SJ_T0_T1_(ptr noundef %i.ct, i64 noundef %i.b, i64 noundef %i.cr, i64 noundef %3, i64 noundef %i.cw) ; 0 uses
  br label %bb.f

.loopexit.thread:                                 ; preds = %.lr.ph.i47, %middle.block162, %bb.e
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.by
  %i.cz = sub i64 %3, %i.bv
  %i.da = tail call noundef i64 @_ZN5boost7movelib15detail_adaptive27op_merge_left_step_multipleIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7swap_opEEENS0_9iter_sizeIT_E4typeESH_SJ_SJ_SJ_SJ_T0_T1_(ptr noundef nonnull %i.cy, i64 noundef %i.b, i64 noundef %i.bv, i64 noundef %3, i64 noundef %i.cz) ; 0 uses
  br label %bb.f

.lr.ph.i50.preheader:                             ; preds = %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mE11move_assignIS5_EEvT_m.exit
  %.pre = sub i64 0, %i.bv
  %i.db = getelementptr inbounds [4 x i8], ptr %i.a, i64 %.pre
  %i.dc = sub i64 %3, %i.bv
  %i.dd = tail call noundef i64 @_ZN5boost7movelib15detail_adaptive27op_merge_left_step_multipleIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7swap_opEEENS0_9iter_sizeIT_E4typeESH_SJ_SJ_SJ_SJ_T0_T1_(ptr noundef %i.db, i64 noundef %i.b, i64 noundef %i.bv, i64 noundef %3, i64 noundef %i.dc) ; 0 uses
  tail call void @_ZN5boost7movelib15detail_adaptive24op_merge_right_step_onceIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEEvT_NS0_9iter_sizeISG_E4typeESJ_T0_T1_(ptr noundef %0, i64 noundef %i.b, i64 noundef %3)
  %i.de = load ptr, ptr %4, align 8, !tbaa !428   ; 6 uses
  %.idx85 = shl nuw nsw i64 %.sroa.speculated60, 2 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 %.idx85 ; 2 uses
  %i.dg = add nsw i64 %.idx85, -4                 ; 2 uses
  %i.dh = lshr exact i64 %i.dg, 2
  %i.di = add nuw nsw i64 %i.dh, 1                ; 2 uses
  %min.iters.check125 = icmp ult i64 %i.dg, 28
  br i1 %min.iters.check125, label %.lr.ph.i50.preheader167, label %vector.memcheck126

vector.memcheck126:                               ; preds = %.lr.ph.i50.preheader
  %i.dj = getelementptr i8, ptr %0, i64 %.idx85
  %bound0127 = icmp ult ptr %0, %i.df
  %bound1128 = icmp ult ptr %i.de, %i.dj
  %found.conflict129 = and i1 %bound0127, %bound1128
  br i1 %found.conflict129, label %.lr.ph.i50.preheader167, label %vector.ph130

vector.ph130:                                     ; preds = %vector.memcheck126
  %n.vec131 = and i64 %i.di, 9223372036854775800  ; 3 uses
  %i.dk = shl i64 %n.vec131, 2                    ; 2 uses
  %i.dl = getelementptr i8, ptr %0, i64 %i.dk
  %i.dm = getelementptr i8, ptr %i.de, i64 %i.dk
  br label %vector.body132

vector.body132:                                   ; preds = %vector.body132, %vector.ph130
  %index133 = phi i64 [ 0, %vector.ph130 ], [ %index.next138, %vector.body132 ] ; 2 uses
  %i.dn = shl i64 %index133, 2                    ; 2 uses
  %next.gep134 = getelementptr i8, ptr %0, i64 %i.dn ; 2 uses
  %next.gep135 = getelementptr i8, ptr %i.de, i64 %i.dn ; 3 uses
  %i.do = getelementptr i8, ptr %next.gep135, i64 16 ; 2 uses
  %wide.load136 = load <4 x i32>, ptr %next.gep135, align 4, !tbaa !343, !alias.scope !14004
  %wide.load137 = load <4 x i32>, ptr %i.do, align 4, !tbaa !343, !alias.scope !14004
  %i.dp = getelementptr i8, ptr %next.gep134, i64 16
  store <4 x i32> %wide.load136, ptr %next.gep134, align 4, !tbaa !343, !alias.scope !14005, !noalias !14004
  store <4 x i32> %wide.load137, ptr %i.dp, align 4, !tbaa !343, !alias.scope !14005, !noalias !14004
  store <4 x i32> zeroinitializer, ptr %next.gep135, align 4, !tbaa !343, !alias.scope !14004
  store <4 x i32> zeroinitializer, ptr %i.do, align 4, !tbaa !343, !alias.scope !14004
  %index.next138 = add nuw i64 %index133, 8       ; 2 uses
  %i.dq = icmp eq i64 %index.next138, %n.vec131
  br i1 %i.dq, label %middle.block139, label %vector.body132, !llvm.loop !13995

middle.block139:                                  ; preds = %vector.body132
  %cmp.n140 = icmp eq i64 %i.di, %n.vec131
  br i1 %cmp.n140, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit55, label %.lr.ph.i50.preheader167

.lr.ph.i50.preheader167:                          ; preds = %vector.memcheck126, %.lr.ph.i50.preheader, %middle.block139
  %.010.i51.ph = phi ptr [ %0, %vector.memcheck126 ], [ %0, %.lr.ph.i50.preheader ], [ %i.dl, %middle.block139 ]
  %.079.i52.ph = phi ptr [ %i.de, %vector.memcheck126 ], [ %i.de, %.lr.ph.i50.preheader ], [ %i.dm, %middle.block139 ]
  br label %.lr.ph.i50

.lr.ph.i50:                                       ; preds = %.lr.ph.i50.preheader167, %.lr.ph.i50
  %.010.i51 = phi ptr [ %i.dt, %.lr.ph.i50 ], [ %.010.i51.ph, %.lr.ph.i50.preheader167 ] ; 2 uses
  %.079.i52 = phi ptr [ %i.ds, %.lr.ph.i50 ], [ %.079.i52.ph, %.lr.ph.i50.preheader167 ] ; 3 uses
  %i.dr = load i32, ptr %.079.i52, align 4, !tbaa !343
  store i32 %i.dr, ptr %.010.i51, align 4, !tbaa !343
  store i32 0, ptr %.079.i52, align 4, !tbaa !343
  %i.ds = getelementptr inbounds nuw i8, ptr %.079.i52, i64 4 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.010.i51, i64 4
  %.not.i53 = icmp eq ptr %i.ds, %i.df
  br i1 %.not.i53, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit55, label %.lr.ph.i50, !llvm.loop !13996

bb.f:                                             ; preds = %.loopexit.thread, %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit
  tail call void @_ZN5boost7movelib15detail_adaptive24op_merge_right_step_onceIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7swap_opEEEvT_NS0_9iter_sizeISG_E4typeESJ_T0_T1_(ptr noundef %0, i64 noundef %i.b, i64 noundef %3)
  br label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit55

_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit55: ; preds = %.lr.ph.i50, %middle.block139, %bb.f
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !427 ; 4 uses
  %.not.i56 = icmp eq i64 %i.dv, 0
  br i1 %.not.i56, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mE5clearEv.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit55
  %i.dw = load ptr, ptr %4, align 8, !tbaa !428   ; 5 uses
  %xtraiter170 = and i64 %i.dv, 3                 ; 3 uses
  %i.dx = icmp ult i64 %i.dv, 4
  br i1 %i.dx, label %.epil.preheader, label %.preheader.i.i.new

.preheader.i.i.new:                               ; preds = %.preheader.i.i
  %unroll_iter = and i64 %i.dv, -4
  br label %bb.h

.unr-lcssa:                                       ; preds = %bb.h
  %lcmp.mod171.not = icmp eq i64 %xtraiter170, 0
  br i1 %lcmp.mod171.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader.i.i
  %.07.i.i.epil.init = phi i64 [ 0, %.preheader.i.i ], [ %i.er, %.unr-lcssa ]
  %lcmp.mod172 = icmp ne i64 %xtraiter170, 0
  tail call void @llvm.assume(i1 %lcmp.mod172)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader
  %.07.i.i.epil = phi i64 [ %.07.i.i.epil.init, %.epil.preheader ], [ %i.eb, %bb.g ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.g ]
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %.07.i.i.epil
  store i32 -2147483648, ptr %i.dy, align 4, !tbaa !343
  %i.dz = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.ea = add i32 %i.dz, -1
  store i32 %i.ea, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.eb = add nuw i64 %.07.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter170
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.g, !llvm.loop !13997

.epilog-lcssa:                                    ; preds = %bb.g, %.unr-lcssa
  store i64 0, ptr %i.du, align 8, !tbaa !427
  br label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mE5clearEv.exit

bb.h:                                             ; preds = %bb.h, %.preheader.i.i.new
  %.07.i.i = phi i64 [ 0, %.preheader.i.i.new ], [ %i.er, %bb.h ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader.i.i.new ], [ %niter.next.3, %bb.h ]
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %.07.i.i
  store i32 -2147483648, ptr %i.ec, align 4, !tbaa !343
  %i.ed = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.ee = add i32 %i.ed, -1
  store i32 %i.ee, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %.07.i.i
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 4
  store i32 -2147483648, ptr %i.eg, align 4, !tbaa !343
  %i.eh = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.ei = add i32 %i.eh, -1
  store i32 %i.ei, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %.07.i.i
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  store i32 -2147483648, ptr %i.ek, align 4, !tbaa !343
  %i.el = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.em = add i32 %i.el, -1
  store i32 %i.em, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %.07.i.i
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 12
  store i32 -2147483648, ptr %i.eo, align 4, !tbaa !343
  %i.ep = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.eq = add i32 %i.ep, -1
  store i32 %i.eq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.er = add nuw i64 %.07.i.i, 4                 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %bb.h, !llvm.loop !44

_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mE5clearEv.exit: ; preds = %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit55, %.epilog-lcssa
  %i.es = shl i64 %3, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.b, i64 %i.es)
  ret i64 %.sroa.speculated
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost7movelib15detail_adaptive32adaptive_sort_combine_all_blocksIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_13adaptive_xbufIS5_S6_mEEEEbT_RNS0_9iter_sizeISH_E4typeESH_SK_SK_SL_RT1_T0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 3 uses
  %i.b = load i64, ptr %5, align 8, !tbaa !340    ; 17 uses
  %i.c = getelementptr [4 x i8], ptr %2, i64 %i.b ; 8 uses
  %i.d = sub i64 %3, %i.b                         ; 8 uses
  %i.e = load i64, ptr %1, align 8, !tbaa !340
  %i.f = add i64 %i.e, %i.b                       ; 2 uses
  %i.g = icmp ugt i64 %i.d, %4                    ; 3 uses
  %.not139 = icmp ne i64 %i.b, 0
  %or.cond143.not190 = and i1 %.not139, %i.g
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.i = load i64, ptr %i.h, align 8
  %i.j = icmp ule i64 %i.b, %i.i
  %or.cond188 = select i1 %or.cond143.not190, i1 %i.j, i1 false ; 8 uses
  br i1 %or.cond188, label %bb.b, label %.thread.thread

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !427  ; 8 uses
  %.not.i = icmp ugt i64 %i.b, %i.l
  %i.m = load ptr, ptr %6, align 8, !tbaa !428    ; 18 uses
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.idx.i = shl nsw i64 %i.b, 2                   ; 3 uses
  %i.n = getelementptr inbounds i8, ptr %2, i64 %.idx.i ; 2 uses
  %i.o = add i64 %.idx.i, -4                      ; 2 uses
  %i.p = lshr exact i64 %i.o, 2
  %i.q = add nuw nsw i64 %i.p, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.o, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.c
  %i.r = getelementptr i8, ptr %i.m, i64 %.idx.i
  %bound0 = icmp ult ptr %i.m, %i.n
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
  %wide.load = load <4 x i32>, ptr %next.gep249, align 4, !tbaa !343, !alias.scope !14043
  %wide.load250 = load <4 x i32>, ptr %i.w, align 4, !tbaa !343, !alias.scope !14043
  %i.x = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !343, !alias.scope !14044, !noalias !14043
  store <4 x i32> %wide.load250, ptr %i.x, align 4, !tbaa !343, !alias.scope !14044, !noalias !14043
  store <4 x i32> zeroinitializer, ptr %next.gep249, align 4, !tbaa !343, !alias.scope !14043
  store <4 x i32> zeroinitializer, ptr %i.w, align 4, !tbaa !343, !alias.scope !14043
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !14009

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
  %i.z = load i32, ptr %.079.i.i, align 4, !tbaa !343
  store i32 %i.z, ptr %.010.i.i, align 4, !tbaa !343
  store i32 0, ptr %.079.i.i, align 4, !tbaa !343
  %i.aa = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  %.not.i.i = icmp eq ptr %i.aa, %i.n
  br i1 %.not.i.i, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i.i, !llvm.loop !14010

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
  store i32 -2147483648, ptr %i.ae, align 4, !tbaa !343
  %i.af = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.ag = add i32 %i.af, -1
  store i32 %i.ag, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !14011

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.031.i.unr = phi i64 [ %i.l, %.lr.ph.i.preheader ], [ %i.ad, %.lr.ph.i.prol ]
  %i.ah = sub i64 %i.b, %i.l
  %i.ai = icmp ugt i64 %i.ah, -4
  br i1 %i.ai, label %.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.031.i = phi i64 [ %i.av, %.lr.ph.i ], [ %.031.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.aj = getelementptr [4 x i8], ptr %i.m, i64 %.031.i
  %i.ak = getelementptr i8, ptr %i.aj, i64 -4
  store i32 -2147483648, ptr %i.ak, align 4, !tbaa !343
  %i.al = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.am = add i32 %i.al, -1
  store i32 %i.am, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.an = getelementptr [4 x i8], ptr %i.m, i64 %.031.i
  %i.ao = getelementptr i8, ptr %i.an, i64 -8
  store i32 -2147483648, ptr %i.ao, align 4, !tbaa !343
  %i.ap = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.aq = add i32 %i.ap, -1
  store i32 %i.aq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.ar = getelementptr [4 x i8], ptr %i.m, i64 %.031.i
  %i.as = getelementptr i8, ptr %i.ar, i64 -12
  store i32 -2147483648, ptr %i.as, align 4, !tbaa !343
  %i.at = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.au = add i32 %i.at, -1
  store i32 %i.au, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.av = add i64 %.031.i, -4                     ; 3 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.av
  store i32 -2147483648, ptr %i.aw, align 4, !tbaa !343
  %i.ax = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.ay = add i32 %i.ax, -1
  store i32 %i.ay, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %.not17.i.3 = icmp eq i64 %i.av, %i.b
  br i1 %.not17.i.3, label %.thread, label %.lr.ph.i, !llvm.loop !216

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
  br i1 %min.iters.check257, label %.lr.ph.i19.i.preheader395, label %vector.memcheck258

vector.memcheck258:                               ; preds = %.lr.ph.i19.i.preheader
  %i.bd = getelementptr i8, ptr %i.m, i64 %.idx27.i
  %bound0259 = icmp ult ptr %i.m, %i.az
  %bound1260 = icmp ult ptr %2, %i.bd
  %found.conflict261 = and i1 %bound0259, %bound1260
  br i1 %found.conflict261, label %.lr.ph.i19.i.preheader395, label %vector.ph262

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
  %wide.load268 = load <4 x i32>, ptr %next.gep267, align 4, !tbaa !343, !alias.scope !14045
  %wide.load269 = load <4 x i32>, ptr %i.bi, align 4, !tbaa !343, !alias.scope !14045
  %i.bj = getelementptr i8, ptr %next.gep266, i64 16
  store <4 x i32> %wide.load268, ptr %next.gep266, align 4, !tbaa !343, !alias.scope !14046, !noalias !14045
  store <4 x i32> %wide.load269, ptr %i.bj, align 4, !tbaa !343, !alias.scope !14046, !noalias !14045
  store <4 x i32> zeroinitializer, ptr %next.gep267, align 4, !tbaa !343, !alias.scope !14045
  store <4 x i32> zeroinitializer, ptr %i.bi, align 4, !tbaa !343, !alias.scope !14045
  %index.next270 = add nuw i64 %index265, 8       ; 2 uses
  %i.bk = icmp eq i64 %index.next270, %n.vec263
  br i1 %i.bk, label %middle.block271, label %vector.body264, !llvm.loop !14015

middle.block271:                                  ; preds = %vector.body264
  %cmp.n272 = icmp eq i64 %i.bc, %n.vec263
  br i1 %cmp.n272, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit24.i, label %.lr.ph.i19.i.preheader395

.lr.ph.i19.i.preheader395:                        ; preds = %vector.memcheck258, %.lr.ph.i19.i.preheader, %middle.block271
  %.010.i20.i.ph = phi ptr [ %i.m, %vector.memcheck258 ], [ %i.m, %.lr.ph.i19.i.preheader ], [ %i.bf, %middle.block271 ]
  %.079.i21.i.ph = phi ptr [ %2, %vector.memcheck258 ], [ %2, %.lr.ph.i19.i.preheader ], [ %i.bg, %middle.block271 ]
  br label %.lr.ph.i19.i

.lr.ph.i19.i:                                     ; preds = %.lr.ph.i19.i.preheader395, %.lr.ph.i19.i
  %.010.i20.i = phi ptr [ %i.bn, %.lr.ph.i19.i ], [ %.010.i20.i.ph, %.lr.ph.i19.i.preheader395 ] ; 2 uses
  %.079.i21.i = phi ptr [ %i.bm, %.lr.ph.i19.i ], [ %.079.i21.i.ph, %.lr.ph.i19.i.preheader395 ] ; 3 uses
  %i.bl = load i32, ptr %.079.i21.i, align 4, !tbaa !343
  store i32 %i.bl, ptr %.010.i20.i, align 4, !tbaa !343
  store i32 0, ptr %.079.i21.i, align 4, !tbaa !343
  %i.bm = getelementptr inbounds nuw i8, ptr %.079.i21.i, i64 4 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.010.i20.i, i64 4 ; 2 uses
  %.not.i22.i = icmp eq ptr %i.bm, %i.az
  br i1 %.not.i22.i, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit24.i, label %.lr.ph.i19.i, !llvm.loop !14016

_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit24.i: ; preds = %.lr.ph.i19.i, %middle.block271, %bb.d
  %.0.lcssa.i23.i = phi ptr [ %i.m, %bb.d ], [ %i.bf, %middle.block271 ], [ %i.bn, %.lr.ph.i19.i ]
  %.idx28.i = shl nsw i64 %i.b, 2                 ; 2 uses
  %i.bo = getelementptr inbounds i8, ptr %2, i64 %.idx28.i
  %.not10.i.i = icmp eq i64 %.idx27.i, %.idx28.i
  br i1 %.not10.i.i, label %.thread, label %.lr.ph.i25.i

.lr.ph.i25.i:                                     ; preds = %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit24.i, %.lr.ph.i25.i
  %.012.i.i = phi ptr [ %i.bs, %.lr.ph.i25.i ], [ %i.az, %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit24.i ] ; 3 uses
  %.0911.i.i = phi ptr [ %i.bt, %.lr.ph.i25.i ], [ %.0.lcssa.i23.i, %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit24.i ] ; 2 uses
  %i.bp = load i32, ptr %.012.i.i, align 4, !tbaa !343
  store i32 %i.bp, ptr %.0911.i.i, align 4, !tbaa !343
  store i32 0, ptr %.012.i.i, align 4, !tbaa !343
  %i.bq = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.br = add i32 %i.bq, 1
  store i32 %i.br, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.bs = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 4 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 4
  %.not.i26.i = icmp eq ptr %i.bs, %i.bo
  br i1 %.not.i26.i, label %.thread, label %.lr.ph.i25.i, !llvm.loop !217

.thread:                                          ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %.lr.ph.i25.i, %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit24.i, %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i
  store i64 %i.b, ptr %i.k, align 8, !tbaa !427
  br i1 %i.g, label %.lr.ph, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.sink.split

.thread.thread:                                   ; preds = %bb.a
  br i1 %i.g, label %.lr.ph, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.sink.split

.lr.ph:                                           ; preds = %.thread.thread, %.thread
  %i.bu = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bv = shl i64 %3, 2                           ; 2 uses
  %scevgep = getelementptr i8, ptr %2, i64 %i.bv
  %scevgep297.a = getelementptr i8, ptr %2, i64 %i.bv
  %i.bw = shl i64 %3, 2
  %i.bx = add i64 %i.bw, -4
  %i.by = shl i64 %3, 2
  %invariant.op = sub i64 -4, %i.by
  br label %bb.e

._crit_edge:                                      ; preds = %bb.t
  %i.bz = select i1 %.1, i1 %i.ck, i1 false       ; 2 uses
  %spec.select = select i1 %.1, i64 %.1.i, i64 0  ; 2 uses
  store i64 %spec.select, ptr %5, align 8, !tbaa !340
  %i.ca = sub i64 %i.f, %spec.select
  store i64 %i.ca, ptr %1, align 8, !tbaa !340
  br i1 %or.cond188, label %bb.u, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit

bb.e:                                             ; preds = %.lr.ph, %bb.t
  %.0206 = phi i64 [ %4, %.lr.ph ], [ %i.cd, %bb.t ] ; 5 uses
  %.0130205 = phi i64 [ 0, %.lr.ph ], [ %i.hk, %bb.t ] ; 3 uses
  %.0131204 = phi i1 [ true, %.lr.ph ], [ %.1, %bb.t ]
  %.0132203 = phi i64 [ 0, %.lr.ph ], [ %.1.i, %bb.t ]
  %.0133202 = phi i64 [ %4, %.lr.ph ], [ %spec.select15.i, %bb.t ] ; 13 uses
  %.0134201 = phi i1 [ true, %.lr.ph ], [ %i.ck, %bb.t ]
  %i.cb = load i64, ptr %5, align 8, !tbaa !340   ; 2 uses
  %i.cc = load i64, ptr %1, align 8, !tbaa !340   ; 4 uses
  %i.cd = shl i64 %.0206, 1                       ; 6 uses
  %.not.i144 = icmp eq i64 %i.cb, 0
  br i1 %.not.i144, label %bb.f, label %_ZN5boost7movelib15detail_adaptive18lblock_for_combineImEET_S3_S3_S3_Rb.exit

bb.f:                                             ; preds = %bb.e
  %i.ce = lshr i64 %i.cc, 1                       ; 3 uses
  %i.cf = sub nuw i64 %i.cc, %i.ce                ; 2 uses
  %i.cg = icmp ugt i64 %i.cf, 3
  br i1 %i.cg, label %bb.g, label %.critedge.i

bb.g:                                             ; preds = %bb.f
  %i.ch = udiv i64 %i.cd, %i.ce
  %.not193 = icmp ult i64 %i.cf, %i.ch
  br i1 %.not193, label %.critedge.i, label %_ZN5boost7movelib15detail_adaptive18lblock_for_combineImEET_S3_S3_S3_Rb.exit

.critedge.i:                                      ; preds = %bb.f, %bb.g
  %i.ci = udiv i64 %i.cd, %i.cc
  br label %_ZN5boost7movelib15detail_adaptive18lblock_for_combineImEET_S3_S3_S3_Rb.exit

_ZN5boost7movelib15detail_adaptive18lblock_for_combineImEET_S3_S3_S3_Rb.exit: ; preds = %bb.e, %bb.g, %.critedge.i
  %.1 = phi i1 [ true, %bb.g ], [ false, %.critedge.i ], [ true, %bb.e ] ; 10 uses
  %.1.i = phi i64 [ %i.ce, %bb.g ], [ %i.ci, %.critedge.i ], [ %i.cb, %bb.e ] ; 12 uses
  %i.cj = and i64 %.0130205, 1
  %i.ck = icmp eq i64 %i.cj, 0                    ; 9 uses
  %i.cl = urem i64 %i.d, %i.cd                    ; 2 uses
  %.not.i145 = icmp ugt i64 %i.cl, %.0206
  %i.cm = select i1 %.not.i145, i64 0, i64 %i.cl  ; 5 uses
  %spec.select15.i = sub i64 %i.d, %i.cm          ; 5 uses
  %i.cn = icmp ne i64 %.0130205, 0
  %or.cond = and i1 %i.cn, %.0131204
  %or.cond3 = select i1 %or.cond, i1 %.0134201, i1 false
  br i1 %or.cond3, label %bb.h, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container4test24movable_and_copyable_intEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit

bb.h:                                             ; preds = %_ZN5boost7movelib15detail_adaptive18lblock_for_combineImEET_S3_S3_S3_Rb.exit
  %.not = xor i1 %i.ck, true
  %or.cond5 = and i1 %.1, %.not
  br i1 %or.cond5, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.co = sub i64 0, %.0132203
  %i.cp = getelementptr [4 x i8], ptr %i.c, i64 %i.co ; 5 uses
  %.not8.i.i146 = icmp eq i64 %.0133202, 0        ; 2 uses
  br i1 %or.cond188, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  br i1 %.not8.i.i146, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container4test24movable_and_copyable_intEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.j
  %i.cq = getelementptr [4 x i8], ptr %i.c, i64 %.0133202 ; 5 uses
  %.idx13.i = shl i64 %.0133202, 2                ; 2 uses
  %i.cr = getelementptr i8, ptr %i.cp, i64 %.idx13.i ; 5 uses
  %i.cs = add i64 %.idx13.i, -4                   ; 2 uses
  %i.ct = lshr exact i64 %i.cs, 2
  %i.cu = add nuw nsw i64 %i.ct, 1                ; 2 uses
  %min.iters.check322 = icmp ult i64 %i.cs, 28
  br i1 %min.iters.check322, label %.lr.ph.i.i148.preheader, label %vector.memcheck317

vector.memcheck317:                               ; preds = %.lr.ph.i.preheader.i
  %bound0318 = icmp ult ptr %i.c, %i.cr
  %bound1319 = icmp ult ptr %i.cp, %i.cq
  %found.conflict320 = and i1 %bound0318, %bound1319
  br i1 %found.conflict320, label %.lr.ph.i.i148.preheader, label %vector.ph323

vector.ph323:                                     ; preds = %vector.memcheck317
  %n.vec324 = and i64 %i.cu, 9223372036854775800  ; 3 uses
  %i.cv = mul i64 %n.vec324, -4                   ; 2 uses
  %i.cw = getelementptr i8, ptr %i.cq, i64 %i.cv
  %i.cx = getelementptr i8, ptr %i.cr, i64 %i.cv
  br label %vector.body325

vector.body325:                                   ; preds = %vector.body325, %vector.ph323
  %index326 = phi i64 [ 0, %vector.ph323 ], [ %index.next331, %vector.body325 ] ; 2 uses
  %i.cy = mul i64 %index326, -4                   ; 2 uses
  %next.gep327.a = getelementptr i8, ptr %i.cq, i64 %i.cy ; 2 uses
  %next.gep328 = getelementptr i8, ptr %i.cr, i64 %i.cy ; 2 uses
  %i.cz = getelementptr inbounds i8, ptr %next.gep328, i64 -16 ; 2 uses
  %i.da = getelementptr inbounds i8, ptr %next.gep328, i64 -32 ; 2 uses
  %wide.load329.a = load <4 x i32>, ptr %i.cz, align 4, !tbaa !343, !alias.scope !14047
  %wide.load330 = load <4 x i32>, ptr %i.da, align 4, !tbaa !343, !alias.scope !14047
  %i.db = getelementptr inbounds i8, ptr %next.gep327.a, i64 -16
  %i.dc = getelementptr inbounds i8, ptr %next.gep327.a, i64 -32
  store <4 x i32> %wide.load329.a, ptr %i.db, align 4, !tbaa !343, !alias.scope !14048, !noalias !14047
  store <4 x i32> %wide.load330, ptr %i.dc, align 4, !tbaa !343, !alias.scope !14048, !noalias !14047
  store <4 x i32> zeroinitializer, ptr %i.cz, align 4, !tbaa !343, !alias.scope !14047
  store <4 x i32> zeroinitializer, ptr %i.da, align 4, !tbaa !343, !alias.scope !14047
  %index.next331 = add nuw i64 %index326, 8       ; 2 uses
  %i.dd = icmp eq i64 %index.next331, %n.vec324
  br i1 %i.dd, label %middle.block332, label %vector.body325, !llvm.loop !14020

middle.block332:                                  ; preds = %vector.body325
  %cmp.n333 = icmp eq i64 %i.cu, %n.vec324
  br i1 %cmp.n333, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container4test24movable_and_copyable_intEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit, label %.lr.ph.i.i148.preheader

.lr.ph.i.i148.preheader:                          ; preds = %vector.memcheck317, %.lr.ph.i.preheader.i, %middle.block332
  %.010.i.i149.ph = phi ptr [ %i.cq, %vector.memcheck317 ], [ %i.cq, %.lr.ph.i.preheader.i ], [ %i.cw, %middle.block332 ]
  %.079.i.i150.ph = phi ptr [ %i.cr, %vector.memcheck317 ], [ %i.cr, %.lr.ph.i.preheader.i ], [ %i.cx, %middle.block332 ]
  br label %.lr.ph.i.i148

.lr.ph.i.i148:                                    ; preds = %.lr.ph.i.i148.preheader, %.lr.ph.i.i148
  %.010.i.i149 = phi ptr [ %i.df, %.lr.ph.i.i148 ], [ %.010.i.i149.ph, %.lr.ph.i.i148.preheader ]
  %.079.i.i150 = phi ptr [ %i.de, %.lr.ph.i.i148 ], [ %.079.i.i150.ph, %.lr.ph.i.i148.preheader ]
  %i.de = getelementptr inbounds i8, ptr %.079.i.i150, i64 -4 ; 4 uses
  %i.df = getelementptr inbounds i8, ptr %.010.i.i149, i64 -4 ; 2 uses
  %i.dg = load i32, ptr %i.de, align 4, !tbaa !343
  store i32 %i.dg, ptr %i.df, align 4, !tbaa !343
  store i32 0, ptr %i.de, align 4, !tbaa !343
  %.not.i.i151 = icmp eq ptr %i.cp, %i.de
  br i1 %.not.i.i151, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container4test24movable_and_copyable_intEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit, label %.lr.ph.i.i148, !llvm.loop !14021

bb.k:                                             ; preds = %bb.i
  br i1 %.not8.i.i146, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container4test24movable_and_copyable_intEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit, label %.lr.ph.i10.preheader.i

.lr.ph.i10.preheader.i:                           ; preds = %bb.k
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.0133202 ; 2 uses
  %.idx.i147 = shl i64 %.0133202, 2               ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.idx.i147 ; 2 uses
  %i.dj = add i64 %.idx.i147, -4                  ; 2 uses
  %i.dk = and i64 %i.dj, 4
  %lcmp.mod399.not.not = icmp eq i64 %i.dk, 0
  br i1 %lcmp.mod399.not.not, label %.lr.ph.i10.i.prol, label %.lr.ph.i10.i.prol.loopexit

.lr.ph.i10.i.prol:                                ; preds = %.lr.ph.i10.preheader.i
  %i.dl = getelementptr inbounds i8, ptr %i.di, i64 -4 ; 4 uses
  %i.dm = getelementptr inbounds i8, ptr %i.dh, i64 -4 ; 3 uses
  %i.dn = load i32, ptr %i.dl, align 4, !tbaa !343
  store i32 0, ptr %i.dl, align 4, !tbaa !343
  %i.do = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.dp = add i32 %i.do, 1
  store i32 %i.dp, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.dq = load i32, ptr %i.dm, align 4, !tbaa !343
  store i32 %i.dq, ptr %i.dl, align 4, !tbaa !343
  store i32 %i.dn, ptr %i.dm, align 4, !tbaa !343
  %i.dr = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.ds = add i32 %i.dr, -1
  store i32 %i.ds, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  br label %.lr.ph.i10.i.prol.loopexit

.lr.ph.i10.i.prol.loopexit:                       ; preds = %.lr.ph.i10.i.prol, %.lr.ph.i10.preheader.i
  %.08.i.i.unr = phi ptr [ %i.dh, %.lr.ph.i10.preheader.i ], [ %i.dm, %.lr.ph.i10.i.prol ]
  %.057.i.i.unr = phi ptr [ %i.di, %.lr.ph.i10.preheader.i ], [ %i.dl, %.lr.ph.i10.i.prol ]
  %i.dt = icmp eq i64 %i.dj, 0
  br i1 %i.dt, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container4test24movable_and_copyable_intEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit, label %.lr.ph.i10.i

.lr.ph.i10.i:                                     ; preds = %.lr.ph.i10.i.prol.loopexit, %.lr.ph.i10.i
  %.08.i.i = phi ptr [ %i.ed, %.lr.ph.i10.i ], [ %.08.i.i.unr, %.lr.ph.i10.i.prol.loopexit ] ; 2 uses
  %.057.i.i = phi ptr [ %i.ec, %.lr.ph.i10.i ], [ %.057.i.i.unr, %.lr.ph.i10.i.prol.loopexit ] ; 2 uses
  %i.du = getelementptr inbounds i8, ptr %.057.i.i, i64 -4 ; 3 uses
  %i.dv = getelementptr inbounds i8, ptr %.08.i.i, i64 -4 ; 2 uses
  %i.dw = load i32, ptr %i.du, align 4, !tbaa !343
  store i32 0, ptr %i.du, align 4, !tbaa !343
  %i.dx = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.dy = add i32 %i.dx, 1
  store i32 %i.dy, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.dz = load i32, ptr %i.dv, align 4, !tbaa !343
  store i32 %i.dz, ptr %i.du, align 4, !tbaa !343
  store i32 %i.dw, ptr %i.dv, align 4, !tbaa !343
  %i.ea = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.eb = add i32 %i.ea, -1
  store i32 %i.eb, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.ec = getelementptr inbounds i8, ptr %.057.i.i, i64 -8 ; 5 uses
  %i.ed = getelementptr inbounds i8, ptr %.08.i.i, i64 -8 ; 3 uses
  %i.ee = load i32, ptr %i.ec, align 4, !tbaa !343
  store i32 0, ptr %i.ec, align 4, !tbaa !343
  %i.ef = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.eg = add i32 %i.ef, 1
  store i32 %i.eg, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.eh = load i32, ptr %i.ed, align 4, !tbaa !343
  store i32 %i.eh, ptr %i.ec, align 4, !tbaa !343
  store i32 %i.ee, ptr %i.ed, align 4, !tbaa !343
  %i.ei = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.ej = add i32 %i.ei, -1
  store i32 %i.ej, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %.not.i11.i.1 = icmp eq ptr %i.cp, %i.ec
  br i1 %.not.i11.i.1, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container4test24movable_and_copyable_intEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit, label %.lr.ph.i10.i, !llvm.loop !222

bb.l:                                             ; preds = %bb.h
  %i.ek = getelementptr [4 x i8], ptr %i.c, i64 %.0133202 ; 14 uses
  %i.el = sub i64 0, %.1.i
  %i.em = getelementptr [4 x i8], ptr %i.ek, i64 %i.el ; 7 uses
  %i.en = icmp ugt i64 %.0133202, %spec.select15.i
  br i1 %i.en, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.eo = sub nuw i64 %.0133202, %spec.select15.i ; 2 uses
  %i.ep = sub i64 0, %i.eo
  %i.eq = getelementptr [4 x i8], ptr %i.em, i64 %i.ep ; 4 uses
  %.idx13.i160 = shl nuw nsw i64 %i.eo, 2
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 %.idx13.i160 ; 5 uses
  br i1 %or.cond188, label %.lr.ph.i.i161.preheader, label %.lr.ph.i10.i155

.lr.ph.i.i161.preheader:                          ; preds = %bb.m
  %i.es = add i64 %i.cm, %.0133202
  %i.et = add i64 %i.es, %i.b
  %i.eu = shl i64 %i.et, 2
  %.reass = add i64 %i.eu, %invariant.op          ; 2 uses
  %i.ev = lshr exact i64 %.reass, 2
  %i.ew = add nuw nsw i64 %i.ev, 1                ; 2 uses
  %min.iters.check282 = icmp ult i64 %.reass, 44
  br i1 %min.iters.check282, label %.lr.ph.i.i161.preheader388, label %vector.memcheck275

vector.memcheck275:                               ; preds = %.lr.ph.i.i161.preheader
  %i.ex = mul i64 %i.cm, -4
  %scevgep276 = getelementptr i8, ptr %scevgep, i64 %i.ex
  %7 = add i64 %i.b, %.0133202
  %8 = sub i64 %7, %.1.i
  %9 = shl i64 %8, 2
  %scevgep277 = getelementptr i8, ptr %2, i64 %9
  %bound0278 = icmp ult ptr %scevgep276, %scevgep277
  %bound1279 = icmp ult ptr %i.eq, %i.ek
  %found.conflict280 = and i1 %bound0278, %bound1279
  br i1 %found.conflict280, label %.lr.ph.i.i161.preheader388, label %vector.ph283

vector.ph283:                                     ; preds = %vector.memcheck275
  %n.vec284 = and i64 %i.ew, 9223372036854775800  ; 3 uses
  %i.ey = mul i64 %n.vec284, -4                   ; 2 uses
  %i.ez = getelementptr i8, ptr %i.ek, i64 %i.ey
  %i.fa = getelementptr i8, ptr %i.er, i64 %i.ey
  br label %vector.body285

vector.body285:                                   ; preds = %vector.body285, %vector.ph283
  %index286 = phi i64 [ 0, %vector.ph283 ], [ %index.next291, %vector.body285 ] ; 2 uses
  %i.fb = mul i64 %index286, -4                   ; 2 uses
  %next.gep287.a = getelementptr i8, ptr %i.ek, i64 %i.fb ; 2 uses
  %next.gep288 = getelementptr i8, ptr %i.er, i64 %i.fb ; 2 uses
  %i.fc = getelementptr inbounds i8, ptr %next.gep288, i64 -16 ; 2 uses
  %i.fd = getelementptr inbounds i8, ptr %next.gep288, i64 -32 ; 2 uses
  %wide.load289.a = load <4 x i32>, ptr %i.fc, align 4, !tbaa !343, !alias.scope !14049
  %wide.load290 = load <4 x i32>, ptr %i.fd, align 4, !tbaa !343, !alias.scope !14049
  %i.fe = getelementptr inbounds i8, ptr %next.gep287.a, i64 -16
  %i.ff = getelementptr inbounds i8, ptr %next.gep287.a, i64 -32
  store <4 x i32> %wide.load289.a, ptr %i.fe, align 4, !tbaa !343, !alias.scope !14050, !noalias !14049
  store <4 x i32> %wide.load290, ptr %i.ff, align 4, !tbaa !343, !alias.scope !14050, !noalias !14049
  store <4 x i32> zeroinitializer, ptr %i.fc, align 4, !tbaa !343, !alias.scope !14049
  store <4 x i32> zeroinitializer, ptr %i.fd, align 4, !tbaa !343, !alias.scope !14049
  %index.next291 = add nuw i64 %index286, 8       ; 2 uses
  %i.fg = icmp eq i64 %index.next291, %n.vec284
  br i1 %i.fg, label %middle.block292, label %vector.body285, !llvm.loop !14025

middle.block292:                                  ; preds = %vector.body285
  %cmp.n293 = icmp eq i64 %i.ew, %n.vec284
  br i1 %cmp.n293, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container4test24movable_and_copyable_intEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit, label %.lr.ph.i.i161.preheader388

.lr.ph.i.i161.preheader388:                       ; preds = %vector.memcheck275, %.lr.ph.i.i161.preheader, %middle.block292
  %.010.i.i162.ph = phi ptr [ %i.ek, %vector.memcheck275 ], [ %i.ek, %.lr.ph.i.i161.preheader ], [ %i.ez, %middle.block292 ]
  %.079.i.i163.ph = phi ptr [ %i.er, %vector.memcheck275 ], [ %i.er, %.lr.ph.i.i161.preheader ], [ %i.fa, %middle.block292 ]
  br label %.lr.ph.i.i161

.lr.ph.i.i161:                                    ; preds = %.lr.ph.i.i161.preheader388, %.lr.ph.i.i161
  %.010.i.i162 = phi ptr [ %i.fi, %.lr.ph.i.i161 ], [ %.010.i.i162.ph, %.lr.ph.i.i161.preheader388 ]
  %.079.i.i163 = phi ptr [ %i.fh, %.lr.ph.i.i161 ], [ %.079.i.i163.ph, %.lr.ph.i.i161.preheader388 ]
  %i.fh = getelementptr inbounds i8, ptr %.079.i.i163, i64 -4 ; 4 uses
  %i.fi = getelementptr inbounds i8, ptr %.010.i.i162, i64 -4 ; 2 uses
  %i.fj = load i32, ptr %i.fh, align 4, !tbaa !343
  store i32 %i.fj, ptr %i.fi, align 4, !tbaa !343
  store i32 0, ptr %i.fh, align 4, !tbaa !343
  %.not.i.i164 = icmp eq ptr %i.eq, %i.fh
  br i1 %.not.i.i164, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container4test24movable_and_copyable_intEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit, label %.lr.ph.i.i161, !llvm.loop !14026

.lr.ph.i10.i155:                                  ; preds = %bb.m, %.lr.ph.i10.i155
  %.08.i.i156 = phi ptr [ %i.fl, %.lr.ph.i10.i155 ], [ %i.ek, %bb.m ]
  %.057.i.i157 = phi ptr [ %i.fk, %.lr.ph.i10.i155 ], [ %i.er, %bb.m ]
  %i.fk = getelementptr inbounds i8, ptr %.057.i.i157, i64 -4 ; 5 uses
  %i.fl = getelementptr inbounds i8, ptr %.08.i.i156, i64 -4 ; 3 uses
  %i.fm = load i32, ptr %i.fk, align 4, !tbaa !343
  store i32 0, ptr %i.fk, align 4, !tbaa !343
  %i.fn = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.fo = add i32 %i.fn, 1
  store i32 %i.fo, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.fp = load i32, ptr %i.fl, align 4, !tbaa !343
  store i32 %i.fp, ptr %i.fk, align 4, !tbaa !343
  store i32 %i.fm, ptr %i.fl, align 4, !tbaa !343
  %i.fq = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.fr = add i32 %i.fq, -1
  store i32 %i.fr, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %.not.i11.i158 = icmp eq ptr %i.eq, %i.fk
  br i1 %.not.i11.i158, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container4test24movable_and_copyable_intEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit, label %.lr.ph.i10.i155, !llvm.loop !222

bb.n:                                             ; preds = %bb.l
  %i.fs = icmp ult i64 %.0133202, %spec.select15.i
  br i1 %i.fs, label %bb.o, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container4test24movable_and_copyable_intEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit

bb.o:                                             ; preds = %bb.n
  %i.ft = sub nuw i64 %spec.select15.i, %.0133202
  %.idx14.i = shl i64 %i.ft, 2
  %i.fu = getelementptr i8, ptr %i.ek, i64 %.idx14.i ; 3 uses
  br i1 %or.cond188, label %.lr.ph.i.i168.preheader, label %.lr.ph.i9.i

.lr.ph.i.i168.preheader:                          ; preds = %bb.o
  %i.fv = add i64 %i.cm, %.0133202
  %i.fw = add i64 %i.fv, %i.b
  %i.fx = shl i64 %i.fw, 2
  %i.fy = sub i64 %i.bx, %i.fx                    ; 2 uses
  %i.fz = lshr exact i64 %i.fy, 2
  %i.ga = add nuw nsw i64 %i.fz, 1                ; 2 uses
  %min.iters.check303 = icmp ult i64 %i.fy, 28
  br i1 %min.iters.check303, label %.lr.ph.i.i168.preheader390, label %vector.memcheck296

vector.memcheck296:                               ; preds = %.lr.ph.i.i168.preheader
  %i.gb = add i64 %i.cm, %.1.i
  %i.gc = mul i64 %i.gb, -4
  %scevgep298 = getelementptr i8, ptr %scevgep297.a, i64 %i.gc
  %bound0299 = icmp ult ptr %i.em, %i.fu
  %bound1300 = icmp ult ptr %i.ek, %scevgep298
  %found.conflict301 = and i1 %bound0299, %bound1300
  br i1 %found.conflict301, label %.lr.ph.i.i168.preheader390, label %vector.ph304

vector.ph304:                                     ; preds = %vector.memcheck296
  %n.vec305 = and i64 %i.ga, 9223372036854775800  ; 3 uses
  %i.gd = shl i64 %n.vec305, 2                    ; 2 uses
  %i.ge = getelementptr i8, ptr %i.em, i64 %i.gd
  %i.gf = getelementptr i8, ptr %i.ek, i64 %i.gd
  br label %vector.body306

vector.body306:                                   ; preds = %vector.body306, %vector.ph304
  %index307 = phi i64 [ 0, %vector.ph304 ], [ %index.next312, %vector.body306 ] ; 2 uses
  %i.gg = shl i64 %index307, 2                    ; 2 uses
  %next.gep308.a = getelementptr i8, ptr %i.em, i64 %i.gg ; 2 uses
  %next.gep309 = getelementptr i8, ptr %i.ek, i64 %i.gg ; 3 uses
  %i.gh = getelementptr i8, ptr %next.gep309, i64 16 ; 2 uses
  %wide.load310.a = load <4 x i32>, ptr %next.gep309, align 4, !tbaa !343, !alias.scope !14051
  %wide.load311 = load <4 x i32>, ptr %i.gh, align 4, !tbaa !343, !alias.scope !14051
  %i.gi = getelementptr i8, ptr %next.gep308.a, i64 16
  store <4 x i32> %wide.load310.a, ptr %next.gep308.a, align 4, !tbaa !343, !alias.scope !14052, !noalias !14051
  store <4 x i32> %wide.load311, ptr %i.gi, align 4, !tbaa !343, !alias.scope !14052, !noalias !14051
  store <4 x i32> zeroinitializer, ptr %next.gep309, align 4, !tbaa !343, !alias.scope !14051
  store <4 x i32> zeroinitializer, ptr %i.gh, align 4, !tbaa !343, !alias.scope !14051
  %index.next312 = add nuw i64 %index307, 8       ; 2 uses
  %i.gj = icmp eq i64 %index.next312, %n.vec305
  br i1 %i.gj, label %middle.block313, label %vector.body306, !llvm.loop !14030

middle.block313:                                  ; preds = %vector.body306
  %cmp.n314 = icmp eq i64 %i.ga, %n.vec305
  br i1 %cmp.n314, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container4test24movable_and_copyable_intEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit, label %.lr.ph.i.i168.preheader390

.lr.ph.i.i168.preheader390:                       ; preds = %vector.memcheck296, %.lr.ph.i.i168.preheader, %middle.block313
  %.010.i.i169.ph = phi ptr [ %i.em, %vector.memcheck296 ], [ %i.em, %.lr.ph.i.i168.preheader ], [ %i.ge, %middle.block313 ]
  %.079.i.i170.ph = phi ptr [ %i.ek, %vector.memcheck296 ], [ %i.ek, %.lr.ph.i.i168.preheader ], [ %i.gf, %middle.block313 ]
  br label %.lr.ph.i.i168

.lr.ph.i.i168:                                    ; preds = %.lr.ph.i.i168.preheader390, %.lr.ph.i.i168
  %.010.i.i169 = phi ptr [ %i.gm, %.lr.ph.i.i168 ], [ %.010.i.i169.ph, %.lr.ph.i.i168.preheader390 ] ; 2 uses
  %.079.i.i170 = phi ptr [ %i.gl, %.lr.ph.i.i168 ], [ %.079.i.i170.ph, %.lr.ph.i.i168.preheader390 ] ; 3 uses
  %i.gk = load i32, ptr %.079.i.i170, align 4, !tbaa !343
  store i32 %i.gk, ptr %.010.i.i169, align 4, !tbaa !343
  store i32 0, ptr %.079.i.i170, align 4, !tbaa !343
  %i.gl = getelementptr inbounds nuw i8, ptr %.079.i.i170, i64 4 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.010.i.i169, i64 4
  %.not.i.i171 = icmp eq ptr %i.gl, %i.fu
  br i1 %.not.i.i171, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container4test24movable_and_copyable_intEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit, label %.lr.ph.i.i168, !llvm.loop !14031

.lr.ph.i9.i:                                      ; preds = %bb.o, %.lr.ph.i9.i
  %.010.i10.i = phi ptr [ %i.gu, %.lr.ph.i9.i ], [ %i.em, %bb.o ] ; 3 uses
  %.079.i11.i = phi ptr [ %i.gt, %.lr.ph.i9.i ], [ %i.ek, %bb.o ] ; 4 uses
  %i.gn = load i32, ptr %.079.i11.i, align 4, !tbaa !343
  store i32 0, ptr %.079.i11.i, align 4, !tbaa !343
  %i.go = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.gp = add i32 %i.go, 1
  store i32 %i.gp, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.gq = load i32, ptr %.010.i10.i, align 4, !tbaa !343
  store i32 %i.gq, ptr %.079.i11.i, align 4, !tbaa !343
  store i32 %i.gn, ptr %.010.i10.i, align 4, !tbaa !343
  %i.gr = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.gs = add i32 %i.gr, -1
  store i32 %i.gs, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.gt = getelementptr inbounds nuw i8, ptr %.079.i11.i, i64 4 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.010.i10.i, i64 4
  %.not.i12.i = icmp eq ptr %i.gt, %i.fu
  br i1 %.not.i12.i, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container4test24movable_and_copyable_intEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit, label %.lr.ph.i9.i, !llvm.loop !220

_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container4test24movable_and_copyable_intEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit: ; preds = %.lr.ph.i10.i.prol.loopexit, %.lr.ph.i10.i, %.lr.ph.i.i148, %.lr.ph.i9.i, %.lr.ph.i.i168, %.lr.ph.i10.i155, %.lr.ph.i.i161, %middle.block332, %middle.block313, %middle.block292, %bb.k, %bb.j, %bb.n, %_ZN5boost7movelib15detail_adaptive18lblock_for_combineImEET_S3_S3_S3_Rb.exit
  %.not140 = icmp eq i64 %i.cc, 0
  br i1 %.not140, label %bb.s, label %bb.p

bb.p:                                             ; preds = %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container4test24movable_and_copyable_intEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit
  %i.gv = udiv i64 %i.cd, %.1.i
  %i.gw = icmp ugt i64 %i.gv, 256
  br i1 %i.gw, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %.not6 = xor i1 %.1, true
  %or.cond8 = select i1 %.not6, i1 true, i1 %i.ck
  %i.gx = sub i64 0, %.1.i
  %.idx142 = select i1 %or.cond8, i64 0, i64 %i.gx
  %i.gy = getelementptr inbounds [4 x i8], ptr %i.c, i64 %.idx142
  call void @_ZN5boost7movelib15detail_adaptive28adaptive_sort_combine_blocksIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEES6_SE_NS0_13adaptive_xbufIS5_S6_mEEEEvT_T0_T1_NS0_9iter_sizeISJ_E4typeESM_SM_bbRT3_T2_b(ptr noundef %0, ptr noundef %i.gy, i64 noundef %i.d, i64 noundef %.0206, i64 noundef %.1.i, i1 noundef zeroext %.1, i1 noundef zeroext %or.cond188, ptr noundef nonnull align 8 dereferenceable(24) %6, i1 noundef zeroext %i.ck)
  br label %bb.t

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %.not9 = xor i1 %.1, true
  %or.cond11 = select i1 %.not9, i1 true, i1 %i.ck
  %i.gz = sub i64 0, %.1.i
  %.idx141 = select i1 %or.cond11, i64 0, i64 %i.gz
  %i.ha = getelementptr inbounds [4 x i8], ptr %i.c, i64 %.idx141
  call void @_ZN5boost7movelib15detail_adaptive28adaptive_sort_combine_blocksIPhNS1_4lessEPNS_9container4test24movable_and_copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEENS0_13adaptive_xbufIS7_S8_mEEEEvT_T0_T1_NS0_9iter_sizeISL_E4typeESO_SO_bbRT3_T2_b(ptr noundef nonnull %i.a, ptr noundef %i.ha, i64 noundef %i.d, i64 noundef %.0206, i64 noundef %.1.i, i1 noundef zeroext %.1, i1 noundef zeroext %or.cond188, ptr noundef nonnull align 8 dereferenceable(24) %6, i1 noundef zeroext %i.ck)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.t

bb.s:                                             ; preds = %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container4test24movable_and_copyable_intEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit
  %i.hb = load i64, ptr %i.bu, align 8, !tbaa !427
  %i.hc = load ptr, ptr %6, align 8, !tbaa !428
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %i.hb
  %i.he = ptrtoint ptr %i.hd to i64
  %i.hf = add i64 %i.he, 7
  %i.hg = and i64 %i.hf, -8
  %i.hh = inttoptr i64 %i.hg to ptr
  %.not12 = xor i1 %.1, true
  %or.cond14 = select i1 %.not12, i1 true, i1 %i.ck
end_hunk_0
