inline.NumInlined: 336
inline.NumDeleted: 141
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSet6insertEi:bb.a

_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE6resizeEj.exit.thread: ; preds = %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i, %bb.q
  store ptr %i.bl, ptr %0, align 8
  store i32 %i.bc, ptr %i.a, align 8
  br label %.lr.ph.i15.preheader

_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE6resizeEj.exit: ; preds = %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE8MoveFromEPS3_.exit
  store i32 %i.bc, ptr %i.a, align 8
  %.not.i14 = icmp eq i32 %i.bc, 0
  br i1 %.not.i14, label %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE4fillERKi.exit, label %.lr.ph.i15.preheader

.lr.ph.i15.preheader:                             ; preds = %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE6resizeEj.exit.thread, %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE6resizeEj.exit
  br label %.lr.ph.i15

.lr.ph.i15:                                       ; preds = %.lr.ph.i15.preheader, %.lr.ph.i15
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i15 ], [ 0, %.lr.ph.i15.preheader ] ; 2 uses
  %i.br = load ptr, ptr %0, align 8
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv.i
  store i32 -1, ptr %i.bs, align 4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.val.i16 = load i32, ptr %i.a, align 8
  %i.bt = zext i32 %.val.i16 to i64
  %i.bu = icmp samesign ult i64 %indvars.iv.next.i, %i.bt
  br i1 %i.bu, label %.lr.ph.i15, label %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE4fillERKi.exit, !llvm.loop !11

_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE4fillERKi.exit: ; preds = %.lr.ph.i15, %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE6resizeEj.exit
  %.val11.i = load ptr, ptr %2, align 8           ; 3 uses
  %.val13.i = load i32, ptr %i.ac, align 8        ; 2 uses
  %i.bv = zext i32 %.val13.i to i64
  %.idx = shl nuw nsw i64 %i.bv, 2
  %i.bw = getelementptr inbounds nuw i8, ptr %.val11.i, i64 %.idx
  %.not.i21 = icmp eq i32 %.val13.i, 0
  br i1 %.not.i21, label %_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSet4GrowEv.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE4fillERKi.exit, %bb.s
  %.0.i22 = phi ptr [ %i.ca, %bb.s ], [ %.val11.i, %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE4fillERKi.exit ] ; 2 uses
  %i.bx = load i32, ptr %.0.i22, align 4          ; 2 uses
  %i.by = icmp sgt i32 %i.bx, -1
  br i1 %i.by, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph
  %i.bz = call fastcc noundef zeroext i1 @_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSet6insertEi(ptr noundef nonnull align 8 dereferenceable(52) %0, i32 noundef %i.bx), !inline_history !18 ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.i22, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.ca, %i.bw
  br i1 %.not.i, label %_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSet4GrowEv.exit.loopexit, label %.lr.ph

_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSet4GrowEv.exit.loopexit: ; preds = %bb.s
  %.pre33 = load ptr, ptr %2, align 8
  br label %_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSet4GrowEv.exit

_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSet4GrowEv.exit: ; preds = %_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSet4GrowEv.exit.loopexit, %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE4fillERKi.exit
  %i.cb = phi ptr [ %.pre33, %_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSet4GrowEv.exit.loopexit ], [ %.val11.i, %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE4fillERKi.exit ] ; 2 uses
  %.not.i.i = icmp eq ptr %i.cb, %i.ab
  br i1 %.not.i.i, label %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSet4GrowEv.exit
  call void @_ZN4absl13base_internal13LowLevelAlloc4FreeEPv(ptr noundef %i.cb) #12
  br label %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiED2Ev.exit

_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiED2Ev.exit: ; preds = %_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSet4GrowEv.exit, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  br label %_ZNK4absl24synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.thread

_ZNK4absl24synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.thread: ; preds = %bb.b, %bb.a, %bb.e, %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiED2Ev.exit, %_ZNK4absl24synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit
  %i.cc = phi i1 [ false, %_ZNK4absl24synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit ], [ true, %bb.e ], [ true, %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiED2Ev.exit ], [ false, %bb.a ], [ false, %bb.b ]
  ret i1 %i.cc
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i64 @_ZN4absl24synchronization_internal11GraphCycles5GetIdEPv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 5 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.d = urem i64 %i.b, 262139                    ; 3 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.d
  %.01419.i = load i32, ptr %i.e, align 4         ; 2 uses
  %.not20.i = icmp eq i32 %.01419.i, -1
  br i1 %.not20.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.g = load ptr, ptr %i.f, align 8
  %.val.i = load ptr, ptr %i.g, align 8
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.014.i = load i32, ptr %i.h, align 8           ; 2 uses
  %.not.i = icmp eq i32 %.014.i, -1
  br i1 %.not.i, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %.01421.i = phi i32 [ %.01419.i, %.lr.ph.i ], [ %.014.i, %bb.b ]
  %i.i = zext i32 %.01421.i to i64                ; 3 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load i64, ptr %i.l, align 8
  %i.n = xor i64 %i.m, %i.b
  %.not16.i = icmp eq i64 %i.n, -1136490970041655429
  br i1 %.not16.i, label %_ZN4absl24synchronization_internal12_GLOBAL__N_110PointerMap4FindEPv.exit, label %bb.b

_ZN4absl24synchronization_internal12_GLOBAL__N_110PointerMap4FindEPv.exit: ; preds = %bb.c
  %.val16 = load ptr, ptr %i.a, align 8
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %.val16, i64 %i.i
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.r = load i32, ptr %i.q, align 4
  %i.s = zext i32 %i.r to i64
  %i.t = shl nuw i64 %i.s, 32
  %i.u = or disjoint i64 %i.t, %i.i
  br label %bb.k

.loopexit:                                        ; preds = %bb.b, %bb.a
  %i.v = getelementptr i8, ptr %i.a, i64 120      ; 2 uses
  %.val17 = load i32, ptr %i.v, align 8           ; 2 uses
  %i.w = icmp eq i32 %.val17, 0
  br i1 %i.w, label %bb.d, label %bb.j

bb.d:                                             ; preds = %.loopexit
  %i.x = load ptr, ptr @_ZN4absl24synchronization_internal12_GLOBAL__N_15arenaE, align 8
  %i.y = tail call noundef ptr @_ZN4absl13base_internal13LowLevelAlloc14AllocWithArenaEmPNS1_5ArenaE(i64 noundef 464, ptr noundef %i.x) #12 ; 19 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 64 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 68
  store ptr %i.aa, ptr %i.z, align 8
  store i32 8, ptr %i.ac, align 4
  store i32 8, ptr %i.ab, align 8
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %bb.d
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %bb.d ] ; 2 uses
  %i.ad = load ptr, ptr %i.z, align 8
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.i.i.i.i
  store i32 -1, ptr %i.ae, align 4
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %.val.i.i.i.i = load i32, ptr %i.ab, align 8
  %i.af = zext i32 %.val.i.i.i.i to i64
  %i.ag = icmp samesign ult i64 %indvars.iv.next.i.i.i.i, %i.af
  br i1 %i.ag, label %.lr.ph.i.i.i.i, label %_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSetC2Ev.exit.i, !llvm.loop !11

_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSetC2Ev.exit.i: ; preds = %.lr.ph.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.y, i64 72
  store i32 0, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.y, i64 80 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 88
  %i.ak = getelementptr inbounds nuw i8, ptr %i.y, i64 120 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.y, i64 124
  store ptr %i.aj, ptr %i.ai, align 8
  store i32 8, ptr %i.al, align 4
  store i32 8, ptr %i.ak, align 8
  br label %.lr.ph.i.i.i1.i

.lr.ph.i.i.i1.i:                                  ; preds = %.lr.ph.i.i.i1.i, %_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSetC2Ev.exit.i
  %indvars.iv.i.i.i2.i = phi i64 [ %indvars.iv.next.i.i.i3.i, %.lr.ph.i.i.i1.i ], [ 0, %_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSetC2Ev.exit.i ] ; 2 uses
  %i.am = load ptr, ptr %i.ai, align 8
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv.i.i.i2.i
  store i32 -1, ptr %i.an, align 4
  %indvars.iv.next.i.i.i3.i = add nuw nsw i64 %indvars.iv.i.i.i2.i, 1 ; 2 uses
  %.val.i.i.i4.i = load i32, ptr %i.ak, align 8
  %i.ao = zext i32 %.val.i.i.i4.i to i64
  %i.ap = icmp samesign ult i64 %indvars.iv.next.i.i.i3.i, %i.ao
  br i1 %i.ap, label %.lr.ph.i.i.i1.i, label %_ZN4absl24synchronization_internal12_GLOBAL__N_14NodeC2Ev.exit, !llvm.loop !11

_ZN4absl24synchronization_internal12_GLOBAL__N_14NodeC2Ev.exit: ; preds = %.lr.ph.i.i.i1.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.y, i64 128
  store i32 0, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  store i32 1, ptr %i.ar, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  store i8 0, ptr %i.as, align 4
  %i.at = load ptr, ptr %0, align 8
  %i.au = getelementptr i8, ptr %i.at, i64 72
  %.val = load i32, ptr %i.au, align 8
  store i32 %.val, ptr %i.y, align 8
  %i.av = xor i64 %i.b, -1136490970041655429
  %i.aw = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store i64 %i.av, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.y, i64 140
  store i32 0, ptr %i.ax, align 4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.y, i64 136
  store i32 0, ptr %i.ay, align 8
  %i.az = load ptr, ptr %0, align 8               ; 7 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 72 ; 5 uses
  %i.bb = load i32, ptr %i.ba, align 8            ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 76 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4
  %i.be = icmp eq i32 %i.bb, %i.bd
  br i1 %i.be, label %bb.e, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_ZN4absl24synchronization_internal12_GLOBAL__N_14NodeC2Ev.exit
  %.pre.i = load ptr, ptr %i.az, align 8
  br label %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIPNS1_4NodeEE9push_backERKS4_.exit

bb.e:                                             ; preds = %_ZN4absl24synchronization_internal12_GLOBAL__N_14NodeC2Ev.exit
  %2 = add i32 %i.bb, 1
  %.not.i21 = icmp eq i32 %i.bb, -1
  br i1 %.not.i21, label %bb.f, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %.lr.ph.i.i
  %i.bf = phi i32 [ %i.bg, %.lr.ph.i.i ], [ %i.bb, %bb.e ]
  %i.bg = shl i32 %i.bf, 1                        ; 4 uses
  %3 = icmp ult i32 %i.bg, %2
  br i1 %3, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !5

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  store i32 %i.bg, ptr %i.bc, align 4
  %i.bh = zext i32 %i.bg to i64
  %i.bi = shl nuw nsw i64 %i.bh, 3
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i, %bb.e
  %.lcssa.i.i = phi i64 [ %i.bi, %._crit_edge.i.i ], [ 34359738360, %bb.e ]
  %i.bj = load ptr, ptr @_ZN4absl24synchronization_internal12_GLOBAL__N_15arenaE, align 8
  %i.bk = tail call noundef ptr @_ZN4absl13base_internal13LowLevelAlloc14AllocWithArenaEmPNS1_5ArenaE(i64 noundef %.lcssa.i.i, ptr noundef %i.bj) #12 ; 4 uses
  %i.bl = load ptr, ptr %i.az, align 8            ; 2 uses
  %i.bm = load i32, ptr %i.ba, align 8            ; 2 uses
  switch i32 %i.bm, label %bb.g [
    i32 0, label %_ZSt6copy_nIPPN4absl24synchronization_internal12_GLOBAL__N_14NodeEjS5_ET1_T_T0_S6_.exit.i.i
    i32 1, label %bb.h
  ], !prof !7

bb.g:                                             ; preds = %bb.f
  %i.bn = zext i32 %i.bm to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.bn, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bk, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.bl, i64 %.idx.i.i.i.i, i1 false)
  br label %_ZSt6copy_nIPPN4absl24synchronization_internal12_GLOBAL__N_14NodeEjS5_ET1_T_T0_S6_.exit.i.i

bb.h:                                             ; preds = %bb.f
  %.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bl, align 8
  store ptr %.val.i.i.i.i.i.i.i.i.i, ptr %i.bk, align 8
  br label %_ZSt6copy_nIPPN4absl24synchronization_internal12_GLOBAL__N_14NodeEjS5_ET1_T_T0_S6_.exit.i.i

_ZSt6copy_nIPPN4absl24synchronization_internal12_GLOBAL__N_14NodeEjS5_ET1_T_T0_S6_.exit.i.i: ; preds = %bb.h, %bb.g, %bb.f
  %i.bo = load ptr, ptr %i.az, align 8            ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %.not.i4.i.i = icmp eq ptr %i.bo, %i.bp
  br i1 %.not.i4.i.i, label %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIPNS1_4NodeEE4GrowEj.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZSt6copy_nIPPN4absl24synchronization_internal12_GLOBAL__N_14NodeEjS5_ET1_T_T0_S6_.exit.i.i
  tail call void @_ZN4absl13base_internal13LowLevelAlloc4FreeEPv(ptr noundef %i.bo) #12
  br label %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIPNS1_4NodeEE4GrowEj.exit.i

_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIPNS1_4NodeEE4GrowEj.exit.i: ; preds = %bb.i, %_ZSt6copy_nIPPN4absl24synchronization_internal12_GLOBAL__N_14NodeEjS5_ET1_T_T0_S6_.exit.i.i
  store ptr %i.bk, ptr %i.az, align 8
  %.pre1.i = load i32, ptr %i.ba, align 8
  br label %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIPNS1_4NodeEE9push_backERKS4_.exit

_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIPNS1_4NodeEE9push_backERKS4_.exit: ; preds = %._crit_edge.i, %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIPNS1_4NodeEE4GrowEj.exit.i
  %i.bq = phi i32 [ %i.bb, %._crit_edge.i ], [ %.pre1.i, %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIPNS1_4NodeEE4GrowEj.exit.i ]
  %i.br = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.bk, %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIPNS1_4NodeEE4GrowEj.exit.i ]
  %i.bs = zext i32 %i.bq to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bs
  store ptr %i.y, ptr %i.bt, align 8
  %i.bu = load i32, ptr %i.ba, align 8
  %i.bv = add i32 %i.bu, 1
  store i32 %i.bv, ptr %i.ba, align 8
  %i.bw = load ptr, ptr %0, align 8               ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 128
  %i.by = load i32, ptr %i.y, align 8             ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 136
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.d ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4
  %i.cc = load ptr, ptr %i.bx, align 8
  %.val.i22 = load ptr, ptr %i.cc, align 8
  %i.cd = zext i32 %i.by to i64
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %.val.i22, i64 %i.cd
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store i32 %i.cb, ptr %i.cg, align 8
  store i32 %i.by, ptr %i.ca, align 4
  %i.ch = load i64, ptr %i.y, align 8
  br label %bb.k

bb.j:                                             ; preds = %.loopexit
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %.val19 = load ptr, ptr %i.ci, align 8
  %i.cj = add i32 %.val17, -1                     ; 2 uses
  %i.ck = zext i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %.val19, i64 %i.ck
  %i.cm = load i32, ptr %i.cl, align 4            ; 2 uses
  store i32 %i.cj, ptr %i.v, align 8
  %i.cn = load ptr, ptr %0, align 8
  %.val15 = load ptr, ptr %i.cn, align 8
  %i.co = zext i32 %i.cm to i64                   ; 3 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %.val15, i64 %i.co
  %i.cq = load ptr, ptr %i.cp, align 8            ; 4 uses
  %i.cr = xor i64 %i.b, -1136490970041655429
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  store i64 %i.cr, ptr %i.cs, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 140
  store i32 0, ptr %i.ct, align 4
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 136
  store i32 0, ptr %i.cu, align 8
  %i.cv = load ptr, ptr %0, align 8               ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 128
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 136
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %i.d ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4
  %i.da = load ptr, ptr %i.cw, align 8
  %.val.i23 = load ptr, ptr %i.da, align 8
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %.val.i23, i64 %i.co
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  store i32 %i.cz, ptr %i.dd, align 8
  store i32 %i.cm, ptr %i.cy, align 4
  %i.de = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  %i.df = load i32, ptr %i.de, align 4
  %i.dg = zext i32 %i.df to i64
  %i.dh = shl nuw i64 %i.dg, 32
  %i.di = or disjoint i64 %i.dh, %i.co
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIPNS1_4NodeEE9push_backERKS4_.exit, %_ZN4absl24synchronization_internal12_GLOBAL__N_110PointerMap4FindEPv.exit
  %.sroa.0.0 = phi i64 [ %i.u, %_ZN4absl24synchronization_internal12_GLOBAL__N_110PointerMap4FindEPv.exit ], [ %i.ch, %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIPNS1_4NodeEE9push_backERKS4_.exit ], [ %i.di, %bb.j ]
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4absl24synchronization_internal11GraphCycles10RemoveNodeEPv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.d = urem i64 %i.b, 262139
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.d ; 2 uses
  %i.f = load i32, ptr %i.e, align 4              ; 3 uses
  %.not27.i = icmp eq i32 %i.f, -1
  br i1 %.not27.i, label %_ZN4absl24synchronization_internal12_GLOBAL__N_110PointerMap6RemoveEPv.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.h = load ptr, ptr %i.g, align 8
  %.val.i = load ptr, ptr %i.h, align 8           ; 2 uses
  %i.i = zext i32 %i.f to i64                     ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8              ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load i64, ptr %i.l, align 8
  %i.n = xor i64 %i.m, %i.b
  %.not21.i92 = icmp eq i64 %i.n, -1136490970041655429
  br i1 %.not21.i92, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.o = zext i32 %i.w to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8              ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load i64, ptr %i.r, align 8
  %i.t = xor i64 %i.s, %i.b
  %.not21.i = icmp eq i64 %i.t, -1136490970041655429
  br i1 %.not21.i, label %._crit_edge.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.i, %bb.b
  %i.u = phi ptr [ %i.q, %bb.b ], [ %i.k, %.lr.ph.i ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i32, ptr %i.v, align 4              ; 3 uses
  %.not.i = icmp eq i32 %i.w, -1
  br i1 %.not.i, label %_ZN4absl24synchronization_internal12_GLOBAL__N_110PointerMap6RemoveEPv.exit.thread, label %bb.b

._crit_edge.loopexit:                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph.i
  %.pre-phi = phi i64 [ %i.i, %.lr.ph.i ], [ %i.o, %._crit_edge.loopexit ]
  %.lcssa90 = phi i32 [ %i.f, %.lr.ph.i ], [ %i.w, %._crit_edge.loopexit ] ; 8 uses
  %.01628.i.lcssa = phi ptr [ %i.e, %.lr.ph.i ], [ %i.x, %._crit_edge.loopexit ]
  %.lcssa87 = phi ptr [ %i.k, %.lr.ph.i ], [ %i.q, %._crit_edge.loopexit ]
  %i.y = getelementptr inbounds nuw i8, ptr %.lcssa87, i64 8 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8
  store i32 %i.z, ptr %.01628.i.lcssa, align 4
  store i32 -1, ptr %i.y, align 8
  %i.aa = load ptr, ptr %0, align 8
  %.val10 = load ptr, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %.val10, i64 %.pre-phi
  %i.ac = load ptr, ptr %i.ab, align 8            ; 12 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 80 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 120 ; 4 uses
  %i.af = mul i32 %.lcssa90, 41                   ; 2 uses
  %.val.i16175 = load i32, ptr %i.ae, align 8     ; 2 uses
  %exitcond.not170177 = icmp eq i32 %.val.i16175, 0
  br i1 %exitcond.not170177, label %_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS3_.exit.preheader, label %.lr.ph173.lr.ph

.lr.ph173.lr.ph:                                  ; preds = %._crit_edge
  %wide.trip.count176 = zext i32 %.val.i16175 to i64
  br label %.lr.ph173

.lr.ph173:                                        ; preds = %.lr.ph173.lr.ph, %_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit
  %wide.trip.count178 = phi i64 [ %wide.trip.count176, %.lr.ph173.lr.ph ], [ %wide.trip.count, %_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit ]
  %i.ag = phi i64 [ 0, %.lr.ph173.lr.ph ], [ %indvars.iv.next, %_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit ]
  %.val10.i = load ptr, ptr %i.ad, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count178
  br i1 %exitcond.not, label %_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS3_.exit.preheader, label %bb.d

_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS3_.exit.preheader: ; preds = %_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit, %bb.c, %._crit_edge
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 24 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 64 ; 4 uses
  %.val.i20183 = load i32, ptr %i.ai, align 8     ; 2 uses
  %exitcond118.not179185 = icmp eq i32 %.val.i20183, 0
  %i.aj = load ptr, ptr %i.ah, align 8            ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4absl24synchronization_internal11GraphCycles10RemoveNodeEPv:bb.a
  %spec.select27.i.i = select i1 %or.cond.i.i, i8 %.01912.i.i, i8 1
  %i.bd = add i32 %.02413.i.i, 1
  %.024.i.i = and i32 %i.bd, %i.au                ; 2 uses
  %i.be = zext i32 %.024.i.i to i64               ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %.val13, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4            ; 2 uses
  %i.bh = icmp eq i32 %.lcssa90, %i.bg
  br i1 %i.bh, label %_ZNK4absl24synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.thread.i, label %.lr.ph.i.i, !llvm.loop !16

_ZNK4absl24synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.i: ; preds = %.lr.ph.i.i
  %i.bi = trunc nuw i8 %.01912.i.i to i1
  %i.bj = select i1 %i.bi, i32 %.02111.i.i, i32 %.02413.i.i
  %.pre.i18 = zext i32 %i.bj to i64               ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw [4 x i8], ptr %.val13, i64 %.pre.i18
  %.pre7.i = load i32, ptr %.phi.trans.insert.i, align 4
  %i.bk = icmp eq i32 %.pre7.i, %.lcssa90
  br i1 %i.bk, label %_ZNK4absl24synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.thread.i, label %_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit

_ZNK4absl24synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.thread.i: ; preds = %bb.f, %_ZNK4absl24synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.i, %bb.e
  %.pre-phi12.i = phi i64 [ %.pre.i18, %_ZNK4absl24synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.i ], [ %i.av, %bb.e ], [ %i.be, %bb.f ]
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %.val13, i64 %.pre-phi12.i
  store i32 -2, ptr %i.bl, align 4
  br label %_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit

_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit: ; preds = %_ZNK4absl24synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.i, %_ZNK4absl24synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.thread.i
  %.val.i16 = load i32, ptr %i.ae, align 8
  %umax = tail call i32 @llvm.umax.i32(i32 %i.an, i32 %.val.i16)
  %wide.trip.count = zext i32 %umax to i64        ; 2 uses
  %exitcond.not170 = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not170, label %_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS3_.exit.preheader, label %.lr.ph173, !llvm.loop !19

.lr.ph181:                                        ; preds = %.lr.ph181.lr.ph, %_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit46
  %i.bm = phi ptr [ %i.aj, %.lr.ph181.lr.ph ], [ %i.dl, %_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit46 ]
  %wide.trip.count117186 = phi i64 [ %wide.trip.count117184, %.lr.ph181.lr.ph ], [ %wide.trip.count117, %_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit46 ]
  %i.bn = phi i64 [ 0, %.lr.ph181.lr.ph ], [ %indvars.iv.next114, %_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit46 ]
  br label %bb.h

bb.g:                                             ; preds = %bb.h
  %exitcond118.not = icmp eq i64 %indvars.iv.next114, %wide.trip.count117186
  %i.bo = load ptr, ptr %i.ah, align 8            ; 2 uses
  br i1 %exitcond118.not, label %_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS3_.exit23, label %bb.h

bb.h:                                             ; preds = %.lr.ph181, %bb.g
  %i.bp = phi ptr [ %i.bm, %.lr.ph181 ], [ %i.bo, %bb.g ]
  %indvars.iv113180 = phi i64 [ %i.bn, %.lr.ph181 ], [ %indvars.iv.next114, %bb.g ] ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv113180
  %i.br = load i32, ptr %i.bq, align 4            ; 2 uses
  %indvars.iv.next114 = add nuw nsw i64 %indvars.iv113180, 1 ; 5 uses
  %i.bs = icmp sgt i32 %i.br, -1
  br i1 %i.bs, label %bb.k, label %bb.g

_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS3_.exit23: ; preds = %_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit46, %bb.g, %_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS3_.exit.preheader
  %.lcssa152 = phi ptr [ %i.bo, %bb.g ], [ %i.aj, %_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS3_.exit.preheader ], [ %i.dl, %_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit46 ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ac, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.lcssa152, %i.bt
  br i1 %.not.i.i.i.i, label %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE6resizeEj.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS3_.exit23
  tail call void @_ZN4absl13base_internal13LowLevelAlloc4FreeEPv(ptr noundef %.lcssa152) #12
  br label %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE6resizeEj.exit.i.i

_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE6resizeEj.exit.i.i: ; preds = %bb.i, %_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS3_.exit23
  store ptr %i.bt, ptr %i.ah, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ac, i64 68
  store i32 8, ptr %i.bu, align 4
  store i32 8, ptr %i.ai, align 8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE6resizeEj.exit.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.lr.ph.i.i.i ], [ 0, %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE6resizeEj.exit.i.i ] ; 2 uses
  %i.bv = load ptr, ptr %i.ah, align 8
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv.i.i.i
  store i32 -1, ptr %i.bw, align 4
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %.val.i.i.i = load i32, ptr %i.ai, align 8
  %i.bx = zext i32 %.val.i.i.i to i64
  %i.by = icmp samesign ult i64 %indvars.iv.next.i.i.i, %i.bx
  br i1 %i.by, label %.lr.ph.i.i.i, label %_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSet5clearEv.exit, !llvm.loop !11

_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSet5clearEv.exit: ; preds = %.lr.ph.i.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ac, i64 72
  store i32 0, ptr %i.bz, align 8
  %i.ca = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ac, i64 88 ; 2 uses
  %.not.i.i.i.i24 = icmp eq ptr %i.ca, %i.cb
  br i1 %.not.i.i.i.i24, label %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE6resizeEj.exit.i.i25, label %bb.j

bb.j:                                             ; preds = %_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSet5clearEv.exit
  tail call void @_ZN4absl13base_internal13LowLevelAlloc4FreeEPv(ptr noundef %i.ca) #12
  br label %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE6resizeEj.exit.i.i25

_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE6resizeEj.exit.i.i25: ; preds = %bb.j, %_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSet5clearEv.exit
  store ptr %i.cb, ptr %i.ad, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ac, i64 124
  store i32 8, ptr %i.cc, align 4
  store i32 8, ptr %i.ae, align 8
  br label %.lr.ph.i.i.i26

.lr.ph.i.i.i26:                                   ; preds = %.lr.ph.i.i.i26, %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE6resizeEj.exit.i.i25
  %indvars.iv.i.i.i27 = phi i64 [ %indvars.iv.next.i.i.i28, %.lr.ph.i.i.i26 ], [ 0, %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE6resizeEj.exit.i.i25 ] ; 2 uses
  %i.cd = load ptr, ptr %i.ad, align 8
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %indvars.iv.i.i.i27
  store i32 -1, ptr %i.ce, align 4
  %indvars.iv.next.i.i.i28 = add nuw nsw i64 %indvars.iv.i.i.i27, 1 ; 2 uses
  %.val.i.i.i29 = load i32, ptr %i.ae, align 8
  %i.cf = zext i32 %.val.i.i.i29 to i64
  %i.cg = icmp samesign ult i64 %indvars.iv.next.i.i.i28, %i.cf
  br i1 %i.cg, label %.lr.ph.i.i.i26, label %_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSet5clearEv.exit30, !llvm.loop !11

_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSet5clearEv.exit30: ; preds = %.lr.ph.i.i.i26
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ac, i64 128
  store i32 0, ptr %i.ch, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i64 -1136490970041655429, ptr %i.ci, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ac, i64 4 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4            ; 2 uses
  %i.cl = icmp eq i32 %i.ck, -1
  br i1 %i.cl, label %_ZN4absl24synchronization_internal12_GLOBAL__N_110PointerMap6RemoveEPv.exit.thread, label %bb.m

bb.k:                                             ; preds = %bb.h
  %i.cm = trunc nuw i64 %indvars.iv.next114 to i32
  %i.cn = load ptr, ptr %0, align 8
  %.val = load ptr, ptr %i.cn, align 8
  %i.co = zext nneg i32 %i.br to i64
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.co
  %i.cq = load ptr, ptr %i.cp, align 8            ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 80
  %.val11 = load ptr, ptr %i.cr, align 8          ; 4 uses
  %i.cs = getelementptr i8, ptr %i.cq, i64 120
  %.val12 = load i32, ptr %i.cs, align 8
  %i.ct = add i32 %.val12, -1                     ; 2 uses
  %.02410.i.i31 = and i32 %i.ct, %i.af            ; 2 uses
  %i.cu = zext i32 %.02410.i.i31 to i64           ; 2 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %.val11, i64 %i.cu
  %i.cw = load i32, ptr %i.cv, align 4            ; 2 uses
  %i.cx = icmp eq i32 %.lcssa90, %i.cw
  br i1 %i.cx, label %_ZNK4absl24synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.thread.i40, label %.lr.ph.i.i32

.lr.ph.i.i32:                                     ; preds = %bb.k, %bb.l
  %i.cy = phi i32 [ %i.df, %bb.l ], [ %i.cw, %bb.k ] ; 2 uses
  %.02413.i.i33 = phi i32 [ %.024.i.i39, %bb.l ], [ %.02410.i.i31, %bb.k ] ; 3 uses
  %.01912.i.i34 = phi i8 [ %spec.select27.i.i38, %bb.l ], [ 0, %bb.k ] ; 3 uses
  %.02111.i.i35 = phi i32 [ %spec.select.i.i37, %bb.l ], [ 0, %bb.k ] ; 2 uses
  %i.cz = icmp eq i32 %i.cy, -1
  br i1 %i.cz, label %_ZNK4absl24synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.i42, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i32
  %i.da = icmp ne i32 %i.cy, -2
  %i.db = trunc nuw i8 %.01912.i.i34 to i1
  %or.cond.i.i36 = select i1 %i.da, i1 true, i1 %i.db ; 2 uses
  %spec.select.i.i37 = select i1 %or.cond.i.i36, i32 %.02111.i.i35, i32 %.02413.i.i33
  %spec.select27.i.i38 = select i1 %or.cond.i.i36, i8 %.01912.i.i34, i8 1
  %i.dc = add i32 %.02413.i.i33, 1
  %.024.i.i39 = and i32 %i.dc, %i.ct              ; 2 uses
  %i.dd = zext i32 %.024.i.i39 to i64             ; 2 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %.val11, i64 %i.dd
  %i.df = load i32, ptr %i.de, align 4            ; 2 uses
  %i.dg = icmp eq i32 %.lcssa90, %i.df
  br i1 %i.dg, label %_ZNK4absl24synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.thread.i40, label %.lr.ph.i.i32, !llvm.loop !16

_ZNK4absl24synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.i42: ; preds = %.lr.ph.i.i32
  %i.dh = trunc nuw i8 %.01912.i.i34 to i1
  %i.di = select i1 %i.dh, i32 %.02111.i.i35, i32 %.02413.i.i33
  %.pre.i43 = zext i32 %i.di to i64               ; 2 uses
  %.phi.trans.insert.i44 = getelementptr inbounds nuw [4 x i8], ptr %.val11, i64 %.pre.i43
  %.pre7.i45 = load i32, ptr %.phi.trans.insert.i44, align 4
  %i.dj = icmp eq i32 %.pre7.i45, %.lcssa90
  br i1 %i.dj, label %_ZNK4absl24synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.thread.i40, label %_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit46

_ZNK4absl24synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.thread.i40: ; preds = %bb.l, %_ZNK4absl24synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.i42, %bb.k
  %.pre-phi12.i41 = phi i64 [ %.pre.i43, %_ZNK4absl24synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.i42 ], [ %i.cu, %bb.k ], [ %i.dd, %bb.l ]
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %.val11, i64 %.pre-phi12.i41
  store i32 -2, ptr %i.dk, align 4
  br label %_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit46

_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit46: ; preds = %_ZNK4absl24synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.i42, %_ZNK4absl24synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.thread.i40
  %.val.i20 = load i32, ptr %i.ai, align 8
  %umax116 = tail call i32 @llvm.umax.i32(i32 %i.cm, i32 %.val.i20)
  %wide.trip.count117 = zext i32 %umax116 to i64  ; 2 uses
  %exitcond118.not179 = icmp eq i64 %indvars.iv.next114, %wide.trip.count117
  %i.dl = load ptr, ptr %i.ah, align 8            ; 2 uses
  br i1 %exitcond118.not179, label %_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS3_.exit23, label %.lr.ph181, !llvm.loop !20

bb.m:                                             ; preds = %_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSet5clearEv.exit30
  %i.dm = add nuw i32 %i.ck, 1
  store i32 %i.dm, ptr %i.cj, align 4
  %i.dn = load ptr, ptr %0, align 8               ; 4 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 80 ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 120 ; 5 uses
  %i.dq = load i32, ptr %i.dp, align 8            ; 5 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dn, i64 124 ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 4
  %i.dt = icmp eq i32 %i.dq, %i.ds
  br i1 %i.dt, label %bb.n, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.m
  %.pre.i47 = load ptr, ptr %i.do, align 8
  br label %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit

bb.n:                                             ; preds = %bb.m
  %2 = add i32 %i.dq, 1
  %.not.i48 = icmp eq i32 %i.dq, -1
  br i1 %.not.i48, label %bb.o, label %.lr.ph.i.i49

.lr.ph.i.i49:                                     ; preds = %bb.n, %.lr.ph.i.i49
  %i.du = phi i32 [ %i.dv, %.lr.ph.i.i49 ], [ %i.dq, %bb.n ]
  %i.dv = shl i32 %i.du, 1                        ; 4 uses
  %3 = icmp ult i32 %i.dv, %2
  br i1 %3, label %.lr.ph.i.i49, label %._crit_edge.i.i, !llvm.loop !17

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i49
  store i32 %i.dv, ptr %i.dr, align 4
  %i.dw = zext i32 %i.dv to i64
  %i.dx = shl nuw nsw i64 %i.dw, 2
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge.i.i, %bb.n
  %.lcssa.i.i = phi i64 [ %i.dx, %._crit_edge.i.i ], [ 17179869180, %bb.n ]
  %i.dy = load ptr, ptr @_ZN4absl24synchronization_internal12_GLOBAL__N_15arenaE, align 8
  %i.dz = tail call noundef ptr @_ZN4absl13base_internal13LowLevelAlloc14AllocWithArenaEmPNS1_5ArenaE(i64 noundef %.lcssa.i.i, ptr noundef %i.dy) #12 ; 4 uses
  %i.ea = load ptr, ptr %i.do, align 8            ; 2 uses
  %i.eb = load i32, ptr %i.dp, align 8            ; 2 uses
  switch i32 %i.eb, label %bb.p [
    i32 0, label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i
    i32 1, label %bb.q
  ], !prof !7

bb.p:                                             ; preds = %bb.o
  %i.ec = zext i32 %i.eb to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.ec, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.dz, ptr align 4 %i.ea, i64 %.idx.i.i.i.i, i1 false)
  br label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i

bb.q:                                             ; preds = %bb.o
  %i.ed = load i32, ptr %i.ea, align 4
  store i32 %i.ed, ptr %i.dz, align 4
  br label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i

_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i:          ; preds = %bb.q, %bb.p, %bb.o
  %i.ee = load ptr, ptr %i.do, align 8            ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dn, i64 88
  %.not.i4.i.i = icmp eq ptr %i.ee, %i.ef
  br i1 %.not.i4.i.i, label %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i, label %bb.r

bb.r:                                             ; preds = %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i
  tail call void @_ZN4absl13base_internal13LowLevelAlloc4FreeEPv(ptr noundef %i.ee) #12
  br label %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i

_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i: ; preds = %bb.r, %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i
  store ptr %i.dz, ptr %i.do, align 8
  %.pre1.i = load i32, ptr %i.dp, align 8
  br label %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit

_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit: ; preds = %._crit_edge.i, %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i
  %i.eg = phi i32 [ %i.dq, %._crit_edge.i ], [ %.pre1.i, %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i ]
  %i.eh = phi ptr [ %.pre.i47, %._crit_edge.i ], [ %i.dz, %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i ]
  %i.ei = zext i32 %i.eg to i64
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.ei
  store i32 %.lcssa90, ptr %i.ej, align 4
  %i.ek = load i32, ptr %i.dp, align 8
  %i.el = add i32 %i.ek, 1
  store i32 %i.el, ptr %i.dp, align 8
  br label %_ZN4absl24synchronization_internal12_GLOBAL__N_110PointerMap6RemoveEPv.exit.thread

_ZN4absl24synchronization_internal12_GLOBAL__N_110PointerMap6RemoveEPv.exit.thread: ; preds = %.lr.ph, %bb.a, %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit, %_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSet5clearEv.exit30
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_ZN4absl24synchronization_internal11GraphCycles3PtrENS0_7GraphIdE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i64 %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %.val = load ptr, ptr %i.a, align 8
  %i.b = and i64 %1, 4294967295
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4
  %i.g = lshr i64 %1, 32
  %i.h = trunc nuw i64 %i.g to i32
  %i.i = icmp ne i32 %i.f, %i.h
  %i.j = icmp eq ptr %i.d, null
  %i.k = or i1 %i.j, %i.i
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.m = load i64, ptr %i.l, align 8
  %i.n = xor i64 %i.m, -1136490970041655429
  %i.o = inttoptr i64 %i.n to ptr
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.p = phi ptr [ %i.o, %bb.b ], [ null, %bb.a ]
  ret ptr %i.p
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN4absl24synchronization_internal11GraphCycles7HasNodeENS0_7GraphIdE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i64 %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %.val = load ptr, ptr %i.a, align 8
  %i.b = and i64 %1, 4294967295
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4
  %i.g = lshr i64 %1, 32
  %i.h = trunc nuw i64 %i.g to i32
  %i.i = icmp eq i32 %i.f, %i.h
  %i.j = icmp ne ptr %i.d, null
  %i.k = and i1 %i.j, %i.i
  ret i1 %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK4absl24synchronization_internal11GraphCycles7HasEdgeENS0_7GraphIdES2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i64 %1, i64 %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %.val9 = load ptr, ptr %i.a, align 8            ; 2 uses
  %i.b = and i64 %1, 4294967295
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %.val9, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8              ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4
  %i.g = lshr i64 %1, 32
  %i.h = trunc nuw i64 %i.g to i32
  %i.i = icmp ne i32 %i.f, %i.h
  %.not12 = icmp eq ptr %i.d, null
  %.not = or i1 %.not12, %i.i
  br i1 %.not, label %_ZNK4absl24synchronization_internal12_GLOBAL__N_17NodeSet8containsEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = and i64 %2, 4294967295
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %.val9, i64 %i.j
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.n = load i32, ptr %i.m, align 4
  %i.o = lshr i64 %2, 32
  %i.p = trunc nuw i64 %i.o to i32
  %i.q = icmp ne i32 %i.n, %i.p
  %.not813 = icmp eq ptr %i.l, null
  %.not8 = or i1 %.not813, %i.q
  br i1 %.not8, label %_ZNK4absl24synchronization_internal12_GLOBAL__N_17NodeSet8containsEi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.s = trunc i64 %2 to i32                      ; 4 uses
  %.val10 = load ptr, ptr %i.r, align 8           ; 3 uses
  %i.t = getelementptr i8, ptr %i.d, i64 120
  %.val11 = load i32, ptr %i.t, align 8
  %i.u = add i32 %.val11, -1                      ; 2 uses
  %i.v = mul i32 %i.s, 41
  %.02410.i.i = and i32 %i.u, %i.v                ; 2 uses
  %i.w = zext i32 %.02410.i.i to i64
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %.val10, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4              ; 2 uses
  %i.z = icmp eq i32 %i.y, %i.s
  br i1 %i.z, label %_ZNK4absl24synchronization_internal12_GLOBAL__N_17NodeSet8containsEi.exit, label %.lr.ph.i.i

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
  %.pre7.i = load i32, ptr %.phi.trans.insert.i, align 4
  %i.ae = icmp eq i32 %.pre7.i, %i.s
  br label %_ZNK4absl24synchronization_internal12_GLOBAL__N_17NodeSet8containsEi.exit

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
  %i.ak = load i32, ptr %i.aj, align 4            ; 2 uses
  %i.al = icmp eq i32 %i.ak, %i.s
  br i1 %i.al, label %_ZNK4absl24synchronization_internal12_GLOBAL__N_17NodeSet8containsEi.exit, label %.lr.ph.i.i, !llvm.loop !16

_ZNK4absl24synchronization_internal12_GLOBAL__N_17NodeSet8containsEi.exit: ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %i.am = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ae, %bb.d ], [ true, %bb.c ], [ true, %bb.e ]
  ret i1 %i.am
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN4absl24synchronization_internal11GraphCycles10RemoveEdgeENS0_7GraphIdES2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i64 %1, i64 %2) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %.val18 = load ptr, ptr %i.a, align 8           ; 2 uses
  %i.b = and i64 %1, 4294967295
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %.val18, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8              ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4
  %i.g = lshr i64 %1, 32
  %i.h = trunc nuw i64 %i.g to i32
  %i.i = icmp eq i32 %i.f, %i.h
end_hunk_1
begin_hunk_2_@_ZN4absl24synchronization_internal11GraphCycles10RemoveEdgeENS0_7GraphIdES2_:bb.a
  %i.ai = add i32 %.02413.i.i, 1
  %.024.i.i = and i32 %i.ai, %i.y                 ; 2 uses
  %i.aj = zext i32 %.024.i.i to i64               ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %.val15, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4            ; 2 uses
  %i.am = icmp eq i32 %i.al, %i.w
  br i1 %i.am, label %_ZNK4absl24synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.thread.i, label %.lr.ph.i.i, !llvm.loop !16

_ZNK4absl24synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.i: ; preds = %.lr.ph.i.i
  %i.an = trunc nuw i8 %.01912.i.i to i1
  %i.ao = select i1 %i.an, i32 %.02111.i.i, i32 %.02413.i.i
  %.pre.i = zext i32 %i.ao to i64                 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw [4 x i8], ptr %.val15, i64 %.pre.i
  %.pre7.i = load i32, ptr %.phi.trans.insert.i, align 4
  %i.ap = icmp eq i32 %.pre7.i, %i.w
  br i1 %i.ap, label %_ZNK4absl24synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.thread.i, label %_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit

_ZNK4absl24synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.thread.i: ; preds = %bb.c, %_ZNK4absl24synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.i, %bb.b
  %.pre-phi12.i = phi i64 [ %.pre.i, %_ZNK4absl24synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.i ], [ %i.aa, %bb.b ], [ %i.aj, %bb.c ]
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %.val15, i64 %.pre-phi12.i
  store i32 -2, ptr %i.aq, align 4
  br label %_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit

_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit: ; preds = %_ZNK4absl24synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.i, %_ZNK4absl24synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.thread.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.as = trunc i64 %1 to i32                     ; 4 uses
  %.val = load ptr, ptr %i.ar, align 8            ; 4 uses
  %i.at = getelementptr i8, ptr %i.l, i64 64
  %.val14 = load i32, ptr %i.at, align 8
  %i.au = add i32 %.val14, -1                     ; 2 uses
  %i.av = mul i32 %i.as, 41
  %.02410.i.i19 = and i32 %i.au, %i.av            ; 2 uses
  %i.aw = zext i32 %.02410.i.i19 to i64           ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4            ; 2 uses
  %i.az = icmp eq i32 %i.ay, %i.as
  br i1 %i.az, label %_ZNK4absl24synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.thread.i28, label %.lr.ph.i.i20

.lr.ph.i.i20:                                     ; preds = %_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit, %bb.d
  %i.ba = phi i32 [ %i.bh, %bb.d ], [ %i.ay, %_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit ] ; 2 uses
  %.02413.i.i21 = phi i32 [ %.024.i.i27, %bb.d ], [ %.02410.i.i19, %_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit ] ; 3 uses
  %.01912.i.i22 = phi i8 [ %spec.select27.i.i26, %bb.d ], [ 0, %_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit ] ; 3 uses
  %.02111.i.i23 = phi i32 [ %spec.select.i.i25, %bb.d ], [ 0, %_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit ] ; 2 uses
  %i.bb = icmp eq i32 %i.ba, -1
  br i1 %i.bb, label %_ZNK4absl24synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.i30, label %bb.d

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
  %i.bh = load i32, ptr %i.bg, align 4            ; 2 uses
  %i.bi = icmp eq i32 %i.bh, %i.as
  br i1 %i.bi, label %_ZNK4absl24synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.thread.i28, label %.lr.ph.i.i20, !llvm.loop !16

_ZNK4absl24synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.i30: ; preds = %.lr.ph.i.i20
  %i.bj = trunc nuw i8 %.01912.i.i22 to i1
  %i.bk = select i1 %i.bj, i32 %.02111.i.i23, i32 %.02413.i.i21
  %.pre.i31 = zext i32 %i.bk to i64               ; 2 uses
  %.phi.trans.insert.i32 = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %.pre.i31
  %.pre7.i33 = load i32, ptr %.phi.trans.insert.i32, align 4
  %i.bl = icmp eq i32 %.pre7.i33, %i.as
  br i1 %i.bl, label %_ZNK4absl24synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.thread.i28, label %_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit34

_ZNK4absl24synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.thread.i28: ; preds = %bb.d, %_ZNK4absl24synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.i30, %_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit
  %.pre-phi12.i29 = phi i64 [ %.pre.i31, %_ZNK4absl24synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.i30 ], [ %i.aw, %_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit ], [ %i.bf, %bb.d ]
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %.pre-phi12.i29
  store i32 -2, ptr %i.bm, align 4
  br label %_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit34

_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit34: ; preds = %_ZNK4absl24synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.thread.i28, %_ZNK4absl24synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.i30, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4absl24synchronization_internal11GraphCycles10InsertEdgeENS0_7GraphIdES2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i64 %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 36 uses
  %i.b = trunc i64 %1 to i32                      ; 6 uses
  %i.c = trunc i64 %2 to i32                      ; 6 uses
  %.val54 = load ptr, ptr %i.a, align 8           ; 2 uses
  %i.d = and i64 %1, 4294967295
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %.val54, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8              ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.h = load i32, ptr %i.g, align 4
  %i.i = lshr i64 %1, 32
  %i.j = trunc nuw i64 %i.i to i32
  %i.k = icmp eq i32 %i.h, %i.j
  %i.l = select i1 %i.k, ptr %i.f, ptr null       ; 3 uses
  %i.m = and i64 %2, 4294967295
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.val54, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8              ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.q = load i32, ptr %i.p, align 4
  %i.r = lshr i64 %2, 32
  %i.s = trunc nuw i64 %i.r to i32
  %i.t = icmp eq i32 %i.q, %i.s
  %i.u = select i1 %i.t, ptr %i.o, ptr null       ; 3 uses
  %i.v = icmp eq ptr %i.l, null
  %i.w = icmp eq ptr %i.u, null
  %or.cond = or i1 %i.v, %i.w
  br i1 %or.cond, label %_ZN4absl24synchronization_internalL7ReorderEPNS0_11GraphCycles3RepE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.x = icmp eq ptr %i.l, %i.u
  br i1 %i.x, label %_ZN4absl24synchronization_internalL7ReorderEPNS0_11GraphCycles3RepE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 80 ; 2 uses
  %i.z = tail call fastcc noundef zeroext i1 @_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSet6insertEi(ptr noundef nonnull align 8 dereferenceable(52) %i.y, i32 noundef %i.c)
  br i1 %i.z, label %bb.d, label %_ZN4absl24synchronization_internalL7ReorderEPNS0_11GraphCycles3RepE.exit

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 2 uses
  %i.ab = tail call fastcc noundef zeroext i1 @_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSet6insertEi(ptr noundef nonnull align 8 dereferenceable(52) %i.aa, i32 noundef %i.b) ; 0 uses
  %i.ac = load i32, ptr %i.f, align 8             ; 3 uses
  %i.ad = load i32, ptr %i.o, align 8
  %.not = icmp sgt i32 %i.ac, %i.ad
  br i1 %.not, label %bb.e, label %_ZN4absl24synchronization_internalL7ReorderEPNS0_11GraphCycles3RepE.exit

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 1048696 ; 10 uses
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 1048704 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.af, %i.ag
  br i1 %.not.i.i.i, label %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE5clearEv.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4absl13base_internal13LowLevelAlloc4FreeEPv(ptr noundef %i.af) #12
  br label %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE5clearEv.exit.i

_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE5clearEv.exit.i: ; preds = %bb.f, %bb.e
  store ptr %i.ag, ptr %i.ae, align 8
  %i.ah = getelementptr i8, ptr %i.a, i64 1048736 ; 11 uses
  store i32 0, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 1048740 ; 3 uses
  store i32 8, ptr %i.ai, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 1048888 ; 14 uses
  %i.ak = load ptr, ptr %i.aj, align 8            ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 1048896 ; 8 uses
  %.not.i.i35.i = icmp eq ptr %i.ak, %i.al
  br i1 %.not.i.i35.i, label %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE5clearEv.exit.i
  tail call void @_ZN4absl13base_internal13LowLevelAlloc4FreeEPv(ptr noundef %i.ak) #12
  br label %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit.i

_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit.i: ; preds = %bb.g, %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE5clearEv.exit.i
  store ptr %i.al, ptr %i.aj, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 1048928 ; 16 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 1048932 ; 6 uses
  store i32 8, ptr %i.an, align 4
  store i32 %i.c, ptr %i.al, align 8
  store i32 1, ptr %i.am, align 8
  br label %bb.h

thread-pre-split.loopexit.i:                      ; preds = %bb.y, %bb.o, %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit48.i
  %.val29.pr.pre.i = load i32, ptr %i.am, align 8
  br label %thread-pre-split.i

thread-pre-split.i:                               ; preds = %bb.h, %thread-pre-split.loopexit.i
  %.val29.pr.i = phi i32 [ %.val29.pr.pre.i, %thread-pre-split.loopexit.i ], [ %i.ap, %bb.h ] ; 2 uses
  %i.ao = icmp eq i32 %.val29.pr.i, 0
  br i1 %i.ao, label %bb.ab, label %bb.h

bb.h:                                             ; preds = %thread-pre-split.i, %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit.i
  %.val2985.i = phi i32 [ 1, %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit.i ], [ %.val29.pr.i, %thread-pre-split.i ]
  %.val30.i = load ptr, ptr %i.aj, align 8
  %i.ap = add i32 %.val2985.i, -1                 ; 3 uses
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %.val30.i, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4            ; 2 uses
  store i32 %i.ap, ptr %i.am, align 8
  %.val28.i = load ptr, ptr %i.a, align 8
  %i.at = zext i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %.val28.i, i64 %i.at
  %i.av = load ptr, ptr %i.au, align 8            ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 12 ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 4, !range !12, !noundef !13
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %thread-pre-split.i, label %bb.i, !llvm.loop !21

bb.i:                                             ; preds = %bb.h
  store i8 1, ptr %i.aw, align 4
  %i.az = load i32, ptr %i.ah, align 8            ; 5 uses
  %i.ba = load i32, ptr %i.ai, align 4
  %i.bb = icmp eq i32 %i.az, %i.ba
  br i1 %i.bb, label %bb.j, label %._crit_edge.i37.i

._crit_edge.i37.i:                                ; preds = %bb.i
  %.pre.i38.i = load ptr, ptr %i.ae, align 8
  br label %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit48.i

bb.j:                                             ; preds = %bb.i
  %3 = add i32 %i.az, 1
  %.not.i39.i = icmp eq i32 %i.az, -1
  br i1 %.not.i39.i, label %bb.k, label %.lr.ph.i.i40.i

.lr.ph.i.i40.i:                                   ; preds = %bb.j, %.lr.ph.i.i40.i
  %i.bc = phi i32 [ %i.bd, %.lr.ph.i.i40.i ], [ %i.az, %bb.j ]
  %i.bd = shl i32 %i.bc, 1                        ; 4 uses
  %4 = icmp ult i32 %i.bd, %3
  br i1 %4, label %.lr.ph.i.i40.i, label %._crit_edge.i.i41.i, !llvm.loop !17

._crit_edge.i.i41.i:                              ; preds = %.lr.ph.i.i40.i
  store i32 %i.bd, ptr %i.ai, align 4
  %i.be = zext i32 %i.bd to i64
  %i.bf = shl nuw nsw i64 %i.be, 2
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge.i.i41.i, %bb.j
  %.lcssa.i.i42.i = phi i64 [ %i.bf, %._crit_edge.i.i41.i ], [ 17179869180, %bb.j ]
  %i.bg = load ptr, ptr @_ZN4absl24synchronization_internal12_GLOBAL__N_15arenaE, align 8
  %i.bh = tail call noundef ptr @_ZN4absl13base_internal13LowLevelAlloc14AllocWithArenaEmPNS1_5ArenaE(i64 noundef %.lcssa.i.i42.i, ptr noundef %i.bg) #12 ; 4 uses
  %i.bi = load ptr, ptr %i.ae, align 8            ; 2 uses
  %i.bj = load i32, ptr %i.ah, align 8            ; 2 uses
  switch i32 %i.bj, label %bb.l [
    i32 0, label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i43.i
    i32 1, label %bb.m
  ], !prof !7

bb.l:                                             ; preds = %bb.k
  %i.bk = zext i32 %i.bj to i64
  %.idx.i.i.i.i47.i = shl nuw nsw i64 %i.bk, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.bh, ptr align 4 %i.bi, i64 %.idx.i.i.i.i47.i, i1 false)
  br label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i43.i

bb.m:                                             ; preds = %bb.k
  %i.bl = load i32, ptr %i.bi, align 4
  store i32 %i.bl, ptr %i.bh, align 4
  br label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i43.i

_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i43.i:      ; preds = %bb.m, %bb.l, %bb.k
  %i.bm = load ptr, ptr %i.ae, align 8            ; 2 uses
  %.not.i4.i.i44.i = icmp eq ptr %i.bm, %i.ag
  br i1 %.not.i4.i.i44.i, label %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i45.i, label %bb.n

bb.n:                                             ; preds = %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i43.i
  tail call void @_ZN4absl13base_internal13LowLevelAlloc4FreeEPv(ptr noundef %i.bm) #12
  br label %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i45.i

_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i45.i: ; preds = %bb.n, %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i43.i
  store ptr %i.bh, ptr %i.ae, align 8
  %.pre1.i46.i = load i32, ptr %i.ah, align 8
  br label %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit48.i

_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit48.i: ; preds = %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i45.i, %._crit_edge.i37.i
  %i.bn = phi i32 [ %i.az, %._crit_edge.i37.i ], [ %.pre1.i46.i, %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i45.i ]
  %i.bo = phi ptr [ %.pre.i38.i, %._crit_edge.i37.i ], [ %i.bh, %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i45.i ]
  %i.bp = zext i32 %i.bn to i64
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.bp
  store i32 %i.as, ptr %i.bq, align 4
  %i.br = load i32, ptr %i.ah, align 8
  %i.bs = add i32 %i.br, 1
  store i32 %i.bs, ptr %i.ah, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.av, i64 80
  %i.bu = getelementptr inbounds nuw i8, ptr %i.av, i64 120 ; 2 uses
  %.val.i.i214 = load i32, ptr %i.bu, align 8     ; 2 uses
  %exitcond.not.i210216 = icmp eq i32 %.val.i.i214, 0
  br i1 %exitcond.not.i210216, label %thread-pre-split.loopexit.i, label %.lr.ph212.lr.ph

.lr.ph212.lr.ph:                                  ; preds = %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit48.i
  %wide.trip.count.i215 = zext i32 %.val.i.i214 to i64
  br label %.lr.ph212

.lr.ph212:                                        ; preds = %.lr.ph212.lr.ph, %bb.y
  %wide.trip.count.i217 = phi i64 [ %wide.trip.count.i215, %.lr.ph212.lr.ph ], [ %wide.trip.count.i, %bb.y ]
  %i.bv = phi i64 [ 0, %.lr.ph212.lr.ph ], [ %indvars.iv.next.i, %bb.y ]
  %.val10.i.i = load ptr, ptr %i.bt, align 8
  br label %bb.p

bb.o:                                             ; preds = %bb.p
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i217
  br i1 %exitcond.not.i, label %thread-pre-split.loopexit.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph212, %bb.o
  %indvars.iv.i211 = phi i64 [ %i.bv, %.lr.ph212 ], [ %indvars.iv.next.i, %bb.o ] ; 2 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %.val10.i.i, i64 %indvars.iv.i211
  %i.bx = load i32, ptr %i.bw, align 4            ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i211, 1 ; 5 uses
  %i.by = icmp sgt i32 %i.bx, -1
  br i1 %i.by, label %bb.q, label %bb.o

bb.q:                                             ; preds = %bb.p
  %i.bz = trunc nuw i64 %indvars.iv.next.i to i32
  %.val.i = load ptr, ptr %i.a, align 8
  %i.ca = zext nneg i32 %i.bx to i64
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.ca
  %i.cc = load ptr, ptr %i.cb, align 8            ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 8            ; 2 uses
  %.not.i = icmp eq i32 %i.cd, %i.ac
  br i1 %.not.i, label %_ZN4absl24synchronization_internalL10ForwardDFSEPNS0_11GraphCycles3RepEii.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  %i.cf = load i8, ptr %i.ce, align 4, !range !12, !noundef !13
  %i.cg = trunc nuw i8 %i.cf to i1
  %i.ch = icmp sge i32 %i.cd, %i.ac
  %or.cond.not.i = or i1 %i.ch, %i.cg
  br i1 %or.cond.not.i, label %bb.y, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ci = load i32, ptr %i.am, align 8            ; 5 uses
  %i.cj = load i32, ptr %i.an, align 4
  %i.ck = icmp eq i32 %i.ci, %i.cj
  br i1 %i.ck, label %bb.t, label %._crit_edge.i50.i

._crit_edge.i50.i:                                ; preds = %bb.s
  %.pre.i51.i = load ptr, ptr %i.aj, align 8
  br label %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit61.i

bb.t:                                             ; preds = %bb.s
  %5 = add i32 %i.ci, 1
  %.not.i52.i = icmp eq i32 %i.ci, -1
  br i1 %.not.i52.i, label %bb.u, label %.lr.ph.i.i53.i

.lr.ph.i.i53.i:                                   ; preds = %bb.t, %.lr.ph.i.i53.i
  %i.cl = phi i32 [ %i.cm, %.lr.ph.i.i53.i ], [ %i.ci, %bb.t ]
  %i.cm = shl i32 %i.cl, 1                        ; 4 uses
  %6 = icmp ult i32 %i.cm, %5
  br i1 %6, label %.lr.ph.i.i53.i, label %._crit_edge.i.i54.i, !llvm.loop !17

._crit_edge.i.i54.i:                              ; preds = %.lr.ph.i.i53.i
  store i32 %i.cm, ptr %i.an, align 4
  %i.cn = zext i32 %i.cm to i64
  %i.co = shl nuw nsw i64 %i.cn, 2
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge.i.i54.i, %bb.t
  %.lcssa.i.i55.i = phi i64 [ %i.co, %._crit_edge.i.i54.i ], [ 17179869180, %bb.t ]
  %i.cp = load ptr, ptr @_ZN4absl24synchronization_internal12_GLOBAL__N_15arenaE, align 8
  %i.cq = tail call noundef ptr @_ZN4absl13base_internal13LowLevelAlloc14AllocWithArenaEmPNS1_5ArenaE(i64 noundef %.lcssa.i.i55.i, ptr noundef %i.cp) #12 ; 4 uses
  %i.cr = load ptr, ptr %i.aj, align 8            ; 2 uses
  %i.cs = load i32, ptr %i.am, align 8            ; 2 uses
  switch i32 %i.cs, label %bb.v [
    i32 0, label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i56.i
    i32 1, label %bb.w
  ], !prof !7

bb.v:                                             ; preds = %bb.u
  %i.ct = zext i32 %i.cs to i64
  %.idx.i.i.i.i60.i = shl nuw nsw i64 %i.ct, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.cq, ptr align 4 %i.cr, i64 %.idx.i.i.i.i60.i, i1 false)
  br label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i56.i

bb.w:                                             ; preds = %bb.u
  %i.cu = load i32, ptr %i.cr, align 4
  store i32 %i.cu, ptr %i.cq, align 4
  br label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i56.i

_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i56.i:      ; preds = %bb.w, %bb.v, %bb.u
  %i.cv = load ptr, ptr %i.aj, align 8            ; 2 uses
  %.not.i4.i.i57.i = icmp eq ptr %i.cv, %i.al
  br i1 %.not.i4.i.i57.i, label %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i58.i, label %bb.x

bb.x:                                             ; preds = %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i56.i
  tail call void @_ZN4absl13base_internal13LowLevelAlloc4FreeEPv(ptr noundef %i.cv) #12
  br label %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i58.i

_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i58.i: ; preds = %bb.x, %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i56.i
  store ptr %i.cq, ptr %i.aj, align 8
  %.pre1.i59.i = load i32, ptr %i.am, align 8
  br label %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit61.i

_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit61.i: ; preds = %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i58.i, %._crit_edge.i50.i
  %i.cw = phi i32 [ %i.ci, %._crit_edge.i50.i ], [ %.pre1.i59.i, %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i58.i ]
  %i.cx = phi ptr [ %.pre.i51.i, %._crit_edge.i50.i ], [ %i.cq, %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i58.i ]
  %i.cy = zext i32 %i.cw to i64
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %i.cy
  store i32 %i.bx, ptr %i.cz, align 4
  %i.da = load i32, ptr %i.am, align 8
  %i.db = add i32 %i.da, 1
  store i32 %i.db, ptr %i.am, align 8
  br label %bb.y

bb.y:                                             ; preds = %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit61.i, %bb.r
  %.val.i.i = load i32, ptr %i.bu, align 8
  %umax.i = tail call i32 @llvm.umax.i32(i32 %i.bz, i32 %.val.i.i)
  %wide.trip.count.i = zext i32 %umax.i to i64    ; 2 uses
  %exitcond.not.i210 = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i210, label %thread-pre-split.loopexit.i, label %.lr.ph212, !llvm.loop !22

_ZN4absl24synchronization_internalL10ForwardDFSEPNS0_11GraphCycles3RepEii.exit: ; preds = %bb.q
  %.val51 = load ptr, ptr %i.y, align 8           ; 4 uses
  %i.dc = getelementptr i8, ptr %i.f, i64 120
  %.val52 = load i32, ptr %i.dc, align 8
  %i.dd = add i32 %.val52, -1                     ; 2 uses
  %i.de = mul i32 %i.c, 41
  %.02410.i.i = and i32 %i.dd, %i.de              ; 2 uses
  %i.df = zext i32 %.02410.i.i to i64             ; 2 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %.val51, i64 %i.df
  %i.dh = load i32, ptr %i.dg, align 4            ; 2 uses
  %i.di = icmp eq i32 %i.dh, %i.c
  br i1 %i.di, label %_ZNK4absl24synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.thread.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4absl24synchronization_internalL10ForwardDFSEPNS0_11GraphCycles3RepEii.exit, %bb.z
  %i.dj = phi i32 [ %i.dq, %bb.z ], [ %i.dh, %_ZN4absl24synchronization_internalL10ForwardDFSEPNS0_11GraphCycles3RepEii.exit ] ; 2 uses
  %.02413.i.i = phi i32 [ %.024.i.i, %bb.z ], [ %.02410.i.i, %_ZN4absl24synchronization_internalL10ForwardDFSEPNS0_11GraphCycles3RepEii.exit ] ; 3 uses
  %.01912.i.i = phi i8 [ %spec.select27.i.i, %bb.z ], [ 0, %_ZN4absl24synchronization_internalL10ForwardDFSEPNS0_11GraphCycles3RepEii.exit ] ; 3 uses
  %.02111.i.i = phi i32 [ %spec.select.i.i, %bb.z ], [ 0, %_ZN4absl24synchronization_internalL10ForwardDFSEPNS0_11GraphCycles3RepEii.exit ] ; 2 uses
  %i.dk = icmp eq i32 %i.dj, -1
  br i1 %i.dk, label %_ZNK4absl24synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.i, label %bb.z

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
  %i.dq = load i32, ptr %i.dp, align 4            ; 2 uses
  %i.dr = icmp eq i32 %i.dq, %i.c
  br i1 %i.dr, label %_ZNK4absl24synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.thread.i, label %.lr.ph.i.i, !llvm.loop !16

_ZNK4absl24synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.i: ; preds = %.lr.ph.i.i
  %i.ds = trunc nuw i8 %.01912.i.i to i1
  %i.dt = select i1 %i.ds, i32 %.02111.i.i, i32 %.02413.i.i
  %.pre.i = zext i32 %i.dt to i64                 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw [4 x i8], ptr %.val51, i64 %.pre.i
  %.pre7.i = load i32, ptr %.phi.trans.insert.i, align 4
  %i.du = icmp eq i32 %.pre7.i, %i.c
  br i1 %i.du, label %_ZNK4absl24synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.thread.i, label %_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit

_ZNK4absl24synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.thread.i: ; preds = %bb.z, %_ZNK4absl24synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.i, %_ZN4absl24synchronization_internalL10ForwardDFSEPNS0_11GraphCycles3RepEii.exit
  %.pre-phi12.i = phi i64 [ %.pre.i, %_ZNK4absl24synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.i ], [ %i.df, %_ZN4absl24synchronization_internalL10ForwardDFSEPNS0_11GraphCycles3RepEii.exit ], [ %i.do, %bb.z ]
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %.val51, i64 %.pre-phi12.i
  store i32 -2, ptr %i.dv, align 4
  br label %_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit

_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit: ; preds = %_ZNK4absl24synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.i, %_ZNK4absl24synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.thread.i
  %.val49 = load ptr, ptr %i.aa, align 8          ; 4 uses
  %i.dw = getelementptr i8, ptr %i.o, i64 64
  %.val50 = load i32, ptr %i.dw, align 8
  %i.dx = add i32 %.val50, -1                     ; 2 uses
  %i.dy = mul i32 %i.b, 41
  %.02410.i.i55 = and i32 %i.dx, %i.dy            ; 2 uses
  %i.dz = zext i32 %.02410.i.i55 to i64           ; 2 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %.val49, i64 %i.dz
  %i.eb = load i32, ptr %i.ea, align 4            ; 2 uses
  %i.ec = icmp eq i32 %i.eb, %i.b
  br i1 %i.ec, label %_ZNK4absl24synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.thread.i64, label %.lr.ph.i.i56

.lr.ph.i.i56:                                     ; preds = %_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit, %bb.aa
  %i.ed = phi i32 [ %i.ek, %bb.aa ], [ %i.eb, %_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit ] ; 2 uses
  %.02413.i.i57 = phi i32 [ %.024.i.i63, %bb.aa ], [ %.02410.i.i55, %_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit ] ; 3 uses
  %.01912.i.i58 = phi i8 [ %spec.select27.i.i62, %bb.aa ], [ 0, %_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit ] ; 3 uses
  %.02111.i.i59 = phi i32 [ %spec.select.i.i61, %bb.aa ], [ 0, %_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit ] ; 2 uses
  %i.ee = icmp eq i32 %i.ed, -1
  br i1 %i.ee, label %_ZNK4absl24synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.i66, label %bb.aa

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
  %i.ek = load i32, ptr %i.ej, align 4            ; 2 uses
  %i.el = icmp eq i32 %i.ek, %i.b
  br i1 %i.el, label %_ZNK4absl24synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.thread.i64, label %.lr.ph.i.i56, !llvm.loop !16

_ZNK4absl24synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.i66: ; preds = %.lr.ph.i.i56
  %i.em = trunc nuw i8 %.01912.i.i58 to i1
  %i.en = select i1 %i.em, i32 %.02111.i.i59, i32 %.02413.i.i57
  %.pre.i67 = zext i32 %i.en to i64               ; 2 uses
  %.phi.trans.insert.i68 = getelementptr inbounds nuw [4 x i8], ptr %.val49, i64 %.pre.i67
  %.pre7.i69 = load i32, ptr %.phi.trans.insert.i68, align 4
  %i.eo = icmp eq i32 %.pre7.i69, %i.b
  br i1 %i.eo, label %_ZNK4absl24synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.thread.i64, label %_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit70

_ZNK4absl24synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.thread.i64: ; preds = %bb.aa, %_ZNK4absl24synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.i66, %_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit
  %.pre-phi12.i65 = phi i64 [ %.pre.i67, %_ZNK4absl24synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.i66 ], [ %i.dz, %_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit ], [ %i.ei, %bb.aa ]
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %.val49, i64 %.pre-phi12.i65
  store i32 -2, ptr %i.ep, align 4
  br label %_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit70

_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit70: ; preds = %_ZNK4absl24synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.i66, %_ZNK4absl24synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.thread.i64
  %.val46 = load ptr, ptr %i.ae, align 8          ; 3 uses
  %.val48 = load i32, ptr %i.ah, align 8          ; 2 uses
  %i.eq = zext i32 %.val48 to i64
  %.idx = shl nuw nsw i64 %i.eq, 2                ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.val46, i64 %.idx
  %.not45119 = icmp eq i32 %.val48, 0
  br i1 %.not45119, label %_ZN4absl24synchronization_internalL7ReorderEPNS0_11GraphCycles3RepE.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit70
  %i.es = add nsw i64 %.idx, -4                   ; 2 uses
  %i.et = lshr exact i64 %i.es, 2
  %i.eu = add nuw nsw i64 %i.et, 1
  %xtraiter = and i64 %i.eu, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.041120.prol = phi ptr [ %i.fa, %.lr.ph.prol ], [ %.val46, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.ev = load i32, ptr %.041120.prol, align 4
  %.val.prol = load ptr, ptr %i.a, align 8
  %i.ew = zext i32 %i.ev to i64
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %.val.prol, i64 %i.ew
  %i.ey = load ptr, ptr %i.ex, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 12
  store i8 0, ptr %i.ez, align 4
  %i.fa = getelementptr inbounds nuw i8, ptr %.041120.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !23

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.041120.unr = phi ptr [ %.val46, %.lr.ph.preheader ], [ %i.fa, %.lr.ph.prol ]
  %i.fb = icmp ult i64 %i.es, 12
  br i1 %i.fb, label %_ZN4absl24synchronization_internalL7ReorderEPNS0_11GraphCycles3RepE.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.041120 = phi ptr [ %i.fz, %.lr.ph ], [ %.041120.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.fc = load i32, ptr %.041120, align 4
  %.val = load ptr, ptr %i.a, align 8
  %i.fd = zext i32 %i.fc to i64
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.fd
  %i.ff = load ptr, ptr %i.fe, align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 12
  store i8 0, ptr %i.fg, align 4
  %i.fh = getelementptr inbounds nuw i8, ptr %.041120, i64 4
  %i.fi = load i32, ptr %i.fh, align 4
  %.val.1 = load ptr, ptr %i.a, align 8
  %i.fj = zext i32 %i.fi to i64
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %.val.1, i64 %i.fj
  %i.fl = load ptr, ptr %i.fk, align 8
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 12
  store i8 0, ptr %i.fm, align 4
  %i.fn = getelementptr inbounds nuw i8, ptr %.041120, i64 8
  %i.fo = load i32, ptr %i.fn, align 4
  %.val.2 = load ptr, ptr %i.a, align 8
  %i.fp = zext i32 %i.fo to i64
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %.val.2, i64 %i.fp
  %i.fr = load ptr, ptr %i.fq, align 8
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 12
  store i8 0, ptr %i.fs, align 4
  %i.ft = getelementptr inbounds nuw i8, ptr %.041120, i64 12
  %i.fu = load i32, ptr %i.ft, align 4
  %.val.3 = load ptr, ptr %i.a, align 8
  %i.fv = zext i32 %i.fu to i64
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %.val.3, i64 %i.fv
  %i.fx = load ptr, ptr %i.fw, align 8
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 12
  store i8 0, ptr %i.fy, align 4
  %i.fz = getelementptr inbounds nuw i8, ptr %.041120, i64 16 ; 2 uses
  %.not45.3 = icmp eq ptr %i.fz, %i.er
  br i1 %.not45.3, label %_ZN4absl24synchronization_internalL7ReorderEPNS0_11GraphCycles3RepE.exit, label %.lr.ph

bb.ab:                                            ; preds = %thread-pre-split.i
  %i.ga = load i32, ptr %i.o, align 8
  %i.gb = getelementptr inbounds nuw i8, ptr %i.a, i64 1048744 ; 9 uses
  %i.gc = load ptr, ptr %i.gb, align 8            ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.a, i64 1048752 ; 3 uses
  %.not.i.i.i71 = icmp eq ptr %i.gc, %i.gd
  br i1 %.not.i.i.i71, label %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE5clearEv.exit.i72, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @_ZN4absl13base_internal13LowLevelAlloc4FreeEPv(ptr noundef %i.gc) #12
  br label %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE5clearEv.exit.i72

_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE5clearEv.exit.i72: ; preds = %bb.ac, %bb.ab
  store ptr %i.gd, ptr %i.gb, align 8
  %i.ge = getelementptr inbounds nuw i8, ptr %i.a, i64 1048784 ; 10 uses
  store i32 0, ptr %i.ge, align 8
  %i.gf = getelementptr inbounds nuw i8, ptr %i.a, i64 1048788 ; 3 uses
  store i32 8, ptr %i.gf, align 4
  %i.gg = load ptr, ptr %i.aj, align 8            ; 2 uses
  %.not.i.i22.i = icmp eq ptr %i.gg, %i.al
  br i1 %.not.i.i22.i, label %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit.i73, label %bb.ad

bb.ad:                                            ; preds = %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE5clearEv.exit.i72
  tail call void @_ZN4absl13base_internal13LowLevelAlloc4FreeEPv(ptr noundef %i.gg) #12
  br label %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit.i73

_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit.i73: ; preds = %bb.ad, %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE5clearEv.exit.i72
  store ptr %i.al, ptr %i.aj, align 8
  store i32 8, ptr %i.an, align 4
  store i32 %i.b, ptr %i.al, align 8
  store i32 1, ptr %i.am, align 8
  br label %bb.ae

bb.ae:                                            ; preds = %_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS3_.exit.i, %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit.i73
  %.val1664.i = phi i32 [ 1, %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit.i73 ], [ %.val16.pr.i, %_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS3_.exit.i ]
  %.val17.i = load ptr, ptr %i.aj, align 8
  %i.gh = add i32 %.val1664.i, -1                 ; 3 uses
  %i.gi = zext i32 %i.gh to i64
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %.val17.i, i64 %i.gi
  %i.gk = load i32, ptr %i.gj, align 4            ; 2 uses
  store i32 %i.gh, ptr %i.am, align 8
  %.val15.i = load ptr, ptr %i.a, align 8
  %i.gl = zext i32 %i.gk to i64
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %.val15.i, i64 %i.gl
  %i.gn = load ptr, ptr %i.gm, align 8            ; 3 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 12 ; 2 uses
  %i.gp = load i8, ptr %i.go, align 4, !range !12, !noundef !13
  %i.gq = trunc nuw i8 %i.gp to i1
  br i1 %i.gq, label %_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS3_.exit.i, label %bb.af, !llvm.loop !24

bb.af:                                            ; preds = %bb.ae
  store i8 1, ptr %i.go, align 4
  %i.gr = load i32, ptr %i.ge, align 8            ; 5 uses
  %i.gs = load i32, ptr %i.gf, align 4
  %i.gt = icmp eq i32 %i.gr, %i.gs
  br i1 %i.gt, label %bb.ag, label %._crit_edge.i24.i

._crit_edge.i24.i:                                ; preds = %bb.af
  %.pre.i25.i = load ptr, ptr %i.gb, align 8
  br label %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit35.i

bb.ag:                                            ; preds = %bb.af
  %7 = add i32 %i.gr, 1
  %.not.i26.i = icmp eq i32 %i.gr, -1
  br i1 %.not.i26.i, label %bb.ah, label %.lr.ph.i.i27.i

.lr.ph.i.i27.i:                                   ; preds = %bb.ag, %.lr.ph.i.i27.i
  %i.gu = phi i32 [ %i.gv, %.lr.ph.i.i27.i ], [ %i.gr, %bb.ag ]
  %i.gv = shl i32 %i.gu, 1                        ; 4 uses
  %8 = icmp ult i32 %i.gv, %7
  br i1 %8, label %.lr.ph.i.i27.i, label %._crit_edge.i.i28.i, !llvm.loop !17

._crit_edge.i.i28.i:                              ; preds = %.lr.ph.i.i27.i
  store i32 %i.gv, ptr %i.gf, align 4
  %i.gw = zext i32 %i.gv to i64
  %i.gx = shl nuw nsw i64 %i.gw, 2
  br label %bb.ah

bb.ah:                                            ; preds = %._crit_edge.i.i28.i, %bb.ag
  %.lcssa.i.i29.i = phi i64 [ %i.gx, %._crit_edge.i.i28.i ], [ 17179869180, %bb.ag ]
  %i.gy = load ptr, ptr @_ZN4absl24synchronization_internal12_GLOBAL__N_15arenaE, align 8
  %i.gz = tail call noundef ptr @_ZN4absl13base_internal13LowLevelAlloc14AllocWithArenaEmPNS1_5ArenaE(i64 noundef %.lcssa.i.i29.i, ptr noundef %i.gy) #12 ; 4 uses
  %i.ha = load ptr, ptr %i.gb, align 8            ; 2 uses
  %i.hb = load i32, ptr %i.ge, align 8            ; 2 uses
  switch i32 %i.hb, label %bb.ai [
    i32 0, label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i30.i
    i32 1, label %bb.aj
  ], !prof !7

bb.ai:                                            ; preds = %bb.ah
  %i.hc = zext i32 %i.hb to i64
  %.idx.i.i.i.i34.i = shl nuw nsw i64 %i.hc, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.gz, ptr align 4 %i.ha, i64 %.idx.i.i.i.i34.i, i1 false)
  br label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i30.i

bb.aj:                                            ; preds = %bb.ah
  %i.hd = load i32, ptr %i.ha, align 4
  store i32 %i.hd, ptr %i.gz, align 4
  br label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i30.i

_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i30.i:      ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.he = load ptr, ptr %i.gb, align 8            ; 2 uses
  %.not.i4.i.i31.i = icmp eq ptr %i.he, %i.gd
  br i1 %.not.i4.i.i31.i, label %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i32.i, label %bb.ak

bb.ak:                                            ; preds = %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i30.i
  tail call void @_ZN4absl13base_internal13LowLevelAlloc4FreeEPv(ptr noundef %i.he) #12
  br label %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i32.i

_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i32.i: ; preds = %bb.ak, %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i30.i
  store ptr %i.gz, ptr %i.gb, align 8
  %.pre1.i33.i = load i32, ptr %i.ge, align 8
  br label %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit35.i

_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit35.i: ; preds = %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i32.i, %._crit_edge.i24.i
  %i.hf = phi i32 [ %i.gr, %._crit_edge.i24.i ], [ %.pre1.i33.i, %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i32.i ]
  %i.hg = phi ptr [ %.pre.i25.i, %._crit_edge.i24.i ], [ %i.gz, %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i32.i ]
  %i.hh = zext i32 %i.hf to i64
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.hh
  store i32 %i.gk, ptr %i.hi, align 4
  %i.hj = load i32, ptr %i.ge, align 8
  %i.hk = add i32 %i.hj, 1
  store i32 %i.hk, ptr %i.ge, align 8
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gn, i64 24
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gn, i64 64 ; 2 uses
  %.val.i.i75222 = load i32, ptr %i.hm, align 8   ; 2 uses
  %exitcond.not.i79218224 = icmp eq i32 %.val.i.i75222, 0
  br i1 %exitcond.not.i79218224, label %_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS3_.exit.loopexit.i, label %.lr.ph220.lr.ph

.lr.ph220.lr.ph:                                  ; preds = %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit35.i
  %wide.trip.count.i77223 = zext i32 %.val.i.i75222 to i64
  br label %.lr.ph220

.lr.ph220:                                        ; preds = %.lr.ph220.lr.ph, %bb.av
  %wide.trip.count.i77225 = phi i64 [ %wide.trip.count.i77223, %.lr.ph220.lr.ph ], [ %wide.trip.count.i77, %bb.av ]
  %i.hn = phi i64 [ 0, %.lr.ph220.lr.ph ], [ %indvars.iv.next.i81, %bb.av ]
  %.val10.i.i80 = load ptr, ptr %i.hl, align 8
  br label %bb.am

bb.al:                                            ; preds = %bb.am
  %exitcond.not.i79 = icmp eq i64 %indvars.iv.next.i81, %wide.trip.count.i77225
  br i1 %exitcond.not.i79, label %_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS3_.exit.loopexit.i, label %bb.am

bb.am:                                            ; preds = %.lr.ph220, %bb.al
  %indvars.iv.i78219 = phi i64 [ %i.hn, %.lr.ph220 ], [ %indvars.iv.next.i81, %bb.al ] ; 2 uses
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %.val10.i.i80, i64 %indvars.iv.i78219
  %i.hp = load i32, ptr %i.ho, align 4            ; 3 uses
  %indvars.iv.next.i81 = add nuw nsw i64 %indvars.iv.i78219, 1 ; 5 uses
  %i.hq = icmp sgt i32 %i.hp, -1
  br i1 %i.hq, label %bb.an, label %bb.al

bb.an:                                            ; preds = %bb.am
  %i.hr = trunc nuw i64 %indvars.iv.next.i81 to i32
  %.val.i82 = load ptr, ptr %i.a, align 8
  %i.hs = zext nneg i32 %i.hp to i64
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %.val.i82, i64 %i.hs
  %i.hu = load ptr, ptr %i.ht, align 8            ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 12
  %i.hw = load i8, ptr %i.hv, align 4, !range !12, !noundef !13
  %i.hx = trunc nuw i8 %i.hw to i1
  br i1 %i.hx, label %bb.av, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.hy = load i32, ptr %i.hu, align 8
  %i.hz = icmp slt i32 %i.ga, %i.hy
  br i1 %i.hz, label %bb.ap, label %bb.av

bb.ap:                                            ; preds = %bb.ao
  %i.ia = load i32, ptr %i.am, align 8            ; 5 uses
  %i.ib = load i32, ptr %i.an, align 4
  %i.ic = icmp eq i32 %i.ia, %i.ib
  br i1 %i.ic, label %bb.aq, label %._crit_edge.i37.i83

._crit_edge.i37.i83:                              ; preds = %bb.ap
  %.pre.i38.i84 = load ptr, ptr %i.aj, align 8
  br label %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit48.i85

bb.aq:                                            ; preds = %bb.ap
  %9 = add i32 %i.ia, 1
  %.not.i39.i86 = icmp eq i32 %i.ia, -1
  br i1 %.not.i39.i86, label %bb.ar, label %.lr.ph.i.i40.i87

.lr.ph.i.i40.i87:                                 ; preds = %bb.aq, %.lr.ph.i.i40.i87
  %i.id = phi i32 [ %i.ie, %.lr.ph.i.i40.i87 ], [ %i.ia, %bb.aq ]
  %i.ie = shl i32 %i.id, 1                        ; 4 uses
  %10 = icmp ult i32 %i.ie, %9
  br i1 %10, label %.lr.ph.i.i40.i87, label %._crit_edge.i.i41.i88, !llvm.loop !17

._crit_edge.i.i41.i88:                            ; preds = %.lr.ph.i.i40.i87
  store i32 %i.ie, ptr %i.an, align 4
  %i.if = zext i32 %i.ie to i64
  %i.ig = shl nuw nsw i64 %i.if, 2
  br label %bb.ar

bb.ar:                                            ; preds = %._crit_edge.i.i41.i88, %bb.aq
  %.lcssa.i.i42.i89 = phi i64 [ %i.ig, %._crit_edge.i.i41.i88 ], [ 17179869180, %bb.aq ]
  %i.ih = load ptr, ptr @_ZN4absl24synchronization_internal12_GLOBAL__N_15arenaE, align 8
  %i.ii = tail call noundef ptr @_ZN4absl13base_internal13LowLevelAlloc14AllocWithArenaEmPNS1_5ArenaE(i64 noundef %.lcssa.i.i42.i89, ptr noundef %i.ih) #12 ; 4 uses
  %i.ij = load ptr, ptr %i.aj, align 8            ; 2 uses
  %i.ik = load i32, ptr %i.am, align 8            ; 2 uses
  switch i32 %i.ik, label %bb.as [
    i32 0, label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i43.i90
    i32 1, label %bb.at
  ], !prof !7

bb.as:                                            ; preds = %bb.ar
  %i.il = zext i32 %i.ik to i64
  %.idx.i.i.i.i47.i94 = shl nuw nsw i64 %i.il, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ii, ptr align 4 %i.ij, i64 %.idx.i.i.i.i47.i94, i1 false)
  br label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i43.i90

bb.at:                                            ; preds = %bb.ar
  %i.im = load i32, ptr %i.ij, align 4
  store i32 %i.im, ptr %i.ii, align 4
  br label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i43.i90

_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i43.i90:    ; preds = %bb.at, %bb.as, %bb.ar
  %i.in = load ptr, ptr %i.aj, align 8            ; 2 uses
  %.not.i4.i.i44.i91 = icmp eq ptr %i.in, %i.al
  br i1 %.not.i4.i.i44.i91, label %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i45.i92, label %bb.au

bb.au:                                            ; preds = %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i43.i90
  tail call void @_ZN4absl13base_internal13LowLevelAlloc4FreeEPv(ptr noundef %i.in) #12
  br label %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i45.i92

_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i45.i92: ; preds = %bb.au, %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i43.i90
  store ptr %i.ii, ptr %i.aj, align 8
  %.pre1.i46.i93 = load i32, ptr %i.am, align 8
  br label %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit48.i85

_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit48.i85: ; preds = %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i45.i92, %._crit_edge.i37.i83
  %i.io = phi i32 [ %i.ia, %._crit_edge.i37.i83 ], [ %.pre1.i46.i93, %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i45.i92 ]
  %i.ip = phi ptr [ %.pre.i38.i84, %._crit_edge.i37.i83 ], [ %i.ii, %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i45.i92 ]
  %i.iq = zext i32 %i.io to i64
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %i.iq
  store i32 %i.hp, ptr %i.ir, align 4
  %i.is = load i32, ptr %i.am, align 8
  %i.it = add i32 %i.is, 1
  store i32 %i.it, ptr %i.am, align 8
  br label %bb.av

bb.av:                                            ; preds = %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit48.i85, %bb.ao, %bb.an
  %.val.i.i75 = load i32, ptr %i.hm, align 8
  %umax.i76 = tail call i32 @llvm.umax.i32(i32 %i.hr, i32 %.val.i.i75)
  %wide.trip.count.i77 = zext i32 %umax.i76 to i64 ; 2 uses
  %exitcond.not.i79218 = icmp eq i64 %indvars.iv.next.i81, %wide.trip.count.i77
  br i1 %exitcond.not.i79218, label %_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS3_.exit.loopexit.i, label %.lr.ph220, !llvm.loop !25

_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS3_.exit.loopexit.i: ; preds = %bb.av, %bb.al, %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit35.i
  %.val16.pr.pre.i = load i32, ptr %i.am, align 8
  br label %_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS3_.exit.i

_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS3_.exit.i: ; preds = %_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS3_.exit.loopexit.i, %bb.ae
  %.val16.pr.i = phi i32 [ %.val16.pr.pre.i, %_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS3_.exit.loopexit.i ], [ %i.gh, %bb.ae ] ; 2 uses
  %i.iu = icmp eq i32 %.val16.pr.i, 0
  br i1 %i.iu, label %_ZN4absl24synchronization_internalL11BackwardDFSEPNS0_11GraphCycles3RepEii.exit, label %bb.ae

_ZN4absl24synchronization_internalL11BackwardDFSEPNS0_11GraphCycles3RepEii.exit: ; preds = %_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS3_.exit.i
  %.val40.i = load ptr, ptr %i.gb, align 8
  %.val41.i = load i32, ptr %i.ge, align 8
  tail call fastcc void @_ZN4absl24synchronization_internalL4SortERKNS0_12_GLOBAL__N_13VecIPNS1_4NodeEEEPNS2_IiEE(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr %.val40.i, i32 %.val41.i)
  %.val38.i = load ptr, ptr %i.ae, align 8
  %.val39.i = load i32, ptr %i.ah, align 8
  tail call fastcc void @_ZN4absl24synchronization_internalL4SortERKNS0_12_GLOBAL__N_13VecIPNS1_4NodeEEEPNS2_IiEE(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr %.val38.i, i32 %.val39.i)
  %i.iv = getelementptr inbounds nuw i8, ptr %i.a, i64 1048792 ; 5 uses
  %i.iw = load ptr, ptr %i.iv, align 8            ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.a, i64 1048800 ; 2 uses
  %.not.i.i.i95 = icmp eq ptr %i.iw, %i.ix
  br i1 %.not.i.i.i95, label %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE5clearEv.exit.i96, label %bb.aw

bb.aw:                                            ; preds = %_ZN4absl24synchronization_internalL11BackwardDFSEPNS0_11GraphCycles3RepEii.exit
  tail call void @_ZN4absl13base_internal13LowLevelAlloc4FreeEPv(ptr noundef %i.iw) #12
  br label %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE5clearEv.exit.i96

_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE5clearEv.exit.i96: ; preds = %bb.aw, %_ZN4absl24synchronization_internalL11BackwardDFSEPNS0_11GraphCycles3RepEii.exit
  store ptr %i.ix, ptr %i.iv, align 8
  %i.iy = getelementptr inbounds nuw i8, ptr %i.a, i64 1048832 ; 3 uses
  store i32 0, ptr %i.iy, align 8
  %i.iz = getelementptr inbounds nuw i8, ptr %i.a, i64 1048836
  store i32 8, ptr %i.iz, align 4
  %.val44.i = load ptr, ptr %i.gb, align 8
  %.val45.i = load i32, ptr %i.ge, align 8
  tail call fastcc void @_ZN4absl24synchronization_internalL10MoveToListEPNS0_11GraphCycles3RepEPNS0_12_GLOBAL__N_13VecIiEES7_(ptr noundef nonnull %i.a, ptr %.val44.i, i32 %.val45.i, ptr noundef nonnull %i.iv)
  %.val42.i = load ptr, ptr %i.ae, align 8
  %.val43.i = load i32, ptr %i.ah, align 8
  tail call fastcc void @_ZN4absl24synchronization_internalL10MoveToListEPNS0_11GraphCycles3RepEPNS0_12_GLOBAL__N_13VecIiEES7_(ptr noundef nonnull %i.a, ptr %.val42.i, i32 %.val43.i, ptr noundef nonnull %i.iv)
  %i.ja = getelementptr inbounds nuw i8, ptr %i.a, i64 1048840 ; 5 uses
  %.val28.i97 = load i32, ptr %i.ge, align 8      ; 2 uses
  %.val27.i = load i32, ptr %i.ah, align 8        ; 2 uses
  %i.jb = add i32 %.val27.i, %.val28.i97          ; 3 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.a, i64 1048884 ; 2 uses
  %i.jd = load i32, ptr %i.jc, align 4            ; 2 uses
  %i.je = icmp ugt i32 %i.jb, %i.jd
  br i1 %i.je, label %.lr.ph.i.i.i, label %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE5clearEv.exit._ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE6resizeEj.exit_crit_edge.i

_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE5clearEv.exit._ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE6resizeEj.exit_crit_edge.i: ; preds = %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE5clearEv.exit.i96
  %.val31.pre.i = load ptr, ptr %i.ja, align 8
  br label %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE6resizeEj.exit.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE5clearEv.exit.i96, %.lr.ph.i.i.i
  %i.jf = phi i32 [ %i.jg, %.lr.ph.i.i.i ], [ %i.jd, %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE5clearEv.exit.i96 ]
  %i.jg = shl i32 %i.jf, 1                        ; 4 uses
  %i.jh = icmp ult i32 %i.jg, %i.jb
  br i1 %i.jh, label %.lr.ph.i.i.i, label %bb.ax, !llvm.loop !17

bb.ax:                                            ; preds = %.lr.ph.i.i.i
  store i32 %i.jg, ptr %i.jc, align 4
  %i.ji = zext i32 %i.jg to i64
  %i.jj = shl nuw nsw i64 %i.ji, 2
  %i.jk = load ptr, ptr @_ZN4absl24synchronization_internal12_GLOBAL__N_15arenaE, align 8
  %i.jl = tail call noundef ptr @_ZN4absl13base_internal13LowLevelAlloc14AllocWithArenaEmPNS1_5ArenaE(i64 noundef %i.jj, ptr noundef %i.jk) #12 ; 4 uses
  %i.jm = load ptr, ptr %i.ja, align 8            ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.a, i64 1048880
  %i.jo = load i32, ptr %i.jn, align 8            ; 2 uses
  switch i32 %i.jo, label %bb.ay [
    i32 0, label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i.i
    i32 1, label %bb.az
  ], !prof !7

bb.ay:                                            ; preds = %bb.ax
  %i.jp = zext i32 %i.jo to i64
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.jp, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.jl, ptr align 4 %i.jm, i64 %.idx.i.i.i.i.i, i1 false)
  br label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i.i

bb.az:                                            ; preds = %bb.ax
  %i.jq = load i32, ptr %i.jm, align 4
  store i32 %i.jq, ptr %i.jl, align 4
  br label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i.i

_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i.i:        ; preds = %bb.az, %bb.ay, %bb.ax
  %i.jr = load ptr, ptr %i.ja, align 8            ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.a, i64 1048848
  %.not.i4.i.i.i = icmp eq ptr %i.jr, %i.js
  br i1 %.not.i4.i.i.i, label %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i.i, label %bb.ba

bb.ba:                                            ; preds = %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i.i
  tail call void @_ZN4absl13base_internal13LowLevelAlloc4FreeEPv(ptr noundef %i.jr) #12
  br label %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i.i

_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i.i: ; preds = %bb.ba, %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i.i
  store ptr %i.jl, ptr %i.ja, align 8
  %.val37.pre.i = load i32, ptr %i.ge, align 8
  %.val35.pre.i = load i32, ptr %i.ah, align 8
  br label %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE6resizeEj.exit.i

_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE6resizeEj.exit.i: ; preds = %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i.i, %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE5clearEv.exit._ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE6resizeEj.exit_crit_edge.i
  %.val31.i = phi ptr [ %.val31.pre.i, %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE5clearEv.exit._ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE6resizeEj.exit_crit_edge.i ], [ %i.jl, %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i.i ] ; 2 uses
  %.val35.i = phi i32 [ %.val27.i, %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE5clearEv.exit._ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE6resizeEj.exit_crit_edge.i ], [ %.val35.pre.i, %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i.i ] ; 2 uses
  %.val37.i = phi i32 [ %.val28.i97, %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE5clearEv.exit._ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE6resizeEj.exit_crit_edge.i ], [ %.val37.pre.i, %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i.i ] ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.a, i64 1048880
  store i32 %i.jb, ptr %i.jt, align 8
  %.val33.i = load ptr, ptr %i.gb, align 8        ; 3 uses
  %i.ju = zext i32 %.val37.i to i64
  %.idx.i = shl nuw nsw i64 %i.ju, 2
  %i.jv = getelementptr inbounds nuw i8, ptr %.val33.i, i64 %.idx.i ; 2 uses
  %.val32.i = load ptr, ptr %i.ae, align 8        ; 3 uses
  %i.jw = zext i32 %.val35.i to i64
  %.idx47.i = shl nuw nsw i64 %i.jw, 2
  %i.jx = getelementptr inbounds nuw i8, ptr %.val32.i, i64 %.idx47.i ; 2 uses
  %i.jy = icmp ne i32 %.val37.i, 0
  %i.jz = icmp ne i32 %.val35.i, 0
  %i.ka = and i1 %i.jz, %i.jy
  br i1 %i.ka, label %.lr.ph.i.i46.i, label %._crit_edge.i.i.i

.lr.ph.i.i46.i:                                   ; preds = %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE6resizeEj.exit.i, %.lr.ph.i.i46.i
  %.024.i.i.i = phi ptr [ %i.ke, %.lr.ph.i.i46.i ], [ %.val31.i, %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE6resizeEj.exit.i ] ; 2 uses
  %.01823.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i46.i ], [ %.val33.i, %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE6resizeEj.exit.i ] ; 2 uses
  %.01922.i.i.i = phi ptr [ %.120.i.i.i, %.lr.ph.i.i46.i ], [ %.val32.i, %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE6resizeEj.exit.i ] ; 2 uses
  %i.kb = load i32, ptr %.01922.i.i.i, align 4    ; 2 uses
  %i.kc = load i32, ptr %.01823.i.i.i, align 4    ; 2 uses
  %i.kd = icmp slt i32 %i.kb, %i.kc               ; 2 uses
  %.sink.i.i.i = tail call i32 @llvm.smin.i32(i32 %i.kb, i32 %i.kc)
  %.120.idx.i.i.i = select i1 %i.kd, i64 4, i64 0
  %.120.i.i.i = getelementptr inbounds nuw i8, ptr %.01922.i.i.i, i64 %.120.idx.i.i.i ; 3 uses
  %.1.idx.i.i.i = select i1 %i.kd, i64 0, i64 4
  %.1.i.i.i = getelementptr inbounds nuw i8, ptr %.01823.i.i.i, i64 %.1.idx.i.i.i ; 3 uses
  store i32 %.sink.i.i.i, ptr %.024.i.i.i, align 4
  %i.ke = getelementptr inbounds nuw i8, ptr %.024.i.i.i, i64 4 ; 2 uses
  %i.kf = icmp ne ptr %.1.i.i.i, %i.jv
  %i.kg = icmp ne ptr %.120.i.i.i, %i.jx
  %i.kh = select i1 %i.kf, i1 %i.kg, i1 false
  br i1 %i.kh, label %.lr.ph.i.i46.i, label %._crit_edge.i.i.i, !llvm.loop !26

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i46.i, %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE6resizeEj.exit.i
  %.019.lcssa.i.i.i = phi ptr [ %.val32.i, %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE6resizeEj.exit.i ], [ %.120.i.i.i, %.lr.ph.i.i46.i ] ; 3 uses
  %.018.lcssa.i.i.i = phi ptr [ %.val33.i, %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE6resizeEj.exit.i ], [ %.1.i.i.i, %.lr.ph.i.i46.i ] ; 3 uses
end_hunk_2
begin_hunk_3_@_ZN4absl24synchronization_internal11GraphCycles10InsertEdgeENS0_7GraphIdES2_:bb.a
  br i1 %i.kl, label %bb.bb, label %bb.bc, !prof !27

bb.bb:                                            ; preds = %._crit_edge.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.0.lcssa.i.i.i, ptr align 4 %.018.lcssa.i.i.i, i64 %i.kk, i1 false)
  br label %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit.i.i.i

bb.bc:                                            ; preds = %._crit_edge.i.i.i
  %i.km = icmp eq i64 %i.kk, 4
  br i1 %i.km, label %bb.bd, label %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit.i.i.i

bb.bd:                                            ; preds = %bb.bc
  %i.kn = load i32, ptr %.018.lcssa.i.i.i, align 4
  store i32 %i.kn, ptr %.0.lcssa.i.i.i, align 4
  br label %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit.i.i.i

_ZSt4copyIPiS0_ET0_T_S2_S1_.exit.i.i.i:           ; preds = %bb.bd, %bb.bc, %bb.bb
  %i.ko = getelementptr inbounds i8, ptr %.0.lcssa.i.i.i, i64 %i.kk ; 2 uses
  %i.kp = ptrtoint ptr %i.jx to i64
  %i.kq = ptrtoint ptr %.019.lcssa.i.i.i to i64
  %i.kr = sub i64 %i.kp, %i.kq                    ; 3 uses
  %i.ks = icmp sgt i64 %i.kr, 4
  br i1 %i.ks, label %bb.be, label %bb.bf, !prof !27

bb.be:                                            ; preds = %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ko, ptr align 4 %.019.lcssa.i.i.i, i64 %i.kr, i1 false)
  br label %_ZSt5mergeIPiS0_S0_ET1_T_S2_T0_S3_S1_.exit.i

bb.bf:                                            ; preds = %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit.i.i.i
  %i.kt = icmp eq i64 %i.kr, 4
  br i1 %i.kt, label %bb.bg, label %_ZSt5mergeIPiS0_S0_ET1_T_S2_T0_S3_S1_.exit.i

bb.bg:                                            ; preds = %bb.bf
  %i.ku = load i32, ptr %.019.lcssa.i.i.i, align 4
  store i32 %i.ku, ptr %i.ko, align 4
  br label %_ZSt5mergeIPiS0_S0_ET1_T_S2_T0_S3_S1_.exit.i

_ZSt5mergeIPiS0_S0_ET1_T_S2_T0_S3_S1_.exit.i:     ; preds = %bb.bg, %bb.bf, %bb.be
  %.val2649.i = load i32, ptr %i.iy, align 8
  %.not.i98 = icmp eq i32 %.val2649.i, 0
  br i1 %.not.i98, label %_ZN4absl24synchronization_internalL7ReorderEPNS0_11GraphCycles3RepE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt5mergeIPiS0_S0_ET1_T_S2_T0_S3_S1_.exit.i, %.lr.ph.i
  %indvars.iv.i99 = phi i64 [ %indvars.iv.next.i102, %.lr.ph.i ], [ 0, %_ZSt5mergeIPiS0_S0_ET1_T_S2_T0_S3_S1_.exit.i ] ; 3 uses
  %.val30.i100 = load ptr, ptr %i.ja, align 8
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %.val30.i100, i64 %indvars.iv.i99
  %i.kw = load i32, ptr %i.kv, align 4
  %.val29.i = load ptr, ptr %i.iv, align 8
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %.val29.i, i64 %indvars.iv.i99
  %i.ky = load i32, ptr %i.kx, align 4
  %.val.i101 = load ptr, ptr %i.a, align 8
  %i.kz = zext i32 %i.ky to i64
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %.val.i101, i64 %i.kz
  %i.lb = load ptr, ptr %i.la, align 8
  store i32 %i.kw, ptr %i.lb, align 8
  %indvars.iv.next.i102 = add nuw nsw i64 %indvars.iv.i99, 1 ; 2 uses
  %.val26.i = load i32, ptr %i.iy, align 8
  %i.lc = zext i32 %.val26.i to i64
  %i.ld = icmp samesign ult i64 %indvars.iv.next.i102, %i.lc
  br i1 %i.ld, label %.lr.ph.i, label %_ZN4absl24synchronization_internalL7ReorderEPNS0_11GraphCycles3RepE.exit, !llvm.loop !28

_ZN4absl24synchronization_internalL7ReorderEPNS0_11GraphCycles3RepE.exit: ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.lr.ph.i, %_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit70, %_ZSt5mergeIPiS0_S0_ET1_T_S2_T0_S3_S1_.exit.i, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.b ], [ true, %bb.a ], [ true, %bb.c ], [ false, %_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSet5eraseEi.exit70 ], [ true, %bb.d ], [ true, %_ZSt5mergeIPiS0_S0_ET1_T_S2_T0_S3_S1_.exit.i ], [ true, %.lr.ph.i ], [ false, %.lr.ph ], [ false, %.lr.ph.prol.loopexit ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 -2147483647, -2147483648) i32 @_ZNK4absl24synchronization_internal11GraphCycles8FindPathENS0_7GraphIdES2_iPS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i64 %1, i64 %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.absl::synchronization_internal::(anonymous namespace)::NodeSet", align 8 ; 10 uses
  %i.a = load ptr, ptr %0, align 8                ; 7 uses
  %.val45 = load ptr, ptr %i.a, align 8           ; 2 uses
  %i.b = and i64 %1, 4294967295
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %.val45, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4
  %i.g = lshr i64 %1, 32
  %i.h = trunc nuw i64 %i.g to i32
  %i.i = icmp ne i32 %i.f, %i.h
  %i.j = icmp eq ptr %i.d, null
  %i.k = or i1 %i.j, %i.i
  br i1 %i.k, label %bb.z, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = and i64 %2, 4294967295
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.val45, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.p = load i32, ptr %i.o, align 4
  %i.q = lshr i64 %2, 32
  %i.r = trunc nuw i64 %i.q to i32
  %i.s = icmp ne i32 %i.p, %i.r
  %i.t = icmp eq ptr %i.n, null
  %i.u = or i1 %i.t, %i.s
  br i1 %i.u, label %bb.z, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 44
  store ptr %i.v, ptr %5, align 8
  store i32 8, ptr %i.x, align 4
  store i32 8, ptr %i.w, align 8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %bb.c
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.lr.ph.i.i.i ], [ 0, %bb.c ] ; 2 uses
  %i.y = load ptr, ptr %5, align 8
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.i.i.i
  store i32 -1, ptr %i.z, align 4
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %.val.i.i.i = load i32, ptr %i.w, align 8
  %i.aa = zext i32 %.val.i.i.i to i64
  %i.ab = icmp samesign ult i64 %indvars.iv.next.i.i.i, %i.aa
  br i1 %i.ab, label %.lr.ph.i.i.i, label %_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSetC2Ev.exit, !llvm.loop !11

_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSetC2Ev.exit: ; preds = %.lr.ph.i.i.i
  %i.ac = trunc i64 %1 to i32
  %i.ad = trunc i64 %2 to i32
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i32 0, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 1048888 ; 11 uses
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 1048896 ; 5 uses
  %.not.i.i = icmp eq ptr %i.ag, %i.ah
  br i1 %.not.i.i, label %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSetC2Ev.exit
  call void @_ZN4absl13base_internal13LowLevelAlloc4FreeEPv(ptr noundef %i.ag) #12
  br label %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit

_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit: ; preds = %_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSetC2Ev.exit, %bb.d
  store ptr %i.ah, ptr %i.af, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 1048928 ; 13 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 1048932 ; 5 uses
  store i32 8, ptr %i.aj, align 4
  store i32 %i.ac, ptr %i.ah, align 8
  store i32 1, ptr %i.ai, align 8
  br label %bb.e

thread-pre-split.loopexit:                        ; preds = %bb.x, %bb.o, %.preheader
  %.val38.pr.pre = load i32, ptr %i.ai, align 8
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %thread-pre-split.loopexit, %bb.f
  %.val38.pr = phi i32 [ %i.al, %bb.f ], [ %.val38.pr.pre, %thread-pre-split.loopexit ] ; 2 uses
  %.135.ph = phi i32 [ %i.aq, %bb.f ], [ %i.be, %thread-pre-split.loopexit ]
  %i.ak = icmp eq i32 %.val38.pr, 0
  br i1 %i.ak, label %_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS3_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit, %thread-pre-split
  %.03497 = phi i32 [ 0, %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit ], [ %.135.ph, %thread-pre-split ] ; 4 uses
  %.val3896 = phi i32 [ 1, %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit ], [ %.val38.pr, %thread-pre-split ]
  %.val39 = load ptr, ptr %i.af, align 8
  %i.al = add i32 %.val3896, -1                   ; 4 uses
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %.val39, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4            ; 4 uses
  store i32 %i.al, ptr %i.ai, align 8
  %i.ap = icmp slt i32 %i.ao, 0
  br i1 %i.ap, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aq = add nsw i32 %.03497, -1
  br label %thread-pre-split, !llvm.loop !29

bb.g:                                             ; preds = %bb.e
  %i.ar = icmp slt i32 %.03497, %3
  br i1 %i.ar, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.as = load ptr, ptr %0, align 8
  %.val37 = load ptr, ptr %i.as, align 8
  %i.at = zext nneg i32 %i.ao to i64              ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %.val37, i64 %i.at
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.ax = load i32, ptr %i.aw, align 4
  %i.ay = zext i32 %i.ax to i64
  %i.az = shl nuw i64 %i.ay, 32
  %i.ba = or disjoint i64 %i.az, %i.at
  %i.bb = sext i32 %.03497 to i64
  %i.bc = getelementptr inbounds [8 x i8], ptr %4, i64 %i.bb
  store i64 %i.ba, ptr %i.bc, align 8
  %.pr = load i32, ptr %i.ai, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bd = phi i32 [ %.pr, %bb.h ], [ %i.al, %bb.g ] ; 5 uses
  %i.be = add nsw i32 %.03497, 1                  ; 2 uses
  %i.bf = load i32, ptr %i.aj, align 4
  %i.bg = icmp eq i32 %i.bd, %i.bf
  br i1 %i.bg, label %bb.j, label %._crit_edge.i46

._crit_edge.i46:                                  ; preds = %bb.i
  %.pre.i47 = load ptr, ptr %i.af, align 8
  br label %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit57

bb.j:                                             ; preds = %bb.i
  %6 = add i32 %i.bd, 1
  %.not.i48 = icmp eq i32 %i.bd, -1
  br i1 %.not.i48, label %bb.k, label %.lr.ph.i.i49

.lr.ph.i.i49:                                     ; preds = %bb.j, %.lr.ph.i.i49
  %i.bh = phi i32 [ %i.bi, %.lr.ph.i.i49 ], [ %i.bd, %bb.j ]
  %i.bi = shl i32 %i.bh, 1                        ; 4 uses
  %7 = icmp ult i32 %i.bi, %6
  br i1 %7, label %.lr.ph.i.i49, label %._crit_edge.i.i50, !llvm.loop !17

._crit_edge.i.i50:                                ; preds = %.lr.ph.i.i49
  store i32 %i.bi, ptr %i.aj, align 4
  %i.bj = zext i32 %i.bi to i64
  %i.bk = shl nuw nsw i64 %i.bj, 2
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge.i.i50, %bb.j
  %.lcssa.i.i51 = phi i64 [ %i.bk, %._crit_edge.i.i50 ], [ 17179869180, %bb.j ]
  %i.bl = load ptr, ptr @_ZN4absl24synchronization_internal12_GLOBAL__N_15arenaE, align 8
  %i.bm = call noundef ptr @_ZN4absl13base_internal13LowLevelAlloc14AllocWithArenaEmPNS1_5ArenaE(i64 noundef %.lcssa.i.i51, ptr noundef %i.bl) #12 ; 4 uses
  %i.bn = load ptr, ptr %i.af, align 8            ; 2 uses
  %i.bo = load i32, ptr %i.ai, align 8            ; 2 uses
  switch i32 %i.bo, label %bb.l [
    i32 0, label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i52
    i32 1, label %bb.m
  ], !prof !7

bb.l:                                             ; preds = %bb.k
  %i.bp = zext i32 %i.bo to i64
  %.idx.i.i.i.i56 = shl nuw nsw i64 %i.bp, 2
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.bm, ptr align 4 %i.bn, i64 %.idx.i.i.i.i56, i1 false)
  br label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i52

bb.m:                                             ; preds = %bb.k
  %i.bq = load i32, ptr %i.bn, align 4
  store i32 %i.bq, ptr %i.bm, align 4
  br label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i52

_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i52:        ; preds = %bb.m, %bb.l, %bb.k
  %i.br = load ptr, ptr %i.af, align 8            ; 2 uses
  %.not.i4.i.i53 = icmp eq ptr %i.br, %i.ah
  br i1 %.not.i4.i.i53, label %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i54, label %bb.n

bb.n:                                             ; preds = %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i52
  call void @_ZN4absl13base_internal13LowLevelAlloc4FreeEPv(ptr noundef %i.br) #12
  br label %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i54

_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i54: ; preds = %bb.n, %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i52
  store ptr %i.bm, ptr %i.af, align 8
  %.pre1.i55 = load i32, ptr %i.ai, align 8
  br label %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit57

_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit57: ; preds = %._crit_edge.i46, %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i54
  %i.bs = phi i32 [ %i.bd, %._crit_edge.i46 ], [ %.pre1.i55, %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i54 ]
  %i.bt = phi ptr [ %.pre.i47, %._crit_edge.i46 ], [ %i.bm, %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i54 ]
  %i.bu = zext i32 %i.bs to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.bu
  store i32 -1, ptr %i.bv, align 4
  %i.bw = load i32, ptr %i.ai, align 8
  %i.bx = add i32 %i.bw, 1
  store i32 %i.bx, ptr %i.ai, align 8
  %i.by = icmp eq i32 %i.ao, %i.ad
  br i1 %i.by, label %_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS3_.exit, label %.preheader

.preheader:                                       ; preds = %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit57
  %i.bz = zext nneg i32 %i.ao to i64              ; 2 uses
  %.val121 = load ptr, ptr %i.a, align 8
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %.val121, i64 %i.bz
  %i.cb = load ptr, ptr %i.ca, align 8            ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 120
  %.val.i122 = load i32, ptr %i.cc, align 8       ; 2 uses
  %exitcond.not118124 = icmp eq i32 %.val.i122, 0
  br i1 %exitcond.not118124, label %thread-pre-split.loopexit, label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %.preheader
  %wide.trip.count123 = zext i32 %.val.i122 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %bb.x
  %wide.trip.count125 = phi i64 [ %wide.trip.count123, %.lr.ph.lr.ph ], [ %wide.trip.count, %bb.x ]
  %i.cd = phi i64 [ 0, %.lr.ph.lr.ph ], [ %indvars.iv.next, %bb.x ]
  %.pn = phi ptr [ %i.cb, %.lr.ph.lr.ph ], [ %i.df, %bb.x ]
  %i.ce = getelementptr inbounds nuw i8, ptr %.pn, i64 80
  %.val10.i = load ptr, ptr %i.ce, align 8
  br label %bb.p

bb.o:                                             ; preds = %bb.p
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count125
  br i1 %exitcond.not, label %thread-pre-split.loopexit, label %bb.p

bb.p:                                             ; preds = %.lr.ph, %bb.o
  %indvars.iv119 = phi i64 [ %i.cd, %.lr.ph ], [ %indvars.iv.next, %bb.o ] ; 2 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %.val10.i, i64 %indvars.iv119
  %i.cg = load i32, ptr %i.cf, align 4            ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv119, 1 ; 5 uses
  %i.ch = icmp sgt i32 %i.cg, -1
  br i1 %i.ch, label %bb.q, label %bb.o

bb.q:                                             ; preds = %bb.p
  %i.ci = trunc nuw i64 %indvars.iv.next to i32
  %i.cj = call fastcc noundef zeroext i1 @_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSet6insertEi(ptr noundef nonnull align 8 dereferenceable(52) %5, i32 noundef %i.cg)
  br i1 %i.cj, label %bb.r, label %bb.x

bb.r:                                             ; preds = %bb.q
  %i.ck = load i32, ptr %i.ai, align 8            ; 5 uses
  %i.cl = load i32, ptr %i.aj, align 4
  %i.cm = icmp eq i32 %i.ck, %i.cl
  br i1 %i.cm, label %bb.s, label %._crit_edge.i59

._crit_edge.i59:                                  ; preds = %bb.r
  %.pre.i60 = load ptr, ptr %i.af, align 8
  br label %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit70

bb.s:                                             ; preds = %bb.r
  %8 = add i32 %i.ck, 1
  %.not.i61 = icmp eq i32 %i.ck, -1
  br i1 %.not.i61, label %bb.t, label %.lr.ph.i.i62

.lr.ph.i.i62:                                     ; preds = %bb.s, %.lr.ph.i.i62
  %i.cn = phi i32 [ %i.co, %.lr.ph.i.i62 ], [ %i.ck, %bb.s ]
  %i.co = shl i32 %i.cn, 1                        ; 4 uses
  %9 = icmp ult i32 %i.co, %8
  br i1 %9, label %.lr.ph.i.i62, label %._crit_edge.i.i63, !llvm.loop !17

._crit_edge.i.i63:                                ; preds = %.lr.ph.i.i62
  store i32 %i.co, ptr %i.aj, align 4
  %i.cp = zext i32 %i.co to i64
  %i.cq = shl nuw nsw i64 %i.cp, 2
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge.i.i63, %bb.s
  %.lcssa.i.i64 = phi i64 [ %i.cq, %._crit_edge.i.i63 ], [ 17179869180, %bb.s ]
  %i.cr = load ptr, ptr @_ZN4absl24synchronization_internal12_GLOBAL__N_15arenaE, align 8
  %i.cs = call noundef ptr @_ZN4absl13base_internal13LowLevelAlloc14AllocWithArenaEmPNS1_5ArenaE(i64 noundef %.lcssa.i.i64, ptr noundef %i.cr) #12 ; 4 uses
  %i.ct = load ptr, ptr %i.af, align 8            ; 2 uses
  %i.cu = load i32, ptr %i.ai, align 8            ; 2 uses
  switch i32 %i.cu, label %bb.u [
    i32 0, label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i65
    i32 1, label %bb.v
  ], !prof !7

bb.u:                                             ; preds = %bb.t
  %i.cv = zext i32 %i.cu to i64
  %.idx.i.i.i.i69 = shl nuw nsw i64 %i.cv, 2
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.cs, ptr align 4 %i.ct, i64 %.idx.i.i.i.i69, i1 false)
  br label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i65

bb.v:                                             ; preds = %bb.t
  %i.cw = load i32, ptr %i.ct, align 4
  store i32 %i.cw, ptr %i.cs, align 4
  br label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i65

_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i65:        ; preds = %bb.v, %bb.u, %bb.t
  %i.cx = load ptr, ptr %i.af, align 8            ; 2 uses
  %.not.i4.i.i66 = icmp eq ptr %i.cx, %i.ah
  br i1 %.not.i4.i.i66, label %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i67, label %bb.w

bb.w:                                             ; preds = %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i65
  call void @_ZN4absl13base_internal13LowLevelAlloc4FreeEPv(ptr noundef %i.cx) #12
  br label %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i67

_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i67: ; preds = %bb.w, %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i65
  store ptr %i.cs, ptr %i.af, align 8
  %.pre1.i68 = load i32, ptr %i.ai, align 8
  br label %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit70

_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit70: ; preds = %._crit_edge.i59, %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i67
  %i.cy = phi i32 [ %i.ck, %._crit_edge.i59 ], [ %.pre1.i68, %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i67 ]
  %i.cz = phi ptr [ %.pre.i60, %._crit_edge.i59 ], [ %i.cs, %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i67 ]
  %i.da = zext i32 %i.cy to i64
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.da
  store i32 %i.cg, ptr %i.db, align 4
  %i.dc = load i32, ptr %i.ai, align 8
  %i.dd = add i32 %i.dc, 1
  store i32 %i.dd, ptr %i.ai, align 8
  br label %bb.x

bb.x:                                             ; preds = %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit70, %bb.q
  %.val = load ptr, ptr %i.a, align 8
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.bz
  %i.df = load ptr, ptr %i.de, align 8            ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 120
  %.val.i = load i32, ptr %i.dg, align 8
  %umax = call i32 @llvm.umax.i32(i32 %i.ci, i32 %.val.i)
  %wide.trip.count = zext i32 %umax to i64        ; 2 uses
  %exitcond.not118 = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not118, label %thread-pre-split.loopexit, label %.lr.ph, !llvm.loop !30

_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS3_.exit: ; preds = %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit57, %thread-pre-split
  %.2 = phi i32 [ 0, %thread-pre-split ], [ %i.be, %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit57 ]
  %i.dh = load ptr, ptr %5, align 8               ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.dh, %i.v
  br i1 %.not.i.i.i, label %_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSetD2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS3_.exit
  call void @_ZN4absl13base_internal13LowLevelAlloc4FreeEPv(ptr noundef %i.dh) #12
  br label %_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSetD2Ev.exit

_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSetD2Ev.exit: ; preds = %_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS3_.exit, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %bb.z

bb.z:                                             ; preds = %bb.a, %bb.b, %_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSetD2Ev.exit
  %.3 = phi i32 [ %.2, %_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSetD2Ev.exit ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4absl24synchronization_internal11GraphCycles11IsReachableENS0_7GraphIdES2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i64 %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZNK4absl24synchronization_internal11GraphCycles8FindPathENS0_7GraphIdES2_iPS2_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 %1, i64 %2, i32 noundef 0, ptr noundef null)
  %i.b = icmp sgt i32 %i.a, 0
  ret i1 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4absl24synchronization_internal11GraphCycles16UpdateStackTraceENS0_7GraphIdEiPFiPPviE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i64 %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %.val = load ptr, ptr %i.a, align 8
  %i.b = and i64 %1, 4294967295
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8              ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4
  %i.g = lshr i64 %1, 32
  %i.h = trunc nuw i64 %i.g to i32
  %i.i = icmp ne i32 %i.f, %i.h
  %i.j = icmp eq ptr %i.d, null
  %i.k = or i1 %i.j, %i.i
  br i1 %i.k, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 136 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8
  %.not = icmp slt i32 %i.m, %2
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %i.o = tail call noundef i32 %3(ptr noundef nonnull %i.n, i32 noundef 40) #12
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 140
  store i32 %i.o, ptr %i.p, align 4
  store i32 %2, ptr %i.l, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZN4absl24synchronization_internal11GraphCycles13GetStackTraceENS0_7GraphIdEPPPv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i64 %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %.val = load ptr, ptr %i.a, align 8
  %i.b = and i64 %1, 4294967295
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8              ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4
  %i.g = lshr i64 %1, 32
  %i.h = trunc nuw i64 %i.g to i32
  %i.i = icmp ne i32 %i.f, %i.h
  %i.j = icmp eq ptr %i.d, null
  %i.k = or i1 %i.j, %i.i
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %2, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  store ptr %i.l, ptr %2, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 140
  %i.n = load i32, ptr %i.m, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ %i.n, %bb.c ]
  ret i32 %.0
}

declare noundef ptr @_ZN4absl13base_internal13LowLevelAlloc8NewArenaEj(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold
declare void @_ZN4absl13base_internal8SpinLock8SlowLockEv(ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #7

; Function Attrs: cold
declare void @_ZN4absl13base_internal8SpinLock10SlowUnlockEj(ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4absl24synchronization_internalL4SortERKNS0_12_GLOBAL__N_13VecIPNS1_4NodeEEEPNS2_IiEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, ptr %.0.val, i32 %.40.val) unnamed_addr #8 {
bb.a:
  %i.a = zext i32 %.40.val to i64                 ; 2 uses
  %.idx = shl nuw nsw i64 %i.a, 2
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 %.idx ; 3 uses
  %.not.i.i = icmp eq i32 %.40.val, 0
  br i1 %.not.i.i, label %_ZSt4sortIPiZN4absl24synchronization_internalL4SortERKNS2_12_GLOBAL__N_13VecIPNS3_4NodeEEEPNS4_IiEEE6ByRankEvT_SD_T0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %.0.val to i64
  %i.d = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.a, i1 true)
  %i.e = shl nuw nsw i64 %i.d, 1
  %i.f = xor i64 %i.e, 126
  tail call fastcc void @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl24synchronization_internalL4SortERKNS5_12_GLOBAL__N_13VecIPNS6_4NodeEEEPNS7_IiEEE6ByRankEEEvT_SH_T0_T1_(ptr noundef %.0.val, ptr noundef nonnull %i.b, i64 noundef %i.f, ptr nonnull readonly %0)
  %i.g = icmp ugt i32 %.40.val, 16
  %scevgep.i.i.i = getelementptr i8, ptr %.0.val, i64 4 ; 2 uses
  br i1 %i.g, label %.preheader.i, label %bb.g

.preheader.i:                                     ; preds = %bb.b, %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i.i.i.i
  %.021.i.idx.i.i.i = phi i64 [ %.021.i.add.i.i.i, %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i.i.i.i ], [ 4, %bb.b ] ; 4 uses
  %.pn20.i.i.i.i = phi ptr [ %.021.i.ptr.i.i.i, %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i.i.i.i ], [ %.0.val, %bb.b ] ; 3 uses
  %.021.i.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 %.021.i.idx.i.i.i ; 4 uses
  %.0.val.i.i.i.i = load i32, ptr %.021.i.ptr.i.i.i, align 4 ; 2 uses
  %.val17.i.i.i.i = load i32, ptr %.0.val, align 4 ; 2 uses
  %.val.val.i.i.i.i = load ptr, ptr %0, align 8   ; 3 uses
  %i.h = zext i32 %.0.val.i.i.i.i to i64          ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i.i.i.i, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8
end_hunk_3
begin_hunk_4_@_ZN4absl24synchronization_internalL4SortERKNS0_12_GLOBAL__N_13VecIPNS1_4NodeEEEPNS2_IiEE:bb.a
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = load i32, ptr %i.u, align 8
  %i.w = icmp slt i32 %i.k, %i.v
  br i1 %i.w, label %.lr.ph.i.i.i.i.i, label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f, %.lr.ph.i.i.i.i.i
  %.0.val17.i.i.i.i.i = phi i32 [ %.0.val.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0.val13.i.i.i.i.i, %bb.f ]
  %.016.i.i.i.i.i = phi ptr [ %.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.pn20.i.i.i.i, %bb.f ] ; 3 uses
  %.0915.i.i.i.i.i = phi ptr [ %.016.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.021.i.ptr.i.i.i, %bb.f ]
  store i32 %.0.val17.i.i.i.i.i, ptr %.0915.i.i.i.i.i, align 4
  %.0.i.i.i.i.i = getelementptr inbounds i8, ptr %.016.i.i.i.i.i, i64 -4 ; 2 uses
  %.0.val.i.i.i.i.i = load i32, ptr %.0.i.i.i.i.i, align 4 ; 2 uses
  %.val.val.i.i.i.i.i = load ptr, ptr %0, align 8 ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i.i.i.i.i, i64 %i.h
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = load i32, ptr %i.y, align 8
  %i.aa = zext i32 %.0.val.i.i.i.i.i to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i.i.i.i.i, i64 %i.aa
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = load i32, ptr %i.ac, align 8
  %i.ae = icmp slt i32 %i.z, %i.ad
  br i1 %i.ae, label %.lr.ph.i.i.i.i.i, label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i.i.i.i, !llvm.loop !31

_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.f, %bb.e, %bb.d
  %.sink.i.i.i.i = phi ptr [ %.0.val, %bb.e ], [ %.0.val, %bb.d ], [ %.021.i.ptr.i.i.i, %bb.f ], [ %.016.i.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  store i32 %.0.val.i.i.i.i, ptr %.sink.i.i.i.i, align 4
  %.021.i.add.i.i.i = add nuw nsw i64 %.021.i.idx.i.i.i, 4 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.021.i.add.i.i.i, 64
  br i1 %.not.i.i.i.i, label %_ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl24synchronization_internalL4SortERKNS5_12_GLOBAL__N_13VecIPNS6_4NodeEEEPNS7_IiEEE6ByRankEEEvT_SH_T0_.exit.i.i.i, label %.preheader.i, !llvm.loop !32

_ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl24synchronization_internalL4SortERKNS5_12_GLOBAL__N_13VecIPNS6_4NodeEEEPNS7_IiEEE6ByRankEEEvT_SH_T0_.exit.i.i.i: ; preds = %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.0.val, i64 64
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl24synchronization_internalL4SortERKNS5_12_GLOBAL__N_13VecIPNS6_4NodeEEEPNS7_IiEEE6ByRankEEEvT_SH_T0_.exit.i.i.i, %_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_comp_iterIZN4absl24synchronization_internalL4SortERKNS5_12_GLOBAL__N_13VecIPNS6_4NodeEEEPNS7_IiEEE6ByRankEEEvT_T0_.exit.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.ay, %_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_comp_iterIZN4absl24synchronization_internalL4SortERKNS5_12_GLOBAL__N_13VecIPNS6_4NodeEEEPNS7_IiEEE6ByRankEEEvT_T0_.exit.i.i.i.i ], [ %i.af, %_ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl24synchronization_internalL4SortERKNS5_12_GLOBAL__N_13VecIPNS6_4NodeEEEPNS7_IiEEE6ByRankEEEvT_SH_T0_.exit.i.i.i ] ; 5 uses
  %i.ag = load i32, ptr %.08.i.i.i.i, align 4     ; 2 uses
  %i.ah = zext i32 %i.ag to i64                   ; 2 uses
  %.012.i.i.i.i.i = getelementptr inbounds i8, ptr %.08.i.i.i.i, i64 -4 ; 2 uses
  %.0.val13.i.i11.i.i.i = load i32, ptr %.012.i.i.i.i.i, align 4 ; 2 uses
  %.val.val14.i.i.i.i.i = load ptr, ptr %0, align 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %.val.val14.i.i.i.i.i, i64 %i.ah
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = load i32, ptr %i.aj, align 8
  %i.al = zext i32 %.0.val13.i.i11.i.i.i to i64
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.val.val14.i.i.i.i.i, i64 %i.al
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = load i32, ptr %i.an, align 8
  %i.ap = icmp slt i32 %i.ak, %i.ao
  br i1 %i.ap, label %.lr.ph.i.i13.i.i.i, label %_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_comp_iterIZN4absl24synchronization_internalL4SortERKNS5_12_GLOBAL__N_13VecIPNS6_4NodeEEEPNS7_IiEEE6ByRankEEEvT_T0_.exit.i.i.i.i

.lr.ph.i.i13.i.i.i:                               ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i13.i.i.i
  %.0.val17.i.i14.i.i.i = phi i32 [ %.0.val.i.i18.i.i.i, %.lr.ph.i.i13.i.i.i ], [ %.0.val13.i.i11.i.i.i, %.lr.ph.i.i.i.i ]
  %.016.i.i15.i.i.i = phi ptr [ %.0.i.i17.i.i.i, %.lr.ph.i.i13.i.i.i ], [ %.012.i.i.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  %.0915.i.i16.i.i.i = phi ptr [ %.016.i.i15.i.i.i, %.lr.ph.i.i13.i.i.i ], [ %.08.i.i.i.i, %.lr.ph.i.i.i.i ]
  store i32 %.0.val17.i.i14.i.i.i, ptr %.0915.i.i16.i.i.i, align 4
  %.0.i.i17.i.i.i = getelementptr inbounds i8, ptr %.016.i.i15.i.i.i, i64 -4 ; 2 uses
  %.0.val.i.i18.i.i.i = load i32, ptr %.0.i.i17.i.i.i, align 4 ; 2 uses
  %.val.val.i.i19.i.i.i = load ptr, ptr %0, align 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i.i19.i.i.i, i64 %i.ah
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = load i32, ptr %i.ar, align 8
  %i.at = zext i32 %.0.val.i.i18.i.i.i to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i.i19.i.i.i, i64 %i.at
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = load i32, ptr %i.av, align 8
  %i.ax = icmp slt i32 %i.as, %i.aw
  br i1 %i.ax, label %.lr.ph.i.i13.i.i.i, label %_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_comp_iterIZN4absl24synchronization_internalL4SortERKNS5_12_GLOBAL__N_13VecIPNS6_4NodeEEEPNS7_IiEEE6ByRankEEEvT_T0_.exit.i.i.i.i, !llvm.loop !31

_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_comp_iterIZN4absl24synchronization_internalL4SortERKNS5_12_GLOBAL__N_13VecIPNS6_4NodeEEEPNS7_IiEEE6ByRankEEEvT_T0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i13.i.i.i, %.lr.ph.i.i.i.i
  %.09.lcssa.i.i.i.i.i = phi ptr [ %.08.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.016.i.i15.i.i.i, %.lr.ph.i.i13.i.i.i ]
  store i32 %i.ag, ptr %.09.lcssa.i.i.i.i.i, align 4
  %i.ay = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 4 ; 2 uses
  %.not.i12.i.i.i = icmp eq ptr %i.ay, %i.b
  br i1 %.not.i12.i.i.i, label %_ZSt4sortIPiZN4absl24synchronization_internalL4SortERKNS2_12_GLOBAL__N_13VecIPNS3_4NodeEEEPNS4_IiEEE6ByRankEvT_SD_T0_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !33

bb.g:                                             ; preds = %bb.b
  %.not19.i.i.i.i = icmp eq i32 %.40.val, 1
  br i1 %.not19.i.i.i.i, label %_ZSt4sortIPiZN4absl24synchronization_internalL4SortERKNS2_12_GLOBAL__N_13VecIPNS3_4NodeEEEPNS4_IiEEE6ByRankEvT_SD_T0_.exit, label %.lr.ph.i21.i.i.i

.lr.ph.i21.i.i.i:                                 ; preds = %bb.g, %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i28.i.i.i
  %.021.i22.i.i.i = phi ptr [ %.0.i30.i.i.i, %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i28.i.i.i ], [ %scevgep.i.i.i, %bb.g ] ; 6 uses
  %.pn20.i23.i.i.i = phi ptr [ %.021.i22.i.i.i, %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i28.i.i.i ], [ %.0.val, %bb.g ] ; 4 uses
  %.0.val.i24.i.i.i = load i32, ptr %.021.i22.i.i.i, align 4 ; 2 uses
  %.val17.i25.i.i.i = load i32, ptr %.0.val, align 4 ; 2 uses
  %.val.val.i26.i.i.i = load ptr, ptr %0, align 8 ; 3 uses
  %i.az = zext i32 %.0.val.i24.i.i.i to i64       ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i26.i.i.i, i64 %i.az
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = load i32, ptr %i.bb, align 8            ; 2 uses
  %i.bd = zext i32 %.val17.i25.i.i.i to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i26.i.i.i, i64 %i.bd
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = load i32, ptr %i.bf, align 8
  %i.bh = icmp slt i32 %i.bc, %i.bg
  br i1 %i.bh, label %bb.h, label %bb.l

bb.h:                                             ; preds = %.lr.ph.i21.i.i.i
  %i.bi = ptrtoint ptr %.021.i22.i.i.i to i64
  %i.bj = sub i64 %i.bi, %i.c                     ; 3 uses
  %i.bk = ashr exact i64 %i.bj, 2                 ; 2 uses
  %i.bl = icmp sgt i64 %i.bk, 1
  br i1 %i.bl, label %bb.i, label %bb.j, !prof !27

bb.i:                                             ; preds = %bb.h
  %i.bm = getelementptr inbounds nuw i8, ptr %.pn20.i23.i.i.i, i64 8
  %i.bn = sub nsw i64 0, %i.bk
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.bn
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.bo, ptr noundef nonnull align 4 dereferenceable(1) %.0.val, i64 %i.bj, i1 false)
  br label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i28.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.bp = icmp eq i64 %i.bj, 4
  br i1 %i.bp, label %bb.k, label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i28.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.bq = getelementptr inbounds nuw i8, ptr %.pn20.i23.i.i.i, i64 4
  store i32 %.val17.i25.i.i.i, ptr %i.bq, align 4
  br label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i28.i.i.i

bb.l:                                             ; preds = %.lr.ph.i21.i.i.i
  %.0.val13.i.i27.i.i.i = load i32, ptr %.pn20.i23.i.i.i, align 4 ; 2 uses
  %i.br = zext i32 %.0.val13.i.i27.i.i.i to i64
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i26.i.i.i, i64 %i.br
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = load i32, ptr %i.bt, align 8
  %i.bv = icmp slt i32 %i.bc, %i.bu
  br i1 %i.bv, label %.lr.ph.i.i32.i.i.i, label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i28.i.i.i

.lr.ph.i.i32.i.i.i:                               ; preds = %bb.l, %.lr.ph.i.i32.i.i.i
  %.0.val17.i.i33.i.i.i = phi i32 [ %.0.val.i.i37.i.i.i, %.lr.ph.i.i32.i.i.i ], [ %.0.val13.i.i27.i.i.i, %bb.l ]
  %.016.i.i34.i.i.i = phi ptr [ %.0.i.i36.i.i.i, %.lr.ph.i.i32.i.i.i ], [ %.pn20.i23.i.i.i, %bb.l ] ; 3 uses
  %.0915.i.i35.i.i.i = phi ptr [ %.016.i.i34.i.i.i, %.lr.ph.i.i32.i.i.i ], [ %.021.i22.i.i.i, %bb.l ]
  store i32 %.0.val17.i.i33.i.i.i, ptr %.0915.i.i35.i.i.i, align 4
  %.0.i.i36.i.i.i = getelementptr inbounds i8, ptr %.016.i.i34.i.i.i, i64 -4 ; 2 uses
  %.0.val.i.i37.i.i.i = load i32, ptr %.0.i.i36.i.i.i, align 4 ; 2 uses
  %.val.val.i.i38.i.i.i = load ptr, ptr %0, align 8 ; 2 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i.i38.i.i.i, i64 %i.az
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = load i32, ptr %i.bx, align 8
  %i.bz = zext i32 %.0.val.i.i37.i.i.i to i64
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i.i38.i.i.i, i64 %i.bz
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = load i32, ptr %i.cb, align 8
  %i.cd = icmp slt i32 %i.by, %i.cc
  br i1 %i.cd, label %.lr.ph.i.i32.i.i.i, label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i28.i.i.i, !llvm.loop !31

_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i28.i.i.i: ; preds = %.lr.ph.i.i32.i.i.i, %bb.l, %bb.k, %bb.j, %bb.i
  %.sink.i29.i.i.i = phi ptr [ %.0.val, %bb.k ], [ %.0.val, %bb.i ], [ %.0.val, %bb.j ], [ %.021.i22.i.i.i, %bb.l ], [ %.016.i.i34.i.i.i, %.lr.ph.i.i32.i.i.i ]
  store i32 %.0.val.i24.i.i.i, ptr %.sink.i29.i.i.i, align 4
  %.0.i30.i.i.i = getelementptr inbounds nuw i8, ptr %.021.i22.i.i.i, i64 4 ; 2 uses
  %.not.i31.i.i.i = icmp eq ptr %.0.i30.i.i.i, %i.b
  br i1 %.not.i31.i.i.i, label %_ZSt4sortIPiZN4absl24synchronization_internalL4SortERKNS2_12_GLOBAL__N_13VecIPNS3_4NodeEEEPNS4_IiEEE6ByRankEvT_SD_T0_.exit, label %.lr.ph.i21.i.i.i, !llvm.loop !32

_ZSt4sortIPiZN4absl24synchronization_internalL4SortERKNS2_12_GLOBAL__N_13VecIPNS3_4NodeEEEPNS4_IiEEE6ByRankEvT_SD_T0_.exit: ; preds = %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i28.i.i.i, %_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_comp_iterIZN4absl24synchronization_internalL4SortERKNS5_12_GLOBAL__N_13VecIPNS6_4NodeEEEPNS7_IiEEE6ByRankEEEvT_T0_.exit.i.i.i.i, %bb.a, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN4absl24synchronization_internalL10MoveToListEPNS0_11GraphCycles3RepEPNS0_12_GLOBAL__N_13VecIiEES7_(ptr nofree noundef readonly captures(none) %0, ptr nofree captures(address) %.0.val, i32 %.40.val, ptr nofree noundef captures(address) %1) unnamed_addr #0 {
bb.a:
  %i.a = zext i32 %.40.val to i64
  %.idx = shl nuw nsw i64 %i.a, 2
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 %.idx
  %.not2 = icmp eq i32 %.40.val, 0
  br i1 %.not2, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit
  %.03 = phi ptr [ %.0.val, %.lr.ph ], [ %i.ah, %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit ] ; 3 uses
  %i.f = load i32, ptr %.03, align 4              ; 2 uses
  %.val12 = load ptr, ptr %0, align 8
  %i.g = zext i32 %i.f to i64                     ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %.val12, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = load i32, ptr %i.i, align 8
  store i32 %i.j, ptr %.03, align 4
  %.val = load ptr, ptr %0, align 8
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.g
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store i8 0, ptr %i.m, align 4
  %i.n = load i32, ptr %i.c, align 8              ; 5 uses
  %i.o = load i32, ptr %i.d, align 4
  %i.p = icmp eq i32 %i.n, %i.o
  br i1 %i.p, label %bb.c, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.b
  %.pre.i = load ptr, ptr %1, align 8
  br label %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit

bb.c:                                             ; preds = %bb.b
  %2 = add i32 %i.n, 1
  %.not.i = icmp eq i32 %i.n, -1
  br i1 %.not.i, label %bb.d, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %i.q = phi i32 [ %i.r, %.lr.ph.i.i ], [ %i.n, %bb.c ]
  %i.r = shl i32 %i.q, 1                          ; 4 uses
  %3 = icmp ult i32 %i.r, %2
  br i1 %3, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !17

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  store i32 %i.r, ptr %i.d, align 4
  %i.s = zext i32 %i.r to i64
  %i.t = shl nuw nsw i64 %i.s, 2
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i.i, %bb.c
  %.lcssa.i.i = phi i64 [ %i.t, %._crit_edge.i.i ], [ 17179869180, %bb.c ]
  %i.u = load ptr, ptr @_ZN4absl24synchronization_internal12_GLOBAL__N_15arenaE, align 8
  %i.v = tail call noundef ptr @_ZN4absl13base_internal13LowLevelAlloc14AllocWithArenaEmPNS1_5ArenaE(i64 noundef %.lcssa.i.i, ptr noundef %i.u) #12 ; 4 uses
  %i.w = load ptr, ptr %1, align 8                ; 2 uses
  %i.x = load i32, ptr %i.c, align 8              ; 2 uses
  switch i32 %i.x, label %bb.e [
    i32 0, label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i
    i32 1, label %bb.f
  ], !prof !7

bb.e:                                             ; preds = %bb.d
  %i.y = zext i32 %i.x to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.y, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.v, ptr align 4 %i.w, i64 %.idx.i.i.i.i, i1 false)
  br label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.z = load i32, ptr %i.w, align 4
  store i32 %i.z, ptr %i.v, align 4
  br label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i

_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i:          ; preds = %bb.f, %bb.e, %bb.d
  %i.aa = load ptr, ptr %1, align 8               ; 2 uses
  %.not.i4.i.i = icmp eq ptr %i.aa, %i.e
  br i1 %.not.i4.i.i, label %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i
  tail call void @_ZN4absl13base_internal13LowLevelAlloc4FreeEPv(ptr noundef %i.aa) #12
  br label %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i

_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i: ; preds = %bb.g, %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i
  store ptr %i.v, ptr %1, align 8
  %.pre1.i = load i32, ptr %i.c, align 8
  br label %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit

_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE9push_backERKi.exit: ; preds = %._crit_edge.i, %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i
  %i.ab = phi i32 [ %i.n, %._crit_edge.i ], [ %.pre1.i, %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i ]
  %i.ac = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.v, %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i ]
  %i.ad = zext i32 %i.ab to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.ad
  store i32 %i.f, ptr %i.ae, align 4
  %i.af = load i32, ptr %i.c, align 8
  %i.ag = add i32 %i.af, 1
  store i32 %i.ag, ptr %i.c, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.03, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.ah, %i.b
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl24synchronization_internalL4SortERKNS5_12_GLOBAL__N_13VecIPNS6_4NodeEEEPNS7_IiEEE6ByRankEEEvT_SH_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree readonly captures(none) %3) unnamed_addr #8 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 3 uses
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %.lr.ph, label %_ZSt14__partial_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl24synchronization_internalL4SortERKNS5_12_GLOBAL__N_13VecIPNS6_4NodeEEEPNS7_IiEEE6ByRankEEEvT_SH_SH_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph51

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl24synchronization_internalL4SortERKNS5_12_GLOBAL__N_13VecIPNS6_4NodeEEEPNS7_IiEEE6ByRankEEET_SH_SH_T0_.exit
  %i.g = icmp eq i64 %i.en, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph51, !llvm.loop !34

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

.split.us.i.i.i:                                  ; preds = %._crit_edge, %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl24synchronization_internalL4SortERKNS5_12_GLOBAL__N_13VecIPNS6_4NodeEEEPNS7_IiEEE6ByRankEEEvT_T0_SI_T1_T2_.exit.us.i.i.i
  %.014.us.i.i.i = phi i64 [ %i.ba, %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl24synchronization_internalL4SortERKNS5_12_GLOBAL__N_13VecIPNS6_4NodeEEEPNS7_IiEEE6ByRankEEEvT_T0_SI_T1_T2_.exit.us.i.i.i ], [ %i.j, %._crit_edge ] ; 7 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.014.us.i.i.i
  %i.s = load i32, ptr %i.r, align 4              ; 2 uses
  %i.t = icmp slt i64 %.014.us.i.i.i, %i.l
  br i1 %i.t, label %.lr.ph.i.us.i.i.i, label %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl24synchronization_internalL4SortERKNS5_12_GLOBAL__N_13VecIPNS6_4NodeEEEPNS7_IiEEE6ByRankEEEvT_T0_SI_T1_T2_.exit.us.i.i.i

.lr.ph.i.us.i.i.i:                                ; preds = %.split.us.i.i.i, %.lr.ph.i.us.i.i.i
  %.034.i.us.i.i.i = phi i64 [ %spec.select.i.us.i.i.i, %.lr.ph.i.us.i.i.i ], [ %.014.us.i.i.i, %.split.us.i.i.i ] ; 2 uses
  %i.u = shl i64 %.034.i.us.i.i.i, 1              ; 3 uses
  %i.v = add i64 %i.u, 2                          ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.v
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.u
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %.val29.i.us.i.i.i = load i32, ptr %i.w, align 4
  %.val30.i.us.i.i.i = load i32, ptr %i.y, align 4
  %.val.val.i.us.i.i.i = load ptr, ptr %3, align 8 ; 2 uses
  %i.z = zext i32 %.val29.i.us.i.i.i to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i.us.i.i.i, i64 %i.z
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = load i32, ptr %i.ab, align 8
  %i.ad = zext i32 %.val30.i.us.i.i.i to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i.us.i.i.i, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = load i32, ptr %i.af, align 8
  %i.ah = icmp slt i32 %i.ac, %i.ag
  %i.ai = or disjoint i64 %i.u, 1
  %spec.select.i.us.i.i.i = select i1 %i.ah, i64 %i.ai, i64 %i.v ; 4 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %spec.select.i.us.i.i.i
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.034.i.us.i.i.i
  store i32 %i.ak, ptr %i.al, align 4
  %i.am = icmp slt i64 %spec.select.i.us.i.i.i, %i.l
  br i1 %i.am, label %.lr.ph.i.us.i.i.i, label %._crit_edge.i.us.i.i.i, !llvm.loop !35

._crit_edge.i.us.i.i.i:                           ; preds = %.lr.ph.i.us.i.i.i
  %i.an = zext i32 %i.s to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %._crit_edge.i.us.i.i.i
  %.0134.i.i.us.i.i.i = phi i64 [ %spec.select.i.us.i.i.i, %._crit_edge.i.us.i.i.i ], [ %.059.i.i.us.i.i.i, %bb.d ] ; 3 uses
  %.05.in.i.i.us.i.i.i = add nsw i64 %.0134.i.i.us.i.i.i, -1
  %.059.i.i.us.i.i.i = lshr i64 %.05.in.i.i.us.i.i.i, 1 ; 4 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.059.i.i.us.i.i.i
  %.val14.i.i.us.i.i.i = load i32, ptr %i.ao, align 4 ; 2 uses
  %.val.val.i.i.us.i.i.i = load ptr, ptr %3, align 8 ; 2 uses
  %i.ap = zext i32 %.val14.i.i.us.i.i.i to i64
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i.i.us.i.i.i, i64 %i.ap
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = load i32, ptr %i.ar, align 8
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i.i.us.i.i.i, i64 %i.an
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = load i32, ptr %i.au, align 8
  %i.aw = icmp slt i32 %i.as, %i.av
  br i1 %i.aw, label %bb.d, label %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl24synchronization_internalL4SortERKNS5_12_GLOBAL__N_13VecIPNS6_4NodeEEEPNS7_IiEEE6ByRankEEEvT_T0_SI_T1_T2_.exit.us.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0134.i.i.us.i.i.i
  store i32 %.val14.i.i.us.i.i.i, ptr %i.ax, align 4
  %i.ay = icmp samesign ugt i64 %.059.i.i.us.i.i.i, %.014.us.i.i.i
  br i1 %i.ay, label %bb.c, label %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl24synchronization_internalL4SortERKNS5_12_GLOBAL__N_13VecIPNS6_4NodeEEEPNS7_IiEEE6ByRankEEEvT_T0_SI_T1_T2_.exit.us.i.i.i, !llvm.loop !36

_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl24synchronization_internalL4SortERKNS5_12_GLOBAL__N_13VecIPNS6_4NodeEEEPNS7_IiEEE6ByRankEEEvT_T0_SI_T1_T2_.exit.us.i.i.i: ; preds = %bb.d, %bb.c, %.split.us.i.i.i
  %.013.lcssa.i.i.us.i.i.i = phi i64 [ %.014.us.i.i.i, %.split.us.i.i.i ], [ %.059.i.i.us.i.i.i, %bb.d ], [ %.0134.i.i.us.i.i.i, %bb.c ]
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.013.lcssa.i.i.us.i.i.i
  store i32 %i.s, ptr %i.az, align 4
  %.not.us.i.i.i = icmp eq i64 %.014.us.i.i.i, 0
  %i.ba = add nsw i64 %.014.us.i.i.i, -1
  br i1 %.not.us.i.i.i, label %.lr.ph.i5.i.preheader, label %.split.us.i.i.i, !llvm.loop !37

.split.i.i.i:                                     ; preds = %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl24synchronization_internalL4SortERKNS5_12_GLOBAL__N_13VecIPNS6_4NodeEEEPNS7_IiEEE6ByRankEEEvT_T0_SI_T1_T2_.exit.i.i.i, %.split.preheader.i.i.i
  %.014.i.i.i = phi i64 [ %i.cn, %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl24synchronization_internalL4SortERKNS5_12_GLOBAL__N_13VecIPNS6_4NodeEEEPNS7_IiEEE6ByRankEEEvT_T0_SI_T1_T2_.exit.i.i.i ], [ %i.j, %.split.preheader.i.i.i ] ; 8 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.014.i.i.i
  %i.bc = load i32, ptr %i.bb, align 4            ; 2 uses
  %i.bd = icmp slt i64 %.014.i.i.i, %i.l
  br i1 %i.bd, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.split.i.i.i, %.lr.ph.i.i.i.i
  %.034.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.014.i.i.i, %.split.i.i.i ] ; 2 uses
  %i.be = shl i64 %.034.i.i.i.i, 1                ; 3 uses
  %i.bf = add i64 %i.be, 2                        ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bf
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.be
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %.val29.i.i.i.i = load i32, ptr %i.bg, align 4
  %.val30.i.i.i.i = load i32, ptr %i.bi, align 4
  %.val.val.i.i.i.i = load ptr, ptr %3, align 8   ; 2 uses
  %i.bj = zext i32 %.val29.i.i.i.i to i64
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i.i.i.i, i64 %i.bj
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = load i32, ptr %i.bl, align 8
  %i.bn = zext i32 %.val30.i.i.i.i to i64
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i.i.i.i, i64 %i.bn
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = load i32, ptr %i.bp, align 8
  %i.br = icmp slt i32 %i.bm, %i.bq
  %i.bs = or disjoint i64 %i.be, 1
  %spec.select.i.i.i.i = select i1 %i.br, i64 %i.bs, i64 %i.bf ; 4 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.bu = load i32, ptr %i.bt, align 4
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.034.i.i.i.i
  store i32 %i.bu, ptr %i.bv, align 4
  %i.bw = icmp slt i64 %spec.select.i.i.i.i, %i.l
  br i1 %i.bw, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !35

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.split.i.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ %.014.i.i.i, %.split.i.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.bx = icmp eq i64 %.0.lcssa.i.i.i.i, %i.j
  br i1 %i.bx, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.by = load i32, ptr %i.p, align 4
  store i32 %i.by, ptr %i.q, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i.i.i
  %.128.i.i.i.i = phi i64 [ %i.o, %bb.e ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.bz = icmp samesign ugt i64 %.128.i.i.i.i, %.014.i.i.i
  br i1 %i.bz, label %.lr.ph.i.i.i.i.i, label %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl24synchronization_internalL4SortERKNS5_12_GLOBAL__N_13VecIPNS6_4NodeEEEPNS7_IiEEE6ByRankEEEvT_T0_SI_T1_T2_.exit.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f
  %i.ca = zext i32 %i.bc to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph.i.i.i.i.i
  %.0134.i.i.i.i.i = phi i64 [ %.128.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.059.i.i.i.i.i, %bb.h ] ; 3 uses
  %.05.in.i.i.i.i.i = add nsw i64 %.0134.i.i.i.i.i, -1
  %.059.i.i.i.i.i = lshr i64 %.05.in.i.i.i.i.i, 1 ; 4 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.059.i.i.i.i.i
  %.val14.i.i.i.i.i = load i32, ptr %i.cb, align 4 ; 2 uses
  %.val.val.i.i.i.i.i = load ptr, ptr %3, align 8 ; 2 uses
  %i.cc = zext i32 %.val14.i.i.i.i.i to i64
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i.i.i.i.i, i64 %i.cc
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = load i32, ptr %i.ce, align 8
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i.i.i.i.i, i64 %i.ca
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = load i32, ptr %i.ch, align 8
  %i.cj = icmp slt i32 %i.cf, %i.ci
  br i1 %i.cj, label %bb.h, label %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl24synchronization_internalL4SortERKNS5_12_GLOBAL__N_13VecIPNS6_4NodeEEEPNS7_IiEEE6ByRankEEEvT_T0_SI_T1_T2_.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0134.i.i.i.i.i
  store i32 %.val14.i.i.i.i.i, ptr %i.ck, align 4
  %i.cl = icmp samesign ugt i64 %.059.i.i.i.i.i, %.014.i.i.i
  br i1 %i.cl, label %bb.g, label %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl24synchronization_internalL4SortERKNS5_12_GLOBAL__N_13VecIPNS6_4NodeEEEPNS7_IiEEE6ByRankEEEvT_T0_SI_T1_T2_.exit.i.i.i, !llvm.loop !36

_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl24synchronization_internalL4SortERKNS5_12_GLOBAL__N_13VecIPNS6_4NodeEEEPNS7_IiEEE6ByRankEEEvT_T0_SI_T1_T2_.exit.i.i.i: ; preds = %bb.h, %bb.g, %bb.f
  %.013.lcssa.i.i.i.i.i = phi i64 [ %.128.i.i.i.i, %bb.f ], [ %.0134.i.i.i.i.i, %bb.g ], [ %.059.i.i.i.i.i, %bb.h ]
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.013.lcssa.i.i.i.i.i
  store i32 %i.bc, ptr %i.cm, align 4
  %.not.i.i.i = icmp eq i64 %.014.i.i.i, 0
  %i.cn = add nsw i64 %.014.i.i.i, -1
  br i1 %.not.i.i.i, label %.lr.ph.i5.i.preheader, label %.split.i.i.i, !llvm.loop !37

.lr.ph.i5.i.preheader:                            ; preds = %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl24synchronization_internalL4SortERKNS5_12_GLOBAL__N_13VecIPNS6_4NodeEEEPNS7_IiEEE6ByRankEEEvT_T0_SI_T1_T2_.exit.us.i.i.i, %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl24synchronization_internalL4SortERKNS5_12_GLOBAL__N_13VecIPNS6_4NodeEEEPNS7_IiEEE6ByRankEEEvT_T0_SI_T1_T2_.exit.i.i.i
  br label %.lr.ph.i5.i

.lr.ph.i5.i:                                      ; preds = %.lr.ph.i5.i.preheader, %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl24synchronization_internalL4SortERKNS5_12_GLOBAL__N_13VecIPNS6_4NodeEEEPNS7_IiEEE6ByRankEEEvT_SH_SH_RT0_.exit.i.i
  %.01.i.i = phi ptr [ %i.co, %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl24synchronization_internalL4SortERKNS5_12_GLOBAL__N_13VecIPNS6_4NodeEEEPNS7_IiEEE6ByRankEEEvT_SH_SH_RT0_.exit.i.i ], [ %.024.lcssa, %.lr.ph.i5.i.preheader ]
  %i.co = getelementptr inbounds i8, ptr %.01.i.i, i64 -4 ; 4 uses
  %i.cp = load i32, ptr %i.co, align 4            ; 2 uses
  %i.cq = load i32, ptr %0, align 4
  store i32 %i.cq, ptr %i.co, align 4
  %i.cr = ptrtoint ptr %i.co to i64
  %i.cs = sub i64 %i.cr, %i.a                     ; 3 uses
  %i.ct = ashr exact i64 %i.cs, 2                 ; 3 uses
  %i.cu = add nsw i64 %i.ct, -1
  %4 = sdiv i64 %i.cu, 2
  %i.cv = icmp sgt i64 %i.ct, 2
  br i1 %i.cv, label %.lr.ph.i.i.i16.i, label %._crit_edge.i.i.i6.i

.lr.ph.i.i.i16.i:                                 ; preds = %.lr.ph.i5.i, %.lr.ph.i.i.i16.i
  %.034.i.i.i17.i = phi i64 [ %spec.select.i.i.i21.i, %.lr.ph.i.i.i16.i ], [ 0, %.lr.ph.i5.i ] ; 2 uses
  %i.cw = shl i64 %.034.i.i.i17.i, 1              ; 3 uses
  %i.cx = add i64 %i.cw, 2                        ; 2 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cx
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cw
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  %.val29.i.i.i18.i = load i32, ptr %i.cy, align 4
  %.val30.i.i.i19.i = load i32, ptr %i.da, align 4
  %.val.val.i.i.i20.i = load ptr, ptr %3, align 8 ; 2 uses
  %i.db = zext i32 %.val29.i.i.i18.i to i64
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i.i.i20.i, i64 %i.db
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = load i32, ptr %i.dd, align 8
  %i.df = zext i32 %.val30.i.i.i19.i to i64
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i.i.i20.i, i64 %i.df
  %i.dh = load ptr, ptr %i.dg, align 8
  %i.di = load i32, ptr %i.dh, align 8
  %i.dj = icmp slt i32 %i.de, %i.di
  %i.dk = or disjoint i64 %i.cw, 1
  %spec.select.i.i.i21.i = select i1 %i.dj, i64 %i.dk, i64 %i.cx ; 4 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %spec.select.i.i.i21.i
  %i.dm = load i32, ptr %i.dl, align 4
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.034.i.i.i17.i
  store i32 %i.dm, ptr %i.dn, align 4
  %i.do = icmp slt i64 %spec.select.i.i.i21.i, %4
  br i1 %i.do, label %.lr.ph.i.i.i16.i, label %._crit_edge.i.i.i6.i, !llvm.loop !35

._crit_edge.i.i.i6.i:                             ; preds = %.lr.ph.i.i.i16.i, %.lr.ph.i5.i
  %.0.lcssa.i.i.i7.i = phi i64 [ 0, %.lr.ph.i5.i ], [ %spec.select.i.i.i21.i, %.lr.ph.i.i.i16.i ] ; 5 uses
  %i.dp = and i64 %i.cs, 4
  %i.dq = icmp eq i64 %i.dp, 0
  br i1 %i.dq, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i.i6.i
  %i.dr = add nsw i64 %i.ct, -2
  %i.ds = ashr exact i64 %i.dr, 1
  %i.dt = icmp eq i64 %.0.lcssa.i.i.i7.i, %i.ds
  br i1 %i.dt, label %.thread.i.i.i, label %bb.j

.thread.i.i.i:                                    ; preds = %bb.i
  %i.du = shl nuw nsw i64 %.0.lcssa.i.i.i7.i, 1
  %i.dv = or disjoint i64 %i.du, 1                ; 2 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.dv
  %i.dx = load i32, ptr %i.dw, align 4
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i7.i
  store i32 %i.dx, ptr %i.dy, align 4
  br label %.lr.ph.i.i.i.i9.i

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i6.i
  %.not.i.i8.i = icmp eq i64 %.0.lcssa.i.i.i7.i, 0
  br i1 %.not.i.i8.i, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl24synchronization_internalL4SortERKNS5_12_GLOBAL__N_13VecIPNS6_4NodeEEEPNS7_IiEEE6ByRankEEEvT_SH_SH_RT0_.exit.i.i, label %.lr.ph.i.i.i.i9.i

.lr.ph.i.i.i.i9.i:                                ; preds = %bb.j, %.thread.i.i.i
  %.128.i8.i.i.i = phi i64 [ %i.dv, %.thread.i.i.i ], [ %.0.lcssa.i.i.i7.i, %bb.j ]
  %i.dz = zext i32 %i.cp to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %.lr.ph.i.i.i.i9.i
  %.0134.i.i.i.i10.i = phi i64 [ %.128.i8.i.i.i, %.lr.ph.i.i.i.i9.i ], [ %.059.i.i.i.i12.i, %bb.l ] ; 3 uses
  %.05.in.i.i.i.i11.i = add nsw i64 %.0134.i.i.i.i10.i, -1
  %.059.i.i.i.i12.i = lshr i64 %.05.in.i.i.i.i11.i, 1 ; 3 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.059.i.i.i.i12.i
  %.val14.i.i.i.i13.i = load i32, ptr %i.ea, align 4 ; 2 uses
  %.val.val.i.i.i.i14.i = load ptr, ptr %3, align 8 ; 2 uses
  %i.eb = zext i32 %.val14.i.i.i.i13.i to i64
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i.i.i.i14.i, i64 %i.eb
  %i.ed = load ptr, ptr %i.ec, align 8
  %i.ee = load i32, ptr %i.ed, align 8
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i.i.i.i14.i, i64 %i.dz
  %i.eg = load ptr, ptr %i.ef, align 8
  %i.eh = load i32, ptr %i.eg, align 8
  %i.ei = icmp slt i32 %i.ee, %i.eh
  br i1 %i.ei, label %bb.l, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl24synchronization_internalL4SortERKNS5_12_GLOBAL__N_13VecIPNS6_4NodeEEEPNS7_IiEEE6ByRankEEEvT_SH_SH_RT0_.exit.i.i

bb.l:                                             ; preds = %bb.k
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0134.i.i.i.i10.i
  store i32 %.val14.i.i.i.i13.i, ptr %i.ej, align 4
  %.not9.i.i.i = icmp eq i64 %.059.i.i.i.i12.i, 0
  br i1 %.not9.i.i.i, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl24synchronization_internalL4SortERKNS5_12_GLOBAL__N_13VecIPNS6_4NodeEEEPNS7_IiEEE6ByRankEEEvT_SH_SH_RT0_.exit.i.i, label %bb.k, !llvm.loop !36

_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl24synchronization_internalL4SortERKNS5_12_GLOBAL__N_13VecIPNS6_4NodeEEEPNS7_IiEEE6ByRankEEEvT_SH_SH_RT0_.exit.i.i: ; preds = %bb.l, %bb.k, %bb.j
  %.013.lcssa.i.i.i.i15.i = phi i64 [ 0, %bb.j ], [ %.0134.i.i.i.i10.i, %bb.k ], [ 0, %bb.l ]
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.013.lcssa.i.i.i.i15.i
  store i32 %i.cp, ptr %i.ek, align 4
  %i.el = icmp sgt i64 %i.cs, 4
  br i1 %i.el, label %.lr.ph.i5.i, label %_ZSt14__partial_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl24synchronization_internalL4SortERKNS5_12_GLOBAL__N_13VecIPNS6_4NodeEEEPNS7_IiEEE6ByRankEEEvT_SH_SH_T0_.exit, !llvm.loop !38

.lr.ph51:                                         ; preds = %.lr.ph, %bb.b
  %.0152350 = phi i64 [ %i.en, %bb.b ], [ %2, %.lr.ph ]
  %.02449 = phi ptr [ %.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %i.em = phi i64 [ %i.gd, %bb.b ], [ %i.c, %.lr.ph ]
  %i.en = add nsw i64 %.0152350, -1               ; 3 uses
  %i.eo = lshr i64 %i.em, 3
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.eo ; 3 uses
  %i.eq = getelementptr inbounds i8, ptr %.02449, i64 -4 ; 3 uses
  %.val34.i.i = load i32, ptr %i.e, align 4       ; 3 uses
  %.val35.i.i = load i32, ptr %i.ep, align 4      ; 3 uses
  %.val33.val.i.i = load ptr, ptr %3, align 8     ; 3 uses
  %i.er = zext i32 %.val34.i.i to i64
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %.val33.val.i.i, i64 %i.er
  %i.et = load ptr, ptr %i.es, align 8
  %i.eu = load i32, ptr %i.et, align 8            ; 3 uses
  %i.ev = zext i32 %.val35.i.i to i64
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %.val33.val.i.i, i64 %i.ev
  %i.ex = load ptr, ptr %i.ew, align 8
  %i.ey = load i32, ptr %i.ex, align 8            ; 3 uses
  %i.ez = icmp slt i32 %i.eu, %i.ey
  %.val32.i.i = load i32, ptr %i.eq, align 4      ; 3 uses
  %i.fa = zext i32 %.val32.i.i to i64
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %.val33.val.i.i, i64 %i.fa
  %i.fc = load ptr, ptr %i.fb, align 8
  %i.fd = load i32, ptr %i.fc, align 8            ; 4 uses
  br i1 %i.ez, label %bb.m, label %bb.r

bb.m:                                             ; preds = %.lr.ph51
  %i.fe = icmp slt i32 %i.ey, %i.fd
  br i1 %i.fe, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ff = load i32, ptr %0, align 4
  store i32 %.val35.i.i, ptr %0, align 4
  store i32 %i.ff, ptr %i.ep, align 4
  br label %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl24synchronization_internalL4SortERKNS5_12_GLOBAL__N_13VecIPNS6_4NodeEEEPNS7_IiEEE6ByRankEEEvT_SH_SH_SH_T0_.exit.i.preheader

bb.o:                                             ; preds = %bb.m
  %i.fg = icmp slt i32 %i.eu, %i.fd
  %i.fh = load i32, ptr %0, align 4               ; 2 uses
  br i1 %i.fg, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 %.val32.i.i, ptr %0, align 4
  store i32 %i.fh, ptr %i.eq, align 4
  br label %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl24synchronization_internalL4SortERKNS5_12_GLOBAL__N_13VecIPNS6_4NodeEEEPNS7_IiEEE6ByRankEEEvT_SH_SH_SH_T0_.exit.i.preheader

bb.q:                                             ; preds = %bb.o
  store i32 %.val34.i.i, ptr %0, align 4
  store i32 %i.fh, ptr %i.e, align 4
  br label %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl24synchronization_internalL4SortERKNS5_12_GLOBAL__N_13VecIPNS6_4NodeEEEPNS7_IiEEE6ByRankEEEvT_SH_SH_SH_T0_.exit.i.preheader

bb.r:                                             ; preds = %.lr.ph51
  %i.fi = icmp slt i32 %i.eu, %i.fd
  br i1 %i.fi, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.fj = load i32, ptr %0, align 4
  store i32 %.val34.i.i, ptr %0, align 4
  store i32 %i.fj, ptr %i.e, align 4
  br label %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl24synchronization_internalL4SortERKNS5_12_GLOBAL__N_13VecIPNS6_4NodeEEEPNS7_IiEEE6ByRankEEEvT_SH_SH_SH_T0_.exit.i.preheader

bb.t:                                             ; preds = %bb.r
  %i.fk = icmp slt i32 %i.ey, %i.fd
  %i.fl = load i32, ptr %0, align 4               ; 2 uses
  br i1 %i.fk, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 %.val32.i.i, ptr %0, align 4
  store i32 %i.fl, ptr %i.eq, align 4
  br label %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl24synchronization_internalL4SortERKNS5_12_GLOBAL__N_13VecIPNS6_4NodeEEEPNS7_IiEEE6ByRankEEEvT_SH_SH_SH_T0_.exit.i.preheader

bb.v:                                             ; preds = %bb.t
  store i32 %.val35.i.i, ptr %0, align 4
  store i32 %i.fl, ptr %i.ep, align 4
  br label %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl24synchronization_internalL4SortERKNS5_12_GLOBAL__N_13VecIPNS6_4NodeEEEPNS7_IiEEE6ByRankEEEvT_SH_SH_SH_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl24synchronization_internalL4SortERKNS5_12_GLOBAL__N_13VecIPNS6_4NodeEEEPNS7_IiEEE6ByRankEEEvT_SH_SH_SH_T0_.exit.i.preheader: ; preds = %bb.v, %bb.u, %bb.s, %bb.q, %bb.p, %bb.n
  br label %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl24synchronization_internalL4SortERKNS5_12_GLOBAL__N_13VecIPNS6_4NodeEEEPNS7_IiEEE6ByRankEEEvT_SH_SH_SH_T0_.exit.i

_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl24synchronization_internalL4SortERKNS5_12_GLOBAL__N_13VecIPNS6_4NodeEEEPNS7_IiEEE6ByRankEEEvT_SH_SH_SH_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl24synchronization_internalL4SortERKNS5_12_GLOBAL__N_13VecIPNS6_4NodeEEEPNS7_IiEEE6ByRankEEEvT_SH_SH_SH_T0_.exit.i.preheader, %bb.y
  %.013.i.i = phi ptr [ %.114.i.i, %bb.y ], [ %.02449, %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl24synchronization_internalL4SortERKNS5_12_GLOBAL__N_13VecIPNS6_4NodeEEEPNS7_IiEEE6ByRankEEEvT_SH_SH_SH_T0_.exit.i.preheader ]
  %.0.i.i = phi ptr [ %i.fv, %bb.y ], [ %i.e, %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl24synchronization_internalL4SortERKNS5_12_GLOBAL__N_13VecIPNS6_4NodeEEEPNS7_IiEEE6ByRankEEEvT_SH_SH_SH_T0_.exit.i.preheader ]
  %.val17.i.i = load i32, ptr %0, align 4
  %.val16.val.i.i = load ptr, ptr %3, align 8     ; 3 uses
  %i.fm = zext i32 %.val17.i.i to i64
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %.val16.val.i.i, i64 %i.fm
  %i.fo = load ptr, ptr %i.fn, align 8
  %i.fp = load i32, ptr %i.fo, align 8            ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl24synchronization_internalL4SortERKNS5_12_GLOBAL__N_13VecIPNS6_4NodeEEEPNS7_IiEEE6ByRankEEEvT_SH_SH_SH_T0_.exit.i
  %.1.i.i = phi ptr [ %.0.i.i, %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl24synchronization_internalL4SortERKNS5_12_GLOBAL__N_13VecIPNS6_4NodeEEEPNS7_IiEEE6ByRankEEEvT_SH_SH_SH_T0_.exit.i ], [ %i.fv, %bb.w ] ; 8 uses
  %.1.val.i.i = load i32, ptr %.1.i.i, align 4    ; 2 uses
  %i.fq = zext i32 %.1.val.i.i to i64
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %.val16.val.i.i, i64 %i.fq
  %i.fs = load ptr, ptr %i.fr, align 8
  %i.ft = load i32, ptr %i.fs, align 8
  %i.fu = icmp slt i32 %i.ft, %i.fp
  %i.fv = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 4 ; 2 uses
  br i1 %i.fu, label %bb.w, label %.preheader.i.i, !llvm.loop !39

.preheader.i.i:                                   ; preds = %bb.w, %.preheader.i.i
  %.013.pn.i.i = phi ptr [ %.114.i.i, %.preheader.i.i ], [ %.013.i.i, %bb.w ]
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -4 ; 5 uses
  %.114.val.i.i = load i32, ptr %.114.i.i, align 4 ; 2 uses
  %i.fw = zext i32 %.114.val.i.i to i64
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %.val16.val.i.i, i64 %i.fw
  %i.fy = load ptr, ptr %i.fx, align 8
end_hunk_4
