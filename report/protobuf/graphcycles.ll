inline.NumInlined: 333
inline.NumDeleted: 136
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4absl12lts_2025051224synchronization_internal11GraphCycles5GetIdEPv:bb.a
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !15
  %i.az = icmp eq i32 %.val, %i.ay
  br i1 %i.az, label %bb.g, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_14NodeC2Ev.exit
  %.pre.i = load ptr, ptr %i.ar, align 8, !tbaa !20
  br label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIPNS2_4NodeEE9push_backERKS5_.exit

bb.g:                                             ; preds = %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_14NodeC2Ev.exit
  %i.ba = add i32 %.val, 1
  %.not.i21 = icmp eq i32 %.val, -1
  br i1 %.not.i21, label %bb.h, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.i.i
  %i.bb = phi i32 [ %i.bc, %.lr.ph.i.i ], [ %.val, %bb.g ]
  %i.bc = shl i32 %i.bb, 1                        ; 4 uses
  %i.bd = icmp ult i32 %i.bc, %i.ba
  br i1 %i.bd, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !16

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  store i32 %i.bc, ptr %i.ax, align 4, !tbaa !15
  %i.be = zext i32 %i.bc to i64
  %i.bf = shl nuw nsw i64 %i.be, 3
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge.i.i, %bb.g
  %.lcssa.i.i = phi i64 [ %i.bf, %._crit_edge.i.i ], [ 34359738360, %bb.g ]
  %i.bg = load ptr, ptr @_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_15arenaE, align 8, !tbaa !18
  %i.bh = tail call noundef ptr @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc14AllocWithArenaEmPNS2_5ArenaE(i64 noundef %.lcssa.i.i, ptr noundef %i.bg) ; 4 uses
  %i.bi = load ptr, ptr %i.ar, align 8, !tbaa !20 ; 4 uses
  %i.bj = load i32, ptr %i.as, align 8, !tbaa !11 ; 2 uses
  switch i32 %i.bj, label %bb.i [
    i32 0, label %_ZSt6copy_nIPPN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_14NodeEjS6_ET1_T_T0_S7_.exit.i.i
    i32 1, label %bb.j
  ], !prof !21

bb.i:                                             ; preds = %bb.h
  %i.bk = zext i32 %i.bj to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.bk, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bh, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.bi, i64 %.idx.i.i.i.i, i1 false)
  %.pre.i.i = load ptr, ptr %i.ar, align 8, !tbaa !20
  br label %_ZSt6copy_nIPPN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_14NodeEjS6_ET1_T_T0_S7_.exit.i.i

bb.j:                                             ; preds = %bb.h
  %.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bi, align 8, !tbaa !22
  store ptr %.val.i.i.i.i.i.i.i.i.i, ptr %i.bh, align 8, !tbaa !22
  br label %_ZSt6copy_nIPPN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_14NodeEjS6_ET1_T_T0_S7_.exit.i.i

_ZSt6copy_nIPPN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_14NodeEjS6_ET1_T_T0_S7_.exit.i.i: ; preds = %bb.j, %bb.i, %bb.h
  %i.bl = phi ptr [ %i.bi, %bb.h ], [ %.pre.i.i, %bb.i ], [ %i.bi, %bb.j ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.not.i4.i.i = icmp eq ptr %i.bl, %i.bm
  br i1 %.not.i4.i.i, label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIPNS2_4NodeEE4GrowEj.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZSt6copy_nIPPN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_14NodeEjS6_ET1_T_T0_S7_.exit.i.i
  tail call void @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc4FreeEPv(ptr noundef %i.bl)
  br label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIPNS2_4NodeEE4GrowEj.exit.i

_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIPNS2_4NodeEE4GrowEj.exit.i: ; preds = %bb.k, %_ZSt6copy_nIPPN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_14NodeEjS6_ET1_T_T0_S7_.exit.i.i
  store ptr %i.bh, ptr %i.ar, align 8, !tbaa !20
  %.pre1.i = load i32, ptr %i.as, align 8, !tbaa !11
  %.pre = load ptr, ptr %0, align 8, !tbaa !7
  %.pre31 = load i32, ptr %i.y, align 8, !tbaa !43
  br label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIPNS2_4NodeEE9push_backERKS5_.exit

_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIPNS2_4NodeEE9push_backERKS5_.exit: ; preds = %._crit_edge.i, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIPNS2_4NodeEE4GrowEj.exit.i
  %i.bn = phi i32 [ %.val, %._crit_edge.i ], [ %.pre31, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIPNS2_4NodeEE4GrowEj.exit.i ] ; 2 uses
  %i.bo = phi ptr [ %i.ar, %._crit_edge.i ], [ %.pre, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIPNS2_4NodeEE4GrowEj.exit.i ] ; 2 uses
  %i.bp = phi i32 [ %.val, %._crit_edge.i ], [ %.pre1.i, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIPNS2_4NodeEE4GrowEj.exit.i ] ; 2 uses
  %i.bq = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.bh, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIPNS2_4NodeEE4GrowEj.exit.i ]
  %i.br = zext i32 %i.bp to i64
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.br
  store ptr %i.y, ptr %i.bs, align 8, !tbaa !22
  %i.bt = add i32 %i.bp, 1
  store i32 %i.bt, ptr %i.as, align 8, !tbaa !11
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 128
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 136
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.e ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !3
  %i.by = load ptr, ptr %i.bu, align 8, !tbaa !29
  %.val.i22 = load ptr, ptr %i.by, align 8, !tbaa !20
  %i.bz = zext i32 %i.bn to i64
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %.val.i22, i64 %i.bz
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !22
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store i32 %i.bx, ptr %i.cc, align 8, !tbaa !52
  store i32 %i.bn, ptr %i.bw, align 4, !tbaa !3
  %i.cd = load i64, ptr %i.y, align 8
  br label %bb.m

bb.l:                                             ; preds = %.loopexit
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %.val19 = load ptr, ptr %i.ce, align 8, !tbaa !24
  %i.cf = add i32 %.val17, -1                     ; 2 uses
  %i.cg = zext i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %.val19, i64 %i.cg
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !3  ; 2 uses
  store i32 %i.cf, ptr %i.v, align 8, !tbaa !27
  %.val15 = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.cj = zext i32 %i.ci to i64                   ; 3 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %.val15, i64 %i.cj
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !22 ; 4 uses
  %i.cm = xor i64 %i.c, -1136490970041655429
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  store i64 %i.cm, ptr %i.cn, align 8, !tbaa !36
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 140
  store i32 0, ptr %i.co, align 4, !tbaa !50
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 136
  store i32 0, ptr %i.cp, align 8, !tbaa !51
  %i.cq = load i32, ptr %i.f, align 4, !tbaa !3
  %i.cr = load ptr, ptr %i.b, align 8, !tbaa !29
  %.val.i23 = load ptr, ptr %i.cr, align 8, !tbaa !20
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %.val.i23, i64 %i.cj
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !22
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store i32 %i.cq, ptr %i.cu, align 8, !tbaa !52
  store i32 %i.ci, ptr %i.f, align 4, !tbaa !3
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !49
  %i.cx = zext i32 %i.cw to i64
  %i.cy = shl nuw i64 %i.cx, 32
  %i.cz = or disjoint i64 %i.cy, %i.cj
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIPNS2_4NodeEE9push_backERKS5_.exit, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_110PointerMap4FindEPv.exit
  %.sroa.0.0 = phi i64 [ %i.u, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_110PointerMap4FindEPv.exit ], [ %i.cd, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIPNS2_4NodeEE9push_backERKS5_.exit ], [ %i.cz, %bb.l ]
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2025051224synchronization_internal11GraphCycles10RemoveNodeEPv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !7      ; 3 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.d = urem i64 %i.b, 262139
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.d ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !3    ; 3 uses
  %.not27.i = icmp eq i32 %i.f, -1
  br i1 %.not27.i, label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_110PointerMap6RemoveEPv.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !29
  %.val.i = load ptr, ptr %i.h, align 8, !tbaa !20 ; 2 uses
  %i.i = zext i32 %i.f to i64                     ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !22   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !36
  %i.n = xor i64 %i.m, %i.b
  %.not21.i91 = icmp eq i64 %i.n, -1136490970041655429
  br i1 %.not21.i91, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.o = zext i32 %i.w to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !22   ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !36
  %i.t = xor i64 %i.s, %i.b
  %.not21.i = icmp eq i64 %i.t, -1136490970041655429
  br i1 %.not21.i, label %._crit_edge.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.i, %bb.b
  %i.u = phi ptr [ %i.q, %bb.b ], [ %i.k, %.lr.ph.i ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i32, ptr %i.v, align 4, !tbaa !3    ; 3 uses
  %.not.i = icmp eq i32 %i.w, -1
  br i1 %.not.i, label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_110PointerMap6RemoveEPv.exit.thread, label %bb.b

._crit_edge.loopexit:                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph.i
  %.pre-phi = phi i64 [ %i.i, %.lr.ph.i ], [ %i.o, %._crit_edge.loopexit ]
  %.lcssa89 = phi i32 [ %i.f, %.lr.ph.i ], [ %i.w, %._crit_edge.loopexit ] ; 8 uses
  %.01628.i.lcssa = phi ptr [ %i.e, %.lr.ph.i ], [ %i.x, %._crit_edge.loopexit ]
  %.lcssa86 = phi ptr [ %i.k, %.lr.ph.i ], [ %i.q, %._crit_edge.loopexit ]
  %i.y = getelementptr inbounds nuw i8, ptr %.lcssa86, i64 8 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !52
  store i32 %i.z, ptr %.01628.i.lcssa, align 4, !tbaa !3
  store i32 -1, ptr %i.y, align 8, !tbaa !52
  %.val10 = load ptr, ptr %i.a, align 8, !tbaa !20 ; 3 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.val10, i64 %.pre-phi
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !22 ; 12 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 80 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 120 ; 4 uses
  %i.ae = mul i32 %.lcssa89, 41                   ; 2 uses
  %.val.i16172 = load i32, ptr %i.ad, align 8, !tbaa !27 ; 2 uses
  %exitcond.not166174 = icmp eq i32 %.val.i16172, 0
  br i1 %exitcond.not166174, label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS4_.exit.preheader, label %.lr.ph169.lr.ph

.lr.ph169.lr.ph:                                  ; preds = %._crit_edge
  %wide.trip.count173 = zext i32 %.val.i16172 to i64
  br label %.lr.ph169

.lr.ph169:                                        ; preds = %.lr.ph169.lr.ph, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit
  %wide.trip.count176 = phi i64 [ %wide.trip.count173, %.lr.ph169.lr.ph ], [ %wide.trip.count, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit ]
  %i.af = phi i64 [ 0, %.lr.ph169.lr.ph ], [ %2, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit ]
  %.val10.i175 = load ptr, ptr %i.ac, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count176
  br i1 %exitcond.not, label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS4_.exit.preheader, label %bb.d

_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS4_.exit.preheader: ; preds = %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit, %bb.c, %._crit_edge
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 24 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 64 ; 4 uses
  %.val10.i19181 = load ptr, ptr %i.ag, align 8   ; 2 uses
  %.val.i21182 = load i32, ptr %i.ah, align 8, !tbaa !27 ; 2 uses
  %exitcond117.not177184 = icmp eq i32 %.val.i21182, 0
  br i1 %exitcond117.not177184, label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS4_.exit23, label %.lr.ph179.lr.ph

.lr.ph179.lr.ph:                                  ; preds = %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS4_.exit.preheader
  %wide.trip.count116183 = zext i32 %.val.i21182 to i64
  br label %.lr.ph179

bb.d:                                             ; preds = %.lr.ph169, %bb.c
  %indvars.iv167 = phi i64 [ %i.af, %.lr.ph169 ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.val10.i175, i64 %indvars.iv167
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !3  ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv167, 1 ; 4 uses
  %i.ak = icmp sgt i32 %i.aj, -1
  br i1 %i.ak, label %bb.e, label %bb.c

bb.e:                                             ; preds = %bb.d
  %i.al = trunc nuw i64 %indvars.iv.next to i32
  %i.am = zext nneg i32 %i.aj to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %.val10, i64 %i.am
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !22 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %.val13 = load ptr, ptr %i.ap, align 8          ; 4 uses
  %i.aq = getelementptr i8, ptr %i.ao, i64 64
  %.val14 = load i32, ptr %i.aq, align 8, !tbaa !27
  %i.ar = add i32 %.val14, -1                     ; 2 uses
  %.02410.i.i = and i32 %i.ar, %i.ae              ; 2 uses
  %i.as = zext i32 %.02410.i.i to i64             ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %.val13, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !3  ; 2 uses
  %i.av = icmp eq i32 %.lcssa89, %i.au
  br i1 %i.av, label %_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.thread.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %i.aw = phi i32 [ %i.bd, %bb.f ], [ %i.au, %bb.e ] ; 2 uses
  %.02413.i.i = phi i32 [ %.024.i.i, %bb.f ], [ %.02410.i.i, %bb.e ] ; 3 uses
  %.01912.i.i = phi i8 [ %spec.select27.i.i, %bb.f ], [ 0, %bb.e ] ; 3 uses
  %.02111.i.i = phi i32 [ %spec.select.i.i, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %i.ax = icmp eq i32 %i.aw, -1
  br i1 %i.ax, label %_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ay = icmp ne i32 %i.aw, -2
  %i.az = trunc nuw i8 %.01912.i.i to i1
  %or.cond.i.i = select i1 %i.ay, i1 true, i1 %i.az ; 2 uses
  %spec.select.i.i = select i1 %or.cond.i.i, i32 %.02111.i.i, i32 %.02413.i.i
  %spec.select27.i.i = select i1 %or.cond.i.i, i8 %.01912.i.i, i8 1
  %i.ba = add i32 %.02413.i.i, 1
  %.024.i.i = and i32 %i.ba, %i.ar                ; 2 uses
  %i.bb = zext i32 %.024.i.i to i64               ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %.val13, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !3  ; 2 uses
  %i.be = icmp eq i32 %.lcssa89, %i.bd
  br i1 %i.be, label %_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.thread.i, label %.lr.ph.i.i, !llvm.loop !46

_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.i: ; preds = %.lr.ph.i.i
  %i.bf = trunc nuw i8 %.01912.i.i to i1
  %i.bg = select i1 %i.bf, i32 %.02111.i.i, i32 %.02413.i.i
  %.pre.i18 = zext i32 %i.bg to i64               ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw [4 x i8], ptr %.val13, i64 %.pre.i18
  %.pre7.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !3
  %i.bh = icmp eq i32 %.pre7.i, %.lcssa89
  br i1 %i.bh, label %_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.thread.i, label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit

_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.thread.i: ; preds = %bb.f, %_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.i, %bb.e
  %.pre-phi12.i = phi i64 [ %.pre.i18, %_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.i ], [ %i.as, %bb.e ], [ %i.bb, %bb.f ]
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %.val13, i64 %.pre-phi12.i
  store i32 -2, ptr %i.bi, align 4, !tbaa !3
  br label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit

_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit: ; preds = %_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.i, %_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.thread.i
  %.val.i16 = load i32, ptr %i.ad, align 8, !tbaa !27
  %2 = and i64 %indvars.iv.next, 4294967295       ; 2 uses
  %umax = tail call i32 @llvm.umax.i32(i32 %i.al, i32 %.val.i16)
  %wide.trip.count = zext i32 %umax to i64        ; 2 uses
  %exitcond.not166 = icmp eq i64 %2, %wide.trip.count
  br i1 %exitcond.not166, label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS4_.exit.preheader, label %.lr.ph169, !llvm.loop !53

.lr.ph179:                                        ; preds = %.lr.ph179.lr.ph, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit45
  %wide.trip.count116186 = phi i64 [ %wide.trip.count116183, %.lr.ph179.lr.ph ], [ %wide.trip.count116, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit45 ]
  %i.bj = phi i64 [ 0, %.lr.ph179.lr.ph ], [ %3, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit45 ]
  %.val10.i19185 = phi ptr [ %.val10.i19181, %.lr.ph179.lr.ph ], [ %.val10.i19, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit45 ] ; 2 uses
  br label %bb.h

bb.g:                                             ; preds = %bb.h
  %exitcond117.not = icmp eq i64 %indvars.iv.next113, %wide.trip.count116186
  br i1 %exitcond117.not, label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS4_.exit23, label %bb.h

bb.h:                                             ; preds = %.lr.ph179, %bb.g
  %indvars.iv112178 = phi i64 [ %i.bj, %.lr.ph179 ], [ %indvars.iv.next113, %bb.g ] ; 2 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %.val10.i19185, i64 %indvars.iv112178
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !3  ; 2 uses
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112178, 1 ; 4 uses
  %i.bm = icmp sgt i32 %i.bl, -1
  br i1 %i.bm, label %bb.m, label %bb.g

_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS4_.exit23: ; preds = %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit45, %bb.g, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS4_.exit.preheader
  %.val10.i19.lcssa = phi ptr [ %.val10.i19185, %bb.g ], [ %.val10.i19181, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS4_.exit.preheader ], [ %.val10.i19, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit45 ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ab, i64 32 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %.val10.i19.lcssa, %i.bn
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i, label %bb.i

bb.i:                                             ; preds = %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS4_.exit23
  tail call void @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc4FreeEPv(ptr noundef %.val10.i19.lcssa)
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.i, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS4_.exit23
  store ptr %i.bn, ptr %i.ag, align 8, !tbaa !24
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ab, i64 68
  store i32 8, ptr %i.bo, align 4, !tbaa !28
  store i32 8, ptr %i.ah, align 8, !tbaa !27
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.j ] ; 2 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv.i.i.i
  store i32 -1, ptr %i.bp, align 4, !tbaa !3
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %.val.i.i.i = load i32, ptr %i.ah, align 8, !tbaa !27
  %i.bq = zext i32 %.val.i.i.i to i64
  %i.br = icmp samesign ult i64 %indvars.iv.next.i.i.i, %i.bq
  br i1 %i.br, label %bb.j, label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet5clearEv.exit, !llvm.loop !33

_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet5clearEv.exit: ; preds = %bb.j
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ab, i64 72
  store i32 0, ptr %i.bs, align 8, !tbaa !34
  %i.bt = load ptr, ptr %i.ac, align 8, !tbaa !24 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ab, i64 88 ; 3 uses
  %.not.i.i.i.i24 = icmp eq ptr %i.bt, %i.bu
  br i1 %.not.i.i.i.i24, label %.lr.ph.i.i.i25, label %bb.k

bb.k:                                             ; preds = %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet5clearEv.exit
  tail call void @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc4FreeEPv(ptr noundef %i.bt)
  br label %.lr.ph.i.i.i25

.lr.ph.i.i.i25:                                   ; preds = %bb.k, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet5clearEv.exit
  store ptr %i.bu, ptr %i.ac, align 8, !tbaa !24
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ab, i64 124
  store i32 8, ptr %i.bv, align 4, !tbaa !28
  store i32 8, ptr %i.ad, align 8, !tbaa !27
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.i.i.i25
  %indvars.iv.i.i.i26 = phi i64 [ 0, %.lr.ph.i.i.i25 ], [ %indvars.iv.next.i.i.i27, %bb.l ] ; 2 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv.i.i.i26
  store i32 -1, ptr %i.bw, align 4, !tbaa !3
  %indvars.iv.next.i.i.i27 = add nuw nsw i64 %indvars.iv.i.i.i26, 1 ; 2 uses
  %.val.i.i.i28 = load i32, ptr %i.ad, align 8, !tbaa !27
  %i.bx = zext i32 %.val.i.i.i28 to i64
  %i.by = icmp samesign ult i64 %indvars.iv.next.i.i.i27, %i.bx
  br i1 %i.by, label %bb.l, label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet5clearEv.exit29, !llvm.loop !33

_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet5clearEv.exit29: ; preds = %bb.l
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ab, i64 128
  store i32 0, ptr %i.bz, align 8, !tbaa !34
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 -1136490970041655429, ptr %i.ca, align 8, !tbaa !36
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ab, i64 4 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !49 ; 2 uses
  %i.cd = icmp eq i32 %i.cc, -1
  br i1 %i.cd, label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_110PointerMap6RemoveEPv.exit.thread, label %bb.o

bb.m:                                             ; preds = %bb.h
  %i.ce = trunc nuw i64 %indvars.iv.next113 to i32
  %i.cf = zext nneg i32 %i.bl to i64
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %.val10, i64 %i.cf
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !22 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 80
  %.val11 = load ptr, ptr %i.ci, align 8          ; 4 uses
  %i.cj = getelementptr i8, ptr %i.ch, i64 120
  %.val12 = load i32, ptr %i.cj, align 8, !tbaa !27
  %i.ck = add i32 %.val12, -1                     ; 2 uses
  %.02410.i.i30 = and i32 %i.ck, %i.ae            ; 2 uses
  %i.cl = zext i32 %.02410.i.i30 to i64           ; 2 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %.val11, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !3  ; 2 uses
  %i.co = icmp eq i32 %.lcssa89, %i.cn
  br i1 %i.co, label %_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.thread.i39, label %.lr.ph.i.i31

.lr.ph.i.i31:                                     ; preds = %bb.m, %bb.n
  %i.cp = phi i32 [ %i.cw, %bb.n ], [ %i.cn, %bb.m ] ; 2 uses
  %.02413.i.i32 = phi i32 [ %.024.i.i38, %bb.n ], [ %.02410.i.i30, %bb.m ] ; 3 uses
  %.01912.i.i33 = phi i8 [ %spec.select27.i.i37, %bb.n ], [ 0, %bb.m ] ; 3 uses
  %.02111.i.i34 = phi i32 [ %spec.select.i.i36, %bb.n ], [ 0, %bb.m ] ; 2 uses
  %i.cq = icmp eq i32 %i.cp, -1
  br i1 %i.cq, label %_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.i41, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i31
  %i.cr = icmp ne i32 %i.cp, -2
  %i.cs = trunc nuw i8 %.01912.i.i33 to i1
  %or.cond.i.i35 = select i1 %i.cr, i1 true, i1 %i.cs ; 2 uses
  %spec.select.i.i36 = select i1 %or.cond.i.i35, i32 %.02111.i.i34, i32 %.02413.i.i32
  %spec.select27.i.i37 = select i1 %or.cond.i.i35, i8 %.01912.i.i33, i8 1
  %i.ct = add i32 %.02413.i.i32, 1
  %.024.i.i38 = and i32 %i.ct, %i.ck              ; 2 uses
  %i.cu = zext i32 %.024.i.i38 to i64             ; 2 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %.val11, i64 %i.cu
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !3  ; 2 uses
  %i.cx = icmp eq i32 %.lcssa89, %i.cw
  br i1 %i.cx, label %_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.thread.i39, label %.lr.ph.i.i31, !llvm.loop !46

_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.i41: ; preds = %.lr.ph.i.i31
  %i.cy = trunc nuw i8 %.01912.i.i33 to i1
  %i.cz = select i1 %i.cy, i32 %.02111.i.i34, i32 %.02413.i.i32
  %.pre.i42 = zext i32 %i.cz to i64               ; 2 uses
  %.phi.trans.insert.i43 = getelementptr inbounds nuw [4 x i8], ptr %.val11, i64 %.pre.i42
  %.pre7.i44 = load i32, ptr %.phi.trans.insert.i43, align 4, !tbaa !3
  %i.da = icmp eq i32 %.pre7.i44, %.lcssa89
  br i1 %i.da, label %_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.thread.i39, label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit45

_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.thread.i39: ; preds = %bb.n, %_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.i41, %bb.m
  %.pre-phi12.i40 = phi i64 [ %.pre.i42, %_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.i41 ], [ %i.cl, %bb.m ], [ %i.cu, %bb.n ]
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %.val11, i64 %.pre-phi12.i40
  store i32 -2, ptr %i.db, align 4, !tbaa !3
  br label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit45

_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit45: ; preds = %_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.i41, %_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.thread.i39
  %.val10.i19 = load ptr, ptr %i.ag, align 8      ; 2 uses
  %.val.i21 = load i32, ptr %i.ah, align 8, !tbaa !27
  %3 = and i64 %indvars.iv.next113, 4294967295    ; 2 uses
  %umax115 = tail call i32 @llvm.umax.i32(i32 %i.ce, i32 %.val.i21)
  %wide.trip.count116 = zext i32 %umax115 to i64  ; 2 uses
  %exitcond117.not177 = icmp eq i64 %3, %wide.trip.count116
  br i1 %exitcond117.not177, label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS4_.exit23, label %.lr.ph179, !llvm.loop !54

bb.o:                                             ; preds = %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet5clearEv.exit29
  %i.dc = add nuw i32 %i.cc, 1
  store i32 %i.dc, ptr %i.cb, align 4, !tbaa !49
  %i.dd = load ptr, ptr %0, align 8, !tbaa !7     ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 80 ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 120 ; 5 uses
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !27 ; 5 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dd, i64 124 ; 2 uses
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !28
  %i.dj = icmp eq i32 %i.dg, %i.di
  br i1 %i.dj, label %bb.p, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.o
  %.pre.i46 = load ptr, ptr %i.de, align 8, !tbaa !24
  br label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit

bb.p:                                             ; preds = %bb.o
  %i.dk = add i32 %i.dg, 1
  %.not.i47 = icmp eq i32 %i.dg, -1
  br i1 %.not.i47, label %bb.q, label %.lr.ph.i.i48

.lr.ph.i.i48:                                     ; preds = %bb.p, %.lr.ph.i.i48
  %i.dl = phi i32 [ %i.dm, %.lr.ph.i.i48 ], [ %i.dg, %bb.p ]
  %i.dm = shl i32 %i.dl, 1                        ; 4 uses
  %i.dn = icmp ult i32 %i.dm, %i.dk
  br i1 %i.dn, label %.lr.ph.i.i48, label %._crit_edge.i.i, !llvm.loop !47

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i48
  store i32 %i.dm, ptr %i.dh, align 4, !tbaa !28
  %i.do = zext i32 %i.dm to i64
  %i.dp = shl nuw nsw i64 %i.do, 2
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge.i.i, %bb.p
  %.lcssa.i.i = phi i64 [ %i.dp, %._crit_edge.i.i ], [ 17179869180, %bb.p ]
  %i.dq = load ptr, ptr @_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_15arenaE, align 8, !tbaa !18
  %i.dr = tail call noundef ptr @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc14AllocWithArenaEmPNS2_5ArenaE(i64 noundef %.lcssa.i.i, ptr noundef %i.dq) ; 4 uses
  %i.ds = load ptr, ptr %i.de, align 8, !tbaa !24 ; 4 uses
  %i.dt = load i32, ptr %i.df, align 8, !tbaa !27 ; 2 uses
  switch i32 %i.dt, label %bb.r [
    i32 0, label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i
    i32 1, label %bb.s
  ], !prof !21

bb.r:                                             ; preds = %bb.q
  %i.du = zext i32 %i.dt to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.du, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.dr, ptr align 4 %i.ds, i64 %.idx.i.i.i.i, i1 false)
  %.pre.i.i = load ptr, ptr %i.de, align 8, !tbaa !24
  br label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i

bb.s:                                             ; preds = %bb.q
  %i.dv = load i32, ptr %i.ds, align 4, !tbaa !3
  store i32 %i.dv, ptr %i.dr, align 4, !tbaa !3
  br label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i

_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i:          ; preds = %bb.s, %bb.r, %bb.q
  %i.dw = phi ptr [ %i.ds, %bb.q ], [ %.pre.i.i, %bb.r ], [ %i.ds, %bb.s ] ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dd, i64 88
  %.not.i4.i.i = icmp eq ptr %i.dw, %i.dx
  br i1 %.not.i4.i.i, label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i, label %bb.t

bb.t:                                             ; preds = %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i
  tail call void @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc4FreeEPv(ptr noundef %i.dw)
  br label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i

_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i: ; preds = %bb.t, %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i
  store ptr %i.dr, ptr %i.de, align 8, !tbaa !24
  %.pre1.i = load i32, ptr %i.df, align 8, !tbaa !27
  br label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit

_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit: ; preds = %._crit_edge.i, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i
  %i.dy = phi i32 [ %i.dg, %._crit_edge.i ], [ %.pre1.i, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i ]
  %i.dz = phi ptr [ %.pre.i46, %._crit_edge.i ], [ %i.dr, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i ]
  %i.ea = zext i32 %i.dy to i64
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.ea
  store i32 %.lcssa89, ptr %i.eb, align 4, !tbaa !3
  %i.ec = load i32, ptr %i.df, align 8, !tbaa !27
  %i.ed = add i32 %i.ec, 1
  store i32 %i.ed, ptr %i.df, align 8, !tbaa !27
  br label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_110PointerMap6RemoveEPv.exit.thread

_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_110PointerMap6RemoveEPv.exit.thread: ; preds = %.lr.ph, %bb.a, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet5clearEv.exit29
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @_ZN4absl12lts_2025051224synchronization_internal11GraphCycles3PtrENS1_7GraphIdE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i64 %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !7
  %.val = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.b = and i64 %1, 4294967295
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !22   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !49
  %i.g = lshr i64 %1, 32
  %i.h = trunc nuw i64 %i.g to i32
  %i.i = icmp ne i32 %i.f, %i.h
  %i.j = icmp eq ptr %i.d, null
  %i.k = or i1 %i.j, %i.i
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !36
  %i.n = xor i64 %i.m, -1136490970041655429
  %i.o = inttoptr i64 %i.n to ptr
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.p = phi ptr [ %i.o, %bb.b ], [ null, %bb.a ]
  ret ptr %i.p
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN4absl12lts_2025051224synchronization_internal11GraphCycles7HasNodeENS1_7GraphIdE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i64 %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !7
  %.val = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.b = and i64 %1, 4294967295
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !22   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !49
  %i.g = lshr i64 %1, 32
  %i.h = trunc nuw i64 %i.g to i32
  %i.i = icmp eq i32 %i.f, %i.h
  %i.j = icmp ne ptr %i.d, null
  %i.k = and i1 %i.j, %i.i
  ret i1 %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZNK4absl12lts_2025051224synchronization_internal11GraphCycles7HasEdgeENS1_7GraphIdES3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i64 %1, i64 %2) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !7
  %.val9 = load ptr, ptr %i.a, align 8, !tbaa !20 ; 2 uses
  %i.b = and i64 %1, 4294967295
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %.val9, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !22   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !49
  %i.g = lshr i64 %1, 32
  %i.h = trunc nuw i64 %i.g to i32
  %i.i = icmp ne i32 %i.f, %i.h
  %.not12 = icmp eq ptr %i.d, null
  %.not = or i1 %.not12, %i.i
  br i1 %.not, label %_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet8containsEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = and i64 %2, 4294967295
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %.val9, i64 %i.j
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !22   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !49
  %i.o = lshr i64 %2, 32
  %i.p = trunc nuw i64 %i.o to i32
  %i.q = icmp ne i32 %i.n, %i.p
  %.not813 = icmp eq ptr %i.l, null
  %.not8 = or i1 %.not813, %i.q
  br i1 %.not8, label %_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet8containsEi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.s = trunc i64 %2 to i32                      ; 4 uses
  %.val10 = load ptr, ptr %i.r, align 8           ; 3 uses
  %i.t = getelementptr i8, ptr %i.d, i64 120
  %.val11 = load i32, ptr %i.t, align 8, !tbaa !27
  %i.u = add i32 %.val11, -1                      ; 2 uses
  %i.v = mul i32 %i.s, 41
  %.02410.i.i = and i32 %i.u, %i.v                ; 2 uses
  %i.w = zext i32 %.02410.i.i to i64
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %.val10, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !3    ; 2 uses
  %i.z = icmp eq i32 %i.y, %i.s
  br i1 %i.z, label %_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet8containsEi.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.e
  %i.aa = phi i32 [ %i.ak, %bb.e ], [ %i.y, %bb.c ] ; 2 uses
  %.02413.i.i = phi i32 [ %.024.i.i, %bb.e ], [ %.02410.i.i, %bb.c ] ; 3 uses
  %.01912.i.i = phi i8 [ %spec.select27.i.i, %bb.e ], [ 0, %bb.c ] ; 3 uses
  %.02111.i.i = phi i32 [ %spec.select.i.i, %bb.e ], [ 0, %bb.c ] ; 2 uses
  %i.ab = icmp eq i32 %i.aa, -1
  br i1 %i.ab, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.ac = trunc nuw i8 %.01912.i.i to i1
  %i.ad = select i1 %i.ac, i32 %.02111.i.i, i32 %.02413.i.i
  %.pre.i = zext i32 %i.ad to i64
  %.phi.trans.insert.i = getelementptr inbounds nuw [4 x i8], ptr %.val10, i64 %.pre.i
  %.pre7.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !3
  %i.ae = icmp eq i32 %.pre7.i, %i.s
  br label %_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet8containsEi.exit

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.af = icmp ne i32 %i.aa, -2
  %i.ag = trunc nuw i8 %.01912.i.i to i1
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051224synchronization_internal11GraphCycles10RemoveEdgeENS1_7GraphIdES3_:bb.a

_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit34: ; preds = %_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.thread.i28, %_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.i30, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4absl12lts_2025051224synchronization_internal11GraphCycles10InsertEdgeENS1_7GraphIdES3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i64 %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !7      ; 31 uses
  %i.b = trunc i64 %1 to i32                      ; 6 uses
  %i.c = trunc i64 %2 to i32                      ; 6 uses
  %.val54 = load ptr, ptr %i.a, align 8, !tbaa !20 ; 2 uses
  %i.d = and i64 %1, 4294967295
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %.val54, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !22   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !49
  %i.i = lshr i64 %1, 32
  %i.j = trunc nuw i64 %i.i to i32
  %i.k = icmp eq i32 %i.h, %i.j
  %i.l = select i1 %i.k, ptr %i.f, ptr null       ; 3 uses
  %i.m = and i64 %2, 4294967295
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.val54, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !22   ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !49
  %i.r = lshr i64 %2, 32
  %i.s = trunc nuw i64 %i.r to i32
  %i.t = icmp eq i32 %i.q, %i.s
  %i.u = select i1 %i.t, ptr %i.o, ptr null       ; 3 uses
  %i.v = icmp eq ptr %i.l, null
  %i.w = icmp eq ptr %i.u, null
  %or.cond = or i1 %i.v, %i.w
  br i1 %or.cond, label %_ZN4absl12lts_2025051224synchronization_internalL7ReorderEPNS1_11GraphCycles3RepE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.x = icmp eq ptr %i.l, %i.u
  br i1 %i.x, label %_ZN4absl12lts_2025051224synchronization_internalL7ReorderEPNS1_11GraphCycles3RepE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 80 ; 2 uses
  %i.z = tail call fastcc noundef zeroext i1 @_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet6insertEi(ptr noundef nonnull align 8 dereferenceable(52) %i.y, i32 noundef %i.c)
  br i1 %i.z, label %bb.d, label %_ZN4absl12lts_2025051224synchronization_internalL7ReorderEPNS1_11GraphCycles3RepE.exit

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 2 uses
  %i.ab = tail call fastcc noundef zeroext i1 @_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet6insertEi(ptr noundef nonnull align 8 dereferenceable(52) %i.aa, i32 noundef %i.b) ; 0 uses
  %i.ac = load i32, ptr %i.f, align 8, !tbaa !43  ; 3 uses
  %i.ad = load i32, ptr %i.o, align 8, !tbaa !43
  %.not = icmp sgt i32 %i.ac, %i.ad
  br i1 %.not, label %bb.e, label %_ZN4absl12lts_2025051224synchronization_internalL7ReorderEPNS1_11GraphCycles3RepE.exit

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 1048696 ; 10 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !24 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 1048704 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.af, %i.ag
  br i1 %.not.i.i.i, label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE5clearEv.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc4FreeEPv(ptr noundef %i.af)
  br label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE5clearEv.exit.i

_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE5clearEv.exit.i: ; preds = %bb.f, %bb.e
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !24
  %i.ah = getelementptr i8, ptr %i.a, i64 1048736 ; 11 uses
  store i32 0, ptr %i.ah, align 8, !tbaa !27
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 1048740 ; 3 uses
  store i32 8, ptr %i.ai, align 4, !tbaa !28
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 1048888 ; 14 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !24 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 1048896 ; 8 uses
  %.not.i.i35.i = icmp eq ptr %i.ak, %i.al
  br i1 %.not.i.i35.i, label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE5clearEv.exit.i
  tail call void @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc4FreeEPv(ptr noundef %i.ak)
  br label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit.i

_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit.i: ; preds = %bb.g, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE5clearEv.exit.i
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !24
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 1048928 ; 16 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 1048932 ; 6 uses
  store i32 8, ptr %i.an, align 4, !tbaa !28
  store i32 %i.c, ptr %i.al, align 8, !tbaa !3
  store i32 1, ptr %i.am, align 8, !tbaa !27
  br label %bb.h

thread-pre-split.loopexit.i:                      ; preds = %bb.y, %bb.o, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit49.i
  %.val29.pr.pre.i = load i32, ptr %i.am, align 8, !tbaa !27
  br label %thread-pre-split.i

thread-pre-split.i:                               ; preds = %bb.h, %thread-pre-split.loopexit.i
  %.val29.pr.i = phi i32 [ %.val29.pr.pre.i, %thread-pre-split.loopexit.i ], [ %i.ap, %bb.h ] ; 2 uses
  %i.ao = icmp eq i32 %.val29.pr.i, 0
  br i1 %i.ao, label %bb.ab, label %bb.h

bb.h:                                             ; preds = %thread-pre-split.i, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit.i
  %.val2987.i = phi i32 [ 1, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit.i ], [ %.val29.pr.i, %thread-pre-split.i ]
  %.val30.i = load ptr, ptr %i.aj, align 8, !tbaa !24
  %i.ap = add i32 %.val2987.i, -1                 ; 3 uses
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %.val30.i, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !3  ; 2 uses
  store i32 %i.ap, ptr %i.am, align 8, !tbaa !27
  %.val28.i = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.at = zext i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %.val28.i, i64 %i.at
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !22 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 12 ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 4, !tbaa !40, !range !41, !noundef !42
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %thread-pre-split.i, label %bb.i, !llvm.loop !55

bb.i:                                             ; preds = %bb.h
  store i8 1, ptr %i.aw, align 4, !tbaa !40
  %i.az = load i32, ptr %i.ah, align 8, !tbaa !27 ; 5 uses
  %i.ba = load i32, ptr %i.ai, align 4, !tbaa !28
  %i.bb = icmp eq i32 %i.az, %i.ba
  br i1 %i.bb, label %bb.j, label %._crit_edge.i37.i

._crit_edge.i37.i:                                ; preds = %bb.i
  %.pre.i38.i = load ptr, ptr %i.ae, align 8, !tbaa !24
  br label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit49.i

bb.j:                                             ; preds = %bb.i
  %i.bc = add i32 %i.az, 1
  %.not.i39.i = icmp eq i32 %i.az, -1
  br i1 %.not.i39.i, label %bb.k, label %.lr.ph.i.i40.i

.lr.ph.i.i40.i:                                   ; preds = %bb.j, %.lr.ph.i.i40.i
  %i.bd = phi i32 [ %i.be, %.lr.ph.i.i40.i ], [ %i.az, %bb.j ]
  %i.be = shl i32 %i.bd, 1                        ; 4 uses
  %i.bf = icmp ult i32 %i.be, %i.bc
  br i1 %i.bf, label %.lr.ph.i.i40.i, label %._crit_edge.i.i41.i, !llvm.loop !47

._crit_edge.i.i41.i:                              ; preds = %.lr.ph.i.i40.i
  store i32 %i.be, ptr %i.ai, align 4, !tbaa !28
  %i.bg = zext i32 %i.be to i64
  %i.bh = shl nuw nsw i64 %i.bg, 2
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge.i.i41.i, %bb.j
  %.lcssa.i.i42.i = phi i64 [ %i.bh, %._crit_edge.i.i41.i ], [ 17179869180, %bb.j ]
  %i.bi = load ptr, ptr @_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_15arenaE, align 8, !tbaa !18
  %i.bj = tail call noundef ptr @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc14AllocWithArenaEmPNS2_5ArenaE(i64 noundef %.lcssa.i.i42.i, ptr noundef %i.bi) ; 4 uses
  %i.bk = load ptr, ptr %i.ae, align 8, !tbaa !24 ; 4 uses
  %i.bl = load i32, ptr %i.ah, align 8, !tbaa !27 ; 2 uses
  switch i32 %i.bl, label %bb.l [
    i32 0, label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i43.i
    i32 1, label %bb.m
  ], !prof !21

bb.l:                                             ; preds = %bb.k
  %i.bm = zext i32 %i.bl to i64
  %.idx.i.i.i.i47.i = shl nuw nsw i64 %i.bm, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.bj, ptr align 4 %i.bk, i64 %.idx.i.i.i.i47.i, i1 false)
  %.pre.i.i48.i = load ptr, ptr %i.ae, align 8, !tbaa !24
  br label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i43.i

bb.m:                                             ; preds = %bb.k
  %i.bn = load i32, ptr %i.bk, align 4, !tbaa !3
  store i32 %i.bn, ptr %i.bj, align 4, !tbaa !3
  br label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i43.i

_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i43.i:      ; preds = %bb.m, %bb.l, %bb.k
  %i.bo = phi ptr [ %i.bk, %bb.k ], [ %.pre.i.i48.i, %bb.l ], [ %i.bk, %bb.m ] ; 2 uses
  %.not.i4.i.i44.i = icmp eq ptr %i.bo, %i.ag
  br i1 %.not.i4.i.i44.i, label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i45.i, label %bb.n

bb.n:                                             ; preds = %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i43.i
  tail call void @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc4FreeEPv(ptr noundef %i.bo)
  br label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i45.i

_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i45.i: ; preds = %bb.n, %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i43.i
  store ptr %i.bj, ptr %i.ae, align 8, !tbaa !24
  %.pre1.i46.i = load i32, ptr %i.ah, align 8, !tbaa !27
  br label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit49.i

_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit49.i: ; preds = %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i45.i, %._crit_edge.i37.i
  %i.bp = phi i32 [ %i.az, %._crit_edge.i37.i ], [ %.pre1.i46.i, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i45.i ]
  %i.bq = phi ptr [ %.pre.i38.i, %._crit_edge.i37.i ], [ %i.bj, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i45.i ]
  %i.br = zext i32 %i.bp to i64
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.br
  store i32 %i.as, ptr %i.bs, align 4, !tbaa !3
  %i.bt = load i32, ptr %i.ah, align 8, !tbaa !27
  %i.bu = add i32 %i.bt, 1
  store i32 %i.bu, ptr %i.ah, align 8, !tbaa !27
  %i.bv = getelementptr inbounds nuw i8, ptr %i.av, i64 80
  %i.bw = getelementptr inbounds nuw i8, ptr %i.av, i64 120 ; 2 uses
  %.val.i.i205 = load i32, ptr %i.bw, align 8, !tbaa !27 ; 2 uses
  %exitcond.not.i200207 = icmp eq i32 %.val.i.i205, 0
  br i1 %exitcond.not.i200207, label %thread-pre-split.loopexit.i, label %.lr.ph202.lr.ph

.lr.ph202.lr.ph:                                  ; preds = %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit49.i
  %wide.trip.count.i206 = zext i32 %.val.i.i205 to i64
  br label %.lr.ph202

.lr.ph202:                                        ; preds = %.lr.ph202.lr.ph, %bb.y
  %wide.trip.count.i209 = phi i64 [ %wide.trip.count.i206, %.lr.ph202.lr.ph ], [ %wide.trip.count.i, %bb.y ]
  %i.bx = phi i64 [ 0, %.lr.ph202.lr.ph ], [ %3, %bb.y ]
  %.val10.i.i208 = load ptr, ptr %i.bv, align 8
  br label %bb.p

bb.o:                                             ; preds = %bb.p
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i209
  br i1 %exitcond.not.i, label %thread-pre-split.loopexit.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph202, %bb.o
  %indvars.iv.i201 = phi i64 [ %i.bx, %.lr.ph202 ], [ %indvars.iv.next.i, %bb.o ] ; 2 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %.val10.i.i208, i64 %indvars.iv.i201
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !3  ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i201, 1 ; 4 uses
  %i.ca = icmp sgt i32 %i.bz, -1
  br i1 %i.ca, label %bb.q, label %bb.o

bb.q:                                             ; preds = %bb.p
  %i.cb = trunc nuw i64 %indvars.iv.next.i to i32
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !20 ; 10 uses
  %i.cc = zext nneg i32 %i.bz to i64
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.cc
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !22 ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !43 ; 2 uses
  %.not.i = icmp eq i32 %i.cf, %i.ac
  br i1 %.not.i, label %_ZN4absl12lts_2025051224synchronization_internalL10ForwardDFSEPNS1_11GraphCycles3RepEii.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 12
  %i.ch = load i8, ptr %i.cg, align 4, !tbaa !40, !range !41, !noundef !42
  %i.ci = trunc nuw i8 %i.ch to i1
  %i.cj = icmp sge i32 %i.cf, %i.ac
  %or.cond.not.i = or i1 %i.cj, %i.ci
  br i1 %or.cond.not.i, label %bb.y, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ck = load i32, ptr %i.am, align 8, !tbaa !27 ; 5 uses
  %i.cl = load i32, ptr %i.an, align 4, !tbaa !28
  %i.cm = icmp eq i32 %i.ck, %i.cl
  br i1 %i.cm, label %bb.t, label %._crit_edge.i51.i

._crit_edge.i51.i:                                ; preds = %bb.s
  %.pre.i52.i = load ptr, ptr %i.aj, align 8, !tbaa !24
  br label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit63.i

bb.t:                                             ; preds = %bb.s
  %i.cn = add i32 %i.ck, 1
  %.not.i53.i = icmp eq i32 %i.ck, -1
  br i1 %.not.i53.i, label %bb.u, label %.lr.ph.i.i54.i

.lr.ph.i.i54.i:                                   ; preds = %bb.t, %.lr.ph.i.i54.i
  %i.co = phi i32 [ %i.cp, %.lr.ph.i.i54.i ], [ %i.ck, %bb.t ]
  %i.cp = shl i32 %i.co, 1                        ; 4 uses
  %i.cq = icmp ult i32 %i.cp, %i.cn
  br i1 %i.cq, label %.lr.ph.i.i54.i, label %._crit_edge.i.i55.i, !llvm.loop !47

._crit_edge.i.i55.i:                              ; preds = %.lr.ph.i.i54.i
  store i32 %i.cp, ptr %i.an, align 4, !tbaa !28
  %i.cr = zext i32 %i.cp to i64
  %i.cs = shl nuw nsw i64 %i.cr, 2
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge.i.i55.i, %bb.t
  %.lcssa.i.i56.i = phi i64 [ %i.cs, %._crit_edge.i.i55.i ], [ 17179869180, %bb.t ]
  %i.ct = load ptr, ptr @_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_15arenaE, align 8, !tbaa !18
  %i.cu = tail call noundef ptr @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc14AllocWithArenaEmPNS2_5ArenaE(i64 noundef %.lcssa.i.i56.i, ptr noundef %i.ct) ; 4 uses
  %i.cv = load ptr, ptr %i.aj, align 8, !tbaa !24 ; 4 uses
  %i.cw = load i32, ptr %i.am, align 8, !tbaa !27 ; 2 uses
  switch i32 %i.cw, label %bb.v [
    i32 0, label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i57.i
    i32 1, label %bb.w
  ], !prof !21

bb.v:                                             ; preds = %bb.u
  %i.cx = zext i32 %i.cw to i64
  %.idx.i.i.i.i61.i = shl nuw nsw i64 %i.cx, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.cu, ptr align 4 %i.cv, i64 %.idx.i.i.i.i61.i, i1 false)
  %.pre.i.i62.i = load ptr, ptr %i.aj, align 8, !tbaa !24
  br label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i57.i

bb.w:                                             ; preds = %bb.u
  %i.cy = load i32, ptr %i.cv, align 4, !tbaa !3
  store i32 %i.cy, ptr %i.cu, align 4, !tbaa !3
  br label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i57.i

_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i57.i:      ; preds = %bb.w, %bb.v, %bb.u
  %i.cz = phi ptr [ %i.cv, %bb.u ], [ %.pre.i.i62.i, %bb.v ], [ %i.cv, %bb.w ] ; 2 uses
  %.not.i4.i.i58.i = icmp eq ptr %i.cz, %i.al
  br i1 %.not.i4.i.i58.i, label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i59.i, label %bb.x

bb.x:                                             ; preds = %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i57.i
  tail call void @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc4FreeEPv(ptr noundef %i.cz)
  br label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i59.i

_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i59.i: ; preds = %bb.x, %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i57.i
  store ptr %i.cu, ptr %i.aj, align 8, !tbaa !24
  %.pre1.i60.i = load i32, ptr %i.am, align 8, !tbaa !27
  br label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit63.i

_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit63.i: ; preds = %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i59.i, %._crit_edge.i51.i
  %i.da = phi i32 [ %i.ck, %._crit_edge.i51.i ], [ %.pre1.i60.i, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i59.i ]
  %i.db = phi ptr [ %.pre.i52.i, %._crit_edge.i51.i ], [ %i.cu, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i59.i ]
  %i.dc = zext i32 %i.da to i64
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %i.dc
  store i32 %i.bz, ptr %i.dd, align 4, !tbaa !3
  %i.de = load i32, ptr %i.am, align 8, !tbaa !27
  %i.df = add i32 %i.de, 1
  store i32 %i.df, ptr %i.am, align 8, !tbaa !27
  br label %bb.y

bb.y:                                             ; preds = %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit63.i, %bb.r
  %.val.i.i = load i32, ptr %i.bw, align 8, !tbaa !27
  %3 = and i64 %indvars.iv.next.i, 4294967295     ; 2 uses
  %umax.i = tail call i32 @llvm.umax.i32(i32 %i.cb, i32 %.val.i.i)
  %wide.trip.count.i = zext i32 %umax.i to i64    ; 2 uses
  %exitcond.not.i200 = icmp eq i64 %3, %wide.trip.count.i
  br i1 %exitcond.not.i200, label %thread-pre-split.loopexit.i, label %.lr.ph202, !llvm.loop !56

_ZN4absl12lts_2025051224synchronization_internalL10ForwardDFSEPNS1_11GraphCycles3RepEii.exit: ; preds = %bb.q
  %.val51 = load ptr, ptr %i.y, align 8           ; 4 uses
  %i.dg = getelementptr i8, ptr %i.f, i64 120
  %.val52 = load i32, ptr %i.dg, align 8, !tbaa !27
  %i.dh = add i32 %.val52, -1                     ; 2 uses
  %i.di = mul i32 %i.c, 41
  %.02410.i.i = and i32 %i.dh, %i.di              ; 2 uses
  %i.dj = zext i32 %.02410.i.i to i64             ; 2 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %.val51, i64 %i.dj
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !3  ; 2 uses
  %i.dm = icmp eq i32 %i.dl, %i.c
  br i1 %i.dm, label %_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.thread.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4absl12lts_2025051224synchronization_internalL10ForwardDFSEPNS1_11GraphCycles3RepEii.exit, %bb.z
  %i.dn = phi i32 [ %i.du, %bb.z ], [ %i.dl, %_ZN4absl12lts_2025051224synchronization_internalL10ForwardDFSEPNS1_11GraphCycles3RepEii.exit ] ; 2 uses
  %.02413.i.i = phi i32 [ %.024.i.i, %bb.z ], [ %.02410.i.i, %_ZN4absl12lts_2025051224synchronization_internalL10ForwardDFSEPNS1_11GraphCycles3RepEii.exit ] ; 3 uses
  %.01912.i.i = phi i8 [ %spec.select27.i.i, %bb.z ], [ 0, %_ZN4absl12lts_2025051224synchronization_internalL10ForwardDFSEPNS1_11GraphCycles3RepEii.exit ] ; 3 uses
  %.02111.i.i = phi i32 [ %spec.select.i.i, %bb.z ], [ 0, %_ZN4absl12lts_2025051224synchronization_internalL10ForwardDFSEPNS1_11GraphCycles3RepEii.exit ] ; 2 uses
  %i.do = icmp eq i32 %i.dn, -1
  br i1 %i.do, label %_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.i, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i.i
  %i.dp = icmp ne i32 %i.dn, -2
  %i.dq = trunc nuw i8 %.01912.i.i to i1
  %or.cond.i.i = select i1 %i.dp, i1 true, i1 %i.dq ; 2 uses
  %spec.select.i.i = select i1 %or.cond.i.i, i32 %.02111.i.i, i32 %.02413.i.i
  %spec.select27.i.i = select i1 %or.cond.i.i, i8 %.01912.i.i, i8 1
  %i.dr = add i32 %.02413.i.i, 1
  %.024.i.i = and i32 %i.dr, %i.dh                ; 2 uses
  %i.ds = zext i32 %.024.i.i to i64               ; 2 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %.val51, i64 %i.ds
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !3  ; 2 uses
  %i.dv = icmp eq i32 %i.du, %i.c
  br i1 %i.dv, label %_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.thread.i, label %.lr.ph.i.i, !llvm.loop !46

_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.i: ; preds = %.lr.ph.i.i
  %i.dw = trunc nuw i8 %.01912.i.i to i1
  %i.dx = select i1 %i.dw, i32 %.02111.i.i, i32 %.02413.i.i
  %.pre.i = zext i32 %i.dx to i64                 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw [4 x i8], ptr %.val51, i64 %.pre.i
  %.pre7.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !3
  %i.dy = icmp eq i32 %.pre7.i, %i.c
  br i1 %i.dy, label %_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.thread.i, label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit

_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.thread.i: ; preds = %bb.z, %_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.i, %_ZN4absl12lts_2025051224synchronization_internalL10ForwardDFSEPNS1_11GraphCycles3RepEii.exit
  %.pre-phi12.i = phi i64 [ %.pre.i, %_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.i ], [ %i.dj, %_ZN4absl12lts_2025051224synchronization_internalL10ForwardDFSEPNS1_11GraphCycles3RepEii.exit ], [ %i.ds, %bb.z ]
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %.val51, i64 %.pre-phi12.i
  store i32 -2, ptr %i.dz, align 4, !tbaa !3
  br label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit

_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit: ; preds = %_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.i, %_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.thread.i
  %.val49 = load ptr, ptr %i.aa, align 8          ; 4 uses
  %i.ea = getelementptr i8, ptr %i.o, i64 64
  %.val50 = load i32, ptr %i.ea, align 8, !tbaa !27
  %i.eb = add i32 %.val50, -1                     ; 2 uses
  %i.ec = mul i32 %i.b, 41
  %.02410.i.i55 = and i32 %i.eb, %i.ec            ; 2 uses
  %i.ed = zext i32 %.02410.i.i55 to i64           ; 2 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %.val49, i64 %i.ed
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !3  ; 2 uses
  %i.eg = icmp eq i32 %i.ef, %i.b
  br i1 %i.eg, label %_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.thread.i64, label %.lr.ph.i.i56

.lr.ph.i.i56:                                     ; preds = %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit, %bb.aa
  %i.eh = phi i32 [ %i.eo, %bb.aa ], [ %i.ef, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit ] ; 2 uses
  %.02413.i.i57 = phi i32 [ %.024.i.i63, %bb.aa ], [ %.02410.i.i55, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit ] ; 3 uses
  %.01912.i.i58 = phi i8 [ %spec.select27.i.i62, %bb.aa ], [ 0, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit ] ; 3 uses
  %.02111.i.i59 = phi i32 [ %spec.select.i.i61, %bb.aa ], [ 0, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit ] ; 2 uses
  %i.ei = icmp eq i32 %i.eh, -1
  br i1 %i.ei, label %_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.i66, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i.i56
  %i.ej = icmp ne i32 %i.eh, -2
  %i.ek = trunc nuw i8 %.01912.i.i58 to i1
  %or.cond.i.i60 = select i1 %i.ej, i1 true, i1 %i.ek ; 2 uses
  %spec.select.i.i61 = select i1 %or.cond.i.i60, i32 %.02111.i.i59, i32 %.02413.i.i57
  %spec.select27.i.i62 = select i1 %or.cond.i.i60, i8 %.01912.i.i58, i8 1
  %i.el = add i32 %.02413.i.i57, 1
  %.024.i.i63 = and i32 %i.el, %i.eb              ; 2 uses
  %i.em = zext i32 %.024.i.i63 to i64             ; 2 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %.val49, i64 %i.em
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !3  ; 2 uses
  %i.ep = icmp eq i32 %i.eo, %i.b
  br i1 %i.ep, label %_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.thread.i64, label %.lr.ph.i.i56, !llvm.loop !46

_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.i66: ; preds = %.lr.ph.i.i56
  %i.eq = trunc nuw i8 %.01912.i.i58 to i1
  %i.er = select i1 %i.eq, i32 %.02111.i.i59, i32 %.02413.i.i57
  %.pre.i67 = zext i32 %i.er to i64               ; 2 uses
  %.phi.trans.insert.i68 = getelementptr inbounds nuw [4 x i8], ptr %.val49, i64 %.pre.i67
  %.pre7.i69 = load i32, ptr %.phi.trans.insert.i68, align 4, !tbaa !3
  %i.es = icmp eq i32 %.pre7.i69, %i.b
  br i1 %i.es, label %_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.thread.i64, label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit70

_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.thread.i64: ; preds = %bb.aa, %_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.i66, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit
  %.pre-phi12.i65 = phi i64 [ %.pre.i67, %_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.i66 ], [ %i.ed, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit ], [ %i.em, %bb.aa ]
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %.val49, i64 %.pre-phi12.i65
  store i32 -2, ptr %i.et, align 4, !tbaa !3
  br label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit70

_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit70: ; preds = %_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.i66, %_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.thread.i64
  %.val46 = load ptr, ptr %i.ae, align 8, !tbaa !24 ; 3 uses
  %.val48 = load i32, ptr %i.ah, align 8, !tbaa !27 ; 2 uses
  %i.eu = zext i32 %.val48 to i64
  %.idx = shl nuw nsw i64 %i.eu, 2                ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.val46, i64 %.idx
  %.not45109 = icmp eq i32 %.val48, 0
  br i1 %.not45109, label %_ZN4absl12lts_2025051224synchronization_internalL7ReorderEPNS1_11GraphCycles3RepE.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit70
  %i.ew = add nsw i64 %.idx, -4                   ; 2 uses
  %i.ex = lshr exact i64 %i.ew, 2
  %i.ey = add nuw nsw i64 %i.ex, 1
  %xtraiter = and i64 %i.ey, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.041110.prol = phi ptr [ %i.fe, %.lr.ph.prol ], [ %.val46, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.ez = load i32, ptr %.041110.prol, align 4, !tbaa !3
  %i.fa = zext i32 %i.ez to i64
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.fa
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !22
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 12
  store i8 0, ptr %i.fd, align 4, !tbaa !40
  %i.fe = getelementptr inbounds nuw i8, ptr %.041110.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !57

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.041110.unr = phi ptr [ %.val46, %.lr.ph.preheader ], [ %i.fe, %.lr.ph.prol ]
  %i.ff = icmp ult i64 %i.ew, 28
  br i1 %i.ff, label %_ZN4absl12lts_2025051224synchronization_internalL7ReorderEPNS1_11GraphCycles3RepE.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.041110 = phi ptr [ %i.hb, %.lr.ph ], [ %.041110.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.fg = load i32, ptr %.041110, align 4, !tbaa !3
  %i.fh = zext i32 %i.fg to i64
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.fh
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !22
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 12
  store i8 0, ptr %i.fk, align 4, !tbaa !40
  %i.fl = getelementptr inbounds nuw i8, ptr %.041110, i64 4
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !3
  %i.fn = zext i32 %i.fm to i64
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.fn
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !22
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 12
  store i8 0, ptr %i.fq, align 4, !tbaa !40
  %i.fr = getelementptr inbounds nuw i8, ptr %.041110, i64 8
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !3
  %i.ft = zext i32 %i.fs to i64
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.ft
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !22
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 12
  store i8 0, ptr %i.fw, align 4, !tbaa !40
  %i.fx = getelementptr inbounds nuw i8, ptr %.041110, i64 12
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !3
  %i.fz = zext i32 %i.fy to i64
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.fz
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !22
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 12
  store i8 0, ptr %i.gc, align 4, !tbaa !40
  %i.gd = getelementptr inbounds nuw i8, ptr %.041110, i64 16
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !3
  %i.gf = zext i32 %i.ge to i64
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.gf
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !22
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 12
  store i8 0, ptr %i.gi, align 4, !tbaa !40
  %i.gj = getelementptr inbounds nuw i8, ptr %.041110, i64 20
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !3
  %i.gl = zext i32 %i.gk to i64
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.gl
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !22
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 12
  store i8 0, ptr %i.go, align 4, !tbaa !40
  %i.gp = getelementptr inbounds nuw i8, ptr %.041110, i64 24
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !3
  %i.gr = zext i32 %i.gq to i64
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.gr
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !22
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 12
  store i8 0, ptr %i.gu, align 4, !tbaa !40
  %i.gv = getelementptr inbounds nuw i8, ptr %.041110, i64 28
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !3
  %i.gx = zext i32 %i.gw to i64
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.gx
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !22
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 12
  store i8 0, ptr %i.ha, align 4, !tbaa !40
  %i.hb = getelementptr inbounds nuw i8, ptr %.041110, i64 32 ; 2 uses
  %.not45.7 = icmp eq ptr %i.hb, %i.ev
  br i1 %.not45.7, label %_ZN4absl12lts_2025051224synchronization_internalL7ReorderEPNS1_11GraphCycles3RepE.exit, label %.lr.ph

bb.ab:                                            ; preds = %thread-pre-split.i
  %i.hc = load i32, ptr %i.o, align 8, !tbaa !43
  %i.hd = getelementptr inbounds nuw i8, ptr %i.a, i64 1048744 ; 9 uses
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !24 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.a, i64 1048752 ; 3 uses
  %.not.i.i.i71 = icmp eq ptr %i.he, %i.hf
  br i1 %.not.i.i.i71, label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE5clearEv.exit.i72, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc4FreeEPv(ptr noundef %i.he)
  br label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE5clearEv.exit.i72

_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE5clearEv.exit.i72: ; preds = %bb.ac, %bb.ab
  store ptr %i.hf, ptr %i.hd, align 8, !tbaa !24
  %i.hg = getelementptr inbounds nuw i8, ptr %i.a, i64 1048784 ; 10 uses
  store i32 0, ptr %i.hg, align 8, !tbaa !27
  %i.hh = getelementptr inbounds nuw i8, ptr %i.a, i64 1048788 ; 3 uses
  store i32 8, ptr %i.hh, align 4, !tbaa !28
  %i.hi = load ptr, ptr %i.aj, align 8, !tbaa !24 ; 2 uses
  %.not.i.i22.i = icmp eq ptr %i.hi, %i.al
  br i1 %.not.i.i22.i, label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit.i73, label %bb.ad

bb.ad:                                            ; preds = %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE5clearEv.exit.i72
  tail call void @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc4FreeEPv(ptr noundef %i.hi)
  br label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit.i73

_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit.i73: ; preds = %bb.ad, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE5clearEv.exit.i72
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !24
  store i32 8, ptr %i.an, align 4, !tbaa !28
  store i32 %i.b, ptr %i.al, align 8, !tbaa !3
  store i32 1, ptr %i.am, align 8, !tbaa !27
  br label %bb.ae

bb.ae:                                            ; preds = %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS4_.exit.i, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit.i73
  %.val1666.i = phi i32 [ 1, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit.i73 ], [ %.val16.pr.i, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS4_.exit.i ]
  %.val17.i = load ptr, ptr %i.aj, align 8, !tbaa !24
  %i.hj = add i32 %.val1666.i, -1                 ; 3 uses
  %i.hk = zext i32 %i.hj to i64
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %.val17.i, i64 %i.hk
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !3  ; 2 uses
  store i32 %i.hj, ptr %i.am, align 8, !tbaa !27
  %.val15.i = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.hn = zext i32 %i.hm to i64
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %.val15.i, i64 %i.hn
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !22 ; 3 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 12 ; 2 uses
  %i.hr = load i8, ptr %i.hq, align 4, !tbaa !40, !range !41, !noundef !42
  %i.hs = trunc nuw i8 %i.hr to i1
  br i1 %i.hs, label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS4_.exit.i, label %bb.af, !llvm.loop !59

bb.af:                                            ; preds = %bb.ae
  store i8 1, ptr %i.hq, align 4, !tbaa !40
  %i.ht = load i32, ptr %i.hg, align 8, !tbaa !27 ; 5 uses
  %i.hu = load i32, ptr %i.hh, align 4, !tbaa !28
  %i.hv = icmp eq i32 %i.ht, %i.hu
  br i1 %i.hv, label %bb.ag, label %._crit_edge.i24.i

._crit_edge.i24.i:                                ; preds = %bb.af
  %.pre.i25.i = load ptr, ptr %i.hd, align 8, !tbaa !24
  br label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit36.i

bb.ag:                                            ; preds = %bb.af
  %i.hw = add i32 %i.ht, 1
  %.not.i26.i = icmp eq i32 %i.ht, -1
  br i1 %.not.i26.i, label %bb.ah, label %.lr.ph.i.i27.i

.lr.ph.i.i27.i:                                   ; preds = %bb.ag, %.lr.ph.i.i27.i
  %i.hx = phi i32 [ %i.hy, %.lr.ph.i.i27.i ], [ %i.ht, %bb.ag ]
  %i.hy = shl i32 %i.hx, 1                        ; 4 uses
  %i.hz = icmp ult i32 %i.hy, %i.hw
  br i1 %i.hz, label %.lr.ph.i.i27.i, label %._crit_edge.i.i28.i, !llvm.loop !47

._crit_edge.i.i28.i:                              ; preds = %.lr.ph.i.i27.i
  store i32 %i.hy, ptr %i.hh, align 4, !tbaa !28
  %i.ia = zext i32 %i.hy to i64
  %i.ib = shl nuw nsw i64 %i.ia, 2
  br label %bb.ah

bb.ah:                                            ; preds = %._crit_edge.i.i28.i, %bb.ag
  %.lcssa.i.i29.i = phi i64 [ %i.ib, %._crit_edge.i.i28.i ], [ 17179869180, %bb.ag ]
  %i.ic = load ptr, ptr @_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_15arenaE, align 8, !tbaa !18
  %i.id = tail call noundef ptr @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc14AllocWithArenaEmPNS2_5ArenaE(i64 noundef %.lcssa.i.i29.i, ptr noundef %i.ic) ; 4 uses
  %i.ie = load ptr, ptr %i.hd, align 8, !tbaa !24 ; 4 uses
  %i.if = load i32, ptr %i.hg, align 8, !tbaa !27 ; 2 uses
  switch i32 %i.if, label %bb.ai [
    i32 0, label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i30.i
    i32 1, label %bb.aj
  ], !prof !21

bb.ai:                                            ; preds = %bb.ah
  %i.ig = zext i32 %i.if to i64
  %.idx.i.i.i.i34.i = shl nuw nsw i64 %i.ig, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.id, ptr align 4 %i.ie, i64 %.idx.i.i.i.i34.i, i1 false)
  %.pre.i.i35.i = load ptr, ptr %i.hd, align 8, !tbaa !24
  br label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i30.i

bb.aj:                                            ; preds = %bb.ah
  %i.ih = load i32, ptr %i.ie, align 4, !tbaa !3
  store i32 %i.ih, ptr %i.id, align 4, !tbaa !3
  br label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i30.i

_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i30.i:      ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.ii = phi ptr [ %i.ie, %bb.ah ], [ %.pre.i.i35.i, %bb.ai ], [ %i.ie, %bb.aj ] ; 2 uses
  %.not.i4.i.i31.i = icmp eq ptr %i.ii, %i.hf
  br i1 %.not.i4.i.i31.i, label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i32.i, label %bb.ak

bb.ak:                                            ; preds = %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i30.i
  tail call void @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc4FreeEPv(ptr noundef %i.ii)
  br label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i32.i

_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i32.i: ; preds = %bb.ak, %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i30.i
  store ptr %i.id, ptr %i.hd, align 8, !tbaa !24
  %.pre1.i33.i = load i32, ptr %i.hg, align 8, !tbaa !27
  br label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit36.i

_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit36.i: ; preds = %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i32.i, %._crit_edge.i24.i
  %i.ij = phi i32 [ %i.ht, %._crit_edge.i24.i ], [ %.pre1.i33.i, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i32.i ]
  %i.ik = phi ptr [ %.pre.i25.i, %._crit_edge.i24.i ], [ %i.id, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i32.i ]
  %i.il = zext i32 %i.ij to i64
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.ik, i64 %i.il
  store i32 %i.hm, ptr %i.im, align 4, !tbaa !3
  %i.in = load i32, ptr %i.hg, align 8, !tbaa !27
  %i.io = add i32 %i.in, 1
  store i32 %i.io, ptr %i.hg, align 8, !tbaa !27
  %i.ip = getelementptr inbounds nuw i8, ptr %i.hp, i64 24
  %i.iq = getelementptr inbounds nuw i8, ptr %i.hp, i64 64 ; 2 uses
  %.val.i.i76215 = load i32, ptr %i.iq, align 8, !tbaa !27 ; 2 uses
  %exitcond.not.i80210217 = icmp eq i32 %.val.i.i76215, 0
  br i1 %exitcond.not.i80210217, label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS4_.exit.loopexit.i, label %.lr.ph212.lr.ph

.lr.ph212.lr.ph:                                  ; preds = %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit36.i
  %wide.trip.count.i78216 = zext i32 %.val.i.i76215 to i64
  br label %.lr.ph212

.lr.ph212:                                        ; preds = %.lr.ph212.lr.ph, %bb.av
  %wide.trip.count.i78219 = phi i64 [ %wide.trip.count.i78216, %.lr.ph212.lr.ph ], [ %wide.trip.count.i78, %bb.av ]
  %i.ir = phi i64 [ 0, %.lr.ph212.lr.ph ], [ %4, %bb.av ]
  %.val10.i.i75218 = load ptr, ptr %i.ip, align 8
  br label %bb.am

bb.al:                                            ; preds = %bb.am
  %exitcond.not.i80 = icmp eq i64 %indvars.iv.next.i81, %wide.trip.count.i78219
  br i1 %exitcond.not.i80, label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS4_.exit.loopexit.i, label %bb.am

bb.am:                                            ; preds = %.lr.ph212, %bb.al
  %indvars.iv.i79211 = phi i64 [ %i.ir, %.lr.ph212 ], [ %indvars.iv.next.i81, %bb.al ] ; 2 uses
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %.val10.i.i75218, i64 %indvars.iv.i79211
  %i.it = load i32, ptr %i.is, align 4, !tbaa !3  ; 3 uses
  %indvars.iv.next.i81 = add nuw nsw i64 %indvars.iv.i79211, 1 ; 4 uses
  %i.iu = icmp sgt i32 %i.it, -1
  br i1 %i.iu, label %bb.an, label %bb.al

bb.an:                                            ; preds = %bb.am
  %i.iv = trunc nuw i64 %indvars.iv.next.i81 to i32
  %.val.i82 = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.iw = zext nneg i32 %i.it to i64
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %.val.i82, i64 %i.iw
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !22 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 12
  %i.ja = load i8, ptr %i.iz, align 4, !tbaa !40, !range !41, !noundef !42
  %i.jb = trunc nuw i8 %i.ja to i1
  br i1 %i.jb, label %bb.av, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.jc = load i32, ptr %i.iy, align 8, !tbaa !43
  %i.jd = icmp slt i32 %i.hc, %i.jc
  br i1 %i.jd, label %bb.ap, label %bb.av

bb.ap:                                            ; preds = %bb.ao
  %i.je = load i32, ptr %i.am, align 8, !tbaa !27 ; 5 uses
  %i.jf = load i32, ptr %i.an, align 4, !tbaa !28
  %i.jg = icmp eq i32 %i.je, %i.jf
  br i1 %i.jg, label %bb.aq, label %._crit_edge.i38.i

._crit_edge.i38.i:                                ; preds = %bb.ap
  %.pre.i39.i = load ptr, ptr %i.aj, align 8, !tbaa !24
  br label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit50.i

bb.aq:                                            ; preds = %bb.ap
  %i.jh = add i32 %i.je, 1
  %.not.i40.i = icmp eq i32 %i.je, -1
  br i1 %.not.i40.i, label %bb.ar, label %.lr.ph.i.i41.i

.lr.ph.i.i41.i:                                   ; preds = %bb.aq, %.lr.ph.i.i41.i
  %i.ji = phi i32 [ %i.jj, %.lr.ph.i.i41.i ], [ %i.je, %bb.aq ]
  %i.jj = shl i32 %i.ji, 1                        ; 4 uses
  %i.jk = icmp ult i32 %i.jj, %i.jh
  br i1 %i.jk, label %.lr.ph.i.i41.i, label %._crit_edge.i.i42.i, !llvm.loop !47

._crit_edge.i.i42.i:                              ; preds = %.lr.ph.i.i41.i
  store i32 %i.jj, ptr %i.an, align 4, !tbaa !28
  %i.jl = zext i32 %i.jj to i64
  %i.jm = shl nuw nsw i64 %i.jl, 2
  br label %bb.ar

bb.ar:                                            ; preds = %._crit_edge.i.i42.i, %bb.aq
  %.lcssa.i.i43.i = phi i64 [ %i.jm, %._crit_edge.i.i42.i ], [ 17179869180, %bb.aq ]
  %i.jn = load ptr, ptr @_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_15arenaE, align 8, !tbaa !18
  %i.jo = tail call noundef ptr @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc14AllocWithArenaEmPNS2_5ArenaE(i64 noundef %.lcssa.i.i43.i, ptr noundef %i.jn) ; 4 uses
  %i.jp = load ptr, ptr %i.aj, align 8, !tbaa !24 ; 4 uses
  %i.jq = load i32, ptr %i.am, align 8, !tbaa !27 ; 2 uses
  switch i32 %i.jq, label %bb.as [
    i32 0, label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i44.i
    i32 1, label %bb.at
  ], !prof !21

bb.as:                                            ; preds = %bb.ar
  %i.jr = zext i32 %i.jq to i64
  %.idx.i.i.i.i48.i = shl nuw nsw i64 %i.jr, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.jo, ptr align 4 %i.jp, i64 %.idx.i.i.i.i48.i, i1 false)
  %.pre.i.i49.i = load ptr, ptr %i.aj, align 8, !tbaa !24
  br label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i44.i

bb.at:                                            ; preds = %bb.ar
  %i.js = load i32, ptr %i.jp, align 4, !tbaa !3
  store i32 %i.js, ptr %i.jo, align 4, !tbaa !3
  br label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i44.i

_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i44.i:      ; preds = %bb.at, %bb.as, %bb.ar
  %i.jt = phi ptr [ %i.jp, %bb.ar ], [ %.pre.i.i49.i, %bb.as ], [ %i.jp, %bb.at ] ; 2 uses
  %.not.i4.i.i45.i = icmp eq ptr %i.jt, %i.al
  br i1 %.not.i4.i.i45.i, label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i46.i, label %bb.au

bb.au:                                            ; preds = %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i44.i
  tail call void @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc4FreeEPv(ptr noundef %i.jt)
  br label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i46.i

_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i46.i: ; preds = %bb.au, %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i44.i
  store ptr %i.jo, ptr %i.aj, align 8, !tbaa !24
  %.pre1.i47.i = load i32, ptr %i.am, align 8, !tbaa !27
  br label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit50.i

_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit50.i: ; preds = %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i46.i, %._crit_edge.i38.i
  %i.ju = phi i32 [ %i.je, %._crit_edge.i38.i ], [ %.pre1.i47.i, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i46.i ]
  %i.jv = phi ptr [ %.pre.i39.i, %._crit_edge.i38.i ], [ %i.jo, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i46.i ]
  %i.jw = zext i32 %i.ju to i64
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %i.jw
  store i32 %i.it, ptr %i.jx, align 4, !tbaa !3
  %i.jy = load i32, ptr %i.am, align 8, !tbaa !27
  %i.jz = add i32 %i.jy, 1
  store i32 %i.jz, ptr %i.am, align 8, !tbaa !27
  br label %bb.av

bb.av:                                            ; preds = %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit50.i, %bb.ao, %bb.an
  %.val.i.i76 = load i32, ptr %i.iq, align 8, !tbaa !27
  %4 = and i64 %indvars.iv.next.i81, 4294967295   ; 2 uses
  %umax.i77 = tail call i32 @llvm.umax.i32(i32 %i.iv, i32 %.val.i.i76)
  %wide.trip.count.i78 = zext i32 %umax.i77 to i64 ; 2 uses
  %exitcond.not.i80210 = icmp eq i64 %4, %wide.trip.count.i78
  br i1 %exitcond.not.i80210, label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS4_.exit.loopexit.i, label %.lr.ph212, !llvm.loop !60

_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS4_.exit.loopexit.i: ; preds = %bb.av, %bb.al, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit36.i
  %.val16.pr.pre.i = load i32, ptr %i.am, align 8, !tbaa !27
  br label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS4_.exit.i

_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS4_.exit.i: ; preds = %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS4_.exit.loopexit.i, %bb.ae
  %.val16.pr.i = phi i32 [ %.val16.pr.pre.i, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS4_.exit.loopexit.i ], [ %i.hj, %bb.ae ] ; 2 uses
  %i.ka = icmp eq i32 %.val16.pr.i, 0
  br i1 %i.ka, label %_ZN4absl12lts_2025051224synchronization_internalL11BackwardDFSEPNS1_11GraphCycles3RepEii.exit, label %bb.ae

_ZN4absl12lts_2025051224synchronization_internalL11BackwardDFSEPNS1_11GraphCycles3RepEii.exit: ; preds = %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS4_.exit.i
  %.val40.i = load ptr, ptr %i.hd, align 8, !tbaa !24
  %.val41.i = load i32, ptr %i.hg, align 8, !tbaa !27
  tail call fastcc void @_ZN4absl12lts_2025051224synchronization_internalL4SortERKNS1_12_GLOBAL__N_13VecIPNS2_4NodeEEEPNS3_IiEE(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr %.val40.i, i32 %.val41.i)
  %.val38.i = load ptr, ptr %i.ae, align 8, !tbaa !24
  %.val39.i = load i32, ptr %i.ah, align 8, !tbaa !27
  tail call fastcc void @_ZN4absl12lts_2025051224synchronization_internalL4SortERKNS1_12_GLOBAL__N_13VecIPNS2_4NodeEEEPNS3_IiEE(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr %.val38.i, i32 %.val39.i)
  %i.kb = getelementptr inbounds nuw i8, ptr %i.a, i64 1048792 ; 5 uses
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !24 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.a, i64 1048800 ; 2 uses
  %.not.i.i.i83 = icmp eq ptr %i.kc, %i.kd
  br i1 %.not.i.i.i83, label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE5clearEv.exit.i84, label %bb.aw

bb.aw:                                            ; preds = %_ZN4absl12lts_2025051224synchronization_internalL11BackwardDFSEPNS1_11GraphCycles3RepEii.exit
  tail call void @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc4FreeEPv(ptr noundef %i.kc)
  br label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE5clearEv.exit.i84

_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE5clearEv.exit.i84: ; preds = %bb.aw, %_ZN4absl12lts_2025051224synchronization_internalL11BackwardDFSEPNS1_11GraphCycles3RepEii.exit
  store ptr %i.kd, ptr %i.kb, align 8, !tbaa !24
  %i.ke = getelementptr inbounds nuw i8, ptr %i.a, i64 1048832 ; 2 uses
  store i32 0, ptr %i.ke, align 8, !tbaa !27
  %i.kf = getelementptr inbounds nuw i8, ptr %i.a, i64 1048836
  store i32 8, ptr %i.kf, align 4, !tbaa !28
  %.val44.i = load ptr, ptr %i.hd, align 8, !tbaa !24
  %.val45.i = load i32, ptr %i.hg, align 8, !tbaa !27
  tail call fastcc void @_ZN4absl12lts_2025051224synchronization_internalL10MoveToListEPNS1_11GraphCycles3RepEPNS1_12_GLOBAL__N_13VecIiEES8_(ptr noundef nonnull %i.a, ptr %.val44.i, i32 %.val45.i, ptr noundef nonnull %i.kb)
  %.val42.i = load ptr, ptr %i.ae, align 8, !tbaa !24
  %.val43.i = load i32, ptr %i.ah, align 8, !tbaa !27
  tail call fastcc void @_ZN4absl12lts_2025051224synchronization_internalL10MoveToListEPNS1_11GraphCycles3RepEPNS1_12_GLOBAL__N_13VecIiEES8_(ptr noundef nonnull %i.a, ptr %.val42.i, i32 %.val43.i, ptr noundef nonnull %i.kb)
  %i.kg = getelementptr inbounds nuw i8, ptr %i.a, i64 1048840 ; 5 uses
  %.val28.i85 = load i32, ptr %i.hg, align 8, !tbaa !27 ; 2 uses
  %.val27.i = load i32, ptr %i.ah, align 8, !tbaa !27 ; 2 uses
  %i.kh = add i32 %.val27.i, %.val28.i85          ; 3 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.a, i64 1048884 ; 2 uses
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !28 ; 2 uses
  %i.kk = icmp ugt i32 %i.kh, %i.kj
  br i1 %i.kk, label %.lr.ph.i.i.i, label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE5clearEv.exit._ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE6resizeEj.exit_crit_edge.i

_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE5clearEv.exit._ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE6resizeEj.exit_crit_edge.i: ; preds = %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE5clearEv.exit.i84
  %.val31.pre.i = load ptr, ptr %i.kg, align 8, !tbaa !24
  br label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE6resizeEj.exit.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE5clearEv.exit.i84, %.lr.ph.i.i.i
  %i.kl = phi i32 [ %i.km, %.lr.ph.i.i.i ], [ %i.kj, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE5clearEv.exit.i84 ]
  %i.km = shl i32 %i.kl, 1                        ; 4 uses
  %i.kn = icmp ult i32 %i.km, %i.kh
  br i1 %i.kn, label %.lr.ph.i.i.i, label %bb.ax, !llvm.loop !47

bb.ax:                                            ; preds = %.lr.ph.i.i.i
  store i32 %i.km, ptr %i.ki, align 4, !tbaa !28
  %i.ko = zext i32 %i.km to i64
  %i.kp = shl nuw nsw i64 %i.ko, 2
  %i.kq = load ptr, ptr @_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_15arenaE, align 8, !tbaa !18
  %i.kr = tail call noundef ptr @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc14AllocWithArenaEmPNS2_5ArenaE(i64 noundef %i.kp, ptr noundef %i.kq) ; 4 uses
  %i.ks = load ptr, ptr %i.kg, align 8, !tbaa !24 ; 4 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.a, i64 1048880
  %i.ku = load i32, ptr %i.kt, align 8, !tbaa !27 ; 2 uses
  switch i32 %i.ku, label %bb.ay [
    i32 0, label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i.i
    i32 1, label %bb.az
  ], !prof !21

bb.ay:                                            ; preds = %bb.ax
  %i.kv = zext i32 %i.ku to i64
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.kv, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.kr, ptr align 4 %i.ks, i64 %.idx.i.i.i.i.i, i1 false)
  %.pre.i.i.i = load ptr, ptr %i.kg, align 8, !tbaa !24
  br label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i.i

bb.az:                                            ; preds = %bb.ax
  %i.kw = load i32, ptr %i.ks, align 4, !tbaa !3
  store i32 %i.kw, ptr %i.kr, align 4, !tbaa !3
  br label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i.i

_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i.i:        ; preds = %bb.az, %bb.ay, %bb.ax
  %i.kx = phi ptr [ %i.ks, %bb.ax ], [ %.pre.i.i.i, %bb.ay ], [ %i.ks, %bb.az ] ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.a, i64 1048848
  %.not.i4.i.i.i = icmp eq ptr %i.kx, %i.ky
  br i1 %.not.i4.i.i.i, label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i.i, label %bb.ba

bb.ba:                                            ; preds = %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i.i
  tail call void @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc4FreeEPv(ptr noundef %i.kx)
  br label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i.i

_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i.i: ; preds = %bb.ba, %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i.i
  store ptr %i.kr, ptr %i.kg, align 8, !tbaa !24
  %.val37.pre.i = load i32, ptr %i.hg, align 8, !tbaa !27
  %.val35.pre.i = load i32, ptr %i.ah, align 8, !tbaa !27
  br label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE6resizeEj.exit.i

_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE6resizeEj.exit.i: ; preds = %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i.i, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE5clearEv.exit._ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE6resizeEj.exit_crit_edge.i
  %.val31.i = phi ptr [ %.val31.pre.i, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE5clearEv.exit._ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE6resizeEj.exit_crit_edge.i ], [ %i.kr, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i.i ] ; 2 uses
  %.val35.i = phi i32 [ %.val27.i, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE5clearEv.exit._ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE6resizeEj.exit_crit_edge.i ], [ %.val35.pre.i, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i.i ] ; 2 uses
  %.val37.i = phi i32 [ %.val28.i85, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE5clearEv.exit._ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE6resizeEj.exit_crit_edge.i ], [ %.val37.pre.i, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i.i ] ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.a, i64 1048880
  store i32 %i.kh, ptr %i.kz, align 8, !tbaa !27
  %.val33.i = load ptr, ptr %i.hd, align 8, !tbaa !24 ; 3 uses
  %i.la = zext i32 %.val37.i to i64
  %.idx.i = shl nuw nsw i64 %i.la, 2
  %i.lb = getelementptr inbounds nuw i8, ptr %.val33.i, i64 %.idx.i ; 2 uses
  %.val32.i = load ptr, ptr %i.ae, align 8, !tbaa !24 ; 3 uses
  %i.lc = zext i32 %.val35.i to i64
  %.idx47.i = shl nuw nsw i64 %i.lc, 2
  %i.ld = getelementptr inbounds nuw i8, ptr %.val32.i, i64 %.idx47.i ; 2 uses
  %i.le = icmp ne i32 %.val37.i, 0
  %i.lf = icmp ne i32 %.val35.i, 0
  %i.lg = and i1 %i.lf, %i.le
  br i1 %i.lg, label %.lr.ph.i.i46.i, label %._crit_edge.i.i.i

.lr.ph.i.i46.i:                                   ; preds = %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE6resizeEj.exit.i, %.lr.ph.i.i46.i
  %.024.i.i.i = phi ptr [ %i.lk, %.lr.ph.i.i46.i ], [ %.val31.i, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE6resizeEj.exit.i ] ; 2 uses
  %.01823.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i46.i ], [ %.val33.i, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE6resizeEj.exit.i ] ; 2 uses
  %.01922.i.i.i = phi ptr [ %.120.i.i.i, %.lr.ph.i.i46.i ], [ %.val32.i, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE6resizeEj.exit.i ] ; 2 uses
  %i.lh = load i32, ptr %.01922.i.i.i, align 4, !tbaa !3 ; 2 uses
  %i.li = load i32, ptr %.01823.i.i.i, align 4, !tbaa !3 ; 2 uses
  %i.lj = icmp slt i32 %i.lh, %i.li               ; 2 uses
  %.sink.i.i.i = tail call i32 @llvm.smin.i32(i32 %i.lh, i32 %i.li)
  %.120.idx.i.i.i = select i1 %i.lj, i64 4, i64 0
  %.120.i.i.i = getelementptr inbounds nuw i8, ptr %.01922.i.i.i, i64 %.120.idx.i.i.i ; 3 uses
  %.1.idx.i.i.i = select i1 %i.lj, i64 0, i64 4
  %.1.i.i.i = getelementptr inbounds nuw i8, ptr %.01823.i.i.i, i64 %.1.idx.i.i.i ; 3 uses
  store i32 %.sink.i.i.i, ptr %.024.i.i.i, align 4, !tbaa !3
  %i.lk = getelementptr inbounds nuw i8, ptr %.024.i.i.i, i64 4 ; 2 uses
  %i.ll = icmp ne ptr %.1.i.i.i, %i.lb
  %i.lm = icmp ne ptr %.120.i.i.i, %i.ld
  %i.ln = select i1 %i.ll, i1 %i.lm, i1 false
  br i1 %i.ln, label %.lr.ph.i.i46.i, label %._crit_edge.i.i.i, !llvm.loop !61

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i46.i, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE6resizeEj.exit.i
  %.019.lcssa.i.i.i = phi ptr [ %.val32.i, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE6resizeEj.exit.i ], [ %.120.i.i.i, %.lr.ph.i.i46.i ] ; 3 uses
  %.018.lcssa.i.i.i = phi ptr [ %.val33.i, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE6resizeEj.exit.i ], [ %.1.i.i.i, %.lr.ph.i.i46.i ] ; 3 uses
  %.0.lcssa.i.i.i = phi ptr [ %.val31.i, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE6resizeEj.exit.i ], [ %i.lk, %.lr.ph.i.i46.i ] ; 3 uses
  %i.lo = ptrtoint ptr %i.lb to i64
  %i.lp = ptrtoint ptr %.018.lcssa.i.i.i to i64
  %i.lq = sub i64 %i.lo, %i.lp                    ; 4 uses
  %i.lr = icmp sgt i64 %i.lq, 4
  br i1 %i.lr, label %bb.bb, label %bb.bc, !prof !62

bb.bb:                                            ; preds = %._crit_edge.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.0.lcssa.i.i.i, ptr align 4 %.018.lcssa.i.i.i, i64 %i.lq, i1 false)
  br label %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit.i.i.i

bb.bc:                                            ; preds = %._crit_edge.i.i.i
  %i.ls = icmp eq i64 %i.lq, 4
  br i1 %i.ls, label %bb.bd, label %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit.i.i.i

bb.bd:                                            ; preds = %bb.bc
  %i.lt = load i32, ptr %.018.lcssa.i.i.i, align 4, !tbaa !3
  store i32 %i.lt, ptr %.0.lcssa.i.i.i, align 4, !tbaa !3
  br label %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit.i.i.i

_ZSt4copyIPiS0_ET0_T_S2_S1_.exit.i.i.i:           ; preds = %bb.bd, %bb.bc, %bb.bb
  %i.lu = getelementptr inbounds i8, ptr %.0.lcssa.i.i.i, i64 %i.lq ; 2 uses
  %i.lv = ptrtoint ptr %i.ld to i64
  %i.lw = ptrtoint ptr %.019.lcssa.i.i.i to i64
  %i.lx = sub i64 %i.lv, %i.lw                    ; 3 uses
  %i.ly = icmp sgt i64 %i.lx, 4
  br i1 %i.ly, label %bb.be, label %bb.bf, !prof !62

bb.be:                                            ; preds = %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.lu, ptr align 4 %.019.lcssa.i.i.i, i64 %i.lx, i1 false)
  br label %_ZSt5mergeIPiS0_S0_ET1_T_S2_T0_S3_S1_.exit.i

bb.bf:                                            ; preds = %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit.i.i.i
  %i.lz = icmp eq i64 %i.lx, 4
  br i1 %i.lz, label %bb.bg, label %_ZSt5mergeIPiS0_S0_ET1_T_S2_T0_S3_S1_.exit.i

bb.bg:                                            ; preds = %bb.bf
  %i.ma = load i32, ptr %.019.lcssa.i.i.i, align 4, !tbaa !3
  store i32 %i.ma, ptr %i.lu, align 4, !tbaa !3
  br label %_ZSt5mergeIPiS0_S0_ET1_T_S2_T0_S3_S1_.exit.i

_ZSt5mergeIPiS0_S0_ET1_T_S2_T0_S3_S1_.exit.i:     ; preds = %bb.bg, %bb.bf, %bb.be
  %.val26.i = load i32, ptr %i.ke, align 8, !tbaa !27 ; 3 uses
  %.not.i86 = icmp eq i32 %.val26.i, 0
  br i1 %.not.i86, label %_ZN4absl12lts_2025051224synchronization_internalL7ReorderEPNS1_11GraphCycles3RepE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt5mergeIPiS0_S0_ET1_T_S2_T0_S3_S1_.exit.i
  %.val30.i87 = load ptr, ptr %i.kg, align 8, !tbaa !24 ; 5 uses
  %.val29.i = load ptr, ptr %i.kb, align 8, !tbaa !24 ; 5 uses
  %.val.i88 = load ptr, ptr %i.a, align 8, !tbaa !20 ; 5 uses
  %wide.trip.count.i89 = zext i32 %.val26.i to i64 ; 2 uses
  %xtraiter243 = and i64 %wide.trip.count.i89, 3  ; 3 uses
  %i.mb = icmp ult i32 %.val26.i, 4
  br i1 %i.mb, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i89, 4294967292
  br label %bb.bh
end_hunk_1
begin_hunk_2_@_ZNK4absl12lts_2025051224synchronization_internal11GraphCycles8FindPathENS1_7GraphIdES3_iPS3_:bb.a
  %i.i = icmp ne i32 %i.f, %i.h
  %i.j = icmp eq ptr %i.d, null
  %i.k = or i1 %i.j, %i.i
  br i1 %i.k, label %bb.ag, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = and i64 %2, 4294967295
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.val53, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !22   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !49
  %i.q = lshr i64 %2, 32
  %i.r = trunc nuw i64 %i.q to i32
  %i.s = icmp ne i32 %i.p, %i.r
  %i.t = icmp eq ptr %i.n, null
  %i.u = or i1 %i.t, %i.s
  br i1 %i.u, label %bb.ag, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 44
  store ptr %i.v, ptr %5, align 8, !tbaa !24
  store i32 8, ptr %i.x, align 4, !tbaa !28
  store i32 8, ptr %i.w, align 8, !tbaa !27
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %indvars.iv.i.i.i = phi i64 [ 0, %bb.c ], [ %indvars.iv.next.i.i.i, %bb.d ] ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.i.i.i
  store i32 -1, ptr %i.y, align 4, !tbaa !3
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %.val.i.i.i = load i32, ptr %i.w, align 8, !tbaa !27
  %i.z = zext i32 %.val.i.i.i to i64
  %i.aa = icmp samesign ult i64 %indvars.iv.next.i.i.i, %i.z
  br i1 %i.aa, label %bb.d, label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSetC2Ev.exit, !llvm.loop !33

_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSetC2Ev.exit: ; preds = %bb.d
  %i.ab = trunc i64 %1 to i32
  %i.ac = trunc i64 %2 to i32
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i32 0, ptr %i.ad, align 8, !tbaa !34
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 1048888 ; 10 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !24 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 1048896 ; 5 uses
  %.not.i.i = icmp eq ptr %i.af, %i.ag
  br i1 %.not.i.i, label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSetC2Ev.exit
  invoke void @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc4FreeEPv(ptr noundef %i.af)
          to label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit unwind label %bb.h

_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit: ; preds = %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSetC2Ev.exit, %bb.e
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !24
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 1048928 ; 12 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 1048932 ; 5 uses
  store i32 8, ptr %i.ai, align 4, !tbaa !28
  store i32 %i.ab, ptr %i.ag, align 8, !tbaa !3
  store i32 1, ptr %i.ah, align 8, !tbaa !27
  br label %bb.f

thread-pre-split.loopexit:                        ; preds = %bb.ac, %bb.r, %.preheader
  %.val46.pr.pre = load i32, ptr %i.ah, align 8, !tbaa !27
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %thread-pre-split.loopexit, %bb.g
  %.val46.pr = phi i32 [ %i.ak, %bb.g ], [ %.val46.pr.pre, %thread-pre-split.loopexit ] ; 2 uses
  %.141.ph = phi i32 [ %i.ap, %bb.g ], [ %i.bd, %thread-pre-split.loopexit ]
  %i.aj = icmp eq i32 %.val46.pr, 0
  br i1 %i.aj, label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS4_.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit, %thread-pre-split
  %.040113 = phi i32 [ 0, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit ], [ %.141.ph, %thread-pre-split ] ; 4 uses
  %.val46112 = phi i32 [ 1, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit ], [ %.val46.pr, %thread-pre-split ] ; 2 uses
  %.val47 = load ptr, ptr %i.ae, align 8, !tbaa !24 ; 2 uses
  %i.ak = add i32 %.val46112, -1                  ; 5 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.val47, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !3  ; 4 uses
  store i32 %i.ak, ptr %i.ah, align 8, !tbaa !27
  %i.ao = icmp slt i32 %i.an, 0
  br i1 %i.ao, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ap = add nsw i32 %.040113, -1
  br label %thread-pre-split, !llvm.loop !65

bb.h:                                             ; preds = %bb.e
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.i:                                             ; preds = %bb.f
  %i.ar = icmp slt i32 %.040113, %3
  br i1 %i.ar, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.as = load ptr, ptr %0, align 8, !tbaa !7
  %.val = load ptr, ptr %i.as, align 8, !tbaa !20
  %i.at = zext nneg i32 %i.an to i64              ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.at
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !22
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !49
  %i.ay = zext i32 %i.ax to i64
  %i.az = shl nuw i64 %i.ay, 32
  %i.ba = or disjoint i64 %i.az, %i.at
  %i.bb = sext i32 %.040113 to i64
  %i.bc = getelementptr inbounds [8 x i8], ptr %4, i64 %i.bb
  store i64 %i.ba, ptr %i.bc, align 8, !tbaa !66
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bd = add nsw i32 %.040113, 1                 ; 2 uses
  %i.be = load i32, ptr %i.ai, align 4, !tbaa !28
  %i.bf = icmp eq i32 %i.ak, %i.be
  br i1 %i.bf, label %.lr.ph.i.i59, label %bb.p

.lr.ph.i.i59:                                     ; preds = %bb.k, %.lr.ph.i.i59
  %i.bg = phi i32 [ %i.bh, %.lr.ph.i.i59 ], [ %i.ak, %bb.k ]
  %i.bh = shl i32 %i.bg, 1                        ; 4 uses
  %i.bi = icmp ult i32 %i.bh, %.val46112
  br i1 %i.bi, label %.lr.ph.i.i59, label %bb.l, !llvm.loop !47

bb.l:                                             ; preds = %.lr.ph.i.i59
  store i32 %i.bh, ptr %i.ai, align 4, !tbaa !28
  %i.bj = zext i32 %i.bh to i64
  %i.bk = shl nuw nsw i64 %i.bj, 2
  %i.bl = load ptr, ptr @_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_15arenaE, align 8, !tbaa !18
  %i.bm = invoke noundef ptr @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc14AllocWithArenaEmPNS2_5ArenaE(i64 noundef %i.bk, ptr noundef %i.bl)
          to label %.noexc68 unwind label %bb.q   ; 4 uses

.noexc68:                                         ; preds = %bb.l
  %i.bn = load ptr, ptr %i.ae, align 8, !tbaa !24 ; 4 uses
  %i.bo = load i32, ptr %i.ah, align 8, !tbaa !27 ; 2 uses
  switch i32 %i.bo, label %bb.m [
    i32 0, label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i62
    i32 1, label %bb.n
  ], !prof !21

bb.m:                                             ; preds = %.noexc68
  %i.bp = zext i32 %i.bo to i64
  %.idx.i.i.i.i66 = shl nuw nsw i64 %i.bp, 2
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.bm, ptr align 4 %i.bn, i64 %.idx.i.i.i.i66, i1 false)
  %.pre.i.i67 = load ptr, ptr %i.ae, align 8, !tbaa !24
  br label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i62

bb.n:                                             ; preds = %.noexc68
  %i.bq = load i32, ptr %i.bn, align 4, !tbaa !3
  store i32 %i.bq, ptr %i.bm, align 4, !tbaa !3
  br label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i62

_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i62:        ; preds = %bb.n, %bb.m, %.noexc68
  %i.br = phi ptr [ %i.bn, %.noexc68 ], [ %.pre.i.i67, %bb.m ], [ %i.bn, %bb.n ] ; 2 uses
  %.not.i4.i.i63 = icmp eq ptr %i.br, %i.ag
  br i1 %.not.i4.i.i63, label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i64, label %bb.o

bb.o:                                             ; preds = %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i62
  invoke void @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc4FreeEPv(ptr noundef %i.br)
          to label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i64 unwind label %bb.q

_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i64: ; preds = %bb.o, %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i62
  store ptr %i.bm, ptr %i.ae, align 8, !tbaa !24
  %.pre1.i65 = load i32, ptr %i.ah, align 8, !tbaa !27
  %.pre = zext i32 %.pre1.i65 to i64
  br label %bb.p

bb.p:                                             ; preds = %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i64, %bb.k
  %.pre-phi = phi i64 [ %.pre, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i64 ], [ %i.al, %bb.k ]
  %i.bs = phi ptr [ %i.bm, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i64 ], [ %.val47, %bb.k ]
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %.pre-phi
  store i32 -1, ptr %i.bt, align 4, !tbaa !3
  %i.bu = load i32, ptr %i.ah, align 8, !tbaa !27
  %i.bv = add i32 %i.bu, 1
  store i32 %i.bv, ptr %i.ah, align 8, !tbaa !27
  %i.bw = icmp eq i32 %i.an, %i.ac
  br i1 %i.bw, label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS4_.exit, label %.preheader

.preheader:                                       ; preds = %bb.p
  %i.bx = zext nneg i32 %i.an to i64              ; 2 uses
  %.val45136 = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %.val45136, i64 %i.bx
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !22 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 120
  %.val.i138 = load i32, ptr %i.ca, align 8, !tbaa !27 ; 2 uses
  %exitcond.not133140 = icmp eq i32 %.val.i138, 0
  br i1 %exitcond.not133140, label %thread-pre-split.loopexit, label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %.preheader
  %wide.trip.count139 = zext i32 %.val.i138 to i64
  br label %.lr.ph

bb.q:                                             ; preds = %bb.o, %bb.l
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %bb.ac
  %wide.trip.count142 = phi i64 [ %wide.trip.count139, %.lr.ph.lr.ph ], [ %wide.trip.count, %bb.ac ]
  %i.cc = phi i64 [ 0, %.lr.ph.lr.ph ], [ %6, %bb.ac ]
  %.pn = phi ptr [ %i.bz, %.lr.ph.lr.ph ], [ %i.dg, %bb.ac ]
  %.val10.i141.in = getelementptr inbounds nuw i8, ptr %.pn, i64 80
  %.val10.i141 = load ptr, ptr %.val10.i141.in, align 8
  br label %bb.s

bb.r:                                             ; preds = %bb.s
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count142
  br i1 %exitcond.not, label %thread-pre-split.loopexit, label %bb.s

bb.s:                                             ; preds = %.lr.ph, %bb.r
  %indvars.iv134 = phi i64 [ %i.cc, %.lr.ph ], [ %indvars.iv.next, %bb.r ] ; 2 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %.val10.i141, i64 %indvars.iv134
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !3  ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv134, 1 ; 4 uses
  %i.cf = icmp sgt i32 %i.ce, -1
  br i1 %i.cf, label %bb.u, label %bb.r

bb.t:                                             ; preds = %bb.ab, %bb.y, %bb.u
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.u:                                             ; preds = %bb.s
  %i.ch = trunc nuw i64 %indvars.iv.next to i32
  %i.ci = invoke fastcc noundef zeroext i1 @_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet6insertEi(ptr noundef nonnull align 8 dereferenceable(52) %5, i32 noundef %i.ce)
          to label %bb.v unwind label %bb.t

bb.v:                                             ; preds = %bb.u
  br i1 %i.ci, label %bb.w, label %bb.ac

bb.w:                                             ; preds = %bb.v
  %i.cj = load i32, ptr %i.ah, align 8, !tbaa !27 ; 5 uses
  %i.ck = load i32, ptr %i.ai, align 4, !tbaa !28
  %i.cl = icmp eq i32 %i.cj, %i.ck
  br i1 %i.cl, label %bb.x, label %._crit_edge.i72

._crit_edge.i72:                                  ; preds = %bb.w
  %.pre.i73 = load ptr, ptr %i.ae, align 8, !tbaa !24
  br label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit86

bb.x:                                             ; preds = %bb.w
  %i.cm = add i32 %i.cj, 1
  %.not.i74 = icmp eq i32 %i.cj, -1
  br i1 %.not.i74, label %bb.y, label %.lr.ph.i.i75

.lr.ph.i.i75:                                     ; preds = %bb.x, %.lr.ph.i.i75
  %i.cn = phi i32 [ %i.co, %.lr.ph.i.i75 ], [ %i.cj, %bb.x ]
  %i.co = shl i32 %i.cn, 1                        ; 4 uses
  %i.cp = icmp ult i32 %i.co, %i.cm
  br i1 %i.cp, label %.lr.ph.i.i75, label %._crit_edge.i.i76, !llvm.loop !47

._crit_edge.i.i76:                                ; preds = %.lr.ph.i.i75
  store i32 %i.co, ptr %i.ai, align 4, !tbaa !28
  %i.cq = zext i32 %i.co to i64
  %i.cr = shl nuw nsw i64 %i.cq, 2
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge.i.i76, %bb.x
  %.lcssa.i.i77 = phi i64 [ %i.cr, %._crit_edge.i.i76 ], [ 17179869180, %bb.x ]
  %i.cs = load ptr, ptr @_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_15arenaE, align 8, !tbaa !18
  %i.ct = invoke noundef ptr @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc14AllocWithArenaEmPNS2_5ArenaE(i64 noundef %.lcssa.i.i77, ptr noundef %i.cs)
          to label %.noexc84 unwind label %bb.t   ; 4 uses

.noexc84:                                         ; preds = %bb.y
  %i.cu = load ptr, ptr %i.ae, align 8, !tbaa !24 ; 4 uses
  %i.cv = load i32, ptr %i.ah, align 8, !tbaa !27 ; 2 uses
  switch i32 %i.cv, label %bb.z [
    i32 0, label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i78
    i32 1, label %bb.aa
  ], !prof !21

bb.z:                                             ; preds = %.noexc84
  %i.cw = zext i32 %i.cv to i64
  %.idx.i.i.i.i82 = shl nuw nsw i64 %i.cw, 2
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ct, ptr align 4 %i.cu, i64 %.idx.i.i.i.i82, i1 false)
  %.pre.i.i83 = load ptr, ptr %i.ae, align 8, !tbaa !24
  br label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i78

bb.aa:                                            ; preds = %.noexc84
  %i.cx = load i32, ptr %i.cu, align 4, !tbaa !3
  store i32 %i.cx, ptr %i.ct, align 4, !tbaa !3
  br label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i78

_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i78:        ; preds = %bb.aa, %bb.z, %.noexc84
  %i.cy = phi ptr [ %i.cu, %.noexc84 ], [ %.pre.i.i83, %bb.z ], [ %i.cu, %bb.aa ] ; 2 uses
  %.not.i4.i.i79 = icmp eq ptr %i.cy, %i.ag
  br i1 %.not.i4.i.i79, label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i80, label %bb.ab

bb.ab:                                            ; preds = %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i78
  invoke void @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc4FreeEPv(ptr noundef %i.cy)
          to label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i80 unwind label %bb.t

_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i80: ; preds = %bb.ab, %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i78
  store ptr %i.ct, ptr %i.ae, align 8, !tbaa !24
  %.pre1.i81 = load i32, ptr %i.ah, align 8, !tbaa !27
  br label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit86

_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit86: ; preds = %._crit_edge.i72, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i80
  %i.cz = phi i32 [ %i.cj, %._crit_edge.i72 ], [ %.pre1.i81, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i80 ]
  %i.da = phi ptr [ %.pre.i73, %._crit_edge.i72 ], [ %i.ct, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i80 ]
  %i.db = zext i32 %i.cz to i64
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %i.db
  store i32 %i.ce, ptr %i.dc, align 4, !tbaa !3
  %i.dd = load i32, ptr %i.ah, align 8, !tbaa !27
  %i.de = add i32 %i.dd, 1
  store i32 %i.de, ptr %i.ah, align 8, !tbaa !27
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit86, %bb.v
  %.val45 = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %.val45, i64 %i.bx
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !22 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 120
  %.val.i = load i32, ptr %i.dh, align 8, !tbaa !27
  %6 = and i64 %indvars.iv.next, 4294967295       ; 2 uses
  %umax = call i32 @llvm.umax.i32(i32 %i.ch, i32 %.val.i)
  %wide.trip.count = zext i32 %umax to i64        ; 2 uses
  %exitcond.not133 = icmp eq i64 %6, %wide.trip.count
  br i1 %exitcond.not133, label %thread-pre-split.loopexit, label %.lr.ph, !llvm.loop !67

_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS4_.exit: ; preds = %bb.p, %thread-pre-split
  %.2 = phi i32 [ 0, %thread-pre-split ], [ %i.bd, %bb.p ]
  %i.di = load ptr, ptr %5, align 8, !tbaa !24    ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.di, %i.v
  br i1 %.not.i.i.i, label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSetD2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS4_.exit
  invoke void @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc4FreeEPv(ptr noundef %i.di)
          to label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSetD2Ev.exit unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dj = landingpad { ptr, i32 }
          catch ptr null
  %i.dk = extractvalue { ptr, i32 } %i.dj, 0
  call void @__clang_call_terminate(ptr %i.dk) #18
  unreachable

_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSetD2Ev.exit: ; preds = %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS4_.exit, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %bb.ag

bb.af:                                            ; preds = %bb.q, %bb.t, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %i.aq, %bb.h ], [ %i.cg, %bb.t ], [ %i.cb, %bb.q ]
  call fastcc void @_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSetD2Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  resume { ptr, i32 } %.pn.pn

bb.ag:                                            ; preds = %bb.a, %bb.b, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSetD2Ev.exit
  %.3 = phi i32 [ %.2, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSetD2Ev.exit ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.3
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK4absl12lts_2025051224synchronization_internal11GraphCycles11IsReachableENS1_7GraphIdES3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i64 %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZNK4absl12lts_2025051224synchronization_internal11GraphCycles8FindPathENS1_7GraphIdES3_iPS3_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 %1, i64 %2, i32 noundef 0, ptr noundef null)
  %i.b = icmp sgt i32 %i.a, 0
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2025051224synchronization_internal11GraphCycles16UpdateStackTraceENS1_7GraphIdEiPFiPPviE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i64 %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !7
  %.val = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.b = and i64 %1, 4294967295
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !22   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !49
  %i.g = lshr i64 %1, 32
  %i.h = trunc nuw i64 %i.g to i32
  %i.i = icmp ne i32 %i.f, %i.h
  %i.j = icmp eq ptr %i.d, null
  %i.k = or i1 %i.j, %i.i
  br i1 %i.k, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 136 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !51
  %.not = icmp slt i32 %i.m, %2
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %i.o = tail call noundef i32 %3(ptr noundef nonnull %i.n, i32 noundef 40)
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 140
  store i32 %i.o, ptr %i.p, align 4, !tbaa !50
  store i32 %2, ptr %i.l, align 8, !tbaa !51
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZN4absl12lts_2025051224synchronization_internal11GraphCycles13GetStackTraceENS1_7GraphIdEPPPv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i64 %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !7
  %.val = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.b = and i64 %1, 4294967295
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !22   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !49
  %i.g = lshr i64 %1, 32
  %i.h = trunc nuw i64 %i.g to i32
  %i.i = icmp ne i32 %i.f, %i.h
  %i.j = icmp eq ptr %i.d, null
  %i.k = or i1 %i.j, %i.i
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 140
  %i.n = load i32, ptr %i.m, align 4, !tbaa !50
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %i.l, %bb.b ], [ null, %bb.a ]
  %.0 = phi i32 [ %i.n, %bb.b ], [ 0, %bb.a ]
  store ptr %.sink, ptr %2, align 8, !tbaa !68
  ret i32 %.0
}

declare noundef ptr @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc8NewArenaEj(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold
declare void @_ZN4absl12lts_2025051213base_internal8SpinLock8SlowLockEv(ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #10

; Function Attrs: cold
declare void @_ZN4absl12lts_2025051213base_internal8SpinLock10SlowUnlockEj(ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiED2Ev(ptr nofree noundef nonnull readonly align 8 captures(address) dead_on_return(48) dereferenceable(48) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !24     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.not.i = icmp eq ptr %i.a, %i.b
  br i1 %.not.i, label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE7DiscardEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc4FreeEPv(ptr noundef %i.a)
          to label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE7DiscardEv.exit unwind label %bb.c

_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE7DiscardEv.exit: ; preds = %bb.a, %bb.b
  ret void

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #18
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4absl12lts_2025051224synchronization_internalL4SortERKNS1_12_GLOBAL__N_13VecIPNS2_4NodeEEEPNS3_IiEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, ptr %.0.val, i32 %.40.val) unnamed_addr #11 {
bb.a:
  %i.a = zext i32 %.40.val to i64                 ; 2 uses
  %.idx = shl nuw nsw i64 %i.a, 2
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 %.idx ; 3 uses
  %.not.i.i = icmp eq i32 %.40.val, 0
  br i1 %.not.i.i, label %_ZSt4sortIPiZN4absl12lts_2025051224synchronization_internalL4SortERKNS3_12_GLOBAL__N_13VecIPNS4_4NodeEEEPNS5_IiEEE6ByRankEvT_SE_T0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %.0.val to i64
  %i.d = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.a, i1 true)
  %i.e = shl nuw nsw i64 %i.d, 1
  %i.f = xor i64 %i.e, 126
  tail call fastcc void @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl12lts_2025051224synchronization_internalL4SortERKNS6_12_GLOBAL__N_13VecIPNS7_4NodeEEEPNS8_IiEEE6ByRankEEEvT_SI_T0_T1_(ptr noundef %.0.val, ptr noundef nonnull %i.b, i64 noundef %i.f, ptr nonnull readonly %0)
  %i.g = icmp ugt i32 %.40.val, 16
  %scevgep.i.i.i = getelementptr i8, ptr %.0.val, i64 4 ; 2 uses
  br i1 %i.g, label %.preheader.i, label %bb.h

.preheader.i:                                     ; preds = %bb.b, %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i.i.i.i
  %.021.i.idx.i.i.i = phi i64 [ %.021.i.add.i.i.i, %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i.i.i.i ], [ 4, %bb.b ] ; 4 uses
  %.pn20.i.i.i.i = phi ptr [ %.021.i.ptr.i.i.i, %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i.i.i.i ], [ %.0.val, %bb.b ] ; 3 uses
  %.021.i.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 %.021.i.idx.i.i.i ; 4 uses
  %.0.val.i.i.i.i = load i32, ptr %.021.i.ptr.i.i.i, align 4, !tbaa !3 ; 2 uses
  %.val17.i.i.i.i = load i32, ptr %.0.val, align 4, !tbaa !3 ; 2 uses
  %.val.val.i.i.i.i = load ptr, ptr %0, align 8, !tbaa !20 ; 4 uses
  %i.h = zext i32 %.0.val.i.i.i.i to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i.i.i.i, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !22   ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !43   ; 2 uses
  %i.l = zext i32 %.val17.i.i.i.i to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i.i.i.i, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !22
  %i.o = load i32, ptr %i.n, align 8, !tbaa !43
  %i.p = icmp slt i32 %i.k, %i.o
  br i1 %i.p, label %bb.c, label %bb.f

bb.c:                                             ; preds = %.preheader.i
  %i.q = icmp samesign ugt i64 %.021.i.idx.i.i.i, 4
  br i1 %i.q, label %bb.d, label %bb.e, !prof !62

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i, ptr noundef nonnull align 4 dereferenceable(1) %.0.val, i64 %.021.i.idx.i.i.i, i1 false)
  br label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %.pn20.i.i.i.i, i64 4
  store i32 %.val17.i.i.i.i, ptr %i.r, align 4, !tbaa !3
  br label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i.i.i.i

bb.f:                                             ; preds = %.preheader.i
  %.0.val13.i.i.i.i.i = load i32, ptr %.pn20.i.i.i.i, align 4, !tbaa !3 ; 2 uses
  %i.s = zext i32 %.0.val13.i.i.i.i.i to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i.i.i.i, i64 %i.s
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !22
  %i.v = load i32, ptr %i.u, align 8, !tbaa !43
  %i.w = icmp slt i32 %i.k, %i.v
  br i1 %i.w, label %.lr.ph.i.i.i.i.i, label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i.i.i.i

end_hunk_2
