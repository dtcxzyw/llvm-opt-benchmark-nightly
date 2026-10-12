Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/explicit_inst_vector_test?download=true
inline.NumInlined: 4251
inline.NumDeleted: 964
loop-unroll.NumRuntimeUnrolled: 299
loop-unroll.NumUnrolled: 299
begin_hunk_0_@_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEEvT0_mSC_SC_mT1_RT_:bb.a
  %i.kp = shl i64 %n.vec350, 2                    ; 2 uses
  %i.kq = getelementptr i8, ptr %i.kl, i64 %i.kp
  %i.kr = and i64 %4, 7
  %i.ks = getelementptr i8, ptr %5, i64 %i.kp
  br label %vector.body351

vector.body351:                                   ; preds = %vector.body351, %vector.ph349
  %index352 = phi i64 [ 0, %vector.ph349 ], [ %index.next357, %vector.body351 ] ; 2 uses
  %i.kt = shl i64 %index352, 2                    ; 2 uses
  %next.gep353 = getelementptr i8, ptr %i.kl, i64 %i.kt ; 2 uses
  %next.gep354 = getelementptr i8, ptr %5, i64 %i.kt ; 2 uses
  %i.ku = getelementptr i8, ptr %next.gep354, i64 16
  %wide.load355 = load <4 x i32>, ptr %next.gep354, align 4, !tbaa !65
  %wide.load356 = load <4 x i32>, ptr %i.ku, align 4, !tbaa !65
  %i.kv = getelementptr i8, ptr %next.gep353, i64 16
  store <4 x i32> %wide.load355, ptr %next.gep353, align 4, !tbaa !65
  store <4 x i32> %wide.load356, ptr %i.kv, align 4, !tbaa !65
  %index.next357 = add nuw i64 %index352, 8       ; 2 uses
  %i.kw = icmp eq i64 %index.next357, %n.vec350
  br i1 %i.kw, label %middle.block358, label %vector.body351, !llvm.loop !1464

middle.block358:                                  ; preds = %vector.body351
  %cmp.n359 = icmp eq i64 %4, %n.vec350
  br i1 %cmp.n359, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit219, label %.lr.ph.i.i213.preheader437

.lr.ph.i.i213.preheader437:                       ; preds = %vector.memcheck346, %.lr.ph.i.i213.preheader, %middle.block358
  %.011.i.i214.ph = phi ptr [ %i.kl, %vector.memcheck346 ], [ %i.kl, %.lr.ph.i.i213.preheader ], [ %i.kq, %middle.block358 ] ; 2 uses
  %.0610.i.i215.ph = phi i64 [ %4, %vector.memcheck346 ], [ %4, %.lr.ph.i.i213.preheader ], [ %i.kr, %middle.block358 ] ; 4 uses
  %.079.i.i216.ph = phi ptr [ %5, %vector.memcheck346 ], [ %5, %.lr.ph.i.i213.preheader ], [ %i.ks, %middle.block358 ] ; 2 uses
  %i.kx = add i64 %.0610.i.i215.ph, -1
  %xtraiter452 = and i64 %.0610.i.i215.ph, 7      ; 2 uses
  %lcmp.mod453.not = icmp eq i64 %xtraiter452, 0
  br i1 %lcmp.mod453.not, label %.lr.ph.i.i213.prol.loopexit, label %.lr.ph.i.i213.prol

.lr.ph.i.i213.prol:                               ; preds = %.lr.ph.i.i213.preheader437, %.lr.ph.i.i213.prol
  %.011.i.i214.prol = phi ptr [ %i.lb, %.lr.ph.i.i213.prol ], [ %.011.i.i214.ph, %.lr.ph.i.i213.preheader437 ] ; 2 uses
  %.0610.i.i215.prol = phi i64 [ %i.ky, %.lr.ph.i.i213.prol ], [ %.0610.i.i215.ph, %.lr.ph.i.i213.preheader437 ]
  %.079.i.i216.prol = phi ptr [ %i.la, %.lr.ph.i.i213.prol ], [ %.079.i.i216.ph, %.lr.ph.i.i213.preheader437 ] ; 2 uses
  %prol.iter454 = phi i64 [ %prol.iter454.next, %.lr.ph.i.i213.prol ], [ 0, %.lr.ph.i.i213.preheader437 ]
  %i.ky = add i64 %.0610.i.i215.prol, -1          ; 2 uses
  %i.kz = load i32, ptr %.079.i.i216.prol, align 4, !tbaa !65
  store i32 %i.kz, ptr %.011.i.i214.prol, align 4, !tbaa !65
  %i.la = getelementptr inbounds nuw i8, ptr %.079.i.i216.prol, i64 4 ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %.011.i.i214.prol, i64 4 ; 2 uses
  %prol.iter454.next = add i64 %prol.iter454, 1   ; 2 uses
  %prol.iter454.cmp.not = icmp eq i64 %prol.iter454.next, %xtraiter452
  br i1 %prol.iter454.cmp.not, label %.lr.ph.i.i213.prol.loopexit, label %.lr.ph.i.i213.prol, !llvm.loop !1465

.lr.ph.i.i213.prol.loopexit:                      ; preds = %.lr.ph.i.i213.prol, %.lr.ph.i.i213.preheader437
  %.011.i.i214.unr = phi ptr [ %.011.i.i214.ph, %.lr.ph.i.i213.preheader437 ], [ %i.lb, %.lr.ph.i.i213.prol ]
  %.0610.i.i215.unr = phi i64 [ %.0610.i.i215.ph, %.lr.ph.i.i213.preheader437 ], [ %i.ky, %.lr.ph.i.i213.prol ]
  %.079.i.i216.unr = phi ptr [ %.079.i.i216.ph, %.lr.ph.i.i213.preheader437 ], [ %i.la, %.lr.ph.i.i213.prol ]
  %i.lc = icmp ult i64 %i.kx, 7
  br i1 %i.lc, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit219, label %.lr.ph.i.i213

.lr.ph.i.i213:                                    ; preds = %.lr.ph.i.i213.prol.loopexit, %.lr.ph.i.i213
  %.011.i.i214 = phi ptr [ %i.mb, %.lr.ph.i.i213 ], [ %.011.i.i214.unr, %.lr.ph.i.i213.prol.loopexit ] ; 9 uses
  %.0610.i.i215 = phi i64 [ %i.ly, %.lr.ph.i.i213 ], [ %.0610.i.i215.unr, %.lr.ph.i.i213.prol.loopexit ]
  %.079.i.i216 = phi ptr [ %i.ma, %.lr.ph.i.i213 ], [ %.079.i.i216.unr, %.lr.ph.i.i213.prol.loopexit ] ; 9 uses
  %i.ld = load i32, ptr %.079.i.i216, align 4, !tbaa !65
  store i32 %i.ld, ptr %.011.i.i214, align 4, !tbaa !65
  %i.le = getelementptr inbounds nuw i8, ptr %.079.i.i216, i64 4
  %i.lf = getelementptr inbounds nuw i8, ptr %.011.i.i214, i64 4
  %i.lg = load i32, ptr %i.le, align 4, !tbaa !65
  store i32 %i.lg, ptr %i.lf, align 4, !tbaa !65
  %i.lh = getelementptr inbounds nuw i8, ptr %.079.i.i216, i64 8
  %i.li = getelementptr inbounds nuw i8, ptr %.011.i.i214, i64 8
  %i.lj = load i32, ptr %i.lh, align 4, !tbaa !65
  store i32 %i.lj, ptr %i.li, align 4, !tbaa !65
  %i.lk = getelementptr inbounds nuw i8, ptr %.079.i.i216, i64 12
  %i.ll = getelementptr inbounds nuw i8, ptr %.011.i.i214, i64 12
  %i.lm = load i32, ptr %i.lk, align 4, !tbaa !65
  store i32 %i.lm, ptr %i.ll, align 4, !tbaa !65
  %i.ln = getelementptr inbounds nuw i8, ptr %.079.i.i216, i64 16
  %i.lo = getelementptr inbounds nuw i8, ptr %.011.i.i214, i64 16
  %i.lp = load i32, ptr %i.ln, align 4, !tbaa !65
  store i32 %i.lp, ptr %i.lo, align 4, !tbaa !65
  %i.lq = getelementptr inbounds nuw i8, ptr %.079.i.i216, i64 20
  %i.lr = getelementptr inbounds nuw i8, ptr %.011.i.i214, i64 20
  %i.ls = load i32, ptr %i.lq, align 4, !tbaa !65
  store i32 %i.ls, ptr %i.lr, align 4, !tbaa !65
  %i.lt = getelementptr inbounds nuw i8, ptr %.079.i.i216, i64 24
  %i.lu = getelementptr inbounds nuw i8, ptr %.011.i.i214, i64 24
  %i.lv = load i32, ptr %i.lt, align 4, !tbaa !65
  store i32 %i.lv, ptr %i.lu, align 4, !tbaa !65
  %i.lw = getelementptr inbounds nuw i8, ptr %.079.i.i216, i64 28
  %i.lx = getelementptr inbounds nuw i8, ptr %.011.i.i214, i64 28
  %i.ly = add i64 %.0610.i.i215, -8               ; 2 uses
  %i.lz = load i32, ptr %i.lw, align 4, !tbaa !65
  store i32 %i.lz, ptr %i.lx, align 4, !tbaa !65
  %i.ma = getelementptr inbounds nuw i8, ptr %.079.i.i216, i64 32
  %i.mb = getelementptr inbounds nuw i8, ptr %.011.i.i214, i64 32
  %.not.i.i217.7 = icmp eq i64 %i.ly, 0
  br i1 %.not.i.i217.7, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit219, label %.lr.ph.i.i213, !llvm.loop !1466

_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit219: ; preds = %.lr.ph.i.i213.prol.loopexit, %.lr.ph.i.i213, %middle.block358, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit211
  %.not.i220 = icmp eq ptr %3, %i.kl
  br i1 %.not.i220, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit149, label %bb.i

bb.i:                                             ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit219
  %.not8.i.i221 = icmp eq ptr %0, %3
  br i1 %.not8.i.i221, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit226, label %.lr.ph.i.i222.preheader

.lr.ph.i.i222.preheader:                          ; preds = %bb.i
  %i.mc = ptrtoaddr ptr %0 to i64
  %i.md = add i64 %i.g, -4
  %i.me = sub i64 %i.md, %i.mc                    ; 3 uses
  %i.mf = lshr i64 %i.me, 2
  %i.mg = add nuw nsw i64 %i.mf, 1                ; 2 uses
  %min.iters.check369 = icmp ult i64 %i.me, 108
  br i1 %min.iters.check369, label %.lr.ph.i.i222.preheader435, label %vector.memcheck370

vector.memcheck370:                               ; preds = %.lr.ph.i.i222.preheader
  %i.mh = shl i64 %4, 2
  %i.mi = and i64 %i.me, -4                       ; 2 uses
  %i.mj = add i64 %i.mh, %i.mi
  %i.mk = sub nuw nsw i64 -4, %i.mj
  %i.ml = getelementptr i8, ptr %i.ki, i64 %i.mk
  %i.mm = sub nuw nsw i64 -4, %i.mi
  %i.mn = getelementptr i8, ptr %3, i64 %i.mm
  %bound0371 = icmp ult ptr %i.ml, %3
  %bound1372 = icmp ult ptr %i.mn, %i.kl
  %found.conflict373 = and i1 %bound0371, %bound1372
  br i1 %found.conflict373, label %.lr.ph.i.i222.preheader435, label %vector.ph374

vector.ph374:                                     ; preds = %vector.memcheck370
  %n.vec375 = and i64 %i.mg, 9223372036854775800  ; 3 uses
  %i.mo = mul i64 %n.vec375, -4                   ; 2 uses
  %i.mp = getelementptr i8, ptr %i.kl, i64 %i.mo  ; 2 uses
  %i.mq = getelementptr i8, ptr %3, i64 %i.mo
  br label %vector.body376

vector.body376:                                   ; preds = %vector.body376, %vector.ph374
  %index377 = phi i64 [ 0, %vector.ph374 ], [ %index.next382, %vector.body376 ] ; 2 uses
  %i.mr = mul i64 %index377, -4                   ; 2 uses
  %next.gep378 = getelementptr i8, ptr %i.kl, i64 %i.mr ; 2 uses
  %next.gep379 = getelementptr i8, ptr %3, i64 %i.mr ; 2 uses
  %i.ms = getelementptr inbounds i8, ptr %next.gep379, i64 -16 ; 2 uses
  %i.mt = getelementptr inbounds i8, ptr %next.gep379, i64 -32 ; 2 uses
  %wide.load380 = load <4 x i32>, ptr %i.ms, align 4, !tbaa !65, !alias.scope !1478
  %wide.load381 = load <4 x i32>, ptr %i.mt, align 4, !tbaa !65, !alias.scope !1478
  %i.mu = getelementptr inbounds i8, ptr %next.gep378, i64 -16
  %i.mv = getelementptr inbounds i8, ptr %next.gep378, i64 -32
  store <4 x i32> %wide.load380, ptr %i.mu, align 4, !tbaa !65, !alias.scope !1479, !noalias !1478
  store <4 x i32> %wide.load381, ptr %i.mv, align 4, !tbaa !65, !alias.scope !1479, !noalias !1478
  store <4 x i32> zeroinitializer, ptr %i.ms, align 4, !tbaa !65, !alias.scope !1478
  store <4 x i32> zeroinitializer, ptr %i.mt, align 4, !tbaa !65, !alias.scope !1478
  %index.next382 = add nuw i64 %index377, 8       ; 2 uses
  %i.mw = icmp eq i64 %index.next382, %n.vec375
  br i1 %i.mw, label %middle.block383, label %vector.body376, !llvm.loop !1470

middle.block383:                                  ; preds = %vector.body376
  %cmp.n384 = icmp eq i64 %i.mg, %n.vec375
  br i1 %cmp.n384, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit226, label %.lr.ph.i.i222.preheader435

.lr.ph.i.i222.preheader435:                       ; preds = %vector.memcheck370, %.lr.ph.i.i222.preheader, %middle.block383
  %.010.i.i223.ph = phi ptr [ %i.kl, %vector.memcheck370 ], [ %i.kl, %.lr.ph.i.i222.preheader ], [ %i.mp, %middle.block383 ]
  %.079.i.i224.ph = phi ptr [ %3, %vector.memcheck370 ], [ %3, %.lr.ph.i.i222.preheader ], [ %i.mq, %middle.block383 ]
  br label %.lr.ph.i.i222

.lr.ph.i.i222:                                    ; preds = %.lr.ph.i.i222.preheader435, %.lr.ph.i.i222
  %.010.i.i223 = phi ptr [ %i.my, %.lr.ph.i.i222 ], [ %.010.i.i223.ph, %.lr.ph.i.i222.preheader435 ]
  %.079.i.i224 = phi ptr [ %i.mx, %.lr.ph.i.i222 ], [ %.079.i.i224.ph, %.lr.ph.i.i222.preheader435 ]
  %i.mx = getelementptr inbounds i8, ptr %.079.i.i224, i64 -4 ; 4 uses
  %i.my = getelementptr inbounds i8, ptr %.010.i.i223, i64 -4 ; 3 uses
  %i.mz = load i32, ptr %i.mx, align 4, !tbaa !65
  store i32 %i.mz, ptr %i.my, align 4, !tbaa !65
  store i32 0, ptr %i.mx, align 4, !tbaa !65
  %.not.i.i225 = icmp eq ptr %0, %i.mx
  br i1 %.not.i.i225, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit226, label %.lr.ph.i.i222, !llvm.loop !1471

_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit226: ; preds = %.lr.ph.i.i222, %middle.block383, %bb.i
  %i.na = phi ptr [ %i.kl, %bb.i ], [ %i.mp, %middle.block383 ], [ %i.my, %.lr.ph.i.i222 ] ; 2 uses
  %.not3.i227 = icmp eq ptr %0, %i.na
  br i1 %.not3.i227, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit149, label %.lr.ph.i228

.lr.ph.i228:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit226, %.lr.ph.i228
  %storemerge4.i229 = phi ptr [ %i.nd, %.lr.ph.i228 ], [ %0, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit226 ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i229, align 4, !tbaa !65
  %i.nb = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.nc = add i32 %i.nb, -1
  store i32 %i.nc, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.nd = getelementptr inbounds nuw i8, ptr %storemerge4.i229, i64 4 ; 2 uses
  %.not.i230 = icmp eq ptr %i.nd, %i.na
  br i1 %.not.i230, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit149, label %.lr.ph.i228, !llvm.loop !17

_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit149: ; preds = %.preheader.prol.loopexit, %.preheader, %.lr.ph.i142, %.lr.ph.i228, %.lr.ph.i185, %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit219, %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPKS5_E31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit176, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit226, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit183, %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit
  ret void
}

declare noundef ptr @_ZN5boost9container17dlmalloc_memalignEmm(i64 noundef, i64 noundef) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #19

declare { ptr, i32 } @_ZN5boost9container27dlmalloc_allocation_commandEjmmmmPmPv(i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #18

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container54expand_backward_forward_and_insert_alloc_move_backwardIPNS0_4test24movable_and_copyable_intENS0_3dtl18insert_range_proxyINS0_9allocatorIS3_Lj2ELj0EEENS_13move_iteratorIS4_EEEES8_EEvT_mSC_SC_mT0_RT1_(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr %5, ptr noundef nonnull align 1 dereferenceable(1) %6) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr [4 x i8], ptr %0, i64 %1   ; 29 uses
  %i.b = ptrtoint ptr %3 to i64                   ; 10 uses
  %i.c = ptrtoint ptr %0 to i64                   ; 13 uses
  %i.d = sub i64 %i.b, %i.c                       ; 3 uses
  %i.e = ashr exact i64 %i.d, 2                   ; 13 uses
  %i.f = ptrtoint ptr %2 to i64                   ; 3 uses
  %i.g = sub i64 %i.c, %i.f                       ; 13 uses
  %i.h = ashr exact i64 %i.g, 2                   ; 13 uses
  %i.i = add i64 %i.e, %4                         ; 8 uses
  %.not = icmp ult i64 %i.h, %i.i
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not16.i = icmp eq ptr %0, %3
  br i1 %.not16.i, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.018.i = phi ptr [ %i.m, %.lr.ph.i ], [ %0, %bb.b ] ; 3 uses
  %.01517.i = phi ptr [ %i.n, %.lr.ph.i ], [ %2, %bb.b ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i) ]
  %i.j = load i32, ptr %.018.i, align 4, !tbaa !65
  store i32 %i.j, ptr %.01517.i, align 4, !tbaa !65
  store i32 0, ptr %.018.i, align 4, !tbaa !65
  %i.k = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.m = getelementptr inbounds nuw i8, ptr %.018.i, i64 4 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.01517.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.m, %3
  br i1 %.not.i, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit, label %.lr.ph.i, !llvm.loop !11

_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit: ; preds = %.lr.ph.i, %bb.b
  %.015.lcssa.i = phi ptr [ %2, %bb.b ], [ %i.n, %.lr.ph.i ] ; 4 uses
  %.not15.i.i = icmp eq i64 %4, 0
  br i1 %.not15.i.i, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE31uninitialized_copy_n_and_updateIS8_EEvRS6_T_m.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit
  %xtraiter = and i64 %4, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.015.lcssa.i) ]
  %i.o = load i32, ptr %5, align 4, !tbaa !65
  store i32 %i.o, ptr %.015.lcssa.i, align 4, !tbaa !65
  store i32 0, ptr %5, align 4, !tbaa !65
  %i.p = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.q = add i32 %i.p, 1
  store i32 %i.q, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.s = getelementptr inbounds nuw i8, ptr %.015.lcssa.i, i64 4
  %i.t = add nsw i64 %4, -1
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.018.i.i.unr = phi i64 [ %4, %.lr.ph.i.i.preheader ], [ %i.t, %.lr.ph.i.i.prol ]
  %.01417.i.i.unr = phi ptr [ %.015.lcssa.i, %.lr.ph.i.i.preheader ], [ %i.s, %.lr.ph.i.i.prol ]
  %.sroa.0.016.i.i.unr = phi ptr [ %5, %.lr.ph.i.i.preheader ], [ %i.r, %.lr.ph.i.i.prol ]
  %i.u = icmp eq i64 %4, 1
  br i1 %i.u, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE31uninitialized_copy_n_and_updateIS8_EEvRS6_T_m.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.018.i.i = phi i64 [ %i.ae, %.lr.ph.i.i ], [ %.018.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.01417.i.i = phi ptr [ %i.ad, %.lr.ph.i.i ], [ %.01417.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 4 uses
  %.sroa.0.016.i.i = phi ptr [ %i.ac, %.lr.ph.i.i ], [ %.sroa.0.016.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i) ]
  %i.v = load i32, ptr %.sroa.0.016.i.i, align 4, !tbaa !65
  store i32 %i.v, ptr %.01417.i.i, align 4, !tbaa !65
  store i32 0, ptr %.sroa.0.016.i.i, align 4, !tbaa !65
  %i.w = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63 ; 2 uses
  %i.x = add i32 %i.w, 1
  store i32 %i.x, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i, i64 4 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.01417.i.i, i64 4
  %i.aa = load i32, ptr %i.y, align 4, !tbaa !65
  store i32 %i.aa, ptr %i.z, align 4, !tbaa !65
  store i32 0, ptr %i.y, align 4, !tbaa !65
  %i.ab = add i32 %i.w, 2
  store i32 %i.ab, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %.01417.i.i, i64 8
  %i.ae = add i64 %.018.i.i, -2                   ; 2 uses
  %.not.i.i.1 = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i.1, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE31uninitialized_copy_n_and_updateIS8_EEvRS6_T_m.exit, label %.lr.ph.i.i, !llvm.loop !20

_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE31uninitialized_copy_n_and_updateIS8_EEvRS6_T_m.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit
  %i.af = add i64 %4, %1
  %.not197 = icmp ult i64 %i.h, %i.af
  br i1 %.not197, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE31uninitialized_copy_n_and_updateIS8_EEvRS6_T_m.exit
  %.not200 = icmp eq i64 %i.e, %1
  %.not16.i206 = icmp eq ptr %3, %i.a
  %or.cond = or i1 %.not200, %.not16.i206
  br i1 %or.cond, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit, label %.lr.ph.i207.preheader

.lr.ph.i207.preheader:                            ; preds = %bb.c
  %i.ag = getelementptr inbounds [4 x i8], ptr %2, i64 %i.i
  br label %.lr.ph.i207

.lr.ph.i207:                                      ; preds = %.lr.ph.i207.preheader, %.lr.ph.i207
  %.018.i208 = phi ptr [ %i.ak, %.lr.ph.i207 ], [ %3, %.lr.ph.i207.preheader ] ; 3 uses
  %.01517.i209 = phi ptr [ %i.al, %.lr.ph.i207 ], [ %i.ag, %.lr.ph.i207.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i209) ]
  %i.ah = load i32, ptr %.018.i208, align 4, !tbaa !65
  store i32 %i.ah, ptr %.01517.i209, align 4, !tbaa !65
  store i32 0, ptr %.018.i208, align 4, !tbaa !65
  %i.ai = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.ak = getelementptr inbounds nuw i8, ptr %.018.i208, i64 4 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.01517.i209, i64 4
  %.not.i210 = icmp eq ptr %i.ak, %i.a
  br i1 %.not.i210, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit, label %.lr.ph.i207, !llvm.loop !11

bb.d:                                             ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE31uninitialized_copy_n_and_updateIS8_EEvRS6_T_m.exit
  %i.am = sub nuw i64 %i.h, %i.i                  ; 5 uses
  %.not17.i = icmp eq i64 %i.am, 0
  br i1 %.not17.i, label %.loopexit415, label %.lr.ph.i213.preheader

.lr.ph.i213.preheader:                            ; preds = %bb.d
  %i.an = getelementptr inbounds [4 x i8], ptr %2, i64 %i.i ; 3 uses
  %.neg778 = add i64 %i.i, 1
  %xtraiter751 = and i64 %i.am, 1
  %lcmp.mod752.not = icmp eq i64 %xtraiter751, 0
  br i1 %lcmp.mod752.not, label %.lr.ph.i213.prol.loopexit, label %.lr.ph.i213.prol

.lr.ph.i213.prol:                                 ; preds = %.lr.ph.i213.preheader
  %i.ao = add nsw i64 %i.am, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.ap = load i32, ptr %3, align 4, !tbaa !65
  store i32 %i.ap, ptr %i.an, align 4, !tbaa !65
  store i32 0, ptr %3, align 4, !tbaa !65
  %i.aq = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.ar = add i32 %i.aq, 1
  store i32 %i.ar, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  br label %.lr.ph.i213.prol.loopexit

.lr.ph.i213.prol.loopexit:                        ; preds = %.lr.ph.i213.prol, %.lr.ph.i213.preheader
  %.020.i.unr = phi i64 [ %i.am, %.lr.ph.i213.preheader ], [ %i.ao, %.lr.ph.i213.prol ]
  %.0819.i.unr = phi ptr [ %3, %.lr.ph.i213.preheader ], [ %i.as, %.lr.ph.i213.prol ]
  %.01618.i.unr = phi ptr [ %i.an, %.lr.ph.i213.preheader ], [ %i.at, %.lr.ph.i213.prol ]
  %i.au = icmp eq i64 %i.h, %.neg778
  br i1 %i.au, label %.loopexit415, label %.lr.ph.i213

.lr.ph.i213:                                      ; preds = %.lr.ph.i213.prol.loopexit, %.lr.ph.i213
  %.020.i = phi i64 [ %i.ba, %.lr.ph.i213 ], [ %.020.i.unr, %.lr.ph.i213.prol.loopexit ]
  %.0819.i = phi ptr [ %i.be, %.lr.ph.i213 ], [ %.0819.i.unr, %.lr.ph.i213.prol.loopexit ] ; 4 uses
  %.01618.i = phi ptr [ %i.bf, %.lr.ph.i213 ], [ %.01618.i.unr, %.lr.ph.i213.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i) ]
  %i.av = load i32, ptr %.0819.i, align 4, !tbaa !65
  store i32 %i.av, ptr %.01618.i, align 4, !tbaa !65
  store i32 0, ptr %.0819.i, align 4, !tbaa !65
  %i.aw = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.ax = add i32 %i.aw, 1
  store i32 %i.ax, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.ay = getelementptr inbounds nuw i8, ptr %.0819.i, i64 4 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.01618.i, i64 4
  %i.ba = add i64 %.020.i, -2                     ; 2 uses
  %i.bb = load i32, ptr %i.ay, align 4, !tbaa !65
  store i32 %i.bb, ptr %i.az, align 4, !tbaa !65
  store i32 0, ptr %i.ay, align 4, !tbaa !65
  %i.bc = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.bd = add i32 %i.bc, 1
  store i32 %i.bd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.be = getelementptr inbounds nuw i8, ptr %.0819.i, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %.01618.i, i64 8
  %.not.i214.1 = icmp eq i64 %i.ba, 0
  br i1 %.not.i214.1, label %.loopexit415, label %.lr.ph.i213, !llvm.loop !12

.loopexit415:                                     ; preds = %.lr.ph.i213.prol.loopexit, %.lr.ph.i213, %bb.d
  %i.bg = getelementptr inbounds [4 x i8], ptr %3, i64 %i.am ; 7 uses
  %.not.i215 = icmp eq ptr %i.bg, %0
  br i1 %.not.i215, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit225, label %bb.e

bb.e:                                             ; preds = %.loopexit415
  %.not8.i.i = icmp eq ptr %i.bg, %i.a
  br i1 %.not8.i.i, label %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i216.preheader

.lr.ph.i.i216.preheader:                          ; preds = %bb.e
  %i.bh = add i64 %1, %i.i
  %i.bi = shl i64 %i.bh, 2
  %i.bj = add i64 %i.bi, %i.c
  %i.bk = add i64 %i.bj, -4
  %i.bl = add i64 %i.g, %i.b
  %i.bm = sub i64 %i.bk, %i.bl                    ; 2 uses
  %i.bn = lshr i64 %i.bm, 2
  %i.bo = add nuw nsw i64 %i.bn, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bm, 156
  br i1 %min.iters.check, label %.lr.ph.i.i216.preheader745, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i216.preheader
  %i.bp = shl i64 %1, 2
  %i.bq = shl i64 %i.i, 2                         ; 2 uses
  %i.br = add i64 %i.bp, %i.c
  %i.bs = add i64 %i.br, %i.bq
  %i.bt = add i64 %i.bs, -4
  %i.bu = add i64 %i.g, %i.b
end_hunk_0
begin_hunk_1_@_ZN5boost9container54expand_backward_forward_and_insert_alloc_move_backwardIPNS0_4test24movable_and_copyable_intENS0_3dtl18insert_range_proxyINS0_9allocatorIS3_Lj2ELj0EEENS_13move_iteratorIS4_EEEES8_EEvT_mSC_SC_mT0_RT1_:bb.a
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 8 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 8
  %i.ga = load i32, ptr %i.fy, align 4, !tbaa !65
  store i32 %i.ga, ptr %i.fz, align 4, !tbaa !65
  store i32 0, ptr %i.fy, align 4, !tbaa !65
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 12 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 12
  %i.gd = add i64 %.09.i.i, -4                    ; 2 uses
  %i.ge = load i32, ptr %i.gb, align 4, !tbaa !65
  store i32 %i.ge, ptr %i.gc, align 4, !tbaa !65
  store i32 0, ptr %i.gb, align 4, !tbaa !65
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 16 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 16
  %.not.i.i246.3 = icmp eq i64 %i.gd, 0
  br i1 %.not.i.i246.3, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE17copy_n_and_updateIS8_EEvRS6_T_m.exit, label %.lr.ph.i.i245, !llvm.loop !1496

_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE17copy_n_and_updateIS8_EEvRS6_T_m.exit: ; preds = %.lr.ph.i.i245.prol.loopexit, %.lr.ph.i.i245, %middle.block550, %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit
  %.sroa.0.0.lcssa.i.i247 = phi ptr [ %5, %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit ], [ %i.fj, %middle.block550 ], [ %.lcssa741.unr, %.lr.ph.i.i245.prol.loopexit ], [ %i.gf, %.lr.ph.i.i245 ]
  br i1 %i.di, label %.critedge, label %bb.h

bb.h:                                             ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE17copy_n_and_updateIS8_EEvRS6_T_m.exit
  %i.gh = getelementptr inbounds [4 x i8], ptr %.0.lcssa.i, i64 %i.ec ; 7 uses
  %.not.i248 = icmp eq ptr %3, %i.gh
  br i1 %.not.i248, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit225, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not8.i.i249 = icmp eq ptr %3, %i.a
  br i1 %.not8.i.i249, label %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit254, label %.lr.ph.i.i250.preheader

.lr.ph.i.i250.preheader:                          ; preds = %bb.i
  %i.gi = shl i64 %1, 2
  %i.gj = add i64 %i.gi, %i.c
  %i.gk = add i64 %i.gj, -4
  %i.gl = sub i64 %i.gk, %i.b                     ; 2 uses
  %i.gm = lshr i64 %i.gl, 2
  %i.gn = add nuw nsw i64 %i.gm, 1                ; 2 uses
  %min.iters.check561 = icmp ult i64 %i.gl, 124
  br i1 %min.iters.check561, label %.lr.ph.i.i250.preheader738, label %vector.memcheck562

vector.memcheck562:                               ; preds = %.lr.ph.i.i250.preheader
  %i.go = shl i64 %i.ec, 2
  %i.gp = shl i64 %1, 2
  %i.gq = add i64 %i.gp, %i.c
  %i.gr = add i64 %i.gq, -4
  %i.gs = sub i64 %i.gr, %i.b
  %i.gt = and i64 %i.gs, -4                       ; 2 uses
  %i.gu = getelementptr i8, ptr %.0.lcssa.i, i64 %i.go
  %i.gv = getelementptr i8, ptr %i.gu, i64 %i.gt
  %i.gw = getelementptr i8, ptr %i.gv, i64 4
  %i.gx = getelementptr i8, ptr %3, i64 %i.gt
  %i.gy = getelementptr i8, ptr %i.gx, i64 4
  %bound0563 = icmp ult ptr %i.gh, %i.gy
  %bound1564 = icmp ult ptr %3, %i.gw
  %found.conflict565 = and i1 %bound0563, %bound1564
  br i1 %found.conflict565, label %.lr.ph.i.i250.preheader738, label %vector.ph566

vector.ph566:                                     ; preds = %vector.memcheck562
  %n.vec567 = and i64 %i.gn, 9223372036854775800  ; 3 uses
  %i.gz = shl i64 %n.vec567, 2                    ; 2 uses
  %i.ha = getelementptr i8, ptr %i.gh, i64 %i.gz  ; 2 uses
  %i.hb = getelementptr i8, ptr %3, i64 %i.gz
  br label %vector.body568

vector.body568:                                   ; preds = %vector.body568, %vector.ph566
  %index569 = phi i64 [ 0, %vector.ph566 ], [ %index.next574, %vector.body568 ] ; 2 uses
  %i.hc = shl i64 %index569, 2                    ; 2 uses
  %next.gep570 = getelementptr i8, ptr %i.gh, i64 %i.hc ; 2 uses
  %next.gep571 = getelementptr i8, ptr %3, i64 %i.hc ; 3 uses
  %i.hd = getelementptr i8, ptr %next.gep571, i64 16 ; 2 uses
  %wide.load572 = load <4 x i32>, ptr %next.gep571, align 4, !tbaa !65, !alias.scope !1542
  %wide.load573 = load <4 x i32>, ptr %i.hd, align 4, !tbaa !65, !alias.scope !1542
  %i.he = getelementptr i8, ptr %next.gep570, i64 16
  store <4 x i32> %wide.load572, ptr %next.gep570, align 4, !tbaa !65, !alias.scope !1543, !noalias !1542
  store <4 x i32> %wide.load573, ptr %i.he, align 4, !tbaa !65, !alias.scope !1543, !noalias !1542
  store <4 x i32> zeroinitializer, ptr %next.gep571, align 4, !tbaa !65, !alias.scope !1542
  store <4 x i32> zeroinitializer, ptr %i.hd, align 4, !tbaa !65, !alias.scope !1542
  %index.next574 = add nuw i64 %index569, 8       ; 2 uses
  %i.hf = icmp eq i64 %index.next574, %n.vec567
  br i1 %i.hf, label %middle.block575, label %vector.body568, !llvm.loop !1500

middle.block575:                                  ; preds = %vector.body568
  %cmp.n576 = icmp eq i64 %i.gn, %n.vec567
  br i1 %cmp.n576, label %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit254, label %.lr.ph.i.i250.preheader738

.lr.ph.i.i250.preheader738:                       ; preds = %vector.memcheck562, %.lr.ph.i.i250.preheader, %middle.block575
  %.010.i.i251.ph = phi ptr [ %i.gh, %vector.memcheck562 ], [ %i.gh, %.lr.ph.i.i250.preheader ], [ %i.ha, %middle.block575 ]
  %.079.i.i252.ph = phi ptr [ %3, %vector.memcheck562 ], [ %3, %.lr.ph.i.i250.preheader ], [ %i.hb, %middle.block575 ]
  br label %.lr.ph.i.i250

.lr.ph.i.i250:                                    ; preds = %.lr.ph.i.i250.preheader738, %.lr.ph.i.i250
  %.010.i.i251 = phi ptr [ %i.hi, %.lr.ph.i.i250 ], [ %.010.i.i251.ph, %.lr.ph.i.i250.preheader738 ] ; 2 uses
  %.079.i.i252 = phi ptr [ %i.hh, %.lr.ph.i.i250 ], [ %.079.i.i252.ph, %.lr.ph.i.i250.preheader738 ] ; 3 uses
  %i.hg = load i32, ptr %.079.i.i252, align 4, !tbaa !65
  store i32 %i.hg, ptr %.010.i.i251, align 4, !tbaa !65
  store i32 0, ptr %.079.i.i252, align 4, !tbaa !65
  %i.hh = getelementptr inbounds nuw i8, ptr %.079.i.i252, i64 4 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.010.i.i251, i64 4 ; 2 uses
  %.not.i.i253 = icmp eq ptr %i.hh, %i.a
  br i1 %.not.i.i253, label %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit254, label %.lr.ph.i.i250, !llvm.loop !1501

_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit254: ; preds = %.lr.ph.i.i250, %middle.block575, %bb.i
  %i.hj = phi ptr [ %i.gh, %bb.i ], [ %i.ha, %middle.block575 ], [ %i.hi, %.lr.ph.i.i250 ] ; 2 uses
  %.not3.i255 = icmp eq ptr %i.hj, %i.a
  br i1 %.not3.i255, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit225, label %.lr.ph.i256

.lr.ph.i256:                                      ; preds = %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit254, %.lr.ph.i256
  %storemerge4.i257 = phi ptr [ %i.hm, %.lr.ph.i256 ], [ %i.hj, %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit254 ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i257, align 4, !tbaa !65
  %i.hk = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.hl = add i32 %i.hk, -1
  store i32 %i.hl, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.hm = getelementptr inbounds nuw i8, ptr %storemerge4.i257, i64 4 ; 2 uses
  %.not.i258 = icmp eq ptr %i.hm, %i.a
  br i1 %.not.i258, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit225, label %.lr.ph.i256, !llvm.loop !17

bb.j:                                             ; preds = %bb.f
  %.not16.i260 = icmp eq ptr %0, %3               ; 2 uses
  br i1 %.not16.i260, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit266, label %.lr.ph.i261

.lr.ph.i261:                                      ; preds = %bb.j, %.lr.ph.i261
  %.018.i262 = phi ptr [ %i.hq, %.lr.ph.i261 ], [ %0, %bb.j ] ; 3 uses
  %.01517.i263 = phi ptr [ %i.hr, %.lr.ph.i261 ], [ %2, %bb.j ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i263) ]
  %i.hn = load i32, ptr %.018.i262, align 4, !tbaa !65
  store i32 %i.hn, ptr %.01517.i263, align 4, !tbaa !65
  store i32 0, ptr %.018.i262, align 4, !tbaa !65
  %i.ho = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.hp = add i32 %i.ho, 1
  store i32 %i.hp, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.hq = getelementptr inbounds nuw i8, ptr %.018.i262, i64 4 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.01517.i263, i64 4 ; 2 uses
  %.not.i264 = icmp eq ptr %i.hq, %3
  br i1 %.not.i264, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit266, label %.lr.ph.i261, !llvm.loop !11

_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit266: ; preds = %.lr.ph.i261, %bb.j
  %.015.lcssa.i265 = phi ptr [ %2, %bb.j ], [ %i.hr, %.lr.ph.i261 ] ; 4 uses
  %i.hs = sub nsw i64 %i.h, %i.e                  ; 4 uses
  %.neg779 = add nsw i64 %i.e, 1
  %xtraiter760 = and i64 %i.hs, 1
  %lcmp.mod761.not = icmp eq i64 %xtraiter760, 0
  br i1 %lcmp.mod761.not, label %.lr.ph.i.i269.prol.loopexit, label %.lr.ph.i.i269.prol

.lr.ph.i.i269.prol:                               ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit266
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.015.lcssa.i265) ]
  %i.ht = load i32, ptr %5, align 4, !tbaa !65
  store i32 %i.ht, ptr %.015.lcssa.i265, align 4, !tbaa !65
  store i32 0, ptr %5, align 4, !tbaa !65
  %i.hu = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.hv = add i32 %i.hu, 1
  store i32 %i.hv, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.hw = getelementptr i8, ptr %5, i64 4         ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %.015.lcssa.i265, i64 4
  %i.hy = add nsw i64 %i.hs, -1
  br label %.lr.ph.i.i269.prol.loopexit

.lr.ph.i.i269.prol.loopexit:                      ; preds = %.lr.ph.i.i269.prol, %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit266
  %.lcssa735.unr = phi ptr [ poison, %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit266 ], [ %i.hw, %.lr.ph.i.i269.prol ]
  %.018.i.i270.unr = phi i64 [ %i.hs, %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit266 ], [ %i.hy, %.lr.ph.i.i269.prol ]
  %.01417.i.i271.unr = phi ptr [ %.015.lcssa.i265, %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit266 ], [ %i.hx, %.lr.ph.i.i269.prol ]
  %.sroa.0.016.i.i272.unr = phi ptr [ %5, %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit266 ], [ %i.hw, %.lr.ph.i.i269.prol ]
  %i.hz = icmp eq i64 %i.h, %.neg779
  br i1 %i.hz, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE31uninitialized_copy_n_and_updateIS8_EEvRS6_T_m.exit275, label %.lr.ph.i.i269

.lr.ph.i.i269:                                    ; preds = %.lr.ph.i.i269.prol.loopexit, %.lr.ph.i.i269
  %.018.i.i270 = phi i64 [ %i.ik, %.lr.ph.i.i269 ], [ %.018.i.i270.unr, %.lr.ph.i.i269.prol.loopexit ]
  %.01417.i.i271 = phi ptr [ %i.ij, %.lr.ph.i.i269 ], [ %.01417.i.i271.unr, %.lr.ph.i.i269.prol.loopexit ] ; 4 uses
  %.sroa.0.016.i.i272 = phi ptr [ %i.ii, %.lr.ph.i.i269 ], [ %.sroa.0.016.i.i272.unr, %.lr.ph.i.i269.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i271) ]
  %i.ia = load i32, ptr %.sroa.0.016.i.i272, align 4, !tbaa !65
  store i32 %i.ia, ptr %.01417.i.i271, align 4, !tbaa !65
  store i32 0, ptr %.sroa.0.016.i.i272, align 4, !tbaa !65
  %i.ib = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.ic = add i32 %i.ib, 1
  store i32 %i.ic, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.id = getelementptr i8, ptr %.sroa.0.016.i.i272, i64 4 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %.01417.i.i271, i64 4
  %i.if = load i32, ptr %i.id, align 4, !tbaa !65
  store i32 %i.if, ptr %i.ie, align 4, !tbaa !65
  store i32 0, ptr %i.id, align 4, !tbaa !65
  %i.ig = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.ih = add i32 %i.ig, 1
  store i32 %i.ih, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.ii = getelementptr i8, ptr %.sroa.0.016.i.i272, i64 8 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %.01417.i.i271, i64 8
  %i.ik = add i64 %.018.i.i270, -2                ; 2 uses
  %.not.i.i273.1 = icmp eq i64 %i.ik, 0
  br i1 %.not.i.i273.1, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE31uninitialized_copy_n_and_updateIS8_EEvRS6_T_m.exit275, label %.lr.ph.i.i269, !llvm.loop !20

_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE31uninitialized_copy_n_and_updateIS8_EEvRS6_T_m.exit275: ; preds = %.lr.ph.i.i269, %.lr.ph.i.i269.prol.loopexit
  %.lcssa735 = phi ptr [ %.lcssa735.unr, %.lr.ph.i.i269.prol.loopexit ], [ %i.ii, %.lr.ph.i.i269 ] ; 13 uses
  br i1 %i.di, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE31uninitialized_copy_n_and_updateIS8_EEvRS6_T_m.exit275
  br i1 %.not16.i260, label %.critedge, label %.lr.ph.i.i278.preheader

.lr.ph.i.i278.preheader:                          ; preds = %bb.k
  %min.iters.check632 = icmp ult i64 %i.e, 16
  br i1 %min.iters.check632, label %.lr.ph.i.i278.preheader729, label %vector.memcheck625

vector.memcheck625:                               ; preds = %.lr.ph.i.i278.preheader
  %7 = ptrtoaddr ptr %5 to i64
  %i.il = ptrtoaddr ptr %.lcssa735 to i64
  %reass.sub724 = sub i64 %i.il, %7
  %i.im = getelementptr i8, ptr %5, i64 %reass.sub724
  %scevgep627 = getelementptr i8, ptr %i.im, i64 %i.d
  %bound0628 = icmp ult ptr %0, %scevgep627
  %bound1629 = icmp ult ptr %.lcssa735, %3
  %found.conflict630 = and i1 %bound0628, %bound1629
  br i1 %found.conflict630, label %.lr.ph.i.i278.preheader729, label %vector.ph633

vector.ph633:                                     ; preds = %vector.memcheck625
  %n.vec634 = and i64 %i.e, -8                    ; 3 uses
  %i.in = and i64 %i.e, 7
  %i.io = shl nsw i64 %n.vec634, 2                ; 2 uses
  %i.ip = getelementptr i8, ptr %0, i64 %i.io
  %i.iq = getelementptr i8, ptr %.lcssa735, i64 %i.io ; 2 uses
  br label %vector.body635

vector.body635:                                   ; preds = %vector.body635, %vector.ph633
  %index636 = phi i64 [ 0, %vector.ph633 ], [ %index.next641, %vector.body635 ] ; 2 uses
  %i.ir = shl i64 %index636, 2                    ; 2 uses
  %next.gep637 = getelementptr i8, ptr %0, i64 %i.ir ; 2 uses
  %next.gep638 = getelementptr i8, ptr %.lcssa735, i64 %i.ir ; 3 uses
  %i.is = getelementptr i8, ptr %next.gep638, i64 16 ; 2 uses
  %wide.load639 = load <4 x i32>, ptr %next.gep638, align 4, !tbaa !65, !alias.scope !1544
  %wide.load640 = load <4 x i32>, ptr %i.is, align 4, !tbaa !65, !alias.scope !1544
  %i.it = getelementptr i8, ptr %next.gep637, i64 16
  store <4 x i32> %wide.load639, ptr %next.gep637, align 4, !tbaa !65, !alias.scope !1545, !noalias !1544
  store <4 x i32> %wide.load640, ptr %i.it, align 4, !tbaa !65, !alias.scope !1545, !noalias !1544
  store <4 x i32> zeroinitializer, ptr %next.gep638, align 4, !tbaa !65, !alias.scope !1544
  store <4 x i32> zeroinitializer, ptr %i.is, align 4, !tbaa !65, !alias.scope !1544
  %index.next641 = add nuw i64 %index636, 8       ; 2 uses
  %i.iu = icmp eq i64 %index.next641, %n.vec634
  br i1 %i.iu, label %middle.block642, label %vector.body635, !llvm.loop !1505

middle.block642:                                  ; preds = %vector.body635
  %cmp.n643 = icmp eq i64 %i.e, %n.vec634
  br i1 %cmp.n643, label %.critedge, label %.lr.ph.i.i278.preheader729

.lr.ph.i.i278.preheader729:                       ; preds = %vector.memcheck625, %.lr.ph.i.i278.preheader, %middle.block642
  %.09.i.i279.ph = phi i64 [ %i.e, %vector.memcheck625 ], [ %i.e, %.lr.ph.i.i278.preheader ], [ %i.in, %middle.block642 ] ; 4 uses
  %.048.i.i280.ph = phi ptr [ %0, %vector.memcheck625 ], [ %0, %.lr.ph.i.i278.preheader ], [ %i.ip, %middle.block642 ] ; 2 uses
  %.sroa.0.07.i.i281.ph = phi ptr [ %.lcssa735, %vector.memcheck625 ], [ %.lcssa735, %.lr.ph.i.i278.preheader ], [ %i.iq, %middle.block642 ] ; 2 uses
  %i.iv = add nsw i64 %.09.i.i279.ph, -1
  %xtraiter766.a = and i64 %.09.i.i279.ph, 3      ; 2 uses
  %lcmp.mod767.not.a = icmp eq i64 %xtraiter766.a, 0
  br i1 %lcmp.mod767.not.a, label %.lr.ph.i.i278.prol.loopexit, label %.lr.ph.i.i278.prol

.lr.ph.i.i278.prol:                               ; preds = %.lr.ph.i.i278.preheader729, %.lr.ph.i.i278.prol
  %.09.i.i279.prol = phi i64 [ %i.iw, %.lr.ph.i.i278.prol ], [ %.09.i.i279.ph, %.lr.ph.i.i278.preheader729 ]
  %.048.i.i280.prol = phi ptr [ %i.iz, %.lr.ph.i.i278.prol ], [ %.048.i.i280.ph, %.lr.ph.i.i278.preheader729 ] ; 2 uses
  %.sroa.0.07.i.i281.prol = phi ptr [ %i.iy, %.lr.ph.i.i278.prol ], [ %.sroa.0.07.i.i281.ph, %.lr.ph.i.i278.preheader729 ] ; 3 uses
  %prol.iter768.a = phi i64 [ %prol.iter768.next.a, %.lr.ph.i.i278.prol ], [ 0, %.lr.ph.i.i278.preheader729 ]
  %i.iw = add i64 %.09.i.i279.prol, -1            ; 2 uses
  %i.ix = load i32, ptr %.sroa.0.07.i.i281.prol, align 4, !tbaa !65
  store i32 %i.ix, ptr %.048.i.i280.prol, align 4, !tbaa !65
  store i32 0, ptr %.sroa.0.07.i.i281.prol, align 4, !tbaa !65
  %i.iy = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i281.prol, i64 4 ; 3 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %.048.i.i280.prol, i64 4 ; 2 uses
  %prol.iter768.next.a = add i64 %prol.iter768.a, 1 ; 2 uses
  %prol.iter768.cmp.not.a = icmp eq i64 %prol.iter768.next.a, %xtraiter766.a
  br i1 %prol.iter768.cmp.not.a, label %.lr.ph.i.i278.prol.loopexit, label %.lr.ph.i.i278.prol, !llvm.loop !1506

.lr.ph.i.i278.prol.loopexit:                      ; preds = %.lr.ph.i.i278.prol, %.lr.ph.i.i278.preheader729
  %.lcssa730.unr = phi ptr [ poison, %.lr.ph.i.i278.preheader729 ], [ %i.iy, %.lr.ph.i.i278.prol ]
  %.09.i.i279.unr = phi i64 [ %.09.i.i279.ph, %.lr.ph.i.i278.preheader729 ], [ %i.iw, %.lr.ph.i.i278.prol ]
  %.048.i.i280.unr = phi ptr [ %.048.i.i280.ph, %.lr.ph.i.i278.preheader729 ], [ %i.iz, %.lr.ph.i.i278.prol ]
  %.sroa.0.07.i.i281.unr = phi ptr [ %.sroa.0.07.i.i281.ph, %.lr.ph.i.i278.preheader729 ], [ %i.iy, %.lr.ph.i.i278.prol ]
  %i.ja = icmp ult i64 %i.iv, 3
  br i1 %i.ja, label %.critedge, label %.lr.ph.i.i278

.lr.ph.i.i278:                                    ; preds = %.lr.ph.i.i278.prol.loopexit, %.lr.ph.i.i278
  %.09.i.i279 = phi i64 [ %i.jk, %.lr.ph.i.i278 ], [ %.09.i.i279.unr, %.lr.ph.i.i278.prol.loopexit ]
  %.048.i.i280 = phi ptr [ %i.jn, %.lr.ph.i.i278 ], [ %.048.i.i280.unr, %.lr.ph.i.i278.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i281 = phi ptr [ %i.jm, %.lr.ph.i.i278 ], [ %.sroa.0.07.i.i281.unr, %.lr.ph.i.i278.prol.loopexit ] ; 6 uses
  %i.jb = load i32, ptr %.sroa.0.07.i.i281, align 4, !tbaa !65
  store i32 %i.jb, ptr %.048.i.i280, align 4, !tbaa !65
  store i32 0, ptr %.sroa.0.07.i.i281, align 4, !tbaa !65
  %i.jc = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i281, i64 4 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %.048.i.i280, i64 4
  %i.je = load i32, ptr %i.jc, align 4, !tbaa !65
  store i32 %i.je, ptr %i.jd, align 4, !tbaa !65
  store i32 0, ptr %i.jc, align 4, !tbaa !65
  %i.jf = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i281, i64 8 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %.048.i.i280, i64 8
  %i.jh = load i32, ptr %i.jf, align 4, !tbaa !65
  store i32 %i.jh, ptr %i.jg, align 4, !tbaa !65
  store i32 0, ptr %i.jf, align 4, !tbaa !65
  %i.ji = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i281, i64 12 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %.048.i.i280, i64 12
  %i.jk = add i64 %.09.i.i279, -4                 ; 2 uses
  %i.jl = load i32, ptr %i.ji, align 4, !tbaa !65
  store i32 %i.jl, ptr %i.jj, align 4, !tbaa !65
  store i32 0, ptr %i.ji, align 4, !tbaa !65
  %i.jm = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i281, i64 16 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %.048.i.i280, i64 16
  %.not.i.i282.3 = icmp eq i64 %i.jk, 0
  br i1 %.not.i.i282.3, label %.critedge, label %.lr.ph.i.i278, !llvm.loop !1507

bb.l:                                             ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE31uninitialized_copy_n_and_updateIS8_EEvRS6_T_m.exit275
  %i.jo = sub i64 %4, %i.hs                       ; 9 uses
  %.not6.i.i286 = icmp eq i64 %i.jo, 0
  br i1 %.not6.i.i286, label %.loopexit411, label %.lr.ph.i.i287.preheader

.lr.ph.i.i287.preheader:                          ; preds = %bb.l
  %min.iters.check585 = icmp ult i64 %i.jo, 20
  br i1 %min.iters.check585, label %.lr.ph.i.i287.preheader734, label %vector.memcheck579

vector.memcheck579:                               ; preds = %.lr.ph.i.i287.preheader
  %i.jp = shl i64 %i.i, 2                         ; 2 uses
  %i.jq = sub i64 %i.jp, %i.g
  %scevgep = getelementptr i8, ptr %0, i64 %i.jq
  %i.jr = add i64 %i.jp, 4
  %i.js = sub i64 %i.jr, %i.g
  %8 = ptrtoaddr ptr %5 to i64
  %i.jt = ptrtoaddr ptr %.lcssa735 to i64
  %reass.sub = sub i64 %i.jt, %8
  %i.ju = getelementptr i8, ptr %5, i64 %reass.sub
  %i.jv = getelementptr i8, ptr %i.ju, i64 -4
  %scevgep580 = getelementptr i8, ptr %i.jv, i64 %i.js
  %bound0581 = icmp ult ptr %0, %scevgep580
  %bound1582 = icmp ult ptr %.lcssa735, %scevgep
  %found.conflict583 = and i1 %bound0581, %bound1582
  br i1 %found.conflict583, label %.lr.ph.i.i287.preheader734, label %vector.ph586

vector.ph586:                                     ; preds = %vector.memcheck579
  %n.vec587 = and i64 %i.jo, -8                   ; 3 uses
  %i.jw = and i64 %i.jo, 7
  %i.jx = shl i64 %n.vec587, 2                    ; 2 uses
  %i.jy = getelementptr i8, ptr %0, i64 %i.jx
  %i.jz = getelementptr i8, ptr %.lcssa735, i64 %i.jx
  br label %vector.body588

vector.body588:                                   ; preds = %vector.body588, %vector.ph586
  %index589 = phi i64 [ 0, %vector.ph586 ], [ %index.next594, %vector.body588 ] ; 2 uses
  %i.ka = shl i64 %index589, 2                    ; 2 uses
  %next.gep590 = getelementptr i8, ptr %0, i64 %i.ka ; 2 uses
  %next.gep591 = getelementptr i8, ptr %.lcssa735, i64 %i.ka ; 3 uses
  %i.kb = getelementptr i8, ptr %next.gep591, i64 16 ; 2 uses
  %wide.load592 = load <4 x i32>, ptr %next.gep591, align 4, !tbaa !65, !alias.scope !1546
  %wide.load593 = load <4 x i32>, ptr %i.kb, align 4, !tbaa !65, !alias.scope !1546
  %i.kc = getelementptr i8, ptr %next.gep590, i64 16
  store <4 x i32> %wide.load592, ptr %next.gep590, align 4, !tbaa !65, !alias.scope !1547, !noalias !1546
  store <4 x i32> %wide.load593, ptr %i.kc, align 4, !tbaa !65, !alias.scope !1547, !noalias !1546
  store <4 x i32> zeroinitializer, ptr %next.gep591, align 4, !tbaa !65, !alias.scope !1546
  store <4 x i32> zeroinitializer, ptr %i.kb, align 4, !tbaa !65, !alias.scope !1546
  %index.next594 = add nuw i64 %index589, 8       ; 2 uses
  %i.kd = icmp eq i64 %index.next594, %n.vec587
  br i1 %i.kd, label %middle.block595, label %vector.body588, !llvm.loop !1511

middle.block595:                                  ; preds = %vector.body588
  %cmp.n596 = icmp eq i64 %i.jo, %n.vec587
  br i1 %cmp.n596, label %.loopexit411, label %.lr.ph.i.i287.preheader734

.lr.ph.i.i287.preheader734:                       ; preds = %vector.memcheck579, %.lr.ph.i.i287.preheader, %middle.block595
  %.09.i.i288.ph = phi i64 [ %i.jo, %vector.memcheck579 ], [ %i.jo, %.lr.ph.i.i287.preheader ], [ %i.jw, %middle.block595 ] ; 4 uses
  %.048.i.i289.ph = phi ptr [ %0, %vector.memcheck579 ], [ %0, %.lr.ph.i.i287.preheader ], [ %i.jy, %middle.block595 ] ; 2 uses
  %.sroa.0.07.i.i290.ph = phi ptr [ %.lcssa735, %vector.memcheck579 ], [ %.lcssa735, %.lr.ph.i.i287.preheader ], [ %i.jz, %middle.block595 ] ; 2 uses
  %i.ke = add i64 %.09.i.i288.ph, -1
  %xtraiter763 = and i64 %.09.i.i288.ph, 3        ; 2 uses
  %lcmp.mod764.not = icmp eq i64 %xtraiter763, 0
  br i1 %lcmp.mod764.not, label %.lr.ph.i.i287.prol.loopexit, label %.lr.ph.i.i287.prol

.lr.ph.i.i287.prol:                               ; preds = %.lr.ph.i.i287.preheader734, %.lr.ph.i.i287.prol
  %.09.i.i288.prol = phi i64 [ %i.kf, %.lr.ph.i.i287.prol ], [ %.09.i.i288.ph, %.lr.ph.i.i287.preheader734 ]
  %.048.i.i289.prol = phi ptr [ %i.ki, %.lr.ph.i.i287.prol ], [ %.048.i.i289.ph, %.lr.ph.i.i287.preheader734 ] ; 2 uses
  %.sroa.0.07.i.i290.prol = phi ptr [ %i.kh, %.lr.ph.i.i287.prol ], [ %.sroa.0.07.i.i290.ph, %.lr.ph.i.i287.preheader734 ] ; 3 uses
  %prol.iter765 = phi i64 [ %prol.iter765.next, %.lr.ph.i.i287.prol ], [ 0, %.lr.ph.i.i287.preheader734 ]
  %i.kf = add i64 %.09.i.i288.prol, -1            ; 2 uses
  %i.kg = load i32, ptr %.sroa.0.07.i.i290.prol, align 4, !tbaa !65
  store i32 %i.kg, ptr %.048.i.i289.prol, align 4, !tbaa !65
  store i32 0, ptr %.sroa.0.07.i.i290.prol, align 4, !tbaa !65
  %i.kh = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i290.prol, i64 4 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %.048.i.i289.prol, i64 4 ; 2 uses
  %prol.iter765.next = add i64 %prol.iter765, 1   ; 2 uses
  %prol.iter765.cmp.not = icmp eq i64 %prol.iter765.next, %xtraiter763
  br i1 %prol.iter765.cmp.not, label %.lr.ph.i.i287.prol.loopexit, label %.lr.ph.i.i287.prol, !llvm.loop !1512

.lr.ph.i.i287.prol.loopexit:                      ; preds = %.lr.ph.i.i287.prol, %.lr.ph.i.i287.preheader734
  %.09.i.i288.unr = phi i64 [ %.09.i.i288.ph, %.lr.ph.i.i287.preheader734 ], [ %i.kf, %.lr.ph.i.i287.prol ]
  %.048.i.i289.unr = phi ptr [ %.048.i.i289.ph, %.lr.ph.i.i287.preheader734 ], [ %i.ki, %.lr.ph.i.i287.prol ]
  %.sroa.0.07.i.i290.unr = phi ptr [ %.sroa.0.07.i.i290.ph, %.lr.ph.i.i287.preheader734 ], [ %i.kh, %.lr.ph.i.i287.prol ]
  %i.kj = icmp ult i64 %i.ke, 3
  br i1 %i.kj, label %.loopexit411, label %.lr.ph.i.i287

.lr.ph.i.i287:                                    ; preds = %.lr.ph.i.i287.prol.loopexit, %.lr.ph.i.i287
  %.09.i.i288 = phi i64 [ %i.kt, %.lr.ph.i.i287 ], [ %.09.i.i288.unr, %.lr.ph.i.i287.prol.loopexit ]
  %.048.i.i289 = phi ptr [ %i.kw, %.lr.ph.i.i287 ], [ %.048.i.i289.unr, %.lr.ph.i.i287.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i290 = phi ptr [ %i.kv, %.lr.ph.i.i287 ], [ %.sroa.0.07.i.i290.unr, %.lr.ph.i.i287.prol.loopexit ] ; 6 uses
  %i.kk = load i32, ptr %.sroa.0.07.i.i290, align 4, !tbaa !65
  store i32 %i.kk, ptr %.048.i.i289, align 4, !tbaa !65
  store i32 0, ptr %.sroa.0.07.i.i290, align 4, !tbaa !65
  %i.kl = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i290, i64 4 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %.048.i.i289, i64 4
  %i.kn = load i32, ptr %i.kl, align 4, !tbaa !65
  store i32 %i.kn, ptr %i.km, align 4, !tbaa !65
  store i32 0, ptr %i.kl, align 4, !tbaa !65
  %i.ko = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i290, i64 8 ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %.048.i.i289, i64 8
  %i.kq = load i32, ptr %i.ko, align 4, !tbaa !65
  store i32 %i.kq, ptr %i.kp, align 4, !tbaa !65
  store i32 0, ptr %i.ko, align 4, !tbaa !65
  %i.kr = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i290, i64 12 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %.048.i.i289, i64 12
  %i.kt = add i64 %.09.i.i288, -4                 ; 2 uses
  %i.ku = load i32, ptr %i.kr, align 4, !tbaa !65
  store i32 %i.ku, ptr %i.ks, align 4, !tbaa !65
  store i32 0, ptr %i.kr, align 4, !tbaa !65
  %i.kv = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i290, i64 16
  %i.kw = getelementptr inbounds nuw i8, ptr %.048.i.i289, i64 16
  %.not.i.i291.3 = icmp eq i64 %i.kt, 0
  br i1 %.not.i.i291.3, label %.loopexit411, label %.lr.ph.i.i287, !llvm.loop !1513

.loopexit411:                                     ; preds = %.lr.ph.i.i287.prol.loopexit, %.lr.ph.i.i287, %middle.block595, %bb.l
  %i.kx = getelementptr inbounds [4 x i8], ptr %0, i64 %i.jo ; 7 uses
  %.not.i294 = icmp eq ptr %3, %i.kx
  br i1 %.not.i294, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit225, label %bb.m

bb.m:                                             ; preds = %.loopexit411
  %.not8.i.i295 = icmp eq ptr %3, %i.a
  br i1 %.not8.i.i295, label %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit300, label %.lr.ph.i.i296.preheader

.lr.ph.i.i296.preheader:                          ; preds = %bb.m
  %i.ky = shl i64 %1, 2
  %i.kz = add i64 %i.ky, %i.c
  %i.la = add i64 %i.kz, -4
  %i.lb = sub i64 %i.la, %i.b                     ; 2 uses
  %i.lc = lshr i64 %i.lb, 2
  %i.ld = add nuw nsw i64 %i.lc, 1                ; 2 uses
  %min.iters.check607 = icmp ult i64 %i.lb, 124
  br i1 %min.iters.check607, label %.lr.ph.i.i296.preheader732, label %vector.memcheck608

vector.memcheck608:                               ; preds = %.lr.ph.i.i296.preheader
  %i.le = shl i64 %1, 2
  %i.lf = add i64 %i.le, %i.c
  %i.lg = add i64 %i.lf, -4
  %i.lh = sub i64 %i.lg, %i.b
  %i.li = and i64 %i.lh, -4                       ; 2 uses
  %i.lj = shl i64 %i.jo, 2
  %i.lk = getelementptr i8, ptr %0, i64 %i.li
  %i.ll = getelementptr i8, ptr %i.lk, i64 %i.lj
  %i.lm = getelementptr i8, ptr %i.ll, i64 4
  %i.ln = getelementptr i8, ptr %3, i64 %i.li
  %i.lo = getelementptr i8, ptr %i.ln, i64 4
  %bound0609 = icmp ult ptr %i.kx, %i.lo
  %bound1610 = icmp ult ptr %3, %i.lm
  %found.conflict611 = and i1 %bound0609, %bound1610
  br i1 %found.conflict611, label %.lr.ph.i.i296.preheader732, label %vector.ph612

vector.ph612:                                     ; preds = %vector.memcheck608
  %n.vec613 = and i64 %i.ld, 9223372036854775800  ; 3 uses
  %i.lp = shl i64 %n.vec613, 2                    ; 2 uses
  %i.lq = getelementptr i8, ptr %i.kx, i64 %i.lp  ; 2 uses
  %i.lr = getelementptr i8, ptr %3, i64 %i.lp
  br label %vector.body614

vector.body614:                                   ; preds = %vector.body614, %vector.ph612
  %index615 = phi i64 [ 0, %vector.ph612 ], [ %index.next620, %vector.body614 ] ; 2 uses
  %i.ls = shl i64 %index615, 2                    ; 2 uses
  %next.gep616 = getelementptr i8, ptr %i.kx, i64 %i.ls ; 2 uses
  %next.gep617 = getelementptr i8, ptr %3, i64 %i.ls ; 3 uses
  %i.lt = getelementptr i8, ptr %next.gep617, i64 16 ; 2 uses
  %wide.load618 = load <4 x i32>, ptr %next.gep617, align 4, !tbaa !65, !alias.scope !1548
  %wide.load619 = load <4 x i32>, ptr %i.lt, align 4, !tbaa !65, !alias.scope !1548
  %i.lu = getelementptr i8, ptr %next.gep616, i64 16
  store <4 x i32> %wide.load618, ptr %next.gep616, align 4, !tbaa !65, !alias.scope !1549, !noalias !1548
  store <4 x i32> %wide.load619, ptr %i.lu, align 4, !tbaa !65, !alias.scope !1549, !noalias !1548
  store <4 x i32> zeroinitializer, ptr %next.gep617, align 4, !tbaa !65, !alias.scope !1548
  store <4 x i32> zeroinitializer, ptr %i.lt, align 4, !tbaa !65, !alias.scope !1548
  %index.next620 = add nuw i64 %index615, 8       ; 2 uses
  %i.lv = icmp eq i64 %index.next620, %n.vec613
  br i1 %i.lv, label %middle.block621, label %vector.body614, !llvm.loop !1517

middle.block621:                                  ; preds = %vector.body614
  %cmp.n622 = icmp eq i64 %i.ld, %n.vec613
  br i1 %cmp.n622, label %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit300, label %.lr.ph.i.i296.preheader732

.lr.ph.i.i296.preheader732:                       ; preds = %vector.memcheck608, %.lr.ph.i.i296.preheader, %middle.block621
  %.010.i.i297.ph = phi ptr [ %i.kx, %vector.memcheck608 ], [ %i.kx, %.lr.ph.i.i296.preheader ], [ %i.lq, %middle.block621 ]
  %.079.i.i298.ph = phi ptr [ %3, %vector.memcheck608 ], [ %3, %.lr.ph.i.i296.preheader ], [ %i.lr, %middle.block621 ]
  br label %.lr.ph.i.i296

.lr.ph.i.i296:                                    ; preds = %.lr.ph.i.i296.preheader732, %.lr.ph.i.i296
  %.010.i.i297 = phi ptr [ %i.ly, %.lr.ph.i.i296 ], [ %.010.i.i297.ph, %.lr.ph.i.i296.preheader732 ] ; 2 uses
  %.079.i.i298 = phi ptr [ %i.lx, %.lr.ph.i.i296 ], [ %.079.i.i298.ph, %.lr.ph.i.i296.preheader732 ] ; 3 uses
  %i.lw = load i32, ptr %.079.i.i298, align 4, !tbaa !65
  store i32 %i.lw, ptr %.010.i.i297, align 4, !tbaa !65
  store i32 0, ptr %.079.i.i298, align 4, !tbaa !65
  %i.lx = getelementptr inbounds nuw i8, ptr %.079.i.i298, i64 4 ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %.010.i.i297, i64 4 ; 2 uses
  %.not.i.i299 = icmp eq ptr %i.lx, %i.a
  br i1 %.not.i.i299, label %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit300, label %.lr.ph.i.i296, !llvm.loop !1518

_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit300: ; preds = %.lr.ph.i.i296, %middle.block621, %bb.m
  %i.lz = phi ptr [ %i.kx, %bb.m ], [ %i.lq, %middle.block621 ], [ %i.ly, %.lr.ph.i.i296 ] ; 2 uses
  %.not3.i301 = icmp eq ptr %i.lz, %i.a
  br i1 %.not3.i301, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit225, label %.lr.ph.i302

.lr.ph.i302:                                      ; preds = %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit300, %.lr.ph.i302
  %storemerge4.i303 = phi ptr [ %i.mc, %.lr.ph.i302 ], [ %i.lz, %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit300 ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i303, align 4, !tbaa !65
  %i.ma = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.mb = add i32 %i.ma, -1
  store i32 %i.mb, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.mc = getelementptr inbounds nuw i8, ptr %storemerge4.i303, i64 4 ; 2 uses
  %.not.i304 = icmp eq ptr %i.mc, %i.a
  br i1 %.not.i304, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit225, label %.lr.ph.i302, !llvm.loop !17

.critedge:                                        ; preds = %.lr.ph.i.i278.prol.loopexit, %.lr.ph.i.i278, %middle.block642, %bb.k, %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE17copy_n_and_updateIS8_EEvRS6_T_m.exit
  %.sroa.0400.2 = phi ptr [ %.sroa.0.0.lcssa.i.i247, %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE17copy_n_and_updateIS8_EEvRS6_T_m.exit ], [ %.lcssa735, %bb.k ], [ %i.iq, %middle.block642 ], [ %.lcssa730.unr, %.lr.ph.i.i278.prol.loopexit ], [ %i.jm, %.lr.ph.i.i278 ] ; 13 uses
  %i.md = sub nuw i64 %4, %i.h                    ; 10 uses
  %i.me = sub i64 %1, %i.e                        ; 9 uses
  %.not190 = icmp ult i64 %i.me, %i.md
  br i1 %.not190, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.critedge
  %.neg = mul i64 %i.md, -4                       ; 2 uses
  %i.mf = getelementptr i8, ptr %i.a, i64 %.neg   ; 7 uses
  %.not16.i314 = icmp eq i64 %.neg, 0
  br i1 %.not16.i314, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i315
end_hunk_1
