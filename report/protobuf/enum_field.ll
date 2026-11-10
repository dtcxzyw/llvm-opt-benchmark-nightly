Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/protobuf/original/enum_field?download=true
inline.NumInlined: 3078
inline.NumDeleted: 1441
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeISD_EERKS9_PSI_EE:bb.a
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !217  ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 10 ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !71    ; 3 uses
  %i.n = icmp ult i8 %i.m, 7
  br i1 %i.n, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %narrow = sub nuw nsw i8 7, %i.m
  %i.o = load i32, ptr %i.a, align 8, !tbaa !9
  %i.p = and i32 %i.o, 255                        ; 2 uses
  %i.q = icmp samesign ult i32 %i.p, 7
  %i.r = zext i1 %i.q to i8
  %i.s = lshr i8 %narrow, %i.r
  %.sroa.speculated99 = tail call i8 @llvm.umax.i8(i8 %i.s, i8 1) ; 3 uses
  %i.t = zext nneg i8 %.sroa.speculated99 to i32  ; 2 uses
  %.not84 = icmp samesign uge i32 %i.p, %i.t
  %narrow113 = add nuw nsw i8 %.sroa.speculated99, %i.m
  %i.u = icmp samesign ult i8 %narrow113, 7
  %or.cond = select i1 %.not84, i1 true, i1 %i.u
  br i1 %or.cond, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE23rebalance_right_to_leftEhPSE_PSC_(ptr noundef nonnull align 1 dereferenceable(1) %i.k, i8 noundef zeroext %.sroa.speculated99, ptr noundef nonnull %i.b, ptr noundef nonnull %i.v)
  %i.w = load i32, ptr %i.a, align 8, !tbaa !9
  %i.x = and i32 %i.w, 255
  %i.y = sub nsw i32 %i.x, %i.t                   ; 3 uses
  store i32 %i.y, ptr %i.a, align 8, !tbaa !9
  %i.z = icmp slt i32 %i.y, 0
  br i1 %i.z, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.aa = load i8, ptr %i.l, align 1, !tbaa !71
  %i.ab = zext i8 %i.aa to i32
  %i.ac = add nsw i32 %i.y, 1
  %i.ad = add nsw i32 %i.ac, %i.ab
  br label %.critedge.sink.split

bb.g:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !71  ; 2 uses
  %i.ag = icmp ult i8 %i.f, %i.af
  br i1 %i.ag, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.ah = add nuw i8 %i.f, 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 240
  %i.aj = zext i8 %i.ah to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.aj
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !217 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 10
  %i.an = load i8, ptr %i.am, align 1, !tbaa !71  ; 3 uses
  %i.ao = icmp ult i8 %i.an, 7
  br i1 %i.ao, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %narrow114 = sub nuw nsw i8 7, %i.an
  %i.ap = load i32, ptr %i.a, align 8, !tbaa !9   ; 2 uses
  %i.aq = icmp sgt i32 %i.ap, 0
  %i.ar = zext i1 %i.aq to i8
  %i.as = lshr i8 %narrow114, %i.ar
  %.sroa.speculated = tail call i8 @llvm.umax.i8(i8 %i.as, i8 1) ; 3 uses
  %i.at = and i32 %i.ap, 255
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %i.av = load i8, ptr %i.au, align 2, !tbaa !71
  %i.aw = zext i8 %i.av to i32
  %i.ax = zext nneg i8 %.sroa.speculated to i32
  %i.ay = sub nsw i32 %i.aw, %i.ax
  %.not85 = icmp sle i32 %i.at, %i.ay
  %narrow115 = add nuw nsw i8 %.sroa.speculated, %i.an
  %i.az = icmp samesign ult i8 %narrow115, 7
  %or.cond111 = select i1 %.not85, i1 true, i1 %i.az
  br i1 %or.cond111, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE23rebalance_left_to_rightEhPSE_PSC_(ptr noundef nonnull align 1 dereferenceable(1) %i.b, i8 noundef zeroext %.sroa.speculated, ptr noundef nonnull %i.al, ptr noundef nonnull %i.ba)
  %i.bb = load i32, ptr %i.a, align 8, !tbaa !9   ; 2 uses
  %i.bc = load ptr, ptr %1, align 8, !tbaa !217
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 10
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !71
  %i.bf = zext i8 %i.be to i32                    ; 2 uses
  %i.bg = icmp sgt i32 %i.bb, %i.bf
  br i1 %i.bg, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.bh = xor i32 %i.bf, -1
  %i.bi = add nsw i32 %i.bb, %i.bh
  br label %.critedge.sink.split

bb.l:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.bj = icmp eq i8 %i.af, 7
  br i1 %i.bj, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.bk = zext i8 %i.f to i32
  store ptr %i.c, ptr %2, align 8, !tbaa !220
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.bk, ptr %i.bl, align 8, !tbaa !219
  call void @_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeISD_EERKS9_PSI_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %2)
  %i.bm = load ptr, ptr %1, align 8, !tbaa !217   ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !217
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.o

bb.n:                                             ; preds = %bb.a
  %i.bo = tail call noalias noundef nonnull dereferenceable(304) ptr @_Znwm(i64 noundef 304) #30 ; 6 uses
  store ptr %i.c, ptr %i.bo, align 8, !tbaa !217
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i32 0, ptr %i.bp, align 8
  %i.bq = load ptr, ptr %1, align 8, !tbaa !217   ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 240
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !217
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store i8 0, ptr %i.bs, align 1, !tbaa !71
  store ptr %i.bo, ptr %i.bq, align 8, !tbaa !217
  store ptr %i.bo, ptr %0, align 8, !tbaa !217
  %.pre = load ptr, ptr %1, align 8, !tbaa !217
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.m, %bb.n
  %i.bt = phi ptr [ %i.bm, %bb.m ], [ %i.b, %bb.l ], [ %.pre, %bb.n ] ; 2 uses
  %.083 = phi ptr [ %i.bn, %bb.m ], [ %i.c, %bb.l ], [ %i.bo, %bb.n ] ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 11
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !71
  %.not116 = icmp eq i8 %i.bv, 0
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !71
  %i.by = add i8 %i.bx, 1                         ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br i1 %.not116, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ca = call noalias noundef nonnull dereferenceable(240) ptr @_Znwm(i64 noundef 240) #30 ; 9 uses
  store ptr %.083, ptr %i.ca, align 8, !tbaa !217
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store i8 %i.by, ptr %i.cb, align 8, !tbaa !71
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 9
  store i8 0, ptr %i.cc, align 1, !tbaa !71
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 10
  store i8 0, ptr %i.cd, align 2, !tbaa !71
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 11
  store i8 7, ptr %i.ce, align 1, !tbaa !71
  %i.cf = load ptr, ptr %1, align 8, !tbaa !217
  %i.cg = load i32, ptr %i.a, align 8, !tbaa !9
  call void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE5splitEiPSE_PSC_(ptr noundef nonnull align 1 dereferenceable(1) %i.cf, i32 noundef %i.cg, ptr noundef nonnull %i.ca, ptr noundef nonnull %i.bz)
  %i.ch = load ptr, ptr %i.bz, align 8, !tbaa !217
  %i.ci = load ptr, ptr %1, align 8, !tbaa !217
  %i.cj = icmp eq ptr %i.ch, %i.ci
  br i1 %i.cj, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  store ptr %i.ca, ptr %i.bz, align 8, !tbaa !217
  br label %bb.s

bb.r:                                             ; preds = %bb.o
  %i.ck = call noalias noundef nonnull dereferenceable(304) ptr @_Znwm(i64 noundef 304) #30 ; 7 uses
  store ptr %.083, ptr %i.ck, align 8, !tbaa !217
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store i8 %i.by, ptr %i.cl, align 8, !tbaa !71
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 9
  store i8 0, ptr %i.cm, align 1, !tbaa !71
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 10
  store i8 0, ptr %i.cn, align 2, !tbaa !71
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 11
  store i8 0, ptr %i.co, align 1, !tbaa !71
  %i.cp = load ptr, ptr %1, align 8, !tbaa !217
  %i.cq = load i32, ptr %i.a, align 8, !tbaa !9
  call void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE5splitEiPSE_PSC_(ptr noundef nonnull align 1 dereferenceable(1) %i.cp, i32 noundef %i.cq, ptr noundef nonnull %i.ck, ptr noundef nonnull %i.bz)
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.q, %bb.r
  %.0 = phi ptr [ %i.ca, %bb.q ], [ %i.ca, %bb.p ], [ %i.ck, %bb.r ]
  %i.cr = load i32, ptr %i.a, align 8, !tbaa !9   ; 2 uses
  %i.cs = load ptr, ptr %1, align 8, !tbaa !217
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 10
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !71
  %i.cv = zext i8 %i.cu to i32                    ; 2 uses
  %i.cw = icmp sgt i32 %i.cr, %i.cv
  br i1 %i.cw, label %bb.t, label %.critedge

bb.t:                                             ; preds = %bb.s
  %i.cx = xor i32 %i.cv, -1
  %i.cy = add nsw i32 %i.cr, %i.cx
  br label %.critedge.sink.split

.critedge.sink.split:                             ; preds = %bb.t, %bb.f, %bb.k
  %.sink126 = phi i32 [ %i.bi, %bb.k ], [ %i.ad, %bb.f ], [ %i.cy, %bb.t ]
  %.sink = phi ptr [ %i.al, %bb.k ], [ %i.k, %bb.f ], [ %.0, %bb.t ]
  store i32 %.sink126, ptr %i.a, align 8, !tbaa !9
  store ptr %.sink, ptr %1, align 8, !tbaa !217
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %bb.j, %bb.e, %bb.s
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE16clear_and_deleteEPSE_PSC_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !561 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 11 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !71    ; 2 uses
  %.not76 = icmp eq i8 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.d = load i8, ptr %i.c, align 1, !tbaa !71    ; 3 uses
  br i1 %.not76, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = zext i8 %i.d to i64
  %i.g = shl nuw nsw i64 %i.f, 5
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.g
  %.not9.i = icmp eq i8 %i.d, 0
  br i1 %.not9.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE15value_destroy_nEhhPSC_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15set_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE7destroyISaIS9_EEEDaPT_PS9_.exit.i
  %.010.i = phi ptr [ %i.n, %_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15set_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE7destroyISaIS9_EEEDaPT_PS9_.exit.i ], [ %i.e, %bb.b ] ; 3 uses
  %i.i = load ptr, ptr %.010.i, align 8, !tbaa !68 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.010.i, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15set_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE7destroyISaIS9_EEEDaPT_PS9_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i
  %i.l = load i64, ptr %i.j, align 8, !tbaa !71
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #27
  br label %_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15set_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE7destroyISaIS9_EEEDaPT_PS9_.exit.i

_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15set_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE7destroyISaIS9_EEEDaPT_PS9_.exit.i: ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.010.i, i64 32 ; 2 uses
  %.not.i = icmp eq ptr %i.n, %i.h
  br i1 %.not.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE15value_destroy_nEhhPSC_.exit.loopexit, label %.lr.ph.i, !llvm.loop !557

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE15value_destroy_nEhhPSC_.exit.loopexit: ; preds = %_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15set_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE7destroyISaIS9_EEEDaPT_PS9_.exit.i
  %.pre = load i8, ptr %i.a, align 1, !tbaa !71
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE15value_destroy_nEhhPSC_.exit

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE15value_destroy_nEhhPSC_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE15value_destroy_nEhhPSC_.exit.loopexit, %bb.b
  %i.o = phi i8 [ %.pre, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE15value_destroy_nEhhPSC_.exit.loopexit ], [ %i.b, %bb.b ] ; 2 uses
  %i.p = icmp eq i8 %i.o, 0
  %i.q = select i1 %i.p, i8 7, i8 %i.o
  %i.r = zext i8 %i.q to i64
  %i.s = shl nuw nsw i64 %i.r, 5
  %i.t = or disjoint i64 %i.s, 16
  br label %.loopexit.sink.split

bb.c:                                             ; preds = %bb.a
  %i.u = icmp eq i8 %i.d, 0
  br i1 %i.u, label %.loopexit.sink.split, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.v = load ptr, ptr %0, align 8, !tbaa !217
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.04982 = phi ptr [ %i.x, %.lr.ph ], [ %0, %.lr.ph.preheader ]
  %i.w = getelementptr inbounds nuw i8, ptr %.04982, i64 240
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !217  ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 11
  %i.z = load i8, ptr %i.y, align 1, !tbaa !71
  %.not.i55 = icmp eq i8 %i.z, 0
  br i1 %.not.i55, label %.lr.ph, label %._crit_edge, !llvm.loop !558

._crit_edge:                                      ; preds = %.lr.ph
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !71
  %i.ac = zext i8 %i.ab to i64
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !217
  br label %bb.d

bb.d:                                             ; preds = %.backedge, %._crit_edge
  %.147 = phi i64 [ %i.ac, %._crit_edge ], [ %.147.be, %.backedge ] ; 2 uses
  %.1 = phi ptr [ %i.ad, %._crit_edge ], [ %.1.be, %.backedge ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.1, i64 240
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %.147
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !217 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 11
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !71
  %.not.i56 = icmp eq i8 %i.ai, 0
  br i1 %.not.i56, label %.lr.ph85, label %bb.e

.lr.ph85:                                         ; preds = %bb.d, %.lr.ph85
  %.15084 = phi ptr [ %i.ak, %.lr.ph85 ], [ %i.ag, %bb.d ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.15084, i64 240
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !217 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 11
  %i.am = load i8, ptr %i.al, align 1, !tbaa !71
  %.not.i57 = icmp eq i8 %i.am, 0
  br i1 %.not.i57, label %.lr.ph85, label %._crit_edge86, !llvm.loop !559

._crit_edge86:                                    ; preds = %.lr.ph85
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !71
  %i.ap = zext i8 %i.ao to i64
  %i.aq = load ptr, ptr %i.ak, align 8, !tbaa !217
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge86, %bb.d
  %.251 = phi ptr [ %i.ak, %._crit_edge86 ], [ %i.ag, %bb.d ] ; 4 uses
  %.248 = phi i64 [ %i.ap, %._crit_edge86 ], [ %.147, %bb.d ] ; 2 uses
  %.2 = phi ptr [ %i.aq, %._crit_edge86 ], [ %.1, %bb.d ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.251, i64 10
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !71  ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.251, i64 16 ; 2 uses
  %i.au = zext i8 %i.as to i64
  %i.av = shl nuw nsw i64 %i.au, 5
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.av
  %.not9.i58 = icmp eq i8 %i.as, 0
  br i1 %.not9.i58, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE15value_destroy_nEhhPSC_.exit66, label %.lr.ph.i60

.lr.ph.i60:                                       ; preds = %bb.e, %_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15set_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE7destroyISaIS9_EEEDaPT_PS9_.exit.i63
  %.010.i61 = phi ptr [ %i.bc, %_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15set_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE7destroyISaIS9_EEEDaPT_PS9_.exit.i63 ], [ %i.at, %bb.e ] ; 3 uses
  %i.ax = load ptr, ptr %.010.i61, align 8, !tbaa !68 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.010.i61, i64 16 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15set_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE7destroyISaIS9_EEEDaPT_PS9_.exit.i63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i62: ; preds = %.lr.ph.i60
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !71
  %i.bb = add i64 %i.ba, 1
  tail call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.bb) #27
  br label %_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15set_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE7destroyISaIS9_EEEDaPT_PS9_.exit.i63

_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15set_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE7destroyISaIS9_EEEDaPT_PS9_.exit.i63: ; preds = %.lr.ph.i60, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i62
  %i.bc = getelementptr inbounds nuw i8, ptr %.010.i61, i64 32 ; 2 uses
  %.not.i64 = icmp eq ptr %i.bc, %i.aw
  br i1 %.not.i64, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE15value_destroy_nEhhPSC_.exit66, label %.lr.ph.i60, !llvm.loop !557

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE15value_destroy_nEhhPSC_.exit66: ; preds = %_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15set_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE7destroyISaIS9_EEEDaPT_PS9_.exit.i63, %bb.e
  %i.bd = getelementptr inbounds nuw i8, ptr %.251, i64 11
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !71  ; 2 uses
  %i.bf = icmp eq i8 %i.be, 0
  %i.bg = select i1 %i.bf, i8 7, i8 %i.be
  %i.bh = zext i8 %i.bg to i64
  %i.bi = shl nuw nsw i64 %i.bh, 5
  %i.bj = or disjoint i64 %i.bi, 16
  tail call void @_ZdlPvm(ptr noundef nonnull %.251, i64 noundef %i.bj) #27
  %i.bk = getelementptr inbounds nuw i8, ptr %.2, i64 10
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !71  ; 2 uses
  %i.bm = zext i8 %i.bl to i64
  %.not.not = icmp ult i64 %.248, %i.bm
  br i1 %.not.not, label %.backedge, label %.preheader77

.backedge:                                        ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE15value_destroy_nEhhPSC_.exit66, %bb.g
  %.147.be.in = phi i64 [ %.248, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE15value_destroy_nEhhPSC_.exit66 ], [ %i.ce, %bb.g ]
  %.1.be = phi ptr [ %.2, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE15value_destroy_nEhhPSC_.exit66 ], [ %i.bq, %bb.g ]
  %.147.be = add nuw nsw i64 %.147.be.in, 1
  br label %bb.d

.preheader77:                                     ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE15value_destroy_nEhhPSC_.exit66, %bb.f
  %i.bn = phi i8 [ %i.cd, %bb.f ], [ %i.bl, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE15value_destroy_nEhhPSC_.exit66 ] ; 2 uses
  %.3 = phi ptr [ %i.bq, %bb.f ], [ %.2, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE15value_destroy_nEhhPSC_.exit66 ] ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.3, i64 8
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !71  ; 2 uses
  %i.bq = load ptr, ptr %.3, align 8, !tbaa !217  ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.3, i64 16 ; 2 uses
  %i.bs = zext i8 %i.bn to i64
  %i.bt = shl nuw nsw i64 %i.bs, 5
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bt
  %.not9.i67 = icmp eq i8 %i.bn, 0
  br i1 %.not9.i67, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE15value_destroy_nEhhPSC_.exit75, label %.lr.ph.i69

.lr.ph.i69:                                       ; preds = %.preheader77, %_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15set_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE7destroyISaIS9_EEEDaPT_PS9_.exit.i72
  %.010.i70 = phi ptr [ %i.ca, %_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15set_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE7destroyISaIS9_EEEDaPT_PS9_.exit.i72 ], [ %i.br, %.preheader77 ] ; 3 uses
  %i.bv = load ptr, ptr %.010.i70, align 8, !tbaa !68 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.010.i70, i64 16 ; 2 uses
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15set_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE7destroyISaIS9_EEEDaPT_PS9_.exit.i72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i71: ; preds = %.lr.ph.i69
  %i.by = load i64, ptr %i.bw, align 8, !tbaa !71
  %i.bz = add i64 %i.by, 1
  tail call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.bz) #27
  br label %_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15set_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE7destroyISaIS9_EEEDaPT_PS9_.exit.i72

_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15set_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE7destroyISaIS9_EEEDaPT_PS9_.exit.i72: ; preds = %.lr.ph.i69, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i71
  %i.ca = getelementptr inbounds nuw i8, ptr %.010.i70, i64 32 ; 2 uses
  %.not.i73 = icmp eq ptr %i.ca, %i.bu
  br i1 %.not.i73, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE15value_destroy_nEhhPSC_.exit75, label %.lr.ph.i69, !llvm.loop !557

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE15value_destroy_nEhhPSC_.exit75: ; preds = %_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15set_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE7destroyISaIS9_EEEDaPT_PS9_.exit.i72, %.preheader77
  tail call void @_ZdlPvm(ptr noundef nonnull %.3, i64 noundef 304) #27
  %i.cb = icmp eq ptr %i.bq, %i.v
  br i1 %i.cb, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE15value_destroy_nEhhPSC_.exit75
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bq, i64 10
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !71  ; 2 uses
  %.not = icmp ult i8 %i.bp, %i.cd
  br i1 %.not, label %bb.g, label %.preheader77, !llvm.loop !560

bb.g:                                             ; preds = %bb.f
  %i.ce = zext i8 %i.bp to i64
  br label %.backedge

.loopexit.sink.split:                             ; preds = %bb.c, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE15value_destroy_nEhhPSC_.exit
  %.sink = phi i64 [ %i.t, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE15value_destroy_nEhhPSC_.exit ], [ 304, %bb.c ]
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef %.sink) #27
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE15value_destroy_nEhhPSC_.exit75, %.loopexit.sink.split
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE23rebalance_right_to_leftEhPSE_PSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !564 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 7 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !71
  %i.c = zext i8 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !71
  %i.f = zext i8 %i.e to i64
  %i.g = load ptr, ptr %0, align 8, !tbaa !217
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.c ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %i.j, i64 %i.f ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  store ptr %i.l, ptr %i.i, align 8, !tbaa !70
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !68   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 5 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !69   ; 2 uses
  %i.r = icmp ult i64 %i.q, 16
  tail call void @llvm.assume(i1 %i.r)
  %i.s = add nuw nsw i64 %i.q, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.l, ptr noundef nonnull align 8 dereferenceable(1) %i.n, i64 %i.s, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEmmPSE_PSC_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.a
  store ptr %i.m, ptr %i.i, align 8, !tbaa !68
  %i.t = load i64, ptr %i.n, align 8, !tbaa !71
  store i64 %i.t, ptr %i.l, align 8, !tbaa !71
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEmmPSE_PSC_.exit

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEmmPSE_PSC_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !69
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %i.v, ptr %i.w, align 8, !tbaa !69
  store ptr %i.n, ptr %i.k, align 8, !tbaa !68
  store i64 0, ptr %i.u, align 8, !tbaa !69
  store i8 0, ptr %i.n, align 8, !tbaa !71
  %i.x = zext i8 %1 to i32                        ; 3 uses
  %i.y = add nsw i32 %i.x, -1                     ; 3 uses
  %i.z = sext i32 %i.y to i64                     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %.idx.i = shl nuw nsw i64 %i.z, 5
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.idx.i
  %.not13.i = icmp eq i32 %i.y, 0
  br i1 %.not13.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10transfer_nEmmmPSE_PSC_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEmmPSE_PSC_.exit
  %i.ac = load i8, ptr %i.a, align 2, !tbaa !71
  %i.ad = zext i8 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.ad
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i, %.lr.ph.preheader.i
  %.015.i.pn = phi ptr [ %.015.i, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i ], [ %i.ae, %.lr.ph.preheader.i ] ; 3 uses
  %.01214.i = phi ptr [ %i.ar, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i ], [ %i.aa, %.lr.ph.preheader.i ] ; 6 uses
  %.015.i = getelementptr inbounds nuw i8, ptr %.015.i.pn, i64 32 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.015.i.pn, i64 48 ; 3 uses
  store ptr %i.af, ptr %.015.i, align 8, !tbaa !70
  %i.ag = load ptr, ptr %.01214.i, align 8, !tbaa !68 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.01214.i, i64 16 ; 5 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i44

bb.c:                                             ; preds = %.lr.ph.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.01214.i, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !69 ; 2 uses
  %i.al = icmp ult i64 %i.ak, 16
  tail call void @llvm.assume(i1 %i.al)
  %i.am = add nuw nsw i64 %i.ak, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.af, ptr noundef nonnull align 8 dereferenceable(1) %i.ah, i64 %i.am, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i44: ; preds = %.lr.ph.i
  store ptr %i.ag, ptr %.015.i, align 8, !tbaa !68
  %i.an = load i64, ptr %i.ah, align 8, !tbaa !71
  store i64 %i.an, ptr %i.af, align 8, !tbaa !71
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i44, %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %.01214.i, i64 8 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !69
  %i.aq = getelementptr inbounds nuw i8, ptr %.015.i.pn, i64 40
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !69
  store ptr %i.ah, ptr %.01214.i, align 8, !tbaa !68
  store i64 0, ptr %i.ao, align 8, !tbaa !69
  store i8 0, ptr %i.ah, align 8, !tbaa !71
  %i.ar = getelementptr inbounds nuw i8, ptr %.01214.i, i64 32 ; 2 uses
  %.not.i = icmp eq ptr %i.ar, %i.ab
  br i1 %.not.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10transfer_nEmmmPSE_PSC_.exit, label %.lr.ph.i, !llvm.loop !1

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10transfer_nEmmmPSE_PSC_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEmmPSE_PSC_.exit
  %i.as = load ptr, ptr %0, align 8, !tbaa !217
  %i.at = load i8, ptr %i.d, align 8, !tbaa !71
  %i.au = zext i8 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.aw = getelementptr inbounds nuw [32 x i8], ptr %i.av, i64 %i.au ; 4 uses
  %i.ax = getelementptr inbounds nuw [32 x i8], ptr %i.aa, i64 %i.z ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 3 uses
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !70
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !68 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 5 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i45

bb.d:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10transfer_nEmmmPSE_PSC_.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !69 ; 2 uses
  %i.be = icmp ult i64 %i.bd, 16
  tail call void @llvm.assume(i1 %i.be)
  %i.bf = add nuw nsw i64 %i.bd, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ay, ptr noundef nonnull align 8 dereferenceable(1) %i.ba, i64 %i.bf, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEmmPSE_PSC_.exit47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i45: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10transfer_nEmmmPSE_PSC_.exit
  store ptr %i.az, ptr %i.aw, align 8, !tbaa !68
  %i.bg = load i64, ptr %i.ba, align 8, !tbaa !71
  store i64 %i.bg, ptr %i.ay, align 8, !tbaa !71
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEmmPSE_PSC_.exit47

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEmmPSE_PSC_.exit47: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i45
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !69
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i64 %i.bi, ptr %i.bj, align 8, !tbaa !69
  store ptr %i.ba, ptr %i.ax, align 8, !tbaa !68
  store i64 0, ptr %i.bh, align 8, !tbaa !69
  store i8 0, ptr %i.ba, align 8, !tbaa !71
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 5 uses
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !71  ; 2 uses
  %i.bm = zext i8 %i.bl to i32
  %i.bn = sub nsw i32 %i.bm, %i.x
  %i.bo = sext i32 %i.bn to i64
  %i.bp = zext i8 %1 to i64                       ; 3 uses
  %i.bq = getelementptr inbounds nuw [32 x i8], ptr %i.aa, i64 %i.bp ; 2 uses
  %.idx.i48 = shl nuw nsw i64 %i.bo, 5
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.idx.i48
  %.not13.i49 = icmp eq i8 %i.bl, %1
  br i1 %.not13.i49, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10transfer_nEmmmPSE_PSC_.exit57, label %.lr.ph.i51

.lr.ph.i51:                                       ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEmmPSE_PSC_.exit47, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i55
  %.015.i52 = phi ptr [ %i.cf, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i55 ], [ %i.aa, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEmmPSE_PSC_.exit47 ] ; 5 uses
  %.01214.i53 = phi ptr [ %i.ce, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i55 ], [ %i.bq, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEmmPSE_PSC_.exit47 ] ; 6 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.015.i52, i64 16 ; 3 uses
  store ptr %i.bs, ptr %.015.i52, align 8, !tbaa !70
  %i.bt = load ptr, ptr %.01214.i53, align 8, !tbaa !68 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.01214.i53, i64 16 ; 5 uses
  %i.bv = icmp eq ptr %i.bt, %i.bu
  br i1 %i.bv, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i54

bb.e:                                             ; preds = %.lr.ph.i51
  %i.bw = getelementptr inbounds nuw i8, ptr %.01214.i53, i64 8
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !69 ; 2 uses
  %i.by = icmp ult i64 %i.bx, 16
  tail call void @llvm.assume(i1 %i.by)
  %i.bz = add nuw nsw i64 %i.bx, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bs, ptr noundef nonnull align 8 dereferenceable(1) %i.bu, i64 %i.bz, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i54: ; preds = %.lr.ph.i51
  store ptr %i.bt, ptr %.015.i52, align 8, !tbaa !68
  %i.ca = load i64, ptr %i.bu, align 8, !tbaa !71
  store i64 %i.ca, ptr %i.bs, align 8, !tbaa !71
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i55

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i55: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i54, %bb.e
  %i.cb = getelementptr inbounds nuw i8, ptr %.01214.i53, i64 8 ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !69
  %i.cd = getelementptr inbounds nuw i8, ptr %.015.i52, i64 8
  store i64 %i.cc, ptr %i.cd, align 8, !tbaa !69
  store ptr %i.bu, ptr %.01214.i53, align 8, !tbaa !68
  store i64 0, ptr %i.cb, align 8, !tbaa !69
  store i8 0, ptr %i.bu, align 8, !tbaa !71
  %i.ce = getelementptr inbounds nuw i8, ptr %.01214.i53, i64 32 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.015.i52, i64 32
  %.not.i56 = icmp eq ptr %i.ce, %i.br
  br i1 %.not.i56, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10transfer_nEmmmPSE_PSC_.exit57, label %.lr.ph.i51, !llvm.loop !1

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10transfer_nEmmmPSE_PSC_.exit57: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i55, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEmmPSE_PSC_.exit47
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !71
  %.not.i58 = icmp eq i8 %i.ch, 0
  br i1 %.not.i58, label %.preheader59, label %.loopexit

.preheader59:                                     ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10transfer_nEmmmPSE_PSC_.exit57
  %.not64 = icmp eq i8 %1, 0
  br i1 %.not64, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader59
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 240 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %xtraiter = and i64 %i.bp, 1
  %i.ck = icmp eq i32 %i.y, 0
  br i1 %i.ck, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.bp, 254
  br label %bb.f

.preheader.loopexit.unr-lcssa:                    ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.preheader.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod79 = trunc i8 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod79)
  %i.cl = load i8, ptr %i.a, align 2, !tbaa !71
  %i.cm = trunc i64 %indvars.iv.epil.init to i8
  %i.cn = add i8 %i.cm, 1
  %i.co = add i8 %i.cl, %i.cn                     ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv.epil.init
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !217 ; 3 uses
  %i.cr = zext i8 %i.co to i64
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.cr
  store ptr %i.cq, ptr %i.cs, align 8, !tbaa !217
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store i8 %i.co, ptr %i.ct, align 1, !tbaa !71
  store ptr %0, ptr %i.cq, align 8, !tbaa !217
  br label %.preheader

.preheader:                                       ; preds = %.epil.preheader, %.preheader.loopexit.unr-lcssa, %.preheader59
  %i.cu = load i8, ptr %i.bk, align 1, !tbaa !71
  %.not61 = icmp ult i8 %i.cu, %1
  br i1 %.not61, label %.loopexit, label %.lr.ph63

.lr.ph63:                                         ; preds = %.preheader
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 240 ; 2 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.f, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.f ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.f ]
  %i.cw = load i8, ptr %i.a, align 2, !tbaa !71
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.cx = trunc nuw i64 %indvars.iv.next to i8
  %i.cy = add i8 %i.cw, %i.cx                     ; 2 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !217 ; 3 uses
  %i.db = zext i8 %i.cy to i64
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.db
  store ptr %i.da, ptr %i.dc, align 8, !tbaa !217
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store i8 %i.cy, ptr %i.dd, align 1, !tbaa !71
  store ptr %0, ptr %i.da, align 8, !tbaa !217
  %i.de = load i8, ptr %i.a, align 2, !tbaa !71
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.df = trunc nuw i64 %indvars.iv.next.1 to i8
  %i.dg = add i8 %i.de, %i.df                     ; 2 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv.next
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !217 ; 3 uses
  %i.dj = zext i8 %i.dg to i64
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.dj
  store ptr %i.di, ptr %i.dk, align 8, !tbaa !217
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  store i8 %i.dg, ptr %i.dl, align 1, !tbaa !71
  store ptr %0, ptr %i.di, align 8, !tbaa !217
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %bb.f, !llvm.loop !562

bb.g:                                             ; preds = %.lr.ph63, %bb.g
  %.062 = phi i8 [ 0, %.lr.ph63 ], [ %i.dt, %bb.g ] ; 4 uses
  %i.dm = add i8 %.062, %1
  %i.dn = zext i8 %i.dm to i64
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.dn
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !217 ; 3 uses
  %i.dq = zext i8 %.062 to i64
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.dq
  store ptr %i.dp, ptr %i.dr, align 8, !tbaa !217
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  store i8 %.062, ptr %i.ds, align 1, !tbaa !71
  store ptr %2, ptr %i.dp, align 8, !tbaa !217
  %i.dt = add i8 %.062, 1                         ; 2 uses
  %i.du = zext i8 %i.dt to i32
  %i.dv = load i8, ptr %i.bk, align 1, !tbaa !71
  %i.dw = zext i8 %i.dv to i32
  %i.dx = sub nsw i32 %i.dw, %i.x
  %.not = icmp slt i32 %i.dx, %i.du
  br i1 %.not, label %.loopexit, label %bb.g, !llvm.loop !563

.loopexit:                                        ; preds = %bb.g, %.preheader, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10transfer_nEmmmPSE_PSC_.exit57
  %i.dy = load i8, ptr %i.a, align 2, !tbaa !71
  %i.dz = add i8 %i.dy, %1
  store i8 %i.dz, ptr %i.a, align 2, !tbaa !71
  %i.ea = load i8, ptr %i.bk, align 1, !tbaa !71
  %i.eb = sub i8 %i.ea, %1
  store i8 %i.eb, ptr %i.bk, align 1, !tbaa !71
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE23rebalance_left_to_rightEhPSE_PSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !567 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 4 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !71    ; 2 uses
  %i.c = zext i8 %1 to i32                        ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %.not15.i = icmp eq i8 %i.b, 0
  br i1 %.not15.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE19transfer_n_backwardEmmmPSE_PSC_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.e = zext i8 %i.b to i64                      ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.e, 5
  %i.f = zext i8 %1 to i64
  %i.g = getelementptr [32 x i8], ptr %i.d, i64 %i.f
  %i.h = getelementptr [32 x i8], ptr %i.g, i64 %i.e
  %i.i = getelementptr i8, ptr %i.d, i64 %.idx.i
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i, %.lr.ph.preheader.i
  %.017.i = phi ptr [ %i.j, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i ], [ %i.h, %.lr.ph.preheader.i ] ; 3 uses
  %.01416.i = phi ptr [ %i.k, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i ], [ %i.i, %.lr.ph.preheader.i ] ; 4 uses
  %i.j = getelementptr inbounds i8, ptr %.017.i, i64 -32 ; 3 uses
  %i.k = getelementptr inbounds i8, ptr %.01416.i, i64 -32 ; 4 uses
  %i.l = getelementptr inbounds i8, ptr %.017.i, i64 -16 ; 3 uses
  store ptr %i.l, ptr %i.j, align 8, !tbaa !70
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !68   ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %.01416.i, i64 -16 ; 5 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.p = getelementptr inbounds i8, ptr %.01416.i, i64 -24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !69   ; 2 uses
  %i.r = icmp ult i64 %i.q, 16
  tail call void @llvm.assume(i1 %i.r)
  %i.s = add nuw nsw i64 %i.q, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.l, ptr noundef nonnull align 8 dereferenceable(1) %i.n, i64 %i.s, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i
  store ptr %i.m, ptr %i.j, align 8, !tbaa !68
  %i.t = load i64, ptr %i.n, align 8, !tbaa !71
  store i64 %i.t, ptr %i.l, align 8, !tbaa !71
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.b
  %i.u = getelementptr inbounds i8, ptr %.01416.i, i64 -24 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !69
  %i.w = getelementptr inbounds i8, ptr %.017.i, i64 -24
  store i64 %i.v, ptr %i.w, align 8, !tbaa !69
  store ptr %i.n, ptr %i.k, align 8, !tbaa !68
  store i64 0, ptr %i.u, align 8, !tbaa !69
  store i8 0, ptr %i.n, align 8, !tbaa !71
  %.not.i = icmp eq ptr %i.k, %i.d
  br i1 %.not.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE19transfer_n_backwardEmmmPSE_PSC_.exit, label %.lr.ph.i, !llvm.loop !2

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE19transfer_n_backwardEmmmPSE_PSC_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i, %bb.a
  %i.x = add nsw i32 %i.c, -1                     ; 3 uses
  %i.y = sext i32 %i.x to i64                     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !71
  %i.ab = zext i8 %i.aa to i64
  %i.ac = load ptr, ptr %0, align 8, !tbaa !217
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %i.y ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %i.ae, i64 %i.ab ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 3 uses
  store ptr %i.ag, ptr %i.ad, align 8, !tbaa !70
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !68 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 5 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i46

bb.c:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE19transfer_n_backwardEmmmPSE_PSC_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !69 ; 2 uses
  %i.am = icmp ult i64 %i.al, 16
  tail call void @llvm.assume(i1 %i.am)
  %i.an = add nuw nsw i64 %i.al, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ag, ptr noundef nonnull align 8 dereferenceable(1) %i.ai, i64 %i.an, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEmmPSE_PSC_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i46: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE19transfer_n_backwardEmmmPSE_PSC_.exit
  store ptr %i.ah, ptr %i.ad, align 8, !tbaa !68
  %i.ao = load i64, ptr %i.ai, align 8, !tbaa !71
  store i64 %i.ao, ptr %i.ag, align 8, !tbaa !71
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEmmPSE_PSC_.exit

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEmmPSE_PSC_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i46
  %i.ap = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !69
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !69
  store ptr %i.ai, ptr %i.af, align 8, !tbaa !68
  store i64 0, ptr %i.ap, align 8, !tbaa !69
  store i8 0, ptr %i.ai, align 8, !tbaa !71
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 7 uses
  %i.at = load i8, ptr %i.as, align 2, !tbaa !71
  %i.au = zext i8 %i.at to i32                    ; 2 uses
  %i.av = sub nsw i32 %i.au, %i.x
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ay = getelementptr inbounds nuw [32 x i8], ptr %i.ax, i64 %i.aw ; 2 uses
  %.idx.i48 = shl nuw nsw i64 %i.y, 5
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.idx.i48
  %.not13.i = icmp eq i32 %i.x, 0
  br i1 %.not13.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10transfer_nEmmmPSE_PSC_.exit, label %.lr.ph.i50

.lr.ph.i50:                                       ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEmmPSE_PSC_.exit, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i52
  %.015.i = phi ptr [ %i.bn, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i52 ], [ %i.d, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEmmPSE_PSC_.exit ] ; 5 uses
  %.01214.i = phi ptr [ %i.bm, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i52 ], [ %i.ay, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEmmPSE_PSC_.exit ] ; 6 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.015.i, i64 16 ; 3 uses
  store ptr %i.ba, ptr %.015.i, align 8, !tbaa !70
  %i.bb = load ptr, ptr %.01214.i, align 8, !tbaa !68 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.01214.i, i64 16 ; 5 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i51

bb.d:                                             ; preds = %.lr.ph.i50
  %i.be = getelementptr inbounds nuw i8, ptr %.01214.i, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !69 ; 2 uses
  %i.bg = icmp ult i64 %i.bf, 16
  tail call void @llvm.assume(i1 %i.bg)
  %i.bh = add nuw nsw i64 %i.bf, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ba, ptr noundef nonnull align 8 dereferenceable(1) %i.bc, i64 %i.bh, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i51: ; preds = %.lr.ph.i50
  store ptr %i.bb, ptr %.015.i, align 8, !tbaa !68
  %i.bi = load i64, ptr %i.bc, align 8, !tbaa !71
  store i64 %i.bi, ptr %i.ba, align 8, !tbaa !71
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i52

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i52: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i51, %bb.d
  %i.bj = getelementptr inbounds nuw i8, ptr %.01214.i, i64 8 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !69
  %i.bl = getelementptr inbounds nuw i8, ptr %.015.i, i64 8
  store i64 %i.bk, ptr %i.bl, align 8, !tbaa !69
  store ptr %i.bc, ptr %.01214.i, align 8, !tbaa !68
  store i64 0, ptr %i.bj, align 8, !tbaa !69
  store i8 0, ptr %i.bc, align 8, !tbaa !71
  %i.bm = getelementptr inbounds nuw i8, ptr %.01214.i, i64 32 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.015.i, i64 32
  %.not.i53 = icmp eq ptr %i.bm, %i.az
  br i1 %.not.i53, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10transfer_nEmmmPSE_PSC_.exit.loopexit, label %.lr.ph.i50, !llvm.loop !1

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10transfer_nEmmmPSE_PSC_.exit.loopexit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i52
  %.pre = load i8, ptr %i.as, align 2, !tbaa !71
  %.pre69 = zext i8 %.pre to i32
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10transfer_nEmmmPSE_PSC_.exit

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10transfer_nEmmmPSE_PSC_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10transfer_nEmmmPSE_PSC_.exit.loopexit, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEmmPSE_PSC_.exit
  %.pre-phi = phi i32 [ %.pre69, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10transfer_nEmmmPSE_PSC_.exit.loopexit ], [ %i.au, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEmmPSE_PSC_.exit ]
  %i.bo = load ptr, ptr %0, align 8, !tbaa !217
  %i.bp = load i8, ptr %i.z, align 8, !tbaa !71
  %i.bq = zext i8 %i.bp to i64
  %i.br = sub nsw i32 %.pre-phi, %i.c
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bu = getelementptr inbounds nuw [32 x i8], ptr %i.bt, i64 %i.bq ; 4 uses
  %i.bv = getelementptr inbounds nuw [32 x i8], ptr %i.ax, i64 %i.bs ; 5 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 16 ; 3 uses
  store ptr %i.bw, ptr %i.bu, align 8, !tbaa !70
  %i.bx = load ptr, ptr %i.bv, align 8, !tbaa !68 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 16 ; 5 uses
  %i.bz = icmp eq ptr %i.bx, %i.by
  br i1 %i.bz, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i54

bb.e:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10transfer_nEmmmPSE_PSC_.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !69 ; 2 uses
  %i.cc = icmp ult i64 %i.cb, 16
  tail call void @llvm.assume(i1 %i.cc)
  %i.cd = add nuw nsw i64 %i.cb, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bw, ptr noundef nonnull align 8 dereferenceable(1) %i.by, i64 %i.cd, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEmmPSE_PSC_.exit56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i54: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10transfer_nEmmmPSE_PSC_.exit
  store ptr %i.bx, ptr %i.bu, align 8, !tbaa !68
  %i.ce = load i64, ptr %i.by, align 8, !tbaa !71
  store i64 %i.ce, ptr %i.bw, align 8, !tbaa !71
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEmmPSE_PSC_.exit56

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEmmPSE_PSC_.exit56: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i54
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !69
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store i64 %i.cg, ptr %i.ch, align 8, !tbaa !69
  store ptr %i.by, ptr %i.bv, align 8, !tbaa !68
  store i64 0, ptr %i.cf, align 8, !tbaa !69
  store i8 0, ptr %i.by, align 8, !tbaa !71
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !71
  %.not.i57 = icmp eq i8 %i.cj, 0
  br i1 %.not.i57, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEmmPSE_PSC_.exit56
  %i.ck = load i8, ptr %i.a, align 1, !tbaa !71   ; 5 uses
  %i.cl = add i8 %i.ck, 1                         ; 2 uses
  %.not5859 = icmp eq i8 %i.cl, 0
  br i1 %.not5859, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 240 ; 6 uses
  %i.cn = zext i8 %i.cl to i64                    ; 2 uses
  %i.co = and i8 %i.ck, 1
  %lcmp.mod.not.not = icmp eq i8 %i.co, 0
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %i.cp = add i8 %i.ck, %1                        ; 2 uses
  %i.cq = zext i8 %i.ck to i64
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cq
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !217 ; 3 uses
  %i.ct = zext i8 %i.cp to i64
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.ct
  store ptr %i.cs, ptr %i.cu, align 8, !tbaa !217
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store i8 %i.cp, ptr %i.cv, align 1, !tbaa !71
  store ptr %2, ptr %i.cs, align 8, !tbaa !217
  %indvars.iv.next.prol = add nsw i64 %i.cn, -1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.unr = phi i64 [ %i.cn, %.lr.ph ], [ %indvars.iv.next.prol, %.prol.loopexit.unr-lcssa ]
  %i.cw = icmp eq i8 %i.ck, 0
  br i1 %i.cw, label %.preheader, label %.lr.ph.new

.preheader:                                       ; preds = %.prol.loopexit, %.lr.ph.new, %bb.f
  %.not61 = icmp eq i8 %1, 0
  br i1 %.not61, label %.loopexit, label %.lr.ph63

.lr.ph63:                                         ; preds = %.preheader
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 240 ; 3 uses
  %i.cz = add i8 %1, 1                            ; 2 uses
  %umax = tail call i8 @llvm.umax.i8(i8 %i.cz, i8 2)
  %wide.trip.count = zext i8 %umax to i64
  %i.da = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %xtraiter85 = and i64 %i.da, 1
  %i.db = icmp ult i8 %i.cz, 3
  br i1 %i.db, label %.epil.preheader, label %.lr.ph63.new

.lr.ph63.new:                                     ; preds = %.lr.ph63
  %unroll_iter = and i64 %i.da, -2
  %invariant.op = sub i8 1, %1
  br label %bb.g

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 3 uses
  %i.dc = trunc nuw i64 %indvars.iv to i8
  %i.dd = add i8 %i.dc, -1                        ; 2 uses
  %i.de = add i8 %i.dd, %1                        ; 2 uses
  %i.df = zext i8 %i.dd to i64
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.df
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !217 ; 3 uses
  %i.di = zext i8 %i.de to i64
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.di
  store ptr %i.dh, ptr %i.dj, align 8, !tbaa !217
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store i8 %i.de, ptr %i.dk, align 1, !tbaa !71
  store ptr %2, ptr %i.dh, align 8, !tbaa !217
  %i.dl = trunc i64 %indvars.iv to i8
  %i.dm = add i8 %i.dl, -2                        ; 2 uses
  %i.dn = add i8 %i.dm, %1                        ; 2 uses
  %i.do = zext i8 %i.dm to i64
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.do
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !217 ; 3 uses
  %i.dr = zext i8 %i.dn to i64
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.dr
  store ptr %i.dq, ptr %i.ds, align 8, !tbaa !217
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  store i8 %i.dn, ptr %i.dt, align 1, !tbaa !71
  store ptr %2, ptr %i.dq, align 8, !tbaa !217
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2 ; 2 uses
  %i.du = and i64 %indvars.iv.next.1, 255
  %.not58.1 = icmp eq i64 %i.du, 0
  br i1 %.not58.1, label %.preheader, label %.lr.ph.new, !llvm.loop !565

bb.g:                                             ; preds = %bb.g, %.lr.ph63.new
  %indvars.iv65 = phi i64 [ 1, %.lr.ph63.new ], [ %indvars.iv.next66.1, %bb.g ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph63.new ], [ %niter.next.1, %bb.g ]
  %i.dv = add nsw i64 %indvars.iv65, -1           ; 2 uses
  %i.dw = load i8, ptr %i.as, align 2, !tbaa !71
  %i.dx = trunc nuw i64 %indvars.iv65 to i8
  %i.dy = sub i8 %i.dx, %1
  %i.dz = add i8 %i.dy, %i.dw
  %i.ea = zext i8 %i.dz to i64
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.ea
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !217 ; 3 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.dv
  store ptr %i.ec, ptr %i.ed, align 8, !tbaa !217
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ef = trunc nuw i64 %i.dv to i8
  store i8 %i.ef, ptr %i.ee, align 1, !tbaa !71
  store ptr %2, ptr %i.ec, align 8, !tbaa !217
  %i.eg = load i8, ptr %i.as, align 2, !tbaa !71
  %i.eh = trunc i64 %indvars.iv65 to i8
  %.reass = add i8 %i.eh, %invariant.op
  %i.ei = add i8 %.reass, %i.eg
  %i.ej = zext i8 %i.ei to i64
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.ej
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !217 ; 3 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %indvars.iv65
  store ptr %i.el, ptr %i.em, align 8, !tbaa !217
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.eo = trunc nuw i64 %indvars.iv65 to i8
  store i8 %i.eo, ptr %i.en, align 1, !tbaa !71
  store ptr %2, ptr %i.el, align 8, !tbaa !217
  %indvars.iv.next66.1 = add nuw nsw i64 %indvars.iv65, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.g, !llvm.loop !566

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.g
  %lcmp.mod86.not = icmp eq i64 %xtraiter85, 0
  br i1 %lcmp.mod86.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph63
  %indvars.iv65.epil.init = phi i64 [ 1, %.lr.ph63 ], [ %indvars.iv.next66.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod87 = trunc i64 %i.da to i1
  tail call void @llvm.assume(i1 %lcmp.mod87)
  %i.ep = add nsw i64 %indvars.iv65.epil.init, -1 ; 2 uses
  %i.eq = load i8, ptr %i.as, align 2, !tbaa !71
  %i.er = trunc nuw i64 %indvars.iv65.epil.init to i8
  %i.es = sub i8 %i.er, %1
  %i.et = add i8 %i.es, %i.eq
  %i.eu = zext i8 %i.et to i64
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.eu
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !217 ; 3 uses
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.ep
  store ptr %i.ew, ptr %i.ex, align 8, !tbaa !217
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.ez = trunc nuw i64 %i.ep to i8
  store i8 %i.ez, ptr %i.ey, align 1, !tbaa !71
  store ptr %2, ptr %i.ew, align 8, !tbaa !217
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEmmPSE_PSC_.exit56
  %i.fa = load i8, ptr %i.as, align 2, !tbaa !71
  %i.fb = sub i8 %i.fa, %1
  store i8 %i.fb, ptr %i.as, align 2, !tbaa !71
  %i.fc = load i8, ptr %i.a, align 1, !tbaa !71
  %i.fd = add i8 %i.fc, %1
  store i8 %i.fd, ptr %i.a, align 1, !tbaa !71
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE5splitEiPSE_PSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !571 {
bb.a:
  switch i32 %1, label %bb.c [
    i32 0, label %bb.b
    i32 7, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.b = load i8, ptr %i.a, align 1, !tbaa !71
  %i.c = add i8 %i.b, -1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.e = load i8, ptr %i.d, align 1, !tbaa !71
  %i.f = lshr i8 %i.e, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.sink = phi i8 [ %i.c, %bb.b ], [ %i.f, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 10
  store i8 %.sink, ptr %i.g, align 1, !tbaa !71
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 6 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !71
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 2 uses
  %i.k = sub i8 %i.i, %.sink                      ; 3 uses
  store i8 %i.k, ptr %i.h, align 1, !tbaa !71
  %i.l = load i8, ptr %i.j, align 1, !tbaa !71    ; 2 uses
  %i.m = zext i8 %i.l to i64
  %i.n = zext i8 %i.k to i64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.n ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.m, 5
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i
  %.not13.i = icmp eq i8 %i.l, 0
  br i1 %.not13.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10transfer_nEmmmPSE_PSC_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i, %.lr.ph.preheader.i
  %.015.i = phi ptr [ %i.af, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i ], [ %i.r, %.lr.ph.preheader.i ] ; 5 uses
  %.01214.i = phi ptr [ %i.ae, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i ], [ %i.p, %.lr.ph.preheader.i ] ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.015.i, i64 16 ; 3 uses
  store ptr %i.s, ptr %.015.i, align 8, !tbaa !70
  %i.t = load ptr, ptr %.01214.i, align 8, !tbaa !68 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.01214.i, i64 16 ; 5 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i
  %i.w = getelementptr inbounds nuw i8, ptr %.01214.i, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !69   ; 2 uses
  %i.y = icmp ult i64 %i.x, 16
  tail call void @llvm.assume(i1 %i.y)
  %i.z = add nuw nsw i64 %i.x, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.s, ptr noundef nonnull align 8 dereferenceable(1) %i.u, i64 %i.z, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i
  store ptr %i.t, ptr %.015.i, align 8, !tbaa !68
  %i.aa = load i64, ptr %i.u, align 8, !tbaa !71
  store i64 %i.aa, ptr %i.s, align 8, !tbaa !71
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %.01214.i, i64 8 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !69
  %i.ad = getelementptr inbounds nuw i8, ptr %.015.i, i64 8
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !69
  store ptr %i.u, ptr %.01214.i, align 8, !tbaa !68
  store i64 0, ptr %i.ab, align 8, !tbaa !69
  store i8 0, ptr %i.u, align 8, !tbaa !71
  %i.ae = getelementptr inbounds nuw i8, ptr %.01214.i, i64 32 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.015.i, i64 32
  %.not.i = icmp eq ptr %i.ae, %i.q
  br i1 %.not.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10transfer_nEmmmPSE_PSC_.exit.loopexit, label %.lr.ph.i, !llvm.loop !1

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10transfer_nEmmmPSE_PSC_.exit.loopexit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i
  %.pre = load i8, ptr %i.h, align 1, !tbaa !71
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10transfer_nEmmmPSE_PSC_.exit

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10transfer_nEmmmPSE_PSC_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10transfer_nEmmmPSE_PSC_.exit.loopexit, %bb.d
  %i.ag = phi i8 [ %.pre, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10transfer_nEmmmPSE_PSC_.exit.loopexit ], [ %i.k, %bb.d ]
  %i.ah = add i8 %i.ag, -1                        ; 2 uses
  store i8 %i.ah, ptr %i.h, align 1, !tbaa !71
  %i.ai = load ptr, ptr %0, align 8, !tbaa !217   ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !71  ; 4 uses
  %i.al = zext i8 %i.ah to i64
  %i.am = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.al ; 5 uses
  %i.an = zext i8 %i.ak to i32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 10 ; 3 uses
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !71  ; 2 uses
  %i.aq = icmp ult i8 %i.ak, %i.ap
  %i.ar = zext i8 %i.ak to i64                    ; 4 uses
  br i1 %i.aq, label %.lr.ph.preheader.i.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE19transfer_n_backwardEmmmPSE_PSC_.exit.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10transfer_nEmmmPSE_PSC_.exit
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.at = getelementptr [32 x i8], ptr %i.as, i64 %i.ar ; 3 uses
  %narrow.i = sub nuw i8 %i.ap, %i.ak
  %i.au = zext i8 %narrow.i to i64                ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %i.au, 5
  %i.av = getelementptr i8, ptr %i.at, i64 32
  %i.aw = getelementptr [32 x i8], ptr %i.av, i64 %i.au
  %i.ax = getelementptr i8, ptr %i.at, i64 %.idx.i.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i.i, %.lr.ph.preheader.i.i
  %.017.i.i = phi ptr [ %i.ay, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i.i ], [ %i.aw, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01416.i.i = phi ptr [ %i.az, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i.i ], [ %i.ax, %.lr.ph.preheader.i.i ] ; 4 uses
  %i.ay = getelementptr inbounds i8, ptr %.017.i.i, i64 -32 ; 3 uses
  %i.az = getelementptr inbounds i8, ptr %.01416.i.i, i64 -32 ; 4 uses
  %i.ba = getelementptr inbounds i8, ptr %.017.i.i, i64 -16 ; 3 uses
  store ptr %i.ba, ptr %i.ay, align 8, !tbaa !70
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !68 ; 2 uses
  %i.bc = getelementptr inbounds i8, ptr %.01416.i.i, i64 -16 ; 5 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.be = getelementptr inbounds i8, ptr %.01416.i.i, i64 -24
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !69 ; 2 uses
  %i.bg = icmp ult i64 %i.bf, 16
  tail call void @llvm.assume(i1 %i.bg)
  %i.bh = add nuw nsw i64 %i.bf, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ba, ptr noundef nonnull align 8 dereferenceable(1) %i.bc, i64 %i.bh, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  store ptr %i.bb, ptr %i.ay, align 8, !tbaa !68
  %i.bi = load i64, ptr %i.bc, align 8, !tbaa !71
  store i64 %i.bi, ptr %i.ba, align 8, !tbaa !71
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i, %bb.f
  %i.bj = getelementptr inbounds i8, ptr %.01416.i.i, i64 -24 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !69
  %i.bl = getelementptr inbounds i8, ptr %.017.i.i, i64 -24
  store i64 %i.bk, ptr %i.bl, align 8, !tbaa !69
  store ptr %i.bc, ptr %i.az, align 8, !tbaa !68
  store i64 0, ptr %i.bj, align 8, !tbaa !69
  store i8 0, ptr %i.bc, align 8, !tbaa !71
  %.not.i.i = icmp eq ptr %i.az, %i.at
  br i1 %.not.i.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE19transfer_n_backwardEmmmPSE_PSC_.exit.i, label %.lr.ph.i.i, !llvm.loop !2

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE19transfer_n_backwardEmmmPSE_PSC_.exit.i: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i.i, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10transfer_nEmmmPSE_PSC_.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.bn = getelementptr inbounds nuw [32 x i8], ptr %i.bm, i64 %i.ar ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 3 uses
  store ptr %i.bo, ptr %i.bn, align 8, !tbaa !70
  %i.bp = load ptr, ptr %i.am, align 8, !tbaa !68 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 5 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.g:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE19transfer_n_backwardEmmmPSE_PSC_.exit.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !69 ; 2 uses
  %i.bu = icmp ult i64 %i.bt, 16
  tail call void @llvm.assume(i1 %i.bu)
  %i.bv = add nuw nsw i64 %i.bt, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bo, ptr noundef nonnull align 8 dereferenceable(1) %i.bq, i64 %i.bv, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10value_initIJPS9_EEEvhPSC_DpOT_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE19transfer_n_backwardEmmmPSE_PSC_.exit.i
  store ptr %i.bp, ptr %i.bn, align 8, !tbaa !68
  %i.bw = load i64, ptr %i.bq, align 8, !tbaa !71
  store i64 %i.bw, ptr %i.bo, align 8, !tbaa !71
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10value_initIJPS9_EEEvhPSC_DpOT_.exit.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10value_initIJPS9_EEEvhPSC_DpOT_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.g
  %i.bx = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !69
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store i64 %i.by, ptr %i.bz, align 8, !tbaa !69
  store ptr %i.bq, ptr %i.am, align 8, !tbaa !68
  store i64 0, ptr %i.bx, align 8, !tbaa !69
  store i8 0, ptr %i.bq, align 8, !tbaa !71
  %i.ca = load i8, ptr %i.ao, align 1, !tbaa !71
  %i.cb = add i8 %i.ca, 1                         ; 3 uses
  store i8 %i.cb, ptr %i.ao, align 1, !tbaa !71
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ai, i64 11
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !71
  %.not.i18.i = icmp eq i8 %i.cd, 0
  br i1 %.not.i18.i, label %bb.h, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE13emplace_valueIJPS9_EEEvhPSC_DpOT_.exit

bb.h:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10value_initIJPS9_EEEvhPSC_DpOT_.exit.i
  %i.ce = zext i8 %i.cb to i32
  %i.cf = add nuw nsw i32 %i.an, 1                ; 2 uses
  %i.cg = icmp samesign ult i32 %i.cf, %i.ce
  br i1 %i.cg, label %.lr.ph.i27, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE13emplace_valueIJPS9_EEEvhPSC_DpOT_.exit

.lr.ph.i27:                                       ; preds = %bb.h
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ai, i64 240 ; 10 uses
  %i.ci = zext i8 %i.cb to i64                    ; 4 uses
  %i.cj = zext nneg i32 %i.cf to i64
  %i.ck = xor i64 %i.ar, -1
  %i.cl = add nsw i64 %i.ck, %i.ci
  %i.cm = add nsw i64 %i.ci, -2
  %i.cn = sub nsw i64 %i.cm, %i.ar
  %xtraiter = and i64 %i.cl, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i27, %.prol.preheader
  %indvars.iv.prol = phi i64 [ %i.co, %.prol.preheader ], [ %i.ci, %.lr.ph.i27 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i27 ]
  %i.co = add nsw i64 %indvars.iv.prol, -1        ; 3 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.co
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !217 ; 2 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %indvars.iv.prol
  store ptr %i.cq, ptr %i.cr, align 8, !tbaa !217
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.ct = trunc nuw i64 %indvars.iv.prol to i8
  store i8 %i.ct, ptr %i.cs, align 1, !tbaa !71
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !568

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i27
  %indvars.iv.unr = phi i64 [ %i.ci, %.lr.ph.i27 ], [ %i.co, %.prol.preheader ]
  %i.cu = icmp ult i64 %i.cn, 3
  br i1 %i.cu, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE13emplace_valueIJPS9_EEEvhPSC_DpOT_.exit, label %.lr.ph.i27.new

.lr.ph.i27.new:                                   ; preds = %.prol.loopexit, %.lr.ph.i27.new
  %indvars.iv = phi i64 [ %i.dn, %.lr.ph.i27.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 6 uses
  %i.cv = add nsw i64 %indvars.iv, -1             ; 3 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.cv
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !217 ; 2 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %indvars.iv
  store ptr %i.cx, ptr %i.cy, align 8, !tbaa !217
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.da = trunc nuw i64 %indvars.iv to i8
  store i8 %i.da, ptr %i.cz, align 1, !tbaa !71
  %i.db = add nsw i64 %indvars.iv, -2             ; 3 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.db
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !217 ; 2 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.cv
  store ptr %i.dd, ptr %i.de, align 8, !tbaa !217
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.dg = trunc nuw i64 %i.cv to i8
  store i8 %i.dg, ptr %i.df, align 1, !tbaa !71
  %i.dh = add nsw i64 %indvars.iv, -3             ; 3 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.dh
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !217 ; 2 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.db
  store ptr %i.dj, ptr %i.dk, align 8, !tbaa !217
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dm = trunc nuw i64 %i.db to i8
  store i8 %i.dm, ptr %i.dl, align 1, !tbaa !71
  %i.dn = add nsw i64 %indvars.iv, -4             ; 3 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.dn
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !217 ; 2 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.dh
  store ptr %i.dp, ptr %i.dq, align 8, !tbaa !217
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.ds = trunc nuw i64 %i.dh to i8
  store i8 %i.ds, ptr %i.dr, align 1, !tbaa !71
  %.wide.3 = icmp ugt i64 %i.dn, %i.cj
  br i1 %.wide.3, label %.lr.ph.i27.new, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE13emplace_valueIJPS9_EEEvhPSC_DpOT_.exit, !llvm.loop !569

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE13emplace_valueIJPS9_EEEvhPSC_DpOT_.exit: ; preds = %.prol.loopexit, %.lr.ph.i27.new, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10value_initIJPS9_EEEvhPSC_DpOT_.exit.i, %bb.h
  %i.dt = load i8, ptr %i.h, align 2, !tbaa !71
  %i.du = zext i8 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.du ; 2 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !68 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 16 ; 2 uses
  %i.dy = icmp eq ptr %i.dw, %i.dx
  br i1 %i.dy, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE13value_destroyEhPSC_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i28: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE13emplace_valueIJPS9_EEEvhPSC_DpOT_.exit
  %i.dz = load i64, ptr %i.dx, align 8, !tbaa !71
  %i.ea = add i64 %i.dz, 1
  tail call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.ea) #27
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE13value_destroyEhPSC_.exit

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE13value_destroyEhPSC_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE13emplace_valueIJPS9_EEEvhPSC_DpOT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i28
  %i.eb = load ptr, ptr %0, align 8, !tbaa !217
  %i.ec = load i8, ptr %i.aj, align 8, !tbaa !71
  %i.ed = add i8 %i.ec, 1
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 240
  %i.ef = zext i8 %i.ed to i64
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.ef
  store ptr %2, ptr %i.eg, align 8, !tbaa !217
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !71
  %.not.i29 = icmp eq i8 %i.ei, 0
  br i1 %.not.i29, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE13value_destroyEhPSC_.exit
  %i.ej = load i8, ptr %i.h, align 2, !tbaa !71
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 240
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.j
  %.0.in31 = phi i8 [ %i.ej, %bb.i ], [ %.0, %bb.j ]
  %.02530 = phi i8 [ 0, %bb.i ], [ %i.es, %bb.j ] ; 3 uses
  %.0 = add i8 %.0.in31, 1                        ; 2 uses
  %i.em = zext i8 %.0 to i64
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.em
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !217 ; 3 uses
  %i.ep = zext i8 %.02530 to i64
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %i.ep
  store ptr %i.eo, ptr %i.eq, align 8, !tbaa !217
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  store i8 %.02530, ptr %i.er, align 1, !tbaa !71
  store ptr %2, ptr %i.eo, align 8, !tbaa !217
  %i.es = add i8 %.02530, 1                       ; 2 uses
  %i.et = load i8, ptr %i.j, align 1, !tbaa !71
  %.not = icmp ugt i8 %i.es, %i.et
  br i1 %.not, label %.loopexit, label %bb.j, !llvm.loop !570

.loopexit:                                        ; preds = %bb.j, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE13value_destroyEhPSC_.exit
  ret void
}

declare noundef i64 @_ZN4absl12lts_2025051218container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm8ELb1EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_6ctrl_tE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(72), i64 noundef, i8 noundef signext) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN4absl12lts_2025051218container_internal23TypeErasedApplyToSlotFnINS1_6HashEqIPKN6google8protobuf14FileDescriptorEvE4HashES8_EEmPKvPv(ptr noundef %0, ptr noundef %1) #0 comdat !guid !572 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !129
  %i.b = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.c = xor i64 %i.b, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.d = mul i64 %i.c, -2543921745674291987
  %i.e = tail call noundef i64 @llvm.bswap.i64(i64 %i.d)
  %i.f = xor i64 %i.e, %i.b
  %i.g = mul i64 %i.f, -2543921745674291987
  %i.h = tail call noundef i64 @llvm.bswap.i64(i64 %i.g)
  ret i64 %i.h
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal20TransferNRelocatableILm8EEEvPvS3_S3_m(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #23 comdat !guid !573 {
bb.a:
  %i.a = shl i64 %3, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %i.a, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE46transfer_unprobed_elements_to_next_capacity_fnERNS1_12CommonFieldsEPKNS1_6ctrl_tEPvSL_PFvSL_hmmE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #4 comdat align 2 personality ptr @__gxx_personality_v0 !guid !575 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !127    ; 4 uses
  %i.b = lshr i64 %i.a, 1                         ; 4 uses
  %i.c = and i64 %i.a, 30
  %i.d = icmp eq i64 %i.c, 30
  tail call void @llvm.assume(i1 %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !71   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !71
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !128
  %i.j = and i64 %i.i, 65535
  %i.k = and i64 %i.b, 9223372036854775792
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  ret void

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %.05162 = phi i64 [ 0, %bb.a ], [ %i.s, %._crit_edge ] ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %.05162
  %i.m = load <16 x i8>, ptr %i.l, align 1, !tbaa !71
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 %.05162 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.n, i8 -128, i64 16, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.p, i8 -128, i64 16, i1 false)
  %i.q = icmp sgt <16 x i8> %i.m, splat (i8 -1)
  %i.r = bitcast <16 x i1> %i.q to i16            ; 2 uses
  %.not60 = icmp eq i16 %i.r, 0
  br i1 %.not60, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.i, %bb.c
  %i.s = add nuw i64 %.05162, 16                  ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.b
  br i1 %i.t, label %bb.c, label %bb.b, !llvm.loop !574

.lr.ph:                                           ; preds = %bb.c, %bb.i
  %.sroa.054.061 = phi i16 [ %i.bd, %bb.i ], [ %i.r, %bb.c ] ; 3 uses
  %i.u = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.054.061, i1 true)
  %i.v = zext nneg i16 %i.u to i64
  %i.w = or disjoint i64 %.05162, %i.v            ; 4 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.w ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !129
  %i.z = ptrtoint ptr %i.y to i64                 ; 2 uses
  %i.aa = xor i64 %i.z, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.ab = mul i64 %i.aa, -2543921745674291987
  %i.ac = tail call noundef i64 @llvm.bswap.i64(i64 %i.ab)
  %i.ad = xor i64 %i.ac, %i.z
  %i.ae = mul i64 %i.ad, -2543921745674291987
  %i.af = tail call noundef i64 @llvm.bswap.i64(i64 %i.ae) ; 2 uses
  %i.ag = lshr i64 %i.af, 7
  %i.ah = xor i64 %i.ag, %i.j                     ; 5 uses
  %i.ai = trunc i64 %i.af to i8
  %i.aj = and i8 %i.ai, 127                       ; 2 uses
  %i.ak = sub i64 %i.w, %i.ah                     ; 2 uses
  %i.al = and i64 %i.k, %i.ak
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %bb.d, label %bb.e, !prof !130

bb.d:                                             ; preds = %.lr.ph
  %i.an = and i64 %i.ak, 15
  %i.ao = add nuw nsw i64 %i.an, %i.ah
  %i.ap = and i64 %i.ao, %i.a
  br label %_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit

bb.e:                                             ; preds = %.lr.ph
  %i.aq = and i64 %i.ah, %i.b
  %.not.i = icmp ult i64 %i.aq, %i.w
  br i1 %.not.i, label %bb.f, label %bb.h, !prof !130

bb.f:                                             ; preds = %bb.e
  %i.ar = and i64 %i.ah, %i.a                     ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ar
  %i.at = load <16 x i8>, ptr %i.as, align 1, !tbaa !71
  %i.au = icmp slt <16 x i8> %i.at, zeroinitializer
  %i.av = bitcast <16 x i1> %i.au to i16          ; 2 uses
  %.not26.i = icmp eq i16 %i.av, 0
  br i1 %.not26.i, label %bb.h, label %bb.g, !prof !131

bb.g:                                             ; preds = %bb.f
  %i.aw = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.av, i1 true)
  %i.ax = zext nneg i16 %i.aw to i64
  %i.ay = add nuw nsw i64 %i.ar, %i.ax
  br label %_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit

bb.h:                                             ; preds = %bb.f, %bb.e
  tail call void %4(ptr noundef %3, i8 noundef zeroext %i.aj, i64 noundef %i.w, i64 noundef %i.ah)
  br label %bb.i

_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit: ; preds = %bb.g, %bb.d
  %.2.i = phi i64 [ %i.ay, %bb.g ], [ %i.ap, %bb.d ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 %.2.i
  store i8 %i.aj, ptr %i.az, align 1, !tbaa !161
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.2.i
  %i.bb = load i64, ptr %i.x, align 8
  store i64 %i.bb, ptr %i.ba, align 1
  br label %bb.i

bb.i:                                             ; preds = %_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit, %bb.h
  %i.bc = add i16 %.sroa.054.061, -1
  %i.bd = and i16 %i.bc, %.sroa.054.061           ; 2 uses
  %.not = icmp eq i16 %i.bd, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #11

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #19 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { cold noreturn }
attributes #23 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #26 = { nounwind }
attributes #27 = { builtin nounwind }
attributes #28 = { noreturn nounwind }
attributes #29 = { noreturn }
attributes #30 = { builtin allocsize(0) }
attributes #31 = { cold }

!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !132}
!1 = distinct !{!1, !132}
!2 = distinct !{!2, !132}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{i64 -888483763591068145}
!11 = !{i64 5914491526557322370}
!12 = !{i64 3997337018001133809}
!13 = !{i64 635009421003057657}
!14 = !{i64 -3644242987037759348}
!15 = !{i64 -7538415550559662242}
!16 = !{i64 2835017467093283588}
!17 = !{i64 6894273857063743949}
!18 = !{i64 996559295285141724}
!19 = !{i64 -3974855436709277560}
!20 = !{i64 5257372066589375496}
!21 = !{i64 -3053716313958229492}
!22 = !{i64 5398503966396409436}
!23 = !{i64 -1947303142621036687}
!24 = !{i64 2498518815327139554}
!25 = !{i64 -1018480793611811177}
!26 = !{i64 3060774624379333998}
!27 = !{i64 -3848973346077618899}
!28 = !{i64 8396393736554296859}
!29 = !{i64 -4203525412540451496}
!30 = !{i64 4958730093340080690}
!31 = !{i64 7983036742877105729}
!32 = !{i64 -1233772652430650513}
!33 = !{i64 5662180354387852281}
!34 = !{i64 -5664675498808830119}
!35 = !{i64 1333677076189101157}
!36 = !{i64 -8705855855393269619}
!37 = !{i64 1513244094912355563}
!38 = !{i64 -2803414035809781328}
!39 = !{i64 -2366612282462314821}
!40 = !{i64 -6440042449911419261}
!41 = !{i64 5280714044197653708}
!42 = !{i64 6576444306540763769}
!43 = !{i64 -5667161733864607647}
!44 = !{i64 3061444679536815293}
!45 = !{i64 -1952115808740666900}
!46 = !{i64 8093506945400184622}
!47 = !{i64 1449859007794144975}
!48 = !{i64 7394358073861302516}
!49 = !{i64 -1079497619843933456}
!50 = !{i64 4207926864562968037}
!51 = !{i64 -5231283779175278542}
!52 = !{i64 4561340642096803374}
!53 = !{i64 8025912546750834479}
!54 = !{i64 3282872850502190796}
!55 = !{i64 5902131942567803148}
!56 = !{i64 -1843005145294528895}
!57 = !{i64 -2722802327193399779}
!58 = !{i64 7659495494694649485}
!59 = !{i64 8898304683300385097}
!60 = !{i64 7109571324467411215}
!61 = !{!"vtable pointer", !6, i64 0}
!62 = !{!61, !61, i64 0}
!63 = !{!"any pointer", !7, i64 0}
!64 = !{!"p1 omnipotent char", !63, i64 0}
!65 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !64, i64 0}
!66 = !{!"long", !7, i64 0}
!67 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !65, i64 0, !66, i64 8, !7, i64 16}
!68 = !{!67, !64, i64 0}
end_hunk_0
begin_hunk_1_@llvm.umin.i8
!361 = distinct !{!361, !360, !"_ZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS4_5Rank1E: argument 0"}
!362 = !{i64 -575836409009163412}
!363 = !{!361}
!364 = distinct !{!364, i1 true, !"_ZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS4_5Rank1E"}
!365 = distinct !{!365, !364, !"_ZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS4_5Rank1E: argument 0"}
!366 = !{i64 -6290405079579645515}
!367 = !{!365}
!368 = !{i64 5910372909409879725}
!369 = !{i64 5117002306115451628}
!370 = !{i64 -8788937658794668410}
!371 = distinct !{!371, i1 true, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE6insertEOSJ_IS9_SF_E"}
!372 = distinct !{!372, !371, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE6insertEOSJ_IS9_SF_E: argument 0"}
!373 = distinct !{!373, i1 true, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE7emplaceIJSJ_IS9_SF_EETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESJ_INSN_8iteratorEbEDpOSR_"}
!374 = distinct !{!374, !373, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE7emplaceIJSJ_IS9_SF_EETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESJ_INSN_8iteratorEbEDpOSR_: argument 0"}
!375 = distinct !{!375, i1 true, !"_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEEvE5applyINS1_12raw_hash_setISG_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE19EmplaceDecomposableEJSM_IS9_SF_EESG_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSU_DpOSV_"}
!376 = distinct !{!376, !375, !"_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEEvE5applyINS1_12raw_hash_setISG_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE19EmplaceDecomposableEJSM_IS9_SF_EESG_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSU_DpOSV_: argument 0"}
!377 = distinct !{!377, i1 true, !"_ZN4absl12lts_2025051218container_internal17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEE5applyINS1_12raw_hash_setISF_NS1_10StringHashENS1_8StringEqESaISt4pairIKS8_SE_EEE19EmplaceDecomposableEJSK_IS8_SE_EEEEDTclsr4absl18container_internalE13DecomposePairclsr3stdE7declvalIT_EEspclsr3stdE7declvalIT0_EEEEOSR_DpOSS_"}
!378 = distinct !{!378, !377, !"_ZN4absl12lts_2025051218container_internal17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEE5applyINS1_12raw_hash_setISF_NS1_10StringHashENS1_8StringEqESaISt4pairIKS8_SE_EEE19EmplaceDecomposableEJSK_IS8_SE_EEEEDTclsr4absl18container_internalE13DecomposePairclsr3stdE7declvalIT_EEspclsr3stdE7declvalIT0_EEEEOSR_DpOSS_: argument 0"}
!379 = distinct !{!379, i1 true, !"_ZN4absl12lts_2025051218container_internal13DecomposePairINS1_12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKSA_SG_EEE19EmplaceDecomposableEJSK_ISA_SG_EEEEDTclsr15memory_internalE17DecomposePairImplclsr3stdE7forwardIT_Efp_Ecl8PairArgsspclsr3stdE7forwardIT0_Efp0_EEEEOSR_DpOSS_"}
!380 = distinct !{!380, !379, !"_ZN4absl12lts_2025051218container_internal13DecomposePairINS1_12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKSA_SG_EEE19EmplaceDecomposableEJSK_ISA_SG_EEEEDTclsr15memory_internalE17DecomposePairImplclsr3stdE7forwardIT_Efp_Ecl8PairArgsspclsr3stdE7forwardIT0_Efp0_EEEEOSR_DpOSS_: argument 0"}
!381 = distinct !{!381, i1 true, !"_ZN4absl12lts_2025051218container_internal8PairArgsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEESt4pairISt5tupleIJOT_EESG_IJOT0_EEEOSF_ISH_SK_E"}
!382 = distinct !{!382, !381, !"_ZN4absl12lts_2025051218container_internal8PairArgsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEESt4pairISt5tupleIJOT_EESG_IJOT0_EEEOSF_ISH_SK_E: argument 0"}
!383 = distinct !{!383, i1 true, !"_ZN4absl12lts_2025051218container_internal8PairArgsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEESt4pairISt5tupleIJOT_EESG_IJOT0_EEESI_SL_"}
!384 = distinct !{!384, !383, !"_ZN4absl12lts_2025051218container_internal8PairArgsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEESt4pairISt5tupleIJOT_EESG_IJOT0_EEESI_SL_: argument 0"}
!385 = distinct !{!385, i1 true, !"_ZN4absl12lts_2025051218container_internal15memory_internal17DecomposePairImplINS1_12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKSB_SH_EEE19EmplaceDecomposableEOSB_St5tupleIJOSH_EEEEDTclclsr3stdE7declvalIT_EEclsr3stdE7declvalIRKT0_EEL_ZSt19piecewise_constructEclsr3stdE7declvalISS_IJSW_EEEEclsr3stdE7declvalIT1_EEEEOSV_SL_ISZ_S10_E"}
!386 = distinct !{!386, !385, !"_ZN4absl12lts_2025051218container_internal15memory_internal17DecomposePairImplINS1_12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKSB_SH_EEE19EmplaceDecomposableEOSB_St5tupleIJOSH_EEEEDTclclsr3stdE7declvalIT_EEclsr3stdE7declvalIRKT0_EEL_ZSt19piecewise_constructEclsr3stdE7declvalISS_IJSW_EEEEclsr3stdE7declvalIT1_EEEEOSV_SL_ISZ_S10_E: argument 0"}
!387 = distinct !{!387, i1 true, !"_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE19EmplaceDecomposableclIS9_JRKSt21piecewise_construct_tSt5tupleIJOS9_EEST_IJOSF_EEEEESJ_INSN_8iteratorEbERKT_DpOT0_"}
!388 = distinct !{!388, !387, !"_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE19EmplaceDecomposableclIS9_JRKSt21piecewise_construct_tSt5tupleIJOS9_EEST_IJOSF_EEEEESJ_INSN_8iteratorEbERKT_DpOT0_: argument 0"}
!389 = distinct !{!389, i1 true, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE6insertEOSI_IS9_SE_E"}
!390 = distinct !{!390, !389, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE6insertEOSI_IS9_SE_E: argument 0"}
!391 = distinct !{!391, i1 true, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE7emplaceIJSI_IS9_SE_EETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESI_INSM_8iteratorEbEDpOSQ_"}
!392 = distinct !{!392, !391, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE7emplaceIJSI_IS9_SE_EETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESI_INSM_8iteratorEbEDpOSQ_: argument 0"}
!393 = distinct !{!393, i1 true, !"_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEEvE5applyINS1_12raw_hash_setISF_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE19EmplaceDecomposableEJSL_IS9_SE_EESF_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOST_DpOSU_"}
!394 = distinct !{!394, !393, !"_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEEvE5applyINS1_12raw_hash_setISF_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE19EmplaceDecomposableEJSL_IS9_SE_EESF_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOST_DpOSU_: argument 0"}
!395 = distinct !{!395, i1 true, !"_ZN4absl12lts_2025051218container_internal17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEE5applyINS1_12raw_hash_setISE_NS1_10StringHashENS1_8StringEqESaISt4pairIKS8_SD_EEE19EmplaceDecomposableEJSJ_IS8_SD_EEEEDTclsr4absl18container_internalE13DecomposePairclsr3stdE7declvalIT_EEspclsr3stdE7declvalIT0_EEEEOSQ_DpOSR_"}
!396 = distinct !{!396, !395, !"_ZN4absl12lts_2025051218container_internal17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEE5applyINS1_12raw_hash_setISE_NS1_10StringHashENS1_8StringEqESaISt4pairIKS8_SD_EEE19EmplaceDecomposableEJSJ_IS8_SD_EEEEDTclsr4absl18container_internalE13DecomposePairclsr3stdE7declvalIT_EEspclsr3stdE7declvalIT0_EEEEOSQ_DpOSR_: argument 0"}
!397 = distinct !{!397, i1 true, !"_ZN4absl12lts_2025051218container_internal13DecomposePairINS1_12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS1_10StringHashENS1_8StringEqESaISt4pairIKSA_SF_EEE19EmplaceDecomposableEJSJ_ISA_SF_EEEEDTclsr15memory_internalE17DecomposePairImplclsr3stdE7forwardIT_Efp_Ecl8PairArgsspclsr3stdE7forwardIT0_Efp0_EEEEOSQ_DpOSR_"}
!398 = distinct !{!398, !397, !"_ZN4absl12lts_2025051218container_internal13DecomposePairINS1_12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS1_10StringHashENS1_8StringEqESaISt4pairIKSA_SF_EEE19EmplaceDecomposableEJSJ_ISA_SF_EEEEDTclsr15memory_internalE17DecomposePairImplclsr3stdE7forwardIT_Efp_Ecl8PairArgsspclsr3stdE7forwardIT0_Efp0_EEEEOSQ_DpOSR_: argument 0"}
!399 = distinct !{!399, i1 true, !"_ZN4absl12lts_2025051218container_internal15memory_internal17DecomposePairImplINS1_12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS1_10StringHashENS1_8StringEqESaISt4pairIKSB_SG_EEE19EmplaceDecomposableEOSB_St5tupleIJOSG_EEEEDTclclsr3stdE7declvalIT_EEclsr3stdE7declvalIRKT0_EEL_ZSt19piecewise_constructEclsr3stdE7declvalISR_IJSV_EEEEclsr3stdE7declvalIT1_EEEEOSU_SK_ISY_SZ_E"}
!400 = distinct !{!400, !399, !"_ZN4absl12lts_2025051218container_internal15memory_internal17DecomposePairImplINS1_12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS1_10StringHashENS1_8StringEqESaISt4pairIKSB_SG_EEE19EmplaceDecomposableEOSB_St5tupleIJOSG_EEEEDTclclsr3stdE7declvalIT_EEclsr3stdE7declvalIRKT0_EEL_ZSt19piecewise_constructEclsr3stdE7declvalISR_IJSV_EEEEclsr3stdE7declvalIT1_EEEEOSU_SK_ISY_SZ_E: argument 0"}
!401 = distinct !{!401, i1 true, !"_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE19EmplaceDecomposableclIS9_JRKSt21piecewise_construct_tSt5tupleIJOS9_EESS_IJOSE_EEEEESI_INSM_8iteratorEbERKT_DpOT0_"}
!402 = distinct !{!402, !401, !"_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE19EmplaceDecomposableclIS9_JRKSt21piecewise_construct_tSt5tupleIJOS9_EESS_IJOSE_EEEEESI_INSM_8iteratorEbERKT_DpOT0_: argument 0"}
!403 = distinct !{!403, i1 true, !"_ZN4absl12lts_2025051211MakeCleanupIJEZN6google8protobuf2io7Printer8WithDefsENS0_4SpanIKNS5_3SubEEEbEUlvE_EENS0_7CleanupINS0_16cleanup_internal3TagET0_EESE_"}
!404 = distinct !{!404, !403, !"_ZN4absl12lts_2025051211MakeCleanupIJEZN6google8protobuf2io7Printer8WithDefsENS0_4SpanIKNS5_3SubEEEbEUlvE_EENS0_7CleanupINS0_16cleanup_internal3TagET0_EESE_: argument 0"}
!405 = !{i64 899744124113669833}
!406 = !{!372}
!407 = !{!374}
!408 = !{!376}
!409 = !{!378}
!410 = !{!380}
!411 = !{!378, !376, !374, !372}
!412 = !{!384, !382}
!413 = !{!380, !378, !376, !374, !372}
!414 = !{!386}
!415 = !{!388}
!416 = !{!388, !386, !380, !378, !376, !374, !372}
!417 = !{!390}
!418 = !{!392}
!419 = !{!394}
!420 = !{!396}
!421 = !{!398}
!422 = !{!402, !400, !398, !396, !394, !392, !390}
!423 = !{!398, !396, !394, !392, !390}
!424 = !{!115, !115, i64 0}
!425 = !{!404}
!426 = !{i64 6857283603418863436}
!427 = !{i64 1720770925892328733}
!428 = !{i64 -2001239469904694200}
!429 = !{i64 5156570654994847665}
!430 = !{i64 1294377280590024252}
!431 = !{i64 -4622052063074748746}
!432 = !{i64 1245449893809024882}
!433 = distinct !{!433, !132}
!434 = !{i64 2886800780606485488}
!435 = distinct !{!435, !132}
!436 = !{i64 -5041851203611864399}
!437 = !{i64 5970144362898799517}
!438 = !{i64 -5675178465212589659}
!439 = distinct !{!439, i1 true, !"_ZN4absl12lts_2025051218container_internal5probeERKNS1_12CommonFieldsEm"}
!440 = distinct !{!440, !439, !"_ZN4absl12lts_2025051218container_internal5probeERKNS1_12CommonFieldsEm: argument 0"}
!441 = !{i64 2906998778389665091}
!442 = !{!440}
!443 = !{i64 1361486351001516867}
!444 = !{i64 2012230466594160577}
!445 = distinct !{!445, i1 true, !"_ZN4absl12lts_2025051218container_internal5probeERKNS1_12CommonFieldsEm"}
!446 = distinct !{!446, !445, !"_ZN4absl12lts_2025051218container_internal5probeERKNS1_12CommonFieldsEm: argument 0"}
!447 = !{i64 -1899448174913108262}
!448 = !{!446}
!449 = distinct !{!449, !132}
!450 = !{i64 1587286260945529729}
!451 = distinct !{!451, !132}
!452 = !{i64 -2200996571265057613}
!453 = !{i64 8391564464836018392}
!454 = !{i64 -809956099872819728}
!455 = !{!155, !154, i64 8}
!456 = distinct !{!456, i1 true, !"_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_"}
!457 = distinct !{!457, !456, !"_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_: argument 0"}
!458 = distinct !{!458, !456, !"_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_: argument 1"}
!459 = distinct !{!459, !132}
!460 = distinct !{!460, i1 true, !"_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_"}
!461 = distinct !{!461, !460, !"_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_: argument 0"}
!462 = distinct !{!462, !460, !"_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_: argument 1"}
!463 = !{i64 -8931514024535391117}
!464 = !{!119, !118, i64 0}
!465 = !{!457}
!466 = !{!458}
!467 = !{!457, !458}
!468 = !{!461}
!469 = !{!462}
!470 = !{!461, !462}
!471 = distinct !{!471, i1 true, !"_ZSt10__invoke_rISt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEERZNS4_8WithDefsEN4absl12lts_202505124SpanIKNS4_3SubEEEbEUlSt17basic_string_viewIcSt11char_traitsIcEEE_JSH_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESL_E4typeEOSM_DpOSN_"}
!472 = distinct !{!472, !471, !"_ZSt10__invoke_rISt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEERZNS4_8WithDefsEN4absl12lts_202505124SpanIKNS4_3SubEEEbEUlSt17basic_string_viewIcSt11char_traitsIcEEE_JSH_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESL_E4typeEOSM_DpOSN_: argument 0"}
!473 = distinct !{!473, i1 true, !"_ZSt13__invoke_implISt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEERZNS4_8WithDefsEN4absl12lts_202505124SpanIKNS4_3SubEEEbEUlSt17basic_string_viewIcSt11char_traitsIcEEE_JSH_EET_St14__invoke_otherOT0_DpOT1_"}
!474 = distinct !{!474, !473, !"_ZSt13__invoke_implISt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEERZNS4_8WithDefsEN4absl12lts_202505124SpanIKNS4_3SubEEEbEUlSt17basic_string_viewIcSt11char_traitsIcEEE_JSH_EET_St14__invoke_otherOT0_DpOT1_: argument 0"}
!475 = !{i64 6121767804579573256}
!476 = !{!474, !472}
!477 = !{i64 -1907138603828112803}
!478 = !{i64 6595901298404001401}
!479 = !{!"_ZTSSt22_Optional_payload_baseIN6google8protobuf2io7Printer9ValueImplILb0EEEE", !7, i64 0, !72, i64 80}
!480 = !{!479, !72, i64 80}
!481 = !{i64 0, i64 8, !92, i64 8, i64 8, !195}
!482 = distinct !{!482, i1 true, !"_ZN4absl12lts_2025051218container_internal5probeERKNS1_12CommonFieldsEm"}
!483 = distinct !{!483, !482, !"_ZN4absl12lts_2025051218container_internal5probeERKNS1_12CommonFieldsEm: argument 0"}
!484 = distinct !{!484, !132}
!485 = !{i64 -9163398103885063325}
!486 = !{!483}
!487 = !{i64 -2926300913808821521}
!488 = !{i64 2074462270387428033}
!489 = !{i64 -2663849048357093045}
!490 = !{i64 -1556834719307278185}
!491 = !{i64 -1026604092888656530}
!492 = !{i64 -6315175648540355285}
!493 = !{!"_ZTSZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEEC1ERKSN_RKSM_EUlPvPKvE_", !183, i64 0}
!494 = !{!493, !183, i64 0}
!495 = !{i64 -8474642542754486175}
!496 = !{i64 7623285070507185733}
!497 = !{i64 8337040169927285259}
!498 = !{i64 -2010796752276847}
!499 = distinct !{!499, i1 true, !"_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEESD_SaISD_EEvPT_PT0_RT1_"}
!500 = distinct !{!500, !499, !"_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEESD_SaISD_EEvPT_PT0_RT1_: argument 0"}
!501 = distinct !{!501, !499, !"_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEESD_SaISD_EEvPT_PT0_RT1_: argument 1"}
!502 = distinct !{!502, !132}
!503 = distinct !{!503, i1 true, !"_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEESD_SaISD_EEvPT_PT0_RT1_"}
!504 = distinct !{!504, !503, !"_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEESD_SaISD_EEvPT_PT0_RT1_: argument 0"}
!505 = distinct !{!505, !503, !"_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEESD_SaISD_EEvPT_PT0_RT1_: argument 1"}
!506 = !{i64 -8853093431535652308}
!507 = !{!125, !124, i64 0}
!508 = !{!500}
!509 = !{!501}
!510 = !{!500, !501}
!511 = !{!504}
!512 = !{!505}
!513 = !{!504, !505}
!514 = distinct !{!514, i1 true, !"_ZSt10__invoke_rISt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEERZNS4_8WithDefsEN4absl12lts_202505124SpanIKNS4_3SubEEEbEUlSt17basic_string_viewIcSt11char_traitsIcEEE0_JSG_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESK_E4typeEOSL_DpOSM_"}
!515 = distinct !{!515, !514, !"_ZSt10__invoke_rISt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEERZNS4_8WithDefsEN4absl12lts_202505124SpanIKNS4_3SubEEEbEUlSt17basic_string_viewIcSt11char_traitsIcEEE0_JSG_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESK_E4typeEOSL_DpOSM_: argument 0"}
!516 = distinct !{!516, i1 true, !"_ZSt13__invoke_implISt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEERZNS4_8WithDefsEN4absl12lts_202505124SpanIKNS4_3SubEEEbEUlSt17basic_string_viewIcSt11char_traitsIcEEE0_JSG_EET_St14__invoke_otherOT0_DpOT1_"}
!517 = distinct !{!517, !516, !"_ZSt13__invoke_implISt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEERZNS4_8WithDefsEN4absl12lts_202505124SpanIKNS4_3SubEEEbEUlSt17basic_string_viewIcSt11char_traitsIcEEE0_JSG_EET_St14__invoke_otherOT0_DpOT1_: argument 0"}
!518 = distinct !{!518, i1 true, !"_ZZN6google8protobuf2io7Printer8WithDefsEN4absl12lts_202505124SpanIKNS2_3SubEEEbENKUlSt17basic_string_viewIcSt11char_traitsIcEEE0_clESC_"}
!519 = distinct !{!519, !518, !"_ZZN6google8protobuf2io7Printer8WithDefsEN4absl12lts_202505124SpanIKNS2_3SubEEEbENKUlSt17basic_string_viewIcSt11char_traitsIcEEE0_clESC_: argument 0"}
!520 = !{i64 -328135951345423884}
!521 = !{!515}
!522 = !{!517}
!523 = !{!517, !515}
!524 = !{!519}
!525 = !{!519, !517, !515}
!526 = !{i64 -4810353461847914351}
!527 = distinct !{!527, i1 true, !"_ZN4absl12lts_2025051218container_internal5probeERKNS1_12CommonFieldsEm"}
!528 = distinct !{!528, !527, !"_ZN4absl12lts_2025051218container_internal5probeERKNS1_12CommonFieldsEm: argument 0"}
!529 = distinct !{!529, !132}
!530 = !{i64 4539170043735239145}
!531 = !{!528}
!532 = !{i64 8796003733730605637}
!533 = !{!"_ZTSZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEEC1ERKSM_RKSL_EUlPvPKvE_", !189, i64 0}
!534 = !{!533, !189, i64 0}
!535 = !{i64 6532490698221802004}
!536 = !{i64 -6850632543912876835}
!537 = !{i64 6819002868688357788}
!538 = !{i64 -6297424644735044570}
!539 = !{i64 -3922211911374399195}
!540 = distinct !{!540, i1 true, !"_ZN4absl12lts_2025051218container_internal5probeERKNS1_12CommonFieldsEm"}
!541 = distinct !{!541, !540, !"_ZN4absl12lts_2025051218container_internal5probeERKNS1_12CommonFieldsEm: argument 0"}
!542 = distinct !{!542, !132}
!543 = !{i64 1515082927021566708}
!544 = !{!541}
!545 = distinct !{!545, i1 true, !"_ZNK4absl12lts_2025051218container_internal5btreeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE15internal_locateIS9_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISD_EERKS9_PSK_EELb1EEERKT_"}
!546 = distinct !{!546, !545, !"_ZNK4absl12lts_2025051218container_internal5btreeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE15internal_locateIS9_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISD_EERKS9_PSK_EELb1EEERKT_: argument 0"}
!547 = !{i64 -6709650438872232598}
!548 = !{!546}
!549 = !{!"_ZTSSt4pairIN4absl12lts_2025051218container_internal14btree_iteratorINS2_10btree_nodeINS2_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessISB_ESaISB_ELi256ELb0EEEEERKSB_PSH_EEbE", !218, i64 0, !72, i64 16}
!550 = !{!549, !72, i64 16}
!551 = distinct !{!551, !132}
!552 = distinct !{!552, !221}
!553 = distinct !{!553, !132}
!554 = !{i64 -3478113033427736289}
!555 = !{i64 -2801363161942169649}
!556 = !{!215, !211, i64 0}
!557 = distinct !{!557, !132}
!558 = distinct !{!558, !132}
!559 = distinct !{!559, !132}
!560 = distinct !{!560, !132}
!561 = !{i64 2324386382233339218}
!562 = distinct !{!562, !132}
!563 = distinct !{!563, !132}
!564 = !{i64 -5792653414947581211}
!565 = distinct !{!565, !132}
!566 = distinct !{!566, !132}
!567 = !{i64 4136048477129134684}
!568 = distinct !{!568, !221}
!569 = distinct !{!569, !132}
!570 = distinct !{!570, !132}
!571 = !{i64 7487441976630112542}
!572 = !{i64 3865287087218986918}
!573 = !{i64 -4796906857823210088}
!574 = distinct !{!574, !132}
!575 = !{i64 -4885465400600749240}
end_hunk_1
