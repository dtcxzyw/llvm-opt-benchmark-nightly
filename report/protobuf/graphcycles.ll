inline.NumInlined: 335
inline.NumDeleted: 137
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet6insertEi:bb.a
  %i.bx = load i32, ptr %.011.i27, align 4, !tbaa !3 ; 2 uses
  %i.by = icmp sgt i32 %i.bx, -1
  br i1 %i.by, label %bb.u, label %bb.w

bb.u:                                             ; preds = %.lr.ph
  %i.bz = invoke fastcc noundef zeroext i1 @_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet6insertEi(ptr noundef nonnull align 8 dereferenceable(52) %0, i32 noundef %i.bx)
          to label %bb.w unwind label %bb.v, !inline_history !48 ; 0 uses

bb.v:                                             ; preds = %bb.u
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.w:                                             ; preds = %bb.u, %.lr.ph
  %i.cb = getelementptr inbounds nuw i8, ptr %.011.i27, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.cb, %i.bv
  br i1 %.not.i, label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet4GrowEv.exit.loopexit, label %.lr.ph

bb.x:                                             ; preds = %bb.v, %bb.t
  %.pn.i = phi { ptr, i32 } [ %i.ca, %bb.v ], [ %i.bw, %bb.t ]
  call fastcc void @_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %2) #17, !inline_history !48
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  resume { ptr, i32 } %.pn.i

_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet4GrowEv.exit.loopexit: ; preds = %bb.w
  %.pre39 = load ptr, ptr %2, align 8, !tbaa !24
  br label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet4GrowEv.exit

_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet4GrowEv.exit: ; preds = %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet4GrowEv.exit.loopexit, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4fillERKi.exit
  %i.cc = phi ptr [ %.pre39, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet4GrowEv.exit.loopexit ], [ %.val15.i, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4fillERKi.exit ] ; 2 uses
  %.not.i.i = icmp eq ptr %i.cc, %i.ab
  br i1 %.not.i.i, label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet4GrowEv.exit
  invoke void @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc4FreeEPv(ptr noundef %i.cc)
          to label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiED2Ev.exit unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cd = landingpad { ptr, i32 }
          catch ptr null
  %i.ce = extractvalue { ptr, i32 } %i.cd, 0
  call void @__clang_call_terminate(ptr %i.ce) #18
  unreachable

_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiED2Ev.exit: ; preds = %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet4GrowEv.exit, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.thread

_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.thread: ; preds = %bb.b, %bb.a, %bb.e, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiED2Ev.exit, %_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit
  %i.cf = phi i1 [ false, %_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit ], [ true, %bb.e ], [ true, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiED2Ev.exit ], [ false, %bb.a ], [ false, %bb.b ]
  ret i1 %i.cf
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSetD2Ev(ptr nofree noundef nonnull readonly align 8 captures(address) dead_on_return(52) dereferenceable(52) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !24     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.not.i.i = icmp eq ptr %i.a, %i.b
  br i1 %.not.i.i, label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc4FreeEPv(ptr noundef %i.a)
          to label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #18
  unreachable

_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define i64 @_ZN4absl12lts_2025051224synchronization_internal11GraphCycles5GetIdEPv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !7      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 128 ; 2 uses
  %i.c = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.e = urem i64 %i.c, 262139                    ; 2 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.e ; 3 uses
  %.01419.i = load i32, ptr %i.f, align 4, !tbaa !3 ; 2 uses
  %.not20.i = icmp eq i32 %.01419.i, -1
  br i1 %.not20.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !29
  %.val.i = load ptr, ptr %i.g, align 8, !tbaa !20
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.014.i = load i32, ptr %i.h, align 8, !tbaa !3 ; 2 uses
  %.not.i = icmp eq i32 %.014.i, -1
  br i1 %.not.i, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %.01421.i = phi i32 [ %.01419.i, %.lr.ph.i ], [ %.014.i, %bb.b ]
  %i.i = zext i32 %.01421.i to i64                ; 3 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !22   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !36
  %i.n = xor i64 %i.m, %i.c
  %.not16.i = icmp eq i64 %i.n, -1136490970041655429
  br i1 %.not16.i, label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_110PointerMap4FindEPv.exit, label %bb.b

_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_110PointerMap4FindEPv.exit: ; preds = %bb.c
  %.val16 = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %.val16, i64 %i.i
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !22
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !49
  %i.s = zext i32 %i.r to i64
  %i.t = shl nuw i64 %i.s, 32
  %i.u = or disjoint i64 %i.t, %i.i
  br label %bb.m

.loopexit:                                        ; preds = %bb.b, %bb.a
  %i.v = getelementptr i8, ptr %i.a, i64 120      ; 2 uses
  %.val17 = load i32, ptr %i.v, align 8, !tbaa !27 ; 2 uses
  %i.w = icmp eq i32 %.val17, 0
  br i1 %i.w, label %bb.d, label %bb.l

bb.d:                                             ; preds = %.loopexit
  %i.x = load ptr, ptr @_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_15arenaE, align 8, !tbaa !18
  %i.y = tail call noundef ptr @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc14AllocWithArenaEmPNS2_5ArenaE(i64 noundef 464, ptr noundef %i.x) ; 19 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 32 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 64 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 68
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !24
  store i32 8, ptr %i.ac, align 4, !tbaa !28
  store i32 8, ptr %i.ab, align 8, !tbaa !27
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %indvars.iv.i.i.i.i = phi i64 [ 0, %bb.d ], [ %indvars.iv.next.i.i.i.i, %bb.e ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv.i.i.i.i
  store i32 -1, ptr %i.ad, align 4, !tbaa !3
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %.val.i.i.i.i = load i32, ptr %i.ab, align 8, !tbaa !27
  %i.ae = zext i32 %.val.i.i.i.i to i64
  %i.af = icmp samesign ult i64 %indvars.iv.next.i.i.i.i, %i.ae
  br i1 %i.af, label %bb.e, label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSetC2Ev.exit.i, !llvm.loop !33

_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSetC2Ev.exit.i: ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 72
  store i32 0, ptr %i.ag, align 8, !tbaa !34
  %i.ah = getelementptr inbounds nuw i8, ptr %i.y, i64 80
  %i.ai = getelementptr inbounds nuw i8, ptr %i.y, i64 88 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 120 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.y, i64 124
  store ptr %i.ai, ptr %i.ah, align 8, !tbaa !24
  store i32 8, ptr %i.ak, align 4, !tbaa !28
  store i32 8, ptr %i.aj, align 8, !tbaa !27
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSetC2Ev.exit.i
  %indvars.iv.i.i.i2.i = phi i64 [ 0, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSetC2Ev.exit.i ], [ %indvars.iv.next.i.i.i3.i, %bb.f ] ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv.i.i.i2.i
  store i32 -1, ptr %i.al, align 4, !tbaa !3
  %indvars.iv.next.i.i.i3.i = add nuw nsw i64 %indvars.iv.i.i.i2.i, 1 ; 2 uses
  %.val.i.i.i4.i = load i32, ptr %i.aj, align 8, !tbaa !27
  %i.am = zext i32 %.val.i.i.i4.i to i64
  %i.an = icmp samesign ult i64 %indvars.iv.next.i.i.i3.i, %i.am
  br i1 %i.an, label %bb.f, label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_14NodeC2Ev.exit, !llvm.loop !33

_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_14NodeC2Ev.exit: ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %i.y, i64 128
  store i32 0, ptr %i.ao, align 8, !tbaa !34
  %i.ap = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  store i32 1, ptr %i.ap, align 4, !tbaa !49
  %i.aq = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  store i8 0, ptr %i.aq, align 4, !tbaa !40
  %i.ar = load ptr, ptr %0, align 8, !tbaa !7     ; 8 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 72     ; 4 uses
  %.val = load i32, ptr %i.as, align 8, !tbaa !11 ; 7 uses
  store i32 %.val, ptr %i.y, align 8, !tbaa !43
  %i.at = xor i64 %i.c, -1136490970041655429
  %i.au = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store i64 %i.at, ptr %i.au, align 8, !tbaa !36
  %i.av = getelementptr inbounds nuw i8, ptr %i.y, i64 140
  store i32 0, ptr %i.av, align 4, !tbaa !50
  %i.aw = getelementptr inbounds nuw i8, ptr %i.y, i64 136
  store i32 0, ptr %i.aw, align 8, !tbaa !51
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 76 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !15
  %i.az = icmp eq i32 %.val, %i.ay
  br i1 %i.az, label %bb.g, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_14NodeC2Ev.exit
  %.pre.i = load ptr, ptr %i.ar, align 8, !tbaa !20
  br label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIPNS2_4NodeEE9push_backERKS5_.exit

bb.g:                                             ; preds = %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_14NodeC2Ev.exit
  %.not.i21 = icmp eq i32 %.val, -1
  br i1 %.not.i21, label %bb.h, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.i.i
  %i.ba = phi i32 [ %i.bb, %.lr.ph.i.i ], [ %.val, %bb.g ]
  %i.bb = shl i32 %i.ba, 1                        ; 4 uses
  %.not5.i = icmp ugt i32 %i.bb, %.val
  br i1 %.not5.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !16

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  store i32 %i.bb, ptr %i.ax, align 4, !tbaa !15
  %i.bc = zext i32 %i.bb to i64
  %i.bd = shl nuw nsw i64 %i.bc, 3
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge.i.i, %bb.g
  %.lcssa.i.i = phi i64 [ %i.bd, %._crit_edge.i.i ], [ 34359738360, %bb.g ]
  %i.be = load ptr, ptr @_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_15arenaE, align 8, !tbaa !18
  %i.bf = tail call noundef ptr @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc14AllocWithArenaEmPNS2_5ArenaE(i64 noundef %.lcssa.i.i, ptr noundef %i.be) ; 4 uses
  %i.bg = load ptr, ptr %i.ar, align 8, !tbaa !20 ; 4 uses
  %i.bh = load i32, ptr %i.as, align 8, !tbaa !11 ; 2 uses
  switch i32 %i.bh, label %bb.i [
    i32 0, label %_ZSt6copy_nIPPN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_14NodeEjS6_ET1_T_T0_S7_.exit.i.i
    i32 1, label %bb.j
  ], !prof !21

bb.i:                                             ; preds = %bb.h
  %i.bi = zext i32 %i.bh to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.bi, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bf, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.bg, i64 %.idx.i.i.i.i, i1 false)
  %.pre.i.i = load ptr, ptr %i.ar, align 8, !tbaa !20
  br label %_ZSt6copy_nIPPN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_14NodeEjS6_ET1_T_T0_S7_.exit.i.i

bb.j:                                             ; preds = %bb.h
  %.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bg, align 8, !tbaa !22
  store ptr %.val.i.i.i.i.i.i.i.i.i, ptr %i.bf, align 8, !tbaa !22
  br label %_ZSt6copy_nIPPN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_14NodeEjS6_ET1_T_T0_S7_.exit.i.i

_ZSt6copy_nIPPN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_14NodeEjS6_ET1_T_T0_S7_.exit.i.i: ; preds = %bb.j, %bb.i, %bb.h
  %i.bj = phi ptr [ %i.bg, %bb.h ], [ %.pre.i.i, %bb.i ], [ %i.bg, %bb.j ] ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.not.i4.i.i = icmp eq ptr %i.bj, %i.bk
  br i1 %.not.i4.i.i, label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIPNS2_4NodeEE4GrowEj.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZSt6copy_nIPPN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_14NodeEjS6_ET1_T_T0_S7_.exit.i.i
  tail call void @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc4FreeEPv(ptr noundef %i.bj)
  br label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIPNS2_4NodeEE4GrowEj.exit.i

_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIPNS2_4NodeEE4GrowEj.exit.i: ; preds = %bb.k, %_ZSt6copy_nIPPN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_14NodeEjS6_ET1_T_T0_S7_.exit.i.i
  store ptr %i.bf, ptr %i.ar, align 8, !tbaa !20
  %.pre1.i = load i32, ptr %i.as, align 8, !tbaa !11
  %.pre = load ptr, ptr %0, align 8, !tbaa !7
  %.pre31 = load i32, ptr %i.y, align 8, !tbaa !43
  br label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIPNS2_4NodeEE9push_backERKS5_.exit

_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIPNS2_4NodeEE9push_backERKS5_.exit: ; preds = %._crit_edge.i, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIPNS2_4NodeEE4GrowEj.exit.i
  %i.bl = phi i32 [ %.val, %._crit_edge.i ], [ %.pre31, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIPNS2_4NodeEE4GrowEj.exit.i ] ; 2 uses
  %i.bm = phi ptr [ %i.ar, %._crit_edge.i ], [ %.pre, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIPNS2_4NodeEE4GrowEj.exit.i ] ; 2 uses
  %i.bn = phi i32 [ %.val, %._crit_edge.i ], [ %.pre1.i, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIPNS2_4NodeEE4GrowEj.exit.i ] ; 2 uses
  %i.bo = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.bf, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIPNS2_4NodeEE4GrowEj.exit.i ]
  %i.bp = zext i32 %i.bn to i64
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bp
  store ptr %i.y, ptr %i.bq, align 8, !tbaa !22
  %i.br = add i32 %i.bn, 1
  store i32 %i.br, ptr %i.as, align 8, !tbaa !11
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 128
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 136
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.e ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !3
  %i.bw = load ptr, ptr %i.bs, align 8, !tbaa !29
  %.val.i22 = load ptr, ptr %i.bw, align 8, !tbaa !20
  %i.bx = zext i32 %i.bl to i64
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %.val.i22, i64 %i.bx
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !22
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store i32 %i.bv, ptr %i.ca, align 8, !tbaa !52
  store i32 %i.bl, ptr %i.bu, align 4, !tbaa !3
  %i.cb = load i64, ptr %i.y, align 8
  br label %bb.m

bb.l:                                             ; preds = %.loopexit
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %.val19 = load ptr, ptr %i.cc, align 8, !tbaa !24
  %i.cd = add i32 %.val17, -1                     ; 2 uses
  %i.ce = zext i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %.val19, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !3  ; 2 uses
  store i32 %i.cd, ptr %i.v, align 8, !tbaa !27
  %.val15 = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.ch = zext i32 %i.cg to i64                   ; 3 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %.val15, i64 %i.ch
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !22 ; 4 uses
  %i.ck = xor i64 %i.c, -1136490970041655429
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  store i64 %i.ck, ptr %i.cl, align 8, !tbaa !36
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 140
  store i32 0, ptr %i.cm, align 4, !tbaa !50
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 136
  store i32 0, ptr %i.cn, align 8, !tbaa !51
  %i.co = load i32, ptr %i.f, align 4, !tbaa !3
  %i.cp = load ptr, ptr %i.b, align 8, !tbaa !29
  %.val.i23 = load ptr, ptr %i.cp, align 8, !tbaa !20
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %.val.i23, i64 %i.ch
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !22
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store i32 %i.co, ptr %i.cs, align 8, !tbaa !52
  store i32 %i.cg, ptr %i.f, align 4, !tbaa !3
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !49
  %i.cv = zext i32 %i.cu to i64
  %i.cw = shl nuw i64 %i.cv, 32
  %i.cx = or disjoint i64 %i.cw, %i.ch
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIPNS2_4NodeEE9push_backERKS5_.exit, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_110PointerMap4FindEPv.exit
  %.sroa.0.0 = phi i64 [ %i.u, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_110PointerMap4FindEPv.exit ], [ %i.cb, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIPNS2_4NodeEE9push_backERKS5_.exit ], [ %i.cx, %bb.l ]
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
  %i.af = phi i64 [ 0, %.lr.ph169.lr.ph ], [ %i.bj, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit ]
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
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051224synchronization_internal11GraphCycles10RemoveNodeEPv:bb.a
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
  %i.bj = and i64 %indvars.iv.next, 4294967295    ; 2 uses
  %umax = tail call i32 @llvm.umax.i32(i32 %i.al, i32 %.val.i16)
  %wide.trip.count = zext i32 %umax to i64        ; 2 uses
  %exitcond.not166 = icmp eq i64 %i.bj, %wide.trip.count
  br i1 %exitcond.not166, label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS4_.exit.preheader, label %.lr.ph169, !llvm.loop !53

.lr.ph179:                                        ; preds = %.lr.ph179.lr.ph, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit45
  %wide.trip.count116186 = phi i64 [ %wide.trip.count116183, %.lr.ph179.lr.ph ], [ %wide.trip.count116, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit45 ]
  %i.bk = phi i64 [ 0, %.lr.ph179.lr.ph ], [ %i.dd, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit45 ]
  %.val10.i19185 = phi ptr [ %.val10.i19181, %.lr.ph179.lr.ph ], [ %.val10.i19, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit45 ] ; 2 uses
  br label %bb.h

bb.g:                                             ; preds = %bb.h
  %exitcond117.not = icmp eq i64 %indvars.iv.next113, %wide.trip.count116186
  br i1 %exitcond117.not, label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS4_.exit23, label %bb.h

bb.h:                                             ; preds = %.lr.ph179, %bb.g
  %indvars.iv112178 = phi i64 [ %i.bk, %.lr.ph179 ], [ %indvars.iv.next113, %bb.g ] ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %.val10.i19185, i64 %indvars.iv112178
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !3  ; 2 uses
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112178, 1 ; 4 uses
  %i.bn = icmp sgt i32 %i.bm, -1
  br i1 %i.bn, label %bb.m, label %bb.g

_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS4_.exit23: ; preds = %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit45, %bb.g, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS4_.exit.preheader
  %.val10.i19.lcssa = phi ptr [ %.val10.i19185, %bb.g ], [ %.val10.i19181, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS4_.exit.preheader ], [ %.val10.i19, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit45 ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ab, i64 32 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %.val10.i19.lcssa, %i.bo
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i, label %bb.i

bb.i:                                             ; preds = %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS4_.exit23
  tail call void @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc4FreeEPv(ptr noundef %.val10.i19.lcssa)
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.i, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS4_.exit23
  store ptr %i.bo, ptr %i.ag, align 8, !tbaa !24
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ab, i64 68
  store i32 8, ptr %i.bp, align 4, !tbaa !28
  store i32 8, ptr %i.ah, align 8, !tbaa !27
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.j ] ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv.i.i.i
  store i32 -1, ptr %i.bq, align 4, !tbaa !3
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %.val.i.i.i = load i32, ptr %i.ah, align 8, !tbaa !27
  %i.br = zext i32 %.val.i.i.i to i64
  %i.bs = icmp samesign ult i64 %indvars.iv.next.i.i.i, %i.br
  br i1 %i.bs, label %bb.j, label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet5clearEv.exit, !llvm.loop !33

_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet5clearEv.exit: ; preds = %bb.j
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ab, i64 72
  store i32 0, ptr %i.bt, align 8, !tbaa !34
  %i.bu = load ptr, ptr %i.ac, align 8, !tbaa !24 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ab, i64 88 ; 3 uses
  %.not.i.i.i.i24 = icmp eq ptr %i.bu, %i.bv
  br i1 %.not.i.i.i.i24, label %.lr.ph.i.i.i25, label %bb.k

bb.k:                                             ; preds = %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet5clearEv.exit
  tail call void @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc4FreeEPv(ptr noundef %i.bu)
  br label %.lr.ph.i.i.i25

.lr.ph.i.i.i25:                                   ; preds = %bb.k, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet5clearEv.exit
  store ptr %i.bv, ptr %i.ac, align 8, !tbaa !24
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ab, i64 124
  store i32 8, ptr %i.bw, align 4, !tbaa !28
  store i32 8, ptr %i.ad, align 8, !tbaa !27
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.i.i.i25
  %indvars.iv.i.i.i26 = phi i64 [ 0, %.lr.ph.i.i.i25 ], [ %indvars.iv.next.i.i.i27, %bb.l ] ; 2 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv.i.i.i26
  store i32 -1, ptr %i.bx, align 4, !tbaa !3
  %indvars.iv.next.i.i.i27 = add nuw nsw i64 %indvars.iv.i.i.i26, 1 ; 2 uses
  %.val.i.i.i28 = load i32, ptr %i.ad, align 8, !tbaa !27
  %i.by = zext i32 %.val.i.i.i28 to i64
  %i.bz = icmp samesign ult i64 %indvars.iv.next.i.i.i27, %i.by
  br i1 %i.bz, label %bb.l, label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet5clearEv.exit29, !llvm.loop !33

_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet5clearEv.exit29: ; preds = %bb.l
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ab, i64 128
  store i32 0, ptr %i.ca, align 8, !tbaa !34
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 -1136490970041655429, ptr %i.cb, align 8, !tbaa !36
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ab, i64 4 ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !49 ; 2 uses
  %i.ce = icmp eq i32 %i.cd, -1
  br i1 %i.ce, label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_110PointerMap6RemoveEPv.exit.thread, label %bb.o

bb.m:                                             ; preds = %bb.h
  %i.cf = trunc nuw i64 %indvars.iv.next113 to i32
  %i.cg = zext nneg i32 %i.bm to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %.val10, i64 %i.cg
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !22 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 80
  %.val11 = load ptr, ptr %i.cj, align 8          ; 4 uses
  %i.ck = getelementptr i8, ptr %i.ci, i64 120
  %.val12 = load i32, ptr %i.ck, align 8, !tbaa !27
  %i.cl = add i32 %.val12, -1                     ; 2 uses
  %.02410.i.i30 = and i32 %i.cl, %i.ae            ; 2 uses
  %i.cm = zext i32 %.02410.i.i30 to i64           ; 2 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %.val11, i64 %i.cm
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !3  ; 2 uses
  %i.cp = icmp eq i32 %.lcssa89, %i.co
  br i1 %i.cp, label %_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.thread.i39, label %.lr.ph.i.i31

.lr.ph.i.i31:                                     ; preds = %bb.m, %bb.n
  %i.cq = phi i32 [ %i.cx, %bb.n ], [ %i.co, %bb.m ] ; 2 uses
  %.02413.i.i32 = phi i32 [ %.024.i.i38, %bb.n ], [ %.02410.i.i30, %bb.m ] ; 3 uses
  %.01912.i.i33 = phi i8 [ %spec.select27.i.i37, %bb.n ], [ 0, %bb.m ] ; 3 uses
  %.02111.i.i34 = phi i32 [ %spec.select.i.i36, %bb.n ], [ 0, %bb.m ] ; 2 uses
  %i.cr = icmp eq i32 %i.cq, -1
  br i1 %i.cr, label %_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.i41, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i31
  %i.cs = icmp ne i32 %i.cq, -2
  %i.ct = trunc nuw i8 %.01912.i.i33 to i1
  %or.cond.i.i35 = select i1 %i.cs, i1 true, i1 %i.ct ; 2 uses
  %spec.select.i.i36 = select i1 %or.cond.i.i35, i32 %.02111.i.i34, i32 %.02413.i.i32
  %spec.select27.i.i37 = select i1 %or.cond.i.i35, i8 %.01912.i.i33, i8 1
  %i.cu = add i32 %.02413.i.i32, 1
  %.024.i.i38 = and i32 %i.cu, %i.cl              ; 2 uses
  %i.cv = zext i32 %.024.i.i38 to i64             ; 2 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %.val11, i64 %i.cv
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !3  ; 2 uses
  %i.cy = icmp eq i32 %.lcssa89, %i.cx
  br i1 %i.cy, label %_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.thread.i39, label %.lr.ph.i.i31, !llvm.loop !46

_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.i41: ; preds = %.lr.ph.i.i31
  %i.cz = trunc nuw i8 %.01912.i.i33 to i1
  %i.da = select i1 %i.cz, i32 %.02111.i.i34, i32 %.02413.i.i32
  %.pre.i42 = zext i32 %i.da to i64               ; 2 uses
  %.phi.trans.insert.i43 = getelementptr inbounds nuw [4 x i8], ptr %.val11, i64 %.pre.i42
  %.pre7.i44 = load i32, ptr %.phi.trans.insert.i43, align 4, !tbaa !3
  %i.db = icmp eq i32 %.pre7.i44, %.lcssa89
  br i1 %i.db, label %_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.thread.i39, label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit45

_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.thread.i39: ; preds = %bb.n, %_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.i41, %bb.m
  %.pre-phi12.i40 = phi i64 [ %.pre.i42, %_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.i41 ], [ %i.cm, %bb.m ], [ %i.cv, %bb.n ]
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %.val11, i64 %.pre-phi12.i40
  store i32 -2, ptr %i.dc, align 4, !tbaa !3
  br label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit45

_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit45: ; preds = %_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.i41, %_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.thread.i39
  %.val10.i19 = load ptr, ptr %i.ag, align 8      ; 2 uses
  %.val.i21 = load i32, ptr %i.ah, align 8, !tbaa !27
  %i.dd = and i64 %indvars.iv.next113, 4294967295 ; 2 uses
  %umax115 = tail call i32 @llvm.umax.i32(i32 %i.cf, i32 %.val.i21)
  %wide.trip.count116 = zext i32 %umax115 to i64  ; 2 uses
  %exitcond117.not177 = icmp eq i64 %i.dd, %wide.trip.count116
  br i1 %exitcond117.not177, label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS4_.exit23, label %.lr.ph179, !llvm.loop !54

bb.o:                                             ; preds = %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet5clearEv.exit29
  %i.de = add nuw i32 %i.cd, 1
  store i32 %i.de, ptr %i.cc, align 4, !tbaa !49
  %i.df = load ptr, ptr %0, align 8, !tbaa !7     ; 4 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 80 ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 120 ; 5 uses
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !27 ; 5 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.df, i64 124 ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !28
  %i.dl = icmp eq i32 %i.di, %i.dk
  br i1 %i.dl, label %bb.p, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.o
  %.pre.i46 = load ptr, ptr %i.dg, align 8, !tbaa !24
  br label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit

bb.p:                                             ; preds = %bb.o
  %.not.i47 = icmp eq i32 %i.di, -1
  br i1 %.not.i47, label %bb.q, label %.lr.ph.i.i48

.lr.ph.i.i48:                                     ; preds = %bb.p, %.lr.ph.i.i48
  %i.dm = phi i32 [ %i.dn, %.lr.ph.i.i48 ], [ %i.di, %bb.p ]
  %i.dn = shl i32 %i.dm, 1                        ; 4 uses
  %.not5.i = icmp ugt i32 %i.dn, %i.di
  br i1 %.not5.i, label %._crit_edge.i.i, label %.lr.ph.i.i48, !llvm.loop !47

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i48
  store i32 %i.dn, ptr %i.dj, align 4, !tbaa !28
  %i.do = zext i32 %i.dn to i64
  %i.dp = shl nuw nsw i64 %i.do, 2
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge.i.i, %bb.p
  %.lcssa.i.i = phi i64 [ %i.dp, %._crit_edge.i.i ], [ 17179869180, %bb.p ]
  %i.dq = load ptr, ptr @_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_15arenaE, align 8, !tbaa !18
  %i.dr = tail call noundef ptr @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc14AllocWithArenaEmPNS2_5ArenaE(i64 noundef %.lcssa.i.i, ptr noundef %i.dq) ; 4 uses
  %i.ds = load ptr, ptr %i.dg, align 8, !tbaa !24 ; 4 uses
  %i.dt = load i32, ptr %i.dh, align 8, !tbaa !27 ; 2 uses
  switch i32 %i.dt, label %bb.r [
    i32 0, label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i
    i32 1, label %bb.s
  ], !prof !21

bb.r:                                             ; preds = %bb.q
  %i.du = zext i32 %i.dt to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.du, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.dr, ptr align 4 %i.ds, i64 %.idx.i.i.i.i, i1 false)
  %.pre.i.i = load ptr, ptr %i.dg, align 8, !tbaa !24
  br label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i

bb.s:                                             ; preds = %bb.q
  %i.dv = load i32, ptr %i.ds, align 4, !tbaa !3
  store i32 %i.dv, ptr %i.dr, align 4, !tbaa !3
  br label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i

_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i:          ; preds = %bb.s, %bb.r, %bb.q
  %i.dw = phi ptr [ %i.ds, %bb.q ], [ %.pre.i.i, %bb.r ], [ %i.ds, %bb.s ] ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.df, i64 88
  %.not.i4.i.i = icmp eq ptr %i.dw, %i.dx
  br i1 %.not.i4.i.i, label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i, label %bb.t

bb.t:                                             ; preds = %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i
  tail call void @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc4FreeEPv(ptr noundef %i.dw)
  br label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i

_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i: ; preds = %bb.t, %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i
  store ptr %i.dr, ptr %i.dg, align 8, !tbaa !24
  %.pre1.i = load i32, ptr %i.dh, align 8, !tbaa !27
  br label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit

_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit: ; preds = %._crit_edge.i, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i
  %i.dy = phi i32 [ %i.di, %._crit_edge.i ], [ %.pre1.i, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i ]
  %i.dz = phi ptr [ %.pre.i46, %._crit_edge.i ], [ %i.dr, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i ]
  %i.ea = zext i32 %i.dy to i64
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.ea
  store i32 %.lcssa89, ptr %i.eb, align 4, !tbaa !3
  %i.ec = load i32, ptr %i.dh, align 8, !tbaa !27
  %i.ed = add i32 %i.ec, 1
  store i32 %i.ed, ptr %i.dh, align 8, !tbaa !27
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
  %or.cond.i.i = select i1 %i.af, i1 true, i1 %i.ag ; 2 uses
  %spec.select.i.i = select i1 %or.cond.i.i, i32 %.02111.i.i, i32 %.02413.i.i
  %spec.select27.i.i = select i1 %or.cond.i.i, i8 %.01912.i.i, i8 1
  %i.ah = add i32 %.02413.i.i, 1
  %.024.i.i = and i32 %i.ah, %i.u                 ; 2 uses
  %i.ai = zext i32 %.024.i.i to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.val10, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !3  ; 2 uses
  %i.al = icmp eq i32 %i.ak, %i.s
  br i1 %i.al, label %_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet8containsEi.exit, label %.lr.ph.i.i, !llvm.loop !46

_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet8containsEi.exit: ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %i.am = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ae, %bb.d ], [ true, %bb.c ], [ true, %bb.e ]
  ret i1 %i.am
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN4absl12lts_2025051224synchronization_internal11GraphCycles10RemoveEdgeENS1_7GraphIdES3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i64 %1, i64 %2) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !7
  %.val18 = load ptr, ptr %i.a, align 8, !tbaa !20 ; 2 uses
  %i.b = and i64 %1, 4294967295
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %.val18, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !22   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !49
  %i.g = lshr i64 %1, 32
  %i.h = trunc nuw i64 %i.g to i32
end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2025051224synchronization_internal11GraphCycles10RemoveEdgeENS1_7GraphIdES3_:bb.a
  %i.ai = add i32 %.02413.i.i, 1
  %.024.i.i = and i32 %i.ai, %i.y                 ; 2 uses
  %i.aj = zext i32 %.024.i.i to i64               ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %.val15, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !3  ; 2 uses
  %i.am = icmp eq i32 %i.al, %i.w
  br i1 %i.am, label %_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.thread.i, label %.lr.ph.i.i, !llvm.loop !46

_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.i: ; preds = %.lr.ph.i.i
  %i.an = trunc nuw i8 %.01912.i.i to i1
  %i.ao = select i1 %i.an, i32 %.02111.i.i, i32 %.02413.i.i
  %.pre.i = zext i32 %i.ao to i64                 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw [4 x i8], ptr %.val15, i64 %.pre.i
  %.pre7.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !3
  %i.ap = icmp eq i32 %.pre7.i, %i.w
  br i1 %i.ap, label %_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.thread.i, label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit

_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.thread.i: ; preds = %bb.c, %_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.i, %bb.b
  %.pre-phi12.i = phi i64 [ %.pre.i, %_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.i ], [ %i.aa, %bb.b ], [ %i.aj, %bb.c ]
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %.val15, i64 %.pre-phi12.i
  store i32 -2, ptr %i.aq, align 4, !tbaa !3
  br label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit

_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit: ; preds = %_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.i, %_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.thread.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.as = trunc i64 %1 to i32                     ; 4 uses
  %.val = load ptr, ptr %i.ar, align 8            ; 4 uses
  %i.at = getelementptr i8, ptr %i.l, i64 64
  %.val14 = load i32, ptr %i.at, align 8, !tbaa !27
  %i.au = add i32 %.val14, -1                     ; 2 uses
  %i.av = mul i32 %i.as, 41
  %.02410.i.i19 = and i32 %i.au, %i.av            ; 2 uses
  %i.aw = zext i32 %.02410.i.i19 to i64           ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !3  ; 2 uses
  %i.az = icmp eq i32 %i.ay, %i.as
  br i1 %i.az, label %_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.thread.i28, label %.lr.ph.i.i20

.lr.ph.i.i20:                                     ; preds = %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit, %bb.d
  %i.ba = phi i32 [ %i.bh, %bb.d ], [ %i.ay, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit ] ; 2 uses
  %.02413.i.i21 = phi i32 [ %.024.i.i27, %bb.d ], [ %.02410.i.i19, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit ] ; 3 uses
  %.01912.i.i22 = phi i8 [ %spec.select27.i.i26, %bb.d ], [ 0, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit ] ; 3 uses
  %.02111.i.i23 = phi i32 [ %spec.select.i.i25, %bb.d ], [ 0, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit ] ; 2 uses
  %i.bb = icmp eq i32 %i.ba, -1
  br i1 %i.bb, label %_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.i30, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i20
  %i.bc = icmp ne i32 %i.ba, -2
  %i.bd = trunc nuw i8 %.01912.i.i22 to i1
  %or.cond.i.i24 = select i1 %i.bc, i1 true, i1 %i.bd ; 2 uses
  %spec.select.i.i25 = select i1 %or.cond.i.i24, i32 %.02111.i.i23, i32 %.02413.i.i21
  %spec.select27.i.i26 = select i1 %or.cond.i.i24, i8 %.01912.i.i22, i8 1
  %i.be = add i32 %.02413.i.i21, 1
  %.024.i.i27 = and i32 %i.be, %i.au              ; 2 uses
  %i.bf = zext i32 %.024.i.i27 to i64             ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !3  ; 2 uses
  %i.bi = icmp eq i32 %i.bh, %i.as
  br i1 %i.bi, label %_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.thread.i28, label %.lr.ph.i.i20, !llvm.loop !46

_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.i30: ; preds = %.lr.ph.i.i20
  %i.bj = trunc nuw i8 %.01912.i.i22 to i1
  %i.bk = select i1 %i.bj, i32 %.02111.i.i23, i32 %.02413.i.i21
  %.pre.i31 = zext i32 %i.bk to i64               ; 2 uses
  %.phi.trans.insert.i32 = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %.pre.i31
  %.pre7.i33 = load i32, ptr %.phi.trans.insert.i32, align 4, !tbaa !3
  %i.bl = icmp eq i32 %.pre7.i33, %i.as
  br i1 %i.bl, label %_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.thread.i28, label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit34

_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.thread.i28: ; preds = %bb.d, %_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.i30, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit
  %.pre-phi12.i29 = phi i64 [ %.pre.i31, %_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.i30 ], [ %i.aw, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit ], [ %i.bf, %bb.d ]
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %.pre-phi12.i29
  store i32 -2, ptr %i.bm, align 4, !tbaa !3
  br label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit34

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
  %.not.i39.i = icmp eq i32 %i.az, -1
  br i1 %.not.i39.i, label %bb.k, label %.lr.ph.i.i40.i

.lr.ph.i.i40.i:                                   ; preds = %bb.j, %.lr.ph.i.i40.i
  %i.bc = phi i32 [ %i.bd, %.lr.ph.i.i40.i ], [ %i.az, %bb.j ]
  %i.bd = shl i32 %i.bc, 1                        ; 4 uses
  %.not5.i41.i = icmp ugt i32 %i.bd, %i.az
  br i1 %.not5.i41.i, label %._crit_edge.i.i41.i, label %.lr.ph.i.i40.i, !llvm.loop !47

._crit_edge.i.i41.i:                              ; preds = %.lr.ph.i.i40.i
  store i32 %i.bd, ptr %i.ai, align 4, !tbaa !28
  %i.be = zext i32 %i.bd to i64
  %i.bf = shl nuw nsw i64 %i.be, 2
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge.i.i41.i, %bb.j
  %.lcssa.i.i42.i = phi i64 [ %i.bf, %._crit_edge.i.i41.i ], [ 17179869180, %bb.j ]
  %i.bg = load ptr, ptr @_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_15arenaE, align 8, !tbaa !18
  %i.bh = tail call noundef ptr @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc14AllocWithArenaEmPNS2_5ArenaE(i64 noundef %.lcssa.i.i42.i, ptr noundef %i.bg) ; 4 uses
  %i.bi = load ptr, ptr %i.ae, align 8, !tbaa !24 ; 4 uses
  %i.bj = load i32, ptr %i.ah, align 8, !tbaa !27 ; 2 uses
  switch i32 %i.bj, label %bb.l [
    i32 0, label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i43.i
    i32 1, label %bb.m
  ], !prof !21

bb.l:                                             ; preds = %bb.k
  %i.bk = zext i32 %i.bj to i64
  %.idx.i.i.i.i47.i = shl nuw nsw i64 %i.bk, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.bh, ptr align 4 %i.bi, i64 %.idx.i.i.i.i47.i, i1 false)
  %.pre.i.i48.i = load ptr, ptr %i.ae, align 8, !tbaa !24
  br label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i43.i

bb.m:                                             ; preds = %bb.k
  %i.bl = load i32, ptr %i.bi, align 4, !tbaa !3
  store i32 %i.bl, ptr %i.bh, align 4, !tbaa !3
  br label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i43.i

_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i43.i:      ; preds = %bb.m, %bb.l, %bb.k
  %i.bm = phi ptr [ %i.bi, %bb.k ], [ %.pre.i.i48.i, %bb.l ], [ %i.bi, %bb.m ] ; 2 uses
  %.not.i4.i.i44.i = icmp eq ptr %i.bm, %i.ag
  br i1 %.not.i4.i.i44.i, label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i45.i, label %bb.n

bb.n:                                             ; preds = %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i43.i
  tail call void @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc4FreeEPv(ptr noundef %i.bm)
  br label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i45.i

_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i45.i: ; preds = %bb.n, %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i43.i
  store ptr %i.bh, ptr %i.ae, align 8, !tbaa !24
  %.pre1.i46.i = load i32, ptr %i.ah, align 8, !tbaa !27
  br label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit49.i

_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit49.i: ; preds = %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i45.i, %._crit_edge.i37.i
  %i.bn = phi i32 [ %i.az, %._crit_edge.i37.i ], [ %.pre1.i46.i, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i45.i ]
  %i.bo = phi ptr [ %.pre.i38.i, %._crit_edge.i37.i ], [ %i.bh, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i45.i ]
  %i.bp = zext i32 %i.bn to i64
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.bp
  store i32 %i.as, ptr %i.bq, align 4, !tbaa !3
  %i.br = load i32, ptr %i.ah, align 8, !tbaa !27
  %i.bs = add i32 %i.br, 1
  store i32 %i.bs, ptr %i.ah, align 8, !tbaa !27
  %i.bt = getelementptr inbounds nuw i8, ptr %i.av, i64 80
  %i.bu = getelementptr inbounds nuw i8, ptr %i.av, i64 120 ; 2 uses
  %.val.i.i205 = load i32, ptr %i.bu, align 8, !tbaa !27 ; 2 uses
  %exitcond.not.i200207 = icmp eq i32 %.val.i.i205, 0
  br i1 %exitcond.not.i200207, label %thread-pre-split.loopexit.i, label %.lr.ph202.lr.ph

.lr.ph202.lr.ph:                                  ; preds = %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit49.i
  %wide.trip.count.i206 = zext i32 %.val.i.i205 to i64
  br label %.lr.ph202

.lr.ph202:                                        ; preds = %.lr.ph202.lr.ph, %bb.y
  %wide.trip.count.i209 = phi i64 [ %wide.trip.count.i206, %.lr.ph202.lr.ph ], [ %wide.trip.count.i, %bb.y ]
  %i.bv = phi i64 [ 0, %.lr.ph202.lr.ph ], [ %i.dc, %bb.y ]
  %.val10.i.i208 = load ptr, ptr %i.bt, align 8
  br label %bb.p

bb.o:                                             ; preds = %bb.p
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i209
  br i1 %exitcond.not.i, label %thread-pre-split.loopexit.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph202, %bb.o
  %indvars.iv.i201 = phi i64 [ %i.bv, %.lr.ph202 ], [ %indvars.iv.next.i, %bb.o ] ; 2 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %.val10.i.i208, i64 %indvars.iv.i201
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !3  ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i201, 1 ; 4 uses
  %i.by = icmp sgt i32 %i.bx, -1
  br i1 %i.by, label %bb.q, label %bb.o

bb.q:                                             ; preds = %bb.p
  %i.bz = trunc nuw i64 %indvars.iv.next.i to i32
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !20 ; 10 uses
  %i.ca = zext nneg i32 %i.bx to i64
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.ca
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !22 ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !43 ; 2 uses
  %.not.i = icmp eq i32 %i.cd, %i.ac
  br i1 %.not.i, label %_ZN4absl12lts_2025051224synchronization_internalL10ForwardDFSEPNS1_11GraphCycles3RepEii.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  %i.cf = load i8, ptr %i.ce, align 4, !tbaa !40, !range !41, !noundef !42
  %i.cg = trunc nuw i8 %i.cf to i1
  %i.ch = icmp sge i32 %i.cd, %i.ac
  %or.cond.not.i = or i1 %i.ch, %i.cg
  br i1 %or.cond.not.i, label %bb.y, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ci = load i32, ptr %i.am, align 8, !tbaa !27 ; 5 uses
  %i.cj = load i32, ptr %i.an, align 4, !tbaa !28
  %i.ck = icmp eq i32 %i.ci, %i.cj
  br i1 %i.ck, label %bb.t, label %._crit_edge.i51.i

._crit_edge.i51.i:                                ; preds = %bb.s
  %.pre.i52.i = load ptr, ptr %i.aj, align 8, !tbaa !24
  br label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit63.i

bb.t:                                             ; preds = %bb.s
  %.not.i53.i = icmp eq i32 %i.ci, -1
  br i1 %.not.i53.i, label %bb.u, label %.lr.ph.i.i54.i

.lr.ph.i.i54.i:                                   ; preds = %bb.t, %.lr.ph.i.i54.i
  %i.cl = phi i32 [ %i.cm, %.lr.ph.i.i54.i ], [ %i.ci, %bb.t ]
  %i.cm = shl i32 %i.cl, 1                        ; 4 uses
  %.not5.i56.i = icmp ugt i32 %i.cm, %i.ci
  br i1 %.not5.i56.i, label %._crit_edge.i.i55.i, label %.lr.ph.i.i54.i, !llvm.loop !47

._crit_edge.i.i55.i:                              ; preds = %.lr.ph.i.i54.i
  store i32 %i.cm, ptr %i.an, align 4, !tbaa !28
  %i.cn = zext i32 %i.cm to i64
  %i.co = shl nuw nsw i64 %i.cn, 2
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge.i.i55.i, %bb.t
  %.lcssa.i.i56.i = phi i64 [ %i.co, %._crit_edge.i.i55.i ], [ 17179869180, %bb.t ]
  %i.cp = load ptr, ptr @_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_15arenaE, align 8, !tbaa !18
  %i.cq = tail call noundef ptr @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc14AllocWithArenaEmPNS2_5ArenaE(i64 noundef %.lcssa.i.i56.i, ptr noundef %i.cp) ; 4 uses
  %i.cr = load ptr, ptr %i.aj, align 8, !tbaa !24 ; 4 uses
  %i.cs = load i32, ptr %i.am, align 8, !tbaa !27 ; 2 uses
  switch i32 %i.cs, label %bb.v [
    i32 0, label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i57.i
    i32 1, label %bb.w
  ], !prof !21

bb.v:                                             ; preds = %bb.u
  %i.ct = zext i32 %i.cs to i64
  %.idx.i.i.i.i61.i = shl nuw nsw i64 %i.ct, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.cq, ptr align 4 %i.cr, i64 %.idx.i.i.i.i61.i, i1 false)
  %.pre.i.i62.i = load ptr, ptr %i.aj, align 8, !tbaa !24
  br label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i57.i

bb.w:                                             ; preds = %bb.u
  %i.cu = load i32, ptr %i.cr, align 4, !tbaa !3
  store i32 %i.cu, ptr %i.cq, align 4, !tbaa !3
  br label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i57.i

_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i57.i:      ; preds = %bb.w, %bb.v, %bb.u
  %i.cv = phi ptr [ %i.cr, %bb.u ], [ %.pre.i.i62.i, %bb.v ], [ %i.cr, %bb.w ] ; 2 uses
  %.not.i4.i.i58.i = icmp eq ptr %i.cv, %i.al
  br i1 %.not.i4.i.i58.i, label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i59.i, label %bb.x

bb.x:                                             ; preds = %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i57.i
  tail call void @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc4FreeEPv(ptr noundef %i.cv)
  br label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i59.i

_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i59.i: ; preds = %bb.x, %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i57.i
  store ptr %i.cq, ptr %i.aj, align 8, !tbaa !24
  %.pre1.i60.i = load i32, ptr %i.am, align 8, !tbaa !27
  br label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit63.i

_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit63.i: ; preds = %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i59.i, %._crit_edge.i51.i
  %i.cw = phi i32 [ %i.ci, %._crit_edge.i51.i ], [ %.pre1.i60.i, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i59.i ]
  %i.cx = phi ptr [ %.pre.i52.i, %._crit_edge.i51.i ], [ %i.cq, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i59.i ]
  %i.cy = zext i32 %i.cw to i64
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %i.cy
  store i32 %i.bx, ptr %i.cz, align 4, !tbaa !3
  %i.da = load i32, ptr %i.am, align 8, !tbaa !27
  %i.db = add i32 %i.da, 1
  store i32 %i.db, ptr %i.am, align 8, !tbaa !27
  br label %bb.y

bb.y:                                             ; preds = %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit63.i, %bb.r
  %.val.i.i = load i32, ptr %i.bu, align 8, !tbaa !27
  %i.dc = and i64 %indvars.iv.next.i, 4294967295  ; 2 uses
  %umax.i = tail call i32 @llvm.umax.i32(i32 %i.bz, i32 %.val.i.i)
  %wide.trip.count.i = zext i32 %umax.i to i64    ; 2 uses
  %exitcond.not.i200 = icmp eq i64 %i.dc, %wide.trip.count.i
  br i1 %exitcond.not.i200, label %thread-pre-split.loopexit.i, label %.lr.ph202, !llvm.loop !56

_ZN4absl12lts_2025051224synchronization_internalL10ForwardDFSEPNS1_11GraphCycles3RepEii.exit: ; preds = %bb.q
  %.val51 = load ptr, ptr %i.y, align 8           ; 4 uses
  %i.dd = getelementptr i8, ptr %i.f, i64 120
  %.val52 = load i32, ptr %i.dd, align 8, !tbaa !27
  %i.de = add i32 %.val52, -1                     ; 2 uses
  %i.df = mul i32 %i.c, 41
  %.02410.i.i = and i32 %i.de, %i.df              ; 2 uses
  %i.dg = zext i32 %.02410.i.i to i64             ; 2 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %.val51, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !3  ; 2 uses
  %i.dj = icmp eq i32 %i.di, %i.c
  br i1 %i.dj, label %_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.thread.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4absl12lts_2025051224synchronization_internalL10ForwardDFSEPNS1_11GraphCycles3RepEii.exit, %bb.z
  %i.dk = phi i32 [ %i.dr, %bb.z ], [ %i.di, %_ZN4absl12lts_2025051224synchronization_internalL10ForwardDFSEPNS1_11GraphCycles3RepEii.exit ] ; 2 uses
  %.02413.i.i = phi i32 [ %.024.i.i, %bb.z ], [ %.02410.i.i, %_ZN4absl12lts_2025051224synchronization_internalL10ForwardDFSEPNS1_11GraphCycles3RepEii.exit ] ; 3 uses
  %.01912.i.i = phi i8 [ %spec.select27.i.i, %bb.z ], [ 0, %_ZN4absl12lts_2025051224synchronization_internalL10ForwardDFSEPNS1_11GraphCycles3RepEii.exit ] ; 3 uses
  %.02111.i.i = phi i32 [ %spec.select.i.i, %bb.z ], [ 0, %_ZN4absl12lts_2025051224synchronization_internalL10ForwardDFSEPNS1_11GraphCycles3RepEii.exit ] ; 2 uses
  %i.dl = icmp eq i32 %i.dk, -1
  br i1 %i.dl, label %_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.i, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i.i
  %i.dm = icmp ne i32 %i.dk, -2
  %i.dn = trunc nuw i8 %.01912.i.i to i1
  %or.cond.i.i = select i1 %i.dm, i1 true, i1 %i.dn ; 2 uses
  %spec.select.i.i = select i1 %or.cond.i.i, i32 %.02111.i.i, i32 %.02413.i.i
  %spec.select27.i.i = select i1 %or.cond.i.i, i8 %.01912.i.i, i8 1
  %i.do = add i32 %.02413.i.i, 1
  %.024.i.i = and i32 %i.do, %i.de                ; 2 uses
  %i.dp = zext i32 %.024.i.i to i64               ; 2 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %.val51, i64 %i.dp
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !3  ; 2 uses
  %i.ds = icmp eq i32 %i.dr, %i.c
  br i1 %i.ds, label %_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.thread.i, label %.lr.ph.i.i, !llvm.loop !46

_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.i: ; preds = %.lr.ph.i.i
  %i.dt = trunc nuw i8 %.01912.i.i to i1
  %i.du = select i1 %i.dt, i32 %.02111.i.i, i32 %.02413.i.i
  %.pre.i = zext i32 %i.du to i64                 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw [4 x i8], ptr %.val51, i64 %.pre.i
  %.pre7.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !3
  %i.dv = icmp eq i32 %.pre7.i, %i.c
  br i1 %i.dv, label %_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.thread.i, label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit

_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.thread.i: ; preds = %bb.z, %_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.i, %_ZN4absl12lts_2025051224synchronization_internalL10ForwardDFSEPNS1_11GraphCycles3RepEii.exit
  %.pre-phi12.i = phi i64 [ %.pre.i, %_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.i ], [ %i.dg, %_ZN4absl12lts_2025051224synchronization_internalL10ForwardDFSEPNS1_11GraphCycles3RepEii.exit ], [ %i.dp, %bb.z ]
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %.val51, i64 %.pre-phi12.i
  store i32 -2, ptr %i.dw, align 4, !tbaa !3
  br label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit

_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit: ; preds = %_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.i, %_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.thread.i
  %.val49 = load ptr, ptr %i.aa, align 8          ; 4 uses
  %i.dx = getelementptr i8, ptr %i.o, i64 64
  %.val50 = load i32, ptr %i.dx, align 8, !tbaa !27
  %i.dy = add i32 %.val50, -1                     ; 2 uses
  %i.dz = mul i32 %i.b, 41
  %.02410.i.i55 = and i32 %i.dy, %i.dz            ; 2 uses
  %i.ea = zext i32 %.02410.i.i55 to i64           ; 2 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %.val49, i64 %i.ea
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !3  ; 2 uses
  %i.ed = icmp eq i32 %i.ec, %i.b
  br i1 %i.ed, label %_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.thread.i64, label %.lr.ph.i.i56

.lr.ph.i.i56:                                     ; preds = %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit, %bb.aa
  %i.ee = phi i32 [ %i.el, %bb.aa ], [ %i.ec, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit ] ; 2 uses
  %.02413.i.i57 = phi i32 [ %.024.i.i63, %bb.aa ], [ %.02410.i.i55, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit ] ; 3 uses
  %.01912.i.i58 = phi i8 [ %spec.select27.i.i62, %bb.aa ], [ 0, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit ] ; 3 uses
  %.02111.i.i59 = phi i32 [ %spec.select.i.i61, %bb.aa ], [ 0, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit ] ; 2 uses
  %i.ef = icmp eq i32 %i.ee, -1
  br i1 %i.ef, label %_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.i66, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i.i56
  %i.eg = icmp ne i32 %i.ee, -2
  %i.eh = trunc nuw i8 %.01912.i.i58 to i1
  %or.cond.i.i60 = select i1 %i.eg, i1 true, i1 %i.eh ; 2 uses
  %spec.select.i.i61 = select i1 %or.cond.i.i60, i32 %.02111.i.i59, i32 %.02413.i.i57
  %spec.select27.i.i62 = select i1 %or.cond.i.i60, i8 %.01912.i.i58, i8 1
  %i.ei = add i32 %.02413.i.i57, 1
  %.024.i.i63 = and i32 %i.ei, %i.dy              ; 2 uses
  %i.ej = zext i32 %.024.i.i63 to i64             ; 2 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %.val49, i64 %i.ej
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !3  ; 2 uses
  %i.em = icmp eq i32 %i.el, %i.b
  br i1 %i.em, label %_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.thread.i64, label %.lr.ph.i.i56, !llvm.loop !46

_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.i66: ; preds = %.lr.ph.i.i56
  %i.en = trunc nuw i8 %.01912.i.i58 to i1
  %i.eo = select i1 %i.en, i32 %.02111.i.i59, i32 %.02413.i.i57
  %.pre.i67 = zext i32 %i.eo to i64               ; 2 uses
  %.phi.trans.insert.i68 = getelementptr inbounds nuw [4 x i8], ptr %.val49, i64 %.pre.i67
  %.pre7.i69 = load i32, ptr %.phi.trans.insert.i68, align 4, !tbaa !3
  %i.ep = icmp eq i32 %.pre7.i69, %i.b
  br i1 %i.ep, label %_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.thread.i64, label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit70

_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.thread.i64: ; preds = %bb.aa, %_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.i66, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit
  %.pre-phi12.i65 = phi i64 [ %.pre.i67, %_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.i66 ], [ %i.ea, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit ], [ %i.ej, %bb.aa ]
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %.val49, i64 %.pre-phi12.i65
  store i32 -2, ptr %i.eq, align 4, !tbaa !3
  br label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit70

_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit70: ; preds = %_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.i66, %_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.thread.i64
  %.val46 = load ptr, ptr %i.ae, align 8, !tbaa !24 ; 3 uses
  %.val48 = load i32, ptr %i.ah, align 8, !tbaa !27 ; 2 uses
  %i.er = zext i32 %.val48 to i64
  %.idx = shl nuw nsw i64 %i.er, 2                ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.val46, i64 %.idx
  %.not45109 = icmp eq i32 %.val48, 0
  br i1 %.not45109, label %_ZN4absl12lts_2025051224synchronization_internalL7ReorderEPNS1_11GraphCycles3RepE.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit70
  %i.et = add nsw i64 %.idx, -4                   ; 2 uses
  %i.eu = lshr exact i64 %i.et, 2
  %i.ev = add nuw nsw i64 %i.eu, 1
  %xtraiter = and i64 %i.ev, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.041110.prol = phi ptr [ %i.fb, %.lr.ph.prol ], [ %.val46, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.ew = load i32, ptr %.041110.prol, align 4, !tbaa !3
  %i.ex = zext i32 %i.ew to i64
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.ex
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !22
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 12
  store i8 0, ptr %i.fa, align 4, !tbaa !40
  %i.fb = getelementptr inbounds nuw i8, ptr %.041110.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !57

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.041110.unr = phi ptr [ %.val46, %.lr.ph.preheader ], [ %i.fb, %.lr.ph.prol ]
  %i.fc = icmp ult i64 %i.et, 28
  br i1 %i.fc, label %_ZN4absl12lts_2025051224synchronization_internalL7ReorderEPNS1_11GraphCycles3RepE.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.041110 = phi ptr [ %i.gy, %.lr.ph ], [ %.041110.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.fd = load i32, ptr %.041110, align 4, !tbaa !3
  %i.fe = zext i32 %i.fd to i64
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.fe
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !22
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 12
  store i8 0, ptr %i.fh, align 4, !tbaa !40
  %i.fi = getelementptr inbounds nuw i8, ptr %.041110, i64 4
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !3
  %i.fk = zext i32 %i.fj to i64
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.fk
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !22
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 12
  store i8 0, ptr %i.fn, align 4, !tbaa !40
  %i.fo = getelementptr inbounds nuw i8, ptr %.041110, i64 8
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !3
  %i.fq = zext i32 %i.fp to i64
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.fq
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !22
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 12
  store i8 0, ptr %i.ft, align 4, !tbaa !40
  %i.fu = getelementptr inbounds nuw i8, ptr %.041110, i64 12
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !3
  %i.fw = zext i32 %i.fv to i64
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.fw
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !22
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 12
  store i8 0, ptr %i.fz, align 4, !tbaa !40
  %i.ga = getelementptr inbounds nuw i8, ptr %.041110, i64 16
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !3
  %i.gc = zext i32 %i.gb to i64
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.gc
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !22
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 12
  store i8 0, ptr %i.gf, align 4, !tbaa !40
  %i.gg = getelementptr inbounds nuw i8, ptr %.041110, i64 20
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !3
  %i.gi = zext i32 %i.gh to i64
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.gi
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !22
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 12
  store i8 0, ptr %i.gl, align 4, !tbaa !40
  %i.gm = getelementptr inbounds nuw i8, ptr %.041110, i64 24
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !3
  %i.go = zext i32 %i.gn to i64
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.go
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !22
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 12
  store i8 0, ptr %i.gr, align 4, !tbaa !40
  %i.gs = getelementptr inbounds nuw i8, ptr %.041110, i64 28
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !3
  %i.gu = zext i32 %i.gt to i64
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.gu
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !22
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 12
  store i8 0, ptr %i.gx, align 4, !tbaa !40
  %i.gy = getelementptr inbounds nuw i8, ptr %.041110, i64 32 ; 2 uses
  %.not45.7 = icmp eq ptr %i.gy, %i.es
  br i1 %.not45.7, label %_ZN4absl12lts_2025051224synchronization_internalL7ReorderEPNS1_11GraphCycles3RepE.exit, label %.lr.ph

bb.ab:                                            ; preds = %thread-pre-split.i
  %i.gz = load i32, ptr %i.o, align 8, !tbaa !43
  %i.ha = getelementptr inbounds nuw i8, ptr %i.a, i64 1048744 ; 9 uses
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !24 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.a, i64 1048752 ; 3 uses
  %.not.i.i.i71 = icmp eq ptr %i.hb, %i.hc
  br i1 %.not.i.i.i71, label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE5clearEv.exit.i72, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc4FreeEPv(ptr noundef %i.hb)
  br label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE5clearEv.exit.i72

_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE5clearEv.exit.i72: ; preds = %bb.ac, %bb.ab
  store ptr %i.hc, ptr %i.ha, align 8, !tbaa !24
  %i.hd = getelementptr inbounds nuw i8, ptr %i.a, i64 1048784 ; 10 uses
  store i32 0, ptr %i.hd, align 8, !tbaa !27
  %i.he = getelementptr inbounds nuw i8, ptr %i.a, i64 1048788 ; 3 uses
  store i32 8, ptr %i.he, align 4, !tbaa !28
  %i.hf = load ptr, ptr %i.aj, align 8, !tbaa !24 ; 2 uses
  %.not.i.i22.i = icmp eq ptr %i.hf, %i.al
  br i1 %.not.i.i22.i, label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit.i73, label %bb.ad

bb.ad:                                            ; preds = %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE5clearEv.exit.i72
  tail call void @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc4FreeEPv(ptr noundef %i.hf)
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
  %i.hg = add i32 %.val1666.i, -1                 ; 3 uses
  %i.hh = zext i32 %i.hg to i64
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %.val17.i, i64 %i.hh
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !3  ; 2 uses
  store i32 %i.hg, ptr %i.am, align 8, !tbaa !27
  %.val15.i = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.hk = zext i32 %i.hj to i64
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %.val15.i, i64 %i.hk
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !22 ; 3 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 12 ; 2 uses
  %i.ho = load i8, ptr %i.hn, align 4, !tbaa !40, !range !41, !noundef !42
  %i.hp = trunc nuw i8 %i.ho to i1
  br i1 %i.hp, label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS4_.exit.i, label %bb.af, !llvm.loop !59

bb.af:                                            ; preds = %bb.ae
  store i8 1, ptr %i.hn, align 4, !tbaa !40
  %i.hq = load i32, ptr %i.hd, align 8, !tbaa !27 ; 5 uses
  %i.hr = load i32, ptr %i.he, align 4, !tbaa !28
  %i.hs = icmp eq i32 %i.hq, %i.hr
  br i1 %i.hs, label %bb.ag, label %._crit_edge.i24.i

._crit_edge.i24.i:                                ; preds = %bb.af
  %.pre.i25.i = load ptr, ptr %i.ha, align 8, !tbaa !24
  br label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit36.i

bb.ag:                                            ; preds = %bb.af
  %.not.i26.i = icmp eq i32 %i.hq, -1
  br i1 %.not.i26.i, label %bb.ah, label %.lr.ph.i.i27.i

.lr.ph.i.i27.i:                                   ; preds = %bb.ag, %.lr.ph.i.i27.i
  %i.ht = phi i32 [ %i.hu, %.lr.ph.i.i27.i ], [ %i.hq, %bb.ag ]
  %i.hu = shl i32 %i.ht, 1                        ; 4 uses
  %.not5.i28.i = icmp ugt i32 %i.hu, %i.hq
  br i1 %.not5.i28.i, label %._crit_edge.i.i28.i, label %.lr.ph.i.i27.i, !llvm.loop !47

._crit_edge.i.i28.i:                              ; preds = %.lr.ph.i.i27.i
  store i32 %i.hu, ptr %i.he, align 4, !tbaa !28
  %i.hv = zext i32 %i.hu to i64
  %i.hw = shl nuw nsw i64 %i.hv, 2
  br label %bb.ah

bb.ah:                                            ; preds = %._crit_edge.i.i28.i, %bb.ag
  %.lcssa.i.i29.i = phi i64 [ %i.hw, %._crit_edge.i.i28.i ], [ 17179869180, %bb.ag ]
  %i.hx = load ptr, ptr @_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_15arenaE, align 8, !tbaa !18
  %i.hy = tail call noundef ptr @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc14AllocWithArenaEmPNS2_5ArenaE(i64 noundef %.lcssa.i.i29.i, ptr noundef %i.hx) ; 4 uses
  %i.hz = load ptr, ptr %i.ha, align 8, !tbaa !24 ; 4 uses
  %i.ia = load i32, ptr %i.hd, align 8, !tbaa !27 ; 2 uses
  switch i32 %i.ia, label %bb.ai [
    i32 0, label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i30.i
    i32 1, label %bb.aj
  ], !prof !21

bb.ai:                                            ; preds = %bb.ah
  %i.ib = zext i32 %i.ia to i64
  %.idx.i.i.i.i34.i = shl nuw nsw i64 %i.ib, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.hy, ptr align 4 %i.hz, i64 %.idx.i.i.i.i34.i, i1 false)
  %.pre.i.i35.i = load ptr, ptr %i.ha, align 8, !tbaa !24
  br label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i30.i

bb.aj:                                            ; preds = %bb.ah
  %i.ic = load i32, ptr %i.hz, align 4, !tbaa !3
  store i32 %i.ic, ptr %i.hy, align 4, !tbaa !3
  br label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i30.i

_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i30.i:      ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.id = phi ptr [ %i.hz, %bb.ah ], [ %.pre.i.i35.i, %bb.ai ], [ %i.hz, %bb.aj ] ; 2 uses
  %.not.i4.i.i31.i = icmp eq ptr %i.id, %i.hc
  br i1 %.not.i4.i.i31.i, label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i32.i, label %bb.ak

bb.ak:                                            ; preds = %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i30.i
  tail call void @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc4FreeEPv(ptr noundef %i.id)
  br label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i32.i

_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i32.i: ; preds = %bb.ak, %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i30.i
  store ptr %i.hy, ptr %i.ha, align 8, !tbaa !24
  %.pre1.i33.i = load i32, ptr %i.hd, align 8, !tbaa !27
  br label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit36.i

_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit36.i: ; preds = %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i32.i, %._crit_edge.i24.i
  %i.ie = phi i32 [ %i.hq, %._crit_edge.i24.i ], [ %.pre1.i33.i, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i32.i ]
  %i.if = phi ptr [ %.pre.i25.i, %._crit_edge.i24.i ], [ %i.hy, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i32.i ]
  %i.ig = zext i32 %i.ie to i64
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %i.ig
  store i32 %i.hj, ptr %i.ih, align 4, !tbaa !3
  %i.ii = load i32, ptr %i.hd, align 8, !tbaa !27
  %i.ij = add i32 %i.ii, 1
  store i32 %i.ij, ptr %i.hd, align 8, !tbaa !27
  %i.ik = getelementptr inbounds nuw i8, ptr %i.hm, i64 24
  %i.il = getelementptr inbounds nuw i8, ptr %i.hm, i64 64 ; 2 uses
  %.val.i.i76215 = load i32, ptr %i.il, align 8, !tbaa !27 ; 2 uses
  %exitcond.not.i80210217 = icmp eq i32 %.val.i.i76215, 0
  br i1 %exitcond.not.i80210217, label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS4_.exit.loopexit.i, label %.lr.ph212.lr.ph

.lr.ph212.lr.ph:                                  ; preds = %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit36.i
  %wide.trip.count.i78216 = zext i32 %.val.i.i76215 to i64
  br label %.lr.ph212

.lr.ph212:                                        ; preds = %.lr.ph212.lr.ph, %bb.av
  %wide.trip.count.i78219 = phi i64 [ %wide.trip.count.i78216, %.lr.ph212.lr.ph ], [ %wide.trip.count.i78, %bb.av ]
  %i.im = phi i64 [ 0, %.lr.ph212.lr.ph ], [ %i.jt, %bb.av ]
  %.val10.i.i75218 = load ptr, ptr %i.ik, align 8
  br label %bb.am

bb.al:                                            ; preds = %bb.am
  %exitcond.not.i80 = icmp eq i64 %indvars.iv.next.i81, %wide.trip.count.i78219
  br i1 %exitcond.not.i80, label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS4_.exit.loopexit.i, label %bb.am

bb.am:                                            ; preds = %.lr.ph212, %bb.al
  %indvars.iv.i79211 = phi i64 [ %i.im, %.lr.ph212 ], [ %indvars.iv.next.i81, %bb.al ] ; 2 uses
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %.val10.i.i75218, i64 %indvars.iv.i79211
  %i.io = load i32, ptr %i.in, align 4, !tbaa !3  ; 3 uses
  %indvars.iv.next.i81 = add nuw nsw i64 %indvars.iv.i79211, 1 ; 4 uses
  %i.ip = icmp sgt i32 %i.io, -1
  br i1 %i.ip, label %bb.an, label %bb.al

bb.an:                                            ; preds = %bb.am
  %i.iq = trunc nuw i64 %indvars.iv.next.i81 to i32
  %.val.i82 = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.ir = zext nneg i32 %i.io to i64
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %.val.i82, i64 %i.ir
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !22 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 12
  %i.iv = load i8, ptr %i.iu, align 4, !tbaa !40, !range !41, !noundef !42
  %i.iw = trunc nuw i8 %i.iv to i1
  br i1 %i.iw, label %bb.av, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ix = load i32, ptr %i.it, align 8, !tbaa !43
  %i.iy = icmp slt i32 %i.gz, %i.ix
  br i1 %i.iy, label %bb.ap, label %bb.av

bb.ap:                                            ; preds = %bb.ao
  %i.iz = load i32, ptr %i.am, align 8, !tbaa !27 ; 5 uses
  %i.ja = load i32, ptr %i.an, align 4, !tbaa !28
  %i.jb = icmp eq i32 %i.iz, %i.ja
  br i1 %i.jb, label %bb.aq, label %._crit_edge.i38.i

._crit_edge.i38.i:                                ; preds = %bb.ap
  %.pre.i39.i = load ptr, ptr %i.aj, align 8, !tbaa !24
  br label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit50.i

bb.aq:                                            ; preds = %bb.ap
  %.not.i40.i = icmp eq i32 %i.iz, -1
  br i1 %.not.i40.i, label %bb.ar, label %.lr.ph.i.i41.i

.lr.ph.i.i41.i:                                   ; preds = %bb.aq, %.lr.ph.i.i41.i
  %i.jc = phi i32 [ %i.jd, %.lr.ph.i.i41.i ], [ %i.iz, %bb.aq ]
  %i.jd = shl i32 %i.jc, 1                        ; 4 uses
  %.not5.i43.i = icmp ugt i32 %i.jd, %i.iz
  br i1 %.not5.i43.i, label %._crit_edge.i.i42.i, label %.lr.ph.i.i41.i, !llvm.loop !47

._crit_edge.i.i42.i:                              ; preds = %.lr.ph.i.i41.i
  store i32 %i.jd, ptr %i.an, align 4, !tbaa !28
  %i.je = zext i32 %i.jd to i64
  %i.jf = shl nuw nsw i64 %i.je, 2
  br label %bb.ar

bb.ar:                                            ; preds = %._crit_edge.i.i42.i, %bb.aq
  %.lcssa.i.i43.i = phi i64 [ %i.jf, %._crit_edge.i.i42.i ], [ 17179869180, %bb.aq ]
  %i.jg = load ptr, ptr @_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_15arenaE, align 8, !tbaa !18
  %i.jh = tail call noundef ptr @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc14AllocWithArenaEmPNS2_5ArenaE(i64 noundef %.lcssa.i.i43.i, ptr noundef %i.jg) ; 4 uses
  %i.ji = load ptr, ptr %i.aj, align 8, !tbaa !24 ; 4 uses
  %i.jj = load i32, ptr %i.am, align 8, !tbaa !27 ; 2 uses
  switch i32 %i.jj, label %bb.as [
    i32 0, label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i44.i
    i32 1, label %bb.at
  ], !prof !21

bb.as:                                            ; preds = %bb.ar
  %i.jk = zext i32 %i.jj to i64
  %.idx.i.i.i.i48.i = shl nuw nsw i64 %i.jk, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.jh, ptr align 4 %i.ji, i64 %.idx.i.i.i.i48.i, i1 false)
  %.pre.i.i49.i = load ptr, ptr %i.aj, align 8, !tbaa !24
  br label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i44.i

bb.at:                                            ; preds = %bb.ar
  %i.jl = load i32, ptr %i.ji, align 4, !tbaa !3
  store i32 %i.jl, ptr %i.jh, align 4, !tbaa !3
  br label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i44.i

_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i44.i:      ; preds = %bb.at, %bb.as, %bb.ar
  %i.jm = phi ptr [ %i.ji, %bb.ar ], [ %.pre.i.i49.i, %bb.as ], [ %i.ji, %bb.at ] ; 2 uses
  %.not.i4.i.i45.i = icmp eq ptr %i.jm, %i.al
  br i1 %.not.i4.i.i45.i, label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i46.i, label %bb.au

bb.au:                                            ; preds = %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i44.i
  tail call void @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc4FreeEPv(ptr noundef %i.jm)
  br label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i46.i

_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i46.i: ; preds = %bb.au, %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i44.i
  store ptr %i.jh, ptr %i.aj, align 8, !tbaa !24
  %.pre1.i47.i = load i32, ptr %i.am, align 8, !tbaa !27
  br label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit50.i

_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit50.i: ; preds = %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i46.i, %._crit_edge.i38.i
  %i.jn = phi i32 [ %i.iz, %._crit_edge.i38.i ], [ %.pre1.i47.i, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i46.i ]
  %i.jo = phi ptr [ %.pre.i39.i, %._crit_edge.i38.i ], [ %i.jh, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i46.i ]
  %i.jp = zext i32 %i.jn to i64
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.jo, i64 %i.jp
  store i32 %i.io, ptr %i.jq, align 4, !tbaa !3
  %i.jr = load i32, ptr %i.am, align 8, !tbaa !27
  %i.js = add i32 %i.jr, 1
  store i32 %i.js, ptr %i.am, align 8, !tbaa !27
  br label %bb.av

bb.av:                                            ; preds = %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit50.i, %bb.ao, %bb.an
  %.val.i.i76 = load i32, ptr %i.il, align 8, !tbaa !27
  %i.jt = and i64 %indvars.iv.next.i81, 4294967295 ; 2 uses
  %umax.i77 = tail call i32 @llvm.umax.i32(i32 %i.iq, i32 %.val.i.i76)
  %wide.trip.count.i78 = zext i32 %umax.i77 to i64 ; 2 uses
  %exitcond.not.i80210 = icmp eq i64 %i.jt, %wide.trip.count.i78
  br i1 %exitcond.not.i80210, label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS4_.exit.loopexit.i, label %.lr.ph212, !llvm.loop !60

_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS4_.exit.loopexit.i: ; preds = %bb.av, %bb.al, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit36.i
  %.val16.pr.pre.i = load i32, ptr %i.am, align 8, !tbaa !27
  br label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS4_.exit.i

_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS4_.exit.i: ; preds = %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS4_.exit.loopexit.i, %bb.ae
  %.val16.pr.i = phi i32 [ %.val16.pr.pre.i, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS4_.exit.loopexit.i ], [ %i.hg, %bb.ae ] ; 2 uses
  %i.ju = icmp eq i32 %.val16.pr.i, 0
  br i1 %i.ju, label %_ZN4absl12lts_2025051224synchronization_internalL11BackwardDFSEPNS1_11GraphCycles3RepEii.exit, label %bb.ae

_ZN4absl12lts_2025051224synchronization_internalL11BackwardDFSEPNS1_11GraphCycles3RepEii.exit: ; preds = %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS4_.exit.i
  %.val40.i = load ptr, ptr %i.ha, align 8, !tbaa !24
  %.val41.i = load i32, ptr %i.hd, align 8, !tbaa !27
  tail call fastcc void @_ZN4absl12lts_2025051224synchronization_internalL4SortERKNS1_12_GLOBAL__N_13VecIPNS2_4NodeEEEPNS3_IiEE(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr %.val40.i, i32 %.val41.i)
  %.val38.i = load ptr, ptr %i.ae, align 8, !tbaa !24
  %.val39.i = load i32, ptr %i.ah, align 8, !tbaa !27
  tail call fastcc void @_ZN4absl12lts_2025051224synchronization_internalL4SortERKNS1_12_GLOBAL__N_13VecIPNS2_4NodeEEEPNS3_IiEE(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr %.val38.i, i32 %.val39.i)
  %i.jv = getelementptr inbounds nuw i8, ptr %i.a, i64 1048792 ; 9 uses
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !24 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.a, i64 1048800 ; 6 uses
  %.not.i.i.i83 = icmp eq ptr %i.jw, %i.jx
  br i1 %.not.i.i.i83, label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE5clearEv.exit.i84, label %3

3:                                                ; preds = %_ZN4absl12lts_2025051224synchronization_internalL11BackwardDFSEPNS1_11GraphCycles3RepEii.exit
  tail call void @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc4FreeEPv(ptr noundef %i.jw)
  br label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE5clearEv.exit.i84

_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE5clearEv.exit.i84: ; preds = %3, %_ZN4absl12lts_2025051224synchronization_internalL11BackwardDFSEPNS1_11GraphCycles3RepEii.exit
  store ptr %i.jx, ptr %i.jv, align 8, !tbaa !24
  %4 = getelementptr inbounds nuw i8, ptr %i.a, i64 1048832 ; 12 uses
  store i32 0, ptr %4, align 8, !tbaa !27
  %5 = getelementptr inbounds nuw i8, ptr %i.a, i64 1048836 ; 5 uses
  store i32 8, ptr %5, align 4, !tbaa !28
  %.val44.i = load ptr, ptr %i.ha, align 8, !tbaa !24 ; 2 uses
  %.val45.i = load i32, ptr %i.hd, align 8, !tbaa !27 ; 2 uses
  %6 = zext i32 %.val45.i to i64
  %.idx.i.i = shl nuw nsw i64 %6, 2
  %7 = getelementptr inbounds nuw i8, ptr %.val44.i, i64 %.idx.i.i
  %.not2.i.i = icmp eq i32 %.val45.i, 0
  br i1 %.not2.i.i, label %_ZN4absl12lts_2025051224synchronization_internalL10MoveToListEPNS1_11GraphCycles3RepEPNS1_12_GLOBAL__N_13VecIiEES8_.exit.i, label %.lr.ph.i.i85

.lr.ph.i.i85:                                     ; preds = %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE5clearEv.exit.i84, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit.i.i
  %.pre.i.i.i = phi ptr [ %.pre.i.i80.i, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit.i.i ], [ %i.jx, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE5clearEv.exit.i84 ]
  %.03.i.i = phi ptr [ %37, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit.i.i ], [ %.val44.i, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE5clearEv.exit.i84 ] ; 3 uses
  %8 = load i32, ptr %.03.i.i, align 4, !tbaa !3  ; 2 uses
  %.val12.i.i = load ptr, ptr %i.a, align 8, !tbaa !20
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds nuw [8 x i8], ptr %.val12.i.i, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !22     ; 2 uses
  %12 = load i32, ptr %11, align 8, !tbaa !43
  store i32 %12, ptr %.03.i.i, align 4, !tbaa !3
  %13 = getelementptr inbounds nuw i8, ptr %11, i64 12
  store i8 0, ptr %13, align 4, !tbaa !40
  %14 = load i32, ptr %4, align 8, !tbaa !27      ; 5 uses
  %15 = load i32, ptr %5, align 4, !tbaa !28
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit.i.i

17:                                               ; preds = %.lr.ph.i.i85
  %.not.i.i46.i = icmp eq i32 %14, -1
  br i1 %.not.i.i46.i, label %22, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %17, %.lr.ph.i.i.i.i
  %18 = phi i32 [ %19, %.lr.ph.i.i.i.i ], [ %14, %17 ]
  %19 = shl i32 %18, 1                            ; 4 uses
  %.not5.i.i.i = icmp ugt i32 %19, %14
  br i1 %.not5.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !47

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i
  store i32 %19, ptr %5, align 4, !tbaa !28
  %20 = zext i32 %19 to i64
  %21 = shl nuw nsw i64 %20, 2
  br label %22

22:                                               ; preds = %._crit_edge.i.i.i.i, %17
  %.lcssa.i.i.i.i = phi i64 [ %21, %._crit_edge.i.i.i.i ], [ 17179869180, %17 ]
  %23 = load ptr, ptr @_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_15arenaE, align 8, !tbaa !18
  %24 = tail call noundef ptr @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc14AllocWithArenaEmPNS2_5ArenaE(i64 noundef %.lcssa.i.i.i.i, ptr noundef %23) ; 4 uses
  %25 = load ptr, ptr %i.jv, align 8, !tbaa !24   ; 4 uses
  %26 = load i32, ptr %4, align 8, !tbaa !27      ; 2 uses
  switch i32 %26, label %27 [
    i32 0, label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i.i.i
    i32 1, label %29
  ], !prof !21

27:                                               ; preds = %22
  %28 = zext i32 %26 to i64
  %.idx.i.i.i.i.i.i = shl nuw nsw i64 %28, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %24, ptr align 4 %25, i64 %.idx.i.i.i.i.i.i, i1 false)
  %.pre.i.i.i.i = load ptr, ptr %i.jv, align 8, !tbaa !24
  br label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i.i.i

29:                                               ; preds = %22
  %30 = load i32, ptr %25, align 4, !tbaa !3
  store i32 %30, ptr %24, align 4, !tbaa !3
  br label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i.i.i

_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i.i.i:      ; preds = %29, %27, %22
  %31 = phi ptr [ %25, %22 ], [ %.pre.i.i.i.i, %27 ], [ %25, %29 ] ; 2 uses
  %.not.i4.i.i.i.i = icmp eq ptr %31, %i.jx
  br i1 %.not.i4.i.i.i.i, label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i.i.i, label %bb.aw

bb.aw:                                            ; preds = %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i.i.i
  tail call void @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc4FreeEPv(ptr noundef %31)
  br label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i.i.i

_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i.i.i: ; preds = %bb.aw, %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i.i.i
  store ptr %24, ptr %i.jv, align 8, !tbaa !24
  %.pre1.i.i.i = load i32, ptr %4, align 8, !tbaa !27
  br label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit.i.i

_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit.i.i: ; preds = %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i.i.i, %.lr.ph.i.i85
  %.pre.i.i80.i = phi ptr [ %24, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i.i.i ], [ %.pre.i.i.i, %.lr.ph.i.i85 ] ; 3 uses
  %32 = phi i32 [ %.pre1.i.i.i, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i.i.i ], [ %14, %.lr.ph.i.i85 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i80.i, i64 %33
  store i32 %8, ptr %34, align 4, !tbaa !3
  %35 = load i32, ptr %4, align 8, !tbaa !27
  %36 = add i32 %35, 1
  store i32 %36, ptr %4, align 8, !tbaa !27
  %37 = getelementptr inbounds nuw i8, ptr %.03.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %37, %7
  br i1 %.not.i.i, label %_ZN4absl12lts_2025051224synchronization_internalL10MoveToListEPNS1_11GraphCycles3RepEPNS1_12_GLOBAL__N_13VecIiEES8_.exit.i, label %.lr.ph.i.i85

_ZN4absl12lts_2025051224synchronization_internalL10MoveToListEPNS1_11GraphCycles3RepEPNS1_12_GLOBAL__N_13VecIiEES8_.exit.i: ; preds = %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit.i.i, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE5clearEv.exit.i84
  %.pre.i.i5384.i = phi ptr [ %i.jx, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE5clearEv.exit.i84 ], [ %.pre.i.i80.i, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit.i.i ]
  %.val42.i = load ptr, ptr %i.ae, align 8, !tbaa !24 ; 2 uses
  %.val43.i = load i32, ptr %i.ah, align 8, !tbaa !27 ; 2 uses
  %38 = zext i32 %.val43.i to i64
  %.idx.i47.i = shl nuw nsw i64 %38, 2
  %39 = getelementptr inbounds nuw i8, ptr %.val42.i, i64 %.idx.i47.i
  %.not2.i48.i = icmp eq i32 %.val43.i, 0
  br i1 %.not2.i48.i, label %_ZN4absl12lts_2025051224synchronization_internalL10MoveToListEPNS1_11GraphCycles3RepEPNS1_12_GLOBAL__N_13VecIiEES8_.exit67.i, label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE5clearEv.exit.i84.a

_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE5clearEv.exit.i84.a: ; preds = %_ZN4absl12lts_2025051224synchronization_internalL10MoveToListEPNS1_11GraphCycles3RepEPNS1_12_GLOBAL__N_13VecIiEES8_.exit.i, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit.i54.i
  %.pre.i.i53.i = phi ptr [ %.pre.i.i5382.i, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit.i54.i ], [ %.pre.i.i5384.i, %_ZN4absl12lts_2025051224synchronization_internalL10MoveToListEPNS1_11GraphCycles3RepEPNS1_12_GLOBAL__N_13VecIiEES8_.exit.i ]
  %.03.i50.i = phi ptr [ %65, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit.i54.i ], [ %.val42.i, %_ZN4absl12lts_2025051224synchronization_internalL10MoveToListEPNS1_11GraphCycles3RepEPNS1_12_GLOBAL__N_13VecIiEES8_.exit.i ] ; 3 uses
  %40 = load i32, ptr %.03.i50.i, align 4, !tbaa !3 ; 2 uses
  %.val44.i.a = load ptr, ptr %i.a, align 8, !tbaa !20
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds nuw [8 x i8], ptr %.val44.i.a, i64 %41
  %.val42.i.a = load ptr, ptr %42, align 8, !tbaa !22 ; 2 uses
  %.val43.i.a = load i32, ptr %.val42.i.a, align 8, !tbaa !43
  store i32 %.val43.i.a, ptr %.03.i50.i, align 4, !tbaa !3
  %i.jy = getelementptr inbounds nuw i8, ptr %.val42.i.a, i64 12
  store i8 0, ptr %i.jy, align 4, !tbaa !40
  %.val27.i.a = load i32, ptr %4, align 8, !tbaa !27 ; 5 uses
  %i.jz = load i32, ptr %5, align 4, !tbaa !28
  %43 = icmp eq i32 %.val27.i.a, %i.jz
  br i1 %43, label %44, label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit.i54.i

44:                                               ; preds = %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE5clearEv.exit.i84.a
  %.not.i.i56.i = icmp eq i32 %.val27.i.a, -1
  br i1 %.not.i.i56.i, label %49, label %.lr.ph.i.i.i57.i

.lr.ph.i.i.i57.i:                                 ; preds = %44, %.lr.ph.i.i.i57.i
  %45 = phi i32 [ %46, %.lr.ph.i.i.i57.i ], [ %.val27.i.a, %44 ]
  %46 = shl i32 %45, 1                            ; 4 uses
  %.not5.i.i58.i = icmp ugt i32 %46, %.val27.i.a
  br i1 %.not5.i.i58.i, label %._crit_edge.i.i.i59.i, label %.lr.ph.i.i.i57.i, !llvm.loop !47

._crit_edge.i.i.i59.i:                            ; preds = %.lr.ph.i.i.i57.i
  store i32 %46, ptr %5, align 4, !tbaa !28
  %47 = zext i32 %46 to i64
  %48 = shl nuw nsw i64 %47, 2
  br label %49

49:                                               ; preds = %._crit_edge.i.i.i59.i, %44
  %.lcssa.i.i.i60.i = phi i64 [ %48, %._crit_edge.i.i.i59.i ], [ 17179869180, %44 ]
  %50 = load ptr, ptr @_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_15arenaE, align 8, !tbaa !18
  %51 = tail call noundef ptr @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc14AllocWithArenaEmPNS2_5ArenaE(i64 noundef %.lcssa.i.i.i60.i, ptr noundef %50) ; 4 uses
  %52 = load ptr, ptr %i.jv, align 8, !tbaa !24   ; 4 uses
  %53 = load i32, ptr %4, align 8, !tbaa !27      ; 2 uses
  switch i32 %53, label %54 [
    i32 0, label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i.i61.i
    i32 1, label %56
  ], !prof !21

54:                                               ; preds = %49
  %55 = zext i32 %53 to i64
  %.idx.i.i.i.i.i65.i = shl nuw nsw i64 %55, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %51, ptr align 4 %52, i64 %.idx.i.i.i.i.i65.i, i1 false)
  %.pre.i.i.i66.i = load ptr, ptr %i.jv, align 8, !tbaa !24
  br label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i.i61.i

56:                                               ; preds = %49
  %57 = load i32, ptr %52, align 4, !tbaa !3
  store i32 %57, ptr %51, align 4, !tbaa !3
  br label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i.i61.i

_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i.i61.i:    ; preds = %56, %54, %49
  %58 = phi ptr [ %52, %49 ], [ %.pre.i.i.i66.i, %54 ], [ %52, %56 ] ; 2 uses
  %.not.i4.i.i.i62.i = icmp eq ptr %58, %i.jx
  br i1 %.not.i4.i.i.i62.i, label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i.i63.i, label %59

59:                                               ; preds = %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i.i61.i
  tail call void @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc4FreeEPv(ptr noundef %58)
  br label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i.i63.i

_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i.i63.i: ; preds = %59, %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i.i61.i
  store ptr %51, ptr %i.jv, align 8, !tbaa !24
  %.pre1.i.i64.i = load i32, ptr %4, align 8, !tbaa !27
  br label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit.i54.i

_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit.i54.i: ; preds = %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i.i63.i, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE5clearEv.exit.i84.a
  %.pre.i.i5382.i = phi ptr [ %51, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i.i63.i ], [ %.pre.i.i53.i, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE5clearEv.exit.i84.a ] ; 2 uses
  %60 = phi i32 [ %.pre1.i.i64.i, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i.i63.i ], [ %.val27.i.a, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE5clearEv.exit.i84.a ]
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i5382.i, i64 %61
  store i32 %40, ptr %62, align 4, !tbaa !3
  %63 = load i32, ptr %4, align 8, !tbaa !27
  %64 = add i32 %63, 1
  store i32 %64, ptr %4, align 8, !tbaa !27
  %65 = getelementptr inbounds nuw i8, ptr %.03.i50.i, i64 4 ; 2 uses
  %.not.i55.i = icmp eq ptr %65, %39
  br i1 %.not.i55.i, label %_ZN4absl12lts_2025051224synchronization_internalL10MoveToListEPNS1_11GraphCycles3RepEPNS1_12_GLOBAL__N_13VecIiEES8_.exit67.loopexit.i, label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE5clearEv.exit.i84.a

_ZN4absl12lts_2025051224synchronization_internalL10MoveToListEPNS1_11GraphCycles3RepEPNS1_12_GLOBAL__N_13VecIiEES8_.exit67.loopexit.i: ; preds = %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit.i54.i
  %.val27.pre.i = load i32, ptr %i.ah, align 8, !tbaa !27
  br label %_ZN4absl12lts_2025051224synchronization_internalL10MoveToListEPNS1_11GraphCycles3RepEPNS1_12_GLOBAL__N_13VecIiEES8_.exit67.i

_ZN4absl12lts_2025051224synchronization_internalL10MoveToListEPNS1_11GraphCycles3RepEPNS1_12_GLOBAL__N_13VecIiEES8_.exit67.i: ; preds = %_ZN4absl12lts_2025051224synchronization_internalL10MoveToListEPNS1_11GraphCycles3RepEPNS1_12_GLOBAL__N_13VecIiEES8_.exit67.loopexit.i, %_ZN4absl12lts_2025051224synchronization_internalL10MoveToListEPNS1_11GraphCycles3RepEPNS1_12_GLOBAL__N_13VecIiEES8_.exit.i
  %.val27.i = phi i32 [ %.val27.pre.i, %_ZN4absl12lts_2025051224synchronization_internalL10MoveToListEPNS1_11GraphCycles3RepEPNS1_12_GLOBAL__N_13VecIiEES8_.exit67.loopexit.i ], [ 0, %_ZN4absl12lts_2025051224synchronization_internalL10MoveToListEPNS1_11GraphCycles3RepEPNS1_12_GLOBAL__N_13VecIiEES8_.exit.i ] ; 2 uses
  %66 = getelementptr inbounds nuw i8, ptr %i.a, i64 1048840 ; 5 uses
  %.val28.i86 = load i32, ptr %i.hd, align 8, !tbaa !27 ; 2 uses
  %67 = add i32 %.val28.i86, %.val27.i            ; 3 uses
  %68 = getelementptr inbounds nuw i8, ptr %i.a, i64 1048884 ; 2 uses
  %69 = load i32, ptr %68, align 4, !tbaa !28     ; 2 uses
  %70 = icmp ugt i32 %67, %69
  br i1 %70, label %.lr.ph.i.i.i, label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE5clearEv.exit._ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE6resizeEj.exit_crit_edge.i

_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE5clearEv.exit._ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE6resizeEj.exit_crit_edge.i: ; preds = %_ZN4absl12lts_2025051224synchronization_internalL10MoveToListEPNS1_11GraphCycles3RepEPNS1_12_GLOBAL__N_13VecIiEES8_.exit67.i
  %.val31.pre.i = load ptr, ptr %66, align 8, !tbaa !24
  br label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE6resizeEj.exit.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4absl12lts_2025051224synchronization_internalL10MoveToListEPNS1_11GraphCycles3RepEPNS1_12_GLOBAL__N_13VecIiEES8_.exit67.i, %.lr.ph.i.i.i
  %i.ka = phi i32 [ %i.kb, %.lr.ph.i.i.i ], [ %69, %_ZN4absl12lts_2025051224synchronization_internalL10MoveToListEPNS1_11GraphCycles3RepEPNS1_12_GLOBAL__N_13VecIiEES8_.exit67.i ]
  %i.kb = shl i32 %i.ka, 1                        ; 4 uses
  %i.kc = icmp ult i32 %i.kb, %67
  br i1 %i.kc, label %.lr.ph.i.i.i, label %bb.ax, !llvm.loop !47

bb.ax:                                            ; preds = %.lr.ph.i.i.i
  store i32 %i.kb, ptr %68, align 4, !tbaa !28
  %i.kd = zext i32 %i.kb to i64
  %i.ke = shl nuw nsw i64 %i.kd, 2
  %i.kf = load ptr, ptr @_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_15arenaE, align 8, !tbaa !18
  %i.kg = tail call noundef ptr @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc14AllocWithArenaEmPNS2_5ArenaE(i64 noundef %i.ke, ptr noundef %i.kf) ; 4 uses
  %i.kh = load ptr, ptr %66, align 8, !tbaa !24   ; 4 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.a, i64 1048880
  %i.kj = load i32, ptr %i.ki, align 8, !tbaa !27 ; 2 uses
  switch i32 %i.kj, label %bb.ay [
    i32 0, label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i.i
    i32 1, label %bb.az
  ], !prof !21

bb.ay:                                            ; preds = %bb.ax
  %i.kk = zext i32 %i.kj to i64
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.kk, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.kg, ptr align 4 %i.kh, i64 %.idx.i.i.i.i.i, i1 false)
  %.pre.i.i.i.a = load ptr, ptr %66, align 8, !tbaa !24
  br label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i.i

bb.az:                                            ; preds = %bb.ax
  %i.kl = load i32, ptr %i.kh, align 4, !tbaa !3
  store i32 %i.kl, ptr %i.kg, align 4, !tbaa !3
  br label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i.i

_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i.i:        ; preds = %bb.az, %bb.ay, %bb.ax
  %i.km = phi ptr [ %i.kh, %bb.ax ], [ %.pre.i.i.i.a, %bb.ay ], [ %i.kh, %bb.az ] ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.a, i64 1048848
  %.not.i4.i.i.i = icmp eq ptr %i.km, %i.kn
  br i1 %.not.i4.i.i.i, label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i.i, label %bb.ba

bb.ba:                                            ; preds = %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i.i
  tail call void @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc4FreeEPv(ptr noundef %i.km)
  br label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i.i

_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i.i: ; preds = %bb.ba, %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i.i
  store ptr %i.kg, ptr %66, align 8, !tbaa !24
  %.val37.pre.i = load i32, ptr %i.hd, align 8, !tbaa !27
  %.val35.pre.i = load i32, ptr %i.ah, align 8, !tbaa !27
  br label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE6resizeEj.exit.i

_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE6resizeEj.exit.i: ; preds = %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i.i, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE5clearEv.exit._ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE6resizeEj.exit_crit_edge.i
  %.val31.i = phi ptr [ %.val31.pre.i, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE5clearEv.exit._ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE6resizeEj.exit_crit_edge.i ], [ %i.kg, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i.i ] ; 2 uses
  %.val35.i = phi i32 [ %.val27.i, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE5clearEv.exit._ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE6resizeEj.exit_crit_edge.i ], [ %.val35.pre.i, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i.i ] ; 2 uses
  %.val37.i = phi i32 [ %.val28.i86, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE5clearEv.exit._ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE6resizeEj.exit_crit_edge.i ], [ %.val37.pre.i, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i.i ] ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.a, i64 1048880
  store i32 %67, ptr %i.ko, align 8, !tbaa !27
  %.val33.i = load ptr, ptr %i.ha, align 8, !tbaa !24 ; 3 uses
  %i.kp = zext i32 %.val37.i to i64
  %.idx.i = shl nuw nsw i64 %i.kp, 2
  %i.kq = getelementptr inbounds nuw i8, ptr %.val33.i, i64 %.idx.i ; 2 uses
  %.val32.i = load ptr, ptr %i.ae, align 8, !tbaa !24 ; 3 uses
  %i.kr = zext i32 %.val35.i to i64
  %.idx47.i = shl nuw nsw i64 %i.kr, 2
  %i.ks = getelementptr inbounds nuw i8, ptr %.val32.i, i64 %.idx47.i ; 2 uses
  %i.kt = icmp ne i32 %.val37.i, 0
  %i.ku = icmp ne i32 %.val35.i, 0
  %i.kv = and i1 %i.ku, %i.kt
  br i1 %i.kv, label %.lr.ph.i.i46.i, label %._crit_edge.i.i.i

.lr.ph.i.i46.i:                                   ; preds = %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE6resizeEj.exit.i, %.lr.ph.i.i46.i
  %.024.i.i.i = phi ptr [ %i.kz, %.lr.ph.i.i46.i ], [ %.val31.i, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE6resizeEj.exit.i ] ; 2 uses
  %.01823.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i46.i ], [ %.val33.i, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE6resizeEj.exit.i ] ; 2 uses
  %.01922.i.i.i = phi ptr [ %.120.i.i.i, %.lr.ph.i.i46.i ], [ %.val32.i, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE6resizeEj.exit.i ] ; 2 uses
  %i.kw = load i32, ptr %.01922.i.i.i, align 4, !tbaa !3 ; 2 uses
  %i.kx = load i32, ptr %.01823.i.i.i, align 4, !tbaa !3 ; 2 uses
  %i.ky = icmp slt i32 %i.kw, %i.kx               ; 2 uses
  %.sink.i.i.i = tail call i32 @llvm.smin.i32(i32 %i.kw, i32 %i.kx)
  %.120.idx.i.i.i = select i1 %i.ky, i64 4, i64 0
  %.120.i.i.i = getelementptr inbounds nuw i8, ptr %.01922.i.i.i, i64 %.120.idx.i.i.i ; 3 uses
  %.1.idx.i.i.i = select i1 %i.ky, i64 0, i64 4
  %.1.i.i.i = getelementptr inbounds nuw i8, ptr %.01823.i.i.i, i64 %.1.idx.i.i.i ; 3 uses
  store i32 %.sink.i.i.i, ptr %.024.i.i.i, align 4, !tbaa !3
  %i.kz = getelementptr inbounds nuw i8, ptr %.024.i.i.i, i64 4 ; 2 uses
  %i.la = icmp ne ptr %.1.i.i.i, %i.kq
  %i.lb = icmp ne ptr %.120.i.i.i, %i.ks
  %i.lc = select i1 %i.la, i1 %i.lb, i1 false
  br i1 %i.lc, label %.lr.ph.i.i46.i, label %._crit_edge.i.i.i, !llvm.loop !61

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i46.i, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE6resizeEj.exit.i
  %.019.lcssa.i.i.i = phi ptr [ %.val32.i, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE6resizeEj.exit.i ], [ %.120.i.i.i, %.lr.ph.i.i46.i ] ; 3 uses
  %.018.lcssa.i.i.i = phi ptr [ %.val33.i, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE6resizeEj.exit.i ], [ %.1.i.i.i, %.lr.ph.i.i46.i ] ; 3 uses
  %.0.lcssa.i.i.i = phi ptr [ %.val31.i, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE6resizeEj.exit.i ], [ %i.kz, %.lr.ph.i.i46.i ] ; 3 uses
  %i.ld = ptrtoint ptr %i.kq to i64
  %i.le = ptrtoint ptr %.018.lcssa.i.i.i to i64
  %i.lf = sub i64 %i.ld, %i.le                    ; 4 uses
  %i.lg = icmp sgt i64 %i.lf, 4
  br i1 %i.lg, label %bb.bb, label %bb.bc, !prof !62

bb.bb:                                            ; preds = %._crit_edge.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.0.lcssa.i.i.i, ptr align 4 %.018.lcssa.i.i.i, i64 %i.lf, i1 false)
  br label %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit.i.i.i

bb.bc:                                            ; preds = %._crit_edge.i.i.i
  %i.lh = icmp eq i64 %i.lf, 4
  br i1 %i.lh, label %bb.bd, label %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit.i.i.i

bb.bd:                                            ; preds = %bb.bc
  %i.li = load i32, ptr %.018.lcssa.i.i.i, align 4, !tbaa !3
  store i32 %i.li, ptr %.0.lcssa.i.i.i, align 4, !tbaa !3
  br label %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit.i.i.i

_ZSt4copyIPiS0_ET0_T_S2_S1_.exit.i.i.i:           ; preds = %bb.bd, %bb.bc, %bb.bb
  %i.lj = getelementptr inbounds i8, ptr %.0.lcssa.i.i.i, i64 %i.lf ; 2 uses
  %i.lk = ptrtoint ptr %i.ks to i64
  %i.ll = ptrtoint ptr %.019.lcssa.i.i.i to i64
  %i.lm = sub i64 %i.lk, %i.ll                    ; 3 uses
  %i.ln = icmp sgt i64 %i.lm, 4
  br i1 %i.ln, label %bb.be, label %bb.bf, !prof !62

bb.be:                                            ; preds = %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.lj, ptr align 4 %.019.lcssa.i.i.i, i64 %i.lm, i1 false)
  br label %_ZSt5mergeIPiS0_S0_ET1_T_S2_T0_S3_S1_.exit.i

bb.bf:                                            ; preds = %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit.i.i.i
  %i.lo = icmp eq i64 %i.lm, 4
  br i1 %i.lo, label %bb.bg, label %_ZSt5mergeIPiS0_S0_ET1_T_S2_T0_S3_S1_.exit.i

bb.bg:                                            ; preds = %bb.bf
  %i.lp = load i32, ptr %.019.lcssa.i.i.i, align 4, !tbaa !3
  store i32 %i.lp, ptr %i.lj, align 4, !tbaa !3
  br label %_ZSt5mergeIPiS0_S0_ET1_T_S2_T0_S3_S1_.exit.i

_ZSt5mergeIPiS0_S0_ET1_T_S2_T0_S3_S1_.exit.i:     ; preds = %bb.bg, %bb.bf, %bb.be
  %.val26.i = load i32, ptr %4, align 8, !tbaa !27 ; 3 uses
  %.not.i86 = icmp eq i32 %.val26.i, 0
  br i1 %.not.i86, label %_ZN4absl12lts_2025051224synchronization_internalL7ReorderEPNS1_11GraphCycles3RepE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt5mergeIPiS0_S0_ET1_T_S2_T0_S3_S1_.exit.i
  %.val30.i87 = load ptr, ptr %66, align 8, !tbaa !24 ; 5 uses
  %.val29.i = load ptr, ptr %i.jv, align 8, !tbaa !24 ; 5 uses
  %.val.i88 = load ptr, ptr %i.a, align 8, !tbaa !20 ; 5 uses
  %wide.trip.count.i89 = zext i32 %.val26.i to i64 ; 2 uses
  %xtraiter243 = and i64 %wide.trip.count.i89, 3  ; 3 uses
  %i.lq = icmp ult i32 %.val26.i, 4
  br i1 %i.lq, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i89, 4294967292
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bh, %.lr.ph.i.new
  %indvars.iv.i90 = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i91.3, %bb.bh ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.bh ]
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %.val30.i87, i64 %indvars.iv.i90
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !3
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %.val29.i, i64 %indvars.iv.i90
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !3
  %i.lv = zext i32 %i.lu to i64
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %.val.i88, i64 %i.lv
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !22
  store i32 %i.ls, ptr %i.lx, align 8, !tbaa !43
  %indvars.iv.next.i91 = or disjoint i64 %indvars.iv.i90, 1 ; 2 uses
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %.val30.i87, i64 %indvars.iv.next.i91
  %i.lz = load i32, ptr %i.ly, align 4, !tbaa !3
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %.val29.i, i64 %indvars.iv.next.i91
  %i.mb = load i32, ptr %i.ma, align 4, !tbaa !3
  %i.mc = zext i32 %i.mb to i64
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %.val.i88, i64 %i.mc
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !22
  store i32 %i.lz, ptr %i.me, align 8, !tbaa !43
  %indvars.iv.next.i91.1 = or disjoint i64 %indvars.iv.i90, 2 ; 2 uses
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %.val30.i87, i64 %indvars.iv.next.i91.1
  %i.mg = load i32, ptr %i.mf, align 4, !tbaa !3
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %.val29.i, i64 %indvars.iv.next.i91.1
  %i.mi = load i32, ptr %i.mh, align 4, !tbaa !3
  %i.mj = zext i32 %i.mi to i64
  %i.mk = getelementptr inbounds nuw [8 x i8], ptr %.val.i88, i64 %i.mj
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !22
  store i32 %i.mg, ptr %i.ml, align 8, !tbaa !43
  %indvars.iv.next.i91.2 = or disjoint i64 %indvars.iv.i90, 3 ; 2 uses
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %.val30.i87, i64 %indvars.iv.next.i91.2
  %i.mn = load i32, ptr %i.mm, align 4, !tbaa !3
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %.val29.i, i64 %indvars.iv.next.i91.2
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !3
  %i.mq = zext i32 %i.mp to i64
  %i.mr = getelementptr inbounds nuw [8 x i8], ptr %.val.i88, i64 %i.mq
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !22
  store i32 %i.mn, ptr %i.ms, align 8, !tbaa !43
  %indvars.iv.next.i91.3 = add nuw nsw i64 %indvars.iv.i90, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN4absl12lts_2025051224synchronization_internalL7ReorderEPNS1_11GraphCycles3RepE.exit.loopexit.unr-lcssa, label %bb.bh, !llvm.loop !63

_ZN4absl12lts_2025051224synchronization_internalL7ReorderEPNS1_11GraphCycles3RepE.exit.loopexit.unr-lcssa: ; preds = %bb.bh
  %lcmp.mod244.not = icmp eq i64 %xtraiter243, 0
  br i1 %lcmp.mod244.not, label %_ZN4absl12lts_2025051224synchronization_internalL7ReorderEPNS1_11GraphCycles3RepE.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN4absl12lts_2025051224synchronization_internalL7ReorderEPNS1_11GraphCycles3RepE.exit.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i90.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i91.3, %_ZN4absl12lts_2025051224synchronization_internalL7ReorderEPNS1_11GraphCycles3RepE.exit.loopexit.unr-lcssa ]
  %lcmp.mod245 = icmp ne i64 %xtraiter243, 0
  tail call void @llvm.assume(i1 %lcmp.mod245)
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bi, %.epil.preheader
  %indvars.iv.i90.epil = phi i64 [ %indvars.iv.i90.epil.init, %.epil.preheader ], [ %indvars.iv.next.i91.epil, %bb.bi ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.bi ]
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %.val30.i87, i64 %indvars.iv.i90.epil
  %i.mu = load i32, ptr %i.mt, align 4, !tbaa !3
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %.val29.i, i64 %indvars.iv.i90.epil
  %i.mw = load i32, ptr %i.mv, align 4, !tbaa !3
  %i.mx = zext i32 %i.mw to i64
  %i.my = getelementptr inbounds nuw [8 x i8], ptr %.val.i88, i64 %i.mx
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !22
  store i32 %i.mu, ptr %i.mz, align 8, !tbaa !43
  %indvars.iv.next.i91.epil = add nuw nsw i64 %indvars.iv.i90.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter243
  br i1 %epil.iter.cmp.not, label %_ZN4absl12lts_2025051224synchronization_internalL7ReorderEPNS1_11GraphCycles3RepE.exit, label %bb.bi, !llvm.loop !64

_ZN4absl12lts_2025051224synchronization_internalL7ReorderEPNS1_11GraphCycles3RepE.exit: ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %_ZN4absl12lts_2025051224synchronization_internalL7ReorderEPNS1_11GraphCycles3RepE.exit.loopexit.unr-lcssa, %bb.bi, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit70, %_ZSt5mergeIPiS0_S0_ET1_T_S2_T0_S3_S1_.exit.i, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.b ], [ true, %bb.a ], [ true, %bb.c ], [ false, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit70 ], [ true, %bb.d ], [ true, %_ZSt5mergeIPiS0_S0_ET1_T_S2_T0_S3_S1_.exit.i ], [ true, %_ZN4absl12lts_2025051224synchronization_internalL7ReorderEPNS1_11GraphCycles3RepE.exit.loopexit.unr-lcssa ], [ true, %bb.bi ], [ false, %.lr.ph ], [ false, %.lr.ph.prol.loopexit ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 -2147483647, -2147483648) i32 @_ZNK4absl12lts_2025051224synchronization_internal11GraphCycles8FindPathENS1_7GraphIdES3_iPS3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i64 %1, i64 %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.absl::lts_20250512::synchronization_internal::(anonymous namespace)::NodeSet", align 8 ; 11 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !7      ; 7 uses
  %.val53 = load ptr, ptr %i.a, align 8, !tbaa !20 ; 2 uses
  %i.b = and i64 %1, 4294967295
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %.val53, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !22   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !49
  %i.g = lshr i64 %1, 32
  %i.h = trunc nuw i64 %i.g to i32
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
  %.val46112 = phi i32 [ 1, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit ], [ %.val46.pr, %thread-pre-split ]
  %.val47 = load ptr, ptr %i.ae, align 8, !tbaa !24 ; 2 uses
  %i.ak = add i32 %.val46112, -1                  ; 6 uses
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
  %.not5.i60 = icmp ugt i32 %i.bh, %i.ak
  br i1 %.not5.i60, label %bb.l, label %.lr.ph.i.i59, !llvm.loop !47

bb.l:                                             ; preds = %.lr.ph.i.i59
  store i32 %i.bh, ptr %i.ai, align 4, !tbaa !28
  %i.bi = zext i32 %i.bh to i64
  %i.bj = shl nuw nsw i64 %i.bi, 2
  %i.bk = load ptr, ptr @_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_15arenaE, align 8, !tbaa !18
  %i.bl = invoke noundef ptr @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc14AllocWithArenaEmPNS2_5ArenaE(i64 noundef %i.bj, ptr noundef %i.bk)
          to label %.noexc68 unwind label %bb.q   ; 4 uses

.noexc68:                                         ; preds = %bb.l
  %i.bm = load ptr, ptr %i.ae, align 8, !tbaa !24 ; 4 uses
  %i.bn = load i32, ptr %i.ah, align 8, !tbaa !27 ; 2 uses
  switch i32 %i.bn, label %bb.m [
    i32 0, label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i62
    i32 1, label %bb.n
  ], !prof !21

bb.m:                                             ; preds = %.noexc68
  %i.bo = zext i32 %i.bn to i64
  %.idx.i.i.i.i66 = shl nuw nsw i64 %i.bo, 2
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.bl, ptr align 4 %i.bm, i64 %.idx.i.i.i.i66, i1 false)
  %.pre.i.i67 = load ptr, ptr %i.ae, align 8, !tbaa !24
  br label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i62

bb.n:                                             ; preds = %.noexc68
  %i.bp = load i32, ptr %i.bm, align 4, !tbaa !3
  store i32 %i.bp, ptr %i.bl, align 4, !tbaa !3
  br label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i62

_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i62:        ; preds = %bb.n, %bb.m, %.noexc68
  %i.bq = phi ptr [ %i.bm, %.noexc68 ], [ %.pre.i.i67, %bb.m ], [ %i.bm, %bb.n ] ; 2 uses
  %.not.i4.i.i63 = icmp eq ptr %i.bq, %i.ag
  br i1 %.not.i4.i.i63, label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i64, label %bb.o

bb.o:                                             ; preds = %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i62
  invoke void @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc4FreeEPv(ptr noundef %i.bq)
          to label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i64 unwind label %bb.q

_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i64: ; preds = %bb.o, %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i62
  store ptr %i.bl, ptr %i.ae, align 8, !tbaa !24
  %.pre1.i65 = load i32, ptr %i.ah, align 8, !tbaa !27
  %.pre = zext i32 %.pre1.i65 to i64
  br label %bb.p

bb.p:                                             ; preds = %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i64, %bb.k
  %.pre-phi = phi i64 [ %.pre, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i64 ], [ %i.al, %bb.k ]
  %i.br = phi ptr [ %i.bl, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i64 ], [ %.val47, %bb.k ]
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %.pre-phi
  store i32 -1, ptr %i.bs, align 4, !tbaa !3
  %i.bt = load i32, ptr %i.ah, align 8, !tbaa !27
  %i.bu = add i32 %i.bt, 1
  store i32 %i.bu, ptr %i.ah, align 8, !tbaa !27
  %i.bv = icmp eq i32 %i.an, %i.ac
  br i1 %i.bv, label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS4_.exit, label %.preheader

.preheader:                                       ; preds = %bb.p
  %i.bw = zext nneg i32 %i.an to i64              ; 2 uses
  %.val45136 = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %.val45136, i64 %i.bw
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !22 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 120
  %.val.i138 = load i32, ptr %i.bz, align 8, !tbaa !27 ; 2 uses
  %exitcond.not133140 = icmp eq i32 %.val.i138, 0
  br i1 %exitcond.not133140, label %thread-pre-split.loopexit, label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %.preheader
  %wide.trip.count139 = zext i32 %.val.i138 to i64
  br label %.lr.ph

bb.q:                                             ; preds = %bb.o, %bb.l
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %bb.ac
  %wide.trip.count142 = phi i64 [ %wide.trip.count139, %.lr.ph.lr.ph ], [ %wide.trip.count, %bb.ac ]
  %i.cb = phi i64 [ 0, %.lr.ph.lr.ph ], [ %i.df, %bb.ac ]
  %.pn = phi ptr [ %i.by, %.lr.ph.lr.ph ], [ %i.dd, %bb.ac ]
  %.val10.i141.in = getelementptr inbounds nuw i8, ptr %.pn, i64 80
  %.val10.i141 = load ptr, ptr %.val10.i141.in, align 8
  br label %bb.s

bb.r:                                             ; preds = %bb.s
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count142
  br i1 %exitcond.not, label %thread-pre-split.loopexit, label %bb.s

bb.s:                                             ; preds = %.lr.ph, %bb.r
  %indvars.iv134 = phi i64 [ %i.cb, %.lr.ph ], [ %indvars.iv.next, %bb.r ] ; 2 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %.val10.i141, i64 %indvars.iv134
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !3  ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv134, 1 ; 4 uses
  %i.ce = icmp sgt i32 %i.cd, -1
  br i1 %i.ce, label %bb.u, label %bb.r

bb.t:                                             ; preds = %bb.ab, %bb.y, %bb.u
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.u:                                             ; preds = %bb.s
  %i.cg = trunc nuw i64 %indvars.iv.next to i32
  %i.ch = invoke fastcc noundef zeroext i1 @_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet6insertEi(ptr noundef nonnull align 8 dereferenceable(52) %5, i32 noundef %i.cd)
          to label %bb.v unwind label %bb.t

bb.v:                                             ; preds = %bb.u
  br i1 %i.ch, label %bb.w, label %bb.ac

bb.w:                                             ; preds = %bb.v
  %i.ci = load i32, ptr %i.ah, align 8, !tbaa !27 ; 5 uses
  %i.cj = load i32, ptr %i.ai, align 4, !tbaa !28
  %i.ck = icmp eq i32 %i.ci, %i.cj
  br i1 %i.ck, label %bb.x, label %._crit_edge.i72

._crit_edge.i72:                                  ; preds = %bb.w
  %.pre.i73 = load ptr, ptr %i.ae, align 8, !tbaa !24
  br label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit86

bb.x:                                             ; preds = %bb.w
  %.not.i74 = icmp eq i32 %i.ci, -1
  br i1 %.not.i74, label %bb.y, label %.lr.ph.i.i75

.lr.ph.i.i75:                                     ; preds = %bb.x, %.lr.ph.i.i75
  %i.cl = phi i32 [ %i.cm, %.lr.ph.i.i75 ], [ %i.ci, %bb.x ]
  %i.cm = shl i32 %i.cl, 1                        ; 4 uses
  %.not5.i77 = icmp ugt i32 %i.cm, %i.ci
  br i1 %.not5.i77, label %._crit_edge.i.i76, label %.lr.ph.i.i75, !llvm.loop !47

._crit_edge.i.i76:                                ; preds = %.lr.ph.i.i75
  store i32 %i.cm, ptr %i.ai, align 4, !tbaa !28
  %i.cn = zext i32 %i.cm to i64
  %i.co = shl nuw nsw i64 %i.cn, 2
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge.i.i76, %bb.x
  %.lcssa.i.i77 = phi i64 [ %i.co, %._crit_edge.i.i76 ], [ 17179869180, %bb.x ]
  %i.cp = load ptr, ptr @_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_15arenaE, align 8, !tbaa !18
  %i.cq = invoke noundef ptr @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc14AllocWithArenaEmPNS2_5ArenaE(i64 noundef %.lcssa.i.i77, ptr noundef %i.cp)
          to label %.noexc84 unwind label %bb.t   ; 4 uses

.noexc84:                                         ; preds = %bb.y
  %i.cr = load ptr, ptr %i.ae, align 8, !tbaa !24 ; 4 uses
  %i.cs = load i32, ptr %i.ah, align 8, !tbaa !27 ; 2 uses
  switch i32 %i.cs, label %bb.z [
    i32 0, label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i78
    i32 1, label %bb.aa
  ], !prof !21

bb.z:                                             ; preds = %.noexc84
  %i.ct = zext i32 %i.cs to i64
  %.idx.i.i.i.i82 = shl nuw nsw i64 %i.ct, 2
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.cq, ptr align 4 %i.cr, i64 %.idx.i.i.i.i82, i1 false)
  %.pre.i.i83 = load ptr, ptr %i.ae, align 8, !tbaa !24
  br label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i78

bb.aa:                                            ; preds = %.noexc84
  %i.cu = load i32, ptr %i.cr, align 4, !tbaa !3
  store i32 %i.cu, ptr %i.cq, align 4, !tbaa !3
  br label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i78

_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i78:        ; preds = %bb.aa, %bb.z, %.noexc84
  %i.cv = phi ptr [ %i.cr, %.noexc84 ], [ %.pre.i.i83, %bb.z ], [ %i.cr, %bb.aa ] ; 2 uses
  %.not.i4.i.i79 = icmp eq ptr %i.cv, %i.ag
  br i1 %.not.i4.i.i79, label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i80, label %bb.ab

bb.ab:                                            ; preds = %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i78
  invoke void @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc4FreeEPv(ptr noundef %i.cv)
          to label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i80 unwind label %bb.t

_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i80: ; preds = %bb.ab, %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i78
  store ptr %i.cq, ptr %i.ae, align 8, !tbaa !24
  %.pre1.i81 = load i32, ptr %i.ah, align 8, !tbaa !27
  br label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit86

_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit86: ; preds = %._crit_edge.i72, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i80
  %i.cw = phi i32 [ %i.ci, %._crit_edge.i72 ], [ %.pre1.i81, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i80 ]
  %i.cx = phi ptr [ %.pre.i73, %._crit_edge.i72 ], [ %i.cq, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i80 ]
  %i.cy = zext i32 %i.cw to i64
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %i.cy
  store i32 %i.cd, ptr %i.cz, align 4, !tbaa !3
  %i.da = load i32, ptr %i.ah, align 8, !tbaa !27
  %i.db = add i32 %i.da, 1
  store i32 %i.db, ptr %i.ah, align 8, !tbaa !27
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit86, %bb.v
  %.val45 = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %.val45, i64 %i.bw
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !22 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 120
  %.val.i = load i32, ptr %i.de, align 8, !tbaa !27
  %i.df = and i64 %indvars.iv.next, 4294967295    ; 2 uses
  %umax = call i32 @llvm.umax.i32(i32 %i.cg, i32 %.val.i)
  %wide.trip.count = zext i32 %umax to i64        ; 2 uses
  %exitcond.not133 = icmp eq i64 %i.df, %wide.trip.count
  br i1 %exitcond.not133, label %thread-pre-split.loopexit, label %.lr.ph, !llvm.loop !67

_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS4_.exit: ; preds = %bb.p, %thread-pre-split
  %.2 = phi i32 [ 0, %thread-pre-split ], [ %i.bd, %bb.p ]
  %i.dg = load ptr, ptr %5, align 8, !tbaa !24    ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.dg, %i.v
  br i1 %.not.i.i.i, label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSetD2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS4_.exit
  invoke void @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc4FreeEPv(ptr noundef %i.dg)
          to label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSetD2Ev.exit unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dh = landingpad { ptr, i32 }
          catch ptr null
  %i.di = extractvalue { ptr, i32 } %i.dh, 0
  call void @__clang_call_terminate(ptr %i.di) #18
  unreachable

_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSetD2Ev.exit: ; preds = %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS4_.exit, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %bb.ag

bb.af:                                            ; preds = %bb.q, %bb.t, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %i.aq, %bb.h ], [ %i.cf, %bb.t ], [ %i.ca, %bb.q ]
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
end_hunk_2
begin_hunk_3_@_ZN4absl12lts_2025051224synchronization_internalL4SortERKNS1_12_GLOBAL__N_13VecIPNS2_4NodeEEEPNS3_IiEE:bb.a
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

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f, %.lr.ph.i.i.i.i.i
  %.0.val16.i.i.i.i.i = phi i32 [ %.0.val.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0.val13.i.i.i.i.i, %bb.f ]
  %.015.i.i.i.i.i = phi ptr [ %.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.pn20.i.i.i.i, %bb.f ] ; 3 uses
  %.0914.i.i.i.i.i = phi ptr [ %.015.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.021.i.ptr.i.i.i, %bb.f ]
  store i32 %.0.val16.i.i.i.i.i, ptr %.0914.i.i.i.i.i, align 4, !tbaa !3
  %.0.i.i.i.i.i = getelementptr inbounds i8, ptr %.015.i.i.i.i.i, i64 -4 ; 2 uses
  %.0.val.i.i.i.i.i = load i32, ptr %.0.i.i.i.i.i, align 4, !tbaa !3 ; 2 uses
  %i.x = load i32, ptr %i.j, align 8, !tbaa !43
  %i.y = zext i32 %.0.val.i.i.i.i.i to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i.i.i.i, i64 %i.y
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !22
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !43
  %i.ac = icmp slt i32 %i.x, %i.ab
  br i1 %i.ac, label %.lr.ph.i.i.i.i.i, label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i.i.i.i, !llvm.loop !69

_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.f, %bb.e, %bb.d
  %.sink.i.i.i.i = phi ptr [ %.0.val, %bb.e ], [ %.0.val, %bb.d ], [ %.021.i.ptr.i.i.i, %bb.f ], [ %.015.i.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  store i32 %.0.val.i.i.i.i, ptr %.sink.i.i.i.i, align 4, !tbaa !3
  %.021.i.add.i.i.i = add nuw nsw i64 %.021.i.idx.i.i.i, 4 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.021.i.add.i.i.i, 64
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %.preheader.i, !llvm.loop !70

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.val, i64 64
  %.val.val.i.i.i.i.i = load ptr, ptr %0, align 8, !tbaa !20 ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_comp_iterIZN4absl12lts_2025051224synchronization_internalL4SortERKNS6_12_GLOBAL__N_13VecIPNS7_4NodeEEEPNS8_IiEEE6ByRankEEEvT_T0_.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i ], [ %i.au, %_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_comp_iterIZN4absl12lts_2025051224synchronization_internalL4SortERKNS6_12_GLOBAL__N_13VecIPNS7_4NodeEEEPNS8_IiEEE6ByRankEEEvT_T0_.exit.i.i.i.i ] ; 5 uses
  %i.ae = load i32, ptr %.08.i.i.i.i, align 4, !tbaa !3 ; 2 uses
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i.i.i.i.i, i64 %i.af
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !22 ; 2 uses
  %.012.i.i.i.i.i = getelementptr inbounds i8, ptr %.08.i.i.i.i, i64 -4 ; 2 uses
  %.0.val13.i.i11.i.i.i = load i32, ptr %.012.i.i.i.i.i, align 4, !tbaa !3 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !43
  %i.aj = zext i32 %.0.val13.i.i11.i.i.i to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i.i.i.i.i, i64 %i.aj
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !22
  %i.am = load i32, ptr %i.al, align 8, !tbaa !43
  %i.an = icmp slt i32 %i.ai, %i.am
  br i1 %i.an, label %.lr.ph.i.i13.i.i.i, label %_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_comp_iterIZN4absl12lts_2025051224synchronization_internalL4SortERKNS6_12_GLOBAL__N_13VecIPNS7_4NodeEEEPNS8_IiEEE6ByRankEEEvT_T0_.exit.i.i.i.i

.lr.ph.i.i13.i.i.i:                               ; preds = %bb.g, %.lr.ph.i.i13.i.i.i
  %.0.val16.i.i14.i.i.i = phi i32 [ %.0.val.i.i18.i.i.i, %.lr.ph.i.i13.i.i.i ], [ %.0.val13.i.i11.i.i.i, %bb.g ]
  %.015.i.i15.i.i.i = phi ptr [ %.0.i.i17.i.i.i, %.lr.ph.i.i13.i.i.i ], [ %.012.i.i.i.i.i, %bb.g ] ; 3 uses
  %.0914.i.i16.i.i.i = phi ptr [ %.015.i.i15.i.i.i, %.lr.ph.i.i13.i.i.i ], [ %.08.i.i.i.i, %bb.g ]
  store i32 %.0.val16.i.i14.i.i.i, ptr %.0914.i.i16.i.i.i, align 4, !tbaa !3
  %.0.i.i17.i.i.i = getelementptr inbounds i8, ptr %.015.i.i15.i.i.i, i64 -4 ; 2 uses
  %.0.val.i.i18.i.i.i = load i32, ptr %.0.i.i17.i.i.i, align 4, !tbaa !3 ; 2 uses
  %i.ao = load i32, ptr %i.ah, align 8, !tbaa !43
  %i.ap = zext i32 %.0.val.i.i18.i.i.i to i64
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i.i.i.i.i, i64 %i.ap
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !22
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !43
  %i.at = icmp slt i32 %i.ao, %i.as
  br i1 %i.at, label %.lr.ph.i.i13.i.i.i, label %_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_comp_iterIZN4absl12lts_2025051224synchronization_internalL4SortERKNS6_12_GLOBAL__N_13VecIPNS7_4NodeEEEPNS8_IiEEE6ByRankEEEvT_T0_.exit.i.i.i.i, !llvm.loop !69

_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_comp_iterIZN4absl12lts_2025051224synchronization_internalL4SortERKNS6_12_GLOBAL__N_13VecIPNS7_4NodeEEEPNS8_IiEEE6ByRankEEEvT_T0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i13.i.i.i, %bb.g
  %.09.lcssa.i.i.i.i.i = phi ptr [ %.08.i.i.i.i, %bb.g ], [ %.015.i.i15.i.i.i, %.lr.ph.i.i13.i.i.i ]
  store i32 %i.ae, ptr %.09.lcssa.i.i.i.i.i, align 4, !tbaa !3
  %i.au = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 4 ; 2 uses
  %.not.i12.i.i.i = icmp eq ptr %i.au, %i.b
  br i1 %.not.i12.i.i.i, label %_ZSt4sortIPiZN4absl12lts_2025051224synchronization_internalL4SortERKNS3_12_GLOBAL__N_13VecIPNS4_4NodeEEEPNS5_IiEEE6ByRankEvT_SE_T0_.exit, label %bb.g, !llvm.loop !71

bb.h:                                             ; preds = %bb.b
  %.not19.i.i.i.i = icmp eq i32 %.40.val, 1
  br i1 %.not19.i.i.i.i, label %_ZSt4sortIPiZN4absl12lts_2025051224synchronization_internalL4SortERKNS3_12_GLOBAL__N_13VecIPNS4_4NodeEEEPNS5_IiEEE6ByRankEvT_SE_T0_.exit, label %.lr.ph.i20.i.i.i

.lr.ph.i20.i.i.i:                                 ; preds = %bb.h, %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i27.i.i.i
  %.021.i21.i.i.i = phi ptr [ %.0.i29.i.i.i, %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i27.i.i.i ], [ %scevgep.i.i.i, %bb.h ] ; 6 uses
  %.pn20.i22.i.i.i = phi ptr [ %.021.i21.i.i.i, %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i27.i.i.i ], [ %.0.val, %bb.h ] ; 4 uses
  %.0.val.i23.i.i.i = load i32, ptr %.021.i21.i.i.i, align 4, !tbaa !3 ; 2 uses
  %.val17.i24.i.i.i = load i32, ptr %.0.val, align 4, !tbaa !3 ; 2 uses
  %.val.val.i25.i.i.i = load ptr, ptr %0, align 8, !tbaa !20 ; 4 uses
  %i.av = zext i32 %.0.val.i23.i.i.i to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i25.i.i.i, i64 %i.av
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !22 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !43 ; 2 uses
  %i.az = zext i32 %.val17.i24.i.i.i to i64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i25.i.i.i, i64 %i.az
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !22
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !43
  %i.bd = icmp slt i32 %i.ay, %i.bc
  br i1 %i.bd, label %bb.i, label %bb.m

bb.i:                                             ; preds = %.lr.ph.i20.i.i.i
  %i.be = ptrtoint ptr %.021.i21.i.i.i to i64
  %i.bf = sub i64 %i.be, %i.c                     ; 3 uses
  %i.bg = ashr exact i64 %i.bf, 2                 ; 2 uses
  %i.bh = icmp sgt i64 %i.bg, 1
  br i1 %i.bh, label %bb.j, label %bb.k, !prof !62

bb.j:                                             ; preds = %bb.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.pn20.i22.i.i.i, i64 8
  %i.bj = sub nsw i64 0, %i.bg
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %i.bj
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.bk, ptr noundef nonnull align 4 dereferenceable(1) %.0.val, i64 %i.bf, i1 false)
  br label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i27.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.bl = icmp eq i64 %i.bf, 4
  br i1 %i.bl, label %bb.l, label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i27.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.bm = getelementptr inbounds nuw i8, ptr %.pn20.i22.i.i.i, i64 4
  store i32 %.val17.i24.i.i.i, ptr %i.bm, align 4, !tbaa !3
  br label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i27.i.i.i

bb.m:                                             ; preds = %.lr.ph.i20.i.i.i
  %.0.val13.i.i26.i.i.i = load i32, ptr %.pn20.i22.i.i.i, align 4, !tbaa !3 ; 2 uses
  %i.bn = zext i32 %.0.val13.i.i26.i.i.i to i64
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i25.i.i.i, i64 %i.bn
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !22
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !43
  %i.br = icmp slt i32 %i.ay, %i.bq
  br i1 %i.br, label %.lr.ph.i.i31.i.i.i, label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i27.i.i.i

.lr.ph.i.i31.i.i.i:                               ; preds = %bb.m, %.lr.ph.i.i31.i.i.i
  %.0.val16.i.i32.i.i.i = phi i32 [ %.0.val.i.i36.i.i.i, %.lr.ph.i.i31.i.i.i ], [ %.0.val13.i.i26.i.i.i, %bb.m ]
  %.015.i.i33.i.i.i = phi ptr [ %.0.i.i35.i.i.i, %.lr.ph.i.i31.i.i.i ], [ %.pn20.i22.i.i.i, %bb.m ] ; 3 uses
  %.0914.i.i34.i.i.i = phi ptr [ %.015.i.i33.i.i.i, %.lr.ph.i.i31.i.i.i ], [ %.021.i21.i.i.i, %bb.m ]
  store i32 %.0.val16.i.i32.i.i.i, ptr %.0914.i.i34.i.i.i, align 4, !tbaa !3
  %.0.i.i35.i.i.i = getelementptr inbounds i8, ptr %.015.i.i33.i.i.i, i64 -4 ; 2 uses
  %.0.val.i.i36.i.i.i = load i32, ptr %.0.i.i35.i.i.i, align 4, !tbaa !3 ; 2 uses
  %i.bs = load i32, ptr %i.ax, align 8, !tbaa !43
  %i.bt = zext i32 %.0.val.i.i36.i.i.i to i64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i25.i.i.i, i64 %i.bt
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !22
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !43
  %i.bx = icmp slt i32 %i.bs, %i.bw
  br i1 %i.bx, label %.lr.ph.i.i31.i.i.i, label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i27.i.i.i, !llvm.loop !69

_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i27.i.i.i: ; preds = %.lr.ph.i.i31.i.i.i, %bb.m, %bb.l, %bb.k, %bb.j
  %.sink.i28.i.i.i = phi ptr [ %.0.val, %bb.l ], [ %.0.val, %bb.j ], [ %.0.val, %bb.k ], [ %.021.i21.i.i.i, %bb.m ], [ %.015.i.i33.i.i.i, %.lr.ph.i.i31.i.i.i ]
  store i32 %.0.val.i23.i.i.i, ptr %.sink.i28.i.i.i, align 4, !tbaa !3
  %.0.i29.i.i.i = getelementptr inbounds nuw i8, ptr %.021.i21.i.i.i, i64 4 ; 2 uses
  %.not.i30.i.i.i = icmp eq ptr %.0.i29.i.i.i, %i.b
  br i1 %.not.i30.i.i.i, label %_ZSt4sortIPiZN4absl12lts_2025051224synchronization_internalL4SortERKNS3_12_GLOBAL__N_13VecIPNS4_4NodeEEEPNS5_IiEEE6ByRankEvT_SE_T0_.exit, label %.lr.ph.i20.i.i.i, !llvm.loop !70

_ZSt4sortIPiZN4absl12lts_2025051224synchronization_internalL4SortERKNS3_12_GLOBAL__N_13VecIPNS4_4NodeEEEPNS5_IiEEE6ByRankEvT_SE_T0_.exit: ; preds = %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i27.i.i.i, %_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_comp_iterIZN4absl12lts_2025051224synchronization_internalL4SortERKNS6_12_GLOBAL__N_13VecIPNS7_4NodeEEEPNS8_IiEEE6ByRankEEEvT_T0_.exit.i.i.i.i, %bb.a, %bb.h
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl12lts_2025051224synchronization_internalL4SortERKNS6_12_GLOBAL__N_13VecIPNS7_4NodeEEEPNS8_IiEEE6ByRankEEEvT_SI_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree readonly captures(none) %3) unnamed_addr #11 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 3 uses
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %.lr.ph, label %_ZSt14__partial_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl12lts_2025051224synchronization_internalL4SortERKNS6_12_GLOBAL__N_13VecIPNS7_4NodeEEEPNS8_IiEEE6ByRankEEEvT_SI_SI_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph51

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl12lts_2025051224synchronization_internalL4SortERKNS6_12_GLOBAL__N_13VecIPNS7_4NodeEEEPNS8_IiEEE6ByRankEEET_SI_SI_T0_.exit
  %i.g = icmp eq i64 %i.eo, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph51, !llvm.loop !72

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa47 = phi i64 [ %i.c, %.lr.ph ], [ %i.ge, %bb.b ] ; 2 uses
  %.024.lcssa = phi ptr [ %1, %.lr.ph ], [ %.1.i.i, %bb.b ]
  %i.h = lshr i64 %.lcssa47, 2                    ; 2 uses
  %i.i = add nsw i64 %i.h, -2                     ; 2 uses
  %i.j = lshr i64 %i.i, 1                         ; 4 uses
  %i.k = add nsw i64 %i.h, -1
  %i.l = lshr i64 %i.k, 1                         ; 4 uses
  %i.m = and i64 %.lcssa47, 4
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %.split.preheader.i.i.i, label %.split.us.i.i.i

.split.preheader.i.i.i:                           ; preds = %._crit_edge
  %i.o = or disjoint i64 %i.i, 1                  ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.o
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.j
  br label %.split.i.i.i

.split.us.i.i.i:                                  ; preds = %._crit_edge, %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl12lts_2025051224synchronization_internalL4SortERKNS6_12_GLOBAL__N_13VecIPNS7_4NodeEEEPNS8_IiEEE6ByRankEEEvT_T0_SJ_T1_T2_.exit.us.i.i.i
  %.014.us.i.i.i = phi i64 [ %i.ba, %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl12lts_2025051224synchronization_internalL4SortERKNS6_12_GLOBAL__N_13VecIPNS7_4NodeEEEPNS8_IiEEE6ByRankEEEvT_T0_SJ_T1_T2_.exit.us.i.i.i ], [ %i.j, %._crit_edge ] ; 7 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.014.us.i.i.i
  %i.s = load i32, ptr %i.r, align 4, !tbaa !3    ; 2 uses
  %i.t = icmp slt i64 %.014.us.i.i.i, %i.l
  br i1 %i.t, label %.lr.ph.i.us.i.i.i, label %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl12lts_2025051224synchronization_internalL4SortERKNS6_12_GLOBAL__N_13VecIPNS7_4NodeEEEPNS8_IiEEE6ByRankEEEvT_T0_SJ_T1_T2_.exit.us.i.i.i

.lr.ph.i.us.i.i.i:                                ; preds = %.split.us.i.i.i
  %.val.val.i.us.i.i.i = load ptr, ptr %3, align 8, !tbaa !20 ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.us.i.i.i
  %.034.i.us.i.i.i = phi i64 [ %.014.us.i.i.i, %.lr.ph.i.us.i.i.i ], [ %spec.select.i.us.i.i.i, %bb.c ] ; 2 uses
  %i.u = shl i64 %.034.i.us.i.i.i, 1              ; 3 uses
  %i.v = add i64 %i.u, 2                          ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.v
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.u
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %.val29.i.us.i.i.i = load i32, ptr %i.w, align 4, !tbaa !3
  %.val30.i.us.i.i.i = load i32, ptr %i.y, align 4, !tbaa !3
  %i.z = zext i32 %.val29.i.us.i.i.i to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i.us.i.i.i, i64 %i.z
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !22
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !43
  %i.ad = zext i32 %.val30.i.us.i.i.i to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i.us.i.i.i, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !22
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !43
  %i.ah = icmp slt i32 %i.ac, %i.ag
  %i.ai = or disjoint i64 %i.u, 1
  %spec.select.i.us.i.i.i = select i1 %i.ah, i64 %i.ai, i64 %i.v ; 4 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %spec.select.i.us.i.i.i
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !3
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.034.i.us.i.i.i
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !3
  %i.am = icmp slt i64 %spec.select.i.us.i.i.i, %i.l
  br i1 %i.am, label %bb.c, label %._crit_edge.i.us.i.i.i, !llvm.loop !73

._crit_edge.i.us.i.i.i:                           ; preds = %bb.c
  %i.an = zext i32 %i.s to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i.us.i.i.i, i64 %i.an
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !22
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %._crit_edge.i.us.i.i.i
  %.0134.i.i.us.i.i.i = phi i64 [ %spec.select.i.us.i.i.i, %._crit_edge.i.us.i.i.i ], [ %.059.i.i.us.i.i.i, %bb.e ] ; 3 uses
  %.05.in.i.i.us.i.i.i = add nsw i64 %.0134.i.i.us.i.i.i, -1
  %.059.i.i.us.i.i.i = lshr i64 %.05.in.i.i.us.i.i.i, 1 ; 4 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.059.i.i.us.i.i.i
  %.val14.i.i.us.i.i.i = load i32, ptr %i.aq, align 4, !tbaa !3 ; 2 uses
  %i.ar = zext i32 %.val14.i.i.us.i.i.i to i64
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i.us.i.i.i, i64 %i.ar
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !22
  %i.au = load i32, ptr %i.at, align 8, !tbaa !43
  %i.av = load i32, ptr %i.ap, align 8, !tbaa !43
  %i.aw = icmp slt i32 %i.au, %i.av
  br i1 %i.aw, label %bb.e, label %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl12lts_2025051224synchronization_internalL4SortERKNS6_12_GLOBAL__N_13VecIPNS7_4NodeEEEPNS8_IiEEE6ByRankEEEvT_T0_SJ_T1_T2_.exit.us.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0134.i.i.us.i.i.i
  store i32 %.val14.i.i.us.i.i.i, ptr %i.ax, align 4, !tbaa !3
  %i.ay = icmp samesign ugt i64 %.059.i.i.us.i.i.i, %.014.us.i.i.i
  br i1 %i.ay, label %bb.d, label %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl12lts_2025051224synchronization_internalL4SortERKNS6_12_GLOBAL__N_13VecIPNS7_4NodeEEEPNS8_IiEEE6ByRankEEEvT_T0_SJ_T1_T2_.exit.us.i.i.i, !llvm.loop !74

_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl12lts_2025051224synchronization_internalL4SortERKNS6_12_GLOBAL__N_13VecIPNS7_4NodeEEEPNS8_IiEEE6ByRankEEEvT_T0_SJ_T1_T2_.exit.us.i.i.i: ; preds = %bb.e, %bb.d, %.split.us.i.i.i
  %.013.lcssa.i.i.us.i.i.i = phi i64 [ %.014.us.i.i.i, %.split.us.i.i.i ], [ %.059.i.i.us.i.i.i, %bb.e ], [ %.0134.i.i.us.i.i.i, %bb.d ]
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.013.lcssa.i.i.us.i.i.i
  store i32 %i.s, ptr %i.az, align 4, !tbaa !3
  %.not.us.i.i.i = icmp eq i64 %.014.us.i.i.i, 0
  %i.ba = add nsw i64 %.014.us.i.i.i, -1
  br i1 %.not.us.i.i.i, label %.lr.ph.i5.i.preheader, label %.split.us.i.i.i, !llvm.loop !75

.split.i.i.i:                                     ; preds = %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl12lts_2025051224synchronization_internalL4SortERKNS6_12_GLOBAL__N_13VecIPNS7_4NodeEEEPNS8_IiEEE6ByRankEEEvT_T0_SJ_T1_T2_.exit.i.i.i, %.split.preheader.i.i.i
  %.014.i.i.i = phi i64 [ %i.cn, %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl12lts_2025051224synchronization_internalL4SortERKNS6_12_GLOBAL__N_13VecIPNS7_4NodeEEEPNS8_IiEEE6ByRankEEEvT_T0_SJ_T1_T2_.exit.i.i.i ], [ %i.j, %.split.preheader.i.i.i ] ; 8 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.014.i.i.i
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !3  ; 2 uses
  %i.bd = icmp slt i64 %.014.i.i.i, %i.l
  br i1 %i.bd, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.split.i.i.i
  %.val.val.i.i.i.i = load ptr, ptr %3, align 8, !tbaa !20 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.i.i.i
  %.034.i.i.i.i = phi i64 [ %.014.i.i.i, %.lr.ph.i.i.i.i ], [ %spec.select.i.i.i.i, %bb.f ] ; 2 uses
  %i.be = shl i64 %.034.i.i.i.i, 1                ; 3 uses
  %i.bf = add i64 %i.be, 2                        ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bf
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.be
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %.val29.i.i.i.i = load i32, ptr %i.bg, align 4, !tbaa !3
  %.val30.i.i.i.i = load i32, ptr %i.bi, align 4, !tbaa !3
  %i.bj = zext i32 %.val29.i.i.i.i to i64
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i.i.i.i, i64 %i.bj
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !22
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !43
  %i.bn = zext i32 %.val30.i.i.i.i to i64
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i.i.i.i, i64 %i.bn
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !22
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !43
  %i.br = icmp slt i32 %i.bm, %i.bq
  %i.bs = or disjoint i64 %i.be, 1
  %spec.select.i.i.i.i = select i1 %i.br, i64 %i.bs, i64 %i.bf ; 4 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !3
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.034.i.i.i.i
  store i32 %i.bu, ptr %i.bv, align 4, !tbaa !3
  %i.bw = icmp slt i64 %spec.select.i.i.i.i, %i.l
  br i1 %i.bw, label %bb.f, label %._crit_edge.i.i.i.i, !llvm.loop !73

._crit_edge.i.i.i.i:                              ; preds = %bb.f, %.split.i.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ %.014.i.i.i, %.split.i.i.i ], [ %spec.select.i.i.i.i, %bb.f ] ; 2 uses
  %i.bx = icmp eq i64 %.0.lcssa.i.i.i.i, %i.j
  br i1 %i.bx, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.by = load i32, ptr %i.p, align 4, !tbaa !3
  store i32 %i.by, ptr %i.q, align 4, !tbaa !3
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i.i
  %.128.i.i.i.i = phi i64 [ %i.o, %bb.g ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.bz = icmp samesign ugt i64 %.128.i.i.i.i, %.014.i.i.i
  br i1 %i.bz, label %.lr.ph.i.i.i.i.i, label %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl12lts_2025051224synchronization_internalL4SortERKNS6_12_GLOBAL__N_13VecIPNS7_4NodeEEEPNS8_IiEEE6ByRankEEEvT_T0_SJ_T1_T2_.exit.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.h
  %.val.val.i.i.i.i.i = load ptr, ptr %3, align 8, !tbaa !20 ; 2 uses
  %i.ca = zext i32 %i.bc to i64
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i.i.i.i.i, i64 %i.ca
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !22
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %.lr.ph.i.i.i.i.i
  %.0134.i.i.i.i.i = phi i64 [ %.128.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.059.i.i.i.i.i, %bb.j ] ; 3 uses
  %.05.in.i.i.i.i.i = add nsw i64 %.0134.i.i.i.i.i, -1
  %.059.i.i.i.i.i = lshr i64 %.05.in.i.i.i.i.i, 1 ; 4 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.059.i.i.i.i.i
  %.val14.i.i.i.i.i = load i32, ptr %i.cd, align 4, !tbaa !3 ; 2 uses
  %i.ce = zext i32 %.val14.i.i.i.i.i to i64
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i.i.i.i.i, i64 %i.ce
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !22
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !43
  %i.ci = load i32, ptr %i.cc, align 8, !tbaa !43
  %i.cj = icmp slt i32 %i.ch, %i.ci
  br i1 %i.cj, label %bb.j, label %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl12lts_2025051224synchronization_internalL4SortERKNS6_12_GLOBAL__N_13VecIPNS7_4NodeEEEPNS8_IiEEE6ByRankEEEvT_T0_SJ_T1_T2_.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0134.i.i.i.i.i
  store i32 %.val14.i.i.i.i.i, ptr %i.ck, align 4, !tbaa !3
  %i.cl = icmp samesign ugt i64 %.059.i.i.i.i.i, %.014.i.i.i
  br i1 %i.cl, label %bb.i, label %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl12lts_2025051224synchronization_internalL4SortERKNS6_12_GLOBAL__N_13VecIPNS7_4NodeEEEPNS8_IiEEE6ByRankEEEvT_T0_SJ_T1_T2_.exit.i.i.i, !llvm.loop !74

_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl12lts_2025051224synchronization_internalL4SortERKNS6_12_GLOBAL__N_13VecIPNS7_4NodeEEEPNS8_IiEEE6ByRankEEEvT_T0_SJ_T1_T2_.exit.i.i.i: ; preds = %bb.j, %bb.i, %bb.h
  %.013.lcssa.i.i.i.i.i = phi i64 [ %.128.i.i.i.i, %bb.h ], [ %.0134.i.i.i.i.i, %bb.i ], [ %.059.i.i.i.i.i, %bb.j ]
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.013.lcssa.i.i.i.i.i
  store i32 %i.bc, ptr %i.cm, align 4, !tbaa !3
  %.not.i.i.i = icmp eq i64 %.014.i.i.i, 0
  %i.cn = add nsw i64 %.014.i.i.i, -1
  br i1 %.not.i.i.i, label %.lr.ph.i5.i.preheader, label %.split.i.i.i, !llvm.loop !75

.lr.ph.i5.i.preheader:                            ; preds = %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl12lts_2025051224synchronization_internalL4SortERKNS6_12_GLOBAL__N_13VecIPNS7_4NodeEEEPNS8_IiEEE6ByRankEEEvT_T0_SJ_T1_T2_.exit.us.i.i.i, %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl12lts_2025051224synchronization_internalL4SortERKNS6_12_GLOBAL__N_13VecIPNS7_4NodeEEEPNS8_IiEEE6ByRankEEEvT_T0_SJ_T1_T2_.exit.i.i.i
  br label %.lr.ph.i5.i

.lr.ph.i5.i:                                      ; preds = %.lr.ph.i5.i.preheader, %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl12lts_2025051224synchronization_internalL4SortERKNS6_12_GLOBAL__N_13VecIPNS7_4NodeEEEPNS8_IiEEE6ByRankEEEvT_SI_SI_RT0_.exit.i.i
end_hunk_3
