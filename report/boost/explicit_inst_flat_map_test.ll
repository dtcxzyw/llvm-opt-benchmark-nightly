Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/explicit_inst_flat_map_test?download=true
inline.NumInlined: 24578
inline.NumDeleted: 2911
loop-unroll.NumRuntimeUnrolled: 169
loop-unroll.NumUnrolled: 177
begin_hunk_0_@_ZN5boost7movelib10rotate_gcdIPSt4pairINS_9container4test24movable_and_copyable_intES5_EEET_S8_S8_S8_:bb.a
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
  br i1 %.not.not.i, label %.lr.ph.i58, label %.preheader.i, !llvm.loop !52

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
  br i1 %i.av, label %.lr.ph45.i, label %._crit_edge.i, !llvm.loop !53

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
  br i1 %.not64, label %_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5boost7movelib3gcdImEET_S2_S2_.exit
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 %i.e
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %bb.o
  %.04865 = phi ptr [ %0, %.lr.ph ], [ %i.bt, %bb.o ] ; 7 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.04865, i64 4
  %i.bb = load <2 x i32>, ptr %.04865, align 4, !tbaa !254
  store i32 0, ptr %.04865, align 4, !tbaa !254
  %i.bc = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  store i32 0, ptr %i.ba, align 4, !tbaa !254
  %i.bd = add i32 %i.bc, 2
  store i32 %i.bd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.be = getelementptr inbounds nuw i8, ptr %.04865, i64 %i.e
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.n
  %.047 = phi ptr [ %.04865, %bb.m ], [ %.046, %bb.n ] ; 2 uses
  %.046 = phi ptr [ %i.be, %bb.m ], [ %i.bq, %bb.n ] ; 7 uses
  %i.bf = load i32, ptr %.046, align 4, !tbaa !254
  store i32 %i.bf, ptr %.047, align 4, !tbaa !254
  store i32 0, ptr %.046, align 4, !tbaa !254
  %i.bg = getelementptr inbounds nuw i8, ptr %.046, i64 4 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.047, i64 4
  %i.bi = load i32, ptr %i.bg, align 4, !tbaa !254
  store i32 %i.bi, ptr %i.bh, align 4, !tbaa !254
  store i32 0, ptr %i.bg, align 4, !tbaa !254
  %i.bj = ptrtoint ptr %.046 to i64
  %i.bk = sub i64 %i.r, %i.bj
  %i.bl = ashr exact i64 %i.bk, 3                 ; 2 uses
  %i.bm = icmp ugt i64 %i.bl, %i.f
  %i.bn = getelementptr inbounds nuw i8, ptr %.046, i64 %i.e
  %i.bo = sub nsw i64 0, %i.bl
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.bo
  %i.bq = select i1 %i.bm, ptr %i.bn, ptr %i.bp   ; 2 uses
  %.not55 = icmp eq ptr %i.bq, %.04865
  br i1 %.not55, label %bb.o, label %bb.n, !llvm.loop !3710

bb.o:                                             ; preds = %bb.n
  store <2 x i32> %i.bb, ptr %.046, align 4, !tbaa !254
  %i.br = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.bs = add i32 %i.br, -2
  store i32 %i.bs, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.bt = getelementptr inbounds nuw i8, ptr %.04865, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.bt, %i.ay
  br i1 %.not, label %_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit, label %bb.m, !llvm.loop !3711

_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit: ; preds = %bb.o, %.lr.ph.i, %_ZN5boost7movelib3gcdImEET_S2_S2_.exit, %bb.b, %bb.a
  %.0 = phi ptr [ %0, %bb.b ], [ %2, %bb.a ], [ %i.h, %_ZN5boost7movelib3gcdImEET_S2_S2_.exit ], [ %i.h, %.lr.ph.i ], [ %i.h, %bb.o ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive16slow_stable_sortIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEEEEvT_SG_T0_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 3                   ; 6 uses
  %i.e = icmp ugt i64 %i.d, 16                    ; 2 uses
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_EEvT0_SF_T_.exit
  %.04460 = phi i64 [ %i.z, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_EEvT0_SF_T_.exit ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.04460 ; 6 uses
  br label %.lr.ph42.i

.lr.ph42.i:                                       ; preds = %.lr.ph, %bb.d
  %.02541.i.idx = phi i64 [ %.02541.i.add, %bb.d ], [ 8, %.lr.ph ] ; 2 uses
  %.pn40.i = phi ptr [ %.02541.i.ptr, %bb.d ], [ %i.f, %.lr.ph ] ; 7 uses
  %.02541.i.ptr = getelementptr inbounds nuw i8, ptr %i.f, i64 %.02541.i.idx ; 4 uses
  %i.g = load i32, ptr %.02541.i.ptr, align 4, !tbaa !254 ; 3 uses
  %i.h = load i32, ptr %.pn40.i, align 4, !tbaa !254
  %i.i = icmp slt i32 %i.g, %i.h
  br i1 %i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph42.i
  store i32 0, ptr %.02541.i.ptr, align 4, !tbaa !254
  %i.j = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.k = getelementptr inbounds nuw i8, ptr %.pn40.i, i64 12 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !254
  %i.m = add i32 %i.j, 2
  store i32 %i.m, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.n = load i32, ptr %.pn40.i, align 4, !tbaa !254
  store i32 %i.n, ptr %.02541.i.ptr, align 4, !tbaa !254
  store i32 0, ptr %.pn40.i, align 4, !tbaa !254
  %i.o = getelementptr inbounds nuw i8, ptr %.pn40.i, i64 4 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !254
  store i32 %i.p, ptr %i.k, align 4, !tbaa !254
  store i32 0, ptr %i.o, align 4, !tbaa !254
  %.not2933.i = icmp eq ptr %.pn40.i, %i.f
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
  %.not29.i = icmp eq ptr %i.q, %i.f
  br i1 %.not29.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !41

._crit_edge.i:                                    ; preds = %bb.c, %.lr.ph.i, %bb.b
  %.024.lcssa.i = phi ptr [ %i.f, %bb.b ], [ %i.f, %bb.c ], [ %.035.i, %.lr.ph.i ] ; 2 uses
  store i32 %i.g, ptr %.024.lcssa.i, align 4, !tbaa !254
  %i.w = getelementptr inbounds nuw i8, ptr %.024.lcssa.i, i64 4
  store i32 %i.l, ptr %i.w, align 4, !tbaa !254
  %i.x = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.y = add i32 %i.x, -2
  store i32 %i.y, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i, %.lr.ph42.i
  %.02541.i.add = add nuw nsw i64 %.02541.i.idx, 8 ; 2 uses
  %.not28.i = icmp eq i64 %.02541.i.add, 128
  br i1 %.not28.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_EEvT0_SF_T_.exit, label %.lr.ph42.i, !llvm.loop !42

_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_EEvT0_SF_T_.exit: ; preds = %bb.d
  %i.z = add i64 %.04460, 16                      ; 3 uses
  %i.aa = sub i64 %i.d, %i.z
  %i.ab = icmp ugt i64 %i.aa, 16
  br i1 %i.ab, label %.lr.ph, label %._crit_edge, !llvm.loop !3712

._crit_edge:                                      ; preds = %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_EEvT0_SF_T_.exit, %bb.a
  %.044.lcssa = phi i64 [ 0, %bb.a ], [ %i.z, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_EEvT0_SF_T_.exit ]
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.044.lcssa ; 7 uses
  %.not.i = icmp eq ptr %i.ac, %1
  %.02538.i46 = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %.not2839.i = icmp eq ptr %.02538.i46, %1
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not2839.i
  br i1 %or.cond.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_EEvT0_SF_T_.exit58, label %.lr.ph42.i47

.lr.ph42.i47:                                     ; preds = %._crit_edge, %bb.g
  %.02541.i48 = phi ptr [ %.025.i50, %bb.g ], [ %.02538.i46, %._crit_edge ] ; 5 uses
  %.pn40.i49 = phi ptr [ %.02541.i48, %bb.g ], [ %i.ac, %._crit_edge ] ; 7 uses
  %i.ad = load i32, ptr %.02541.i48, align 4, !tbaa !254 ; 3 uses
  %i.ae = load i32, ptr %.pn40.i49, align 4, !tbaa !254
  %i.af = icmp slt i32 %i.ad, %i.ae
  br i1 %i.af, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph42.i47
  store i32 0, ptr %.02541.i48, align 4, !tbaa !254
  %i.ag = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.ah = getelementptr inbounds nuw i8, ptr %.pn40.i49, i64 12 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !254
  %i.aj = add i32 %i.ag, 2
  store i32 %i.aj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.ak = load i32, ptr %.pn40.i49, align 4, !tbaa !254
  store i32 %i.ak, ptr %.02541.i48, align 4, !tbaa !254
  store i32 0, ptr %.pn40.i49, align 4, !tbaa !254
  %i.al = getelementptr inbounds nuw i8, ptr %.pn40.i49, i64 4 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !254
  store i32 %i.am, ptr %i.ah, align 4, !tbaa !254
  store i32 0, ptr %i.al, align 4, !tbaa !254
  %.not2933.i52 = icmp eq ptr %.pn40.i49, %i.ac
  br i1 %.not2933.i52, label %._crit_edge.i55, label %.lr.ph.i53

.lr.ph.i53:                                       ; preds = %bb.e, %bb.f
  %.035.i54 = phi ptr [ %i.an, %bb.f ], [ %.pn40.i49, %bb.e ] ; 5 uses
  %i.an = getelementptr i8, ptr %.035.i54, i64 -8 ; 4 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !254 ; 2 uses
  %i.ap = icmp slt i32 %i.ad, %i.ao
  br i1 %i.ap, label %bb.f, label %._crit_edge.i55

bb.f:                                             ; preds = %.lr.ph.i53
  store i32 %i.ao, ptr %.035.i54, align 4, !tbaa !254
  store i32 0, ptr %i.an, align 4, !tbaa !254
  %i.aq = getelementptr inbounds i8, ptr %.035.i54, i64 -4 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.035.i54, i64 4
  %i.as = load i32, ptr %i.aq, align 4, !tbaa !254
  store i32 %i.as, ptr %i.ar, align 4, !tbaa !254
  store i32 0, ptr %i.aq, align 4, !tbaa !254
  %.not29.i57 = icmp eq ptr %i.an, %i.ac
  br i1 %.not29.i57, label %._crit_edge.i55, label %.lr.ph.i53, !llvm.loop !41

._crit_edge.i55:                                  ; preds = %bb.f, %.lr.ph.i53, %bb.e
  %.024.lcssa.i56 = phi ptr [ %i.ac, %bb.e ], [ %i.ac, %bb.f ], [ %.035.i54, %.lr.ph.i53 ] ; 2 uses
  store i32 %i.ad, ptr %.024.lcssa.i56, align 4, !tbaa !254
  %i.at = getelementptr inbounds nuw i8, ptr %.024.lcssa.i56, i64 4
  store i32 %i.ai, ptr %i.at, align 4, !tbaa !254
  %i.au = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.av = add i32 %i.au, -2
  store i32 %i.av, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.i55, %.lr.ph42.i47
  %.025.i50 = getelementptr inbounds nuw i8, ptr %.02541.i48, i64 8 ; 2 uses
  %.not28.i51 = icmp eq ptr %.025.i50, %1
  br i1 %.not28.i51, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_EEvT0_SF_T_.exit58, label %.lr.ph42.i47, !llvm.loop !42

_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_EEvT0_SF_T_.exit58: ; preds = %bb.g, %._crit_edge
  br i1 %i.e, label %.lr.ph67, label %._crit_edge68

._crit_edge68:                                    ; preds = %bb.k, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_EEvT0_SF_T_.exit58
  ret void

.lr.ph67:                                         ; preds = %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_EEvT0_SF_T_.exit58, %bb.k
  %.04365 = phi i64 [ %i.bo, %bb.k ], [ 16, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_EEvT0_SF_T_.exit58 ] ; 10 uses
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
  tail call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEEvT_SF_SF_NS0_9iter_sizeISF_E4typeESI_T0_(ptr noundef %i.bb, ptr noundef %i.bc, ptr noundef %i.bd, i64 noundef %.04365, i64 noundef %i.ba)
  %i.be = add i64 %.061, %i.ay                    ; 3 uses
  %i.bf = sub i64 %i.d, %i.be
  %i.bg = icmp ugt i64 %i.bf, %i.ay
  br i1 %i.bg, label %bb.i, label %.loopexit, !llvm.loop !3713

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
  tail call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEEvT_SF_SF_NS0_9iter_sizeISF_E4typeESI_T0_(ptr noundef %i.bj, ptr noundef %i.bk, ptr noundef %1, i64 noundef %.04365, i64 noundef %i.bn)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.loopexit
  %i.bo = shl i64 %.04365, 1
  br i1 %i.ax, label %.lr.ph67, label %._crit_edge68, !llvm.loop !3714
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEEvT_SF_SF_NS0_9iter_sizeISF_E4typeESI_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = icmp ne i64 %4, 0
  %i.b = icmp ne i64 %3, 0
  %or.cond92 = and i1 %i.a, %i.b
  br i1 %or.cond92, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a, %bb.n
  %.06799 = phi i64 [ %.1, %bb.n ], [ %4, %bb.a ] ; 6 uses
  %.06898 = phi i64 [ %.169, %bb.n ], [ %3, %bb.a ] ; 6 uses
  %.07096 = phi ptr [ %.171, %bb.n ], [ %2, %bb.a ] ; 5 uses
  %.07294 = phi ptr [ %.173, %bb.n ], [ %1, %bb.a ] ; 13 uses
  %.07493 = phi ptr [ %.175, %bb.n ], [ %0, %bb.a ] ; 12 uses
  %i.c = or i64 %.06799, %.06898
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %i.e = load i32, ptr %.07294, align 4, !tbaa !254
  %i.f = load i32, ptr %.07493, align 4, !tbaa !254 ; 2 uses
  %i.g = icmp slt i32 %i.e, %i.f
  br i1 %i.g, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %.07493, align 4, !tbaa !254
  %i.h = load i32, ptr %.07294, align 4, !tbaa !254
  store i32 %i.h, ptr %.07493, align 4, !tbaa !254
  store i32 %i.f, ptr %.07294, align 4, !tbaa !254
  %i.i = getelementptr inbounds nuw i8, ptr %.07493, i64 4 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.07294, i64 4 ; 2 uses
  %i.k = load i32, ptr %i.i, align 4, !tbaa !254
  store i32 0, ptr %i.i, align 4, !tbaa !254
  %i.l = load i32, ptr %i.j, align 4, !tbaa !254
  store i32 %i.l, ptr %i.i, align 4, !tbaa !254
  store i32 %i.k, ptr %i.j, align 4, !tbaa !254
  br label %.loopexit

bb.d:                                             ; preds = %.lr.ph
  %i.m = add i64 %.06799, %.06898                 ; 2 uses
  %i.n = icmp ult i64 %i.m, 16
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5boost7movelib20merge_bufferless_ON2IPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEEvT_SF_SF_T0_(ptr noundef %.07493, ptr noundef %.07294, ptr noundef %.07096)
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.o = icmp ugt i64 %.06898, %.06799
  br i1 %i.o, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.p = lshr i64 %.06898, 1                      ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.07493, i64 %i.p ; 2 uses
  %.not15.i = icmp eq ptr %.07096, %.07294
  %.pre = ptrtoint ptr %.07294 to i64             ; 3 uses
  br i1 %.not15.i, label %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g
  %i.r = ptrtoint ptr %.07096 to i64
  %i.s = sub i64 %i.r, %.pre
  %i.t = ashr exact i64 %i.s, 3
  %i.u = load i32, ptr %i.q, align 4, !tbaa !254
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.i
  %.017.i = phi i64 [ %i.t, %.lr.ph.i ], [ %.1.i, %bb.h ] ; 2 uses
  %.01316.i = phi ptr [ %.07294, %.lr.ph.i ], [ %.114.i, %bb.h ] ; 2 uses
  %i.v = lshr i64 %.017.i, 1                      ; 3 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %.01316.i, i64 %i.v ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !254
  %i.y = icmp slt i32 %i.x, %i.u                  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.neg.i = xor i64 %i.v, -1
  %i.aa = add i64 %.017.i, %.neg.i
end_hunk_0
begin_hunk_1_@_ZN5boost7movelib37uninitialized_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS2_22stable_vector_iteratorIPSA_Lb0EEESF_EEvT0_SH_T1_SI_SI_T_:bb.a
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
  %i.j = load i32, ptr %i.i, align 4, !tbaa !254
  store i32 %i.j, ptr %.13753, align 4, !tbaa !254
  store i32 0, ptr %i.i, align 4, !tbaa !254
  %i.k = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.l = getelementptr inbounds nuw i8, ptr %.13753, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 12 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !254
  store i32 %i.n, ptr %i.l, align 4, !tbaa !254
  store i32 0, ptr %i.m, align 4, !tbaa !254
  %i.o = add i32 %i.k, 2
  store i32 %i.o, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.p = getelementptr inbounds nuw i8, ptr %.13753, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !289
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !287  ; 3 uses
  store ptr %i.s, ptr %0, align 8, !tbaa !292
  %.not = icmp eq ptr %i.p, %3
  br i1 %.not, label %._crit_edge55.loopexit, label %.lr.ph54, !llvm.loop !6742

._crit_edge55.loopexit:                           ; preds = %.lr.ph54
  %.pre63 = load ptr, ptr %1, align 8, !tbaa !292
  br label %._crit_edge55

._crit_edge55:                                    ; preds = %._crit_edge55.loopexit, %.preheader
  %i.t = phi ptr [ %.pre63, %._crit_edge55.loopexit ], [ %i.f, %.preheader ] ; 2 uses
  %i.u = phi ptr [ %i.s, %._crit_edge55.loopexit ], [ %.promoted, %.preheader ] ; 2 uses
  %.not3.i = icmp eq ptr %i.u, %i.t
  br i1 %.not3.i, label %_ZN5boost7movelib10destruct_nISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_ED2Ev.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge55, %.lr.ph.i
  %i.v = phi ptr [ %i.ad, %.lr.ph.i ], [ %i.u, %._crit_edge55 ] ; 3 uses
  %.04.i = phi ptr [ %i.ae, %.lr.ph.i ], [ %3, %._crit_edge55 ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !254
  store i32 %i.x, ptr %.04.i, align 4, !tbaa !254
  store i32 0, ptr %i.w, align 4, !tbaa !254
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 12 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.04.i, i64 4
  %i.aa = load i32, ptr %i.y, align 4, !tbaa !254
  store i32 %i.aa, ptr %i.z, align 4, !tbaa !254
  store i32 0, ptr %i.y, align 4, !tbaa !254
  %i.ab = load ptr, ptr %i.v, align 8, !tbaa !289
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !287 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.04.i, i64 8
  %.not.i = icmp eq ptr %i.ad, %i.t
  br i1 %.not.i, label %_ZN5boost7movelib10destruct_nISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_ED2Ev.exit, label %.lr.ph.i, !llvm.loop !104

bb.b:                                             ; preds = %.lr.ph
  %i.af = getelementptr inbounds nuw i8, ptr %.promoted, i64 8 ; 2 uses
  %i.ag = load i32, ptr %.01449, align 4, !tbaa !254 ; 2 uses
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !254 ; 2 uses
  %i.ai = icmp slt i32 %i.ag, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %.048, i64 4 ; 2 uses
  br i1 %i.ai, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 %i.ag, ptr %.048, align 4, !tbaa !254
  store i32 0, ptr %.01449, align 4, !tbaa !254
  %i.ak = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.al = getelementptr inbounds nuw i8, ptr %.01449, i64 4 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !254
  store i32 %i.am, ptr %i.aj, align 4, !tbaa !254
  store i32 0, ptr %i.al, align 4, !tbaa !254
  %i.an = getelementptr inbounds nuw i8, ptr %.01449, i64 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  store i32 %i.ah, ptr %.048, align 4, !tbaa !254
  store i32 0, ptr %i.af, align 4, !tbaa !254
  %i.ao = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.ap = getelementptr inbounds nuw i8, ptr %.promoted, i64 12 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !254
  store i32 %i.aq, ptr %i.aj, align 4, !tbaa !254
  store i32 0, ptr %i.ap, align 4, !tbaa !254
  %i.ar = load ptr, ptr %.promoted, align 8, !tbaa !289
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !287 ; 2 uses
  store ptr %i.at, ptr %0, align 8, !tbaa !292
  %.pre = load ptr, ptr %1, align 8, !tbaa !292
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.au = phi ptr [ %i.f, %bb.c ], [ %.pre, %bb.d ] ; 3 uses
  %i.av = phi ptr [ %.promoted, %bb.c ], [ %i.at, %bb.d ] ; 3 uses
  %.sink.in = phi i32 [ %i.ak, %bb.c ], [ %i.ao, %bb.d ]
  %.1 = phi ptr [ %i.an, %bb.c ], [ %.01449, %bb.d ] ; 2 uses
  %.sink = add i32 %.sink.in, 2
  store i32 %.sink, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.aw = getelementptr inbounds nuw i8, ptr %.048, i64 8 ; 2 uses
  %i.ax = icmp ne ptr %i.av, %i.au
  %i.ay = icmp ne ptr %i.aw, %3
  %i.az = select i1 %i.ax, i1 %i.ay, i1 false
  br i1 %i.az, label %.lr.ph, label %._crit_edge, !llvm.loop !6743

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %.014.lcssa = phi ptr [ %3, %bb.a ], [ %.1, %bb.e ]
  %.lcssa44 = phi ptr [ %i.a, %bb.a ], [ %i.av, %bb.e ] ; 2 uses
  %.lcssa42 = phi ptr [ %i.b, %bb.a ], [ %i.au, %bb.e ] ; 3 uses
  %.not17.i.i = icmp eq ptr %.lcssa44, %.lcssa42
  br i1 %.not17.i.i, label %_ZN5boost7movelib10destruct_nISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_ED2Ev.exit, label %.lr.ph.i.i

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
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !254
  store i32 %i.be, ptr %.04.i.i.i.i, align 4, !tbaa !254
  store i32 0, ptr %i.bd, align 4, !tbaa !254
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 12 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i, i64 4
  %i.bh = load i32, ptr %i.bf, align 4, !tbaa !254
  store i32 %i.bh, ptr %i.bg, align 4, !tbaa !254
  store i32 0, ptr %i.bf, align 4, !tbaa !254
  %i.bi = load ptr, ptr %i.bc, align 8, !tbaa !289
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !287 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.bk, %.lcssa42
  br i1 %.not.i.i.i.i, label %_ZN5boost7movelib10destruct_nISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_ED2Ev.exit, label %.lr.ph.i.i.i.i, !llvm.loop !104

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 2 uses
  %i.bn = load i32, ptr %.0918.i.i, align 4, !tbaa !254 ; 2 uses
  %i.bo = load i32, ptr %i.bm, align 4, !tbaa !254 ; 2 uses
  %i.bp = icmp slt i32 %i.bn, %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 4 ; 2 uses
  br i1 %i.bp, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 %i.bn, ptr %.019.i.i, align 4, !tbaa !254
  store i32 0, ptr %.0918.i.i, align 4, !tbaa !254
  %i.br = getelementptr inbounds nuw i8, ptr %.0918.i.i, i64 4 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !254
  store i32 %i.bs, ptr %i.bq, align 4, !tbaa !254
  store i32 0, ptr %i.br, align 4, !tbaa !254
  %i.bt = getelementptr inbounds nuw i8, ptr %.0918.i.i, i64 8
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  store i32 %i.bo, ptr %.019.i.i, align 4, !tbaa !254
  store i32 0, ptr %i.bm, align 4, !tbaa !254
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ba, i64 12 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !254
  store i32 %i.bv, ptr %i.bq, align 4, !tbaa !254
  store i32 0, ptr %i.bu, align 4, !tbaa !254
  %i.bw = load ptr, ptr %i.ba, align 8, !tbaa !289
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !287
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bz = phi ptr [ %i.ba, %bb.g ], [ %i.by, %bb.h ] ; 2 uses
  %.1.i.i = phi ptr [ %i.bt, %bb.g ], [ %.0918.i.i, %bb.h ]
  %i.ca = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 8
  %.not.i.i = icmp eq ptr %i.bz, %.lcssa42
  br i1 %.not.i.i, label %_ZN5boost7movelib10destruct_nISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_ED2Ev.exit, label %.lr.ph.i.i, !llvm.loop !6744

_ZN5boost7movelib10destruct_nISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_ED2Ev.exit: ; preds = %bb.i, %.lr.ph.i.i.i.i, %.lr.ph.i, %._crit_edge55, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive16slow_stable_sortINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSB_9select1stIS7_EEEEEEvT_SI_T0_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %3 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %4 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %5 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 8 uses
  %6 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 8 uses
  %7 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 8 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !292    ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !289
  %i.c = load ptr, ptr %0, align 8, !tbaa !292    ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !289  ; 3 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3                   ; 8 uses
  %i.i = icmp ugt i64 %i.h, 16                    ; 2 uses
  br i1 %i.i, label %.lr.ph, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit38

.lr.ph:                                           ; preds = %bb.a, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS2_22stable_vector_iteratorIPSA_Lb0EEEEEvT0_SH_T_.exit
  %.033100 = phi i64 [ %i.aq, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS2_22stable_vector_iteratorIPSA_Lb0EEEEEvT0_SH_T_.exit ], [ 0, %bb.a ] ; 3 uses
  %.not.i.i = icmp eq i64 %.033100, 0
  br i1 %.not.i.i, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit36, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds [8 x i8], ptr %i.d, i64 %.033100
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !287, !noalias !6767
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit36

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit36: ; preds = %.lr.ph, %bb.b
  %.sroa.082.0 = phi ptr [ %i.k, %bb.b ], [ %i.c, %.lr.ph ] ; 4 uses
  %i.l = load ptr, ptr %.sroa.082.0, align 8, !tbaa !289, !noalias !6768 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 128
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !287, !noalias !6768 ; 3 uses
  %.not.i = icmp eq ptr %.sroa.082.0, %i.n
  br i1 %.not.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS2_22stable_vector_iteratorIPSA_Lb0EEEEEvT0_SH_T_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit36
  %.sroa.015.0.in29.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.015.030.i = load ptr, ptr %.sroa.015.0.in29.i, align 8, !tbaa !287 ; 2 uses
  %.not2231.i = icmp eq ptr %.sroa.015.030.i, %i.n
  br i1 %.not2231.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS2_22stable_vector_iteratorIPSA_Lb0EEEEEvT0_SH_T_.exit, label %.lr.ph34.i

.lr.ph34.i:                                       ; preds = %bb.c, %bb.f
  %.sroa.015.032.i = phi ptr [ %.sroa.015.0.i, %bb.f ], [ %.sroa.015.030.i, %bb.c ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.015.032.i, i64 8 ; 3 uses
  %i.p = load ptr, ptr %.sroa.015.032.i, align 8, !tbaa !289 ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !287  ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  %i.t = load i32, ptr %i.o, align 8, !tbaa !254  ; 3 uses
  %i.u = load i32, ptr %i.s, align 4, !tbaa !254
  %i.v = icmp slt i32 %i.t, %i.u
  br i1 %i.v, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.lr.ph34.i
  store i32 0, ptr %i.o, align 8, !tbaa !254
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.015.032.i, i64 12 ; 3 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !254
  store i32 0, ptr %i.w, align 4, !tbaa !254
  %i.y = load i32, ptr %i.s, align 4, !tbaa !254
  store i32 %i.y, ptr %i.o, align 8, !tbaa !254
  store i32 0, ptr %i.s, align 4, !tbaa !254
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 12 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !254
  store i32 %i.aa, ptr %i.w, align 4, !tbaa !254
  store i32 0, ptr %i.z, align 4, !tbaa !254
  %.not2324.i = icmp eq ptr %i.r, %.sroa.082.0
  br i1 %.not2324.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.e
  %.sroa.0.026.i = phi ptr [ %i.ad, %bb.e ], [ %i.r, %bb.d ]
  %.sroa.08.025.i = phi ptr [ %i.an, %bb.e ], [ %i.r, %bb.d ] ; 4 uses
  %i.ab = load ptr, ptr %.sroa.0.026.i, align 8, !tbaa !289
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !287 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !254 ; 2 uses
  %i.ag = icmp slt i32 %i.t, %i.af
  br i1 %i.ag, label %bb.e, label %._crit_edge.i

bb.e:                                             ; preds = %.lr.ph.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.08.025.i, i64 8
  store i32 %i.af, ptr %i.ah, align 4, !tbaa !254
  store i32 0, ptr %i.ae, align 4, !tbaa !254
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 12 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.08.025.i, i64 12
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !254
  store i32 %i.ak, ptr %i.aj, align 4, !tbaa !254
  store i32 0, ptr %i.ai, align 4, !tbaa !254
  %i.al = load ptr, ptr %.sroa.08.025.i, align 8, !tbaa !289
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !287 ; 2 uses
  %.not23.i = icmp eq ptr %i.ad, %.sroa.082.0
  br i1 %.not23.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !130

._crit_edge.i:                                    ; preds = %bb.e, %.lr.ph.i, %bb.d
  %.sroa.08.0.lcssa.i = phi ptr [ %i.r, %bb.d ], [ %i.an, %bb.e ], [ %.sroa.08.025.i, %.lr.ph.i ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i, i64 8
  store i32 %i.t, ptr %i.ao, align 4, !tbaa !254
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i, i64 12
  store i32 %i.x, ptr %i.ap, align 4, !tbaa !254
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i, %.lr.ph34.i
  %.sroa.015.0.in.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.015.0.i = load ptr, ptr %.sroa.015.0.in.i, align 8, !tbaa !287 ; 2 uses
  %.not22.i = icmp eq ptr %.sroa.015.0.i, %i.n
  br i1 %.not22.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS2_22stable_vector_iteratorIPSA_Lb0EEEEEvT0_SH_T_.exit, label %.lr.ph34.i, !llvm.loop !131

_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS2_22stable_vector_iteratorIPSA_Lb0EEEEEvT0_SH_T_.exit: ; preds = %bb.f, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit36, %bb.c
  %i.aq = add i64 %.033100, 16                    ; 4 uses
  %i.ar = sub i64 %i.h, %i.aq
  %i.as = icmp ugt i64 %i.ar, 16
  br i1 %i.as, label %.lr.ph, label %._crit_edge, !llvm.loop !6749

._crit_edge:                                      ; preds = %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS2_22stable_vector_iteratorIPSA_Lb0EEEEEvT0_SH_T_.exit
  %.not.i.i37 = icmp eq i64 %i.aq, 0
  br i1 %.not.i.i37, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit38, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  %i.at = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.aq
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !287, !noalias !6769
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit38

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit38: ; preds = %bb.a, %._crit_edge, %bb.g
  %.sroa.081.0 = phi ptr [ %i.c, %._crit_edge ], [ %i.au, %bb.g ], [ %i.c, %bb.a ] ; 4 uses
  %.not.i39 = icmp eq ptr %.sroa.081.0, %i.a
  br i1 %.not.i39, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS2_22stable_vector_iteratorIPSA_Lb0EEEEEvT0_SH_T_.exit55, label %bb.h

bb.h:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit38
  %i.av = load ptr, ptr %.sroa.081.0, align 8, !tbaa !289
  %.sroa.015.0.in29.i40 = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.sroa.015.030.i41 = load ptr, ptr %.sroa.015.0.in29.i40, align 8, !tbaa !287 ; 2 uses
  %.not2231.i42 = icmp eq ptr %.sroa.015.030.i41, %i.a
  br i1 %.not2231.i42, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS2_22stable_vector_iteratorIPSA_Lb0EEEEEvT0_SH_T_.exit55, label %.lr.ph34.i43

.lr.ph34.i43:                                     ; preds = %bb.h, %bb.k
  %.sroa.015.032.i44 = phi ptr [ %.sroa.015.0.i46, %bb.k ], [ %.sroa.015.030.i41, %bb.h ] ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.015.032.i44, i64 8 ; 3 uses
  %i.ax = load ptr, ptr %.sroa.015.032.i44, align 8, !tbaa !289 ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 -8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !287 ; 6 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 3 uses
  %i.bb = load i32, ptr %i.aw, align 8, !tbaa !254 ; 3 uses
  %i.bc = load i32, ptr %i.ba, align 4, !tbaa !254
  %i.bd = icmp slt i32 %i.bb, %i.bc
  br i1 %i.bd, label %bb.i, label %bb.k

bb.i:                                             ; preds = %.lr.ph34.i43
  store i32 0, ptr %i.aw, align 8, !tbaa !254
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.015.032.i44, i64 12 ; 3 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !254
  store i32 0, ptr %i.be, align 4, !tbaa !254
  %i.bg = load i32, ptr %i.ba, align 4, !tbaa !254
  store i32 %i.bg, ptr %i.aw, align 8, !tbaa !254
  store i32 0, ptr %i.ba, align 4, !tbaa !254
  %i.bh = getelementptr inbounds nuw i8, ptr %i.az, i64 12 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !254
  store i32 %i.bi, ptr %i.be, align 4, !tbaa !254
  store i32 0, ptr %i.bh, align 4, !tbaa !254
  %.not2324.i48 = icmp eq ptr %i.az, %.sroa.081.0
  br i1 %.not2324.i48, label %._crit_edge.i52, label %.lr.ph.i49

.lr.ph.i49:                                       ; preds = %bb.i, %bb.j
  %.sroa.0.026.i50 = phi ptr [ %i.bl, %bb.j ], [ %i.az, %bb.i ]
  %.sroa.08.025.i51 = phi ptr [ %i.bv, %bb.j ], [ %i.az, %bb.i ] ; 4 uses
  %i.bj = load ptr, ptr %.sroa.0.026.i50, align 8, !tbaa !289
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 -8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !287 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !254 ; 2 uses
  %i.bo = icmp slt i32 %i.bb, %i.bn
  br i1 %i.bo, label %bb.j, label %._crit_edge.i52

bb.j:                                             ; preds = %.lr.ph.i49
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.08.025.i51, i64 8
  store i32 %i.bn, ptr %i.bp, align 4, !tbaa !254
  store i32 0, ptr %i.bm, align 4, !tbaa !254
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 12 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.08.025.i51, i64 12
  %i.bs = load i32, ptr %i.bq, align 4, !tbaa !254
  store i32 %i.bs, ptr %i.br, align 4, !tbaa !254
  store i32 0, ptr %i.bq, align 4, !tbaa !254
  %i.bt = load ptr, ptr %.sroa.08.025.i51, align 8, !tbaa !289
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 -8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !287 ; 2 uses
  %.not23.i54 = icmp eq ptr %i.bl, %.sroa.081.0
  br i1 %.not23.i54, label %._crit_edge.i52, label %.lr.ph.i49, !llvm.loop !130

._crit_edge.i52:                                  ; preds = %bb.j, %.lr.ph.i49, %bb.i
  %.sroa.08.0.lcssa.i53 = phi ptr [ %i.az, %bb.i ], [ %i.bv, %bb.j ], [ %.sroa.08.025.i51, %.lr.ph.i49 ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i53, i64 8
  store i32 %i.bb, ptr %i.bw, align 4, !tbaa !254
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i53, i64 12
  store i32 %i.bf, ptr %i.bx, align 4, !tbaa !254
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge.i52, %.lr.ph34.i43
  %.sroa.015.0.in.i45 = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.sroa.015.0.i46 = load ptr, ptr %.sroa.015.0.in.i45, align 8, !tbaa !287 ; 2 uses
  %.not22.i47 = icmp eq ptr %.sroa.015.0.i46, %i.a
  br i1 %.not22.i47, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS2_22stable_vector_iteratorIPSA_Lb0EEEEEvT0_SH_T_.exit55, label %.lr.ph34.i43, !llvm.loop !131

_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS2_22stable_vector_iteratorIPSA_Lb0EEEEEvT0_SH_T_.exit55: ; preds = %bb.k, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit38, %bb.h
  br i1 %i.i, label %.lr.ph108, label %._crit_edge109

._crit_edge109:                                   ; preds = %.thread, %bb.s, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS2_22stable_vector_iteratorIPSA_Lb0EEEEEvT0_SH_T_.exit55
  ret void

.lr.ph108:                                        ; preds = %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS2_22stable_vector_iteratorIPSA_Lb0EEEEEvT0_SH_T_.exit55, %bb.s
  %.032106 = phi i64 [ %i.ej, %bb.s ], [ 16, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS2_22stable_vector_iteratorIPSA_Lb0EEEEEvT0_SH_T_.exit55 ] ; 11 uses
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
  br i1 %.not.i.i60, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit63.us, label %.lr.ph103.split

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit63.us: ; preds = %.lr.ph103, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit65.us
  %i.cc = load ptr, ptr %0, align 8, !tbaa !292, !noalias !6770 ; 5 uses
  br i1 %.not.i.i64, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit65.us, label %bb.m

bb.m:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit63.us
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !289, !noalias !6771
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.ca
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !287, !noalias !6771
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit65.us

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit65.us: ; preds = %bb.m, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit63.us
  %.sroa.076.0.us = phi ptr [ %i.cc, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit63.us ], [ %i.cf, %bb.m ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %i.cc, ptr %5, align 8, !tbaa !292
  store ptr %i.cc, ptr %6, align 8, !tbaa !292
  store ptr %.sroa.076.0.us, ptr %7, align 8, !tbaa !292
  %i.cg = load ptr, ptr %i.cc, align 8, !tbaa !289
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = load ptr, ptr %.sroa.076.0.us, align 8, !tbaa !289
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = sub i64 %i.cj, %i.ch
  %i.cl = ashr exact i64 %i.ck, 3
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveINS_9container22stable_vector_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEEvT_SH_SH_NS0_9iter_sizeISH_E4typeESK_T0_(ptr noundef nonnull align 8 dead_on_return %5, ptr noundef nonnull align 8 dead_on_return %6, ptr noundef nonnull align 8 dead_on_return %7, i64 noundef 0, i64 noundef %i.cl)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit63.us

.lr.ph103.split:                                  ; preds = %.lr.ph103, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit65
  %.0101 = phi i64 [ %i.di, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit65 ], [ 0, %.lr.ph103 ] ; 4 uses
  %i.cm = load ptr, ptr %0, align 8, !tbaa !292, !noalias !6770 ; 4 uses
  %.not.i.i56 = icmp eq i64 %.0101, 0
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !289, !noalias !333 ; 2 uses
  br i1 %.not.i.i56, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit63, label %bb.n

bb.n:                                             ; preds = %.lr.ph103.split
  %i.co = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %.0101
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !287, !noalias !6770 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !289, !noalias !6772
  %i.cr = load ptr, ptr %i.cm, align 8, !tbaa !289, !noalias !6773
  %i.cs = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %.0101
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !287, !noalias !6773
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit63

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit63: ; preds = %.lr.ph103.split, %bb.n
  %.pn = phi ptr [ %i.cq, %bb.n ], [ %i.cn, %.lr.ph103.split ]
  %.sroa.077.0128 = phi ptr [ %i.cp, %bb.n ], [ %i.cm, %.lr.ph103.split ] ; 2 uses
  %.sroa.075.0 = phi ptr [ %i.ct, %bb.n ], [ %i.cm, %.lr.ph103.split ] ; 2 uses
  %.in = getelementptr inbounds [8 x i8], ptr %.pn, i64 %.032106
  %i.cu = load ptr, ptr %.in, align 8, !tbaa !287, !noalias !6772 ; 2 uses
  br i1 %.not.i.i64, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit65, label %bb.o

bb.o:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit63
  %i.cv = load ptr, ptr %.sroa.075.0, align 8, !tbaa !289, !noalias !6771
  %i.cw = getelementptr inbounds [8 x i8], ptr %i.cv, i64 %i.ca
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !287, !noalias !6771
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit65

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit65: ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit63, %bb.o
  %.sroa.076.0 = phi ptr [ %.sroa.075.0, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit63 ], [ %i.cx, %bb.o ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %.sroa.077.0128, ptr %5, align 8, !tbaa !292
  store ptr %i.cu, ptr %6, align 8, !tbaa !292
  store ptr %.sroa.076.0, ptr %7, align 8, !tbaa !292
  %i.cy = load ptr, ptr %i.cu, align 8, !tbaa !289
  %i.cz = load ptr, ptr %.sroa.077.0128, align 8, !tbaa !289
  %i.da = ptrtoint ptr %i.cy to i64               ; 2 uses
  %i.db = ptrtoint ptr %i.cz to i64
  %i.dc = sub i64 %i.da, %i.db
  %i.dd = ashr exact i64 %i.dc, 3
  %i.de = load ptr, ptr %.sroa.076.0, align 8, !tbaa !289
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = sub i64 %i.df, %i.da
  %i.dh = ashr exact i64 %i.dg, 3
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveINS_9container22stable_vector_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEEvT_SH_SH_NS0_9iter_sizeISH_E4typeESK_T0_(ptr noundef nonnull align 8 dead_on_return %5, ptr noundef nonnull align 8 dead_on_return %6, ptr noundef nonnull align 8 dead_on_return %7, i64 noundef %i.dd, i64 noundef %i.dh)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.di = add i64 %.0101, %i.ca                   ; 5 uses
  %i.dj = sub i64 %i.h, %i.di
  %i.dk = icmp ugt i64 %i.dj, %i.ca
  br i1 %i.dk, label %.lr.ph103.split, label %._crit_edge104, !llvm.loop !6760

._crit_edge104:                                   ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit65
  %i.dl = sub i64 %i.h, %i.di
  %i.dm = icmp ugt i64 %i.dl, %.032106
  br i1 %i.dm, label %bb.p, label %bb.s

._crit_edge104.thread:                            ; preds = %bb.l
  %i.dn = icmp ugt i64 %i.h, %.032106
  br i1 %i.dn, label %.thread131, label %bb.s

.thread131:                                       ; preds = %._crit_edge104.thread
  %i.do = load ptr, ptr %0, align 8, !tbaa !292, !noalias !6774
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit69

.thread:                                          ; preds = %.lr.ph108
end_hunk_1
begin_hunk_2_@_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS2_14deque_iteratorIPSA_Lb0ELj0ELj0EmEESG_NS0_7move_opEEEvT0_SI_T1_T_T2_:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i32, ptr %i.a, align 4, !tbaa !254
  store i32 %i.g, ptr %i.c, align 4, !tbaa !254
  store i32 0, ptr %i.a, align 4, !tbaa !254
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.j = load i32, ptr %i.h, align 4, !tbaa !254
  store i32 %i.j, ptr %i.i, align 4, !tbaa !254
  store i32 0, ptr %i.h, align 4, !tbaa !254
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !262
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1024
  %i.n = icmp eq ptr %i.k, %i.m
  br i1 %i.n, label %bb.c, label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit, !prof !225

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !262
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit

_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit: ; preds = %bb.b, %bb.c
  %.sroa.044.1 = phi ptr [ %i.p, %bb.c ], [ %i.k, %bb.b ]
  %.sroa.1148.1 = phi ptr [ %i.o, %bb.c ], [ %i.e, %bb.b ]
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !312
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit8.outer

_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit8.outer: ; preds = %bb.p, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit
  %.ph = phi ptr [ %i.ab, %bb.p ], [ %.pre, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit ]
  %.ph70 = phi ptr [ %i.aa, %bb.p ], [ %i.a, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit ]
  %.sroa.044.0.ph = phi ptr [ %i.bw, %bb.p ], [ %.sroa.044.1, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit ]
  %.sroa.1148.0.ph = phi ptr [ %i.bv, %bb.p ], [ %.sroa.1148.1, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit ] ; 6 uses
  %i.q = getelementptr inbounds i8, ptr %.sroa.1148.0.ph, i64 -8 ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %.sroa.1148.0.ph, i64 -8 ; 2 uses
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit8

_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit8: ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit8.outer, %.critedge
  %i.s = phi ptr [ %i.ab, %.critedge ], [ %.ph, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit8.outer ] ; 3 uses
  %i.t = phi ptr [ %i.aa, %.critedge ], [ %.ph70, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit8.outer ]
  %.sroa.044.0 = phi ptr [ %i.bs, %.critedge ], [ %.sroa.044.0.ph, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit8.outer ] ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 3 uses
  store ptr %i.u, ptr %0, align 8, !tbaa !311
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !262
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 1024
  %i.x = icmp eq ptr %i.u, %i.w
  br i1 %i.x, label %bb.d, label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit1, !prof !225

bb.d:                                             ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit8
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !262  ; 2 uses
  store ptr %i.z, ptr %0, align 8, !tbaa !311
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit1

_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit1: ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit8, %bb.d
  %i.aa = phi ptr [ %i.u, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit8 ], [ %i.z, %bb.d ] ; 8 uses
  %i.ab = phi ptr [ %i.s, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit8 ], [ %i.y, %bb.d ] ; 2 uses
  %i.ac = load ptr, ptr %1, align 8, !tbaa !311
  %.not52 = icmp eq ptr %i.aa, %i.ac
  br i1 %.not52, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit1
  %i.ad = load ptr, ptr %.sroa.1148.0.ph, align 8, !tbaa !262 ; 4 uses
  %i.ae = icmp eq ptr %.sroa.044.0, %i.ad         ; 2 uses
  br i1 %i.ae, label %bb.f, label %bb.g, !prof !225

bb.f:                                             ; preds = %bb.e
  %i.af = load ptr, ptr %i.q, align 8, !tbaa !262 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1016
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit

bb.g:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds i8, ptr %.sroa.044.0, i64 -8
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit

_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit: ; preds = %bb.f, %bb.g
  %i.ai = phi ptr [ %i.af, %bb.f ], [ %i.ad, %bb.g ]
  %.sroa.12.1 = phi ptr [ %i.q, %bb.f ], [ %.sroa.1148.0.ph, %bb.g ]
  %storemerge.i = phi ptr [ %i.ag, %bb.f ], [ %i.ah, %bb.g ] ; 5 uses
  %i.aj = load i32, ptr %i.aa, align 4, !tbaa !254
  %i.ak = load i32, ptr %storemerge.i, align 4, !tbaa !254 ; 2 uses
  %i.al = icmp slt i32 %i.aj, %i.ak
  br i1 %i.al, label %bb.h, label %.critedge

bb.h:                                             ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit
  store i32 %i.ak, ptr %.sroa.044.0, align 4, !tbaa !254
  store i32 0, ptr %storemerge.i, align 4, !tbaa !254
  %i.am = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 4 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.044.0, i64 4
  %i.ao = load i32, ptr %i.am, align 4, !tbaa !254
  store i32 %i.ao, ptr %i.an, align 4, !tbaa !254
  store i32 0, ptr %i.am, align 4, !tbaa !254
  br i1 %i.ae, label %bb.i, label %bb.j, !prof !225

bb.i:                                             ; preds = %bb.h
  %i.ap = load ptr, ptr %i.r, align 8, !tbaa !262 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 1016
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit3

bb.j:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds i8, ptr %.sroa.044.0, i64 -8
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit3

_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit3: ; preds = %bb.i, %bb.j
  %i.as = phi ptr [ %i.ap, %bb.i ], [ %i.ad, %bb.j ]
  %.sroa.11.2 = phi ptr [ %i.r, %bb.i ], [ %.sroa.1148.0.ph, %bb.j ]
  %storemerge.i2 = phi ptr [ %i.aq, %bb.i ], [ %i.ar, %bb.j ] ; 2 uses
  %i.at = load ptr, ptr %2, align 8, !tbaa !311   ; 2 uses
  %.not5354 = icmp eq ptr %storemerge.i, %i.at
  br i1 %.not5354, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit3, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit7
  %i.au = phi ptr [ %i.bn, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit7 ], [ %i.as, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit3 ] ; 2 uses
  %i.av = phi ptr [ %i.bb, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit7 ], [ %i.ai, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit3 ] ; 2 uses
  %.sroa.11.058 = phi ptr [ %.sroa.11.3, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit7 ], [ %.sroa.11.2, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit3 ] ; 2 uses
  %.sroa.029.057 = phi ptr [ %storemerge.i6, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit7 ], [ %storemerge.i2, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit3 ] ; 5 uses
  %.sroa.12.056 = phi ptr [ %.sroa.12.2, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit7 ], [ %.sroa.12.1, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit3 ] ; 2 uses
  %.sroa.019.055 = phi ptr [ %storemerge.i4, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit7 ], [ %storemerge.i, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit3 ] ; 2 uses
  %i.aw = icmp eq ptr %.sroa.019.055, %i.av
  br i1 %i.aw, label %bb.k, label %bb.l, !prof !225

bb.k:                                             ; preds = %.lr.ph
  %i.ax = getelementptr inbounds i8, ptr %.sroa.12.056, i64 -8 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !262 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 1016
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit5

bb.l:                                             ; preds = %.lr.ph
  %i.ba = getelementptr inbounds i8, ptr %.sroa.019.055, i64 -8
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit5

_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit5: ; preds = %bb.k, %bb.l
  %i.bb = phi ptr [ %i.ay, %bb.k ], [ %i.av, %bb.l ]
  %.sroa.12.2 = phi ptr [ %i.ax, %bb.k ], [ %.sroa.12.056, %bb.l ]
  %storemerge.i4 = phi ptr [ %i.az, %bb.k ], [ %i.ba, %bb.l ] ; 5 uses
  %i.bc = load i32, ptr %i.aa, align 4, !tbaa !254
  %i.bd = load i32, ptr %storemerge.i4, align 4, !tbaa !254 ; 2 uses
  %i.be = icmp slt i32 %i.bc, %i.bd
  br i1 %i.be, label %bb.m, label %.critedge

bb.m:                                             ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit5
  store i32 %i.bd, ptr %.sroa.029.057, align 4, !tbaa !254
  store i32 0, ptr %storemerge.i4, align 4, !tbaa !254
  %i.bf = getelementptr inbounds nuw i8, ptr %storemerge.i4, i64 4 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.029.057, i64 4
  %i.bh = load i32, ptr %i.bf, align 4, !tbaa !254
  store i32 %i.bh, ptr %i.bg, align 4, !tbaa !254
  store i32 0, ptr %i.bf, align 4, !tbaa !254
  %i.bi = icmp eq ptr %.sroa.029.057, %i.au
  br i1 %i.bi, label %bb.n, label %bb.o, !prof !225

bb.n:                                             ; preds = %bb.m
  %i.bj = getelementptr inbounds i8, ptr %.sroa.11.058, i64 -8 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !262 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 1016
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit7

bb.o:                                             ; preds = %bb.m
  %i.bm = getelementptr inbounds i8, ptr %.sroa.029.057, i64 -8
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit7

_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit7: ; preds = %bb.n, %bb.o
  %i.bn = phi ptr [ %i.bk, %bb.n ], [ %i.au, %bb.o ]
  %.sroa.11.3 = phi ptr [ %i.bj, %bb.n ], [ %.sroa.11.058, %bb.o ]
  %storemerge.i6 = phi ptr [ %i.bl, %bb.n ], [ %i.bm, %bb.o ] ; 2 uses
  %.not53 = icmp eq ptr %storemerge.i4, %i.at
  br i1 %.not53, label %.critedge, label %.lr.ph, !llvm.loop !12306

.critedge:                                        ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit7, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit5, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit3, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit
  %.sroa.029.1 = phi ptr [ %.sroa.044.0, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit ], [ %storemerge.i2, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit3 ], [ %storemerge.i6, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit7 ], [ %.sroa.029.057, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit5 ] ; 2 uses
  %i.bo = load i32, ptr %i.aa, align 4, !tbaa !254
  store i32 %i.bo, ptr %.sroa.029.1, align 4, !tbaa !254
  store i32 0, ptr %i.aa, align 4, !tbaa !254
  %i.bp = getelementptr inbounds nuw i8, ptr %i.aa, i64 4 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.029.1, i64 4
  %i.br = load i32, ptr %i.bp, align 4, !tbaa !254
  store i32 %i.br, ptr %i.bq, align 4, !tbaa !254
  store i32 0, ptr %i.bp, align 4, !tbaa !254
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.044.0, i64 8 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ad, i64 1024
  %i.bu = icmp eq ptr %i.bs, %i.bt
  br i1 %i.bu, label %bb.p, label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit8, !prof !225, !llvm.loop !12307

bb.p:                                             ; preds = %.critedge
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.1148.0.ph, i64 8 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !262
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit8.outer, !llvm.loop !12307

.loopexit:                                        ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit1, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive16slow_stable_sortINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEENS3_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSB_9select1stIS7_EEEEEEvT_SI_T0_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %3 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %4 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %5 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %6 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %7 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !311    ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !311    ; 11 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %._crit_edge.thread, label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiERKS7_.exit

_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiERKS7_.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !312  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !312  ; 2 uses
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = shl nsw i64 %i.j, 4
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !262
  %i.m = ptrtoint ptr %i.a to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = ashr exact i64 %i.o, 3
  %i.q = add nsw i64 %i.p, %i.k
  %i.r = load ptr, ptr %i.g, align 8, !tbaa !262
  %i.s = ptrtoint ptr %i.b to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = ashr exact i64 %i.u, 3
  %i.w = sub i64 %i.q, %i.v                       ; 6 uses
  %i.x = icmp ugt i64 %i.w, 16
  br i1 %i.x, label %.lr.ph, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiERKS7_.exit, %bb.a
  %.0.i220 = phi i64 [ %i.w, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiERKS7_.exit ], [ 0, %bb.a ]
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre191 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !312, !noalias !12336
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit48

.lr.ph:                                           ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiERKS7_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !312, !noalias !12337 ; 11 uses
  %i.aa = ptrtoint ptr %i.b to i64
  %.pre = load ptr, ptr %i.z, align 8, !tbaa !262, !noalias !333 ; 5 uses
  %i.ab = ptrtoint ptr %.pre to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = ashr exact i64 %i.ac, 3
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS2_14deque_iteratorIPSA_Lb0ELj0ELj0EmEEEEvT0_SH_T_.exit
  %.033180 = phi i64 [ 0, %.lr.ph ], [ %i.do, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS2_14deque_iteratorIPSA_Lb0ELj0ELj0EmEEEEvT0_SH_T_.exit ] ; 5 uses
  %.not.i.i = icmp eq i64 %.033180, 0
  br i1 %.not.i.i, label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit39, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ae = add nsw i64 %i.ad, %.033180             ; 7 uses
  %or.cond.i.i = icmp ult i64 %i.ae, 128
  br i1 %or.cond.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds [8 x i8], ptr %i.b, i64 %.033180
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.b, i64 %.033180
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit39

bb.e:                                             ; preds = %bb.c
  %i.ah = icmp sgt i64 %i.ae, 0
  %i.ai = lshr i64 %i.ae, 7                       ; 2 uses
  %i.aj = or disjoint i64 %i.ai, -144115188075855872
  %i.ak = select i1 %i.ah, i64 %i.ai, i64 %i.aj   ; 2 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.ak ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !262, !noalias !12337 ; 2 uses
  %i.an = shl nsw i64 %i.ak, 7
  %i.ao = sub nsw i64 %i.ae, %i.an
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.ao
  %i.aq = icmp sgt i64 %i.ae, 0
  %i.ar = lshr i64 %i.ae, 7                       ; 2 uses
  %i.as = or disjoint i64 %i.ar, -144115188075855872
  %i.at = select i1 %i.aq, i64 %i.ar, i64 %i.as   ; 2 uses
  %i.au = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.at ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !262, !noalias !12338 ; 2 uses
  %i.aw = shl nsw i64 %i.at, 7
  %i.ax = sub nsw i64 %i.ae, %i.aw
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.ax
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit39

_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit39: ; preds = %bb.b, %bb.d, %bb.e
  %i.az = phi ptr [ %i.am, %bb.e ], [ %.pre, %bb.d ], [ %.pre, %bb.b ] ; 2 uses
  %i.ba = phi ptr [ %i.av, %bb.e ], [ %.pre, %bb.d ], [ %.pre, %bb.b ]
  %.sroa.0.0.i155 = phi ptr [ %i.ap, %bb.e ], [ %i.af, %bb.d ], [ %i.b, %bb.b ] ; 4 uses
  %.sroa.6.1.i153 = phi ptr [ %i.al, %bb.e ], [ %i.z, %bb.d ], [ %i.z, %bb.b ] ; 2 uses
  %.sroa.6.1.i37 = phi ptr [ %i.au, %bb.e ], [ %i.z, %bb.d ], [ %i.z, %bb.b ]
  %.sroa.0.0.i38 = phi ptr [ %i.ay, %bb.e ], [ %i.ag, %bb.d ], [ %i.b, %bb.b ] ; 2 uses
  %i.bb = ptrtoint ptr %.sroa.0.0.i38 to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = ashr exact i64 %i.bd, 3                 ; 2 uses
  %i.bf = add nsw i64 %i.be, 16                   ; 3 uses
  %or.cond.i.i40 = icmp ult i64 %i.bf, 128
  br i1 %or.cond.i.i40, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit39
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i38, i64 128
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit43

bb.g:                                             ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit39
  %i.bh = icmp sgt i64 %i.be, -16
  %i.bi = lshr i64 %i.bf, 7                       ; 2 uses
  %i.bj = or disjoint i64 %i.bi, -144115188075855872
  %i.bk = select i1 %i.bh, i64 %i.bi, i64 %i.bj   ; 2 uses
  %i.bl = getelementptr inbounds [8 x i8], ptr %.sroa.6.1.i37, i64 %i.bk
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !262, !noalias !12339
  %i.bn = shl nsw i64 %i.bk, 7
  %i.bo = sub nsw i64 %i.bf, %i.bn
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.bo
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit43

_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit43: ; preds = %bb.f, %bb.g
  %.sroa.0.0.i42 = phi ptr [ %i.bp, %bb.g ], [ %i.bg, %bb.f ] ; 3 uses
  %.not.i = icmp eq ptr %.sroa.0.0.i155, %.sroa.0.0.i42
  br i1 %.not.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS2_14deque_iteratorIPSA_Lb0ELj0ELj0EmEEEEvT0_SH_T_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit43
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i155, i64 8 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.az, i64 1024
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %bb.i, label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i, !prof !225

bb.i:                                             ; preds = %bb.h
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.6.1.i153, i64 8 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !262 ; 2 uses
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i

_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i: ; preds = %bb.i, %bb.h
  %i.bv = phi ptr [ %i.bu, %bb.i ], [ %i.az, %bb.h ]
  %.sroa.15.1.i = phi ptr [ %i.bt, %bb.i ], [ %.sroa.6.1.i153, %bb.h ]
  %.sroa.022.1.i = phi ptr [ %i.bu, %bb.i ], [ %i.bq, %bb.h ] ; 2 uses
  %.not3140.i = icmp eq ptr %.sroa.022.1.i, %.sroa.0.0.i42
  br i1 %.not3140.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS2_14deque_iteratorIPSA_Lb0ELj0ELj0EmEEEEvT0_SH_T_.exit, label %.lr.ph43.i

.lr.ph43.i:                                       ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit7.i
  %i.bw = phi ptr [ %i.dn, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit7.i ], [ %i.bv, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i ] ; 3 uses
  %.sroa.022.042.i = phi ptr [ %.sroa.022.2.i, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit7.i ], [ %.sroa.022.1.i, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i ] ; 7 uses
  %.sroa.15.041.i = phi ptr [ %.sroa.15.2.i, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit7.i ], [ %.sroa.15.1.i, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i ] ; 4 uses
  %i.bx = icmp eq ptr %.sroa.022.042.i, %i.bw
  br i1 %i.bx, label %bb.j, label %bb.k, !prof !225

bb.j:                                             ; preds = %.lr.ph43.i
  %i.by = getelementptr inbounds i8, ptr %.sroa.15.041.i, i64 -8 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !262
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 1016
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit.i

bb.k:                                             ; preds = %.lr.ph43.i
  %i.cb = getelementptr inbounds i8, ptr %.sroa.022.042.i, i64 -8
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit.i

_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit.i: ; preds = %bb.k, %bb.j
  %.sroa.13.1.i = phi ptr [ %i.by, %bb.j ], [ %.sroa.15.041.i, %bb.k ] ; 3 uses
  %storemerge.i.i = phi ptr [ %i.ca, %bb.j ], [ %i.cb, %bb.k ] ; 8 uses
  %i.cc = load i32, ptr %.sroa.022.042.i, align 4, !tbaa !254 ; 3 uses
  %i.cd = load i32, ptr %storemerge.i.i, align 4, !tbaa !254
  %i.ce = icmp slt i32 %i.cc, %i.cd
  br i1 %i.ce, label %bb.l, label %bb.s

bb.l:                                             ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit.i
  store i32 0, ptr %.sroa.022.042.i, align 4, !tbaa !254
  %i.cf = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.022.042.i, i64 4 ; 3 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !254
  store i32 0, ptr %i.cg, align 4, !tbaa !254
  %i.ci = add i32 %i.cf, 2
  store i32 %i.ci, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.cj = load i32, ptr %storemerge.i.i, align 4, !tbaa !254
  store i32 %i.cj, ptr %.sroa.022.042.i, align 4, !tbaa !254
  store i32 0, ptr %storemerge.i.i, align 4, !tbaa !254
  %i.ck = getelementptr inbounds nuw i8, ptr %storemerge.i.i, i64 4 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !254
  store i32 %i.cl, ptr %i.cg, align 4, !tbaa !254
  store i32 0, ptr %i.ck, align 4, !tbaa !254
  %.not3233.i = icmp eq ptr %storemerge.i.i, %.sroa.0.0.i155
  br i1 %.not3233.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.l
  %.pre.i = load ptr, ptr %.sroa.13.1.i, align 8, !tbaa !262 ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit6.i, %.lr.ph.preheader.i
  %i.cm = phi ptr [ %i.de, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit6.i ], [ %.pre.i, %.lr.ph.preheader.i ] ; 2 uses
  %i.cn = phi ptr [ %i.ct, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit6.i ], [ %.pre.i, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.0.037.i = phi ptr [ %storemerge.i3.i, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit6.i ], [ %storemerge.i.i, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.9.036.i = phi ptr [ %.sroa.9.1.i, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit6.i ], [ %.sroa.13.1.i, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.013.035.i = phi ptr [ %storemerge.i5.i, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit6.i ], [ %storemerge.i.i, %.lr.ph.preheader.i ] ; 5 uses
  %.sroa.13.034.i = phi ptr [ %.sroa.13.2.i, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit6.i ], [ %.sroa.13.1.i, %.lr.ph.preheader.i ] ; 2 uses
  %i.co = icmp eq ptr %.sroa.0.037.i, %i.cn
  br i1 %i.co, label %bb.m, label %bb.n, !prof !225

bb.m:                                             ; preds = %.lr.ph.i
  %i.cp = getelementptr inbounds i8, ptr %.sroa.9.036.i, i64 -8 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !262 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 1016
  br label %bb.o

bb.n:                                             ; preds = %.lr.ph.i
  %i.cs = getelementptr inbounds i8, ptr %.sroa.0.037.i, i64 -8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ct = phi ptr [ %i.cq, %bb.m ], [ %i.cn, %bb.n ]
  %.sroa.9.1.i = phi ptr [ %i.cp, %bb.m ], [ %.sroa.9.036.i, %bb.n ]
  %storemerge.i3.i = phi ptr [ %i.cr, %bb.m ], [ %i.cs, %bb.n ] ; 5 uses
  %i.cu = load i32, ptr %storemerge.i3.i, align 4, !tbaa !254 ; 2 uses
  %i.cv = icmp slt i32 %i.cc, %i.cu
  br i1 %i.cv, label %bb.p, label %._crit_edge.i

bb.p:                                             ; preds = %bb.o
  store i32 %i.cu, ptr %.sroa.013.035.i, align 4, !tbaa !254
  store i32 0, ptr %storemerge.i3.i, align 4, !tbaa !254
  %i.cw = getelementptr inbounds nuw i8, ptr %storemerge.i3.i, i64 4 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.013.035.i, i64 4
  %i.cy = load i32, ptr %i.cw, align 4, !tbaa !254
  store i32 %i.cy, ptr %i.cx, align 4, !tbaa !254
  store i32 0, ptr %i.cw, align 4, !tbaa !254
  %i.cz = icmp eq ptr %.sroa.013.035.i, %i.cm
  br i1 %i.cz, label %bb.q, label %bb.r, !prof !225

bb.q:                                             ; preds = %bb.p
  %i.da = getelementptr inbounds i8, ptr %.sroa.13.034.i, i64 -8 ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !262 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 1016
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit6.i

bb.r:                                             ; preds = %bb.p
  %i.dd = getelementptr inbounds i8, ptr %.sroa.013.035.i, i64 -8
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit6.i

_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit6.i: ; preds = %bb.r, %bb.q
  %i.de = phi ptr [ %i.db, %bb.q ], [ %i.cm, %bb.r ]
  %.sroa.13.2.i = phi ptr [ %i.da, %bb.q ], [ %.sroa.13.034.i, %bb.r ]
  %storemerge.i5.i = phi ptr [ %i.dc, %bb.q ], [ %i.dd, %bb.r ] ; 2 uses
  %.not32.i = icmp eq ptr %storemerge.i3.i, %.sroa.0.0.i155
  br i1 %.not32.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !185

._crit_edge.i:                                    ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit6.i, %bb.o, %bb.l
  %.sroa.013.0.lcssa.i = phi ptr [ %storemerge.i.i, %bb.l ], [ %storemerge.i5.i, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit6.i ], [ %.sroa.013.035.i, %bb.o ] ; 2 uses
  store i32 %i.cc, ptr %.sroa.013.0.lcssa.i, align 4, !tbaa !254
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.013.0.lcssa.i, i64 4
  store i32 %i.ch, ptr %i.df, align 4, !tbaa !254
  %i.dg = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.dh = add i32 %i.dg, -2
  store i32 %i.dh, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge.i, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit.i
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.022.042.i, i64 8 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bw, i64 1024
  %i.dk = icmp eq ptr %i.di, %i.dj
  br i1 %i.dk, label %bb.t, label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit7.i, !prof !225

bb.t:                                             ; preds = %bb.s
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.15.041.i, i64 8 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !262 ; 2 uses
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit7.i

_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit7.i: ; preds = %bb.t, %bb.s
  %i.dn = phi ptr [ %i.dm, %bb.t ], [ %i.bw, %bb.s ]
  %.sroa.15.2.i = phi ptr [ %i.dl, %bb.t ], [ %.sroa.15.041.i, %bb.s ]
  %.sroa.022.2.i = phi ptr [ %i.dm, %bb.t ], [ %i.di, %bb.s ] ; 2 uses
  %.not31.i = icmp eq ptr %.sroa.022.2.i, %.sroa.0.0.i42
  br i1 %.not31.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS2_14deque_iteratorIPSA_Lb0ELj0ELj0EmEEEEvT0_SH_T_.exit, label %.lr.ph43.i, !llvm.loop !186

_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS2_14deque_iteratorIPSA_Lb0ELj0ELj0EmEEEEvT0_SH_T_.exit: ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit7.i, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit43, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i
  %i.do = add i64 %.033180, 16                    ; 5 uses
  %i.dp = sub i64 %i.w, %i.do
  %i.dq = icmp ugt i64 %i.dp, 16
  br i1 %i.dq, label %bb.b, label %._crit_edge, !llvm.loop !12316

._crit_edge:                                      ; preds = %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS2_14deque_iteratorIPSA_Lb0ELj0ELj0EmEEEEvT0_SH_T_.exit
  %.not.i.i44 = icmp eq i64 %i.do, 0
  br i1 %.not.i.i44, label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit48, label %bb.u

bb.u:                                             ; preds = %._crit_edge
  %i.dr = load ptr, ptr %i.z, align 8, !tbaa !262, !noalias !12336
  %i.ds = ptrtoint ptr %i.b to i64
  %i.dt = ptrtoint ptr %i.dr to i64
  %i.du = sub i64 %i.ds, %i.dt
  %i.dv = ashr exact i64 %i.du, 3
  %i.dw = add nsw i64 %i.dv, %i.do                ; 4 uses
  %or.cond.i.i45 = icmp ult i64 %i.dw, 128
  br i1 %or.cond.i.i45, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.do
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit48

bb.w:                                             ; preds = %bb.u
  %i.dy = icmp sgt i64 %i.dw, 0
  %i.dz = lshr i64 %i.dw, 7                       ; 2 uses
  %i.ea = or disjoint i64 %i.dz, -144115188075855872
  %i.eb = select i1 %i.dy, i64 %i.dz, i64 %i.ea   ; 2 uses
  %i.ec = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.eb ; 2 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !262, !noalias !12336
  %i.ee = shl nsw i64 %i.eb, 7
  %i.ef = sub nsw i64 %i.dw, %i.ee
  %i.eg = getelementptr inbounds [8 x i8], ptr %i.ed, i64 %i.ef
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit48

_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit48: ; preds = %._crit_edge.thread, %._crit_edge, %bb.v, %bb.w
  %.0.i219229 = phi i64 [ %i.w, %._crit_edge ], [ %i.w, %bb.v ], [ %i.w, %bb.w ], [ %.0.i220, %._crit_edge.thread ] ; 6 uses
  %8 = phi i1 [ true, %._crit_edge ], [ true, %bb.v ], [ true, %bb.w ], [ false, %._crit_edge.thread ]
  %.sroa.6.1.i46 = phi ptr [ %i.z, %._crit_edge ], [ %i.z, %bb.v ], [ %i.ec, %bb.w ], [ %.pre191, %._crit_edge.thread ] ; 3 uses
  %.sroa.0.0.i47 = phi ptr [ %i.b, %._crit_edge ], [ %i.dx, %bb.v ], [ %i.eg, %bb.w ], [ %i.b, %._crit_edge.thread ] ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.not.i49 = icmp eq ptr %.sroa.0.0.i47, %i.a
  br i1 %.not.i49, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS2_14deque_iteratorIPSA_Lb0ELj0ELj0EmEEEEvT0_SH_T_.exit80, label %bb.x

bb.x:                                             ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit48
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i47, i64 8 ; 2 uses
  %i.ek = load ptr, ptr %.sroa.6.1.i46, align 8, !tbaa !262 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 1024
  %i.em = icmp eq ptr %i.ej, %i.el
  br i1 %i.em, label %bb.y, label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i50, !prof !225

bb.y:                                             ; preds = %bb.x
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.6.1.i46, i64 8 ; 2 uses
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !262 ; 2 uses
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i50

_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i50: ; preds = %bb.y, %bb.x
  %i.ep = phi ptr [ %i.eo, %bb.y ], [ %i.ek, %bb.x ]
  %.sroa.15.1.i51 = phi ptr [ %i.en, %bb.y ], [ %.sroa.6.1.i46, %bb.x ]
  %.sroa.022.1.i52 = phi ptr [ %i.eo, %bb.y ], [ %i.ej, %bb.x ] ; 2 uses
  %.not3140.i53 = icmp eq ptr %.sroa.022.1.i52, %i.a
  br i1 %.not3140.i53, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS2_14deque_iteratorIPSA_Lb0ELj0ELj0EmEEEEvT0_SH_T_.exit80, label %.lr.ph43.i54

.lr.ph43.i54:                                     ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i50, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit7.i60
  %i.eq = phi ptr [ %i.gh, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit7.i60 ], [ %i.ep, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i50 ] ; 3 uses
  %.sroa.022.042.i55 = phi ptr [ %.sroa.022.2.i62, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit7.i60 ], [ %.sroa.022.1.i52, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i50 ] ; 7 uses
  %.sroa.15.041.i56 = phi ptr [ %.sroa.15.2.i61, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit7.i60 ], [ %.sroa.15.1.i51, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i50 ] ; 4 uses
  %i.er = icmp eq ptr %.sroa.022.042.i55, %i.eq
  br i1 %i.er, label %bb.z, label %bb.aa, !prof !225

bb.z:                                             ; preds = %.lr.ph43.i54
  %i.es = getelementptr inbounds i8, ptr %.sroa.15.041.i56, i64 -8 ; 2 uses
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !262
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 1016
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit.i57

bb.aa:                                            ; preds = %.lr.ph43.i54
  %i.ev = getelementptr inbounds i8, ptr %.sroa.022.042.i55, i64 -8
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit.i57

_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit.i57: ; preds = %bb.aa, %bb.z
  %.sroa.13.1.i58 = phi ptr [ %i.es, %bb.z ], [ %.sroa.15.041.i56, %bb.aa ] ; 3 uses
  %storemerge.i.i59 = phi ptr [ %i.eu, %bb.z ], [ %i.ev, %bb.aa ] ; 8 uses
  %i.ew = load i32, ptr %.sroa.022.042.i55, align 4, !tbaa !254 ; 3 uses
  %i.ex = load i32, ptr %storemerge.i.i59, align 4, !tbaa !254
  %i.ey = icmp slt i32 %i.ew, %i.ex
  br i1 %i.ey, label %bb.ab, label %bb.ai

bb.ab:                                            ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit.i57
  store i32 0, ptr %.sroa.022.042.i55, align 4, !tbaa !254
  %i.ez = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.022.042.i55, i64 4 ; 3 uses
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !254
  store i32 0, ptr %i.fa, align 4, !tbaa !254
  %i.fc = add i32 %i.ez, 2
  store i32 %i.fc, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.fd = load i32, ptr %storemerge.i.i59, align 4, !tbaa !254
  store i32 %i.fd, ptr %.sroa.022.042.i55, align 4, !tbaa !254
  store i32 0, ptr %storemerge.i.i59, align 4, !tbaa !254
  %i.fe = getelementptr inbounds nuw i8, ptr %storemerge.i.i59, i64 4 ; 2 uses
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !254
  store i32 %i.ff, ptr %i.fa, align 4, !tbaa !254
  store i32 0, ptr %i.fe, align 4, !tbaa !254
  %.not3233.i64 = icmp eq ptr %storemerge.i.i59, %.sroa.0.0.i47
  br i1 %.not3233.i64, label %._crit_edge.i74, label %.lr.ph.preheader.i65

.lr.ph.preheader.i65:                             ; preds = %bb.ab
  %.pre.i66 = load ptr, ptr %.sroa.13.1.i58, align 8, !tbaa !262 ; 2 uses
  br label %.lr.ph.i67

.lr.ph.i67:                                       ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit6.i76, %.lr.ph.preheader.i65
  %i.fg = phi ptr [ %i.fy, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit6.i76 ], [ %.pre.i66, %.lr.ph.preheader.i65 ] ; 2 uses
  %i.fh = phi ptr [ %i.fn, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit6.i76 ], [ %.pre.i66, %.lr.ph.preheader.i65 ] ; 2 uses
  %.sroa.0.037.i68 = phi ptr [ %storemerge.i3.i73, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit6.i76 ], [ %storemerge.i.i59, %.lr.ph.preheader.i65 ] ; 2 uses
  %.sroa.9.036.i69 = phi ptr [ %.sroa.9.1.i72, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit6.i76 ], [ %.sroa.13.1.i58, %.lr.ph.preheader.i65 ] ; 2 uses
  %.sroa.013.035.i70 = phi ptr [ %storemerge.i5.i78, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit6.i76 ], [ %storemerge.i.i59, %.lr.ph.preheader.i65 ] ; 5 uses
  %.sroa.13.034.i71 = phi ptr [ %.sroa.13.2.i77, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit6.i76 ], [ %.sroa.13.1.i58, %.lr.ph.preheader.i65 ] ; 2 uses
  %i.fi = icmp eq ptr %.sroa.0.037.i68, %i.fh
  br i1 %i.fi, label %bb.ac, label %bb.ad, !prof !225

bb.ac:                                            ; preds = %.lr.ph.i67
  %i.fj = getelementptr inbounds i8, ptr %.sroa.9.036.i69, i64 -8 ; 2 uses
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !262 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 1016
  br label %bb.ae

bb.ad:                                            ; preds = %.lr.ph.i67
  %i.fm = getelementptr inbounds i8, ptr %.sroa.0.037.i68, i64 -8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.fn = phi ptr [ %i.fk, %bb.ac ], [ %i.fh, %bb.ad ]
  %.sroa.9.1.i72 = phi ptr [ %i.fj, %bb.ac ], [ %.sroa.9.036.i69, %bb.ad ]
  %storemerge.i3.i73 = phi ptr [ %i.fl, %bb.ac ], [ %i.fm, %bb.ad ] ; 5 uses
  %i.fo = load i32, ptr %storemerge.i3.i73, align 4, !tbaa !254 ; 2 uses
  %i.fp = icmp slt i32 %i.ew, %i.fo
  br i1 %i.fp, label %bb.af, label %._crit_edge.i74

bb.af:                                            ; preds = %bb.ae
  store i32 %i.fo, ptr %.sroa.013.035.i70, align 4, !tbaa !254
  store i32 0, ptr %storemerge.i3.i73, align 4, !tbaa !254
  %i.fq = getelementptr inbounds nuw i8, ptr %storemerge.i3.i73, i64 4 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.013.035.i70, i64 4
  %i.fs = load i32, ptr %i.fq, align 4, !tbaa !254
  store i32 %i.fs, ptr %i.fr, align 4, !tbaa !254
  store i32 0, ptr %i.fq, align 4, !tbaa !254
  %i.ft = icmp eq ptr %.sroa.013.035.i70, %i.fg
  br i1 %i.ft, label %bb.ag, label %bb.ah, !prof !225

bb.ag:                                            ; preds = %bb.af
  %i.fu = getelementptr inbounds i8, ptr %.sroa.13.034.i71, i64 -8 ; 2 uses
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !262 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 1016
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit6.i76

bb.ah:                                            ; preds = %bb.af
  %i.fx = getelementptr inbounds i8, ptr %.sroa.013.035.i70, i64 -8
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit6.i76

_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit6.i76: ; preds = %bb.ah, %bb.ag
  %i.fy = phi ptr [ %i.fv, %bb.ag ], [ %i.fg, %bb.ah ]
  %.sroa.13.2.i77 = phi ptr [ %i.fu, %bb.ag ], [ %.sroa.13.034.i71, %bb.ah ]
  %storemerge.i5.i78 = phi ptr [ %i.fw, %bb.ag ], [ %i.fx, %bb.ah ] ; 2 uses
  %.not32.i79 = icmp eq ptr %storemerge.i3.i73, %.sroa.0.0.i47
  br i1 %.not32.i79, label %._crit_edge.i74, label %.lr.ph.i67, !llvm.loop !185

._crit_edge.i74:                                  ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit6.i76, %bb.ae, %bb.ab
  %.sroa.013.0.lcssa.i75 = phi ptr [ %storemerge.i.i59, %bb.ab ], [ %storemerge.i5.i78, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit6.i76 ], [ %.sroa.013.035.i70, %bb.ae ] ; 2 uses
  store i32 %i.ew, ptr %.sroa.013.0.lcssa.i75, align 4, !tbaa !254
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.013.0.lcssa.i75, i64 4
  store i32 %i.fb, ptr %i.fz, align 4, !tbaa !254
  %i.ga = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.gb = add i32 %i.ga, -2
  store i32 %i.gb, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  br label %bb.ai

bb.ai:                                            ; preds = %._crit_edge.i74, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit.i57
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.022.042.i55, i64 8 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.eq, i64 1024
  %i.ge = icmp eq ptr %i.gc, %i.gd
  br i1 %i.ge, label %bb.aj, label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit7.i60, !prof !225

bb.aj:                                            ; preds = %bb.ai
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.15.041.i56, i64 8 ; 2 uses
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !262 ; 2 uses
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit7.i60

_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit7.i60: ; preds = %bb.aj, %bb.ai
  %i.gh = phi ptr [ %i.gg, %bb.aj ], [ %i.eq, %bb.ai ]
  %.sroa.15.2.i61 = phi ptr [ %i.gf, %bb.aj ], [ %.sroa.15.041.i56, %bb.ai ]
  %.sroa.022.2.i62 = phi ptr [ %i.gg, %bb.aj ], [ %i.gc, %bb.ai ] ; 2 uses
  %.not31.i63 = icmp eq ptr %.sroa.022.2.i62, %i.a
  br i1 %.not31.i63, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS2_14deque_iteratorIPSA_Lb0ELj0ELj0EmEEEEvT0_SH_T_.exit80, label %.lr.ph43.i54, !llvm.loop !186

_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS2_14deque_iteratorIPSA_Lb0ELj0ELj0EmEEEEvT0_SH_T_.exit80: ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit7.i60, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit48, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i50
  br i1 %8, label %.lr.ph188, label %._crit_edge189

.lr.ph188:                                        ; preds = %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS2_14deque_iteratorIPSA_Lb0ELj0ELj0EmEEEEvT0_SH_T_.exit80
  %i.gi = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.gj = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.gk = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.gl = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.gm = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.gn = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.ak

._crit_edge189:                                   ; preds = %.thread, %bb.bk, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS2_14deque_iteratorIPSA_Lb0ELj0ELj0EmEEEEvT0_SH_T_.exit80
  ret void

bb.ak:                                            ; preds = %.lr.ph188, %bb.bk
  %.032186 = phi i64 [ 16, %.lr.ph188 ], [ %i.ol, %bb.bk ] ; 13 uses
  %i.go = sub i64 %.0.i219229, %.032186
  %i.gp = icmp ugt i64 %i.go, %.032186            ; 2 uses
  br i1 %i.gp, label %bb.al, label %.thread

bb.al:                                            ; preds = %bb.ak
  %i.gq = shl i64 %.032186, 1                     ; 6 uses
  %i.gr = icmp ugt i64 %.0.i219229, %i.gq
  br i1 %i.gr, label %.lr.ph183, label %._crit_edge184.thread

.lr.ph183:                                        ; preds = %bb.al
  %.not.i.i91 = icmp eq i64 %.032186, 0
  %.not.i.i101 = icmp eq i64 %i.gq, 0
  br label %bb.am

bb.am:                                            ; preds = %.lr.ph183, %_ZN5boost7movelib16merge_bufferlessINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEENS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEEvT_SH_SH_T0_.exit
  %.0181 = phi i64 [ 0, %.lr.ph183 ], [ %i.ky, %_ZN5boost7movelib16merge_bufferlessINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEENS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEEvT_SH_SH_T0_.exit ] ; 7 uses
  %i.gs = load ptr, ptr %0, align 8, !tbaa !311, !noalias !12340 ; 8 uses
  %i.gt = load ptr, ptr %i.eh, align 8, !tbaa !312, !noalias !12340 ; 11 uses
  %.not.i.i81 = icmp eq i64 %.0181, 0             ; 2 uses
  br i1 %.not.i.i81, label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit90, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !262, !noalias !12340
  %i.gv = ptrtoint ptr %i.gs to i64
  %i.gw = ptrtoint ptr %i.gu to i64
  %i.gx = sub i64 %i.gv, %i.gw
  %i.gy = ashr exact i64 %i.gx, 3
  %i.gz = add nsw i64 %i.gy, %.0181               ; 7 uses
end_hunk_2
