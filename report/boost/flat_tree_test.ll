Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/flat_tree_test?download=true
inline.NumInlined: 27414
inline.NumDeleted: 3408
loop-unroll.NumRuntimeUnrolled: 494
loop-unroll.NumUnrolled: 502
begin_hunk_0_@_ZN5boost7movelib10rotate_gcdIPNS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EEEET_S9_S9_S9_:bb.a
  %i.i = icmp eq ptr %1, %i.h
  br i1 %i.i, label %.lr.ph.i, label %bb.d

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.010.i = phi ptr [ %i.q, %.lr.ph.i ], [ %1, %bb.c ] ; 4 uses
  %.079.i = phi ptr [ %i.p, %.lr.ph.i ], [ %0, %bb.c ] ; 5 uses
  %i.j = load i32, ptr %.079.i, align 4, !tbaa !343
  store i32 0, ptr %.079.i, align 4, !tbaa !343
  %i.k = load i32, ptr %.010.i, align 4, !tbaa !343
  store i32 %i.k, ptr %.079.i, align 4, !tbaa !343
  store i32 %i.j, ptr %.010.i, align 4, !tbaa !343
  %i.l = getelementptr inbounds nuw i8, ptr %.079.i, i64 4 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.010.i, i64 4 ; 2 uses
  %i.n = load i32, ptr %i.l, align 4, !tbaa !343
  store i32 0, ptr %i.l, align 4, !tbaa !343
  %i.o = load i32, ptr %i.m, align 4, !tbaa !343
  store i32 %i.o, ptr %i.l, align 4, !tbaa !343
  store i32 %i.n, ptr %i.m, align 4, !tbaa !343
  %i.p = getelementptr inbounds nuw i8, ptr %.079.i, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.010.i, i64 8
  %.not.i = icmp eq ptr %i.p, %1
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesIPNS_9container3dtl4pairINS1_4test24movable_and_copyable_intES5_EES7_EET0_T_S9_S8_.exit, label %.lr.ph.i, !llvm.loop !105

bb.d:                                             ; preds = %bb.c
  %i.r = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.s = sub i64 %i.r, %i.d
  %i.t = ashr exact i64 %i.s, 3                   ; 6 uses
  %i.u = add nsw i64 %i.t, -1
  %i.v = and i64 %i.u, %i.t
  %i.w = add nsw i64 %i.f, -1
  %i.x = and i64 %i.w, %i.f
  %i.y = or i64 %i.v, %i.x
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.e, label %.preheader36.i

.preheader36.i:                                   ; preds = %bb.d
  %i.aa = or i64 %i.t, %i.f
  %i.ab = and i64 %i.aa, 1
  %.not.not37.i = icmp eq i64 %i.ab, 0
  br i1 %.not.not37.i, label %.lr.ph.i58, label %.preheader.i

bb.e:                                             ; preds = %bb.d
  %i.ac = tail call i64 @llvm.umin.i64(i64 %i.t, i64 %i.f)
  br label %_ZN5boost7movelib3gcdImEET_S2_S2_.exit

.preheader.i:                                     ; preds = %.lr.ph.i58, %.preheader36.i
  %.030.lcssa.i = phi i64 [ %i.t, %.preheader36.i ], [ %i.ah, %.lr.ph.i58 ] ; 3 uses
  %.029.lcssa.i = phi i64 [ %i.f, %.preheader36.i ], [ %i.ai, %.lr.ph.i58 ] ; 3 uses
  %.0.lcssa.i56 = phi i64 [ 1, %.preheader36.i ], [ %i.ag, %.lr.ph.i58 ]
  %i.ad = icmp ne i64 %.030.lcssa.i, 0
  %i.ae = icmp ne i64 %.029.lcssa.i, 0
  %i.af = and i1 %i.ad, %i.ae
  br i1 %i.af, label %.lr.ph45.i, label %._crit_edge.i

.lr.ph.i58:                                       ; preds = %.preheader36.i, %.lr.ph.i58
  %.040.i = phi i64 [ %i.ag, %.lr.ph.i58 ], [ 1, %.preheader36.i ]
  %.02939.i = phi i64 [ %i.ai, %.lr.ph.i58 ], [ %i.f, %.preheader36.i ]
  %.03038.i = phi i64 [ %i.ah, %.lr.ph.i58 ], [ %i.t, %.preheader36.i ]
  %i.ag = shl i64 %.040.i, 1                      ; 2 uses
  %i.ah = lshr i64 %.03038.i, 1                   ; 3 uses
  %i.ai = lshr i64 %.02939.i, 1                   ; 3 uses
  %i.aj = or i64 %i.ah, %i.ai
  %i.ak = and i64 %i.aj, 1
  %.not.not.i = icmp eq i64 %i.ak, 0
  br i1 %.not.not.i, label %.lr.ph.i58, label %.preheader.i, !llvm.loop !106

.lr.ph45.i:                                       ; preds = %.preheader.i, %bb.l
  %.144.i = phi i64 [ %.2.i, %bb.l ], [ %.029.lcssa.i, %.preheader.i ] ; 7 uses
  %.13143.i = phi i64 [ %.232.i, %bb.l ], [ %.030.lcssa.i, %.preheader.i ] ; 7 uses
  %i.al = and i64 %.13143.i, 1
  %.not.i57 = icmp eq i64 %i.al, 0
  br i1 %.not.i57, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph45.i
  %i.am = lshr exact i64 %.13143.i, 1
  br label %bb.l

bb.g:                                             ; preds = %.lr.ph45.i
  %i.an = and i64 %.144.i, 1
  %.not34.i = icmp eq i64 %i.an, 0
  br i1 %.not34.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ao = lshr exact i64 %.144.i, 1
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %.not35.i = icmp ult i64 %.13143.i, %.144.i
  br i1 %.not35.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = sub nuw i64 %.13143.i, %.144.i
  %i.aq = lshr exact i64 %i.ap, 1
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ar = sub nuw i64 %.144.i, %.13143.i
  %i.as = lshr exact i64 %i.ar, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.h, %bb.f
  %.232.i = phi i64 [ %i.aq, %bb.j ], [ %.13143.i, %bb.k ], [ %.13143.i, %bb.h ], [ %i.am, %bb.f ] ; 3 uses
  %.2.i = phi i64 [ %.144.i, %bb.j ], [ %i.as, %bb.k ], [ %i.ao, %bb.h ], [ %.144.i, %bb.f ] ; 3 uses
  %i.at = icmp ne i64 %.232.i, 0
  %i.au = icmp ne i64 %.2.i, 0
  %i.av = select i1 %i.at, i1 %i.au, i1 false
  br i1 %i.av, label %.lr.ph45.i, label %._crit_edge.i, !llvm.loop !107

._crit_edge.i:                                    ; preds = %bb.l, %.preheader.i
  %.131.lcssa.i = phi i64 [ %.030.lcssa.i, %.preheader.i ], [ %.232.i, %bb.l ]
  %.1.lcssa.i = phi i64 [ %.029.lcssa.i, %.preheader.i ], [ %.2.i, %bb.l ]
  %i.aw = add i64 %.1.lcssa.i, %.131.lcssa.i
  %i.ax = mul i64 %i.aw, %.0.lcssa.i56
  br label %_ZN5boost7movelib3gcdImEET_S2_S2_.exit

_ZN5boost7movelib3gcdImEET_S2_S2_.exit:           ; preds = %bb.e, %._crit_edge.i
  %.033.i = phi i64 [ %i.ac, %bb.e ], [ %i.ax, %._crit_edge.i ] ; 2 uses
  %.idx = shl nuw nsw i64 %.033.i, 3
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %.not64 = icmp eq i64 %.033.i, 0
  br i1 %.not64, label %_ZN5boost20adl_move_swap_rangesIPNS_9container3dtl4pairINS1_4test24movable_and_copyable_intES5_EES7_EET0_T_S9_S8_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5boost7movelib3gcdImEET_S2_S2_.exit
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 %i.e
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %bb.o
  %.04865 = phi ptr [ %0, %.lr.ph ], [ %i.bt, %bb.o ] ; 7 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.04865, i64 4
  %i.bb = load <2 x i32>, ptr %.04865, align 4, !tbaa !343
  store i32 0, ptr %.04865, align 4, !tbaa !343
  %i.bc = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  store i32 0, ptr %i.ba, align 4, !tbaa !343
  %i.bd = add i32 %i.bc, 2
  store i32 %i.bd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.be = getelementptr inbounds nuw i8, ptr %.04865, i64 %i.e
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.n
  %.047 = phi ptr [ %.04865, %bb.m ], [ %.046, %bb.n ] ; 2 uses
  %.046 = phi ptr [ %i.be, %bb.m ], [ %i.bq, %bb.n ] ; 7 uses
  %i.bf = load i32, ptr %.046, align 4, !tbaa !343
  store i32 %i.bf, ptr %.047, align 4, !tbaa !343
  store i32 0, ptr %.046, align 4, !tbaa !343
  %i.bg = getelementptr inbounds nuw i8, ptr %.046, i64 4 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.047, i64 4
  %i.bi = load i32, ptr %i.bg, align 4, !tbaa !343
  store i32 %i.bi, ptr %i.bh, align 4, !tbaa !343
  store i32 0, ptr %i.bg, align 4, !tbaa !343
  %i.bj = ptrtoint ptr %.046 to i64
  %i.bk = sub i64 %i.r, %i.bj
  %i.bl = ashr exact i64 %i.bk, 3                 ; 2 uses
  %i.bm = icmp ugt i64 %i.bl, %i.f
  %i.bn = getelementptr inbounds nuw i8, ptr %.046, i64 %i.e
  %i.bo = sub nsw i64 0, %i.bl
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.bo
  %i.bq = select i1 %i.bm, ptr %i.bn, ptr %i.bp   ; 2 uses
  %.not55 = icmp eq ptr %i.bq, %.04865
  br i1 %.not55, label %bb.o, label %bb.n, !llvm.loop !6624

bb.o:                                             ; preds = %bb.n
  store <2 x i32> %i.bb, ptr %.046, align 4, !tbaa !343
  %i.br = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.bs = add i32 %i.br, -2
  store i32 %i.bs, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.bt = getelementptr inbounds nuw i8, ptr %.04865, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.bt, %i.ay
  br i1 %.not, label %_ZN5boost20adl_move_swap_rangesIPNS_9container3dtl4pairINS1_4test24movable_and_copyable_intES5_EES7_EET0_T_S9_S8_.exit, label %bb.m, !llvm.loop !6625

_ZN5boost20adl_move_swap_rangesIPNS_9container3dtl4pairINS1_4test24movable_and_copyable_intES5_EES7_EET0_T_S9_S8_.exit: ; preds = %bb.o, %.lr.ph.i, %_ZN5boost7movelib3gcdImEET_S2_S2_.exit, %bb.b, %bb.a
  %.0 = phi ptr [ %0, %bb.b ], [ %2, %bb.a ], [ %i.h, %_ZN5boost7movelib3gcdImEET_S2_S2_.exit ], [ %i.h, %.lr.ph.i ], [ %i.h, %bb.o ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EENS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEES9_SF_NS0_7move_opES9_EEvT_T0_T1_NS0_9iter_sizeISJ_E4typeESM_SM_SM_SM_T2_T3_T4_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef %7) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %8 = alloca %"class.boost::container::dtl::flat_tree_value_compare", align 1 ; 4 uses
  %9 = alloca %"struct.boost::movelib::antistable", align 8 ; 5 uses
  %i.b = alloca ptr, align 8                      ; 10 uses
  %i.c = alloca ptr, align 8                      ; 9 uses
  %i.d = alloca ptr, align 8                      ; 7 uses
  %10 = alloca %"class.boost::movelib::reverse_iterator.129", align 8 ; 5 uses
  %11 = alloca %"class.boost::movelib::reverse_iterator.129", align 8 ; 4 uses
  %12 = alloca %"class.boost::movelib::reverse_iterator.129", align 8 ; 2 uses
  %13 = alloca %"class.boost::movelib::reverse_iterator.129", align 8 ; 2 uses
  %14 = alloca %"class.boost::movelib::reverse_iterator.129", align 8 ; 2 uses
  %15 = alloca %"class.boost::movelib::reverse_iterator.129", align 8 ; 2 uses
  %16 = alloca %"class.boost::movelib::reverse_iterator.129", align 8 ; 2 uses
  %i.e = add i64 %5, %4                           ; 6 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store ptr %7, ptr %i.b, align 8, !tbaa !349
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  store ptr %7, ptr %i.c, align 8, !tbaa !349
  %i.g = getelementptr [8 x i8], ptr %1, i64 %3   ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  store ptr %i.g, ptr %i.d, align 8, !tbaa !349
  %i.h = mul i64 %i.e, %2
  %i.i = getelementptr [8 x i8], ptr %i.g, i64 %i.h ; 12 uses
  %.not216 = icmp eq i64 %i.e, 0
  br i1 %.not216, label %_ZN5boost7movelib7move_opclIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_EET0_NS0_9forward_tET_SC_SA_.exit150, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = icmp eq i64 %5, 0
  %i.k = select i1 %i.j, i64 0, i64 %4            ; 2 uses
  %i.l = add i64 %i.k, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %i.e)
  %.idx208 = shl i64 %2, 3                        ; 9 uses
  %.not121 = icmp eq i64 %6, 0
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.e
  %.not2830.i = icmp eq i64 %2, 0
  %i.n = shl i64 %3, 3                            ; 3 uses
  %17 = add i64 %i.n, %.idx208                    ; 2 uses
  %scevgep = getelementptr i8, ptr %1, i64 %17
  %18 = getelementptr i8, ptr %1, i64 %17
  %scevgep340 = getelementptr i8, ptr %18, i64 -4
  %i.o = or disjoint i64 %i.n, 4                  ; 2 uses
  %scevgep.a = getelementptr i8, ptr %1, i64 %i.o ; 4 uses
  %i.p = mul i64 %2, %i.e
  %i.q = add i64 %i.p, %3
  %i.r = shl i64 %i.q, 3
  %i.s = getelementptr i8, ptr %1, i64 %i.r
  %scevgep338 = getelementptr i8, ptr %i.s, i64 -4 ; 3 uses
  %scevgep339 = getelementptr i8, ptr %7, i64 %.idx208 ; 4 uses
  %i.t = shl i64 %3, 3                            ; 2 uses
  %i.u = add i64 %i.t, 8
  %i.v = add i64 %i.t, %i.a
  %i.w = add i64 %i.v, %.idx208
  %i.x = add i64 %i.w, -8
  %scevgep437 = getelementptr i8, ptr %7, i64 8
  %i.y = shl i64 %3, 3
  %i.z = add i64 %i.y, %i.a
  %i.aa = add i64 %i.z, %.idx208
  %i.ab = add i64 %i.aa, -8
  %i.ac = add i64 %.idx208, -8                    ; 2 uses
  %i.ad = lshr exact i64 %i.ac, 3
  %i.ae = add nuw nsw i64 %i.ad, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ac, 136
  %i.af = getelementptr i8, ptr %1, i64 %i.n
  %i.ag = getelementptr i8, ptr %i.af, i64 -4
  %i.ah = getelementptr i8, ptr %1, i64 %i.o
  %bound0343 = icmp ult ptr %7, %scevgep338
  %bound1344 = icmp ult ptr %i.g, %scevgep339
  %found.conflict345 = and i1 %bound0343, %bound1344
  %stride.check = icmp slt i64 %.idx208, 0
  %i.ai = or i1 %found.conflict345, %stride.check
  %bound0347 = icmp ult ptr %7, %i.i
  %bound1348 = icmp ult ptr %scevgep.a, %scevgep339
  %found.conflict349 = and i1 %bound0347, %bound1348
  %invariant.op = or i1 %i.ai, %found.conflict349
  %bound0371.a = icmp ult ptr %i.g, %scevgep
  %bound1372.a = icmp ult ptr %scevgep.a, %scevgep340
  %found.conflict373.a = and i1 %bound0371.a, %bound1372.a
  %n.vec = and i64 %i.ae, 4611686018427387902     ; 3 uses
  %i.aj = shl i64 %n.vec, 3                       ; 3 uses
  %i.ak = getelementptr i8, ptr %7, i64 %i.aj     ; 2 uses
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.x
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %bb.x ] ; 3 uses
  %i.al = phi ptr [ %7, %.lr.ph ], [ %i.hb, %bb.x ] ; 5 uses
  %i.am = phi ptr [ %7, %.lr.ph ], [ %i.hc, %bb.x ] ; 11 uses
  %i.an = phi ptr [ %i.g, %.lr.ph ], [ %i.bl, %bb.x ] ; 9 uses
  %.0 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.hk, %bb.x ] ; 3 uses
  %.0227 = phi i64 [ %5, %.lr.ph ], [ %.1, %bb.x ] ; 2 uses
  %.0104226 = phi i64 [ %i.k, %.lr.ph ], [ %i.hi, %bb.x ] ; 4 uses
  %.0106223 = phi ptr [ %0, %.lr.ph ], [ %i.hg, %bb.x ] ; 16 uses
  %.0108222 = phi i8 [ 1, %.lr.ph ], [ %.1109, %bb.x ] ; 5 uses
  %.0111220 = phi ptr [ %i.g, %.lr.ph ], [ %i.hf, %bb.x ] ; 5 uses
  %.0114219 = phi ptr [ %1, %.lr.ph ], [ %.1115, %bb.x ] ; 11 uses
  %.0191218 = phi ptr [ %i.f, %.lr.ph ], [ %.2193, %bb.x ] ; 16 uses
  %.0195217 = phi i64 [ %i.e, %.lr.ph ], [ %i.hl, %bb.x ] ; 4 uses
  %i.ao = ptrtoaddr ptr %i.al to i64
  %i.ap = ptrtoaddr ptr %i.am to i64
  %i.aq = icmp ult i64 %.0104226, %.0
  br i1 %i.aq, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EENS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEES9_SF_EENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread24.i
  %.027.i = phi i64 [ %i.bf, %.thread24.i ], [ %.0104226, %bb.b ] ; 4 uses
  %.02226.i = phi i64 [ %i.be, %.thread24.i ], [ 0, %bb.b ] ; 4 uses
  %i.ar = mul i64 %.02226.i, %2
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.ar
  %i.at = mul i64 %.027.i, %2
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.at
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %.0106223, i64 %.02226.i
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %.0106223, i64 %.027.i
  %i.ax = load i32, ptr %i.au, align 4, !tbaa !343 ; 2 uses
  %i.ay = load i32, ptr %i.as, align 4, !tbaa !343 ; 2 uses
  %i.az = icmp slt i32 %i.ax, %i.ay
  br i1 %i.az, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.ba = icmp slt i32 %i.ay, %i.ax
  br i1 %i.ba, label %.thread24.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bb = load i32, ptr %i.aw, align 4, !tbaa !343
  %i.bc = load i32, ptr %i.av, align 4, !tbaa !343
  %i.bd = icmp slt i32 %i.bb, %i.bc
  %cond.fr.i = freeze i1 %i.bd
  br i1 %cond.fr.i, label %.thread.i, label %.thread24.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread24.i

.thread24.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.be = phi i64 [ %.027.i, %.thread.i ], [ %.02226.i, %bb.d ], [ %.02226.i, %bb.c ] ; 2 uses
  %i.bf = add nuw i64 %.027.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bf, %.0
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EENS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEES9_SF_EENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit, label %.lr.ph.i, !llvm.loop !108

_ZN5boost7movelib15detail_adaptive15find_next_blockIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EENS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEES9_SF_EENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit: ; preds = %.thread24.i, %bb.b
  %.022.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.be, %.thread24.i ] ; 8 uses
  %i.bg = add i64 %.022.lcssa.i, 2
  %i.bh = call i64 @llvm.umax.i64(i64 %.0, i64 %i.bg) ; 2 uses
  %.sroa.speculated180 = call i64 @llvm.umin.i64(i64 %i.bh, i64 %.0195217)
  %i.bi = mul i64 %.022.lcssa.i, %2               ; 2 uses
  %.idx = shl i64 %i.bi, 3                        ; 2 uses
  %i.bj = getelementptr i8, ptr %i.an, i64 %.idx  ; 12 uses
  %i.bk = getelementptr [8 x i8], ptr %i.bj, i64 %2 ; 5 uses
  %i.bl = getelementptr i8, ptr %i.an, i64 %.idx208 ; 8 uses
  %i.bm = icmp eq ptr %i.am, %i.al
  %.not120 = icmp eq i64 %.0227, 0
  br i1 %.not120, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EENS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEES9_SF_EENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit
  br i1 %.not121, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bn = load i32, ptr %i.i, align 4, !tbaa !343
  %i.bo = load i32, ptr %i.bj, align 4, !tbaa !343
  %i.bp = icmp slt i32 %i.bn, %i.bo
  br i1 %i.bp, label %.thread, label %bb.h

bb.g:                                             ; preds = %bb.e
  %.old123 = trunc nuw i8 %.0108222 to i1
  br i1 %.old123, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EENS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEES9_SF_EENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit
  %.idx209 = shl nuw nsw i64 %.022.lcssa.i, 3
  %i.bq = getelementptr inbounds nuw i8, ptr %.0106223, i64 %.idx209 ; 16 uses
  %i.br = icmp eq ptr %.0191218, %i.m
  br i1 %i.br, label %._crit_edge, label %bb.i

._crit_edge:                                      ; preds = %bb.h
  %i.bs = trunc nuw i8 %.0108222 to i1
  br i1 %i.bs, label %bb.j, label %.thread276

.thread276:                                       ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  br label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.bt = load i32, ptr %i.bq, align 4, !tbaa !343
  %i.bu = load i32, ptr %.0191218, align 4, !tbaa !343
  %i.bv = icmp slt i32 %i.bt, %i.bu               ; 4 uses
  %i.bw = trunc nuw i8 %.0108222 to i1            ; 2 uses
  %i.bx = xor i1 %i.bv, %i.bw
  br i1 %i.bx, label %bb.n, label %bb.j

bb.j:                                             ; preds = %._crit_edge, %bb.i
  %i.by = phi i1 [ true, %._crit_edge ], [ %i.bv, %bb.i ]
  br i1 %i.bm, label %_ZN5boost7movelib7move_opclIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_EET0_NS0_9forward_tET_SC_SA_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.j
  %i.bz = add i64 %i.ao, -8
  %i.ca = sub i64 %i.bz, %i.ap                    ; 3 uses
  %i.cb = lshr i64 %i.ca, 3
  %i.cc = add nuw nsw i64 %i.cb, 1                ; 2 uses
  %min.iters.check393 = icmp ult i64 %i.ca, 40
  br i1 %min.iters.check393, label %.lr.ph.i.i.preheader544, label %vector.memcheck394

vector.memcheck394:                               ; preds = %.lr.ph.i.i.preheader
  %i.cd = and i64 %i.ca, -8
  %i.ce = add i64 %i.cd, 8                        ; 2 uses
  %i.cf = getelementptr i8, ptr %.0114219, i64 %i.ce
  %i.cg = getelementptr i8, ptr %i.am, i64 %i.ce
  %bound0395 = icmp ult ptr %.0114219, %i.cg
  %bound1396 = icmp ult ptr %i.am, %i.cf
  %found.conflict397 = and i1 %bound0395, %bound1396
  br i1 %found.conflict397, label %.lr.ph.i.i.preheader544, label %vector.ph398

vector.ph398:                                     ; preds = %vector.memcheck394
  %n.vec399 = and i64 %i.cc, 4611686018427387900  ; 3 uses
  %i.ch = shl i64 %n.vec399, 3                    ; 2 uses
  %i.ci = getelementptr i8, ptr %.0114219, i64 %i.ch
  %i.cj = getelementptr i8, ptr %i.am, i64 %i.ch
  br label %vector.body400

vector.body400:                                   ; preds = %vector.body400, %vector.ph398
  %index401 = phi i64 [ 0, %vector.ph398 ], [ %index.next414, %vector.body400 ] ; 2 uses
  %i.ck = shl i64 %index401, 3                    ; 3 uses
  %i.cl = or disjoint i64 %i.ck, 16               ; 2 uses
  %next.gep402 = getelementptr i8, ptr %.0114219, i64 %i.ck
  %next.gep403 = getelementptr i8, ptr %.0114219, i64 %i.cl
  %next.gep404 = getelementptr i8, ptr %i.am, i64 %i.ck ; 2 uses
  %next.gep405 = getelementptr i8, ptr %i.am, i64 %i.cl ; 2 uses
  %wide.vec406 = load <4 x i32>, ptr %next.gep404, align 4, !tbaa !343, !alias.scope !6666
  %wide.vec409 = load <4 x i32>, ptr %next.gep405, align 4, !tbaa !343, !alias.scope !6666
  store <4 x i32> %wide.vec406, ptr %next.gep402, align 4, !tbaa !343, !alias.scope !6667, !noalias !6666
  store <4 x i32> %wide.vec409, ptr %next.gep403, align 4, !tbaa !343, !alias.scope !6667, !noalias !6666
  store <4 x i32> zeroinitializer, ptr %next.gep404, align 4, !tbaa !343, !alias.scope !6666
  store <4 x i32> zeroinitializer, ptr %next.gep405, align 4, !tbaa !343, !alias.scope !6666
  %index.next414 = add nuw i64 %index401, 4       ; 2 uses
  %i.cm = icmp eq i64 %index.next414, %n.vec399
  br i1 %i.cm, label %middle.block415, label %vector.body400, !llvm.loop !6629

middle.block415:                                  ; preds = %vector.body400
  %cmp.n416 = icmp eq i64 %i.cc, %n.vec399
  br i1 %cmp.n416, label %_ZN5boost7movelib7move_opclIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_EET0_NS0_9forward_tET_SC_SA_.exit, label %.lr.ph.i.i.preheader544

.lr.ph.i.i.preheader544:                          ; preds = %vector.memcheck394, %.lr.ph.i.i.preheader, %middle.block415
  %.010.i.i.ph = phi ptr [ %.0114219, %vector.memcheck394 ], [ %.0114219, %.lr.ph.i.i.preheader ], [ %i.ci, %middle.block415 ]
  %.079.i.i.ph = phi ptr [ %i.am, %vector.memcheck394 ], [ %i.am, %.lr.ph.i.i.preheader ], [ %i.cj, %middle.block415 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader544, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.cs, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader544 ] ; 3 uses
  %.079.i.i = phi ptr [ %i.cr, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader544 ] ; 4 uses
  %i.cn = load i32, ptr %.079.i.i, align 4, !tbaa !343
  store i32 %i.cn, ptr %.010.i.i, align 4, !tbaa !343
  store i32 0, ptr %.079.i.i, align 4, !tbaa !343
  %i.co = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  %i.cq = load i32, ptr %i.co, align 4, !tbaa !343
  store i32 %i.cq, ptr %i.cp, align 4, !tbaa !343
  store i32 0, ptr %i.co, align 4, !tbaa !343
  %i.cr = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %.not.i.i = icmp eq ptr %i.cr, %i.al
  br i1 %.not.i.i, label %_ZN5boost7movelib7move_opclIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_EET0_NS0_9forward_tET_SC_SA_.exit, label %.lr.ph.i.i, !llvm.loop !6630

_ZN5boost7movelib7move_opclIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_EET0_NS0_9forward_tET_SC_SA_.exit: ; preds = %.lr.ph.i.i, %middle.block415, %bb.j
  store ptr %7, ptr %i.b, align 8, !tbaa !349
  %.not.i = icmp eq i64 %i.bi, 0
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_S9_NS0_7move_opEEET1_T_SC_RSC_T0_SE_SE_SB_T2_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN5boost7movelib7move_opclIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_EET0_NS0_9forward_tET_SC_SA_.exit
  br i1 %.not2830.i, label %._crit_edge.i, label %.lr.ph.i125.preheader

.lr.ph.i125.preheader:                            ; preds = %.preheader.i
  br i1 %min.iters.check, label %.lr.ph.i125.preheader543, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i125.preheader
  %i.ct = mul i64 %indvar, %.idx208               ; 2 uses
  %i.cu = shl i64 %.022.lcssa.i, 3
  %i.cv = add i64 %i.cu, 8
  %i.cw = mul i64 %2, %i.cv
  %i.cx = getelementptr i8, ptr %i.ag, i64 %i.ct
  %i.cy = getelementptr i8, ptr %i.cx, i64 %i.cw  ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EENS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEES9_SF_EEvT_T0_T1_NS0_9iter_sizeISI_E4typeESL_SL_SL_SL_T2_:bb.a
  %i.au = add nuw i64 %.027.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.au, %.val107109
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EENS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEES9_SF_EENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit, label %.lr.ph.i, !llvm.loop !108

_ZN5boost7movelib15detail_adaptive15find_next_blockIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EENS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEES9_SF_EENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit: ; preds = %.thread24.i, %bb.b
  %.022.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.at, %.thread24.i ] ; 4 uses
  %.idx105 = shl nuw nsw i64 %.022.lcssa.i, 3
  %i.av = getelementptr inbounds nuw i8, ptr %.073114, i64 %.idx105 ; 5 uses
  %i.aw = add i64 %.022.lcssa.i, 2
  %i.ax = tail call i64 @llvm.umax.i64(i64 %.val107109, i64 %i.aw) ; 2 uses
  %.sroa.speculated89 = tail call i64 @llvm.umin.i64(i64 %i.ax, i64 %.099111)
  %i.ay = mul i64 %.022.lcssa.i, %2               ; 2 uses
  %.idx = shl nuw nsw i64 %i.ay, 3
  %i.az = getelementptr inbounds nuw i8, ptr %.071116, i64 %.idx ; 6 uses
  %i.ba = trunc nuw i8 %.074113 to i1
  %or.cond = and i1 %i.j, %i.ba
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EENS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEES9_SF_EENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit
  %i.bb = load i32, ptr %i.e, align 4, !tbaa !343
  %i.bc = load i32, ptr %i.az, align 4, !tbaa !343
  %i.bd = icmp sge i32 %i.bb, %i.bc
  %spec.select = zext i1 %i.bd to i8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EENS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEES9_SF_EENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit
  %.1 = phi i8 [ %.074113, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EENS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEES9_SF_EENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit ], [ %spec.select, %bb.e ] ; 2 uses
  %i.be = zext nneg i8 %.1 to i64
  %i.bf = add i64 %.075112, %i.be                 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.071116, i64 %.idx104 ; 2 uses
  %.not.i = icmp eq i64 %i.ay, 0
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_EEvT_SA_RSA_T0_SC_SC_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %.not8.i.i, label %_ZN5boost20adl_move_swap_rangesIPNS_9container3dtl4pairINS1_4test24movable_and_copyable_intES5_EES7_EET0_T_S9_S8_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.prol, label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader
  %i.bh = load i32, ptr %.071116, align 4, !tbaa !343
  store i32 0, ptr %.071116, align 4, !tbaa !343
  %i.bi = load i32, ptr %i.az, align 4, !tbaa !343
  store i32 %i.bi, ptr %.071116, align 4, !tbaa !343
  store i32 %i.bh, ptr %i.az, align 4, !tbaa !343
  %i.bj = getelementptr inbounds nuw i8, ptr %.071116, i64 4 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.az, i64 4 ; 2 uses
  %i.bl = load i32, ptr %i.bj, align 4, !tbaa !343
  store i32 0, ptr %i.bj, align 4, !tbaa !343
  %i.bm = load i32, ptr %i.bk, align 4, !tbaa !343
  store i32 %i.bm, ptr %i.bj, align 4, !tbaa !343
  store i32 %i.bl, ptr %i.bk, align 4, !tbaa !343
  %i.bn = getelementptr inbounds nuw i8, ptr %.071116, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.010.i.i.unr = phi ptr [ %i.az, %.lr.ph.i.i.preheader ], [ %i.bo, %.lr.ph.i.i.prol ]
  %.079.i.i.unr = phi ptr [ %.071116, %.lr.ph.i.i.preheader ], [ %i.bn, %.lr.ph.i.i.prol ]
  br i1 %i.m, label %_ZN5boost20adl_move_swap_rangesIPNS_9container3dtl4pairINS1_4test24movable_and_copyable_intES5_EES7_EET0_T_S9_S8_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.ce, %.lr.ph.i.i ], [ %.010.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %.079.i.i = phi ptr [ %i.cd, %.lr.ph.i.i ], [ %.079.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 7 uses
  %i.bp = load i32, ptr %.079.i.i, align 4, !tbaa !343
  store i32 0, ptr %.079.i.i, align 4, !tbaa !343
  %i.bq = load i32, ptr %.010.i.i, align 4, !tbaa !343
  store i32 %i.bq, ptr %.079.i.i, align 4, !tbaa !343
  store i32 %i.bp, ptr %.010.i.i, align 4, !tbaa !343
  %i.br = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4 ; 2 uses
  %i.bt = load i32, ptr %i.br, align 4, !tbaa !343
  store i32 0, ptr %i.br, align 4, !tbaa !343
  %i.bu = load i32, ptr %i.bs, align 4, !tbaa !343
  store i32 %i.bu, ptr %i.br, align 4, !tbaa !343
  store i32 %i.bt, ptr %i.bs, align 4, !tbaa !343
  %i.bv = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8 ; 2 uses
  %i.bx = load i32, ptr %i.bv, align 4, !tbaa !343
  store i32 0, ptr %i.bv, align 4, !tbaa !343
  %i.by = load i32, ptr %i.bw, align 4, !tbaa !343
  store i32 %i.by, ptr %i.bv, align 4, !tbaa !343
  store i32 %i.bx, ptr %i.bw, align 4, !tbaa !343
  %i.bz = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 12 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 12 ; 2 uses
  %i.cb = load i32, ptr %i.bz, align 4, !tbaa !343
  store i32 0, ptr %i.bz, align 4, !tbaa !343
  %i.cc = load i32, ptr %i.ca, align 4, !tbaa !343
  store i32 %i.cc, ptr %i.bz, align 4, !tbaa !343
  store i32 %i.cb, ptr %i.ca, align 4, !tbaa !343
  %i.cd = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 16 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 16
  %.not.i.i.1 = icmp eq ptr %i.cd, %i.bg
  br i1 %.not.i.i.1, label %_ZN5boost20adl_move_swap_rangesIPNS_9container3dtl4pairINS1_4test24movable_and_copyable_intES5_EES7_EET0_T_S9_S8_.exit.i, label %.lr.ph.i.i, !llvm.loop !105

_ZN5boost20adl_move_swap_rangesIPNS_9container3dtl4pairINS1_4test24movable_and_copyable_intES5_EES7_EET0_T_S9_S8_.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.g
  %.not21.i = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not21.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN5boost20adl_move_swap_rangesIPNS_9container3dtl4pairINS1_4test24movable_and_copyable_intES5_EES7_EET0_T_S9_S8_.exit.i
  %i.cf = load <2 x i32>, ptr %i.av, align 4, !tbaa !343
  store i32 0, ptr %i.av, align 4, !tbaa !343
  %i.cg = load <2 x i32>, ptr %.073114, align 4, !tbaa !343
  store <2 x i32> %i.cg, ptr %i.av, align 4, !tbaa !343
  store <2 x i32> %i.cf, ptr %.073114, align 4, !tbaa !343
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN5boost20adl_move_swap_rangesIPNS_9container3dtl4pairINS1_4test24movable_and_copyable_intES5_EES7_EET0_T_S9_S8_.exit.i
  %i.ch = icmp eq ptr %i.av, %.0100110
  br i1 %i.ch, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_EEvT_SA_RSA_T0_SC_SC_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ci = icmp eq ptr %.0100110, %.073114
  %spec.select102 = select i1 %i.ci, ptr %i.av, ptr %.0100110
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_EEvT_SA_RSA_T0_SC_SC_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_EEvT_SA_RSA_T0_SC_SC_.exit: ; preds = %bb.j, %bb.i, %bb.f
  %.1101 = phi ptr [ %.0100110, %bb.f ], [ %spec.select102, %bb.j ], [ %.073114, %bb.i ] ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.073114, i64 8
  %i.ck = icmp ne i64 %.072115, 0
  %.neg = sext i1 %i.ck to i64
  %i.cl = add i64 %.072115, %.neg
  %i.cm = icmp ne i64 %i.ax, 0
  %.neg78 = sext i1 %i.cm to i64
  %i.cn = add i64 %.sroa.speculated89, %.neg78
  %i.co = add i64 %.099111, -1                    ; 2 uses
  %.not = icmp eq i64 %i.co, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !6703

._crit_edge125.loopexit131:                       ; preds = %bb.l
  %i.cp = trunc nuw i8 %i.dg to i1
  %i.cq = select i1 %i.cp, ptr %i.di, ptr %i.dj
  br label %._crit_edge125

._crit_edge125:                                   ; preds = %.lr.ph124.split.us.preheader.prol.loopexit, %.lr.ph124.split.us.preheader, %._crit_edge.thread, %._crit_edge125.loopexit131, %._crit_edge
  %i.cr = phi ptr [ %1, %._crit_edge ], [ %1, %._crit_edge.thread ], [ %i.cq, %._crit_edge125.loopexit131 ], [ %.069121.us.lcssa.unr, %.lr.ph124.split.us.preheader.prol.loopexit ], [ %i.ac, %.lr.ph124.split.us.preheader ] ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %6
  %i.ct = ptrtoint ptr %i.e to i64
  %i.cu = ptrtoint ptr %i.cr to i64
  %i.cv = sub i64 %i.ct, %i.cu
  %i.cw = ashr exact i64 %i.cv, 3
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPNS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EENS3_23flat_tree_value_compareISt4lessIS6_ES7_NS3_9select1stIS6_EEEEEEvT_SF_SF_NS0_9iter_sizeISF_E4typeESI_T0_(ptr noundef %i.cr, ptr noundef %i.e, ptr noundef %i.cs, i64 noundef %i.cw, i64 noundef %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void

.lr.ph124.split:                                  ; preds = %.lr.ph124, %bb.l
  %i.cx = phi i8 [ %i.dg, %bb.l ], [ 1, %.lr.ph124 ]
  %i.cy = phi i8 [ %i.dh, %bb.l ], [ 1, %.lr.ph124 ] ; 2 uses
  %.0122 = phi ptr [ %i.dk, %bb.l ], [ %0, %.lr.ph124 ] ; 2 uses
  %.069121 = phi ptr [ %i.dj, %bb.l ], [ %i.d, %.lr.ph124 ] ; 4 uses
  %.070120 = phi ptr [ %i.di, %bb.l ], [ %1, %.lr.ph124 ]
  %i.cz = load i32, ptr %.0122, align 4, !tbaa !343
  %i.da = load i32, ptr %.1101, align 4, !tbaa !343
  %i.db = icmp slt i32 %i.cz, %i.da
  %i.dc = zext i1 %i.db to i8
  %i.dd = icmp eq i8 %i.cy, %i.dc
  br i1 %i.dd, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph124.split
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %.069121, i64 %2
  %i.df = call noundef ptr @_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EENS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEET_SG_SG_SG_PbT0_(ptr noundef %.070120, ptr noundef %.069121, ptr noundef %i.de, ptr noundef nonnull %i.a)
  %.pre = load i8, ptr %i.a, align 1, !tbaa !480, !range !481 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph124.split, %bb.k
  %i.dg = phi i8 [ %.pre, %bb.k ], [ %i.cx, %.lr.ph124.split ] ; 2 uses
  %i.dh = phi i8 [ %.pre, %bb.k ], [ %i.cy, %.lr.ph124.split ]
  %i.di = phi ptr [ %i.df, %bb.k ], [ %.069121, %.lr.ph124.split ] ; 2 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %.069121, i64 %2 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.0122, i64 8 ; 2 uses
  %.not77 = icmp eq ptr %i.dk, %i.n
  br i1 %.not77, label %._crit_edge125.loopexit131, label %.lr.ph124.split, !llvm.loop !6702
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPmNS1_4lessEPNS_9container3dtl4pairINS5_4test24movable_and_copyable_intES9_EENS6_23flat_tree_value_compareISt4lessIS9_ESA_NS6_9select1stIS9_EEEENS0_7move_opESB_EEvT_T0_T1_NS0_9iter_sizeISL_E4typeESO_SO_SO_SO_T2_T3_T4_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef %7) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %8 = alloca %"class.boost::container::dtl::flat_tree_value_compare", align 1 ; 4 uses
  %9 = alloca %"struct.boost::movelib::antistable", align 8 ; 5 uses
  %i.b = alloca ptr, align 8                      ; 10 uses
  %i.c = alloca ptr, align 8                      ; 9 uses
  %i.d = alloca ptr, align 8                      ; 7 uses
  %10 = alloca %"class.boost::movelib::reverse_iterator.129", align 8 ; 5 uses
  %11 = alloca %"class.boost::movelib::reverse_iterator.129", align 8 ; 4 uses
  %12 = alloca %"class.boost::movelib::reverse_iterator.131", align 8 ; 2 uses
  %13 = alloca %"class.boost::movelib::reverse_iterator.131", align 8 ; 2 uses
  %14 = alloca %"class.boost::movelib::reverse_iterator.129", align 8 ; 2 uses
  %15 = alloca %"class.boost::movelib::reverse_iterator.129", align 8 ; 2 uses
  %16 = alloca %"class.boost::movelib::reverse_iterator.129", align 8 ; 2 uses
  %i.e = add i64 %5, %4                           ; 6 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store ptr %7, ptr %i.b, align 8, !tbaa !349
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  store ptr %7, ptr %i.c, align 8, !tbaa !349
  %i.g = getelementptr [8 x i8], ptr %1, i64 %3   ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  store ptr %i.g, ptr %i.d, align 8, !tbaa !349
  %i.h = mul i64 %i.e, %2
  %i.i = getelementptr [8 x i8], ptr %i.g, i64 %i.h ; 12 uses
  %.not216 = icmp eq i64 %i.e, 0
  br i1 %.not216, label %_ZN5boost7movelib7move_opclIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_EET0_NS0_9forward_tET_SC_SA_.exit150, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = icmp eq i64 %5, 0
  %i.k = select i1 %i.j, i64 0, i64 %4            ; 2 uses
  %i.l = add i64 %i.k, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %i.e)
  %.idx208 = shl i64 %2, 3                        ; 9 uses
  %.not121 = icmp eq i64 %6, 0
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.e
  %.not2830.i = icmp eq i64 %2, 0
  %i.n = shl i64 %3, 3                            ; 3 uses
  %17 = add i64 %i.n, %.idx208                    ; 2 uses
  %scevgep = getelementptr i8, ptr %1, i64 %17
  %18 = getelementptr i8, ptr %1, i64 %17
  %scevgep340 = getelementptr i8, ptr %18, i64 -4
  %i.o = or disjoint i64 %i.n, 4                  ; 2 uses
  %scevgep.a = getelementptr i8, ptr %1, i64 %i.o ; 4 uses
  %i.p = mul i64 %2, %i.e
  %i.q = add i64 %i.p, %3
  %i.r = shl i64 %i.q, 3
  %i.s = getelementptr i8, ptr %1, i64 %i.r
  %scevgep338 = getelementptr i8, ptr %i.s, i64 -4 ; 3 uses
  %scevgep339 = getelementptr i8, ptr %7, i64 %.idx208 ; 4 uses
  %i.t = shl i64 %3, 3                            ; 2 uses
  %i.u = add i64 %i.t, 8
  %i.v = add i64 %i.t, %i.a
  %i.w = add i64 %i.v, %.idx208
  %i.x = add i64 %i.w, -8
  %scevgep437 = getelementptr i8, ptr %7, i64 8
  %i.y = shl i64 %3, 3
  %i.z = add i64 %i.y, %i.a
  %i.aa = add i64 %i.z, %.idx208
  %i.ab = add i64 %i.aa, -8
  %i.ac = add i64 %.idx208, -8                    ; 2 uses
  %i.ad = lshr exact i64 %i.ac, 3
  %i.ae = add nuw nsw i64 %i.ad, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ac, 136
  %i.af = getelementptr i8, ptr %1, i64 %i.n
  %i.ag = getelementptr i8, ptr %i.af, i64 -4
  %i.ah = getelementptr i8, ptr %1, i64 %i.o
  %bound0343 = icmp ult ptr %7, %scevgep338
  %bound1344 = icmp ult ptr %i.g, %scevgep339
  %found.conflict345 = and i1 %bound0343, %bound1344
  %stride.check = icmp slt i64 %.idx208, 0
  %i.ai = or i1 %found.conflict345, %stride.check
  %bound0347 = icmp ult ptr %7, %i.i
  %bound1348 = icmp ult ptr %scevgep.a, %scevgep339
  %found.conflict349 = and i1 %bound0347, %bound1348
  %invariant.op = or i1 %i.ai, %found.conflict349
  %bound0371.a = icmp ult ptr %i.g, %scevgep
  %bound1372.a = icmp ult ptr %scevgep.a, %scevgep340
  %found.conflict373.a = and i1 %bound0371.a, %bound1372.a
  %n.vec = and i64 %i.ae, 4611686018427387902     ; 3 uses
  %i.aj = shl i64 %n.vec, 3                       ; 3 uses
  %i.ak = getelementptr i8, ptr %7, i64 %i.aj     ; 2 uses
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.x
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %bb.x ] ; 3 uses
  %i.al = phi ptr [ %7, %.lr.ph ], [ %i.hb, %bb.x ] ; 5 uses
  %i.am = phi ptr [ %7, %.lr.ph ], [ %i.hc, %bb.x ] ; 11 uses
  %i.an = phi ptr [ %i.g, %.lr.ph ], [ %i.bl, %bb.x ] ; 9 uses
  %.0 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.hk, %bb.x ] ; 3 uses
  %.0227 = phi i64 [ %5, %.lr.ph ], [ %.1, %bb.x ] ; 2 uses
  %.0104226 = phi i64 [ %i.k, %.lr.ph ], [ %i.hi, %bb.x ] ; 4 uses
  %.0106223 = phi ptr [ %0, %.lr.ph ], [ %i.hg, %bb.x ] ; 16 uses
  %.0108222 = phi i8 [ 1, %.lr.ph ], [ %.1109, %bb.x ] ; 5 uses
  %.0111220 = phi ptr [ %i.g, %.lr.ph ], [ %i.hf, %bb.x ] ; 5 uses
  %.0114219 = phi ptr [ %1, %.lr.ph ], [ %.1115, %bb.x ] ; 11 uses
  %.0191218 = phi ptr [ %i.f, %.lr.ph ], [ %.2193, %bb.x ] ; 16 uses
  %.0195217 = phi i64 [ %i.e, %.lr.ph ], [ %i.hl, %bb.x ] ; 4 uses
  %i.ao = ptrtoaddr ptr %i.al to i64
  %i.ap = ptrtoaddr ptr %i.am to i64
  %i.aq = icmp ult i64 %.0104226, %.0
  br i1 %i.aq, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPNS_9container3dtl4pairINS5_4test24movable_and_copyable_intES9_EENS6_23flat_tree_value_compareISt4lessIS9_ESA_NS6_9select1stIS9_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SJ_SL_SL_SL_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread24.i
  %.027.i = phi i64 [ %i.bf, %.thread24.i ], [ %.0104226, %bb.b ] ; 4 uses
  %.02226.i = phi i64 [ %i.be, %.thread24.i ], [ 0, %bb.b ] ; 4 uses
  %i.ar = mul i64 %.02226.i, %2
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.ar
  %i.at = mul i64 %.027.i, %2
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.at
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %.0106223, i64 %.02226.i
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %.0106223, i64 %.027.i
  %i.ax = load i32, ptr %i.au, align 4, !tbaa !343 ; 2 uses
  %i.ay = load i32, ptr %i.as, align 4, !tbaa !343 ; 2 uses
  %i.az = icmp slt i32 %i.ax, %i.ay
  br i1 %i.az, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.ba = icmp slt i32 %i.ay, %i.ax
  br i1 %i.ba, label %.thread24.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bb = load i64, ptr %i.aw, align 8, !tbaa !340
  %i.bc = load i64, ptr %i.av, align 8, !tbaa !340
  %i.bd = icmp ult i64 %i.bb, %i.bc
  %cond.fr.i = freeze i1 %i.bd
  br i1 %cond.fr.i, label %.thread.i, label %.thread24.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread24.i

.thread24.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.be = phi i64 [ %.027.i, %.thread.i ], [ %.02226.i, %bb.d ], [ %.02226.i, %bb.c ] ; 2 uses
  %i.bf = add nuw i64 %.027.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bf, %.0
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPNS_9container3dtl4pairINS5_4test24movable_and_copyable_intES9_EENS6_23flat_tree_value_compareISt4lessIS9_ESA_NS6_9select1stIS9_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SJ_SL_SL_SL_T2_.exit, label %.lr.ph.i, !llvm.loop !110

_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPNS_9container3dtl4pairINS5_4test24movable_and_copyable_intES9_EENS6_23flat_tree_value_compareISt4lessIS9_ESA_NS6_9select1stIS9_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SJ_SL_SL_SL_T2_.exit: ; preds = %.thread24.i, %bb.b
  %.022.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.be, %.thread24.i ] ; 8 uses
  %i.bg = add i64 %.022.lcssa.i, 2
  %i.bh = call i64 @llvm.umax.i64(i64 %.0, i64 %i.bg) ; 2 uses
  %.sroa.speculated180 = call i64 @llvm.umin.i64(i64 %i.bh, i64 %.0195217)
  %i.bi = mul i64 %.022.lcssa.i, %2               ; 2 uses
  %.idx = shl i64 %i.bi, 3                        ; 2 uses
  %i.bj = getelementptr i8, ptr %i.an, i64 %.idx  ; 12 uses
  %i.bk = getelementptr [8 x i8], ptr %i.bj, i64 %2 ; 5 uses
  %i.bl = getelementptr i8, ptr %i.an, i64 %.idx208 ; 8 uses
  %i.bm = icmp eq ptr %i.am, %i.al
  %.not120 = icmp eq i64 %.0227, 0
  br i1 %.not120, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPNS_9container3dtl4pairINS5_4test24movable_and_copyable_intES9_EENS6_23flat_tree_value_compareISt4lessIS9_ESA_NS6_9select1stIS9_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SJ_SL_SL_SL_T2_.exit
  br i1 %.not121, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bn = load i32, ptr %i.i, align 4, !tbaa !343
  %i.bo = load i32, ptr %i.bj, align 4, !tbaa !343
  %i.bp = icmp slt i32 %i.bn, %i.bo
  br i1 %i.bp, label %.thread, label %bb.h

bb.g:                                             ; preds = %bb.e
  %.old123 = trunc nuw i8 %.0108222 to i1
  br i1 %.old123, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPNS_9container3dtl4pairINS5_4test24movable_and_copyable_intES9_EENS6_23flat_tree_value_compareISt4lessIS9_ESA_NS6_9select1stIS9_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SJ_SL_SL_SL_T2_.exit
  %.idx209 = shl nuw nsw i64 %.022.lcssa.i, 3
  %i.bq = getelementptr inbounds nuw i8, ptr %.0106223, i64 %.idx209 ; 13 uses
  %i.br = icmp eq ptr %.0191218, %i.m
  br i1 %i.br, label %._crit_edge, label %bb.i

._crit_edge:                                      ; preds = %bb.h
  %i.bs = trunc nuw i8 %.0108222 to i1
  br i1 %i.bs, label %bb.j, label %.thread276

.thread276:                                       ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  br label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.bt = load i64, ptr %i.bq, align 8, !tbaa !340
  %i.bu = load i64, ptr %.0191218, align 8, !tbaa !340
  %i.bv = icmp ult i64 %i.bt, %i.bu               ; 4 uses
  %i.bw = trunc nuw i8 %.0108222 to i1            ; 2 uses
  %i.bx = xor i1 %i.bv, %i.bw
  br i1 %i.bx, label %bb.n, label %bb.j

bb.j:                                             ; preds = %._crit_edge, %bb.i
  %i.by = phi i1 [ true, %._crit_edge ], [ %i.bv, %bb.i ]
  br i1 %i.bm, label %_ZN5boost7movelib7move_opclIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_EET0_NS0_9forward_tET_SC_SA_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.j
  %i.bz = add i64 %i.ao, -8
  %i.ca = sub i64 %i.bz, %i.ap                    ; 3 uses
  %i.cb = lshr i64 %i.ca, 3
  %i.cc = add nuw nsw i64 %i.cb, 1                ; 2 uses
  %min.iters.check393 = icmp ult i64 %i.ca, 40
  br i1 %min.iters.check393, label %.lr.ph.i.i.preheader544, label %vector.memcheck394

vector.memcheck394:                               ; preds = %.lr.ph.i.i.preheader
  %i.cd = and i64 %i.ca, -8
  %i.ce = add i64 %i.cd, 8                        ; 2 uses
  %i.cf = getelementptr i8, ptr %.0114219, i64 %i.ce
  %i.cg = getelementptr i8, ptr %i.am, i64 %i.ce
  %bound0395 = icmp ult ptr %.0114219, %i.cg
  %bound1396 = icmp ult ptr %i.am, %i.cf
  %found.conflict397 = and i1 %bound0395, %bound1396
  br i1 %found.conflict397, label %.lr.ph.i.i.preheader544, label %vector.ph398

vector.ph398:                                     ; preds = %vector.memcheck394
  %n.vec399 = and i64 %i.cc, 4611686018427387900  ; 3 uses
  %i.ch = shl i64 %n.vec399, 3                    ; 2 uses
  %i.ci = getelementptr i8, ptr %.0114219, i64 %i.ch
  %i.cj = getelementptr i8, ptr %i.am, i64 %i.ch
  br label %vector.body400

vector.body400:                                   ; preds = %vector.body400, %vector.ph398
  %index401 = phi i64 [ 0, %vector.ph398 ], [ %index.next414, %vector.body400 ] ; 2 uses
  %i.ck = shl i64 %index401, 3                    ; 3 uses
  %i.cl = or disjoint i64 %i.ck, 16               ; 2 uses
  %next.gep402 = getelementptr i8, ptr %.0114219, i64 %i.ck
  %next.gep403 = getelementptr i8, ptr %.0114219, i64 %i.cl
  %next.gep404 = getelementptr i8, ptr %i.am, i64 %i.ck ; 2 uses
  %next.gep405 = getelementptr i8, ptr %i.am, i64 %i.cl ; 2 uses
  %wide.vec406 = load <4 x i32>, ptr %next.gep404, align 4, !tbaa !343, !alias.scope !6744
  %wide.vec409 = load <4 x i32>, ptr %next.gep405, align 4, !tbaa !343, !alias.scope !6744
  store <4 x i32> %wide.vec406, ptr %next.gep402, align 4, !tbaa !343, !alias.scope !6745, !noalias !6744
  store <4 x i32> %wide.vec409, ptr %next.gep403, align 4, !tbaa !343, !alias.scope !6745, !noalias !6744
  store <4 x i32> zeroinitializer, ptr %next.gep404, align 4, !tbaa !343, !alias.scope !6744
  store <4 x i32> zeroinitializer, ptr %next.gep405, align 4, !tbaa !343, !alias.scope !6744
  %index.next414 = add nuw i64 %index401, 4       ; 2 uses
  %i.cm = icmp eq i64 %index.next414, %n.vec399
  br i1 %i.cm, label %middle.block415, label %vector.body400, !llvm.loop !6707

middle.block415:                                  ; preds = %vector.body400
  %cmp.n416 = icmp eq i64 %i.cc, %n.vec399
  br i1 %cmp.n416, label %_ZN5boost7movelib7move_opclIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_EET0_NS0_9forward_tET_SC_SA_.exit, label %.lr.ph.i.i.preheader544

.lr.ph.i.i.preheader544:                          ; preds = %vector.memcheck394, %.lr.ph.i.i.preheader, %middle.block415
  %.010.i.i.ph = phi ptr [ %.0114219, %vector.memcheck394 ], [ %.0114219, %.lr.ph.i.i.preheader ], [ %i.ci, %middle.block415 ]
  %.079.i.i.ph = phi ptr [ %i.am, %vector.memcheck394 ], [ %i.am, %.lr.ph.i.i.preheader ], [ %i.cj, %middle.block415 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader544, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.cs, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader544 ] ; 3 uses
  %.079.i.i = phi ptr [ %i.cr, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader544 ] ; 4 uses
  %i.cn = load i32, ptr %.079.i.i, align 4, !tbaa !343
  store i32 %i.cn, ptr %.010.i.i, align 4, !tbaa !343
  store i32 0, ptr %.079.i.i, align 4, !tbaa !343
  %i.co = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  %i.cq = load i32, ptr %i.co, align 4, !tbaa !343
  store i32 %i.cq, ptr %i.cp, align 4, !tbaa !343
  store i32 0, ptr %i.co, align 4, !tbaa !343
  %i.cr = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %.not.i.i = icmp eq ptr %i.cr, %i.al
  br i1 %.not.i.i, label %_ZN5boost7movelib7move_opclIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_EET0_NS0_9forward_tET_SC_SA_.exit, label %.lr.ph.i.i, !llvm.loop !6708

_ZN5boost7movelib7move_opclIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_EET0_NS0_9forward_tET_SC_SA_.exit: ; preds = %.lr.ph.i.i, %middle.block415, %bb.j
  store ptr %7, ptr %i.b, align 8, !tbaa !349
  %.not.i = icmp eq i64 %i.bi, 0
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPNS_9container3dtl4pairINS4_4test24movable_and_copyable_intES8_EESA_NS0_7move_opEEET1_T_SD_RSD_T0_SF_SF_SC_T2_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN5boost7movelib7move_opclIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_EET0_NS0_9forward_tET_SC_SA_.exit
  br i1 %.not2830.i, label %._crit_edge.i, label %.lr.ph.i125.preheader

.lr.ph.i125.preheader:                            ; preds = %.preheader.i
  br i1 %min.iters.check, label %.lr.ph.i125.preheader543, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i125.preheader
  %i.ct = mul i64 %indvar, %.idx208               ; 2 uses
  %i.cu = shl i64 %.022.lcssa.i, 3
  %i.cv = add i64 %i.cu, 8
  %i.cw = mul i64 %2, %i.cv
  %i.cx = getelementptr i8, ptr %i.ag, i64 %i.ct
  %i.cy = getelementptr i8, ptr %i.cx, i64 %i.cw  ; 4 uses
end_hunk_1
begin_hunk_2_@_ZN5boost7movelib15detail_adaptive27op_merge_left_step_multipleIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7swap_opEEENS0_9iter_sizeIT_E4typeESH_SJ_SJ_SJ_SJ_T0_T1_:bb.a
  %.sink.in.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %.sink.i = add i32 %.sink.in.i, -1
  store i32 %.sink.i, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.ac = getelementptr inbounds nuw i8, ptr %.02345.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %.1.i, %i.i
  br i1 %.not.i, label %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit.i, label %.lr.ph.i, !llvm.loop !14065

_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit.i: ; preds = %bb.f, %bb.b
  %.024.lcssa.i = phi ptr [ %.082, %bb.b ], [ %.125.i, %bb.f ] ; 3 uses
  %.023.lcssa.i = phi ptr [ %i.g, %bb.b ], [ %i.ac, %bb.f ] ; 2 uses
  %.not27.i = icmp eq ptr %.023.lcssa.i, %.024.lcssa.i
  %.not8.i.i28.i = icmp eq ptr %.024.lcssa.i, %i.h
  %or.cond38.i = or i1 %.not8.i.i28.i, %.not27.i
  br i1 %or.cond38.i, label %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SF_SF_SF_T0_T1_.exit, label %.lr.ph.i.i29.i

.lr.ph.i.i29.i:                                   ; preds = %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit.i, %.lr.ph.i.i29.i
  %.010.i.i30.i = phi ptr [ %i.ak, %.lr.ph.i.i29.i ], [ %.023.lcssa.i, %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit.i ] ; 3 uses
  %.079.i.i31.i = phi ptr [ %i.aj, %.lr.ph.i.i29.i ], [ %.024.lcssa.i, %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit.i ] ; 4 uses
  %i.ad = load i32, ptr %.079.i.i31.i, align 4, !tbaa !343
  store i32 0, ptr %.079.i.i31.i, align 4, !tbaa !343
  %i.ae = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.af = add i32 %i.ae, 1
  store i32 %i.af, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.ag = load i32, ptr %.010.i.i30.i, align 4, !tbaa !343
  store i32 %i.ag, ptr %.079.i.i31.i, align 4, !tbaa !343
  store i32 %i.ad, ptr %.010.i.i30.i, align 4, !tbaa !343
  %i.ah = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.ai = add i32 %i.ah, -1
  store i32 %i.ai, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.aj = getelementptr inbounds nuw i8, ptr %.079.i.i31.i, i64 4 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.010.i.i30.i, i64 4
  %.not.i.i32.i = icmp eq ptr %i.aj, %i.h
  br i1 %.not.i.i32.i, label %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SF_SF_SF_T0_T1_.exit, label %.lr.ph.i.i29.i, !llvm.loop !220

_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SF_SF_SF_T0_T1_.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i29.i, %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit.i
  %i.al = add i64 %.03981, %i.d                   ; 4 uses
  %.0.idx = shl nuw nsw i64 %i.al, 2              ; 2 uses
  %.0 = getelementptr inbounds nuw i8, ptr %.04188, i64 %.0.idx ; 2 uses
  %i.am = sub i64 %1, %i.al                       ; 2 uses
  %i.an = icmp ugt i64 %i.am, %i.d
  br i1 %i.an, label %bb.b, label %._crit_edge, !llvm.loop !14066

._crit_edge:                                      ; preds = %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SF_SF_SF_T0_T1_.exit, %.preheader
  %.039.lcssa = phi i64 [ 0, %.preheader ], [ %i.al, %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SF_SF_SF_T0_T1_.exit ]
  %.0.idx.lcssa = phi i64 [ 0, %.preheader ], [ %.0.idx, %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SF_SF_SF_T0_T1_.exit ]
  %.0.lcssa = phi ptr [ %.04188, %.preheader ], [ %.0, %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SF_SF_SF_T0_T1_.exit ] ; 6 uses
  %.lcssa77 = phi i64 [ %1, %.preheader ], [ %i.am, %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SF_SF_SF_T0_T1_.exit ]
  %i.ao = icmp ugt i64 %.lcssa77, %.04287
  br i1 %i.ao, label %bb.g, label %bb.l

bb.g:                                             ; preds = %._crit_edge
  %i.ap = sub i64 0, %.04287                      ; 4 uses
  %i.aq = getelementptr inbounds [4 x i8], ptr %.0.lcssa, i64 %i.ap ; 2 uses
  %.idx = shl nuw nsw i64 %.04287, 2              ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 %.idx ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.04188, i64 %.idx70 ; 2 uses
  %i.at = add nuw nsw i64 %.0.idx.lcssa, %.idx
  %.not43.i45 = icmp samesign eq i64 %i.at, %.idx70
  br i1 %.not43.i45, label %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit.i55, label %.lr.ph.i46

.lr.ph.i46:                                       ; preds = %bb.g, %bb.k
  %.02246.i47 = phi ptr [ %.1.i51, %bb.k ], [ %i.ar, %bb.g ] ; 6 uses
  %.02345.i48 = phi ptr [ %i.bn, %bb.k ], [ %i.aq, %bb.g ] ; 6 uses
  %.02444.i49 = phi ptr [ %.125.i50, %bb.k ], [ %.0.lcssa, %bb.g ] ; 6 uses
  %i.au = icmp eq ptr %.02444.i49, %i.ar
  br i1 %i.au, label %.lr.ph.i.i.i65, label %bb.h

.lr.ph.i.i.i65:                                   ; preds = %.lr.ph.i46, %.lr.ph.i.i.i65
  %.010.i.i.i66 = phi ptr [ %i.bc, %.lr.ph.i.i.i65 ], [ %.02345.i48, %.lr.ph.i46 ] ; 3 uses
  %.079.i.i.i67 = phi ptr [ %i.bb, %.lr.ph.i.i.i65 ], [ %.02246.i47, %.lr.ph.i46 ] ; 4 uses
  %i.av = load i32, ptr %.079.i.i.i67, align 4, !tbaa !343
  store i32 0, ptr %.079.i.i.i67, align 4, !tbaa !343
  %i.aw = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.ax = add i32 %i.aw, 1
  store i32 %i.ax, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.ay = load i32, ptr %.010.i.i.i66, align 4, !tbaa !343
  store i32 %i.ay, ptr %.079.i.i.i67, align 4, !tbaa !343
  store i32 %i.av, ptr %.010.i.i.i66, align 4, !tbaa !343
  %i.az = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.ba = add i32 %i.az, -1
  store i32 %i.ba, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.bb = getelementptr inbounds nuw i8, ptr %.079.i.i.i67, i64 4 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.010.i.i.i66, i64 4
  %.not.i.i.i68 = icmp eq ptr %i.bb, %i.as
  br i1 %.not.i.i.i68, label %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SF_SF_SF_T0_T1_.exit69, label %.lr.ph.i.i.i65, !llvm.loop !220

bb.h:                                             ; preds = %.lr.ph.i46
  %i.bd = load i32, ptr %.02246.i47, align 4, !tbaa !343
  %i.be = load i32, ptr %.02444.i49, align 4, !tbaa !343
  %i.bf = icmp slt i32 %i.bd, %i.be
  %i.bg = load i32, ptr %.02345.i48, align 4, !tbaa !343 ; 2 uses
  store i32 0, ptr %.02345.i48, align 4, !tbaa !343
  %i.bh = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.bi = add i32 %i.bh, 1
  store i32 %i.bi, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  br i1 %i.bf, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bj = load i32, ptr %.02246.i47, align 4, !tbaa !343
  store i32 %i.bj, ptr %.02345.i48, align 4, !tbaa !343
  store i32 %i.bg, ptr %.02246.i47, align 4, !tbaa !343
  %i.bk = getelementptr inbounds nuw i8, ptr %.02246.i47, i64 4
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.bl = load i32, ptr %.02444.i49, align 4, !tbaa !343
  store i32 %i.bl, ptr %.02345.i48, align 4, !tbaa !343
  store i32 %i.bg, ptr %.02444.i49, align 4, !tbaa !343
  %i.bm = getelementptr inbounds nuw i8, ptr %.02444.i49, i64 4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.125.i50 = phi ptr [ %.02444.i49, %bb.i ], [ %i.bm, %bb.j ] ; 2 uses
  %.1.i51 = phi ptr [ %i.bk, %bb.i ], [ %.02246.i47, %bb.j ] ; 2 uses
  %.sink.in.i52 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %.sink.i53 = add i32 %.sink.in.i52, -1
  store i32 %.sink.i53, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.bn = getelementptr inbounds nuw i8, ptr %.02345.i48, i64 4 ; 2 uses
  %.not.i54 = icmp eq ptr %.1.i51, %i.as
  br i1 %.not.i54, label %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit.i55, label %.lr.ph.i46, !llvm.loop !14065

_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit.i55: ; preds = %bb.k, %bb.g
  %.024.lcssa.i56 = phi ptr [ %.0.lcssa, %bb.g ], [ %.125.i50, %bb.k ] ; 3 uses
  %.023.lcssa.i57 = phi ptr [ %i.aq, %bb.g ], [ %i.bn, %bb.k ] ; 2 uses
  %.not27.i58 = icmp eq ptr %.023.lcssa.i57, %.024.lcssa.i56
  %.not8.i.i28.i59 = icmp eq ptr %.024.lcssa.i56, %i.ar
  %or.cond38.i60 = or i1 %.not8.i.i28.i59, %.not27.i58
  br i1 %or.cond38.i60, label %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SF_SF_SF_T0_T1_.exit69, label %.lr.ph.i.i29.i61

.lr.ph.i.i29.i61:                                 ; preds = %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit.i55, %.lr.ph.i.i29.i61
  %.010.i.i30.i62 = phi ptr [ %i.bv, %.lr.ph.i.i29.i61 ], [ %.023.lcssa.i57, %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit.i55 ] ; 3 uses
  %.079.i.i31.i63 = phi ptr [ %i.bu, %.lr.ph.i.i29.i61 ], [ %.024.lcssa.i56, %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit.i55 ] ; 4 uses
  %i.bo = load i32, ptr %.079.i.i31.i63, align 4, !tbaa !343
  store i32 0, ptr %.079.i.i31.i63, align 4, !tbaa !343
  %i.bp = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.bq = add i32 %i.bp, 1
  store i32 %i.bq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.br = load i32, ptr %.010.i.i30.i62, align 4, !tbaa !343
  store i32 %i.br, ptr %.079.i.i31.i63, align 4, !tbaa !343
  store i32 %i.bo, ptr %.010.i.i30.i62, align 4, !tbaa !343
  %i.bs = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.bt = add i32 %i.bs, -1
  store i32 %i.bt, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.bu = getelementptr inbounds nuw i8, ptr %.079.i.i31.i63, i64 4 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.010.i.i30.i62, i64 4
  %.not.i.i32.i64 = icmp eq ptr %i.bu, %i.ar
  br i1 %.not.i.i32.i64, label %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SF_SF_SF_T0_T1_.exit69, label %.lr.ph.i.i29.i61, !llvm.loop !220

bb.l:                                             ; preds = %._crit_edge
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %.04188, i64 %1
  %i.bx = sub i64 0, %.04287                      ; 3 uses
  %.not8.i.i = icmp samesign eq i64 %.039.lcssa, %1
  br i1 %.not8.i.i, label %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SF_SF_SF_T0_T1_.exit69, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.l
  %i.by = getelementptr inbounds [4 x i8], ptr %.0.lcssa, i64 %i.bx
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.cg, %.lr.ph.i.i ], [ %i.by, %.lr.ph.i.i.preheader ] ; 3 uses
  %.079.i.i = phi ptr [ %i.cf, %.lr.ph.i.i ], [ %.0.lcssa, %.lr.ph.i.i.preheader ] ; 4 uses
  %i.bz = load i32, ptr %.079.i.i, align 4, !tbaa !343
  store i32 0, ptr %.079.i.i, align 4, !tbaa !343
  %i.ca = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.cb = add i32 %i.ca, 1
  store i32 %i.cb, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.cc = load i32, ptr %.010.i.i, align 4, !tbaa !343
  store i32 %i.cc, ptr %.079.i.i, align 4, !tbaa !343
  store i32 %i.bz, ptr %.010.i.i, align 4, !tbaa !343
  %i.cd = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.ce = add i32 %i.cd, -1
  store i32 %i.ce, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.cf = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  %.not.i.i = icmp eq ptr %i.cf, %i.bw
  br i1 %.not.i.i, label %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SF_SF_SF_T0_T1_.exit69, label %.lr.ph.i.i, !llvm.loop !220

_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SF_SF_SF_T0_T1_.exit69: ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i65, %.lr.ph.i.i29.i61, %bb.l, %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit.i55
  %.pre-phi = phi i64 [ %i.ap, %.lr.ph.i.i.i65 ], [ %i.ap, %.lr.ph.i.i29.i61 ], [ %i.ap, %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit.i55 ], [ %i.bx, %bb.l ], [ %i.bx, %.lr.ph.i.i ]
  %i.ch = getelementptr inbounds [4 x i8], ptr %.04188, i64 %.pre-phi
  %i.ci = sub nuw i64 %.04089, %.04287            ; 2 uses
  %i.cj = icmp ult i64 %i.d, %3
  %i.ck = icmp uge i64 %i.ci, %i.d
  %i.cl = select i1 %i.cj, i1 %i.ck, i1 false
  br i1 %i.cl, label %.preheader, label %._crit_edge90, !llvm.loop !14067

._crit_edge90:                                    ; preds = %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SF_SF_SF_T0_T1_.exit69, %bb.a
  %.042.lcssa = phi i64 [ %2, %bb.a ], [ %i.d, %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SF_SF_SF_T0_T1_.exit69 ]
  ret i64 %.042.lcssa
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive24op_merge_right_step_onceIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEEvT_NS0_9iter_sizeISG_E4typeESJ_T0_T1_(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 8 uses
  %i.b = shl i64 %2, 1                            ; 9 uses
  %i.c = urem i64 %1, %i.b                        ; 3 uses
  %i.d = udiv i64 %1, %i.b                        ; 2 uses
  %i.e = sub nuw i64 %1, %i.c                     ; 4 uses
  %.not = icmp ugt i64 %i.c, %2
  %i.f = getelementptr [4 x i8], ptr %0, i64 %i.e ; 6 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not8.i.i = icmp eq i64 %i.c, 0
  br i1 %.not8.i.i, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_10backward_tET_S9_S7_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %i.g = getelementptr [4 x i8], ptr %0, i64 %1   ; 6 uses
  %i.h = getelementptr [4 x i8], ptr %i.g, i64 %2 ; 5 uses
  %i.i = shl i64 %1, 2
  %i.j = udiv i64 %1, %i.b                        ; 2 uses
  %i.k = mul i64 %2, %i.j
  %i.l = shl i64 %i.k, 3
  %i.m = add i64 %i.i, -4
  %i.n = sub i64 %i.m, %i.l                       ; 2 uses
  %i.o = lshr exact i64 %i.n, 2
  %i.p = add nuw nsw i64 %i.o, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.n, 476
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader315, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.q = shl i64 %i.j, 3
  %i.r = or disjoint i64 %i.q, 4
  %i.s = mul i64 %2, %i.r
  %i.t = getelementptr i8, ptr %0, i64 %i.s
  %bound0 = icmp ult ptr %i.t, %i.g
  %bound1 = icmp ult ptr %i.f, %i.h
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader315, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.p, 9223372036854775800      ; 3 uses
  %i.u = mul i64 %n.vec, -4                       ; 2 uses
  %i.v = getelementptr i8, ptr %i.h, i64 %i.u
  %i.w = getelementptr i8, ptr %i.g, i64 %i.u
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.x = mul i64 %index, -4                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.h, i64 %i.x ; 2 uses
  %next.gep138 = getelementptr i8, ptr %i.g, i64 %i.x ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %next.gep138, i64 -16 ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %next.gep138, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.y, align 4, !tbaa !343, !alias.scope !14100
  %wide.load139 = load <4 x i32>, ptr %i.z, align 4, !tbaa !343, !alias.scope !14100
  %i.aa = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.ab = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.aa, align 4, !tbaa !343, !alias.scope !14101, !noalias !14100
  store <4 x i32> %wide.load139, ptr %i.ab, align 4, !tbaa !343, !alias.scope !14101, !noalias !14100
  store <4 x i32> zeroinitializer, ptr %i.y, align 4, !tbaa !343, !alias.scope !14100
  store <4 x i32> zeroinitializer, ptr %i.z, align 4, !tbaa !343, !alias.scope !14100
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !14071

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_10backward_tET_S9_S7_.exit, label %.lr.ph.i.i.preheader315

.lr.ph.i.i.preheader315:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %i.h, %vector.memcheck ], [ %i.h, %.lr.ph.i.i.preheader ], [ %i.v, %middle.block ]
  %.079.i.i.ph = phi ptr [ %i.g, %vector.memcheck ], [ %i.g, %.lr.ph.i.i.preheader ], [ %i.w, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader315, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.ae, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader315 ]
  %.079.i.i = phi ptr [ %i.ad, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader315 ]
  %i.ad = getelementptr inbounds i8, ptr %.079.i.i, i64 -4 ; 4 uses
  %i.ae = getelementptr inbounds i8, ptr %.010.i.i, i64 -4 ; 2 uses
  %i.af = load i32, ptr %i.ad, align 4, !tbaa !343
  store i32 %i.af, ptr %i.ae, align 4, !tbaa !343
  store i32 0, ptr %i.ad, align 4, !tbaa !343
  %.not.i.i = icmp eq ptr %i.f, %i.ad
  br i1 %.not.i.i, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_10backward_tET_S9_S7_.exit, label %.lr.ph.i.i, !llvm.loop !14072

bb.c:                                             ; preds = %bb.a
  %.idx67 = shl i64 %2, 2
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx67 ; 4 uses
  %i.ah = getelementptr [4 x i8], ptr %0, i64 %1  ; 3 uses
  %i.ai = getelementptr [4 x i8], ptr %i.ah, i64 %2 ; 2 uses
  %.not40.i = icmp eq i64 %2, 0
  br i1 %.not40.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.g
  %indvar = phi i64 [ %indvar.next, %bb.g ], [ 0, %bb.c ] ; 2 uses
  %.043.i = phi ptr [ %i.bs, %bb.g ], [ %i.ai, %bb.c ] ; 6 uses
  %.02442.i = phi ptr [ %.1.i, %bb.g ], [ %i.ah, %bb.c ] ; 3 uses
  %.02541.i = phi ptr [ %.126.i, %bb.g ], [ %i.ag, %bb.c ] ; 9 uses
  %i.aj = icmp eq ptr %.02442.i, %i.ag
  br i1 %i.aj, label %.lr.ph.i.i.i.preheader, label %bb.d

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i
  %.02541.i149 = ptrtoaddr ptr %.02541.i to i64
  %i.ak = udiv i64 %1, %i.b
  %i.al = mul i64 %2, %i.ak                       ; 2 uses
  %i.am = shl i64 %i.al, 3
  %i.an = add i64 %.02541.i149, -4                ; 2 uses
  %i.ao = add i64 %i.am, %i.a
  %i.ap = sub i64 %i.an, %i.ao                    ; 2 uses
  %i.aq = lshr i64 %i.ap, 2
  %i.ar = add nuw nsw i64 %i.aq, 1                ; 2 uses
  %min.iters.check151 = icmp ult i64 %i.ap, 588
  br i1 %min.iters.check151, label %.lr.ph.i.i.i.preheader309, label %vector.memcheck152

vector.memcheck152:                               ; preds = %.lr.ph.i.i.i.preheader
  %.idx67292 = add i64 %2, %1
  %i.as = shl i64 %.idx67292, 2
  %i.at = add i64 %i.as, -4
  %i.au = shl i64 %indvar, 2
  %i.av = shl i64 %i.al, 3
  %i.aw = add i64 %i.av, %i.a
  %i.ax = sub i64 %i.an, %i.aw
  %i.ay = and i64 %i.ax, -4                       ; 2 uses
  %i.az = add i64 %i.au, %i.ay
  %i.ba = sub i64 %i.at, %i.az
  %i.bb = getelementptr i8, ptr %0, i64 %i.ba
  %i.bc = sub nuw nsw i64 -4, %i.ay
  %i.bd = getelementptr i8, ptr %.02541.i, i64 %i.bc
  %bound0153 = icmp ult ptr %i.bb, %.02541.i
  %bound1154 = icmp ult ptr %i.bd, %.043.i
  %found.conflict155 = and i1 %bound0153, %bound1154
  br i1 %found.conflict155, label %.lr.ph.i.i.i.preheader309, label %vector.ph156

vector.ph156:                                     ; preds = %vector.memcheck152
  %n.vec157 = and i64 %i.ar, 9223372036854775800  ; 3 uses
  %i.be = mul i64 %n.vec157, -4                   ; 2 uses
  %i.bf = getelementptr i8, ptr %.043.i, i64 %i.be
  %i.bg = getelementptr i8, ptr %.02541.i, i64 %i.be
  br label %vector.body158

vector.body158:                                   ; preds = %vector.body158, %vector.ph156
  %index159 = phi i64 [ 0, %vector.ph156 ], [ %index.next164, %vector.body158 ] ; 2 uses
  %i.bh = mul i64 %index159, -4                   ; 2 uses
  %next.gep160 = getelementptr i8, ptr %.043.i, i64 %i.bh ; 2 uses
  %next.gep161 = getelementptr i8, ptr %.02541.i, i64 %i.bh ; 2 uses
  %i.bi = getelementptr inbounds i8, ptr %next.gep161, i64 -16 ; 2 uses
  %i.bj = getelementptr inbounds i8, ptr %next.gep161, i64 -32 ; 2 uses
  %wide.load162 = load <4 x i32>, ptr %i.bi, align 4, !tbaa !343, !alias.scope !14102
  %wide.load163 = load <4 x i32>, ptr %i.bj, align 4, !tbaa !343, !alias.scope !14102
  %i.bk = getelementptr inbounds i8, ptr %next.gep160, i64 -16
  %i.bl = getelementptr inbounds i8, ptr %next.gep160, i64 -32
  store <4 x i32> %wide.load162, ptr %i.bk, align 4, !tbaa !343, !alias.scope !14103, !noalias !14102
  store <4 x i32> %wide.load163, ptr %i.bl, align 4, !tbaa !343, !alias.scope !14103, !noalias !14102
  store <4 x i32> zeroinitializer, ptr %i.bi, align 4, !tbaa !343, !alias.scope !14102
  store <4 x i32> zeroinitializer, ptr %i.bj, align 4, !tbaa !343, !alias.scope !14102
  %index.next164 = add nuw i64 %index159, 8       ; 2 uses
  %i.bm = icmp eq i64 %index.next164, %n.vec157
  br i1 %i.bm, label %middle.block165, label %vector.body158, !llvm.loop !14076

middle.block165:                                  ; preds = %vector.body158
  %cmp.n166 = icmp eq i64 %i.ar, %n.vec157
  br i1 %cmp.n166, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_10backward_tET_S9_S7_.exit, label %.lr.ph.i.i.i.preheader309

.lr.ph.i.i.i.preheader309:                        ; preds = %vector.memcheck152, %.lr.ph.i.i.i.preheader, %middle.block165
  %.010.i.i.i.ph = phi ptr [ %.043.i, %vector.memcheck152 ], [ %.043.i, %.lr.ph.i.i.i.preheader ], [ %i.bf, %middle.block165 ]
  %.079.i.i.i.ph = phi ptr [ %.02541.i, %vector.memcheck152 ], [ %.02541.i, %.lr.ph.i.i.i.preheader ], [ %i.bg, %middle.block165 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader309, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.bo, %.lr.ph.i.i.i ], [ %.010.i.i.i.ph, %.lr.ph.i.i.i.preheader309 ]
  %.079.i.i.i = phi ptr [ %i.bn, %.lr.ph.i.i.i ], [ %.079.i.i.i.ph, %.lr.ph.i.i.i.preheader309 ]
  %i.bn = getelementptr inbounds i8, ptr %.079.i.i.i, i64 -4 ; 4 uses
  %i.bo = getelementptr inbounds i8, ptr %.010.i.i.i, i64 -4 ; 2 uses
  %i.bp = load i32, ptr %i.bn, align 4, !tbaa !343
  store i32 %i.bp, ptr %i.bo, align 4, !tbaa !343
  store i32 0, ptr %i.bn, align 4, !tbaa !343
  %.not.i.i.i = icmp eq ptr %i.f, %i.bn
  br i1 %.not.i.i.i, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_10backward_tET_S9_S7_.exit, label %.lr.ph.i.i.i, !llvm.loop !14077

bb.d:                                             ; preds = %.lr.ph.i
  %i.bq = getelementptr inbounds i8, ptr %.02442.i, i64 -4 ; 3 uses
  %i.br = getelementptr inbounds i8, ptr %.02541.i, i64 -4 ; 3 uses
  %i.bs = getelementptr i8, ptr %.043.i, i64 -4   ; 4 uses
  %i.bt = load i32, ptr %i.bq, align 4, !tbaa !343 ; 2 uses
  %i.bu = load i32, ptr %i.br, align 4, !tbaa !343 ; 2 uses
  %i.bv = icmp slt i32 %i.bt, %i.bu
  br i1 %i.bv, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 %i.bu, ptr %i.bs, align 4, !tbaa !343
  store i32 0, ptr %i.br, align 4, !tbaa !343
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  store i32 %i.bt, ptr %i.bs, align 4, !tbaa !343
  store i32 0, ptr %i.bq, align 4, !tbaa !343
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.126.i = phi ptr [ %i.br, %bb.e ], [ %.02541.i, %bb.f ] ; 2 uses
  %.1.i = phi ptr [ %.02442.i, %bb.e ], [ %i.bq, %bb.f ] ; 2 uses
  %.not.i = icmp eq ptr %i.f, %.126.i
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !14078

._crit_edge.i:                                    ; preds = %bb.g, %bb.c
  %.024.lcssa.i = phi ptr [ %i.ah, %bb.c ], [ %.1.i, %bb.g ] ; 9 uses
  %.0.lcssa.i = phi ptr [ %i.ai, %bb.c ], [ %i.bs, %bb.g ] ; 7 uses
  %.not28.i = icmp eq ptr %.024.lcssa.i, %.0.lcssa.i
  %.not8.i.i29.i = icmp eq ptr %i.ag, %.024.lcssa.i
  %or.cond.i = or i1 %.not8.i.i29.i, %.not28.i
  br i1 %or.cond.i, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_10backward_tET_S9_S7_.exit, label %.lr.ph.i.i30.i.preheader

.lr.ph.i.i30.i.preheader:                         ; preds = %._crit_edge.i
  %.024.lcssa.i175 = ptrtoaddr ptr %.024.lcssa.i to i64 ; 2 uses
  %i.bw = udiv i64 %1, %i.b                       ; 2 uses
  %i.bx = shl i64 %i.bw, 3
  %i.by = or disjoint i64 %i.bx, 4
  %i.bz = mul i64 %2, %i.by
  %i.ca = add i64 %.024.lcssa.i175, -4
  %i.cb = add i64 %i.bz, %i.a
  %i.cc = sub i64 %i.ca, %i.cb                    ; 2 uses
  %i.cd = lshr i64 %i.cc, 2
  %i.ce = add nuw nsw i64 %i.cd, 1                ; 2 uses
  %min.iters.check177 = icmp ult i64 %i.cc, 540
  br i1 %min.iters.check177, label %.lr.ph.i.i30.i.preheader308, label %vector.memcheck178

vector.memcheck178:                               ; preds = %.lr.ph.i.i30.i.preheader
  %i.cf = shl i64 %i.bw, 3
  %i.cg = or disjoint i64 %i.cf, 4
  %i.ch = mul i64 %2, %i.cg
  %i.ci = add i64 %i.ch, %i.a
  %reass.sub = sub i64 %i.ci, %.024.lcssa.i175
  %.not293 = add i64 %reass.sub, 3
  %i.cj = and i64 %.not293, -4                    ; 2 uses
  %i.ck = getelementptr i8, ptr %.0.lcssa.i, i64 %i.cj
  %i.cl = getelementptr i8, ptr %.024.lcssa.i, i64 %i.cj
  %bound0179 = icmp ult ptr %i.ck, %.024.lcssa.i
  %bound1180 = icmp ult ptr %i.cl, %.0.lcssa.i
  %found.conflict181 = and i1 %bound0179, %bound1180
  br i1 %found.conflict181, label %.lr.ph.i.i30.i.preheader308, label %vector.ph182

vector.ph182:                                     ; preds = %vector.memcheck178
  %n.vec183 = and i64 %i.ce, 9223372036854775800  ; 3 uses
  %i.cm = mul i64 %n.vec183, -4                   ; 2 uses
  %i.cn = getelementptr i8, ptr %.0.lcssa.i, i64 %i.cm
  %i.co = getelementptr i8, ptr %.024.lcssa.i, i64 %i.cm
  br label %vector.body184

vector.body184:                                   ; preds = %vector.body184, %vector.ph182
  %index185 = phi i64 [ 0, %vector.ph182 ], [ %index.next190, %vector.body184 ] ; 2 uses
  %i.cp = mul i64 %index185, -4                   ; 2 uses
  %next.gep186 = getelementptr i8, ptr %.0.lcssa.i, i64 %i.cp ; 2 uses
  %next.gep187 = getelementptr i8, ptr %.024.lcssa.i, i64 %i.cp ; 2 uses
  %i.cq = getelementptr inbounds i8, ptr %next.gep187, i64 -16 ; 2 uses
  %i.cr = getelementptr inbounds i8, ptr %next.gep187, i64 -32 ; 2 uses
  %wide.load188 = load <4 x i32>, ptr %i.cq, align 4, !tbaa !343, !alias.scope !14104
  %wide.load189 = load <4 x i32>, ptr %i.cr, align 4, !tbaa !343, !alias.scope !14104
  %i.cs = getelementptr inbounds i8, ptr %next.gep186, i64 -16
  %i.ct = getelementptr inbounds i8, ptr %next.gep186, i64 -32
  store <4 x i32> %wide.load188, ptr %i.cs, align 4, !tbaa !343, !alias.scope !14105, !noalias !14104
  store <4 x i32> %wide.load189, ptr %i.ct, align 4, !tbaa !343, !alias.scope !14105, !noalias !14104
  store <4 x i32> zeroinitializer, ptr %i.cq, align 4, !tbaa !343, !alias.scope !14104
  store <4 x i32> zeroinitializer, ptr %i.cr, align 4, !tbaa !343, !alias.scope !14104
  %index.next190 = add nuw i64 %index185, 8       ; 2 uses
  %i.cu = icmp eq i64 %index.next190, %n.vec183
  br i1 %i.cu, label %middle.block191, label %vector.body184, !llvm.loop !14082

middle.block191:                                  ; preds = %vector.body184
  %cmp.n192 = icmp eq i64 %i.ce, %n.vec183
  br i1 %cmp.n192, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_10backward_tET_S9_S7_.exit, label %.lr.ph.i.i30.i.preheader308

.lr.ph.i.i30.i.preheader308:                      ; preds = %vector.memcheck178, %.lr.ph.i.i30.i.preheader, %middle.block191
  %.010.i.i31.i.ph = phi ptr [ %.0.lcssa.i, %vector.memcheck178 ], [ %.0.lcssa.i, %.lr.ph.i.i30.i.preheader ], [ %i.cn, %middle.block191 ]
  %.079.i.i32.i.ph = phi ptr [ %.024.lcssa.i, %vector.memcheck178 ], [ %.024.lcssa.i, %.lr.ph.i.i30.i.preheader ], [ %i.co, %middle.block191 ]
  br label %.lr.ph.i.i30.i

.lr.ph.i.i30.i:                                   ; preds = %.lr.ph.i.i30.i.preheader308, %.lr.ph.i.i30.i
  %.010.i.i31.i = phi ptr [ %i.cw, %.lr.ph.i.i30.i ], [ %.010.i.i31.i.ph, %.lr.ph.i.i30.i.preheader308 ]
  %.079.i.i32.i = phi ptr [ %i.cv, %.lr.ph.i.i30.i ], [ %.079.i.i32.i.ph, %.lr.ph.i.i30.i.preheader308 ]
  %i.cv = getelementptr inbounds i8, ptr %.079.i.i32.i, i64 -4 ; 4 uses
  %i.cw = getelementptr inbounds i8, ptr %.010.i.i31.i, i64 -4 ; 2 uses
  %i.cx = load i32, ptr %i.cv, align 4, !tbaa !343
  store i32 %i.cx, ptr %i.cw, align 4, !tbaa !343
  store i32 0, ptr %i.cv, align 4, !tbaa !343
  %.not.i.i33.i = icmp eq ptr %i.ag, %i.cv
  br i1 %.not.i.i33.i, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_10backward_tET_S9_S7_.exit, label %.lr.ph.i.i30.i, !llvm.loop !14083

_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_10backward_tET_S9_S7_.exit: ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i, %.lr.ph.i.i30.i, %middle.block, %middle.block165, %middle.block191, %._crit_edge.i, %bb.b
  %.not4377 = icmp eq i64 %i.e, 0
  br i1 %.not4377, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_10backward_tET_S9_S7_.exit
  %.idx68 = shl i64 %2, 2                         ; 2 uses
  %.idx = mul i64 %2, 12                          ; 2 uses
  %.not40.i44 = icmp eq i64 %.idx68, 0
  br i1 %.not40.i44, label %._crit_edge.i52.us, label %.lr.ph.i45.preheader.preheader

.lr.ph.i45.preheader.preheader:                   ; preds = %.lr.ph
  %i.cy = shl i64 %2, 3                           ; 2 uses
  %i.cz = mul i64 %2, -8                          ; 2 uses
  %i.da = shl i64 %2, 3
  %i.db = shl i64 %2, 3
  br label %.lr.ph.i45.preheader

._crit_edge.i52.us:                               ; preds = %.lr.ph, %_ZN5boost7movelib14op_merge_rightIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7move_opEEEvT_SF_SF_SF_T0_T1_.exit66.us
  %.078.us = phi i64 [ %i.dc, %_ZN5boost7movelib14op_merge_rightIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7move_opEEEvT_SF_SF_SF_T0_T1_.exit66.us ], [ %i.e, %.lr.ph ] ; 2 uses
  %i.dc = sub i64 %.078.us, %i.b                  ; 3 uses
  %.idx80 = shl nuw nsw i64 %i.dc, 2              ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 %.idx80 ; 2 uses
  %.idx79 = shl nuw nsw i64 %.078.us, 2           ; 2 uses
  %.not28.i55.us = icmp eq i64 %.idx79, %.idx80
  br i1 %.not28.i55.us, label %_ZN5boost7movelib14op_merge_rightIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7move_opEEEvT_SF_SF_SF_T0_T1_.exit66.us, label %.lr.ph.i.i30.i58.us.preheader

.lr.ph.i.i30.i58.us.preheader:                    ; preds = %._crit_edge.i52.us
  %i.de = getelementptr i8, ptr %i.dd, i64 %.idx  ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 %.idx79 ; 2 uses
  %i.dg = udiv i64 %1, %i.b
  %i.dh = shl nuw nsw i64 %i.dg, 3                ; 3 uses
  %i.di = add nsw i64 %i.dh, -4
  %3 = mul i64 %2, %i.di
  %4 = getelementptr i8, ptr %0, i64 %3
  %5 = or disjoint i64 %i.dh, 4
  %i.dj = mul i64 %2, %5
  %i.dk = getelementptr i8, ptr %0, i64 %i.dj
  %i.dl = add nsw i64 %i.dh, -8
  %i.dm = mul i64 %2, %i.dl
  %i.dn = getelementptr i8, ptr %0, i64 %i.dm
  %bound0276 = icmp ult ptr %4, %i.f
  %bound1277 = icmp ult ptr %i.dn, %i.dk
  %found.conflict278 = and i1 %bound0276, %bound1277
  br i1 %found.conflict278, label %.lr.ph.i.i30.i58.us, label %vector.body281

vector.body281:                                   ; preds = %.lr.ph.i.i30.i58.us.preheader, %vector.body281
  %index282 = phi i64 [ %index.next287, %vector.body281 ], [ 0, %.lr.ph.i.i30.i58.us.preheader ] ; 2 uses
  %i.do = mul i64 %index282, -4                   ; 2 uses
  %next.gep283 = getelementptr i8, ptr %i.de, i64 %i.do ; 2 uses
  %next.gep284 = getelementptr i8, ptr %i.df, i64 %i.do ; 2 uses
  %i.dp = getelementptr inbounds i8, ptr %next.gep284, i64 -16 ; 2 uses
  %i.dq = getelementptr inbounds i8, ptr %next.gep284, i64 -32 ; 2 uses
  %wide.load285 = load <4 x i32>, ptr %i.dp, align 4, !tbaa !343, !alias.scope !14106
  %wide.load286 = load <4 x i32>, ptr %i.dq, align 4, !tbaa !343, !alias.scope !14106
  %i.dr = getelementptr inbounds i8, ptr %next.gep283, i64 -16
  %i.ds = getelementptr inbounds i8, ptr %next.gep283, i64 -32
  store <4 x i32> %wide.load285, ptr %i.dr, align 4, !tbaa !343, !alias.scope !14107, !noalias !14106
  store <4 x i32> %wide.load286, ptr %i.ds, align 4, !tbaa !343, !alias.scope !14107, !noalias !14106
  store <4 x i32> zeroinitializer, ptr %i.dp, align 4, !tbaa !343, !alias.scope !14106
  store <4 x i32> zeroinitializer, ptr %i.dq, align 4, !tbaa !343, !alias.scope !14106
  %index.next287 = add nuw i64 %index282, 8       ; 2 uses
  %i.dt = icmp eq i64 %index.next287, 4611686018427387904
  br i1 %i.dt, label %_ZN5boost7movelib14op_merge_rightIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7move_opEEEvT_SF_SF_SF_T0_T1_.exit66.us, label %vector.body281, !llvm.loop !14087

.lr.ph.i.i30.i58.us:                              ; preds = %.lr.ph.i.i30.i58.us.preheader, %.lr.ph.i.i30.i58.us
  %.010.i.i31.i59.us = phi ptr [ %i.eq, %.lr.ph.i.i30.i58.us ], [ %i.de, %.lr.ph.i.i30.i58.us.preheader ] ; 8 uses
  %.079.i.i32.i60.us = phi ptr [ %i.ep, %.lr.ph.i.i30.i58.us ], [ %i.df, %.lr.ph.i.i30.i58.us.preheader ] ; 8 uses
  %i.du = getelementptr inbounds i8, ptr %.079.i.i32.i60.us, i64 -4 ; 2 uses
  %i.dv = getelementptr inbounds i8, ptr %.010.i.i31.i59.us, i64 -4
  %i.dw = load i32, ptr %i.du, align 4, !tbaa !343
  store i32 %i.dw, ptr %i.dv, align 4, !tbaa !343
  store i32 0, ptr %i.du, align 4, !tbaa !343
  %i.dx = getelementptr inbounds i8, ptr %.079.i.i32.i60.us, i64 -8 ; 2 uses
  %i.dy = getelementptr inbounds i8, ptr %.010.i.i31.i59.us, i64 -8
  %i.dz = load i32, ptr %i.dx, align 4, !tbaa !343
  store i32 %i.dz, ptr %i.dy, align 4, !tbaa !343
  store i32 0, ptr %i.dx, align 4, !tbaa !343
  %i.ea = getelementptr inbounds i8, ptr %.079.i.i32.i60.us, i64 -12 ; 2 uses
  %i.eb = getelementptr inbounds i8, ptr %.010.i.i31.i59.us, i64 -12
  %i.ec = load i32, ptr %i.ea, align 4, !tbaa !343
  store i32 %i.ec, ptr %i.eb, align 4, !tbaa !343
  store i32 0, ptr %i.ea, align 4, !tbaa !343
  %i.ed = getelementptr inbounds i8, ptr %.079.i.i32.i60.us, i64 -16 ; 2 uses
  %i.ee = getelementptr inbounds i8, ptr %.010.i.i31.i59.us, i64 -16
  %i.ef = load i32, ptr %i.ed, align 4, !tbaa !343
  store i32 %i.ef, ptr %i.ee, align 4, !tbaa !343
  store i32 0, ptr %i.ed, align 4, !tbaa !343
  %i.eg = getelementptr inbounds i8, ptr %.079.i.i32.i60.us, i64 -20 ; 2 uses
  %i.eh = getelementptr inbounds i8, ptr %.010.i.i31.i59.us, i64 -20
  %i.ei = load i32, ptr %i.eg, align 4, !tbaa !343
  store i32 %i.ei, ptr %i.eh, align 4, !tbaa !343
  store i32 0, ptr %i.eg, align 4, !tbaa !343
  %i.ej = getelementptr inbounds i8, ptr %.079.i.i32.i60.us, i64 -24 ; 2 uses
  %i.ek = getelementptr inbounds i8, ptr %.010.i.i31.i59.us, i64 -24
  %i.el = load i32, ptr %i.ej, align 4, !tbaa !343
  store i32 %i.el, ptr %i.ek, align 4, !tbaa !343
  store i32 0, ptr %i.ej, align 4, !tbaa !343
  %i.em = getelementptr inbounds i8, ptr %.079.i.i32.i60.us, i64 -28 ; 2 uses
  %i.en = getelementptr inbounds i8, ptr %.010.i.i31.i59.us, i64 -28
  %i.eo = load i32, ptr %i.em, align 4, !tbaa !343
  store i32 %i.eo, ptr %i.en, align 4, !tbaa !343
  store i32 0, ptr %i.em, align 4, !tbaa !343
  %i.ep = getelementptr inbounds i8, ptr %.079.i.i32.i60.us, i64 -32 ; 4 uses
  %i.eq = getelementptr inbounds i8, ptr %.010.i.i31.i59.us, i64 -32 ; 2 uses
  %i.er = load i32, ptr %i.ep, align 4, !tbaa !343
  store i32 %i.er, ptr %i.eq, align 4, !tbaa !343
  store i32 0, ptr %i.ep, align 4, !tbaa !343
  %.not.i.i33.i61.us.7 = icmp eq ptr %i.dd, %i.ep
  br i1 %.not.i.i33.i61.us.7, label %_ZN5boost7movelib14op_merge_rightIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7move_opEEEvT_SF_SF_SF_T0_T1_.exit66.us, label %.lr.ph.i.i30.i58.us, !llvm.loop !14088

_ZN5boost7movelib14op_merge_rightIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7move_opEEEvT_SF_SF_SF_T0_T1_.exit66.us: ; preds = %vector.body281, %.lr.ph.i.i30.i58.us, %._crit_edge.i52.us
  %.not43.us = icmp eq i64 %i.dc, 0
  br i1 %.not43.us, label %._crit_edge, label %._crit_edge.i52.us, !llvm.loop !14089

.lr.ph.i45.preheader:                             ; preds = %.lr.ph.i45.preheader.preheader, %_ZN5boost7movelib14op_merge_rightIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7move_opEEEvT_SF_SF_SF_T0_T1_.exit66
  %indvar207 = phi i64 [ 0, %.lr.ph.i45.preheader.preheader ], [ %indvar.next208, %_ZN5boost7movelib14op_merge_rightIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7move_opEEEvT_SF_SF_SF_T0_T1_.exit66 ] ; 7 uses
  %.078 = phi i64 [ %i.e, %.lr.ph.i45.preheader.preheader ], [ %i.es, %_ZN5boost7movelib14op_merge_rightIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7move_opEEEvT_SF_SF_SF_T0_T1_.exit66 ] ; 2 uses
  %i.es = sub i64 %.078, %i.b                     ; 3 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.es ; 4 uses
  %i.eu = getelementptr i8, ptr %i.et, i64 %.idx68 ; 4 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.078
  %i.ew = getelementptr i8, ptr %i.et, i64 %.idx
  br label %.lr.ph.i45

.lr.ph.i45:                                       ; preds = %.lr.ph.i45.preheader, %bb.k
  %indvar209 = phi i64 [ 0, %.lr.ph.i45.preheader ], [ %indvar.next210, %bb.k ] ; 3 uses
  %.043.i46 = phi ptr [ %i.ew, %.lr.ph.i45.preheader ], [ %i.gs, %bb.k ] ; 6 uses
  %.02442.i47 = phi ptr [ %i.ev, %.lr.ph.i45.preheader ], [ %.1.i50, %bb.k ] ; 3 uses
  %.02541.i48 = phi ptr [ %i.eu, %.lr.ph.i45.preheader ], [ %.126.i49, %bb.k ] ; 9 uses
  %i.ex = icmp eq ptr %.02442.i47, %i.eu
  br i1 %i.ex, label %.lr.ph.i.i.i62.preheader, label %bb.h

.lr.ph.i.i.i62.preheader:                         ; preds = %.lr.ph.i45
  %.02541.i48211.le = ptrtoaddr ptr %.02541.i48 to i64 ; 2 uses
  %i.ey = udiv i64 %1, %i.b                       ; 3 uses
  %i.ez = shl nuw i64 %i.ey, 1
  %i.fa = add i64 %i.ez, 4611686018427387902
  %i.fb = mul i64 %2, %i.fa
  %i.fc = shl i64 %i.fb, 2
  %i.fd = add i64 %i.fc, %i.a
  %i.fe = mul i64 %indvar207, %i.db
  %reass.sub296 = sub i64 %i.fe, %i.fd
  %i.ff = add i64 %reass.sub296, -4
  %i.fg = add i64 %i.ff, %.02541.i48211.le        ; 2 uses
  %i.fh = lshr i64 %i.fg, 2
  %i.fi = add nuw nsw i64 %i.fh, 1                ; 2 uses
  %min.iters.check213 = icmp ult i64 %i.fg, 316
  br i1 %min.iters.check213, label %.lr.ph.i.i.i62.preheader300, label %vector.memcheck214

vector.memcheck214:                               ; preds = %.lr.ph.i.i.i62.preheader
  %i.fj = shl i64 %i.ey, 3
  %i.fk = or disjoint i64 %i.fj, 4
  %i.fl = mul i64 %2, %i.fk
  %i.fm = add i64 %i.fl, -4
  %i.fn = mul i64 %indvar207, %i.cz
  %i.fo = add i64 %i.fm, %i.fn
  %i.fp = shl i64 %indvar209, 2
  %i.fq = shl nuw i64 %i.ey, 1
  %i.fr = add i64 %i.fq, 4611686018427387902
  %i.fs = mul i64 %2, %i.fr
  %i.ft = shl i64 %i.fs, 2
  %i.fu = add i64 %i.ft, %i.a
  %i.fv = mul i64 %indvar207, %i.cy
  %reass.sub297 = sub i64 %i.fv, %i.fu
  %i.fw = add i64 %reass.sub297, -4
  %i.fx = add i64 %i.fw, %.02541.i48211.le
  %i.fy = and i64 %i.fx, -4                       ; 2 uses
  %i.fz = add i64 %i.fp, %i.fy
  %i.ga = sub i64 %i.fo, %i.fz
  %i.gb = getelementptr i8, ptr %0, i64 %i.ga
  %i.gc = sub nuw nsw i64 -4, %i.fy
  %i.gd = getelementptr i8, ptr %.02541.i48, i64 %i.gc
  %bound0215 = icmp ult ptr %i.gb, %.02541.i48
  %bound1216 = icmp ult ptr %i.gd, %.043.i46
  %found.conflict217 = and i1 %bound0215, %bound1216
  br i1 %found.conflict217, label %.lr.ph.i.i.i62.preheader300, label %vector.ph218

vector.ph218:                                     ; preds = %vector.memcheck214
  %n.vec219 = and i64 %i.fi, 9223372036854775800  ; 3 uses
  %i.ge = mul i64 %n.vec219, -4                   ; 2 uses
  %i.gf = getelementptr i8, ptr %.043.i46, i64 %i.ge
  %i.gg = getelementptr i8, ptr %.02541.i48, i64 %i.ge
  br label %vector.body220

vector.body220:                                   ; preds = %vector.body220, %vector.ph218
  %index221 = phi i64 [ 0, %vector.ph218 ], [ %index.next226, %vector.body220 ] ; 2 uses
  %i.gh = mul i64 %index221, -4                   ; 2 uses
  %next.gep222 = getelementptr i8, ptr %.043.i46, i64 %i.gh ; 2 uses
  %next.gep223 = getelementptr i8, ptr %.02541.i48, i64 %i.gh ; 2 uses
  %i.gi = getelementptr inbounds i8, ptr %next.gep223, i64 -16 ; 2 uses
  %i.gj = getelementptr inbounds i8, ptr %next.gep223, i64 -32 ; 2 uses
  %wide.load224 = load <4 x i32>, ptr %i.gi, align 4, !tbaa !343, !alias.scope !14108
  %wide.load225 = load <4 x i32>, ptr %i.gj, align 4, !tbaa !343, !alias.scope !14108
  %i.gk = getelementptr inbounds i8, ptr %next.gep222, i64 -16
  %i.gl = getelementptr inbounds i8, ptr %next.gep222, i64 -32
  store <4 x i32> %wide.load224, ptr %i.gk, align 4, !tbaa !343, !alias.scope !14109, !noalias !14108
  store <4 x i32> %wide.load225, ptr %i.gl, align 4, !tbaa !343, !alias.scope !14109, !noalias !14108
  store <4 x i32> zeroinitializer, ptr %i.gi, align 4, !tbaa !343, !alias.scope !14108
  store <4 x i32> zeroinitializer, ptr %i.gj, align 4, !tbaa !343, !alias.scope !14108
  %index.next226 = add nuw i64 %index221, 8       ; 2 uses
  %i.gm = icmp eq i64 %index.next226, %n.vec219
  br i1 %i.gm, label %middle.block227, label %vector.body220, !llvm.loop !14093

middle.block227:                                  ; preds = %vector.body220
  %cmp.n228 = icmp eq i64 %i.fi, %n.vec219
  br i1 %cmp.n228, label %_ZN5boost7movelib14op_merge_rightIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7move_opEEEvT_SF_SF_SF_T0_T1_.exit66, label %.lr.ph.i.i.i62.preheader300

.lr.ph.i.i.i62.preheader300:                      ; preds = %vector.memcheck214, %.lr.ph.i.i.i62.preheader, %middle.block227
  %.010.i.i.i63.ph = phi ptr [ %.043.i46, %vector.memcheck214 ], [ %.043.i46, %.lr.ph.i.i.i62.preheader ], [ %i.gf, %middle.block227 ]
  %.079.i.i.i64.ph = phi ptr [ %.02541.i48, %vector.memcheck214 ], [ %.02541.i48, %.lr.ph.i.i.i62.preheader ], [ %i.gg, %middle.block227 ]
  br label %.lr.ph.i.i.i62

.lr.ph.i.i.i62:                                   ; preds = %.lr.ph.i.i.i62.preheader300, %.lr.ph.i.i.i62
  %.010.i.i.i63 = phi ptr [ %i.go, %.lr.ph.i.i.i62 ], [ %.010.i.i.i63.ph, %.lr.ph.i.i.i62.preheader300 ]
  %.079.i.i.i64 = phi ptr [ %i.gn, %.lr.ph.i.i.i62 ], [ %.079.i.i.i64.ph, %.lr.ph.i.i.i62.preheader300 ]
  %i.gn = getelementptr inbounds i8, ptr %.079.i.i.i64, i64 -4 ; 4 uses
  %i.go = getelementptr inbounds i8, ptr %.010.i.i.i63, i64 -4 ; 2 uses
  %i.gp = load i32, ptr %i.gn, align 4, !tbaa !343
  store i32 %i.gp, ptr %i.go, align 4, !tbaa !343
  store i32 0, ptr %i.gn, align 4, !tbaa !343
  %.not.i.i.i65 = icmp eq ptr %i.et, %i.gn
  br i1 %.not.i.i.i65, label %_ZN5boost7movelib14op_merge_rightIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7move_opEEEvT_SF_SF_SF_T0_T1_.exit66, label %.lr.ph.i.i.i62, !llvm.loop !14094

bb.h:                                             ; preds = %.lr.ph.i45
  %i.gq = getelementptr inbounds i8, ptr %.02442.i47, i64 -4 ; 3 uses
  %i.gr = getelementptr inbounds i8, ptr %.02541.i48, i64 -4 ; 3 uses
  %i.gs = getelementptr i8, ptr %.043.i46, i64 -4 ; 9 uses
  %i.gt = load i32, ptr %i.gq, align 4, !tbaa !343 ; 2 uses
  %i.gu = load i32, ptr %i.gr, align 4, !tbaa !343 ; 2 uses
  %i.gv = icmp slt i32 %i.gt, %i.gu
  br i1 %i.gv, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 %i.gu, ptr %i.gs, align 4, !tbaa !343
  store i32 0, ptr %i.gr, align 4, !tbaa !343
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  store i32 %i.gt, ptr %i.gs, align 4, !tbaa !343
  store i32 0, ptr %i.gq, align 4, !tbaa !343
  br label %bb.k

end_hunk_2
