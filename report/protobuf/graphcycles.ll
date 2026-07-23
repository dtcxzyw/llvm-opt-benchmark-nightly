inline.NumInlined: 333
inline.NumDeleted: 136
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
  %2 = add i32 %.val, 1
  %.not.i21 = icmp eq i32 %.val, -1
  br i1 %.not.i21, label %bb.h, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.i.i
  %i.ba = phi i32 [ %i.bb, %.lr.ph.i.i ], [ %.val, %bb.g ]
  %i.bb = shl i32 %i.ba, 1                        ; 4 uses
  %3 = icmp ult i32 %i.bb, %2
  br i1 %3, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !16

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
  %i.af = phi i64 [ 0, %.lr.ph169.lr.ph ], [ %indvars.iv.next, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit ]
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
  %umax = tail call i32 @llvm.umax.i32(i32 %i.al, i32 %.val.i16)
  %wide.trip.count = zext i32 %umax to i64        ; 2 uses
  %exitcond.not166 = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not166, label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS4_.exit.preheader, label %.lr.ph169, !llvm.loop !53

.lr.ph179:                                        ; preds = %.lr.ph179.lr.ph, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit45
  %wide.trip.count116186 = phi i64 [ %wide.trip.count116183, %.lr.ph179.lr.ph ], [ %wide.trip.count116, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit45 ]
  %i.bj = phi i64 [ 0, %.lr.ph179.lr.ph ], [ %indvars.iv.next113, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit45 ]
  %.val10.i19185 = phi ptr [ %.val10.i19181, %.lr.ph179.lr.ph ], [ %.val10.i19, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit45 ] ; 2 uses
  br label %bb.h

bb.g:                                             ; preds = %bb.h
  %exitcond117.not = icmp eq i64 %indvars.iv.next113, %wide.trip.count116186
  br i1 %exitcond117.not, label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS4_.exit23, label %bb.h

bb.h:                                             ; preds = %.lr.ph179, %bb.g
  %indvars.iv112178 = phi i64 [ %i.bj, %.lr.ph179 ], [ %indvars.iv.next113, %bb.g ] ; 2 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %.val10.i19185, i64 %indvars.iv112178
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !3  ; 2 uses
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112178, 1 ; 5 uses
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
  %umax115 = tail call i32 @llvm.umax.i32(i32 %i.ce, i32 %.val.i21)
  %wide.trip.count116 = zext i32 %umax115 to i64  ; 2 uses
  %exitcond117.not177 = icmp eq i64 %indvars.iv.next113, %wide.trip.count116
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
  %2 = add i32 %i.dg, 1
  %.not.i47 = icmp eq i32 %i.dg, -1
  br i1 %.not.i47, label %bb.q, label %.lr.ph.i.i48

.lr.ph.i.i48:                                     ; preds = %bb.p, %.lr.ph.i.i48
  %i.dk = phi i32 [ %i.dl, %.lr.ph.i.i48 ], [ %i.dg, %bb.p ]
  %i.dl = shl i32 %i.dk, 1                        ; 4 uses
  %3 = icmp ult i32 %i.dl, %2
  br i1 %3, label %.lr.ph.i.i48, label %._crit_edge.i.i, !llvm.loop !47

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i48
  store i32 %i.dl, ptr %i.dh, align 4, !tbaa !28
  %i.dm = zext i32 %i.dl to i64
  %i.dn = shl nuw nsw i64 %i.dm, 2
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge.i.i, %bb.p
  %.lcssa.i.i = phi i64 [ %i.dn, %._crit_edge.i.i ], [ 17179869180, %bb.p ]
  %i.do = load ptr, ptr @_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_15arenaE, align 8, !tbaa !18
  %i.dp = tail call noundef ptr @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc14AllocWithArenaEmPNS2_5ArenaE(i64 noundef %.lcssa.i.i, ptr noundef %i.do) ; 4 uses
  %i.dq = load ptr, ptr %i.de, align 8, !tbaa !24 ; 4 uses
  %i.dr = load i32, ptr %i.df, align 8, !tbaa !27 ; 2 uses
  switch i32 %i.dr, label %bb.r [
    i32 0, label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i
    i32 1, label %bb.s
  ], !prof !21

bb.r:                                             ; preds = %bb.q
  %i.ds = zext i32 %i.dr to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.ds, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.dp, ptr align 4 %i.dq, i64 %.idx.i.i.i.i, i1 false)
  %.pre.i.i = load ptr, ptr %i.de, align 8, !tbaa !24
  br label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i

bb.s:                                             ; preds = %bb.q
  %i.dt = load i32, ptr %i.dq, align 4, !tbaa !3
  store i32 %i.dt, ptr %i.dp, align 4, !tbaa !3
  br label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i

_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i:          ; preds = %bb.s, %bb.r, %bb.q
  %i.du = phi ptr [ %i.dq, %bb.q ], [ %.pre.i.i, %bb.r ], [ %i.dq, %bb.s ] ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dd, i64 88
  %.not.i4.i.i = icmp eq ptr %i.du, %i.dv
  br i1 %.not.i4.i.i, label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i, label %bb.t

bb.t:                                             ; preds = %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i
  tail call void @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc4FreeEPv(ptr noundef %i.du)
  br label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i

_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i: ; preds = %bb.t, %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i
  store ptr %i.dp, ptr %i.de, align 8, !tbaa !24
  %.pre1.i = load i32, ptr %i.df, align 8, !tbaa !27
  br label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit

_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit: ; preds = %._crit_edge.i, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i
  %i.dw = phi i32 [ %i.dg, %._crit_edge.i ], [ %.pre1.i, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i ]
  %i.dx = phi ptr [ %.pre.i46, %._crit_edge.i ], [ %i.dp, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i ]
  %i.dy = zext i32 %i.dw to i64
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %i.dy
  store i32 %.lcssa89, ptr %i.dz, align 4, !tbaa !3
  %i.ea = load i32, ptr %i.df, align 8, !tbaa !27
  %i.eb = add i32 %i.ea, 1
  store i32 %i.eb, ptr %i.df, align 8, !tbaa !27
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
  %3 = add i32 %i.az, 1
  %.not.i39.i = icmp eq i32 %i.az, -1
  br i1 %.not.i39.i, label %bb.k, label %.lr.ph.i.i40.i

.lr.ph.i.i40.i:                                   ; preds = %bb.j, %.lr.ph.i.i40.i
  %i.bc = phi i32 [ %i.bd, %.lr.ph.i.i40.i ], [ %i.az, %bb.j ]
  %i.bd = shl i32 %i.bc, 1                        ; 4 uses
  %4 = icmp ult i32 %i.bd, %3
  br i1 %4, label %.lr.ph.i.i40.i, label %._crit_edge.i.i41.i, !llvm.loop !47

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
  %i.bv = phi i64 [ 0, %.lr.ph202.lr.ph ], [ %indvars.iv.next.i, %bb.y ]
  %.val10.i.i208 = load ptr, ptr %i.bt, align 8
  br label %bb.p

bb.o:                                             ; preds = %bb.p
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i209
  br i1 %exitcond.not.i, label %thread-pre-split.loopexit.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph202, %bb.o
  %indvars.iv.i201 = phi i64 [ %i.bv, %.lr.ph202 ], [ %indvars.iv.next.i, %bb.o ] ; 2 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %.val10.i.i208, i64 %indvars.iv.i201
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !3  ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i201, 1 ; 5 uses
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
  %5 = add i32 %i.ci, 1
  %.not.i53.i = icmp eq i32 %i.ci, -1
  br i1 %.not.i53.i, label %bb.u, label %.lr.ph.i.i54.i

.lr.ph.i.i54.i:                                   ; preds = %bb.t, %.lr.ph.i.i54.i
  %i.cl = phi i32 [ %i.cm, %.lr.ph.i.i54.i ], [ %i.ci, %bb.t ]
  %i.cm = shl i32 %i.cl, 1                        ; 4 uses
  %6 = icmp ult i32 %i.cm, %5
  br i1 %6, label %.lr.ph.i.i54.i, label %._crit_edge.i.i55.i, !llvm.loop !47

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
  %umax.i = tail call i32 @llvm.umax.i32(i32 %i.bz, i32 %.val.i.i)
  %wide.trip.count.i = zext i32 %umax.i to i64    ; 2 uses
  %exitcond.not.i200 = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i200, label %thread-pre-split.loopexit.i, label %.lr.ph202, !llvm.loop !56

_ZN4absl12lts_2025051224synchronization_internalL10ForwardDFSEPNS1_11GraphCycles3RepEii.exit: ; preds = %bb.q
  %.val51 = load ptr, ptr %i.y, align 8           ; 4 uses
  %i.dc = getelementptr i8, ptr %i.f, i64 120
  %.val52 = load i32, ptr %i.dc, align 8, !tbaa !27
  %i.dd = add i32 %.val52, -1                     ; 2 uses
  %i.de = mul i32 %i.c, 41
  %.02410.i.i = and i32 %i.dd, %i.de              ; 2 uses
  %i.df = zext i32 %.02410.i.i to i64             ; 2 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %.val51, i64 %i.df
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !3  ; 2 uses
  %i.di = icmp eq i32 %i.dh, %i.c
  br i1 %i.di, label %_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.thread.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4absl12lts_2025051224synchronization_internalL10ForwardDFSEPNS1_11GraphCycles3RepEii.exit, %bb.z
  %i.dj = phi i32 [ %i.dq, %bb.z ], [ %i.dh, %_ZN4absl12lts_2025051224synchronization_internalL10ForwardDFSEPNS1_11GraphCycles3RepEii.exit ] ; 2 uses
  %.02413.i.i = phi i32 [ %.024.i.i, %bb.z ], [ %.02410.i.i, %_ZN4absl12lts_2025051224synchronization_internalL10ForwardDFSEPNS1_11GraphCycles3RepEii.exit ] ; 3 uses
  %.01912.i.i = phi i8 [ %spec.select27.i.i, %bb.z ], [ 0, %_ZN4absl12lts_2025051224synchronization_internalL10ForwardDFSEPNS1_11GraphCycles3RepEii.exit ] ; 3 uses
  %.02111.i.i = phi i32 [ %spec.select.i.i, %bb.z ], [ 0, %_ZN4absl12lts_2025051224synchronization_internalL10ForwardDFSEPNS1_11GraphCycles3RepEii.exit ] ; 2 uses
  %i.dk = icmp eq i32 %i.dj, -1
  br i1 %i.dk, label %_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.i, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i.i
  %i.dl = icmp ne i32 %i.dj, -2
  %i.dm = trunc nuw i8 %.01912.i.i to i1
  %or.cond.i.i = select i1 %i.dl, i1 true, i1 %i.dm ; 2 uses
  %spec.select.i.i = select i1 %or.cond.i.i, i32 %.02111.i.i, i32 %.02413.i.i
  %spec.select27.i.i = select i1 %or.cond.i.i, i8 %.01912.i.i, i8 1
  %i.dn = add i32 %.02413.i.i, 1
  %.024.i.i = and i32 %i.dn, %i.dd                ; 2 uses
  %i.do = zext i32 %.024.i.i to i64               ; 2 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %.val51, i64 %i.do
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !3  ; 2 uses
  %i.dr = icmp eq i32 %i.dq, %i.c
  br i1 %i.dr, label %_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.thread.i, label %.lr.ph.i.i, !llvm.loop !46

_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.i: ; preds = %.lr.ph.i.i
  %i.ds = trunc nuw i8 %.01912.i.i to i1
  %i.dt = select i1 %i.ds, i32 %.02111.i.i, i32 %.02413.i.i
  %.pre.i = zext i32 %i.dt to i64                 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw [4 x i8], ptr %.val51, i64 %.pre.i
  %.pre7.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !3
  %i.du = icmp eq i32 %.pre7.i, %i.c
  br i1 %i.du, label %_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.thread.i, label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit

_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.thread.i: ; preds = %bb.z, %_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.i, %_ZN4absl12lts_2025051224synchronization_internalL10ForwardDFSEPNS1_11GraphCycles3RepEii.exit
  %.pre-phi12.i = phi i64 [ %.pre.i, %_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.i ], [ %i.df, %_ZN4absl12lts_2025051224synchronization_internalL10ForwardDFSEPNS1_11GraphCycles3RepEii.exit ], [ %i.do, %bb.z ]
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %.val51, i64 %.pre-phi12.i
  store i32 -2, ptr %i.dv, align 4, !tbaa !3
  br label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit

_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit: ; preds = %_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.i, %_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.thread.i
  %.val49 = load ptr, ptr %i.aa, align 8          ; 4 uses
  %i.dw = getelementptr i8, ptr %i.o, i64 64
  %.val50 = load i32, ptr %i.dw, align 8, !tbaa !27
  %i.dx = add i32 %.val50, -1                     ; 2 uses
  %i.dy = mul i32 %i.b, 41
  %.02410.i.i55 = and i32 %i.dx, %i.dy            ; 2 uses
  %i.dz = zext i32 %.02410.i.i55 to i64           ; 2 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %.val49, i64 %i.dz
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !3  ; 2 uses
  %i.ec = icmp eq i32 %i.eb, %i.b
  br i1 %i.ec, label %_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.thread.i64, label %.lr.ph.i.i56

.lr.ph.i.i56:                                     ; preds = %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit, %bb.aa
  %i.ed = phi i32 [ %i.ek, %bb.aa ], [ %i.eb, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit ] ; 2 uses
  %.02413.i.i57 = phi i32 [ %.024.i.i63, %bb.aa ], [ %.02410.i.i55, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit ] ; 3 uses
  %.01912.i.i58 = phi i8 [ %spec.select27.i.i62, %bb.aa ], [ 0, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit ] ; 3 uses
  %.02111.i.i59 = phi i32 [ %spec.select.i.i61, %bb.aa ], [ 0, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit ] ; 2 uses
  %i.ee = icmp eq i32 %i.ed, -1
  br i1 %i.ee, label %_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.i66, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i.i56
  %i.ef = icmp ne i32 %i.ed, -2
  %i.eg = trunc nuw i8 %.01912.i.i58 to i1
  %or.cond.i.i60 = select i1 %i.ef, i1 true, i1 %i.eg ; 2 uses
  %spec.select.i.i61 = select i1 %or.cond.i.i60, i32 %.02111.i.i59, i32 %.02413.i.i57
  %spec.select27.i.i62 = select i1 %or.cond.i.i60, i8 %.01912.i.i58, i8 1
  %i.eh = add i32 %.02413.i.i57, 1
  %.024.i.i63 = and i32 %i.eh, %i.dx              ; 2 uses
  %i.ei = zext i32 %.024.i.i63 to i64             ; 2 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %.val49, i64 %i.ei
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !3  ; 2 uses
  %i.el = icmp eq i32 %i.ek, %i.b
  br i1 %i.el, label %_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.thread.i64, label %.lr.ph.i.i56, !llvm.loop !46

_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.i66: ; preds = %.lr.ph.i.i56
  %i.em = trunc nuw i8 %.01912.i.i58 to i1
  %i.en = select i1 %i.em, i32 %.02111.i.i59, i32 %.02413.i.i57
  %.pre.i67 = zext i32 %i.en to i64               ; 2 uses
  %.phi.trans.insert.i68 = getelementptr inbounds nuw [4 x i8], ptr %.val49, i64 %.pre.i67
  %.pre7.i69 = load i32, ptr %.phi.trans.insert.i68, align 4, !tbaa !3
  %i.eo = icmp eq i32 %.pre7.i69, %i.b
  br i1 %i.eo, label %_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.thread.i64, label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit70

_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.thread.i64: ; preds = %bb.aa, %_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.i66, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit
  %.pre-phi12.i65 = phi i64 [ %.pre.i67, %_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.i66 ], [ %i.dz, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit ], [ %i.ei, %bb.aa ]
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %.val49, i64 %.pre-phi12.i65
  store i32 -2, ptr %i.ep, align 4, !tbaa !3
  br label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit70

_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit70: ; preds = %_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.i66, %_ZNK4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.thread.i64
  %.val46 = load ptr, ptr %i.ae, align 8, !tbaa !24 ; 3 uses
  %.val48 = load i32, ptr %i.ah, align 8, !tbaa !27 ; 2 uses
  %i.eq = zext i32 %.val48 to i64
  %.idx = shl nuw nsw i64 %i.eq, 2                ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.val46, i64 %.idx
  %.not45109 = icmp eq i32 %.val48, 0
  br i1 %.not45109, label %_ZN4absl12lts_2025051224synchronization_internalL7ReorderEPNS1_11GraphCycles3RepE.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit70
  %i.es = add nsw i64 %.idx, -4                   ; 2 uses
  %i.et = lshr exact i64 %i.es, 2
  %i.eu = add nuw nsw i64 %i.et, 1
  %xtraiter = and i64 %i.eu, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.041110.prol = phi ptr [ %i.fa, %.lr.ph.prol ], [ %.val46, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.ev = load i32, ptr %.041110.prol, align 4, !tbaa !3
  %i.ew = zext i32 %i.ev to i64
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.ew
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !22
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 12
  store i8 0, ptr %i.ez, align 4, !tbaa !40
  %i.fa = getelementptr inbounds nuw i8, ptr %.041110.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !57

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.041110.unr = phi ptr [ %.val46, %.lr.ph.preheader ], [ %i.fa, %.lr.ph.prol ]
  %i.fb = icmp ult i64 %i.es, 28
  br i1 %i.fb, label %_ZN4absl12lts_2025051224synchronization_internalL7ReorderEPNS1_11GraphCycles3RepE.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.041110 = phi ptr [ %i.gx, %.lr.ph ], [ %.041110.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.fc = load i32, ptr %.041110, align 4, !tbaa !3
  %i.fd = zext i32 %i.fc to i64
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.fd
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !22
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 12
  store i8 0, ptr %i.fg, align 4, !tbaa !40
  %i.fh = getelementptr inbounds nuw i8, ptr %.041110, i64 4
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !3
  %i.fj = zext i32 %i.fi to i64
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.fj
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !22
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 12
  store i8 0, ptr %i.fm, align 4, !tbaa !40
  %i.fn = getelementptr inbounds nuw i8, ptr %.041110, i64 8
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !3
  %i.fp = zext i32 %i.fo to i64
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.fp
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !22
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 12
  store i8 0, ptr %i.fs, align 4, !tbaa !40
  %i.ft = getelementptr inbounds nuw i8, ptr %.041110, i64 12
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !3
  %i.fv = zext i32 %i.fu to i64
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.fv
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !22
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 12
  store i8 0, ptr %i.fy, align 4, !tbaa !40
  %i.fz = getelementptr inbounds nuw i8, ptr %.041110, i64 16
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !3
  %i.gb = zext i32 %i.ga to i64
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.gb
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !22
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 12
  store i8 0, ptr %i.ge, align 4, !tbaa !40
  %i.gf = getelementptr inbounds nuw i8, ptr %.041110, i64 20
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !3
  %i.gh = zext i32 %i.gg to i64
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.gh
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !22
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 12
  store i8 0, ptr %i.gk, align 4, !tbaa !40
  %i.gl = getelementptr inbounds nuw i8, ptr %.041110, i64 24
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !3
  %i.gn = zext i32 %i.gm to i64
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.gn
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !22
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 12
  store i8 0, ptr %i.gq, align 4, !tbaa !40
  %i.gr = getelementptr inbounds nuw i8, ptr %.041110, i64 28
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !3
  %i.gt = zext i32 %i.gs to i64
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.gt
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !22
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 12
  store i8 0, ptr %i.gw, align 4, !tbaa !40
  %i.gx = getelementptr inbounds nuw i8, ptr %.041110, i64 32 ; 2 uses
  %.not45.7 = icmp eq ptr %i.gx, %i.er
  br i1 %.not45.7, label %_ZN4absl12lts_2025051224synchronization_internalL7ReorderEPNS1_11GraphCycles3RepE.exit, label %.lr.ph

bb.ab:                                            ; preds = %thread-pre-split.i
  %i.gy = load i32, ptr %i.o, align 8, !tbaa !43
  %i.gz = getelementptr inbounds nuw i8, ptr %i.a, i64 1048744 ; 9 uses
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !24 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.a, i64 1048752 ; 3 uses
  %.not.i.i.i71 = icmp eq ptr %i.ha, %i.hb
  br i1 %.not.i.i.i71, label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE5clearEv.exit.i72, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc4FreeEPv(ptr noundef %i.ha)
  br label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE5clearEv.exit.i72

_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE5clearEv.exit.i72: ; preds = %bb.ac, %bb.ab
  store ptr %i.hb, ptr %i.gz, align 8, !tbaa !24
  %i.hc = getelementptr inbounds nuw i8, ptr %i.a, i64 1048784 ; 10 uses
  store i32 0, ptr %i.hc, align 8, !tbaa !27
  %i.hd = getelementptr inbounds nuw i8, ptr %i.a, i64 1048788 ; 3 uses
  store i32 8, ptr %i.hd, align 4, !tbaa !28
  %i.he = load ptr, ptr %i.aj, align 8, !tbaa !24 ; 2 uses
  %.not.i.i22.i = icmp eq ptr %i.he, %i.al
  br i1 %.not.i.i22.i, label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit.i73, label %bb.ad

bb.ad:                                            ; preds = %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE5clearEv.exit.i72
  tail call void @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc4FreeEPv(ptr noundef %i.he)
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
  %i.hf = add i32 %.val1666.i, -1                 ; 3 uses
  %i.hg = zext i32 %i.hf to i64
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %.val17.i, i64 %i.hg
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !3  ; 2 uses
  store i32 %i.hf, ptr %i.am, align 8, !tbaa !27
  %.val15.i = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.hj = zext i32 %i.hi to i64
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %.val15.i, i64 %i.hj
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !22 ; 3 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 12 ; 2 uses
  %i.hn = load i8, ptr %i.hm, align 4, !tbaa !40, !range !41, !noundef !42
  %i.ho = trunc nuw i8 %i.hn to i1
  br i1 %i.ho, label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS4_.exit.i, label %bb.af, !llvm.loop !59

bb.af:                                            ; preds = %bb.ae
  store i8 1, ptr %i.hm, align 4, !tbaa !40
  %i.hp = load i32, ptr %i.hc, align 8, !tbaa !27 ; 5 uses
  %i.hq = load i32, ptr %i.hd, align 4, !tbaa !28
  %i.hr = icmp eq i32 %i.hp, %i.hq
  br i1 %i.hr, label %bb.ag, label %._crit_edge.i24.i

._crit_edge.i24.i:                                ; preds = %bb.af
  %.pre.i25.i = load ptr, ptr %i.gz, align 8, !tbaa !24
  br label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit36.i

bb.ag:                                            ; preds = %bb.af
  %7 = add i32 %i.hp, 1
  %.not.i26.i = icmp eq i32 %i.hp, -1
  br i1 %.not.i26.i, label %bb.ah, label %.lr.ph.i.i27.i

.lr.ph.i.i27.i:                                   ; preds = %bb.ag, %.lr.ph.i.i27.i
  %i.hs = phi i32 [ %i.ht, %.lr.ph.i.i27.i ], [ %i.hp, %bb.ag ]
  %i.ht = shl i32 %i.hs, 1                        ; 4 uses
  %8 = icmp ult i32 %i.ht, %7
  br i1 %8, label %.lr.ph.i.i27.i, label %._crit_edge.i.i28.i, !llvm.loop !47

._crit_edge.i.i28.i:                              ; preds = %.lr.ph.i.i27.i
  store i32 %i.ht, ptr %i.hd, align 4, !tbaa !28
  %i.hu = zext i32 %i.ht to i64
  %i.hv = shl nuw nsw i64 %i.hu, 2
  br label %bb.ah

bb.ah:                                            ; preds = %._crit_edge.i.i28.i, %bb.ag
  %.lcssa.i.i29.i = phi i64 [ %i.hv, %._crit_edge.i.i28.i ], [ 17179869180, %bb.ag ]
  %i.hw = load ptr, ptr @_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_15arenaE, align 8, !tbaa !18
  %i.hx = tail call noundef ptr @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc14AllocWithArenaEmPNS2_5ArenaE(i64 noundef %.lcssa.i.i29.i, ptr noundef %i.hw) ; 4 uses
  %i.hy = load ptr, ptr %i.gz, align 8, !tbaa !24 ; 4 uses
  %i.hz = load i32, ptr %i.hc, align 8, !tbaa !27 ; 2 uses
  switch i32 %i.hz, label %bb.ai [
    i32 0, label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i30.i
    i32 1, label %bb.aj
  ], !prof !21

bb.ai:                                            ; preds = %bb.ah
  %i.ia = zext i32 %i.hz to i64
  %.idx.i.i.i.i34.i = shl nuw nsw i64 %i.ia, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.hx, ptr align 4 %i.hy, i64 %.idx.i.i.i.i34.i, i1 false)
  %.pre.i.i35.i = load ptr, ptr %i.gz, align 8, !tbaa !24
  br label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i30.i

bb.aj:                                            ; preds = %bb.ah
  %i.ib = load i32, ptr %i.hy, align 4, !tbaa !3
  store i32 %i.ib, ptr %i.hx, align 4, !tbaa !3
  br label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i30.i

_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i30.i:      ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.ic = phi ptr [ %i.hy, %bb.ah ], [ %.pre.i.i35.i, %bb.ai ], [ %i.hy, %bb.aj ] ; 2 uses
  %.not.i4.i.i31.i = icmp eq ptr %i.ic, %i.hb
  br i1 %.not.i4.i.i31.i, label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i32.i, label %bb.ak

bb.ak:                                            ; preds = %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i30.i
  tail call void @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc4FreeEPv(ptr noundef %i.ic)
  br label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i32.i

_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i32.i: ; preds = %bb.ak, %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i30.i
  store ptr %i.hx, ptr %i.gz, align 8, !tbaa !24
  %.pre1.i33.i = load i32, ptr %i.hc, align 8, !tbaa !27
  br label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit36.i

_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit36.i: ; preds = %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i32.i, %._crit_edge.i24.i
  %i.id = phi i32 [ %i.hp, %._crit_edge.i24.i ], [ %.pre1.i33.i, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i32.i ]
  %i.ie = phi ptr [ %.pre.i25.i, %._crit_edge.i24.i ], [ %i.hx, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i32.i ]
  %i.if = zext i32 %i.id to i64
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.ie, i64 %i.if
  store i32 %i.hi, ptr %i.ig, align 4, !tbaa !3
  %i.ih = load i32, ptr %i.hc, align 8, !tbaa !27
  %i.ii = add i32 %i.ih, 1
  store i32 %i.ii, ptr %i.hc, align 8, !tbaa !27
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hl, i64 24
  %i.ik = getelementptr inbounds nuw i8, ptr %i.hl, i64 64 ; 2 uses
  %.val.i.i76215 = load i32, ptr %i.ik, align 8, !tbaa !27 ; 2 uses
  %exitcond.not.i80210217 = icmp eq i32 %.val.i.i76215, 0
  br i1 %exitcond.not.i80210217, label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS4_.exit.loopexit.i, label %.lr.ph212.lr.ph

.lr.ph212.lr.ph:                                  ; preds = %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit36.i
  %wide.trip.count.i78216 = zext i32 %.val.i.i76215 to i64
  br label %.lr.ph212

.lr.ph212:                                        ; preds = %.lr.ph212.lr.ph, %bb.av
  %wide.trip.count.i78219 = phi i64 [ %wide.trip.count.i78216, %.lr.ph212.lr.ph ], [ %wide.trip.count.i78, %bb.av ]
  %i.il = phi i64 [ 0, %.lr.ph212.lr.ph ], [ %indvars.iv.next.i81, %bb.av ]
  %.val10.i.i75218 = load ptr, ptr %i.ij, align 8
  br label %bb.am

bb.al:                                            ; preds = %bb.am
  %exitcond.not.i80 = icmp eq i64 %indvars.iv.next.i81, %wide.trip.count.i78219
  br i1 %exitcond.not.i80, label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS4_.exit.loopexit.i, label %bb.am

bb.am:                                            ; preds = %.lr.ph212, %bb.al
  %indvars.iv.i79211 = phi i64 [ %i.il, %.lr.ph212 ], [ %indvars.iv.next.i81, %bb.al ] ; 2 uses
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %.val10.i.i75218, i64 %indvars.iv.i79211
  %i.in = load i32, ptr %i.im, align 4, !tbaa !3  ; 3 uses
  %indvars.iv.next.i81 = add nuw nsw i64 %indvars.iv.i79211, 1 ; 5 uses
  %i.io = icmp sgt i32 %i.in, -1
  br i1 %i.io, label %bb.an, label %bb.al

bb.an:                                            ; preds = %bb.am
  %i.ip = trunc nuw i64 %indvars.iv.next.i81 to i32
  %.val.i82 = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.iq = zext nneg i32 %i.in to i64
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %.val.i82, i64 %i.iq
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !22 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 12
  %i.iu = load i8, ptr %i.it, align 4, !tbaa !40, !range !41, !noundef !42
  %i.iv = trunc nuw i8 %i.iu to i1
  br i1 %i.iv, label %bb.av, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.iw = load i32, ptr %i.is, align 8, !tbaa !43
  %i.ix = icmp slt i32 %i.gy, %i.iw
  br i1 %i.ix, label %bb.ap, label %bb.av

bb.ap:                                            ; preds = %bb.ao
  %i.iy = load i32, ptr %i.am, align 8, !tbaa !27 ; 5 uses
  %i.iz = load i32, ptr %i.an, align 4, !tbaa !28
  %i.ja = icmp eq i32 %i.iy, %i.iz
  br i1 %i.ja, label %bb.aq, label %._crit_edge.i38.i

._crit_edge.i38.i:                                ; preds = %bb.ap
  %.pre.i39.i = load ptr, ptr %i.aj, align 8, !tbaa !24
  br label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit50.i

bb.aq:                                            ; preds = %bb.ap
  %9 = add i32 %i.iy, 1
  %.not.i40.i = icmp eq i32 %i.iy, -1
  br i1 %.not.i40.i, label %bb.ar, label %.lr.ph.i.i41.i

.lr.ph.i.i41.i:                                   ; preds = %bb.aq, %.lr.ph.i.i41.i
  %i.jb = phi i32 [ %i.jc, %.lr.ph.i.i41.i ], [ %i.iy, %bb.aq ]
  %i.jc = shl i32 %i.jb, 1                        ; 4 uses
  %10 = icmp ult i32 %i.jc, %9
  br i1 %10, label %.lr.ph.i.i41.i, label %._crit_edge.i.i42.i, !llvm.loop !47

._crit_edge.i.i42.i:                              ; preds = %.lr.ph.i.i41.i
  store i32 %i.jc, ptr %i.an, align 4, !tbaa !28
  %i.jd = zext i32 %i.jc to i64
  %i.je = shl nuw nsw i64 %i.jd, 2
  br label %bb.ar

bb.ar:                                            ; preds = %._crit_edge.i.i42.i, %bb.aq
  %.lcssa.i.i43.i = phi i64 [ %i.je, %._crit_edge.i.i42.i ], [ 17179869180, %bb.aq ]
  %i.jf = load ptr, ptr @_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_15arenaE, align 8, !tbaa !18
  %i.jg = tail call noundef ptr @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc14AllocWithArenaEmPNS2_5ArenaE(i64 noundef %.lcssa.i.i43.i, ptr noundef %i.jf) ; 4 uses
  %i.jh = load ptr, ptr %i.aj, align 8, !tbaa !24 ; 4 uses
  %i.ji = load i32, ptr %i.am, align 8, !tbaa !27 ; 2 uses
  switch i32 %i.ji, label %bb.as [
    i32 0, label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i44.i
    i32 1, label %bb.at
  ], !prof !21

bb.as:                                            ; preds = %bb.ar
  %i.jj = zext i32 %i.ji to i64
  %.idx.i.i.i.i48.i = shl nuw nsw i64 %i.jj, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.jg, ptr align 4 %i.jh, i64 %.idx.i.i.i.i48.i, i1 false)
  %.pre.i.i49.i = load ptr, ptr %i.aj, align 8, !tbaa !24
  br label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i44.i

bb.at:                                            ; preds = %bb.ar
  %i.jk = load i32, ptr %i.jh, align 4, !tbaa !3
  store i32 %i.jk, ptr %i.jg, align 4, !tbaa !3
  br label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i44.i

_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i44.i:      ; preds = %bb.at, %bb.as, %bb.ar
  %i.jl = phi ptr [ %i.jh, %bb.ar ], [ %.pre.i.i49.i, %bb.as ], [ %i.jh, %bb.at ] ; 2 uses
  %.not.i4.i.i45.i = icmp eq ptr %i.jl, %i.al
  br i1 %.not.i4.i.i45.i, label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i46.i, label %bb.au

bb.au:                                            ; preds = %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i44.i
  tail call void @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc4FreeEPv(ptr noundef %i.jl)
  br label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i46.i

_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i46.i: ; preds = %bb.au, %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i44.i
  store ptr %i.jg, ptr %i.aj, align 8, !tbaa !24
  %.pre1.i47.i = load i32, ptr %i.am, align 8, !tbaa !27
  br label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit50.i

_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit50.i: ; preds = %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i46.i, %._crit_edge.i38.i
  %i.jm = phi i32 [ %i.iy, %._crit_edge.i38.i ], [ %.pre1.i47.i, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i46.i ]
  %i.jn = phi ptr [ %.pre.i39.i, %._crit_edge.i38.i ], [ %i.jg, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i46.i ]
  %i.jo = zext i32 %i.jm to i64
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.jn, i64 %i.jo
  store i32 %i.in, ptr %i.jp, align 4, !tbaa !3
  %i.jq = load i32, ptr %i.am, align 8, !tbaa !27
  %i.jr = add i32 %i.jq, 1
  store i32 %i.jr, ptr %i.am, align 8, !tbaa !27
  br label %bb.av

bb.av:                                            ; preds = %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit50.i, %bb.ao, %bb.an
  %.val.i.i76 = load i32, ptr %i.ik, align 8, !tbaa !27
  %umax.i77 = tail call i32 @llvm.umax.i32(i32 %i.ip, i32 %.val.i.i76)
  %wide.trip.count.i78 = zext i32 %umax.i77 to i64 ; 2 uses
  %exitcond.not.i80210 = icmp eq i64 %indvars.iv.next.i81, %wide.trip.count.i78
  br i1 %exitcond.not.i80210, label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS4_.exit.loopexit.i, label %.lr.ph212, !llvm.loop !60

_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS4_.exit.loopexit.i: ; preds = %bb.av, %bb.al, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit36.i
  %.val16.pr.pre.i = load i32, ptr %i.am, align 8, !tbaa !27
  br label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS4_.exit.i

_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS4_.exit.i: ; preds = %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS4_.exit.loopexit.i, %bb.ae
  %.val16.pr.i = phi i32 [ %.val16.pr.pre.i, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS4_.exit.loopexit.i ], [ %i.hf, %bb.ae ] ; 2 uses
  %i.js = icmp eq i32 %.val16.pr.i, 0
  br i1 %i.js, label %_ZN4absl12lts_2025051224synchronization_internalL11BackwardDFSEPNS1_11GraphCycles3RepEii.exit, label %bb.ae

_ZN4absl12lts_2025051224synchronization_internalL11BackwardDFSEPNS1_11GraphCycles3RepEii.exit: ; preds = %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS4_.exit.i
  %.val40.i = load ptr, ptr %i.gz, align 8, !tbaa !24
  %.val41.i = load i32, ptr %i.hc, align 8, !tbaa !27
  tail call fastcc void @_ZN4absl12lts_2025051224synchronization_internalL4SortERKNS1_12_GLOBAL__N_13VecIPNS2_4NodeEEEPNS3_IiEE(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr %.val40.i, i32 %.val41.i)
  %.val38.i = load ptr, ptr %i.ae, align 8, !tbaa !24
  %.val39.i = load i32, ptr %i.ah, align 8, !tbaa !27
  tail call fastcc void @_ZN4absl12lts_2025051224synchronization_internalL4SortERKNS1_12_GLOBAL__N_13VecIPNS2_4NodeEEEPNS3_IiEE(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr %.val38.i, i32 %.val39.i)
  %i.jt = getelementptr inbounds nuw i8, ptr %i.a, i64 1048792 ; 5 uses
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !24 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.a, i64 1048800 ; 2 uses
  %.not.i.i.i83 = icmp eq ptr %i.ju, %i.jv
  br i1 %.not.i.i.i83, label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE5clearEv.exit.i84.a, label %bb.aw

bb.aw:                                            ; preds = %_ZN4absl12lts_2025051224synchronization_internalL11BackwardDFSEPNS1_11GraphCycles3RepEii.exit
  tail call void @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc4FreeEPv(ptr noundef %i.ju)
  br label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE5clearEv.exit.i84.a

_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE5clearEv.exit.i84.a: ; preds = %bb.aw, %_ZN4absl12lts_2025051224synchronization_internalL11BackwardDFSEPNS1_11GraphCycles3RepEii.exit
  store ptr %i.jv, ptr %i.jt, align 8, !tbaa !24
  %11 = getelementptr inbounds nuw i8, ptr %i.a, i64 1048832 ; 2 uses
  store i32 0, ptr %11, align 8, !tbaa !27
  %12 = getelementptr inbounds nuw i8, ptr %i.a, i64 1048836
  store i32 8, ptr %12, align 4, !tbaa !28
  %.val44.i.a = load ptr, ptr %i.gz, align 8, !tbaa !24
  %.val45.i = load i32, ptr %i.hc, align 8, !tbaa !27
  tail call fastcc void @_ZN4absl12lts_2025051224synchronization_internalL10MoveToListEPNS1_11GraphCycles3RepEPNS1_12_GLOBAL__N_13VecIiEES8_(ptr noundef nonnull %i.a, ptr %.val44.i.a, i32 %.val45.i, ptr noundef nonnull %i.jt)
  %.val42.i.a = load ptr, ptr %i.ae, align 8, !tbaa !24
  %.val43.i.a = load i32, ptr %i.ah, align 8, !tbaa !27
  tail call fastcc void @_ZN4absl12lts_2025051224synchronization_internalL10MoveToListEPNS1_11GraphCycles3RepEPNS1_12_GLOBAL__N_13VecIiEES8_(ptr noundef nonnull %i.a, ptr %.val42.i.a, i32 %.val43.i.a, ptr noundef nonnull %i.jt)
  %i.jw = getelementptr inbounds nuw i8, ptr %i.a, i64 1048840 ; 5 uses
  %.val28.i85 = load i32, ptr %i.hc, align 8, !tbaa !27 ; 2 uses
  %.val27.i.a = load i32, ptr %i.ah, align 8, !tbaa !27 ; 2 uses
  %13 = add i32 %.val27.i.a, %.val28.i85          ; 3 uses
  %14 = getelementptr inbounds nuw i8, ptr %i.a, i64 1048884 ; 2 uses
  %i.jx = load i32, ptr %14, align 4, !tbaa !28   ; 2 uses
  %15 = icmp ugt i32 %13, %i.jx
  br i1 %15, label %.lr.ph.i.i.i, label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE5clearEv.exit._ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE6resizeEj.exit_crit_edge.i

_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE5clearEv.exit._ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE6resizeEj.exit_crit_edge.i: ; preds = %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE5clearEv.exit.i84.a
  %.val31.pre.i = load ptr, ptr %i.jw, align 8, !tbaa !24
  br label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE6resizeEj.exit.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE5clearEv.exit.i84.a, %.lr.ph.i.i.i
  %i.jy = phi i32 [ %i.jz, %.lr.ph.i.i.i ], [ %i.jx, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE5clearEv.exit.i84.a ]
  %i.jz = shl i32 %i.jy, 1                        ; 4 uses
  %i.ka = icmp ult i32 %i.jz, %13
  br i1 %i.ka, label %.lr.ph.i.i.i, label %bb.ax, !llvm.loop !47

bb.ax:                                            ; preds = %.lr.ph.i.i.i
  store i32 %i.jz, ptr %14, align 4, !tbaa !28
  %i.kb = zext i32 %i.jz to i64
  %i.kc = shl nuw nsw i64 %i.kb, 2
  %i.kd = load ptr, ptr @_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_15arenaE, align 8, !tbaa !18
  %i.ke = tail call noundef ptr @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc14AllocWithArenaEmPNS2_5ArenaE(i64 noundef %i.kc, ptr noundef %i.kd) ; 4 uses
  %i.kf = load ptr, ptr %i.jw, align 8, !tbaa !24 ; 4 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.a, i64 1048880
  %i.kh = load i32, ptr %i.kg, align 8, !tbaa !27 ; 2 uses
  switch i32 %i.kh, label %bb.ay [
    i32 0, label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i.i
    i32 1, label %bb.az
  ], !prof !21

bb.ay:                                            ; preds = %bb.ax
  %i.ki = zext i32 %i.kh to i64
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.ki, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ke, ptr align 4 %i.kf, i64 %.idx.i.i.i.i.i, i1 false)
  %.pre.i.i.i.a = load ptr, ptr %i.jw, align 8, !tbaa !24
  br label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i.i

bb.az:                                            ; preds = %bb.ax
  %i.kj = load i32, ptr %i.kf, align 4, !tbaa !3
  store i32 %i.kj, ptr %i.ke, align 4, !tbaa !3
  br label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i.i

_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i.i:        ; preds = %bb.az, %bb.ay, %bb.ax
  %i.kk = phi ptr [ %i.kf, %bb.ax ], [ %.pre.i.i.i.a, %bb.ay ], [ %i.kf, %bb.az ] ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.a, i64 1048848
  %.not.i4.i.i.i = icmp eq ptr %i.kk, %i.kl
  br i1 %.not.i4.i.i.i, label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i.i, label %bb.ba

bb.ba:                                            ; preds = %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i.i
  tail call void @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc4FreeEPv(ptr noundef %i.kk)
  br label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i.i

_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i.i: ; preds = %bb.ba, %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i.i
  store ptr %i.ke, ptr %i.jw, align 8, !tbaa !24
  %.val37.pre.i = load i32, ptr %i.hc, align 8, !tbaa !27
  %.val35.pre.i = load i32, ptr %i.ah, align 8, !tbaa !27
  br label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE6resizeEj.exit.i

_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE6resizeEj.exit.i: ; preds = %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i.i, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE5clearEv.exit._ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE6resizeEj.exit_crit_edge.i
  %.val31.i = phi ptr [ %.val31.pre.i, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE5clearEv.exit._ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE6resizeEj.exit_crit_edge.i ], [ %i.ke, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i.i ] ; 2 uses
  %.val35.i = phi i32 [ %.val27.i.a, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE5clearEv.exit._ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE6resizeEj.exit_crit_edge.i ], [ %.val35.pre.i, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i.i ] ; 2 uses
  %.val37.i = phi i32 [ %.val28.i85, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE5clearEv.exit._ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE6resizeEj.exit_crit_edge.i ], [ %.val37.pre.i, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i.i ] ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.a, i64 1048880
  store i32 %13, ptr %i.km, align 8, !tbaa !27
  %.val33.i = load ptr, ptr %i.gz, align 8, !tbaa !24 ; 3 uses
  %i.kn = zext i32 %.val37.i to i64
  %.idx.i = shl nuw nsw i64 %i.kn, 2
  %i.ko = getelementptr inbounds nuw i8, ptr %.val33.i, i64 %.idx.i ; 2 uses
  %.val32.i = load ptr, ptr %i.ae, align 8, !tbaa !24 ; 3 uses
  %i.kp = zext i32 %.val35.i to i64
  %.idx47.i = shl nuw nsw i64 %i.kp, 2
  %i.kq = getelementptr inbounds nuw i8, ptr %.val32.i, i64 %.idx47.i ; 2 uses
  %i.kr = icmp ne i32 %.val37.i, 0
  %i.ks = icmp ne i32 %.val35.i, 0
  %i.kt = and i1 %i.ks, %i.kr
  br i1 %i.kt, label %.lr.ph.i.i46.i, label %._crit_edge.i.i.i

.lr.ph.i.i46.i:                                   ; preds = %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE6resizeEj.exit.i, %.lr.ph.i.i46.i
  %.024.i.i.i = phi ptr [ %i.kx, %.lr.ph.i.i46.i ], [ %.val31.i, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE6resizeEj.exit.i ] ; 2 uses
  %.01823.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i46.i ], [ %.val33.i, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE6resizeEj.exit.i ] ; 2 uses
  %.01922.i.i.i = phi ptr [ %.120.i.i.i, %.lr.ph.i.i46.i ], [ %.val32.i, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE6resizeEj.exit.i ] ; 2 uses
  %i.ku = load i32, ptr %.01922.i.i.i, align 4, !tbaa !3 ; 2 uses
  %i.kv = load i32, ptr %.01823.i.i.i, align 4, !tbaa !3 ; 2 uses
  %i.kw = icmp slt i32 %i.ku, %i.kv               ; 2 uses
  %.sink.i.i.i = tail call i32 @llvm.smin.i32(i32 %i.ku, i32 %i.kv)
  %.120.idx.i.i.i = select i1 %i.kw, i64 4, i64 0
  %.120.i.i.i = getelementptr inbounds nuw i8, ptr %.01922.i.i.i, i64 %.120.idx.i.i.i ; 3 uses
  %.1.idx.i.i.i = select i1 %i.kw, i64 0, i64 4
  %.1.i.i.i = getelementptr inbounds nuw i8, ptr %.01823.i.i.i, i64 %.1.idx.i.i.i ; 3 uses
  store i32 %.sink.i.i.i, ptr %.024.i.i.i, align 4, !tbaa !3
  %i.kx = getelementptr inbounds nuw i8, ptr %.024.i.i.i, i64 4 ; 2 uses
  %i.ky = icmp ne ptr %.1.i.i.i, %i.ko
  %i.kz = icmp ne ptr %.120.i.i.i, %i.kq
  %i.la = select i1 %i.ky, i1 %i.kz, i1 false
  br i1 %i.la, label %.lr.ph.i.i46.i, label %._crit_edge.i.i.i, !llvm.loop !61

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i46.i, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE6resizeEj.exit.i
  %.019.lcssa.i.i.i = phi ptr [ %.val32.i, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE6resizeEj.exit.i ], [ %.120.i.i.i, %.lr.ph.i.i46.i ] ; 3 uses
  %.018.lcssa.i.i.i = phi ptr [ %.val33.i, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE6resizeEj.exit.i ], [ %.1.i.i.i, %.lr.ph.i.i46.i ] ; 3 uses
  %.0.lcssa.i.i.i = phi ptr [ %.val31.i, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE6resizeEj.exit.i ], [ %i.kx, %.lr.ph.i.i46.i ] ; 3 uses
  %i.lb = ptrtoint ptr %i.ko to i64
  %i.lc = ptrtoint ptr %.018.lcssa.i.i.i to i64
  %i.ld = sub i64 %i.lb, %i.lc                    ; 4 uses
  %i.le = icmp sgt i64 %i.ld, 4
  br i1 %i.le, label %bb.bb, label %bb.bc, !prof !62

bb.bb:                                            ; preds = %._crit_edge.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.0.lcssa.i.i.i, ptr align 4 %.018.lcssa.i.i.i, i64 %i.ld, i1 false)
  br label %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit.i.i.i

bb.bc:                                            ; preds = %._crit_edge.i.i.i
  %i.lf = icmp eq i64 %i.ld, 4
  br i1 %i.lf, label %bb.bd, label %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit.i.i.i

bb.bd:                                            ; preds = %bb.bc
  %i.lg = load i32, ptr %.018.lcssa.i.i.i, align 4, !tbaa !3
  store i32 %i.lg, ptr %.0.lcssa.i.i.i, align 4, !tbaa !3
  br label %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit.i.i.i

_ZSt4copyIPiS0_ET0_T_S2_S1_.exit.i.i.i:           ; preds = %bb.bd, %bb.bc, %bb.bb
  %i.lh = getelementptr inbounds i8, ptr %.0.lcssa.i.i.i, i64 %i.ld ; 2 uses
  %i.li = ptrtoint ptr %i.kq to i64
  %i.lj = ptrtoint ptr %.019.lcssa.i.i.i to i64
  %i.lk = sub i64 %i.li, %i.lj                    ; 3 uses
  %i.ll = icmp sgt i64 %i.lk, 4
  br i1 %i.ll, label %bb.be, label %bb.bf, !prof !62

bb.be:                                            ; preds = %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.lh, ptr align 4 %.019.lcssa.i.i.i, i64 %i.lk, i1 false)
  br label %_ZSt5mergeIPiS0_S0_ET1_T_S2_T0_S3_S1_.exit.i

bb.bf:                                            ; preds = %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit.i.i.i
  %i.lm = icmp eq i64 %i.lk, 4
  br i1 %i.lm, label %bb.bg, label %_ZSt5mergeIPiS0_S0_ET1_T_S2_T0_S3_S1_.exit.i

bb.bg:                                            ; preds = %bb.bf
  %i.ln = load i32, ptr %.019.lcssa.i.i.i, align 4, !tbaa !3
  store i32 %i.ln, ptr %i.lh, align 4, !tbaa !3
  br label %_ZSt5mergeIPiS0_S0_ET1_T_S2_T0_S3_S1_.exit.i

_ZSt5mergeIPiS0_S0_ET1_T_S2_T0_S3_S1_.exit.i:     ; preds = %bb.bg, %bb.bf, %bb.be
  %.val26.i = load i32, ptr %11, align 8, !tbaa !27 ; 3 uses
  %.not.i86 = icmp eq i32 %.val26.i, 0
  br i1 %.not.i86, label %_ZN4absl12lts_2025051224synchronization_internalL7ReorderEPNS1_11GraphCycles3RepE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt5mergeIPiS0_S0_ET1_T_S2_T0_S3_S1_.exit.i
  %.val30.i87 = load ptr, ptr %i.jw, align 8, !tbaa !24 ; 5 uses
  %.val29.i = load ptr, ptr %i.jt, align 8, !tbaa !24 ; 5 uses
  %.val.i88 = load ptr, ptr %i.a, align 8, !tbaa !20 ; 5 uses
  %wide.trip.count.i89 = zext i32 %.val26.i to i64 ; 2 uses
  %xtraiter243 = and i64 %wide.trip.count.i89, 3  ; 3 uses
  %i.lo = icmp ult i32 %.val26.i, 4
  br i1 %i.lo, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i89, 4294967292
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bh, %.lr.ph.i.new
  %indvars.iv.i90 = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i91.3, %bb.bh ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.bh ]
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %.val30.i87, i64 %indvars.iv.i90
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !3
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %.val29.i, i64 %indvars.iv.i90
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !3
  %i.lt = zext i32 %i.ls to i64
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %.val.i88, i64 %i.lt
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !22
  store i32 %i.lq, ptr %i.lv, align 8, !tbaa !43
  %indvars.iv.next.i91 = or disjoint i64 %indvars.iv.i90, 1 ; 2 uses
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %.val30.i87, i64 %indvars.iv.next.i91
  %i.lx = load i32, ptr %i.lw, align 4, !tbaa !3
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %.val29.i, i64 %indvars.iv.next.i91
  %i.lz = load i32, ptr %i.ly, align 4, !tbaa !3
  %i.ma = zext i32 %i.lz to i64
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %.val.i88, i64 %i.ma
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !22
  store i32 %i.lx, ptr %i.mc, align 8, !tbaa !43
  %indvars.iv.next.i91.1 = or disjoint i64 %indvars.iv.i90, 2 ; 2 uses
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %.val30.i87, i64 %indvars.iv.next.i91.1
  %i.me = load i32, ptr %i.md, align 4, !tbaa !3
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %.val29.i, i64 %indvars.iv.next.i91.1
  %i.mg = load i32, ptr %i.mf, align 4, !tbaa !3
  %i.mh = zext i32 %i.mg to i64
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %.val.i88, i64 %i.mh
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !22
  store i32 %i.me, ptr %i.mj, align 8, !tbaa !43
  %indvars.iv.next.i91.2 = or disjoint i64 %indvars.iv.i90, 3 ; 2 uses
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %.val30.i87, i64 %indvars.iv.next.i91.2
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !3
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %.val29.i, i64 %indvars.iv.next.i91.2
  %i.mn = load i32, ptr %i.mm, align 4, !tbaa !3
  %i.mo = zext i32 %i.mn to i64
  %i.mp = getelementptr inbounds nuw [8 x i8], ptr %.val.i88, i64 %i.mo
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !22
  store i32 %i.ml, ptr %i.mq, align 8, !tbaa !43
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
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %.val30.i87, i64 %indvars.iv.i90.epil
  %i.ms = load i32, ptr %i.mr, align 4, !tbaa !3
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %.val29.i, i64 %indvars.iv.i90.epil
  %i.mu = load i32, ptr %i.mt, align 4, !tbaa !3
  %i.mv = zext i32 %i.mu to i64
  %i.mw = getelementptr inbounds nuw [8 x i8], ptr %.val.i88, i64 %i.mv
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !22
  store i32 %i.ms, ptr %i.mx, align 8, !tbaa !43
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
  %6 = icmp ult i32 %i.bh, %.val46112
  br i1 %6, label %.lr.ph.i.i59, label %bb.l, !llvm.loop !47

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
  %i.cb = phi i64 [ 0, %.lr.ph.lr.ph ], [ %indvars.iv.next, %bb.ac ]
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
  %indvars.iv.next = add nuw nsw i64 %indvars.iv134, 1 ; 5 uses
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
  %7 = add i32 %i.ci, 1
  %.not.i74 = icmp eq i32 %i.ci, -1
  br i1 %.not.i74, label %bb.y, label %.lr.ph.i.i75

.lr.ph.i.i75:                                     ; preds = %bb.x, %.lr.ph.i.i75
  %i.cl = phi i32 [ %i.cm, %.lr.ph.i.i75 ], [ %i.ci, %bb.x ]
  %i.cm = shl i32 %i.cl, 1                        ; 4 uses
  %8 = icmp ult i32 %i.cm, %7
  br i1 %8, label %.lr.ph.i.i75, label %._crit_edge.i.i76, !llvm.loop !47

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
  %umax = call i32 @llvm.umax.i32(i32 %i.cg, i32 %.val.i)
  %wide.trip.count = zext i32 %umax to i64        ; 2 uses
  %exitcond.not133 = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not133, label %thread-pre-split.loopexit, label %.lr.ph, !llvm.loop !67

_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS4_.exit: ; preds = %bb.p, %thread-pre-split
  %.2 = phi i32 [ 0, %thread-pre-split ], [ %i.bd, %bb.p ]
  %i.df = load ptr, ptr %5, align 8, !tbaa !24    ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.df, %i.v
  br i1 %.not.i.i.i, label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSetD2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS4_.exit
  invoke void @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc4FreeEPv(ptr noundef %i.df)
          to label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_17NodeSetD2Ev.exit unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dg = landingpad { ptr, i32 }
          catch ptr null
  %i.dh = extractvalue { ptr, i32 } %i.dg, 0
  call void @__clang_call_terminate(ptr %i.dh) #18
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
          catch ptr null
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

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4absl12lts_2025051224synchronization_internalL10MoveToListEPNS1_11GraphCycles3RepEPNS1_12_GLOBAL__N_13VecIiEES8_(ptr nofree noundef readonly captures(none) %0, ptr nofree captures(address) %.0.val, i32 %.40.val, ptr nofree noundef captures(address) %1) unnamed_addr #0 {
  %3 = zext i32 %.40.val to i64
  %.idx = shl nuw nsw i64 %3, 2
  %4 = getelementptr inbounds nuw i8, ptr %.0.val, i64 %.idx
  %.not2 = icmp eq i32 %.40.val, 0
  br i1 %.not2, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 5 uses
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %8

._crit_edge:                                      ; preds = %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit, %2
  ret void

8:                                                ; preds = %.lr.ph, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit
  %.03 = phi ptr [ %.0.val, %.lr.ph ], [ %42, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit ] ; 3 uses
  %9 = load i32, ptr %.03, align 4, !tbaa !3      ; 2 uses
  %.val12 = load ptr, ptr %0, align 8, !tbaa !20
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds nuw [8 x i8], ptr %.val12, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !22     ; 2 uses
  %13 = load i32, ptr %12, align 8, !tbaa !43
  store i32 %13, ptr %.03, align 4, !tbaa !3
  %14 = getelementptr inbounds nuw i8, ptr %12, i64 12
  store i8 0, ptr %14, align 4, !tbaa !40
  %15 = load i32, ptr %5, align 8, !tbaa !27      ; 5 uses
  %16 = load i32, ptr %6, align 4, !tbaa !28
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %8
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !24
  br label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit

18:                                               ; preds = %8
  %19 = add i32 %15, 1
  %.not.i = icmp eq i32 %15, -1
  br i1 %.not.i, label %25, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %18, %.lr.ph.i.i
  %20 = phi i32 [ %21, %.lr.ph.i.i ], [ %15, %18 ]
  %21 = shl i32 %20, 1                            ; 4 uses
  %22 = icmp ult i32 %21, %19
  br i1 %22, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !47

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  store i32 %21, ptr %6, align 4, !tbaa !28
  %23 = zext i32 %21 to i64
  %24 = shl nuw nsw i64 %23, 2
  br label %25

25:                                               ; preds = %._crit_edge.i.i, %18
  %.lcssa.i.i = phi i64 [ %24, %._crit_edge.i.i ], [ 17179869180, %18 ]
  %26 = load ptr, ptr @_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_15arenaE, align 8, !tbaa !18
  %27 = tail call noundef ptr @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc14AllocWithArenaEmPNS2_5ArenaE(i64 noundef %.lcssa.i.i, ptr noundef %26) ; 4 uses
  %28 = load ptr, ptr %1, align 8, !tbaa !24      ; 4 uses
  %29 = load i32, ptr %5, align 8, !tbaa !27      ; 2 uses
  switch i32 %29, label %30 [
    i32 0, label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i
    i32 1, label %32
  ], !prof !21

30:                                               ; preds = %25
  %31 = zext i32 %29 to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %31, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %27, ptr align 4 %28, i64 %.idx.i.i.i.i, i1 false)
  %.pre.i.i = load ptr, ptr %1, align 8, !tbaa !24
  br label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i

32:                                               ; preds = %25
  %33 = load i32, ptr %28, align 4, !tbaa !3
  store i32 %33, ptr %27, align 4, !tbaa !3
  br label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i

_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i:          ; preds = %32, %30, %25
  %34 = phi ptr [ %28, %25 ], [ %.pre.i.i, %30 ], [ %28, %32 ] ; 2 uses
  %.not.i4.i.i = icmp eq ptr %34, %7
  br i1 %.not.i4.i.i, label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i, label %35

35:                                               ; preds = %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i
  tail call void @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc4FreeEPv(ptr noundef %34)
  br label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i

_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i: ; preds = %35, %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i
  store ptr %27, ptr %1, align 8, !tbaa !24
  %.pre1.i = load i32, ptr %5, align 8, !tbaa !27
  br label %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit

_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit: ; preds = %._crit_edge.i, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i
  %36 = phi i32 [ %15, %._crit_edge.i ], [ %.pre1.i, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i ]
  %37 = phi ptr [ %.pre.i, %._crit_edge.i ], [ %27, %_ZN4absl12lts_2025051224synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i ]
  %38 = zext i32 %36 to i64
  %39 = getelementptr inbounds nuw [4 x i8], ptr %37, i64 %38
  store i32 %9, ptr %39, align 4, !tbaa !3
  %40 = load i32, ptr %5, align 8, !tbaa !27
  %41 = add i32 %40, 1
  store i32 %41, ptr %5, align 8, !tbaa !27
  %42 = getelementptr inbounds nuw i8, ptr %.03, i64 4 ; 2 uses
  %.not = icmp eq ptr %42, %4
  br i1 %.not, label %._crit_edge, label %8
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
  %i.g = icmp eq i64 %i.en, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph51, !llvm.loop !72

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa47 = phi i64 [ %i.c, %.lr.ph ], [ %i.gd, %bb.b ] ; 2 uses
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
  %.01.i.i = phi ptr [ %i.co, %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl12lts_2025051224synchronization_internalL4SortERKNS6_12_GLOBAL__N_13VecIPNS7_4NodeEEEPNS8_IiEEE6ByRankEEEvT_SI_SI_RT0_.exit.i.i ], [ %.024.lcssa, %.lr.ph.i5.i.preheader ]
  %i.co = getelementptr inbounds i8, ptr %.01.i.i, i64 -4 ; 4 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !3  ; 2 uses
  %i.cq = load i32, ptr %0, align 4, !tbaa !3
  store i32 %i.cq, ptr %i.co, align 4, !tbaa !3
  %i.cr = ptrtoint ptr %i.co to i64
  %i.cs = sub i64 %i.cr, %i.a                     ; 3 uses
  %i.ct = ashr exact i64 %i.cs, 2                 ; 3 uses
  %i.cu = add nsw i64 %i.ct, -1
  %4 = sdiv i64 %i.cu, 2
  %i.cv = icmp sgt i64 %i.ct, 2
  br i1 %i.cv, label %.lr.ph.i.i.i16.i, label %._crit_edge.i.i.i6.i

.lr.ph.i.i.i16.i:                                 ; preds = %.lr.ph.i5.i
  %.val.val.i.i.i17.i = load ptr, ptr %3, align 8, !tbaa !20 ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph.i.i.i16.i
  %.034.i.i.i18.i = phi i64 [ 0, %.lr.ph.i.i.i16.i ], [ %spec.select.i.i.i21.i, %bb.k ] ; 2 uses
  %i.cw = shl i64 %.034.i.i.i18.i, 1              ; 3 uses
  %i.cx = add i64 %i.cw, 2                        ; 2 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cx
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cw
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  %.val29.i.i.i19.i = load i32, ptr %i.cy, align 4, !tbaa !3
  %.val30.i.i.i20.i = load i32, ptr %i.da, align 4, !tbaa !3
  %i.db = zext i32 %.val29.i.i.i19.i to i64
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i.i.i17.i, i64 %i.db
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !22
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !43
  %i.df = zext i32 %.val30.i.i.i20.i to i64
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i.i.i17.i, i64 %i.df
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !22
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !43
  %i.dj = icmp slt i32 %i.de, %i.di
  %i.dk = or disjoint i64 %i.cw, 1
  %spec.select.i.i.i21.i = select i1 %i.dj, i64 %i.dk, i64 %i.cx ; 4 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %spec.select.i.i.i21.i
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !3
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.034.i.i.i18.i
  store i32 %i.dm, ptr %i.dn, align 4, !tbaa !3
  %i.do = icmp slt i64 %spec.select.i.i.i21.i, %4
  br i1 %i.do, label %bb.k, label %._crit_edge.i.i.i6.i, !llvm.loop !73

._crit_edge.i.i.i6.i:                             ; preds = %bb.k, %.lr.ph.i5.i
  %.0.lcssa.i.i.i7.i = phi i64 [ 0, %.lr.ph.i5.i ], [ %spec.select.i.i.i21.i, %bb.k ] ; 5 uses
  %i.dp = and i64 %i.cs, 4
  %i.dq = icmp eq i64 %i.dp, 0
  br i1 %i.dq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %._crit_edge.i.i.i6.i
  %i.dr = add nsw i64 %i.ct, -2
  %i.ds = ashr exact i64 %i.dr, 1
  %i.dt = icmp eq i64 %.0.lcssa.i.i.i7.i, %i.ds
  br i1 %i.dt, label %.thread.i.i.i, label %bb.m

.thread.i.i.i:                                    ; preds = %bb.l
  %i.du = shl nuw nsw i64 %.0.lcssa.i.i.i7.i, 1
  %i.dv = or disjoint i64 %i.du, 1                ; 2 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.dv
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !3
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i7.i
  store i32 %i.dx, ptr %i.dy, align 4, !tbaa !3
  br label %.lr.ph.i.i.i.i9.i

bb.m:                                             ; preds = %bb.l, %._crit_edge.i.i.i6.i
  %.not.i.i8.i = icmp eq i64 %.0.lcssa.i.i.i7.i, 0
  br i1 %.not.i.i8.i, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl12lts_2025051224synchronization_internalL4SortERKNS6_12_GLOBAL__N_13VecIPNS7_4NodeEEEPNS8_IiEEE6ByRankEEEvT_SI_SI_RT0_.exit.i.i, label %.lr.ph.i.i.i.i9.i

.lr.ph.i.i.i.i9.i:                                ; preds = %bb.m, %.thread.i.i.i
  %.128.i2.i.i.i = phi i64 [ %i.dv, %.thread.i.i.i ], [ %.0.lcssa.i.i.i7.i, %bb.m ]
  %.val.val.i.i.i.i10.i = load ptr, ptr %3, align 8, !tbaa !20 ; 2 uses
  %i.dz = zext i32 %i.cp to i64
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i.i.i.i10.i, i64 %i.dz
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !22
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %.lr.ph.i.i.i.i9.i
  %.0134.i.i.i.i11.i = phi i64 [ %.128.i2.i.i.i, %.lr.ph.i.i.i.i9.i ], [ %.059.i.i.i.i13.i, %bb.o ] ; 3 uses
  %.05.in.i.i.i.i12.i = add nsw i64 %.0134.i.i.i.i11.i, -1
  %.059.i.i.i.i13.i = lshr i64 %.05.in.i.i.i.i12.i, 1 ; 3 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.059.i.i.i.i13.i
  %.val14.i.i.i.i14.i = load i32, ptr %i.ec, align 4, !tbaa !3 ; 2 uses
  %i.ed = zext i32 %.val14.i.i.i.i14.i to i64
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i.i.i.i10.i, i64 %i.ed
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !22
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !43
  %i.eh = load i32, ptr %i.eb, align 8, !tbaa !43
  %i.ei = icmp slt i32 %i.eg, %i.eh
  br i1 %i.ei, label %bb.o, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl12lts_2025051224synchronization_internalL4SortERKNS6_12_GLOBAL__N_13VecIPNS7_4NodeEEEPNS8_IiEEE6ByRankEEEvT_SI_SI_RT0_.exit.i.i

bb.o:                                             ; preds = %bb.n
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0134.i.i.i.i11.i
  store i32 %.val14.i.i.i.i14.i, ptr %i.ej, align 4, !tbaa !3
  %.not3.i.i.i = icmp eq i64 %.059.i.i.i.i13.i, 0
  br i1 %.not3.i.i.i, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl12lts_2025051224synchronization_internalL4SortERKNS6_12_GLOBAL__N_13VecIPNS7_4NodeEEEPNS8_IiEEE6ByRankEEEvT_SI_SI_RT0_.exit.i.i, label %bb.n, !llvm.loop !74

_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl12lts_2025051224synchronization_internalL4SortERKNS6_12_GLOBAL__N_13VecIPNS7_4NodeEEEPNS8_IiEEE6ByRankEEEvT_SI_SI_RT0_.exit.i.i: ; preds = %bb.o, %bb.n, %bb.m
  %.013.lcssa.i.i.i.i15.i = phi i64 [ 0, %bb.m ], [ %.0134.i.i.i.i11.i, %bb.n ], [ 0, %bb.o ]
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.013.lcssa.i.i.i.i15.i
  store i32 %i.cp, ptr %i.ek, align 4, !tbaa !3
  %i.el = icmp sgt i64 %i.cs, 4
  br i1 %i.el, label %.lr.ph.i5.i, label %_ZSt14__partial_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl12lts_2025051224synchronization_internalL4SortERKNS6_12_GLOBAL__N_13VecIPNS7_4NodeEEEPNS8_IiEEE6ByRankEEEvT_SI_SI_T0_.exit, !llvm.loop !76

.lr.ph51:                                         ; preds = %.lr.ph, %bb.b
  %.0152350 = phi i64 [ %i.en, %bb.b ], [ %2, %.lr.ph ]
  %.02449 = phi ptr [ %.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %i.em = phi i64 [ %i.gd, %bb.b ], [ %i.c, %.lr.ph ]
  %i.en = add nsw i64 %.0152350, -1               ; 3 uses
  %.val = load ptr, ptr %3, align 8, !tbaa !20    ; 6 uses
  %i.eo = lshr i64 %i.em, 3
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.eo ; 3 uses
  %i.eq = getelementptr inbounds i8, ptr %.02449, i64 -4 ; 3 uses
  %.val34.i.i = load i32, ptr %i.e, align 4, !tbaa !3 ; 3 uses
  %.val35.i.i = load i32, ptr %i.ep, align 4, !tbaa !3 ; 3 uses
  %i.er = zext i32 %.val34.i.i to i64
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.er
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !22
  %i.eu = load i32, ptr %i.et, align 8, !tbaa !43 ; 3 uses
  %i.ev = zext i32 %.val35.i.i to i64
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.ev
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !22
  %i.ey = load i32, ptr %i.ex, align 8, !tbaa !43 ; 3 uses
  %i.ez = icmp slt i32 %i.eu, %i.ey
  %.val32.i.i = load i32, ptr %i.eq, align 4, !tbaa !3 ; 3 uses
  %i.fa = zext i32 %.val32.i.i to i64
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.fa
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !22
  %i.fd = load i32, ptr %i.fc, align 8, !tbaa !43 ; 4 uses
  br i1 %i.ez, label %bb.p, label %bb.u

bb.p:                                             ; preds = %.lr.ph51
  %i.fe = icmp slt i32 %i.ey, %i.fd
  br i1 %i.fe, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ff = load i32, ptr %0, align 4, !tbaa !3
  store i32 %.val35.i.i, ptr %0, align 4, !tbaa !3
  store i32 %i.ff, ptr %i.ep, align 4, !tbaa !3
  br label %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl12lts_2025051224synchronization_internalL4SortERKNS6_12_GLOBAL__N_13VecIPNS7_4NodeEEEPNS8_IiEEE6ByRankEEEvT_SI_SI_SI_T0_.exit.i.preheader

bb.r:                                             ; preds = %bb.p
  %i.fg = icmp slt i32 %i.eu, %i.fd
  %i.fh = load i32, ptr %0, align 4, !tbaa !3     ; 2 uses
  br i1 %i.fg, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 %.val32.i.i, ptr %0, align 4, !tbaa !3
  store i32 %i.fh, ptr %i.eq, align 4, !tbaa !3
  br label %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl12lts_2025051224synchronization_internalL4SortERKNS6_12_GLOBAL__N_13VecIPNS7_4NodeEEEPNS8_IiEEE6ByRankEEEvT_SI_SI_SI_T0_.exit.i.preheader

bb.t:                                             ; preds = %bb.r
  store i32 %.val34.i.i, ptr %0, align 4, !tbaa !3
  store i32 %i.fh, ptr %i.e, align 4, !tbaa !3
  br label %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl12lts_2025051224synchronization_internalL4SortERKNS6_12_GLOBAL__N_13VecIPNS7_4NodeEEEPNS8_IiEEE6ByRankEEEvT_SI_SI_SI_T0_.exit.i.preheader

bb.u:                                             ; preds = %.lr.ph51
  %i.fi = icmp slt i32 %i.eu, %i.fd
  br i1 %i.fi, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.fj = load i32, ptr %0, align 4, !tbaa !3
  store i32 %.val34.i.i, ptr %0, align 4, !tbaa !3
  store i32 %i.fj, ptr %i.e, align 4, !tbaa !3
  br label %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl12lts_2025051224synchronization_internalL4SortERKNS6_12_GLOBAL__N_13VecIPNS7_4NodeEEEPNS8_IiEEE6ByRankEEEvT_SI_SI_SI_T0_.exit.i.preheader

bb.w:                                             ; preds = %bb.u
  %i.fk = icmp slt i32 %i.ey, %i.fd
  %i.fl = load i32, ptr %0, align 4, !tbaa !3     ; 2 uses
  br i1 %i.fk, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 %.val32.i.i, ptr %0, align 4, !tbaa !3
  store i32 %i.fl, ptr %i.eq, align 4, !tbaa !3
  br label %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl12lts_2025051224synchronization_internalL4SortERKNS6_12_GLOBAL__N_13VecIPNS7_4NodeEEEPNS8_IiEEE6ByRankEEEvT_SI_SI_SI_T0_.exit.i.preheader

bb.y:                                             ; preds = %bb.w
  store i32 %.val35.i.i, ptr %0, align 4, !tbaa !3
  store i32 %i.fl, ptr %i.ep, align 4, !tbaa !3
  br label %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl12lts_2025051224synchronization_internalL4SortERKNS6_12_GLOBAL__N_13VecIPNS7_4NodeEEEPNS8_IiEEE6ByRankEEEvT_SI_SI_SI_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl12lts_2025051224synchronization_internalL4SortERKNS6_12_GLOBAL__N_13VecIPNS7_4NodeEEEPNS8_IiEEE6ByRankEEEvT_SI_SI_SI_T0_.exit.i.preheader: ; preds = %bb.y, %bb.x, %bb.v, %bb.t, %bb.s, %bb.q
  br label %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl12lts_2025051224synchronization_internalL4SortERKNS6_12_GLOBAL__N_13VecIPNS7_4NodeEEEPNS8_IiEEE6ByRankEEEvT_SI_SI_SI_T0_.exit.i

_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl12lts_2025051224synchronization_internalL4SortERKNS6_12_GLOBAL__N_13VecIPNS7_4NodeEEEPNS8_IiEEE6ByRankEEEvT_SI_SI_SI_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl12lts_2025051224synchronization_internalL4SortERKNS6_12_GLOBAL__N_13VecIPNS7_4NodeEEEPNS8_IiEEE6ByRankEEEvT_SI_SI_SI_T0_.exit.i.preheader, %bb.ab
  %.013.i.i = phi ptr [ %.114.i.i, %bb.ab ], [ %.02449, %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl12lts_2025051224synchronization_internalL4SortERKNS6_12_GLOBAL__N_13VecIPNS7_4NodeEEEPNS8_IiEEE6ByRankEEEvT_SI_SI_SI_T0_.exit.i.preheader ]
  %.0.i.i = phi ptr [ %i.fv, %bb.ab ], [ %i.e, %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl12lts_2025051224synchronization_internalL4SortERKNS6_12_GLOBAL__N_13VecIPNS7_4NodeEEEPNS8_IiEEE6ByRankEEEvT_SI_SI_SI_T0_.exit.i.preheader ]
  %.val17.i.i = load i32, ptr %0, align 4, !tbaa !3
  %i.fm = zext i32 %.val17.i.i to i64
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.fm
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !22
  %i.fp = load i32, ptr %i.fo, align 8, !tbaa !43 ; 2 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl12lts_2025051224synchronization_internalL4SortERKNS6_12_GLOBAL__N_13VecIPNS7_4NodeEEEPNS8_IiEEE6ByRankEEEvT_SI_SI_SI_T0_.exit.i
  %.1.i.i = phi ptr [ %.0.i.i, %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl12lts_2025051224synchronization_internalL4SortERKNS6_12_GLOBAL__N_13VecIPNS7_4NodeEEEPNS8_IiEEE6ByRankEEEvT_SI_SI_SI_T0_.exit.i ], [ %i.fv, %bb.z ] ; 8 uses
  %.1.val.i.i = load i32, ptr %.1.i.i, align 4, !tbaa !3 ; 2 uses
  %i.fq = zext i32 %.1.val.i.i to i64
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.fq
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !22
  %i.ft = load i32, ptr %i.fs, align 8, !tbaa !43
  %i.fu = icmp slt i32 %i.ft, %i.fp
  %i.fv = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 4 ; 2 uses
  br i1 %i.fu, label %bb.z, label %.preheader.i.i, !llvm.loop !77

.preheader.i.i:                                   ; preds = %bb.z, %.preheader.i.i
  %.013.pn.i.i = phi ptr [ %.114.i.i, %.preheader.i.i ], [ %.013.i.i, %bb.z ]
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -4 ; 5 uses
  %.114.val.i.i = load i32, ptr %.114.i.i, align 4, !tbaa !3 ; 2 uses
  %i.fw = zext i32 %.114.val.i.i to i64
end_hunk_3
