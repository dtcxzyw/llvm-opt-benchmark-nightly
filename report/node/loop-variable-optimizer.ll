inline.NumInlined: 769
inline.NumDeleted: 382
begin_hunk_0_@_ZN2v88internal8compiler21LoopVariableOptimizer3RunEv:bb.a
  store i32 %i.as, ptr %i.at, align 8
  %i.au = load ptr, ptr %i.ae, align 8            ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load i16, ptr %i.av, align 8
  %i.ax = icmp eq i16 %i.aw, 1
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 28
  %.in = select i1 %i.ax, ptr %i.y, ptr %i.ay
  %i.az = load i32, ptr %.in, align 4             ; 2 uses
  %.not35 = icmp sgt i32 %i.az, 0
  br i1 %.not35, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %_ZNSt5queueIPN2v88internal8compiler4NodeENS1_9ZoneDequeIS4_EEE3popEv.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ae, i64 20
  %i.bb = ptrtoint ptr %i.ae to i64
  %i.bc = add i64 %i.bb, 32
  %i.bd = inttoptr i64 %i.bc to ptr               ; 2 uses
  br label %bb.j

bb.i:                                             ; preds = %_ZNK2v88internal8compiler11NodeAuxDataIbXadL_ZNS1_16DefaultConstructIbEET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit
  %i.be = add nuw nsw i32 %.01536, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.be, %i.az
  br i1 %exitcond.not, label %.critedge, label %bb.j, !llvm.loop !10

bb.j:                                             ; preds = %.lr.ph, %bb.i
  %i.bf = phi ptr [ %i.au, %.lr.ph ], [ %i.bo, %bb.i ] ; 3 uses
  %.01536 = phi i32 [ 0, %.lr.ph ], [ %i.be, %bb.i ] ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 28
  %i.bh = load i32, ptr %i.bg, align 4
  %i.bi = icmp slt i32 %.01536, %i.bh
  br i1 %i.bi, label %bb.l, label %bb.k, !prof !11

bb.k:                                             ; preds = %bb.j
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.9) #11
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 20
  %i.bk = load i32, ptr %i.bj, align 4
  %i.bl = call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties15HasContextInputEPKNS1_8OperatorE(ptr noundef nonnull %i.bf) #10
  %i.bm = load ptr, ptr %i.ae, align 8
  %i.bn = call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties18HasFrameStateInputEPKNS1_8OperatorE(ptr noundef %i.bm) #10
  %i.bo = load ptr, ptr %i.ae, align 8            ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load i32, ptr %i.bp, align 8
  %i.br = load i32, ptr %i.ba, align 4
  %i.bs = and i32 %i.br, 251658240
  %.not.i.i.i17 = icmp eq i32 %i.bs, 251658240
  br i1 %.not.i.i.i17, label %bb.m, label %_ZN2v88internal8compiler14NodeProperties15GetControlInputEPNS1_4NodeEi.exit

bb.m:                                             ; preds = %bb.l
  %i.bt = load ptr, ptr %i.bd, align 8
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = add i64 %i.bu, 16
  %i.bw = inttoptr i64 %i.bv to ptr
  br label %_ZN2v88internal8compiler14NodeProperties15GetControlInputEPNS1_4NodeEi.exit

_ZN2v88internal8compiler14NodeProperties15GetControlInputEPNS1_4NodeEi.exit: ; preds = %bb.l, %bb.m
  %.sink.i.i.i = phi ptr [ %i.bw, %bb.m ], [ %i.bd, %bb.l ]
  %i.bx = zext i1 %i.bl to i32
  %i.by = zext i1 %i.bn to i32
  %i.bz = add i32 %i.bk, %.01536
  %i.ca = add i32 %i.bz, %i.bx
  %i.cb = add i32 %i.ca, %i.by
  %i.cc = add i32 %i.cb, %i.bq
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds [8 x i8], ptr %.sink.i.i.i, i64 %i.cd
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 20
  %i.ch = load i32, ptr %i.cg, align 4
  %i.ci = and i32 %i.ch, 16777215
  %i.cj = zext nneg i32 %i.ci to i64              ; 2 uses
  %i.ck = load ptr, ptr %i.z, align 8
  %i.cl = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = icmp ugt i64 %i.co, %i.cj
  br i1 %i.cp, label %_ZNK2v88internal8compiler11NodeAuxDataIbXadL_ZNS1_16DefaultConstructIbEET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit, label %_ZNK2v88internal8compiler11NodeAuxDataIbXadL_ZNS1_16DefaultConstructIbEET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit.thread, !llvm.loop !12

_ZNK2v88internal8compiler11NodeAuxDataIbXadL_ZNS1_16DefaultConstructIbEET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit: ; preds = %_ZN2v88internal8compiler14NodeProperties15GetControlInputEPNS1_4NodeEi.exit
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cj
  %i.cr = load i8, ptr %i.cq, align 1, !range !13, !noundef !14
  %i.cs = trunc nuw i8 %i.cr to i1
  br i1 %i.cs, label %bb.i, label %_ZNK2v88internal8compiler11NodeAuxDataIbXadL_ZNS1_16DefaultConstructIbEET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit.thread, !llvm.loop !12

.critedge:                                        ; preds = %bb.i, %_ZNSt5queueIPN2v88internal8compiler4NodeENS1_9ZoneDequeIS4_EEE3popEv.exit
  call void @_ZN2v88internal8compiler21LoopVariableOptimizer9VisitNodeEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull %i.ae)
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ae, i64 20
  %i.cu = load i32, ptr %i.ct, align 4
  %i.cv = and i32 %i.cu, 16777215                 ; 2 uses
  %i.cw = zext nneg i32 %i.cv to i64              ; 2 uses
  %i.cx = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.cy = load ptr, ptr %i.aa, align 8            ; 3 uses
  %i.cz = ptrtoint ptr %i.cx to i64
  %i.da = ptrtoint ptr %i.cy to i64               ; 3 uses
  %i.db = sub i64 %i.cz, %i.da
  %.not.i.i18 = icmp ugt i64 %i.db, %i.cw
  br i1 %.not.i.i18, label %bb.p, label %bb.n

bb.n:                                             ; preds = %.critedge
  %i.dc = add nuw nsw i32 %i.cv, 1
  %i.dd = zext nneg i32 %i.dc to i64              ; 4 uses
  %i.de = load ptr, ptr %i.ac, align 8
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = sub i64 %i.df, %i.da
  %.not.i.i.i.i = icmp ult i64 %i.dg, %i.dd
  br i1 %.not.i.i.i.i, label %bb.o, label %_ZN2v88internal10ZoneVectorIbE14EnsureCapacityEm.exit.i.i.i, !prof !5

bb.o:                                             ; preds = %bb.n
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorIbE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, i64 noundef %i.dd)
  %.pre.i.i.i = load ptr, ptr %i.aa, align 8      ; 2 uses
  %.pre15.i.i.i = ptrtoint ptr %.pre.i.i.i to i64
  %.pre.i.i = load ptr, ptr %i.z, align 8
  br label %_ZN2v88internal10ZoneVectorIbE14EnsureCapacityEm.exit.i.i.i

_ZN2v88internal10ZoneVectorIbE14EnsureCapacityEm.exit.i.i.i: ; preds = %bb.o, %bb.n
  %i.dh = phi ptr [ %i.cx, %bb.n ], [ %.pre.i.i, %bb.o ] ; 3 uses
  %.pre-phi.i.i.i = phi i64 [ %i.da, %bb.n ], [ %.pre15.i.i.i, %bb.o ]
  %i.di = phi ptr [ %i.cy, %bb.n ], [ %.pre.i.i.i, %bb.o ] ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.dd ; 2 uses
  %i.dk = icmp ult ptr %i.dh, %i.dj
  br i1 %i.dk, label %.lr.ph.preheader.i.i.i, label %_ZN2v88internal10ZoneVectorIbE6resizeEmRKb.exit.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZN2v88internal10ZoneVectorIbE14EnsureCapacityEm.exit.i.i.i
  %i.dl = ptrtoint ptr %i.dh to i64
  %i.dm = add i64 %.pre-phi.i.i.i, %i.dd
  %i.dn = sub i64 %i.dm, %i.dl
  call void @llvm.memset.p0.i64(ptr align 1 %i.dh, i8 0, i64 %i.dn, i1 false)
  %.pre8.pre.i.i = load ptr, ptr %i.aa, align 8
  br label %_ZN2v88internal10ZoneVectorIbE6resizeEmRKb.exit.i.i

_ZN2v88internal10ZoneVectorIbE6resizeEmRKb.exit.i.i: ; preds = %.lr.ph.preheader.i.i.i, %_ZN2v88internal10ZoneVectorIbE14EnsureCapacityEm.exit.i.i.i
  %.pre8.i.i = phi ptr [ %.pre8.pre.i.i, %.lr.ph.preheader.i.i.i ], [ %i.di, %_ZN2v88internal10ZoneVectorIbE14EnsureCapacityEm.exit.i.i.i ]
  store ptr %i.dj, ptr %i.z, align 8
  br label %bb.p

bb.p:                                             ; preds = %_ZN2v88internal10ZoneVectorIbE6resizeEmRKb.exit.i.i, %.critedge
  %i.do = phi ptr [ %.pre8.i.i, %_ZN2v88internal10ZoneVectorIbE6resizeEmRKb.exit.i.i ], [ %i.cy, %.critedge ]
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.cw ; 2 uses
  %i.dq = load i8, ptr %i.dp, align 1, !range !13, !noundef !14
  %.not7.i.i.not.not = icmp eq i8 %i.dq, 0
  br i1 %.not7.i.i.not.not, label %bb.q, label %_ZN2v88internal8compiler11NodeAuxDataIbXadL_ZNS1_16DefaultConstructIbEET_PNS0_4ZoneEEEE3SetEPNS1_4NodeERKb.exit

bb.q:                                             ; preds = %bb.p
  store i8 1, ptr %i.dp, align 1
  br label %_ZN2v88internal8compiler11NodeAuxDataIbXadL_ZNS1_16DefaultConstructIbEET_PNS0_4ZoneEEEE3SetEPNS1_4NodeERKb.exit

_ZN2v88internal8compiler11NodeAuxDataIbXadL_ZNS1_16DefaultConstructIbEET_PNS0_4ZoneEEEE3SetEPNS1_4NodeERKb.exit: ; preds = %bb.p, %bb.q
  %i.dr = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8            ; 2 uses
  %.not.i.i19 = icmp eq ptr %i.ds, null
  br i1 %.not.i.i19, label %_ZNK2v88internal8compiler11NodeAuxDataIbXadL_ZNS1_16DefaultConstructIbEET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit.thread, label %.lr.ph40

.lr.ph40:                                         ; preds = %_ZN2v88internal8compiler11NodeAuxDataIbXadL_ZNS1_16DefaultConstructIbEET_PNS0_4ZoneEEEE3SetEPNS1_4NodeERKb.exit, %bb.y
  %.sroa.630.039.sink = phi ptr [ %i.dt, %bb.y ], [ %i.ds, %_ZN2v88internal8compiler11NodeAuxDataIbXadL_ZNS1_16DefaultConstructIbEET_PNS0_4ZoneEEEE3SetEPNS1_4NodeERKb.exit ] ; 4 uses
  %i.dt = load ptr, ptr %.sroa.630.039.sink, align 8 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.630.039.sink, i64 16 ; 2 uses
  %i.dv = load i32, ptr %i.du, align 8            ; 2 uses
  %i.dw = lshr i32 %i.dv, 1
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.630.039.sink, i64 24 ; 2 uses
  %i.dy = zext nneg i32 %i.dw to i64              ; 2 uses
  %i.dz = getelementptr inbounds nuw [24 x i8], ptr %i.dx, i64 %i.dy
  %i.ea = trunc i32 %i.dv to i1
  %i.eb = ptrtoint ptr %i.dz to i64
  %.v.v.i.i = select i1 %i.ea, i64 32, i64 16
  %.v.i.i = add i64 %.v.v.i.i, %i.eb
  %i.ec = inttoptr i64 %.v.i.i to ptr
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.dy
  %i.ee = call noundef zeroext i1 @_ZN2v88internal8compiler14NodeProperties13IsControlEdgeENS1_4EdgeE(ptr nonnull %.sroa.630.039.sink, ptr %i.ed) #10
  br i1 %i.ee, label %bb.r, label %bb.y

bb.r:                                             ; preds = %.lr.ph40
  %i.ef = load i32, ptr %i.du, align 8            ; 2 uses
  %i.eg = lshr i32 %i.ef, 1                       ; 2 uses
  %i.eh = zext nneg i32 %i.eg to i64
  %i.ei = getelementptr inbounds nuw [24 x i8], ptr %i.dx, i64 %i.eh ; 2 uses
  %i.ej = trunc i32 %i.ef to i1
  %i.ek = load ptr, ptr %i.ei, align 8            ; 3 uses
  br i1 %i.ej, label %_ZNK2v88internal8compiler4Edge4fromEv.exit, label %_ZNK2v88internal8compiler4Edge4fromEv.exit.thread

_ZNK2v88internal8compiler4Edge4fromEv.exit:       ; preds = %bb.r
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 36
  %i.em = load i32, ptr %i.el, align 4
  %i.en = icmp sgt i32 %i.em, 0
  br i1 %i.en, label %_ZNK2v88internal8compiler4Edge4fromEv.exit22, label %bb.y

_ZNK2v88internal8compiler4Edge4fromEv.exit.thread: ; preds = %bb.r
  %i.eo = load ptr, ptr %i.ek, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 36
  %i.eq = load i32, ptr %i.ep, align 4
  %i.er = icmp sgt i32 %i.eq, 0
  br i1 %i.er, label %_ZNK2v88internal8compiler4Edge4fromEv.exit22, label %bb.y

_ZNK2v88internal8compiler4Edge4fromEv.exit22:     ; preds = %_ZNK2v88internal8compiler4Edge4fromEv.exit.thread, %_ZNK2v88internal8compiler4Edge4fromEv.exit
  %i.es = phi ptr [ %i.ei, %_ZNK2v88internal8compiler4Edge4fromEv.exit ], [ %i.ek, %_ZNK2v88internal8compiler4Edge4fromEv.exit.thread ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store ptr %i.es, ptr %i.b, align 8
  %i.et = load ptr, ptr %i.es, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %i.ev = load i16, ptr %i.eu, align 8
  %3 = icmp ne i16 %i.ev, 1
  %4 = load i32, ptr %0, align 8
  %.not16.a = icmp eq i32 %i.eg, %4
  %or.cond = select i1 %3, i1 true, i1 %.not16.a
  br i1 %or.cond, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNK2v88internal8compiler4Edge4fromEv.exit22
  call void @_ZN2v88internal8compiler21LoopVariableOptimizer13VisitBackedgeEPNS1_4NodeES4_(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull %i.ae, ptr noundef nonnull %i.es)
  br label %bb.x

bb.t:                                             ; preds = %_ZNK2v88internal8compiler4Edge4fromEv.exit22
  %i.ew = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %i.ex = load i32, ptr %i.ew, align 8
  %i.ey = load i32, ptr %2, align 4
  %.not33.not = icmp ugt i32 %i.ex, %i.ey
  br i1 %.not33.not, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ez = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.fa = load ptr, ptr %i.k, align 8
  %i.fb = getelementptr inbounds i8, ptr %i.fa, i64 -8
  %.not.i.i23 = icmp eq ptr %i.ez, %i.fb
  br i1 %.not.i.i23, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  store ptr %i.es, ptr %i.ez, align 8
  %i.fc = load ptr, ptr %i.i, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  store ptr %i.fd, ptr %i.i, align 8
  br label %_ZNSt5queueIPN2v88internal8compiler4NodeENS1_9ZoneDequeIS4_EEE4pushERKS4_.exit

bb.w:                                             ; preds = %bb.u
  call void @_ZNSt5dequeIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE16_M_push_back_auxIJRKS4_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %_ZNSt5queueIPN2v88internal8compiler4NodeENS1_9ZoneDequeIS4_EEE4pushERKS4_.exit

_ZNSt5queueIPN2v88internal8compiler4NodeENS1_9ZoneDequeIS4_EEE4pushERKS4_.exit: ; preds = %bb.v, %bb.w
  %i.fe = load ptr, ptr %i.b, align 8
  %i.ff = load i32, ptr %2, align 4
  %i.fg = add i32 %i.ff, 1
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  store i32 %i.fg, ptr %i.fh, align 8
  br label %bb.x

bb.x:                                             ; preds = %bb.t, %_ZNSt5queueIPN2v88internal8compiler4NodeENS1_9ZoneDequeIS4_EEE4pushERKS4_.exit, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  br label %bb.y

bb.y:                                             ; preds = %_ZNK2v88internal8compiler4Edge4fromEv.exit.thread, %bb.x, %_ZNK2v88internal8compiler4Edge4fromEv.exit, %.lr.ph40
  %.not.i = icmp eq ptr %i.dt, null
  br i1 %.not.i, label %_ZNK2v88internal8compiler11NodeAuxDataIbXadL_ZNS1_16DefaultConstructIbEET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit.thread, label %.lr.ph40

_ZNK2v88internal8compiler11NodeAuxDataIbXadL_ZNS1_16DefaultConstructIbEET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit.thread: ; preds = %_ZN2v88internal8compiler14NodeProperties15GetControlInputEPNS1_4NodeEi.exit, %_ZNK2v88internal8compiler11NodeAuxDataIbXadL_ZNS1_16DefaultConstructIbEET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit, %bb.y, %_ZN2v88internal8compiler11NodeAuxDataIbXadL_ZNS1_16DefaultConstructIbEET_PNS0_4ZoneEEEE3SetEPNS1_4NodeERKb.exit
  %i.fi = load ptr, ptr %i.i, align 8
  %i.fj = load ptr, ptr %i.q, align 8             ; 2 uses
  %i.fk = icmp eq ptr %i.fi, %i.fj
  br i1 %i.fk, label %._crit_edge, label %bb.d

._crit_edge:                                      ; preds = %_ZNK2v88internal8compiler11NodeAuxDataIbXadL_ZNS1_16DefaultConstructIbEET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit.thread, %_ZNSt5queueIPN2v88internal8compiler4NodeENS1_9ZoneDequeIS4_EEE4pushEOS4_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.fm = load ptr, ptr %i.fl, align 8
  %.not.i.i.i24 = icmp eq ptr %i.fm, null
  br i1 %.not.i.i.i24, label %_ZNSt5queueIPN2v88internal8compiler4NodeENS1_9ZoneDequeIS4_EEED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %._crit_edge
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.fp = load ptr, ptr %i.fo, align 8            ; 2 uses
  %i.fq = load ptr, ptr %i.fn, align 8            ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.fs = icmp ult ptr %i.fp, %i.fr
  br i1 %i.fs, label %.lr.ph.i.i.i.i, label %_ZNSt11_Deque_baseIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE16_M_destroy_nodesEPPS4_S9_.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.z
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.pre.i.i.i.i = load ptr, ptr %i.ft, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNSt11_Deque_baseIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE18_M_deallocate_nodeEPS4_.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %i.fu = phi ptr [ %.pre.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.ga, %_ZNSt11_Deque_baseIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE18_M_deallocate_nodeEPS4_.exit.i.i.i.i ] ; 3 uses
  %.06.i.i.i.i = phi ptr [ %i.fp, %.lr.ph.i.i.i.i ], [ %i.gb, %_ZNSt11_Deque_baseIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE18_M_deallocate_nodeEPS4_.exit.i.i.i.i ] ; 3 uses
  %i.fv = load ptr, ptr %.06.i.i.i.i, align 8     ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.fu, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.fx = load i64, ptr %i.fw, align 8
  %.not7.i.i.i.i.i.i.i = icmp ugt i64 %i.fx, 64
  br i1 %.not7.i.i.i.i.i.i.i, label %_ZNSt11_Deque_baseIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE18_M_deallocate_nodeEPS4_.exit.i.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  store i64 64, ptr %i.fy, align 8
  %i.fz = load ptr, ptr %i.ft, align 8
  store ptr %i.fz, ptr %i.fv, align 8
  store ptr %i.fv, ptr %i.ft, align 8
  br label %_ZNSt11_Deque_baseIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE18_M_deallocate_nodeEPS4_.exit.i.i.i.i

_ZNSt11_Deque_baseIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE18_M_deallocate_nodeEPS4_.exit.i.i.i.i: ; preds = %bb.ac, %bb.ab
  %i.ga = phi ptr [ %i.fu, %bb.ab ], [ %i.fv, %bb.ac ]
  %i.gb = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.gc = icmp ult ptr %.06.i.i.i.i, %i.fq
  br i1 %i.gc, label %bb.aa, label %_ZNSt11_Deque_baseIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE16_M_destroy_nodesEPPS4_S9_.exit.i.i.i, !llvm.loop !15

_ZNSt11_Deque_baseIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE16_M_destroy_nodesEPPS4_S9_.exit.i.i.i: ; preds = %_ZNSt11_Deque_baseIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE18_M_deallocate_nodeEPS4_.exit.i.i.i.i, %bb.z
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ge = load i64, ptr %i.gd, align 8            ; 2 uses
  %i.gf = and i64 %i.ge, 2305843009213693950
  %i.gg = icmp eq i64 %i.gf, 0
  br i1 %i.gg, label %_ZNSt5queueIPN2v88internal8compiler4NodeENS1_9ZoneDequeIS4_EEED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt11_Deque_baseIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE16_M_destroy_nodesEPPS4_S9_.exit.i.i.i
  %i.gh = load ptr, ptr %i.fl, align 8            ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  store i64 %i.ge, ptr %i.gi, align 8
  store ptr null, ptr %i.gh, align 8
  br label %_ZNSt5queueIPN2v88internal8compiler4NodeENS1_9ZoneDequeIS4_EEED2Ev.exit

_ZNSt5queueIPN2v88internal8compiler4NodeENS1_9ZoneDequeIS4_EEED2Ev.exit: ; preds = %._crit_edge, %_ZNSt11_Deque_baseIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE16_M_destroy_nodesEPPS4_S9_.exit.i.i.i, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal9ZoneQueueIPNS0_8compiler4NodeEEC2EPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = sub i64 %i.b, %i.d
  %i.f = icmp ult i64 %i.e, 64
  br i1 %i.f, label %bb.b, label %bb.c, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %1, i64 noundef 64) #10
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.c, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %.pre.i.i.i.i.i.i.i, %bb.b ], [ %i.d, %bb.a ] ; 2 uses
  %i.h = inttoptr i64 %i.g to ptr                 ; 2 uses
  %i.i = add i64 %i.g, 64                         ; 3 uses
  store i64 %i.i, ptr %i.c, align 8
  %.06.i.i.ptr = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 3 uses
  %i.j = load i64, ptr %i.a, align 8
  %i.k = sub i64 %i.j, %i.i
  %i.l = icmp ult i64 %i.k, 512
  br i1 %i.l, label %bb.d, label %_ZNSt11_Deque_baseIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE16_M_allocate_nodeEv.exit.i.i, !prof !5

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %1, i64 noundef 512) #10
  %.pre.i.i.i.i.i.i.i.i = load i64, ptr %i.c, align 8
  br label %_ZNSt11_Deque_baseIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE16_M_allocate_nodeEv.exit.i.i

_ZNSt11_Deque_baseIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE16_M_allocate_nodeEv.exit.i.i: ; preds = %bb.c, %bb.d
  %i.m = phi i64 [ %.pre.i.i.i.i.i.i.i.i, %bb.d ], [ %i.i, %bb.c ] ; 2 uses
  %i.n = add i64 %i.m, 512
  store i64 %i.n, ptr %i.c, align 8
  %i.o = inttoptr i64 %i.m to ptr                 ; 6 uses
  store ptr %i.o, ptr %.06.i.i.ptr, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 512 ; 2 uses
  store ptr %1, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.6.0..sroa_idx, i8 0, i64 88, i1 false)
  tail call void @_ZNSt11_Deque_baseIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(96) %0, i64 noundef 0)
  %.sroa.0.i.i.i.i.i.i.sroa.0.0.copyload = load ptr, ptr %i.q, align 8 ; 3 uses
  %.sroa.0.i.i.i.i.i.i.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.0.i.i.i.i.i.i.sroa.4.0.copyload = load i64, ptr %.sroa.0.i.i.i.i.i.i.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  store ptr %i.h, ptr %i.q, align 8
  store i64 8, ptr %.sroa.0.i.i.i.i.i.i.sroa.4.0..sroa_idx, align 8
  %.sroa.21.16..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.o, ptr %.sroa.21.16..sroa_idx, align 8
  %.sroa.23.16..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.o, ptr %.sroa.23.16..sroa_idx, align 8
  %.sroa.25.16..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.p, ptr %.sroa.25.16..sroa_idx, align 8
  store ptr %.06.i.i.ptr, ptr %i.r, align 8
  %.sroa.30.16..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.o, ptr %.sroa.30.16..sroa_idx, align 8
  %.sroa.32.16..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.o, ptr %.sroa.32.16..sroa_idx, align 8
  %.sroa.34.16..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.p, ptr %.sroa.34.16..sroa_idx, align 8
  store ptr %.06.i.i.ptr, ptr %i.t, align 8
  %.not.i.i = icmp eq ptr %.sroa.0.i.i.i.i.i.i.sroa.0.0.copyload, null
  br i1 %.not.i.i, label %_ZNSt5dequeIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt11_Deque_baseIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE16_M_allocate_nodeEv.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = icmp ult ptr %i.s, %i.v
  br i1 %i.w, label %.lr.ph.i.i.i, label %_ZNSt11_Deque_baseIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE16_M_destroy_nodesEPPS4_S9_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %_ZNSt11_Deque_baseIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE18_M_deallocate_nodeEPS4_.exit.i.i.i
  %.sroa.6.0 = phi ptr [ %.sroa.6.1, %_ZNSt11_Deque_baseIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE18_M_deallocate_nodeEPS4_.exit.i.i.i ], [ null, %bb.e ] ; 2 uses
  %i.x = phi ptr [ %i.ac, %_ZNSt11_Deque_baseIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE18_M_deallocate_nodeEPS4_.exit.i.i.i ], [ null, %bb.e ] ; 3 uses
  %.06.i.i.i = phi ptr [ %i.ad, %_ZNSt11_Deque_baseIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE18_M_deallocate_nodeEPS4_.exit.i.i.i ], [ %i.s, %bb.e ] ; 3 uses
  %i.y = load ptr, ptr %.06.i.i.i, align 8        ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i
end_hunk_0
