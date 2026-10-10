Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/flat_tree_test?download=true
inline.NumInlined: 27414
inline.NumDeleted: 3408
loop-unroll.NumRuntimeUnrolled: 494
loop-unroll.NumUnrolled: 502
begin_hunk_0_@_ZN5boost7movelib37uninitialized_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEENS3_4pairIS7_S7_EENS3_9select1stIS7_EEEEPSA_SE_EEvT0_SF_T1_SG_SG_T_:bb.a
  %i.av = icmp ne ptr %i.at, %3
  %i.aw = select i1 %i.au, i1 %i.av, i1 false
  br i1 %i.aw, label %.lr.ph, label %._crit_edge, !llvm.loop !7047

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %.026.lcssa = phi ptr [ %3, %bb.a ], [ %.127, %bb.e ]
  %.025.lcssa = phi ptr [ %0, %bb.a ], [ %.2, %bb.e ] ; 2 uses
  %.not23.i.i = icmp eq ptr %.025.lcssa, %1
  br i1 %.not23.i.i, label %_ZN5boost7movelib10destruct_nINS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EEPS7_ED2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %bb.i
  %indvar = phi i64 [ %indvar.next, %bb.i ], [ 0, %._crit_edge ] ; 2 uses
  %.026.i.i = phi ptr [ %.1.i.i, %bb.i ], [ %.025.lcssa, %._crit_edge ] ; 12 uses
  %.01625.i.i = phi ptr [ %.117.i.i, %bb.i ], [ %.026.lcssa, %._crit_edge ] ; 6 uses
  %.01824.i.i = phi ptr [ %i.cc, %bb.i ], [ %3, %._crit_edge ] ; 9 uses
  %i.ax = icmp eq ptr %.01625.i.i, %4
  br i1 %i.ax, label %.lr.ph.i.i.i.i.preheader, label %bb.f

.lr.ph.i.i.i.i.preheader:                         ; preds = %.lr.ph.i.i
  %.026.i.i95.le = ptrtoaddr ptr %.026.i.i to i64 ; 2 uses
  %i.ay = add i64 %i.a, -8
  %i.az = sub i64 %i.ay, %.026.i.i95.le           ; 2 uses
  %i.ba = lshr i64 %i.az, 3
  %i.bb = add nuw nsw i64 %i.ba, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.az, 88
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader131, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.bc = shl i64 %indvar, 3
  %i.bd = getelementptr i8, ptr %3, i64 %i.bc
  %scevgep = getelementptr i8, ptr %i.bd, i64 8
  %i.be = add i64 %i.a, -8
  %i.bf = sub i64 %i.be, %.026.i.i95.le
  %i.bg = and i64 %i.bf, -8                       ; 2 uses
  %scevgep96 = getelementptr i8, ptr %scevgep, i64 %i.bg
  %scevgep97 = getelementptr i8, ptr %.026.i.i, i64 8
  %scevgep98 = getelementptr i8, ptr %scevgep97, i64 %i.bg
  %bound0 = icmp ult ptr %.01824.i.i, %scevgep98
  %bound1 = icmp ult ptr %.026.i.i, %scevgep96
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader131, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bb, 4611686018427387902     ; 3 uses
  %i.bh = shl i64 %n.vec, 3                       ; 2 uses
  %i.bi = getelementptr i8, ptr %.01824.i.i, i64 %i.bh
  %i.bj = getelementptr i8, ptr %.026.i.i, i64 %i.bh
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bk = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.01824.i.i, i64 %i.bk
  %next.gep99 = getelementptr i8, ptr %.026.i.i, i64 %i.bk ; 2 uses
  %wide.vec = load <4 x i32>, ptr %next.gep99, align 4, !tbaa !343, !alias.scope !7055
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !343, !alias.scope !7056, !noalias !7055
  store <4 x i32> zeroinitializer, ptr %next.gep99, align 4, !tbaa !343, !alias.scope !7055
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bl = icmp eq i64 %index.next, %n.vec
  br i1 %i.bl, label %middle.block, label %vector.body, !llvm.loop !7051

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bb, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib10destruct_nINS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EEPS7_ED2Ev.exit, label %.lr.ph.i.i.i.i.preheader131

.lr.ph.i.i.i.i.preheader131:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.ph = phi ptr [ %.01824.i.i, %vector.memcheck ], [ %.01824.i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.bi, %middle.block ]
  %.079.i.i.i.i.ph = phi ptr [ %.026.i.i, %vector.memcheck ], [ %.026.i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.bj, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader131, %.lr.ph.i.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.br, %.lr.ph.i.i.i.i ], [ %.010.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader131 ] ; 3 uses
  %.079.i.i.i.i = phi ptr [ %i.bq, %.lr.ph.i.i.i.i ], [ %.079.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader131 ] ; 4 uses
  %i.bm = load i32, ptr %.079.i.i.i.i, align 4, !tbaa !343
  store i32 %i.bm, ptr %.010.i.i.i.i, align 4, !tbaa !343
  store i32 0, ptr %.079.i.i.i.i, align 4, !tbaa !343
  %i.bn = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i, i64 4 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 4
  %i.bp = load i32, ptr %i.bn, align 4, !tbaa !343
  store i32 %i.bp, ptr %i.bo, align 4, !tbaa !343
  store i32 0, ptr %i.bn, align 4, !tbaa !343
  %i.bq = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i, i64 8 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.bq, %1
  br i1 %.not.i.i.i.i, label %_ZN5boost7movelib10destruct_nINS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EEPS7_ED2Ev.exit, label %.lr.ph.i.i.i.i, !llvm.loop !7052

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.bs = load i32, ptr %.01625.i.i, align 4, !tbaa !343 ; 2 uses
  %i.bt = load i32, ptr %.026.i.i, align 4, !tbaa !343 ; 2 uses
  %i.bu = icmp slt i32 %i.bs, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %.01824.i.i, i64 4 ; 2 uses
  br i1 %i.bu, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 %i.bs, ptr %.01824.i.i, align 4, !tbaa !343
  store i32 0, ptr %.01625.i.i, align 4, !tbaa !343
  %i.bw = getelementptr inbounds nuw i8, ptr %.01625.i.i, i64 4 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !343
  store i32 %i.bx, ptr %i.bv, align 4, !tbaa !343
  store i32 0, ptr %i.bw, align 4, !tbaa !343
  %i.by = getelementptr inbounds nuw i8, ptr %.01625.i.i, i64 8
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  store i32 %i.bt, ptr %.01824.i.i, align 4, !tbaa !343
  store i32 0, ptr %.026.i.i, align 4, !tbaa !343
  %i.bz = getelementptr inbounds nuw i8, ptr %.026.i.i, i64 4 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !343
  store i32 %i.ca, ptr %i.bv, align 4, !tbaa !343
  store i32 0, ptr %i.bz, align 4, !tbaa !343
  %i.cb = getelementptr inbounds nuw i8, ptr %.026.i.i, i64 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.117.i.i = phi ptr [ %i.by, %bb.g ], [ %.01625.i.i, %bb.h ]
  %.1.i.i = phi ptr [ %.026.i.i, %bb.g ], [ %i.cb, %bb.h ] ; 2 uses
  %i.cc = getelementptr i8, ptr %.01824.i.i, i64 8
  %.not.i.i = icmp eq ptr %.1.i.i, %1
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i, label %_ZN5boost7movelib10destruct_nINS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EEPS7_ED2Ev.exit, label %.lr.ph.i.i, !llvm.loop !103

_ZN5boost7movelib10destruct_nINS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EEPS7_ED2Ev.exit: ; preds = %bb.i, %.lr.ph.i.i.i.i, %.lr.ph.i, %middle.block, %middle.block126, %._crit_edge62, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive16slow_stable_sortIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EENS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEEvT_SG_T0_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 3                   ; 6 uses
  %i.e = icmp ugt i64 %i.d, 16                    ; 2 uses
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEENS3_4pairIS7_S7_EENS3_9select1stIS7_EEEEPSA_EEvT0_SF_T_.exit
  %.04460 = phi i64 [ %i.z, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEENS3_4pairIS7_S7_EENS3_9select1stIS7_EEEEPSA_EEvT0_SF_T_.exit ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.04460 ; 6 uses
  br label %.lr.ph42.i

.lr.ph42.i:                                       ; preds = %.lr.ph, %bb.d
  %.02541.i.idx = phi i64 [ %.02541.i.add, %bb.d ], [ 8, %.lr.ph ] ; 2 uses
  %.pn40.i = phi ptr [ %.02541.i.ptr, %bb.d ], [ %i.f, %.lr.ph ] ; 7 uses
  %.02541.i.ptr = getelementptr inbounds nuw i8, ptr %i.f, i64 %.02541.i.idx ; 4 uses
  %i.g = load i32, ptr %.02541.i.ptr, align 4, !tbaa !343 ; 3 uses
  %i.h = load i32, ptr %.pn40.i, align 4, !tbaa !343
  %i.i = icmp slt i32 %i.g, %i.h
  br i1 %i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph42.i
  store i32 0, ptr %.02541.i.ptr, align 4, !tbaa !343
  %i.j = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.k = getelementptr inbounds nuw i8, ptr %.pn40.i, i64 12 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !343
  %i.m = add i32 %i.j, 2
  store i32 %i.m, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.n = load i32, ptr %.pn40.i, align 4, !tbaa !343
  store i32 %i.n, ptr %.02541.i.ptr, align 4, !tbaa !343
  store i32 0, ptr %.pn40.i, align 4, !tbaa !343
  %i.o = getelementptr inbounds nuw i8, ptr %.pn40.i, i64 4 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !343
  store i32 %i.p, ptr %i.k, align 4, !tbaa !343
  store i32 0, ptr %i.o, align 4, !tbaa !343
  %.not2933.i = icmp eq ptr %.pn40.i, %i.f
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
  %.not29.i = icmp eq ptr %i.q, %i.f
  br i1 %.not29.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !138

._crit_edge.i:                                    ; preds = %bb.c, %.lr.ph.i, %bb.b
  %.024.lcssa.i = phi ptr [ %i.f, %bb.b ], [ %i.f, %bb.c ], [ %.035.i, %.lr.ph.i ] ; 2 uses
  store i32 %i.g, ptr %.024.lcssa.i, align 4, !tbaa !343
  %i.w = getelementptr inbounds nuw i8, ptr %.024.lcssa.i, i64 4
  store i32 %i.l, ptr %i.w, align 4, !tbaa !343
  %i.x = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.y = add i32 %i.x, -2
  store i32 %i.y, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i, %.lr.ph42.i
  %.02541.i.add = add nuw nsw i64 %.02541.i.idx, 8 ; 2 uses
  %.not28.i = icmp eq i64 %.02541.i.add, 128
  br i1 %.not28.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEENS3_4pairIS7_S7_EENS3_9select1stIS7_EEEEPSA_EEvT0_SF_T_.exit, label %.lr.ph42.i, !llvm.loop !139

_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEENS3_4pairIS7_S7_EENS3_9select1stIS7_EEEEPSA_EEvT0_SF_T_.exit: ; preds = %bb.d
  %i.z = add i64 %.04460, 16                      ; 3 uses
  %i.aa = sub i64 %i.d, %i.z
  %i.ab = icmp ugt i64 %i.aa, 16
  br i1 %i.ab, label %.lr.ph, label %._crit_edge, !llvm.loop !7057

._crit_edge:                                      ; preds = %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEENS3_4pairIS7_S7_EENS3_9select1stIS7_EEEEPSA_EEvT0_SF_T_.exit, %bb.a
  %.044.lcssa = phi i64 [ 0, %bb.a ], [ %i.z, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEENS3_4pairIS7_S7_EENS3_9select1stIS7_EEEEPSA_EEvT0_SF_T_.exit ]
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.044.lcssa ; 7 uses
  %.not.i = icmp eq ptr %i.ac, %1
  %.02538.i46 = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %.not2839.i = icmp eq ptr %.02538.i46, %1
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not2839.i
  br i1 %or.cond.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEENS3_4pairIS7_S7_EENS3_9select1stIS7_EEEEPSA_EEvT0_SF_T_.exit58, label %.lr.ph42.i47

.lr.ph42.i47:                                     ; preds = %._crit_edge, %bb.g
  %.02541.i48 = phi ptr [ %.025.i50, %bb.g ], [ %.02538.i46, %._crit_edge ] ; 5 uses
  %.pn40.i49 = phi ptr [ %.02541.i48, %bb.g ], [ %i.ac, %._crit_edge ] ; 7 uses
  %i.ad = load i32, ptr %.02541.i48, align 4, !tbaa !343 ; 3 uses
  %i.ae = load i32, ptr %.pn40.i49, align 4, !tbaa !343
  %i.af = icmp slt i32 %i.ad, %i.ae
  br i1 %i.af, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph42.i47
  store i32 0, ptr %.02541.i48, align 4, !tbaa !343
  %i.ag = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.ah = getelementptr inbounds nuw i8, ptr %.pn40.i49, i64 12 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !343
  %i.aj = add i32 %i.ag, 2
  store i32 %i.aj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.ak = load i32, ptr %.pn40.i49, align 4, !tbaa !343
  store i32 %i.ak, ptr %.02541.i48, align 4, !tbaa !343
  store i32 0, ptr %.pn40.i49, align 4, !tbaa !343
  %i.al = getelementptr inbounds nuw i8, ptr %.pn40.i49, i64 4 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !343
  store i32 %i.am, ptr %i.ah, align 4, !tbaa !343
  store i32 0, ptr %i.al, align 4, !tbaa !343
  %.not2933.i52 = icmp eq ptr %.pn40.i49, %i.ac
  br i1 %.not2933.i52, label %._crit_edge.i55, label %.lr.ph.i53

.lr.ph.i53:                                       ; preds = %bb.e, %bb.f
  %.035.i54 = phi ptr [ %i.an, %bb.f ], [ %.pn40.i49, %bb.e ] ; 5 uses
  %i.an = getelementptr i8, ptr %.035.i54, i64 -8 ; 4 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !343 ; 2 uses
  %i.ap = icmp slt i32 %i.ad, %i.ao
  br i1 %i.ap, label %bb.f, label %._crit_edge.i55

bb.f:                                             ; preds = %.lr.ph.i53
  store i32 %i.ao, ptr %.035.i54, align 4, !tbaa !343
  store i32 0, ptr %i.an, align 4, !tbaa !343
  %i.aq = getelementptr inbounds i8, ptr %.035.i54, i64 -4 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.035.i54, i64 4
  %i.as = load i32, ptr %i.aq, align 4, !tbaa !343
  store i32 %i.as, ptr %i.ar, align 4, !tbaa !343
  store i32 0, ptr %i.aq, align 4, !tbaa !343
  %.not29.i57 = icmp eq ptr %i.an, %i.ac
  br i1 %.not29.i57, label %._crit_edge.i55, label %.lr.ph.i53, !llvm.loop !138

._crit_edge.i55:                                  ; preds = %bb.f, %.lr.ph.i53, %bb.e
  %.024.lcssa.i56 = phi ptr [ %i.ac, %bb.e ], [ %i.ac, %bb.f ], [ %.035.i54, %.lr.ph.i53 ] ; 2 uses
  store i32 %i.ad, ptr %.024.lcssa.i56, align 4, !tbaa !343
  %i.at = getelementptr inbounds nuw i8, ptr %.024.lcssa.i56, i64 4
  store i32 %i.ai, ptr %i.at, align 4, !tbaa !343
  %i.au = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.av = add i32 %i.au, -2
  store i32 %i.av, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.i55, %.lr.ph42.i47
  %.025.i50 = getelementptr inbounds nuw i8, ptr %.02541.i48, i64 8 ; 2 uses
  %.not28.i51 = icmp eq ptr %.025.i50, %1
  br i1 %.not28.i51, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEENS3_4pairIS7_S7_EENS3_9select1stIS7_EEEEPSA_EEvT0_SF_T_.exit58, label %.lr.ph42.i47, !llvm.loop !139

_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEENS3_4pairIS7_S7_EENS3_9select1stIS7_EEEEPSA_EEvT0_SF_T_.exit58: ; preds = %bb.g, %._crit_edge
  br i1 %i.e, label %.lr.ph67, label %._crit_edge68

._crit_edge68:                                    ; preds = %bb.k, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEENS3_4pairIS7_S7_EENS3_9select1stIS7_EEEEPSA_EEvT0_SF_T_.exit58
  ret void

.lr.ph67:                                         ; preds = %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEENS3_4pairIS7_S7_EENS3_9select1stIS7_EEEEPSA_EEvT0_SF_T_.exit58, %bb.k
  %.04365 = phi i64 [ %i.bo, %bb.k ], [ 16, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEENS3_4pairIS7_S7_EENS3_9select1stIS7_EEEEPSA_EEvT0_SF_T_.exit58 ] ; 10 uses
  %i.aw = sub i64 %i.d, %.04365
  %i.ax = icmp ugt i64 %i.aw, %.04365             ; 2 uses
  br i1 %i.ax, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %.lr.ph67
  %i.ay = shl i64 %.04365, 1                      ; 3 uses
  %i.az = icmp ugt i64 %i.d, %i.ay
  br i1 %i.az, label %.lr.ph63, label %.loopexit

.lr.ph63:                                         ; preds = %bb.h
  %.idx59 = shl i64 %.04365, 3                    ; 2 uses
  %.idx = shl i64 %.04365, 4
  %i.ba = ashr exact i64 %.idx59, 3
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph63, %bb.i
  %.061 = phi i64 [ 0, %.lr.ph63 ], [ %i.be, %bb.i ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.061 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.idx59
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.idx
  tail call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPNS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EENS3_23flat_tree_value_compareISt4lessIS6_ES7_NS3_9select1stIS6_EEEEEEvT_SF_SF_NS0_9iter_sizeISF_E4typeESI_T0_(ptr noundef %i.bb, ptr noundef %i.bc, ptr noundef %i.bd, i64 noundef %.04365, i64 noundef %i.ba)
  %i.be = add i64 %.061, %i.ay                    ; 3 uses
  %i.bf = sub i64 %i.d, %i.be
  %i.bg = icmp ugt i64 %i.bf, %i.ay
  br i1 %i.bg, label %bb.i, label %.loopexit, !llvm.loop !7058

.loopexit:                                        ; preds = %bb.i, %bb.h, %.lr.ph67
  %.1 = phi i64 [ 0, %.lr.ph67 ], [ 0, %bb.h ], [ %i.be, %bb.i ] ; 2 uses
  %i.bh = sub i64 %i.d, %.1
  %i.bi = icmp ugt i64 %i.bh, %.04365
  br i1 %i.bi, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.loopexit
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.1 ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %.04365 ; 2 uses
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = sub i64 %i.a, %i.bl
  %i.bn = ashr exact i64 %i.bm, 3
  tail call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPNS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EENS3_23flat_tree_value_compareISt4lessIS6_ES7_NS3_9select1stIS6_EEEEEEvT_SF_SF_NS0_9iter_sizeISF_E4typeESI_T0_(ptr noundef %i.bj, ptr noundef %i.bk, ptr noundef %1, i64 noundef %.04365, i64 noundef %i.bn)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.loopexit
  %i.bo = shl i64 %.04365, 1
  br i1 %i.ax, label %.lr.ph67, label %._crit_edge68, !llvm.loop !7059
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost7movelib15detail_adaptive27op_insertion_sort_step_leftIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EENS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEENS0_7move_opEEENS0_9iter_sizeIT_E4typeESI_SK_SK_T0_T1_(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 comdat {
bb.a:
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %2, i64 16) ; 11 uses
  %i.a = icmp ugt i64 %1, %.sroa.speculated
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
  br i1 %i.e, label %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEENS3_4pairIS7_S7_EENS3_9select1stIS7_EEEEPSA_SE_NS0_7move_opEEEvT0_SG_T1_T_T2_.exit.us, label %._crit_edge, !llvm.loop !7060

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
  br i1 %i.l, label %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEENS3_4pairIS7_S7_EENS3_9select1stIS7_EEEEPSA_SE_NS0_7move_opEEEvT0_SG_T1_T_T2_.exit.us40, label %._crit_edge, !llvm.loop !7060

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
end_hunk_0
begin_hunk_1_@_ZN5boost7movelib37uninitialized_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEENS3_4pairIS7_S7_EENS3_9select1stIS7_EEEENS2_22stable_vector_iteratorIPSA_Lb0EEESF_EEvT0_SH_T1_SI_SI_T_:bb.a
  %i.d = icmp ne ptr %2, %3
  %i.e = and i1 %i.c, %i.d
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %i.f = phi ptr [ %i.au, %bb.e ], [ %i.b, %bb.a ] ; 2 uses
  %.promoted = phi ptr [ %i.av, %bb.e ], [ %i.a, %bb.a ] ; 6 uses
  %.01449 = phi ptr [ %.1, %bb.e ], [ %3, %bb.a ] ; 6 uses
  %.048 = phi ptr [ %i.aw, %bb.e ], [ %2, %bb.a ] ; 6 uses
  %i.g = icmp eq ptr %.01449, %4
  br i1 %i.g, label %.preheader, label %bb.b

.preheader:                                       ; preds = %.lr.ph
  %.not52 = icmp eq ptr %.048, %3
  br i1 %.not52, label %._crit_edge55, label %.lr.ph54

.lr.ph54:                                         ; preds = %.preheader, %.lr.ph54
  %i.h = phi ptr [ %i.s, %.lr.ph54 ], [ %.promoted, %.preheader ] ; 3 uses
  %.13753 = phi ptr [ %i.p, %.lr.ph54 ], [ %.048, %.preheader ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !343
  store i32 %i.j, ptr %.13753, align 4, !tbaa !343
  store i32 0, ptr %i.i, align 4, !tbaa !343
  %i.k = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.l = getelementptr inbounds nuw i8, ptr %.13753, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 12 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !343
  store i32 %i.n, ptr %i.l, align 4, !tbaa !343
  store i32 0, ptr %i.m, align 4, !tbaa !343
  %i.o = add i32 %i.k, 2
  store i32 %i.o, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.p = getelementptr inbounds nuw i8, ptr %.13753, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !395
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !391  ; 3 uses
  store ptr %i.s, ptr %0, align 8, !tbaa !397
  %.not = icmp eq ptr %i.p, %3
  br i1 %.not, label %._crit_edge55.loopexit, label %.lr.ph54, !llvm.loop !9729

._crit_edge55.loopexit:                           ; preds = %.lr.ph54
  %.pre63 = load ptr, ptr %1, align 8, !tbaa !397
  br label %._crit_edge55

._crit_edge55:                                    ; preds = %._crit_edge55.loopexit, %.preheader
  %i.t = phi ptr [ %.pre63, %._crit_edge55.loopexit ], [ %i.f, %.preheader ] ; 2 uses
  %i.u = phi ptr [ %i.s, %._crit_edge55.loopexit ], [ %.promoted, %.preheader ] ; 2 uses
  %.not3.i = icmp eq ptr %i.u, %i.t
  br i1 %.not3.i, label %_ZN5boost7movelib10destruct_nINS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EEPS7_ED2Ev.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge55, %.lr.ph.i
  %i.v = phi ptr [ %i.ad, %.lr.ph.i ], [ %i.u, %._crit_edge55 ] ; 3 uses
  %.04.i = phi ptr [ %i.ae, %.lr.ph.i ], [ %3, %._crit_edge55 ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !343
  store i32 %i.x, ptr %.04.i, align 4, !tbaa !343
  store i32 0, ptr %i.w, align 4, !tbaa !343
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 12 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.04.i, i64 4
  %i.aa = load i32, ptr %i.y, align 4, !tbaa !343
  store i32 %i.aa, ptr %i.z, align 4, !tbaa !343
  store i32 0, ptr %i.y, align 4, !tbaa !343
  %i.ab = load ptr, ptr %i.v, align 8, !tbaa !395
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !391 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.04.i, i64 8
  %.not.i = icmp eq ptr %i.ad, %i.t
  br i1 %.not.i, label %_ZN5boost7movelib10destruct_nINS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EEPS7_ED2Ev.exit, label %.lr.ph.i, !llvm.loop !163

bb.b:                                             ; preds = %.lr.ph
  %i.af = getelementptr inbounds nuw i8, ptr %.promoted, i64 8 ; 2 uses
  %i.ag = load i32, ptr %.01449, align 4, !tbaa !343 ; 2 uses
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !343 ; 2 uses
  %i.ai = icmp slt i32 %i.ag, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %.048, i64 4 ; 2 uses
  br i1 %i.ai, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 %i.ag, ptr %.048, align 4, !tbaa !343
  store i32 0, ptr %.01449, align 4, !tbaa !343
  %i.ak = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.al = getelementptr inbounds nuw i8, ptr %.01449, i64 4 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !343
  store i32 %i.am, ptr %i.aj, align 4, !tbaa !343
  store i32 0, ptr %i.al, align 4, !tbaa !343
  %i.an = getelementptr inbounds nuw i8, ptr %.01449, i64 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  store i32 %i.ah, ptr %.048, align 4, !tbaa !343
  store i32 0, ptr %i.af, align 4, !tbaa !343
  %i.ao = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.ap = getelementptr inbounds nuw i8, ptr %.promoted, i64 12 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !343
  store i32 %i.aq, ptr %i.aj, align 4, !tbaa !343
  store i32 0, ptr %i.ap, align 4, !tbaa !343
  %i.ar = load ptr, ptr %.promoted, align 8, !tbaa !395
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !391 ; 2 uses
  store ptr %i.at, ptr %0, align 8, !tbaa !397
  %.pre = load ptr, ptr %1, align 8, !tbaa !397
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.au = phi ptr [ %i.f, %bb.c ], [ %.pre, %bb.d ] ; 3 uses
  %i.av = phi ptr [ %.promoted, %bb.c ], [ %i.at, %bb.d ] ; 3 uses
  %.sink.in = phi i32 [ %i.ak, %bb.c ], [ %i.ao, %bb.d ]
  %.1 = phi ptr [ %i.an, %bb.c ], [ %.01449, %bb.d ] ; 2 uses
  %.sink = add i32 %.sink.in, 2
  store i32 %.sink, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.aw = getelementptr inbounds nuw i8, ptr %.048, i64 8 ; 2 uses
  %i.ax = icmp ne ptr %i.av, %i.au
  %i.ay = icmp ne ptr %i.aw, %3
  %i.az = select i1 %i.ax, i1 %i.ay, i1 false
  br i1 %i.az, label %.lr.ph, label %._crit_edge, !llvm.loop !9730

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %.014.lcssa = phi ptr [ %3, %bb.a ], [ %.1, %bb.e ]
  %.lcssa44 = phi ptr [ %i.a, %bb.a ], [ %i.av, %bb.e ] ; 2 uses
  %.lcssa42 = phi ptr [ %i.b, %bb.a ], [ %i.au, %bb.e ] ; 3 uses
  %.not17.i.i = icmp eq ptr %.lcssa44, %.lcssa42
  br i1 %.not17.i.i, label %_ZN5boost7movelib10destruct_nINS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EEPS7_ED2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %bb.i
  %i.ba = phi ptr [ %i.bz, %bb.i ], [ %.lcssa44, %._crit_edge ] ; 5 uses
  %.019.i.i = phi ptr [ %i.ca, %bb.i ], [ %3, %._crit_edge ] ; 5 uses
  %.0918.i.i = phi ptr [ %.1.i.i, %bb.i ], [ %.014.lcssa, %._crit_edge ] ; 6 uses
  %i.bb = icmp eq ptr %.0918.i.i, %4
  br i1 %i.bb, label %.lr.ph.i.i.i.i, label %bb.f

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %i.bc = phi ptr [ %i.bk, %.lr.ph.i.i.i.i ], [ %i.ba, %.lr.ph.i.i ] ; 3 uses
  %.04.i.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i.i ], [ %.019.i.i, %.lr.ph.i.i ] ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !343
  store i32 %i.be, ptr %.04.i.i.i.i, align 4, !tbaa !343
  store i32 0, ptr %i.bd, align 4, !tbaa !343
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 12 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i, i64 4
  %i.bh = load i32, ptr %i.bf, align 4, !tbaa !343
  store i32 %i.bh, ptr %i.bg, align 4, !tbaa !343
  store i32 0, ptr %i.bf, align 4, !tbaa !343
  %i.bi = load ptr, ptr %i.bc, align 8, !tbaa !395
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !391 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.bk, %.lcssa42
  br i1 %.not.i.i.i.i, label %_ZN5boost7movelib10destruct_nINS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EEPS7_ED2Ev.exit, label %.lr.ph.i.i.i.i, !llvm.loop !163

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 2 uses
  %i.bn = load i32, ptr %.0918.i.i, align 4, !tbaa !343 ; 2 uses
  %i.bo = load i32, ptr %i.bm, align 4, !tbaa !343 ; 2 uses
  %i.bp = icmp slt i32 %i.bn, %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 4 ; 2 uses
  br i1 %i.bp, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 %i.bn, ptr %.019.i.i, align 4, !tbaa !343
  store i32 0, ptr %.0918.i.i, align 4, !tbaa !343
  %i.br = getelementptr inbounds nuw i8, ptr %.0918.i.i, i64 4 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !343
  store i32 %i.bs, ptr %i.bq, align 4, !tbaa !343
  store i32 0, ptr %i.br, align 4, !tbaa !343
  %i.bt = getelementptr inbounds nuw i8, ptr %.0918.i.i, i64 8
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  store i32 %i.bo, ptr %.019.i.i, align 4, !tbaa !343
  store i32 0, ptr %i.bm, align 4, !tbaa !343
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ba, i64 12 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !343
  store i32 %i.bv, ptr %i.bq, align 4, !tbaa !343
  store i32 0, ptr %i.bu, align 4, !tbaa !343
  %i.bw = load ptr, ptr %i.ba, align 8, !tbaa !395
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !391
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bz = phi ptr [ %i.ba, %bb.g ], [ %i.by, %bb.h ] ; 2 uses
  %.1.i.i = phi ptr [ %i.bt, %bb.g ], [ %.0918.i.i, %bb.h ]
  %i.ca = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 8
  %.not.i.i = icmp eq ptr %i.bz, %.lcssa42
  br i1 %.not.i.i, label %_ZN5boost7movelib10destruct_nINS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EEPS7_ED2Ev.exit, label %.lr.ph.i.i, !llvm.loop !9731

_ZN5boost7movelib10destruct_nINS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EEPS7_ED2Ev.exit: ; preds = %bb.i, %.lr.ph.i.i.i.i, %.lr.ph.i, %._crit_edge55, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive16slow_stable_sortINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEENS5_23flat_tree_value_compareISt4lessIS8_ES9_NS5_9select1stIS8_EEEEEEvT_SI_T0_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %3 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %4 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %5 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 8 uses
  %6 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 8 uses
  %7 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 8 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !397    ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !395
  %i.c = load ptr, ptr %0, align 8, !tbaa !397    ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !395  ; 3 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3                   ; 8 uses
  %i.i = icmp ugt i64 %i.h, 16                    ; 2 uses
  br i1 %i.i, label %.lr.ph, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit38

.lr.ph:                                           ; preds = %bb.a, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEENS3_4pairIS7_S7_EENS3_9select1stIS7_EEEENS2_22stable_vector_iteratorIPSA_Lb0EEEEEvT0_SH_T_.exit
  %.033100 = phi i64 [ %i.aq, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEENS3_4pairIS7_S7_EENS3_9select1stIS7_EEEENS2_22stable_vector_iteratorIPSA_Lb0EEEEEvT0_SH_T_.exit ], [ 0, %bb.a ] ; 3 uses
  %.not.i.i = icmp eq i64 %.033100, 0
  br i1 %.not.i.i, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit36, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds [8 x i8], ptr %i.d, i64 %.033100
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !391, !noalias !9754
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit36

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit36: ; preds = %.lr.ph, %bb.b
  %.sroa.082.0 = phi ptr [ %i.k, %bb.b ], [ %i.c, %.lr.ph ] ; 4 uses
  %i.l = load ptr, ptr %.sroa.082.0, align 8, !tbaa !395, !noalias !9755 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 128
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !391, !noalias !9755 ; 3 uses
  %.not.i = icmp eq ptr %.sroa.082.0, %i.n
  br i1 %.not.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEENS3_4pairIS7_S7_EENS3_9select1stIS7_EEEENS2_22stable_vector_iteratorIPSA_Lb0EEEEEvT0_SH_T_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit36
  %.sroa.015.0.in29.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.015.030.i = load ptr, ptr %.sroa.015.0.in29.i, align 8, !tbaa !391 ; 2 uses
  %.not2231.i = icmp eq ptr %.sroa.015.030.i, %i.n
  br i1 %.not2231.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEENS3_4pairIS7_S7_EENS3_9select1stIS7_EEEENS2_22stable_vector_iteratorIPSA_Lb0EEEEEvT0_SH_T_.exit, label %.lr.ph34.i

.lr.ph34.i:                                       ; preds = %bb.c, %bb.f
  %.sroa.015.032.i = phi ptr [ %.sroa.015.0.i, %bb.f ], [ %.sroa.015.030.i, %bb.c ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.015.032.i, i64 8 ; 3 uses
  %i.p = load ptr, ptr %.sroa.015.032.i, align 8, !tbaa !395 ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !391  ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  %i.t = load i32, ptr %i.o, align 8, !tbaa !343  ; 3 uses
  %i.u = load i32, ptr %i.s, align 4, !tbaa !343
  %i.v = icmp slt i32 %i.t, %i.u
  br i1 %i.v, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.lr.ph34.i
  store i32 0, ptr %i.o, align 8, !tbaa !343
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.015.032.i, i64 12 ; 3 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !343
  store i32 0, ptr %i.w, align 4, !tbaa !343
  %i.y = load i32, ptr %i.s, align 4, !tbaa !343
  store i32 %i.y, ptr %i.o, align 8, !tbaa !343
  store i32 0, ptr %i.s, align 4, !tbaa !343
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 12 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !343
  store i32 %i.aa, ptr %i.w, align 4, !tbaa !343
  store i32 0, ptr %i.z, align 4, !tbaa !343
  %.not2324.i = icmp eq ptr %i.r, %.sroa.082.0
  br i1 %.not2324.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.e
  %.sroa.0.026.i = phi ptr [ %i.ad, %bb.e ], [ %i.r, %bb.d ]
  %.sroa.08.025.i = phi ptr [ %i.an, %bb.e ], [ %i.r, %bb.d ] ; 4 uses
  %i.ab = load ptr, ptr %.sroa.0.026.i, align 8, !tbaa !395
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !391 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !343 ; 2 uses
  %i.ag = icmp slt i32 %i.t, %i.af
  br i1 %i.ag, label %bb.e, label %._crit_edge.i

bb.e:                                             ; preds = %.lr.ph.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.08.025.i, i64 8
  store i32 %i.af, ptr %i.ah, align 4, !tbaa !343
  store i32 0, ptr %i.ae, align 4, !tbaa !343
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 12 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.08.025.i, i64 12
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !343
  store i32 %i.ak, ptr %i.aj, align 4, !tbaa !343
  store i32 0, ptr %i.ai, align 4, !tbaa !343
  %i.al = load ptr, ptr %.sroa.08.025.i, align 8, !tbaa !395
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !391 ; 2 uses
  %.not23.i = icmp eq ptr %i.ad, %.sroa.082.0
  br i1 %.not23.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !189

._crit_edge.i:                                    ; preds = %bb.e, %.lr.ph.i, %bb.d
  %.sroa.08.0.lcssa.i = phi ptr [ %i.r, %bb.d ], [ %i.an, %bb.e ], [ %.sroa.08.025.i, %.lr.ph.i ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i, i64 8
  store i32 %i.t, ptr %i.ao, align 4, !tbaa !343
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i, i64 12
  store i32 %i.x, ptr %i.ap, align 4, !tbaa !343
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i, %.lr.ph34.i
  %.sroa.015.0.in.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.015.0.i = load ptr, ptr %.sroa.015.0.in.i, align 8, !tbaa !391 ; 2 uses
  %.not22.i = icmp eq ptr %.sroa.015.0.i, %i.n
  br i1 %.not22.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEENS3_4pairIS7_S7_EENS3_9select1stIS7_EEEENS2_22stable_vector_iteratorIPSA_Lb0EEEEEvT0_SH_T_.exit, label %.lr.ph34.i, !llvm.loop !190

_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEENS3_4pairIS7_S7_EENS3_9select1stIS7_EEEENS2_22stable_vector_iteratorIPSA_Lb0EEEEEvT0_SH_T_.exit: ; preds = %bb.f, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit36, %bb.c
  %i.aq = add i64 %.033100, 16                    ; 4 uses
  %i.ar = sub i64 %i.h, %i.aq
  %i.as = icmp ugt i64 %i.ar, 16
  br i1 %i.as, label %.lr.ph, label %._crit_edge, !llvm.loop !9736

._crit_edge:                                      ; preds = %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEENS3_4pairIS7_S7_EENS3_9select1stIS7_EEEENS2_22stable_vector_iteratorIPSA_Lb0EEEEEvT0_SH_T_.exit
  %.not.i.i37 = icmp eq i64 %i.aq, 0
  br i1 %.not.i.i37, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit38, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  %i.at = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.aq
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !391, !noalias !9756
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit38

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit38: ; preds = %bb.a, %._crit_edge, %bb.g
  %.sroa.081.0 = phi ptr [ %i.c, %._crit_edge ], [ %i.au, %bb.g ], [ %i.c, %bb.a ] ; 4 uses
  %.not.i39 = icmp eq ptr %.sroa.081.0, %i.a
  br i1 %.not.i39, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEENS3_4pairIS7_S7_EENS3_9select1stIS7_EEEENS2_22stable_vector_iteratorIPSA_Lb0EEEEEvT0_SH_T_.exit55, label %bb.h

bb.h:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit38
  %i.av = load ptr, ptr %.sroa.081.0, align 8, !tbaa !395
  %.sroa.015.0.in29.i40 = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.sroa.015.030.i41 = load ptr, ptr %.sroa.015.0.in29.i40, align 8, !tbaa !391 ; 2 uses
  %.not2231.i42 = icmp eq ptr %.sroa.015.030.i41, %i.a
  br i1 %.not2231.i42, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEENS3_4pairIS7_S7_EENS3_9select1stIS7_EEEENS2_22stable_vector_iteratorIPSA_Lb0EEEEEvT0_SH_T_.exit55, label %.lr.ph34.i43

.lr.ph34.i43:                                     ; preds = %bb.h, %bb.k
  %.sroa.015.032.i44 = phi ptr [ %.sroa.015.0.i46, %bb.k ], [ %.sroa.015.030.i41, %bb.h ] ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.015.032.i44, i64 8 ; 3 uses
  %i.ax = load ptr, ptr %.sroa.015.032.i44, align 8, !tbaa !395 ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 -8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !391 ; 6 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 3 uses
  %i.bb = load i32, ptr %i.aw, align 8, !tbaa !343 ; 3 uses
  %i.bc = load i32, ptr %i.ba, align 4, !tbaa !343
  %i.bd = icmp slt i32 %i.bb, %i.bc
  br i1 %i.bd, label %bb.i, label %bb.k

bb.i:                                             ; preds = %.lr.ph34.i43
  store i32 0, ptr %i.aw, align 8, !tbaa !343
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.015.032.i44, i64 12 ; 3 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !343
  store i32 0, ptr %i.be, align 4, !tbaa !343
  %i.bg = load i32, ptr %i.ba, align 4, !tbaa !343
  store i32 %i.bg, ptr %i.aw, align 8, !tbaa !343
  store i32 0, ptr %i.ba, align 4, !tbaa !343
  %i.bh = getelementptr inbounds nuw i8, ptr %i.az, i64 12 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !343
  store i32 %i.bi, ptr %i.be, align 4, !tbaa !343
  store i32 0, ptr %i.bh, align 4, !tbaa !343
  %.not2324.i48 = icmp eq ptr %i.az, %.sroa.081.0
  br i1 %.not2324.i48, label %._crit_edge.i52, label %.lr.ph.i49

.lr.ph.i49:                                       ; preds = %bb.i, %bb.j
  %.sroa.0.026.i50 = phi ptr [ %i.bl, %bb.j ], [ %i.az, %bb.i ]
  %.sroa.08.025.i51 = phi ptr [ %i.bv, %bb.j ], [ %i.az, %bb.i ] ; 4 uses
  %i.bj = load ptr, ptr %.sroa.0.026.i50, align 8, !tbaa !395
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 -8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !391 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !343 ; 2 uses
  %i.bo = icmp slt i32 %i.bb, %i.bn
  br i1 %i.bo, label %bb.j, label %._crit_edge.i52

bb.j:                                             ; preds = %.lr.ph.i49
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.08.025.i51, i64 8
  store i32 %i.bn, ptr %i.bp, align 4, !tbaa !343
  store i32 0, ptr %i.bm, align 4, !tbaa !343
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 12 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.08.025.i51, i64 12
  %i.bs = load i32, ptr %i.bq, align 4, !tbaa !343
  store i32 %i.bs, ptr %i.br, align 4, !tbaa !343
  store i32 0, ptr %i.bq, align 4, !tbaa !343
  %i.bt = load ptr, ptr %.sroa.08.025.i51, align 8, !tbaa !395
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 -8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !391 ; 2 uses
  %.not23.i54 = icmp eq ptr %i.bl, %.sroa.081.0
  br i1 %.not23.i54, label %._crit_edge.i52, label %.lr.ph.i49, !llvm.loop !189

._crit_edge.i52:                                  ; preds = %bb.j, %.lr.ph.i49, %bb.i
  %.sroa.08.0.lcssa.i53 = phi ptr [ %i.az, %bb.i ], [ %i.bv, %bb.j ], [ %.sroa.08.025.i51, %.lr.ph.i49 ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i53, i64 8
  store i32 %i.bb, ptr %i.bw, align 4, !tbaa !343
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i53, i64 12
  store i32 %i.bf, ptr %i.bx, align 4, !tbaa !343
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge.i52, %.lr.ph34.i43
  %.sroa.015.0.in.i45 = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.sroa.015.0.i46 = load ptr, ptr %.sroa.015.0.in.i45, align 8, !tbaa !391 ; 2 uses
  %.not22.i47 = icmp eq ptr %.sroa.015.0.i46, %i.a
  br i1 %.not22.i47, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEENS3_4pairIS7_S7_EENS3_9select1stIS7_EEEENS2_22stable_vector_iteratorIPSA_Lb0EEEEEvT0_SH_T_.exit55, label %.lr.ph34.i43, !llvm.loop !190

_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEENS3_4pairIS7_S7_EENS3_9select1stIS7_EEEENS2_22stable_vector_iteratorIPSA_Lb0EEEEEvT0_SH_T_.exit55: ; preds = %bb.k, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit38, %bb.h
  br i1 %i.i, label %.lr.ph108, label %._crit_edge109

._crit_edge109:                                   ; preds = %.thread, %bb.s, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEENS3_4pairIS7_S7_EENS3_9select1stIS7_EEEENS2_22stable_vector_iteratorIPSA_Lb0EEEEEvT0_SH_T_.exit55
  ret void

.lr.ph108:                                        ; preds = %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEENS3_4pairIS7_S7_EENS3_9select1stIS7_EEEENS2_22stable_vector_iteratorIPSA_Lb0EEEEEvT0_SH_T_.exit55, %bb.s
  %.032106 = phi i64 [ %i.ej, %bb.s ], [ 16, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEENS3_4pairIS7_S7_EENS3_9select1stIS7_EEEENS2_22stable_vector_iteratorIPSA_Lb0EEEEEvT0_SH_T_.exit55 ] ; 11 uses
  %i.by = sub i64 %i.h, %.032106
  %i.bz = icmp ugt i64 %i.by, %.032106            ; 2 uses
  br i1 %i.bz, label %bb.l, label %.thread

bb.l:                                             ; preds = %.lr.ph108
  %i.ca = shl i64 %.032106, 1                     ; 6 uses
  %i.cb = icmp ugt i64 %i.h, %i.ca
  br i1 %i.cb, label %.lr.ph103, label %._crit_edge104.thread

.lr.ph103:                                        ; preds = %bb.l
  %.not.i.i60 = icmp eq i64 %.032106, 0
  %.not.i.i64 = icmp eq i64 %i.ca, 0              ; 2 uses
  br i1 %.not.i.i60, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit63.us, label %.lr.ph103.split

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit63.us: ; preds = %.lr.ph103, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit65.us
  %i.cc = load ptr, ptr %0, align 8, !tbaa !397, !noalias !9757 ; 5 uses
  br i1 %.not.i.i64, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit65.us, label %bb.m

bb.m:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit63.us
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !395, !noalias !9758
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.ca
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !391, !noalias !9758
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit65.us

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit65.us: ; preds = %bb.m, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit63.us
  %.sroa.076.0.us = phi ptr [ %i.cc, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit63.us ], [ %i.cf, %bb.m ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %i.cc, ptr %5, align 8, !tbaa !397
  store ptr %i.cc, ptr %6, align 8, !tbaa !397
  store ptr %.sroa.076.0.us, ptr %7, align 8, !tbaa !397
  %i.cg = load ptr, ptr %i.cc, align 8, !tbaa !395
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = load ptr, ptr %.sroa.076.0.us, align 8, !tbaa !395
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = sub i64 %i.cj, %i.ch
  %i.cl = ashr exact i64 %i.ck, 3
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveINS_9container22stable_vector_iteratorIPNS2_3dtl4pairINS2_4test24movable_and_copyable_intES7_EELb0EEENS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEEvT_SH_SH_NS0_9iter_sizeISH_E4typeESK_T0_(ptr noundef nonnull align 8 dead_on_return %5, ptr noundef nonnull align 8 dead_on_return %6, ptr noundef nonnull align 8 dead_on_return %7, i64 noundef 0, i64 noundef %i.cl)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit63.us

.lr.ph103.split:                                  ; preds = %.lr.ph103, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit65
  %.0101 = phi i64 [ %i.di, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit65 ], [ 0, %.lr.ph103 ] ; 4 uses
  %i.cm = load ptr, ptr %0, align 8, !tbaa !397, !noalias !9757 ; 4 uses
  %.not.i.i56 = icmp eq i64 %.0101, 0
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !395, !noalias !485 ; 2 uses
  br i1 %.not.i.i56, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit63, label %bb.n

bb.n:                                             ; preds = %.lr.ph103.split
  %i.co = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %.0101
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !391, !noalias !9757 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !395, !noalias !9759
  %i.cr = load ptr, ptr %i.cm, align 8, !tbaa !395, !noalias !9760
  %i.cs = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %.0101
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !391, !noalias !9760
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit63

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit63: ; preds = %.lr.ph103.split, %bb.n
  %.pn = phi ptr [ %i.cq, %bb.n ], [ %i.cn, %.lr.ph103.split ]
  %.sroa.077.0128 = phi ptr [ %i.cp, %bb.n ], [ %i.cm, %.lr.ph103.split ] ; 2 uses
  %.sroa.075.0 = phi ptr [ %i.ct, %bb.n ], [ %i.cm, %.lr.ph103.split ] ; 2 uses
  %.in = getelementptr inbounds [8 x i8], ptr %.pn, i64 %.032106
  %i.cu = load ptr, ptr %.in, align 8, !tbaa !391, !noalias !9759 ; 2 uses
  br i1 %.not.i.i64, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit65, label %bb.o

bb.o:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit63
  %i.cv = load ptr, ptr %.sroa.075.0, align 8, !tbaa !395, !noalias !9758
  %i.cw = getelementptr inbounds [8 x i8], ptr %i.cv, i64 %i.ca
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !391, !noalias !9758
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit65

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit65: ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit63, %bb.o
  %.sroa.076.0 = phi ptr [ %.sroa.075.0, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit63 ], [ %i.cx, %bb.o ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %.sroa.077.0128, ptr %5, align 8, !tbaa !397
  store ptr %i.cu, ptr %6, align 8, !tbaa !397
  store ptr %.sroa.076.0, ptr %7, align 8, !tbaa !397
  %i.cy = load ptr, ptr %i.cu, align 8, !tbaa !395
  %i.cz = load ptr, ptr %.sroa.077.0128, align 8, !tbaa !395
  %i.da = ptrtoint ptr %i.cy to i64               ; 2 uses
  %i.db = ptrtoint ptr %i.cz to i64
  %i.dc = sub i64 %i.da, %i.db
  %i.dd = ashr exact i64 %i.dc, 3
  %i.de = load ptr, ptr %.sroa.076.0, align 8, !tbaa !395
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = sub i64 %i.df, %i.da
  %i.dh = ashr exact i64 %i.dg, 3
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveINS_9container22stable_vector_iteratorIPNS2_3dtl4pairINS2_4test24movable_and_copyable_intES7_EELb0EEENS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEEvT_SH_SH_NS0_9iter_sizeISH_E4typeESK_T0_(ptr noundef nonnull align 8 dead_on_return %5, ptr noundef nonnull align 8 dead_on_return %6, ptr noundef nonnull align 8 dead_on_return %7, i64 noundef %i.dd, i64 noundef %i.dh)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.di = add i64 %.0101, %i.ca                   ; 5 uses
  %i.dj = sub i64 %i.h, %i.di
  %i.dk = icmp ugt i64 %i.dj, %i.ca
  br i1 %i.dk, label %.lr.ph103.split, label %._crit_edge104, !llvm.loop !9747

._crit_edge104:                                   ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit65
  %i.dl = sub i64 %i.h, %i.di
  %i.dm = icmp ugt i64 %i.dl, %.032106
  br i1 %i.dm, label %bb.p, label %bb.s

._crit_edge104.thread:                            ; preds = %bb.l
  %i.dn = icmp ugt i64 %i.h, %.032106
  br i1 %i.dn, label %.thread131, label %bb.s

.thread131:                                       ; preds = %._crit_edge104.thread
  %i.do = load ptr, ptr %0, align 8, !tbaa !397, !noalias !9761
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit69

.thread:                                          ; preds = %.lr.ph108
end_hunk_1
begin_hunk_2_@_ZN5boost7movelib15merge_sort_copyIPNS_9container4test24movable_and_copyable_intES5_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_T0_T1_:bb.a

bb.e:                                             ; preds = %.lr.ph.i.i
  store i32 %i.n, ptr %.035.i.i, align 4, !tbaa !343
  store i32 0, ptr %i.l, align 4, !tbaa !343
  %.not32.i.i = icmp eq ptr %i.l, %2
  br i1 %.not32.i.i, label %.critedge.i.i, label %.lr.ph.i.i, !llvm.loop !251

.critedge.i.i:                                    ; preds = %bb.e, %.lr.ph.i.i, %bb.d, %.lr.ph42.i.i
  %.1.i.i = phi ptr [ %.02641.i.i, %.lr.ph42.i.i ], [ %2, %bb.d ], [ %2, %bb.e ], [ %.035.i.i, %.lr.ph.i.i ]
  %i.p = load i32, ptr %i.h, align 4, !tbaa !343
  store i32 %i.p, ptr %.1.i.i, align 4, !tbaa !343
  store i32 0, ptr %i.h, align 4, !tbaa !343
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 2 uses
  %.not31.i.i = icmp eq ptr %i.q, %1
  br i1 %.not31.i.i, label %_ZN5boost7movelib19insertion_sort_copyINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_EEvT0_SE_T1_T_.exit, label %.lr.ph42.i.i, !llvm.loop !252

bb.f:                                             ; preds = %bb.a
  %i.r = lshr i64 %i.d, 1                         ; 6 uses
  %.idx = shl nuw nsw i64 %i.r, 2
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 5 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.r ; 2 uses
  tail call void @_ZN5boost7movelib15merge_sort_copyIPNS_9container4test24movable_and_copyable_intES5_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_T0_T1_(ptr noundef %i.s, ptr noundef %1, ptr noundef %i.t)
  tail call void @_ZN5boost7movelib15merge_sort_copyIPNS_9container4test24movable_and_copyable_intES5_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_T0_T1_(ptr noundef %0, ptr noundef %i.s, ptr noundef %i.s)
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.r ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 %i.c
  %.not23.i.i = icmp eq i64 %i.r, 0
  br i1 %.not23.i.i, label %_ZN5boost7movelib19insertion_sort_copyINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_EEvT0_SE_T1_T_.exit, label %.lr.ph.i.i26

.lr.ph.i.i26:                                     ; preds = %bb.f, %bb.j
  %indvar = phi i64 [ %indvar.next, %bb.j ], [ 0, %bb.f ] ; 2 uses
  %.026.i.i = phi ptr [ %.1.i.i27, %bb.j ], [ %i.s, %bb.f ] ; 11 uses
  %.01625.i.i = phi ptr [ %.117.i.i, %bb.j ], [ %i.t, %bb.f ] ; 5 uses
  %.01824.i.i = phi ptr [ %i.az, %bb.j ], [ %2, %bb.f ] ; 8 uses
  %i.w = icmp eq ptr %.01625.i.i, %i.v
  br i1 %i.w, label %.lr.ph.i.i.i.i.preheader, label %bb.g

.lr.ph.i.i.i.i.preheader:                         ; preds = %.lr.ph.i.i26
  %.026.i.i57.le = ptrtoaddr ptr %.026.i.i to i64 ; 2 uses
  %i.x = shl i64 %i.r, 3
  %i.y = add i64 %i.x, %i.b
  %i.z = add i64 %i.y, -4
  %i.aa = sub i64 %i.z, %.026.i.i57.le            ; 2 uses
  %i.ab = lshr i64 %i.aa, 2
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aa, 108
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader64, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.ad = shl i64 %indvar, 2
  %i.ae = getelementptr i8, ptr %2, i64 %i.ad
  %scevgep = getelementptr i8, ptr %i.ae, i64 4
  %i.af = shl i64 %i.r, 3
  %i.ag = add i64 %i.af, %i.b
  %i.ah = add i64 %i.ag, -4
  %i.ai = sub i64 %i.ah, %.026.i.i57.le
  %i.aj = and i64 %i.ai, -4                       ; 2 uses
  %scevgep58 = getelementptr i8, ptr %scevgep, i64 %i.aj
  %scevgep59 = getelementptr i8, ptr %.026.i.i, i64 4
  %scevgep60 = getelementptr i8, ptr %scevgep59, i64 %i.aj
  %bound0 = icmp ult ptr %.01824.i.i, %scevgep60
  %bound1 = icmp ult ptr %.026.i.i, %scevgep58
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader64, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ac, 9223372036854775800     ; 3 uses
  %i.ak = shl i64 %n.vec, 2                       ; 2 uses
  %i.al = getelementptr i8, ptr %.01824.i.i, i64 %i.ak
  %i.am = getelementptr i8, ptr %.026.i.i, i64 %i.ak
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.an = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.01824.i.i, i64 %i.an ; 2 uses
  %next.gep61 = getelementptr i8, ptr %.026.i.i, i64 %i.an ; 3 uses
  %i.ao = getelementptr i8, ptr %next.gep61, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep61, align 4, !tbaa !343, !alias.scope !14088
  %wide.load62 = load <4 x i32>, ptr %i.ao, align 4, !tbaa !343, !alias.scope !14088
  %i.ap = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !343, !alias.scope !14089, !noalias !14088
  store <4 x i32> %wide.load62, ptr %i.ap, align 4, !tbaa !343, !alias.scope !14089, !noalias !14088
  store <4 x i32> zeroinitializer, ptr %next.gep61, align 4, !tbaa !343, !alias.scope !14088
  store <4 x i32> zeroinitializer, ptr %i.ao, align 4, !tbaa !343, !alias.scope !14088
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !14086

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib19insertion_sort_copyINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_EEvT0_SE_T1_T_.exit, label %.lr.ph.i.i.i.i.preheader64

.lr.ph.i.i.i.i.preheader64:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.ph = phi ptr [ %.01824.i.i, %vector.memcheck ], [ %.01824.i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.al, %middle.block ]
  %.079.i.i.i.i.ph = phi ptr [ %.026.i.i, %vector.memcheck ], [ %.026.i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.am, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader64, %.lr.ph.i.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i ], [ %.010.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader64 ] ; 2 uses
  %.079.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i ], [ %.079.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader64 ] ; 3 uses
  %i.ar = load i32, ptr %.079.i.i.i.i, align 4, !tbaa !343
  store i32 %i.ar, ptr %.010.i.i.i.i, align 4, !tbaa !343
  store i32 0, ptr %.079.i.i.i.i, align 4, !tbaa !343
  %i.as = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i, i64 4 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 4
  %.not.i.i.i.i = icmp eq ptr %i.as, %i.u
  br i1 %.not.i.i.i.i, label %_ZN5boost7movelib19insertion_sort_copyINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_EEvT0_SE_T1_T_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !14087

bb.g:                                             ; preds = %.lr.ph.i.i26
  %i.au = load i32, ptr %.01625.i.i, align 4, !tbaa !343 ; 2 uses
  %i.av = load i32, ptr %.026.i.i, align 4, !tbaa !343 ; 2 uses
  %i.aw = icmp slt i32 %i.au, %i.av
  br i1 %i.aw, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 %i.au, ptr %.01824.i.i, align 4, !tbaa !343
  store i32 0, ptr %.01625.i.i, align 4, !tbaa !343
  %i.ax = getelementptr inbounds nuw i8, ptr %.01625.i.i, i64 4
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  store i32 %i.av, ptr %.01824.i.i, align 4, !tbaa !343
  store i32 0, ptr %.026.i.i, align 4, !tbaa !343
  %i.ay = getelementptr inbounds nuw i8, ptr %.026.i.i, i64 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.117.i.i = phi ptr [ %i.ax, %bb.h ], [ %.01625.i.i, %bb.i ]
  %.1.i.i27 = phi ptr [ %.026.i.i, %bb.h ], [ %i.ay, %bb.i ] ; 2 uses
  %i.az = getelementptr i8, ptr %.01824.i.i, i64 4
  %.not.i.i28 = icmp eq ptr %.1.i.i27, %i.u
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i28, label %_ZN5boost7movelib19insertion_sort_copyINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_EEvT0_SE_T1_T_.exit, label %.lr.ph.i.i26, !llvm.loop !218

_ZN5boost7movelib19insertion_sort_copyINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_EEvT0_SE_T1_T_.exit: ; preds = %bb.j, %.lr.ph.i.i.i.i, %.critedge.i.i, %middle.block, %bb.f, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive16slow_stable_sortIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEvT_SF_T0_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 2                   ; 6 uses
  %i.e = icmp ugt i64 %i.d, 16                    ; 2 uses
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_EEvT0_SE_T_.exit
  %.04460 = phi i64 [ %i.r, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_EEvT0_SE_T_.exit ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.04460 ; 6 uses
  br label %.lr.ph38.i

.lr.ph38.i:                                       ; preds = %.lr.ph, %bb.d
  %.037.i.idx = phi i64 [ %.037.i.add, %bb.d ], [ 4, %.lr.ph ] ; 2 uses
  %.pn36.i = phi ptr [ %.037.i.ptr, %bb.d ], [ %i.f, %.lr.ph ] ; 5 uses
  %.037.i.ptr = getelementptr inbounds nuw i8, ptr %i.f, i64 %.037.i.idx ; 4 uses
  %i.g = load i32, ptr %.037.i.ptr, align 4, !tbaa !343 ; 3 uses
  %i.h = load i32, ptr %.pn36.i, align 4, !tbaa !343
  %i.i = icmp slt i32 %i.g, %i.h
  br i1 %i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph38.i
  store i32 0, ptr %.037.i.ptr, align 4, !tbaa !343
  %i.j = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.l = load i32, ptr %.pn36.i, align 4, !tbaa !343
  store i32 %i.l, ptr %.037.i.ptr, align 4, !tbaa !343
  store i32 0, ptr %.pn36.i, align 4, !tbaa !343
  %.not2729.i = icmp eq ptr %.pn36.i, %i.f
  br i1 %.not2729.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.02231.i = phi ptr [ %i.m, %bb.c ], [ %.pn36.i, %bb.b ] ; 3 uses
  %i.m = getelementptr i8, ptr %.02231.i, i64 -4  ; 4 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !343  ; 2 uses
  %i.o = icmp slt i32 %i.g, %i.n
  br i1 %i.o, label %bb.c, label %.critedge.i

.critedge.i:                                      ; preds = %bb.c, %.lr.ph.i, %bb.b
  %.022.lcssa.i = phi ptr [ %i.f, %bb.b ], [ %.02231.i, %.lr.ph.i ], [ %i.f, %bb.c ]
  store i32 %i.g, ptr %.022.lcssa.i, align 4, !tbaa !343
  %i.p = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.q = add i32 %i.p, -1
  store i32 %i.q, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph.i
  store i32 %i.n, ptr %.02231.i, align 4, !tbaa !343
  store i32 0, ptr %i.m, align 4, !tbaa !343
  %.not27.i = icmp eq ptr %i.m, %i.f
  br i1 %.not27.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !247

bb.d:                                             ; preds = %.critedge.i, %.lr.ph38.i
  %.037.i.add = add nuw nsw i64 %.037.i.idx, 4    ; 2 uses
  %.not26.i = icmp eq i64 %.037.i.add, 64
  br i1 %.not26.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_EEvT0_SE_T_.exit, label %.lr.ph38.i, !llvm.loop !248

_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_EEvT0_SE_T_.exit: ; preds = %bb.d
  %i.r = add i64 %.04460, 16                      ; 3 uses
  %i.s = sub i64 %i.d, %i.r
  %i.t = icmp ugt i64 %i.s, 16
  br i1 %i.t, label %.lr.ph, label %._crit_edge, !llvm.loop !14090

._crit_edge:                                      ; preds = %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_EEvT0_SE_T_.exit, %bb.a
  %.044.lcssa = phi i64 [ 0, %bb.a ], [ %i.r, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_EEvT0_SE_T_.exit ]
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.044.lcssa ; 7 uses
  %.not.i = icmp eq ptr %i.u, %1
  %.034.i46 = getelementptr inbounds nuw i8, ptr %i.u, i64 4 ; 2 uses
  %.not2635.i = icmp eq ptr %.034.i46, %1
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not2635.i
  br i1 %or.cond.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_EEvT0_SE_T_.exit58, label %.lr.ph38.i47

.lr.ph38.i47:                                     ; preds = %._crit_edge, %bb.g
  %.037.i48 = phi ptr [ %.0.i50, %bb.g ], [ %.034.i46, %._crit_edge ] ; 5 uses
  %.pn36.i49 = phi ptr [ %.037.i48, %bb.g ], [ %i.u, %._crit_edge ] ; 5 uses
  %i.v = load i32, ptr %.037.i48, align 4, !tbaa !343 ; 3 uses
  %i.w = load i32, ptr %.pn36.i49, align 4, !tbaa !343
  %i.x = icmp slt i32 %i.v, %i.w
  br i1 %i.x, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph38.i47
  store i32 0, ptr %.037.i48, align 4, !tbaa !343
  %i.y = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.z = add i32 %i.y, 1
  store i32 %i.z, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.aa = load i32, ptr %.pn36.i49, align 4, !tbaa !343
  store i32 %i.aa, ptr %.037.i48, align 4, !tbaa !343
  store i32 0, ptr %.pn36.i49, align 4, !tbaa !343
  %.not2729.i52 = icmp eq ptr %.pn36.i49, %i.u
  br i1 %.not2729.i52, label %.critedge.i55, label %.lr.ph.i53

.lr.ph.i53:                                       ; preds = %bb.e, %bb.f
  %.02231.i54 = phi ptr [ %i.ab, %bb.f ], [ %.pn36.i49, %bb.e ] ; 3 uses
  %i.ab = getelementptr i8, ptr %.02231.i54, i64 -4 ; 4 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !343 ; 2 uses
  %i.ad = icmp slt i32 %i.v, %i.ac
  br i1 %i.ad, label %bb.f, label %.critedge.i55

.critedge.i55:                                    ; preds = %bb.f, %.lr.ph.i53, %bb.e
  %.022.lcssa.i56 = phi ptr [ %i.u, %bb.e ], [ %.02231.i54, %.lr.ph.i53 ], [ %i.u, %bb.f ]
  store i32 %i.v, ptr %.022.lcssa.i56, align 4, !tbaa !343
  %i.ae = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.af = add i32 %i.ae, -1
  store i32 %i.af, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph.i53
  store i32 %i.ac, ptr %.02231.i54, align 4, !tbaa !343
  store i32 0, ptr %i.ab, align 4, !tbaa !343
  %.not27.i57 = icmp eq ptr %i.ab, %i.u
  br i1 %.not27.i57, label %.critedge.i55, label %.lr.ph.i53, !llvm.loop !247

bb.g:                                             ; preds = %.critedge.i55, %.lr.ph38.i47
  %.0.i50 = getelementptr inbounds nuw i8, ptr %.037.i48, i64 4 ; 2 uses
  %.not26.i51 = icmp eq ptr %.0.i50, %1
  br i1 %.not26.i51, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_EEvT0_SE_T_.exit58, label %.lr.ph38.i47, !llvm.loop !248

_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_EEvT0_SE_T_.exit58: ; preds = %bb.g, %._crit_edge
  br i1 %i.e, label %.lr.ph67, label %._crit_edge68

._crit_edge68:                                    ; preds = %bb.k, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_EEvT0_SE_T_.exit58
  ret void

.lr.ph67:                                         ; preds = %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_EEvT0_SE_T_.exit58, %bb.k
  %.04365 = phi i64 [ %i.ay, %bb.k ], [ 16, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_EEvT0_SE_T_.exit58 ] ; 10 uses
  %i.ag = sub i64 %i.d, %.04365
  %i.ah = icmp ugt i64 %i.ag, %.04365             ; 2 uses
  br i1 %i.ah, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %.lr.ph67
  %i.ai = shl i64 %.04365, 1                      ; 3 uses
  %i.aj = icmp ugt i64 %i.d, %i.ai
  br i1 %i.aj, label %.lr.ph63, label %.loopexit

.lr.ph63:                                         ; preds = %bb.h
  %.idx59 = shl i64 %.04365, 2                    ; 2 uses
  %.idx = shl i64 %.04365, 3
  %i.ak = ashr exact i64 %.idx59, 2
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
  br i1 %i.aq, label %bb.i, label %.loopexit, !llvm.loop !14091

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
  br i1 %i.ah, label %.lr.ph67, label %._crit_edge68, !llvm.loop !14092
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
  br i1 %i.e, label %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_NS0_7move_opEEEvT0_SF_T1_T_T2_.exit.us, label %._crit_edge, !llvm.loop !14093

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
  br i1 %i.k, label %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_NS0_7move_opEEEvT0_SF_T1_T_T2_.exit.us39, label %._crit_edge, !llvm.loop !14093

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
end_hunk_2
begin_hunk_3_@_ZN5boost7movelib15merge_sort_copyINS_9container22stable_vector_iteratorIPNS2_4test24movable_and_copyable_intELb0EEES7_NS2_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEvT_SG_T0_T1_:bb.a
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sink29.i.i = phi ptr [ %.sroa.01.i.0..sroa.01.i.0..sroa.01.i.0..sroa.01.0..sroa.01.0..sroa.01.0..i, %bb.i ], [ %i.bo, %bb.j ]
  %.sink27.i.i = phi ptr [ %.sroa.01.i, %bb.i ], [ %.sroa.06.i, %bb.j ]
  %i.cf = load ptr, ptr %.sink29.i.i, align 8, !tbaa !395
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !391
  store ptr %i.ch, ptr %.sink27.i.i, align 8, !tbaa !450
  %i.ci = load ptr, ptr %i.bn, align 8, !tbaa !395
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !391 ; 2 uses
  store ptr %i.ck, ptr %.sroa.02.i, align 8, !tbaa !450
  %.sroa.06.i.0..sroa.06.i.0..sroa.06.i.0..sroa.06.0..sroa.06.0..sroa.06.0.7.i = load ptr, ptr %.sroa.06.i, align 8, !tbaa !450 ; 2 uses
  %.not.i.i29 = icmp eq ptr %.sroa.06.i.0..sroa.06.i.0..sroa.06.i.0..sroa.06.0..sroa.06.0..sroa.06.0.7.i, %i.bg
  br i1 %.not.i.i29, label %_ZN5boost7movelib23merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEENS2_22stable_vector_iteratorIPS7_Lb0EEESF_EEvT0_SG_T1_SH_SH_T_.exit, label %.lr.ph.i.i28, !llvm.loop !17088

_ZN5boost7movelib23merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEENS2_22stable_vector_iteratorIPS7_Lb0EEESF_EEvT0_SG_T1_SH_SH_T_.exit: ; preds = %bb.k, %.lr.ph.i.i.i.i, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit27.thread, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit27
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.06.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.02.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01.i)
  br label %_ZN5boost7movelib19insertion_sort_copyINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEENS2_22stable_vector_iteratorIPS7_Lb0EEESF_EEvT0_SG_T1_T_.exit

_ZN5boost7movelib19insertion_sort_copyINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEENS2_22stable_vector_iteratorIPS7_Lb0EEESF_EEvT0_SG_T1_T_.exit: ; preds = %.critedge.i.i, %bb.c, %bb.b, %_ZN5boost7movelib23merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEENS2_22stable_vector_iteratorIPS7_Lb0EEESF_EEvT0_SG_T1_SH_SH_T_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib37uninitialized_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEENS2_22stable_vector_iteratorIPS7_Lb0EEESE_EEvT0_SG_T1_SH_SH_T_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !450    ; 3 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !450    ; 3 uses
  %i.c = icmp ne ptr %i.a, %i.b
  %i.d = icmp ne ptr %2, %3
  %i.e = and i1 %i.c, %i.d
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %i.f = phi ptr [ %i.aj, %bb.e ], [ %i.b, %bb.a ] ; 2 uses
  %.promoted = phi ptr [ %i.ak, %bb.e ], [ %i.a, %bb.a ] ; 5 uses
  %.051 = phi ptr [ %.1, %bb.e ], [ %3, %bb.a ]   ; 5 uses
  %.03850 = phi ptr [ %i.al, %bb.e ], [ %2, %bb.a ] ; 5 uses
  %i.g = icmp eq ptr %.051, %4
  br i1 %i.g, label %.preheader, label %bb.b

.preheader:                                       ; preds = %.lr.ph
  %.not54 = icmp eq ptr %.03850, %3
  br i1 %.not54, label %._crit_edge57, label %.lr.ph56

.lr.ph56:                                         ; preds = %.preheader, %.lr.ph56
  %i.h = phi ptr [ %i.p, %.lr.ph56 ], [ %.promoted, %.preheader ] ; 2 uses
  %.13955 = phi ptr [ %i.m, %.lr.ph56 ], [ %.03850, %.preheader ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !343
  store i32 %i.j, ptr %.13955, align 4, !tbaa !343
  store i32 0, ptr %i.i, align 4, !tbaa !343
  %i.k = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.m = getelementptr inbounds nuw i8, ptr %.13955, i64 4 ; 2 uses
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !395
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !391  ; 3 uses
  store ptr %i.p, ptr %0, align 8, !tbaa !450
  %.not = icmp eq ptr %i.m, %3
  br i1 %.not, label %._crit_edge57.loopexit, label %.lr.ph56, !llvm.loop !17100

._crit_edge57.loopexit:                           ; preds = %.lr.ph56
  %.pre65 = load ptr, ptr %1, align 8, !tbaa !450
  br label %._crit_edge57

._crit_edge57:                                    ; preds = %._crit_edge57.loopexit, %.preheader
  %i.q = phi ptr [ %.pre65, %._crit_edge57.loopexit ], [ %i.f, %.preheader ] ; 2 uses
  %i.r = phi ptr [ %i.p, %._crit_edge57.loopexit ], [ %.promoted, %.preheader ] ; 2 uses
  %.not3.i = icmp eq ptr %i.r, %i.q
  br i1 %.not3.i, label %_ZN5boost7movelib10destruct_nINS_9container4test24movable_and_copyable_intEPS4_ED2Ev.exit21, label %.lr.ph.i14

.lr.ph.i14:                                       ; preds = %._crit_edge57, %.lr.ph.i14
  %i.s = phi ptr [ %i.x, %.lr.ph.i14 ], [ %i.r, %._crit_edge57 ] ; 2 uses
  %.04.i = phi ptr [ %i.y, %.lr.ph.i14 ], [ %3, %._crit_edge57 ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !343
  store i32 %i.u, ptr %.04.i, align 4, !tbaa !343
  store i32 0, ptr %i.t, align 4, !tbaa !343
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !395
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !391  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.04.i, i64 4
  %.not.i15 = icmp eq ptr %i.x, %i.q
  br i1 %.not.i15, label %_ZN5boost7movelib10destruct_nINS_9container4test24movable_and_copyable_intEPS4_ED2Ev.exit21, label %.lr.ph.i14, !llvm.loop !272

bb.b:                                             ; preds = %.lr.ph
  %i.z = getelementptr inbounds nuw i8, ptr %.promoted, i64 8 ; 2 uses
  %i.aa = load i32, ptr %.051, align 4, !tbaa !343 ; 2 uses
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !343 ; 2 uses
  %i.ac = icmp slt i32 %i.aa, %i.ab
  br i1 %i.ac, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 %i.aa, ptr %.03850, align 4, !tbaa !343
  store i32 0, ptr %.051, align 4, !tbaa !343
  %i.ad = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.ae = getelementptr inbounds nuw i8, ptr %.051, i64 4
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  store i32 %i.ab, ptr %.03850, align 4, !tbaa !343
  store i32 0, ptr %i.z, align 4, !tbaa !343
  %i.af = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.ag = load ptr, ptr %.promoted, align 8, !tbaa !395
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !391 ; 2 uses
  store ptr %i.ai, ptr %0, align 8, !tbaa !450
  %.pre = load ptr, ptr %1, align 8, !tbaa !450
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.aj = phi ptr [ %i.f, %bb.c ], [ %.pre, %bb.d ] ; 3 uses
  %i.ak = phi ptr [ %.promoted, %bb.c ], [ %i.ai, %bb.d ] ; 3 uses
  %.sink.in = phi i32 [ %i.ad, %bb.c ], [ %i.af, %bb.d ]
  %.1 = phi ptr [ %i.ae, %bb.c ], [ %.051, %bb.d ] ; 2 uses
  %.sink = add i32 %.sink.in, 1
  store i32 %.sink, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.al = getelementptr inbounds nuw i8, ptr %.03850, i64 4 ; 2 uses
  %i.am = icmp ne ptr %i.ak, %i.aj
  %i.an = icmp ne ptr %i.al, %3
  %i.ao = select i1 %i.am, i1 %i.an, i1 false
  br i1 %i.ao, label %.lr.ph, label %._crit_edge, !llvm.loop !17101

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %.0.lcssa = phi ptr [ %3, %bb.a ], [ %.1, %bb.e ]
  %.lcssa46 = phi ptr [ %i.a, %bb.a ], [ %i.ak, %bb.e ] ; 2 uses
  %.lcssa44 = phi ptr [ %i.b, %bb.a ], [ %i.aj, %bb.e ] ; 3 uses
  %.not17.i.i = icmp eq ptr %.lcssa46, %.lcssa44
  br i1 %.not17.i.i, label %_ZN5boost7movelib10destruct_nINS_9container4test24movable_and_copyable_intEPS4_ED2Ev.exit21, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %bb.i
  %i.ap = phi ptr [ %i.bg, %bb.i ], [ %.lcssa46, %._crit_edge ] ; 4 uses
  %.019.i.i = phi ptr [ %i.bh, %bb.i ], [ %3, %._crit_edge ] ; 4 uses
  %.0918.i.i = phi ptr [ %.1.i.i, %bb.i ], [ %.0.lcssa, %._crit_edge ] ; 5 uses
  %i.aq = icmp eq ptr %.0918.i.i, %4
  br i1 %i.aq, label %.lr.ph.i.i.i.i, label %bb.f

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %i.ar = phi ptr [ %i.aw, %.lr.ph.i.i.i.i ], [ %i.ap, %.lr.ph.i.i ] ; 2 uses
  %.04.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i.i ], [ %.019.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !343
  store i32 %i.at, ptr %.04.i.i.i.i, align 4, !tbaa !343
  store i32 0, ptr %i.as, align 4, !tbaa !343
  %i.au = load ptr, ptr %i.ar, align 8, !tbaa !395
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !391 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i, i64 4
  %.not.i.i.i.i = icmp eq ptr %i.aw, %.lcssa44
  br i1 %.not.i.i.i.i, label %_ZN5boost7movelib10destruct_nINS_9container4test24movable_and_copyable_intEPS4_ED2Ev.exit21, label %.lr.ph.i.i.i.i, !llvm.loop !272

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %i.az = load i32, ptr %.0918.i.i, align 4, !tbaa !343 ; 2 uses
  %i.ba = load i32, ptr %i.ay, align 4, !tbaa !343 ; 2 uses
  %i.bb = icmp slt i32 %i.az, %i.ba
  br i1 %i.bb, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 %i.az, ptr %.019.i.i, align 4, !tbaa !343
  store i32 0, ptr %.0918.i.i, align 4, !tbaa !343
  %i.bc = getelementptr inbounds nuw i8, ptr %.0918.i.i, i64 4
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  store i32 %i.ba, ptr %.019.i.i, align 4, !tbaa !343
  store i32 0, ptr %i.ay, align 4, !tbaa !343
  %i.bd = load ptr, ptr %i.ap, align 8, !tbaa !395
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !391
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bg = phi ptr [ %i.ap, %bb.g ], [ %i.bf, %bb.h ] ; 2 uses
  %.1.i.i = phi ptr [ %i.bc, %bb.g ], [ %.0918.i.i, %bb.h ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 4
  %.not.i.i = icmp eq ptr %i.bg, %.lcssa44
  br i1 %.not.i.i, label %_ZN5boost7movelib10destruct_nINS_9container4test24movable_and_copyable_intEPS4_ED2Ev.exit21, label %.lr.ph.i.i, !llvm.loop !17102

_ZN5boost7movelib10destruct_nINS_9container4test24movable_and_copyable_intEPS4_ED2Ev.exit21: ; preds = %bb.i, %.lr.ph.i.i.i.i, %.lr.ph.i14, %._crit_edge57, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive16slow_stable_sortINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEvT_SH_T0_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::container::stable_vector_iterator.71", align 8 ; 4 uses
  %3 = alloca %"class.boost::container::stable_vector_iterator.71", align 8 ; 4 uses
  %4 = alloca %"class.boost::container::stable_vector_iterator.71", align 8 ; 4 uses
  %5 = alloca %"class.boost::container::stable_vector_iterator.71", align 8 ; 8 uses
  %6 = alloca %"class.boost::container::stable_vector_iterator.71", align 8 ; 8 uses
  %7 = alloca %"class.boost::container::stable_vector_iterator.71", align 8 ; 8 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !450    ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !395
  %i.c = load ptr, ptr %0, align 8, !tbaa !450    ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !395  ; 3 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3                   ; 8 uses
  %i.i = icmp ugt i64 %i.h, 16                    ; 2 uses
  br i1 %i.i, label %.lr.ph, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit38

.lr.ph:                                           ; preds = %bb.a, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEENS2_22stable_vector_iteratorIPS7_Lb0EEEEEvT0_SG_T_.exit
  %.033100 = phi i64 [ %i.ai, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEENS2_22stable_vector_iteratorIPS7_Lb0EEEEEvT0_SG_T_.exit ], [ 0, %bb.a ] ; 3 uses
  %.not.i.i = icmp eq i64 %.033100, 0
  br i1 %.not.i.i, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit36, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds [8 x i8], ptr %i.d, i64 %.033100
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !391, !noalias !17125
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit36

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit36: ; preds = %.lr.ph, %bb.b
  %.sroa.082.0 = phi ptr [ %i.k, %bb.b ], [ %i.c, %.lr.ph ] ; 4 uses
  %i.l = load ptr, ptr %.sroa.082.0, align 8, !tbaa !395, !noalias !17126 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 128
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !391, !noalias !17126 ; 3 uses
  %.not.i = icmp eq ptr %.sroa.082.0, %i.n
  br i1 %.not.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEENS2_22stable_vector_iteratorIPS7_Lb0EEEEEvT0_SG_T_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit36
  %.sroa.013.0.in27.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.013.028.i = load ptr, ptr %.sroa.013.0.in27.i, align 8, !tbaa !391 ; 2 uses
  %.not2029.i = icmp eq ptr %.sroa.013.028.i, %i.n
  br i1 %.not2029.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEENS2_22stable_vector_iteratorIPS7_Lb0EEEEEvT0_SG_T_.exit, label %.lr.ph31.i

.lr.ph31.i:                                       ; preds = %bb.c, %bb.f
  %.sroa.013.030.i = phi ptr [ %.sroa.013.0.i, %bb.f ], [ %.sroa.013.028.i, %bb.c ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.013.030.i, i64 8 ; 3 uses
  %i.p = load ptr, ptr %.sroa.013.030.i, align 8, !tbaa !395 ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !391  ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  %i.t = load i32, ptr %i.o, align 8, !tbaa !343  ; 3 uses
  %i.u = load i32, ptr %i.s, align 4, !tbaa !343
  %i.v = icmp slt i32 %i.t, %i.u
  br i1 %i.v, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.lr.ph31.i
  store i32 0, ptr %i.o, align 8, !tbaa !343
  %i.w = load i32, ptr %i.s, align 4, !tbaa !343
  store i32 %i.w, ptr %i.o, align 8, !tbaa !343
  store i32 0, ptr %i.s, align 4, !tbaa !343
  %.not2122.i = icmp eq ptr %i.r, %.sroa.082.0
  br i1 %.not2122.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.e
  %.sroa.0.024.i = phi ptr [ %i.z, %bb.e ], [ %i.r, %bb.d ]
  %.sroa.06.023.i = phi ptr [ %i.ah, %bb.e ], [ %i.r, %bb.d ] ; 3 uses
  %i.x = load ptr, ptr %.sroa.0.024.i, align 8, !tbaa !395
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !391  ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !343 ; 2 uses
  %i.ac = icmp slt i32 %i.t, %i.ab
  br i1 %i.ac, label %bb.e, label %.critedge.i

.critedge.i:                                      ; preds = %bb.e, %.lr.ph.i, %bb.d
  %.sroa.06.0.lcssa.i = phi ptr [ %i.r, %bb.d ], [ %.sroa.06.023.i, %.lr.ph.i ], [ %i.ah, %bb.e ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i, i64 8
  store i32 %i.t, ptr %i.ad, align 4, !tbaa !343
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.06.023.i, i64 8
  store i32 %i.ab, ptr %i.ae, align 4, !tbaa !343
  store i32 0, ptr %i.aa, align 4, !tbaa !343
  %i.af = load ptr, ptr %.sroa.06.023.i, align 8, !tbaa !395
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !391 ; 2 uses
  %.not21.i = icmp eq ptr %i.z, %.sroa.082.0
  br i1 %.not21.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !300

bb.f:                                             ; preds = %.critedge.i, %.lr.ph31.i
  %.sroa.013.0.in.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.013.0.i = load ptr, ptr %.sroa.013.0.in.i, align 8, !tbaa !391 ; 2 uses
  %.not20.i = icmp eq ptr %.sroa.013.0.i, %i.n
  br i1 %.not20.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEENS2_22stable_vector_iteratorIPS7_Lb0EEEEEvT0_SG_T_.exit, label %.lr.ph31.i, !llvm.loop !301

_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEENS2_22stable_vector_iteratorIPS7_Lb0EEEEEvT0_SG_T_.exit: ; preds = %bb.f, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit36, %bb.c
  %i.ai = add i64 %.033100, 16                    ; 4 uses
  %i.aj = sub i64 %i.h, %i.ai
  %i.ak = icmp ugt i64 %i.aj, 16
  br i1 %i.ak, label %.lr.ph, label %._crit_edge, !llvm.loop !17107

._crit_edge:                                      ; preds = %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEENS2_22stable_vector_iteratorIPS7_Lb0EEEEEvT0_SG_T_.exit
  %.not.i.i37 = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i37, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit38, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  %i.al = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.ai
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !391, !noalias !17127
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit38

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit38: ; preds = %bb.a, %._crit_edge, %bb.g
  %.sroa.081.0 = phi ptr [ %i.c, %._crit_edge ], [ %i.am, %bb.g ], [ %i.c, %bb.a ] ; 4 uses
  %.not.i39 = icmp eq ptr %.sroa.081.0, %i.a
  br i1 %.not.i39, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEENS2_22stable_vector_iteratorIPS7_Lb0EEEEEvT0_SG_T_.exit55, label %bb.h

bb.h:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit38
  %i.an = load ptr, ptr %.sroa.081.0, align 8, !tbaa !395
  %.sroa.013.0.in27.i40 = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.sroa.013.028.i41 = load ptr, ptr %.sroa.013.0.in27.i40, align 8, !tbaa !391 ; 2 uses
  %.not2029.i42 = icmp eq ptr %.sroa.013.028.i41, %i.a
  br i1 %.not2029.i42, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEENS2_22stable_vector_iteratorIPS7_Lb0EEEEEvT0_SG_T_.exit55, label %.lr.ph31.i43

.lr.ph31.i43:                                     ; preds = %bb.h, %bb.k
  %.sroa.013.030.i44 = phi ptr [ %.sroa.013.0.i46, %bb.k ], [ %.sroa.013.028.i41, %bb.h ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.013.030.i44, i64 8 ; 3 uses
  %i.ap = load ptr, ptr %.sroa.013.030.i44, align 8, !tbaa !395 ; 2 uses
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 -8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !391 ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 3 uses
  %i.at = load i32, ptr %i.ao, align 8, !tbaa !343 ; 3 uses
  %i.au = load i32, ptr %i.as, align 4, !tbaa !343
  %i.av = icmp slt i32 %i.at, %i.au
  br i1 %i.av, label %bb.i, label %bb.k

bb.i:                                             ; preds = %.lr.ph31.i43
  store i32 0, ptr %i.ao, align 8, !tbaa !343
  %i.aw = load i32, ptr %i.as, align 4, !tbaa !343
  store i32 %i.aw, ptr %i.ao, align 8, !tbaa !343
  store i32 0, ptr %i.as, align 4, !tbaa !343
  %.not2122.i48 = icmp eq ptr %i.ar, %.sroa.081.0
  br i1 %.not2122.i48, label %.critedge.i52, label %.lr.ph.i49

.lr.ph.i49:                                       ; preds = %bb.i, %bb.j
  %.sroa.0.024.i50 = phi ptr [ %i.az, %bb.j ], [ %i.ar, %bb.i ]
  %.sroa.06.023.i51 = phi ptr [ %i.bh, %bb.j ], [ %i.ar, %bb.i ] ; 3 uses
  %i.ax = load ptr, ptr %.sroa.0.024.i50, align 8, !tbaa !395
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 -8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !391 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !343 ; 2 uses
  %i.bc = icmp slt i32 %i.at, %i.bb
  br i1 %i.bc, label %bb.j, label %.critedge.i52

.critedge.i52:                                    ; preds = %bb.j, %.lr.ph.i49, %bb.i
  %.sroa.06.0.lcssa.i53 = phi ptr [ %i.ar, %bb.i ], [ %.sroa.06.023.i51, %.lr.ph.i49 ], [ %i.bh, %bb.j ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i53, i64 8
  store i32 %i.at, ptr %i.bd, align 4, !tbaa !343
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph.i49
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.06.023.i51, i64 8
  store i32 %i.bb, ptr %i.be, align 4, !tbaa !343
  store i32 0, ptr %i.ba, align 4, !tbaa !343
  %i.bf = load ptr, ptr %.sroa.06.023.i51, align 8, !tbaa !395
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !391 ; 2 uses
  %.not21.i54 = icmp eq ptr %i.az, %.sroa.081.0
  br i1 %.not21.i54, label %.critedge.i52, label %.lr.ph.i49, !llvm.loop !300

bb.k:                                             ; preds = %.critedge.i52, %.lr.ph31.i43
  %.sroa.013.0.in.i45 = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sroa.013.0.i46 = load ptr, ptr %.sroa.013.0.in.i45, align 8, !tbaa !391 ; 2 uses
  %.not20.i47 = icmp eq ptr %.sroa.013.0.i46, %i.a
  br i1 %.not20.i47, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEENS2_22stable_vector_iteratorIPS7_Lb0EEEEEvT0_SG_T_.exit55, label %.lr.ph31.i43, !llvm.loop !301

_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEENS2_22stable_vector_iteratorIPS7_Lb0EEEEEvT0_SG_T_.exit55: ; preds = %bb.k, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit38, %bb.h
  br i1 %i.i, label %.lr.ph108, label %._crit_edge109

._crit_edge109:                                   ; preds = %.thread, %bb.s, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEENS2_22stable_vector_iteratorIPS7_Lb0EEEEEvT0_SG_T_.exit55
  ret void

.lr.ph108:                                        ; preds = %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEENS2_22stable_vector_iteratorIPS7_Lb0EEEEEvT0_SG_T_.exit55, %bb.s
  %.032106 = phi i64 [ %i.dt, %bb.s ], [ 16, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEENS2_22stable_vector_iteratorIPS7_Lb0EEEEEvT0_SG_T_.exit55 ] ; 11 uses
  %i.bi = sub i64 %i.h, %.032106
  %i.bj = icmp ugt i64 %i.bi, %.032106            ; 2 uses
  br i1 %i.bj, label %bb.l, label %.thread

bb.l:                                             ; preds = %.lr.ph108
  %i.bk = shl i64 %.032106, 1                     ; 6 uses
  %i.bl = icmp ugt i64 %i.h, %i.bk
  br i1 %i.bl, label %.lr.ph103, label %._crit_edge104.thread

.lr.ph103:                                        ; preds = %bb.l
  %.not.i.i60 = icmp eq i64 %.032106, 0
  %.not.i.i64 = icmp eq i64 %i.bk, 0              ; 2 uses
  br i1 %.not.i.i60, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit63.us, label %.lr.ph103.split

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit63.us: ; preds = %.lr.ph103, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit65.us
  %i.bm = load ptr, ptr %0, align 8, !tbaa !450, !noalias !17128 ; 5 uses
  br i1 %.not.i.i64, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit65.us, label %bb.m

bb.m:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit63.us
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !395, !noalias !17129
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.bk
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !391, !noalias !17129
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit65.us

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit65.us: ; preds = %bb.m, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit63.us
  %.sroa.076.0.us = phi ptr [ %i.bm, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit63.us ], [ %i.bp, %bb.m ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %i.bm, ptr %5, align 8, !tbaa !450
  store ptr %i.bm, ptr %6, align 8, !tbaa !450
  store ptr %.sroa.076.0.us, ptr %7, align 8, !tbaa !450
  %i.bq = load ptr, ptr %i.bm, align 8, !tbaa !395
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = load ptr, ptr %.sroa.076.0.us, align 8, !tbaa !395
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = sub i64 %i.bt, %i.br
  %i.bv = ashr exact i64 %i.bu, 3
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveINS_9container22stable_vector_iteratorIPNS2_4test24movable_and_copyable_intELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEvT_SG_SG_NS0_9iter_sizeISG_E4typeESJ_T0_(ptr noundef nonnull align 8 dead_on_return %5, ptr noundef nonnull align 8 dead_on_return %6, ptr noundef nonnull align 8 dead_on_return %7, i64 noundef 0, i64 noundef %i.bv)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit63.us

.lr.ph103.split:                                  ; preds = %.lr.ph103, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit65
  %.0101 = phi i64 [ %i.cs, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit65 ], [ 0, %.lr.ph103 ] ; 4 uses
  %i.bw = load ptr, ptr %0, align 8, !tbaa !450, !noalias !17128 ; 4 uses
  %.not.i.i56 = icmp eq i64 %.0101, 0
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !395, !noalias !485 ; 2 uses
  br i1 %.not.i.i56, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit63, label %bb.n

bb.n:                                             ; preds = %.lr.ph103.split
  %i.by = getelementptr inbounds [8 x i8], ptr %i.bx, i64 %.0101
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !391, !noalias !17128 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !395, !noalias !17130
  %i.cb = load ptr, ptr %i.bw, align 8, !tbaa !395, !noalias !17131
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %.0101
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !391, !noalias !17131
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit63

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit63: ; preds = %.lr.ph103.split, %bb.n
  %.pn = phi ptr [ %i.ca, %bb.n ], [ %i.bx, %.lr.ph103.split ]
  %.sroa.077.0128 = phi ptr [ %i.bz, %bb.n ], [ %i.bw, %.lr.ph103.split ] ; 2 uses
  %.sroa.075.0 = phi ptr [ %i.cd, %bb.n ], [ %i.bw, %.lr.ph103.split ] ; 2 uses
  %.in = getelementptr inbounds [8 x i8], ptr %.pn, i64 %.032106
  %i.ce = load ptr, ptr %.in, align 8, !tbaa !391, !noalias !17130 ; 2 uses
  br i1 %.not.i.i64, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit65, label %bb.o

bb.o:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit63
  %i.cf = load ptr, ptr %.sroa.075.0, align 8, !tbaa !395, !noalias !17129
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.cf, i64 %i.bk
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !391, !noalias !17129
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit65

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit65: ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit63, %bb.o
  %.sroa.076.0 = phi ptr [ %.sroa.075.0, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit63 ], [ %i.ch, %bb.o ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %.sroa.077.0128, ptr %5, align 8, !tbaa !450
  store ptr %i.ce, ptr %6, align 8, !tbaa !450
  store ptr %.sroa.076.0, ptr %7, align 8, !tbaa !450
  %i.ci = load ptr, ptr %i.ce, align 8, !tbaa !395
  %i.cj = load ptr, ptr %.sroa.077.0128, align 8, !tbaa !395
  %i.ck = ptrtoint ptr %i.ci to i64               ; 2 uses
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = ashr exact i64 %i.cm, 3
  %i.co = load ptr, ptr %.sroa.076.0, align 8, !tbaa !395
  %i.cp = ptrtoint ptr %i.co to i64
  %i.cq = sub i64 %i.cp, %i.ck
  %i.cr = ashr exact i64 %i.cq, 3
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveINS_9container22stable_vector_iteratorIPNS2_4test24movable_and_copyable_intELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEvT_SG_SG_NS0_9iter_sizeISG_E4typeESJ_T0_(ptr noundef nonnull align 8 dead_on_return %5, ptr noundef nonnull align 8 dead_on_return %6, ptr noundef nonnull align 8 dead_on_return %7, i64 noundef %i.cn, i64 noundef %i.cr)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.cs = add i64 %.0101, %i.bk                   ; 5 uses
  %i.ct = sub i64 %i.h, %i.cs
  %i.cu = icmp ugt i64 %i.ct, %i.bk
  br i1 %i.cu, label %.lr.ph103.split, label %._crit_edge104, !llvm.loop !17118

._crit_edge104:                                   ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit65
  %i.cv = sub i64 %i.h, %i.cs
  %i.cw = icmp ugt i64 %i.cv, %.032106
  br i1 %i.cw, label %bb.p, label %bb.s

._crit_edge104.thread:                            ; preds = %bb.l
  %i.cx = icmp ugt i64 %i.h, %.032106
  br i1 %i.cx, label %.thread131, label %bb.s

.thread131:                                       ; preds = %._crit_edge104.thread
  %i.cy = load ptr, ptr %0, align 8, !tbaa !450, !noalias !17132
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit69

.thread:                                          ; preds = %.lr.ph108
  %i.cz = icmp ugt i64 %i.h, %.032106
  br i1 %i.cz, label %.thread91, label %._crit_edge109

.thread91:                                        ; preds = %.thread
  %i.da = load ptr, ptr %0, align 8, !tbaa !450, !noalias !17133
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit69

bb.p:                                             ; preds = %._crit_edge104
  %i.db = load ptr, ptr %0, align 8, !tbaa !450, !noalias !17132 ; 2 uses
  %.not.i.i66 = icmp eq i64 %i.cs, 0
  br i1 %.not.i.i66, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit69, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !395, !noalias !17132
end_hunk_3
