inline.NumInlined: 898
inline.NumDeleted: 423
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN2v88internal8compiler19JSInliningHeuristic15InlineCandidateERKNS2_9CandidateEb:bb.a

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.31) #15
  unreachable

_ZNK2v88internal8compiler11OptionalRefINS1_16BytecodeArrayRefEE5valueEv.exit: ; preds = %bb.d
  store ptr %i.n, ptr %5, align 8
  %i.o = call noundef i32 @_ZNK2v88internal8compiler16BytecodeArrayRef6lengthEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #16
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 252 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4
  %i.r = add nsw i32 %i.q, %i.o
  store i32 %i.r, ptr %i.p, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %bb.ab

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.s = load ptr, ptr %i.m, align 8              ; 2 uses
  %.not.i.i.i.i56 = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i56, label %bb.g, label %_ZNK2v88internal8compiler11OptionalRefINS1_16BytecodeArrayRefEE5valueEv.exit57, !prof !8

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.31) #15
  unreachable

_ZNK2v88internal8compiler11OptionalRefINS1_16BytecodeArrayRefEE5valueEv.exit57: ; preds = %bb.f
  store ptr %i.s, ptr %6, align 8
  %i.t = call noundef i32 @_ZNK2v88internal8compiler16BytecodeArrayRef6lengthEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #16
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8
  %i.w = add nsw i32 %i.v, %i.t
  store i32 %i.w, ptr %i.u, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %bb.ab

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  %i.x = load ptr, ptr %i.i, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 20
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %bb.j, label %bb.i, !prof !5

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.36) #15
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 20 ; 4 uses
  %i.ac = load i32, ptr %i.ab, align 4            ; 2 uses
  %i.ad = and i32 %i.ac, 251658240
  %.not.i.i.i = icmp eq i32 %i.ad, 251658240
  %i.ae = ptrtoint ptr %i.i to i64
  %i.af = add i64 %i.ae, 32
  %i.ag = inttoptr i64 %i.af to ptr               ; 8 uses
  br i1 %.not.i.i.i, label %_ZNK2v88internal8compiler4Node10InputCountEv.exit, label %_ZNK2v88internal8compiler4Node10InputCountEv.exit.thread

_ZNK2v88internal8compiler4Node10InputCountEv.exit.thread: ; preds = %bb.j
  %i.ah = lshr i32 %i.ac, 24
  %i.ai = and i32 %i.ah, 15
  br label %bb.l

_ZNK2v88internal8compiler4Node10InputCountEv.exit: ; preds = %bb.j
  %i.aj = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = add i64 %i.ak, 16
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.ao = load i32, ptr %i.an, align 8            ; 2 uses
  %i.ap = icmp sgt i32 %i.ao, -1
  br i1 %i.ap, label %bb.l, label %bb.k, !prof !18

bb.k:                                             ; preds = %_ZNK2v88internal8compiler4Node10InputCountEv.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.50) #15
  unreachable

bb.l:                                             ; preds = %_ZNK2v88internal8compiler4Node10InputCountEv.exit.thread, %_ZNK2v88internal8compiler4Node10InputCountEv.exit
  %.in105 = phi ptr [ %i.ag, %_ZNK2v88internal8compiler4Node10InputCountEv.exit.thread ], [ %i.am, %_ZNK2v88internal8compiler4Node10InputCountEv.exit ]
  %i.aq = phi i32 [ %i.ai, %_ZNK2v88internal8compiler4Node10InputCountEv.exit.thread ], [ %i.ao, %_ZNK2v88internal8compiler4Node10InputCountEv.exit ] ; 6 uses
  %i.ar = load ptr, ptr %.in105, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 9 uses
  %.in.in = load ptr, ptr %i.as, align 8
  %.in = load ptr, ptr %.in.in, align 8
  %i.at = load ptr, ptr %.in, align 8             ; 3 uses
  %i.au = zext nneg i32 %i.aq to i64
  %i.av = shl nuw nsw i64 %i.au, 3                ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 3 uses
  %i.az = load i64, ptr %i.ay, align 8            ; 2 uses
  %i.ba = sub i64 %i.ax, %i.az
  %i.bb = icmp ugt i64 %i.av, %i.ba
  br i1 %i.bb, label %bb.m, label %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler4NodeEA_S5_EEPT_m.exit, !prof !8

bb.m:                                             ; preds = %bb.l
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.at, i64 noundef %i.av) #16
  %.pre.i.i = load i64, ptr %i.ay, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler4NodeEA_S5_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler4NodeEA_S5_EEPT_m.exit: ; preds = %bb.l, %bb.m
  %i.bc = phi i64 [ %.pre.i.i, %bb.m ], [ %i.az, %bb.l ] ; 2 uses
  %i.bd = inttoptr i64 %i.bc to ptr               ; 4 uses
  %i.be = add i64 %i.bc, %i.av
  store i64 %i.be, ptr %i.ay, align 8
  %.not75 = icmp eq i32 %i.aq, 0
  br i1 %.not75, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler4NodeEA_S5_EEPT_m.exit
  %wide.trip.count = zext nneg i32 %i.aq to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.bf = icmp eq i32 %i.aq, 1
  br i1 %i.bf, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod108 = trunc i32 %i.aq to i1
  tail call void @llvm.assume(i1 %lcmp.mod108)
  %i.bg = load i32, ptr %i.ab, align 4
  %i.bh = and i32 %i.bg, 251658240
  %.not.i.i.epil = icmp eq i32 %i.bh, 251658240
  br i1 %.not.i.i.epil, label %bb.n, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit.epil

bb.n:                                             ; preds = %.lr.ph.epil.preheader
  %i.bi = load ptr, ptr %i.ag, align 8
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = add i64 %i.bj, 16
  %i.bl = inttoptr i64 %i.bk to ptr
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit.epil

_ZNK2v88internal8compiler4Node7InputAtEi.exit.epil: ; preds = %bb.n, %.lr.ph.epil.preheader
  %.sink.i.i.epil = phi ptr [ %i.bl, %bb.n ], [ %i.ag, %.lr.ph.epil.preheader ]
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.i.epil, i64 %indvars.iv.epil.init
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv.epil.init
  store ptr %i.bn, ptr %i.bo, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit.epil, %._crit_edge.loopexit.unr-lcssa, %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler4NodeEA_S5_EEPT_m.exit
  call void @_ZN2v88internal8compiler19JSInliningHeuristic21CreateOrReuseDispatchEPNS1_4NodeES4_RKNS2_9CandidateEPS4_S8_S8_iPi(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef nonnull %i.i, ptr noundef %i.ar, ptr noundef nonnull align 8 dereferenceable(109) %1, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b, ptr noundef %i.bd, i32 noundef %i.aq, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  store ptr null, ptr %i.d, align 8
  %i.bp = call noundef zeroext i1 @_ZN2v88internal8compiler14NodeProperties17IsExceptionalCallEPNS1_4NodeEPS4_(ptr noundef nonnull %i.i, ptr noundef nonnull %i.d) #16
  %.pre = load i32, ptr %i.a, align 4             ; 16 uses
  br i1 %i.bp, label %bb.q, label %._crit_edge._crit_edge

._crit_edge._crit_edge:                           ; preds = %._crit_edge
  %.pre93 = sext i32 %.pre to i64
  %.pre94 = add nsw i32 %.pre, 1
  br label %bb.s

.lr.ph:                                           ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit.1, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %_ZNK2v88internal8compiler4Node7InputAtEi.exit.1 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %_ZNK2v88internal8compiler4Node7InputAtEi.exit.1 ]
  %i.bq = load i32, ptr %i.ab, align 4
  %i.br = and i32 %i.bq, 251658240
  %.not.i.i = icmp eq i32 %i.br, 251658240
  br i1 %.not.i.i, label %bb.o, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit

bb.o:                                             ; preds = %.lr.ph
  %i.bs = load ptr, ptr %i.ag, align 8
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = add i64 %i.bt, 16
  %i.bv = inttoptr i64 %i.bu to ptr
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit

_ZNK2v88internal8compiler4Node7InputAtEi.exit:    ; preds = %.lr.ph, %bb.o
  %.sink.i.i = phi ptr [ %i.bv, %bb.o ], [ %i.ag, %.lr.ph ]
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.i, i64 %indvars.iv
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv
  store ptr %i.bx, ptr %i.by, align 8
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.bz = load i32, ptr %i.ab, align 4
  %i.ca = and i32 %i.bz, 251658240
  %.not.i.i.1 = icmp eq i32 %i.ca, 251658240
  br i1 %.not.i.i.1, label %bb.p, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit.1

bb.p:                                             ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit
  %i.cb = load ptr, ptr %i.ag, align 8
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = add i64 %i.cc, 16
  %i.ce = inttoptr i64 %i.cd to ptr
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit.1

_ZNK2v88internal8compiler4Node7InputAtEi.exit.1:  ; preds = %bb.p, %_ZNK2v88internal8compiler4Node7InputAtEi.exit
  %.sink.i.i.1 = phi ptr [ %i.ce, %bb.p ], [ %i.ag, %_ZNK2v88internal8compiler4Node7InputAtEi.exit ]
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.i.1, i64 %indvars.iv.next
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv.next
  store ptr %i.cg, ptr %i.ch, align 8
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !19

bb.q:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  %i.ci = icmp sgt i32 %.pre, 0
  br i1 %i.ci, label %.lr.ph69, label %._crit_edge70

.lr.ph69:                                         ; preds = %bb.q
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %wide.trip.count81 = zext nneg i32 %.pre to i64
  br label %bb.r

._crit_edge70:                                    ; preds = %bb.r, %bb.q
  %i.ck = load ptr, ptr %i.as, align 8            ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder5MergeEi(ptr noundef nonnull align 8 dereferenceable(16) %i.cn, i32 noundef %.pre) #16
  %i.cp = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.cl, ptr noundef %i.co, i32 noundef %.pre, ptr noundef nonnull %i.e, i1 noundef zeroext false) #16 ; 2 uses
  %i.cq = sext i32 %.pre to i64                   ; 2 uses
  %i.cr = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.cq
  store ptr %i.cp, ptr %i.cr, align 8
  %i.cs = load ptr, ptr %i.as, align 8            ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder9EffectPhiEi(ptr noundef nonnull align 8 dereferenceable(16) %i.cv, i32 noundef %.pre) #16
  %i.cx = add nsw i32 %.pre, 1                    ; 3 uses
  %i.cy = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.ct, ptr noundef %i.cw, i32 noundef %i.cx, ptr noundef nonnull %i.e, i1 noundef zeroext false) #16
  %i.cz = load ptr, ptr %i.as, align 8            ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder3PhiENS0_21MachineRepresentationEi(ptr noundef nonnull align 8 dereferenceable(16) %i.dc, i8 noundef zeroext 9, i32 noundef %.pre) #16
  %i.de = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.da, ptr noundef %i.dd, i32 noundef %i.cx, ptr noundef nonnull %i.e, i1 noundef zeroext false) #16
  %i.df = load ptr, ptr %i.d, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8            ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 40
  %i.dk = load ptr, ptr %i.dj, align 8
  call void %i.dk(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, ptr noundef %i.df, ptr noundef %i.de, ptr noundef %i.cy, ptr noundef %i.cp) #16, !inline_history !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  br label %bb.s

bb.r:                                             ; preds = %.lr.ph69, %bb.r
  %indvars.iv78 = phi i64 [ 0, %.lr.ph69 ], [ %indvars.iv.next79, %bb.r ] ; 4 uses
  %i.dl = load ptr, ptr %i.as, align 8            ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.do = load ptr, ptr %i.dn, align 8
  %i.dp = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder9IfSuccessEv(ptr noundef nonnull align 8 dereferenceable(16) %i.do) #16
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv78
  %i.dr = load ptr, ptr %i.dq, align 8            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  store ptr %i.dr, ptr %4, align 8
  %i.ds = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.dm, ptr noundef %i.dp, i32 noundef 1, ptr noundef nonnull %4, i1 noundef zeroext false) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv78
  store ptr %i.ds, ptr %i.dt, align 8
  %i.du = load ptr, ptr %i.as, align 8            ; 2 uses
  %i.dv = load ptr, ptr %i.du, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8
  %i.dy = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder11IfExceptionEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dx) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  store ptr %i.dr, ptr %3, align 8
  store ptr %i.dr, ptr %i.cj, align 8
  %i.dz = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.dv, ptr noundef %i.dy, i32 noundef 2, ptr noundef nonnull %3, i1 noundef zeroext false) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv78
  store ptr %i.dz, ptr %i.ea, align 8
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1 ; 2 uses
  %exitcond82.not = icmp eq i64 %indvars.iv.next79, %wide.trip.count81
  br i1 %exitcond82.not, label %._crit_edge70, label %bb.r, !llvm.loop !21

bb.s:                                             ; preds = %._crit_edge._crit_edge, %._crit_edge70
  %.pre-phi95 = phi i32 [ %.pre94, %._crit_edge._crit_edge ], [ %i.cx, %._crit_edge70 ] ; 2 uses
  %.pre-phi = phi i64 [ %.pre93, %._crit_edge._crit_edge ], [ %i.cq, %._crit_edge70 ]
  %i.eb = load ptr, ptr %i.as, align 8            ; 2 uses
  %i.ec = load ptr, ptr %i.eb, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8
  %i.ef = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder5MergeEi(ptr noundef nonnull align 8 dereferenceable(16) %i.ee, i32 noundef %.pre) #16
  %i.eg = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.ec, ptr noundef %i.ef, i32 noundef %.pre, ptr noundef nonnull %i.c, i1 noundef zeroext false) #16 ; 2 uses
  %i.eh = getelementptr inbounds [8 x i8], ptr %i.b, i64 %.pre-phi
  store ptr %i.eg, ptr %i.eh, align 8
  %i.ei = load ptr, ptr %i.as, align 8            ; 2 uses
  %i.ej = load ptr, ptr %i.ei, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.el = load ptr, ptr %i.ek, align 8
  %i.em = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder9EffectPhiEi(ptr noundef nonnull align 8 dereferenceable(16) %i.el, i32 noundef %.pre) #16
  %i.en = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.ej, ptr noundef %i.em, i32 noundef %.pre-phi95, ptr noundef nonnull %i.b, i1 noundef zeroext false) #16
  %i.eo = load ptr, ptr %i.as, align 8            ; 2 uses
  %i.ep = load ptr, ptr %i.eo, align 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.er = load ptr, ptr %i.eq, align 8
  %i.es = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder3PhiENS0_21MachineRepresentationEi(ptr noundef nonnull align 8 dereferenceable(16) %i.er, i8 noundef zeroext 9, i32 noundef %.pre) #16
  %i.et = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.ep, ptr noundef %i.es, i32 noundef %.pre-phi95, ptr noundef nonnull %i.b, i1 noundef zeroext false) #16 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ev = load ptr, ptr %i.eu, align 8            ; 2 uses
  %i.ew = load ptr, ptr %i.ev, align 8
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 40
  %i.ey = load ptr, ptr %i.ex, align 8
  call void %i.ey(ptr noundef nonnull align 8 dereferenceable(8) %i.ev, ptr noundef nonnull %i.i, ptr noundef %i.et, ptr noundef %i.en, ptr noundef %i.eg) #16, !inline_history !20
  %i.ez = icmp sgt i32 %.pre, 0
  br i1 %i.ez, label %.lr.ph73, label %.critedge

.lr.ph73:                                         ; preds = %bb.s
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 4 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 252 ; 2 uses
  %wide.trip.count91 = zext nneg i32 %.pre to i64 ; 2 uses
  br i1 %2, label %.lr.ph73.split.us, label %.lr.ph73.split

.lr.ph73.split.us:                                ; preds = %.lr.ph73, %bb.w
  %indvars.iv88 = phi i64 [ %indvars.iv.next89, %bb.w ], [ 0, %.lr.ph73 ] ; 4 uses
  %i.fh = load i32, ptr %i.fa, align 8
  %i.fi = load i32, ptr %i.fb, align 8
  %i.fj = icmp slt i32 %i.fh, %i.fi
  br i1 %i.fj, label %bb.t, label %.critedge

bb.t:                                             ; preds = %.lr.ph73.split.us
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fc, i64 %indvars.iv88
  %i.fl = load i8, ptr %i.fk, align 1, !range !11, !noundef !12
  %i.fm = trunc nuw i8 %i.fl to i1
  br i1 %i.fm, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv88
  %i.fo = load ptr, ptr %i.fn, align 8            ; 2 uses
  %i.fp = call ptr @_ZN2v88internal8compiler9JSInliner12ReduceJSCallEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(88) %i.fe, ptr noundef %i.fo) #16
  %.not64.us = icmp eq ptr %i.fp, null
  br i1 %.not64.us, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %indvars.iv88
  %i.fr = load ptr, ptr %i.fq, align 8            ; 2 uses
  %.not.i.i.i.i58.us = icmp eq ptr %i.fr, null
  br i1 %.not.i.i.i.i58.us, label %.split.us, label %_ZNK2v88internal8compiler11OptionalRefINS1_16BytecodeArrayRefEE5valueEv.exit59.us, !prof !8

_ZNK2v88internal8compiler11OptionalRefINS1_16BytecodeArrayRefEE5valueEv.exit59.us: ; preds = %bb.v
  store ptr %i.fr, ptr %7, align 8
  %i.fs = call noundef i32 @_ZNK2v88internal8compiler16BytecodeArrayRef6lengthEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #16
  %i.ft = load i32, ptr %i.fg, align 4
  %i.fu = add nsw i32 %i.ft, %i.fs
  store i32 %i.fu, ptr %i.fg, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  call void @_ZN2v88internal8compiler4Node4KillEv(ptr noundef nonnull align 8 dereferenceable(32) %i.fo) #16
  br label %bb.w

bb.w:                                             ; preds = %_ZNK2v88internal8compiler11OptionalRefINS1_16BytecodeArrayRefEE5valueEv.exit59.us, %bb.u, %bb.t
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1 ; 2 uses
  %exitcond92.not = icmp eq i64 %indvars.iv.next89, %wide.trip.count91
  br i1 %exitcond92.not, label %.critedge, label %.lr.ph73.split.us, !llvm.loop !22

.lr.ph73.split:                                   ; preds = %.lr.ph73, %bb.aa
  %indvars.iv83 = phi i64 [ %indvars.iv.next84, %bb.aa ], [ 0, %.lr.ph73 ] ; 4 uses
  %i.fv = load i32, ptr %i.fa, align 8            ; 2 uses
  %i.fw = load i32, ptr %i.fb, align 8
  %i.fx = icmp slt i32 %i.fv, %i.fw
  br i1 %i.fx, label %bb.x, label %.critedge

.critedge:                                        ; preds = %.lr.ph73.split, %bb.aa, %.lr.ph73.split.us, %bb.w, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  br label %bb.ab

bb.x:                                             ; preds = %.lr.ph73.split
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fc, i64 %indvars.iv83
  %i.fz = load i8, ptr %i.fy, align 1, !range !11, !noundef !12
  %i.ga = trunc nuw i8 %i.fz to i1
  br i1 %i.ga, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.gb = load i32, ptr %i.fd, align 4
  %i.gc = icmp slt i32 %i.fv, %i.gb
  br i1 %i.gc, label %.thread, label %bb.aa

.thread:                                          ; preds = %bb.y
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv83
  %i.ge = load ptr, ptr %i.gd, align 8            ; 2 uses
  %i.gf = call ptr @_ZN2v88internal8compiler9JSInliner12ReduceJSCallEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(88) %i.fe, ptr noundef %i.ge) #16
  %.not = icmp eq ptr %i.gf, null
  br i1 %.not, label %bb.aa, label %.thread63

.split.us:                                        ; preds = %bb.v
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.31) #15
  unreachable

.thread63:                                        ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %indvars.iv83
end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler19JSInliningHeuristic15PrintCandidatesEv:bb.a
  unreachable

_ZNK2v88internal8compiler11OptionalRefINS1_16BytecodeArrayRefEEptEv.exit: ; preds = %bb.q
  store ptr %i.dc, ptr %3, align 8
  %i.dd = call noundef i32 @_ZNK2v88internal8compiler16BytecodeArrayRef6lengthEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #16
  %i.de = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.dd) #16 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  %i.df = load i64, ptr %i.cr, align 8            ; 2 uses
  %.not48 = icmp eq i64 %i.df, 0
  br i1 %.not48, label %bb.u, label %_ZNK2v88internal8compiler11OptionalRefINS1_13JSFunctionRefEEptEv.exit26

_ZNK2v88internal8compiler11OptionalRefINS1_13JSFunctionRefEEptEv.exit26: ; preds = %_ZNK2v88internal8compiler11OptionalRefINS1_16BytecodeArrayRefEEptEv.exit
  %i.dg = inttoptr i64 %i.df to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  store ptr %i.dg, ptr %4, align 8
  %i.dh = load ptr, ptr %i.ag, align 8
  %i.di = call ptr @_ZNK2v88internal8compiler13JSFunctionRef4codeEPNS1_12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %i.dh) #16 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %.not49 = icmp eq ptr %i.di, null
  br i1 %.not49, label %bb.u, label %_ZNK2v88internal8compiler11OptionalRefINS1_7CodeRefEEptEv.exit

_ZNK2v88internal8compiler11OptionalRefINS1_7CodeRefEEptEv.exit: ; preds = %_ZNK2v88internal8compiler11OptionalRefINS1_13JSFunctionRefEEptEv.exit26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  store ptr %i.di, ptr %5, align 8
  %i.dj = call noundef i32 @_ZNK2v88internal8compiler7CodeRef22GetInlinedBytecodeSizeEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #16 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %.not = icmp eq i32 %i.dj, 0
  br i1 %.not, label %bb.u, label %bb.s

bb.s:                                             ; preds = %_ZNK2v88internal8compiler11OptionalRefINS1_7CodeRefEEptEv.exit
  %i.dk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.17, i64 noundef 45) #16 ; 0 uses
  %i.dl = zext i32 %i.dj to i64
  %i.dm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.dl) #16 ; 0 uses
  br label %bb.u

bb.t:                                             ; preds = %_ZNK2v88internal8compiler11OptionalRefINS1_21SharedFunctionInfoRefEE5valueEv.exit
  %i.dn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.18, i64 noundef 13) #16 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %_ZNK2v88internal8compiler11OptionalRefINS1_16BytecodeArrayRefEEptEv.exit, %_ZNK2v88internal8compiler11OptionalRefINS1_7CodeRefEEptEv.exit, %bb.s, %_ZNK2v88internal8compiler11OptionalRefINS1_13JSFunctionRefEEptEv.exit26, %bb.t
  %i.do = load ptr, ptr %1, align 8
  %i.dp = getelementptr i8, ptr %i.do, i64 -24
  %i.dq = load i64, ptr %i.dp, align 8
  %i.dr = getelementptr inbounds i8, ptr %1, i64 %i.dq
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 240
  %i.dt = load ptr, ptr %i.ds, align 8            ; 6 uses
  %.not.i.i.i34 = icmp eq ptr %i.dt, null
  br i1 %.not.i.i.i34, label %bb.v, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i35

bb.v:                                             ; preds = %bb.u
  call void @_ZSt16__throw_bad_castv() #15
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i35: ; preds = %bb.u
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 56
  %i.dv = load i8, ptr %i.du, align 8
  %.not.i1.i.i36 = icmp eq i8 %i.dv, 0
  br i1 %.not.i1.i.i36, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i35
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 67
  %i.dx = load i8, ptr %i.dw, align 1
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit38

bb.x:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i35
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.dt) #16
  %i.dy = load ptr, ptr %i.dt, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 48
  %i.ea = load ptr, ptr %i.dz, align 8
  %i.eb = call noundef signext i8 %i.ea(ptr noundef nonnull align 8 dereferenceable(570) %i.dt, i8 noundef signext 10) #16, !inline_history !13
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit38

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit38: ; preds = %bb.w, %bb.x
  %.0.i.i.i37 = phi i8 [ %i.dx, %bb.w ], [ %i.eb, %bb.x ]
  %i.ec = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext %.0.i.i.i37) #16
  %i.ed = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ec) #16 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ee = load i32, ptr %i.br, align 8
  %i.ef = sext i32 %i.ee to i64
  %i.eg = icmp slt i64 %indvars.iv.next, %i.ef
  br i1 %i.eg, label %bb.l, label %._crit_edge, !llvm.loop !24
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull ptr @_ZN2v88internal8compiler19JSInliningHeuristic29DuplicateStateValuesAndRenameEPNS1_4NodeES4_S4_NS2_14StateCloneModeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(272) %0, ptr noundef nonnull %1, ptr nofree noundef readnone captures(address) %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZNK2v88internal8compiler4Node8UseCountEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #16
  %i.b = icmp sgt i32 %i.a, 1
  br i1 %i.b, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i32 %4, 1
  %i.d = select i1 %i.c, ptr %1, ptr null
  %i.e = ptrtoint ptr %1 to i64
  %i.f = add i64 %i.e, 32
  %i.g = inttoptr i64 %i.f to ptr                 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 224
  br label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit ], [ 0, %bb.b ] ; 7 uses
  %.030 = phi ptr [ %.2, %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit ], [ %i.d, %bb.b ] ; 5 uses
  %i.j = load i32, ptr %i.h, align 4              ; 2 uses
  %i.k = and i32 %i.j, 251658240
  %.not.i = icmp eq i32 %i.k, 251658240
  br i1 %.not.i, label %_ZNK2v88internal8compiler4Node10InputCountEv.exit, label %_ZNK2v88internal8compiler4Node10InputCountEv.exit.thread

_ZNK2v88internal8compiler4Node10InputCountEv.exit: ; preds = %bb.c
  %i.l = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i32, ptr %i.m, align 8
  %i.o = sext i32 %i.n to i64
  %i.p = icmp slt i64 %indvars.iv, %i.o
  br i1 %i.p, label %bb.e, label %bb.d

_ZNK2v88internal8compiler4Node10InputCountEv.exit.thread: ; preds = %bb.c
  %i.q = lshr i32 %i.j, 24
  %i.r = and i32 %i.q, 15
  %i.s = zext nneg i32 %i.r to i64
  %i.t = icmp samesign ult i64 %indvars.iv, %i.s
  br i1 %i.t, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK2v88internal8compiler4Node10InputCountEv.exit.thread, %_ZNK2v88internal8compiler4Node10InputCountEv.exit
  %.not = icmp eq ptr %.030, null
  %i.u = select i1 %.not, ptr %1, ptr %.030
  br label %bb.o

bb.e:                                             ; preds = %_ZNK2v88internal8compiler4Node10InputCountEv.exit
  %i.v = ptrtoint ptr %i.l to i64
  %i.w = add i64 %i.v, 16
  %.pre = inttoptr i64 %i.w to ptr
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit

_ZNK2v88internal8compiler4Node7InputAtEi.exit:    ; preds = %_ZNK2v88internal8compiler4Node10InputCountEv.exit.thread, %bb.e
  %.sink.i.i.pre-phi = phi ptr [ %i.g, %_ZNK2v88internal8compiler4Node10InputCountEv.exit.thread ], [ %.pre, %bb.e ]
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.i.pre-phi, i64 %indvars.iv
  %i.y = load ptr, ptr %i.x, align 8              ; 5 uses
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load i16, ptr %i.aa, align 8
  %i.ac = icmp eq i16 %i.ab, 43
  br i1 %i.ac, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit
  %i.ad = tail call noundef ptr @_ZN2v88internal8compiler19JSInliningHeuristic29DuplicateStateValuesAndRenameEPNS1_4NodeES4_S4_NS2_14StateCloneModeE(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef nonnull %i.y, ptr noundef %2, ptr noundef %3, i32 noundef %4)
  br label %bb.h

bb.g:                                             ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit
  %i.ae = icmp eq ptr %i.y, %2
  %. = select i1 %i.ae, ptr %3, ptr %i.y
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0 = phi ptr [ %i.ad, %bb.f ], [ %., %bb.g ]   ; 6 uses
  %.not33 = icmp eq ptr %.0, %i.y
  br i1 %.not33, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not34 = icmp eq ptr %.030, null
  br i1 %.not34, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.af = load ptr, ptr %i.i, align 8
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = tail call noundef ptr @_ZN2v88internal8compiler7TFGraph9CloneNodeEPKNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(104) %i.ag, ptr noundef nonnull %1) #16
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.1 = phi ptr [ %.030, %bb.i ], [ %i.ah, %bb.j ] ; 7 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.1, i64 20
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = and i32 %i.aj, 251658240
  %.not.i.i35 = icmp eq i32 %i.ak, 251658240
  %i.al = ptrtoint ptr %.1 to i64
  %i.am = add i64 %i.al, 32
  %i.an = inttoptr i64 %i.am to ptr               ; 2 uses
  br i1 %.not.i.i35, label %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i, label %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i

_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i: ; preds = %bb.k
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = add i64 %i.ap, 16
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8            ; 2 uses
  %.not.i36 = icmp eq ptr %i.at, %.0
  br i1 %.not.i36, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit, label %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i

_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i: ; preds = %bb.k
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8            ; 2 uses
  %.not18.i = icmp eq ptr %i.av, %.0
  br i1 %.not18.i, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit, label %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i

_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i: ; preds = %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i
  %i.aw = phi ptr [ %i.au, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i ], [ %i.as, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i ]
  %i.ax = phi ptr [ %i.av, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i ], [ %i.at, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i ] ; 2 uses
  %i.ay = phi ptr [ %.1, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i ], [ %i.ao, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i ]
  %i.az = xor i64 %indvars.iv, -1
  %i.ba = getelementptr inbounds [24 x i8], ptr %i.ay, i64 %i.az ; 2 uses
  %.not14.i = icmp eq ptr %i.ax, null
  br i1 %.not14.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i
  tail call void @_ZN2v88internal8compiler4Node9RemoveUseEPNS2_3UseE(ptr noundef nonnull align 8 dereferenceable(32) %i.ax, ptr noundef nonnull %i.ba) #16
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i
  store ptr %.0, ptr %i.aw, align 8
  %.not15.i = icmp eq ptr %.0, null
  br i1 %.not15.i, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN2v88internal8compiler4Node9AppendUseEPNS2_3UseE(ptr noundef nonnull align 8 dereferenceable(32) %.0, ptr noundef nonnull %i.ba) #16
  br label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit

_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit: ; preds = %bb.n, %bb.m, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i, %bb.h
  %.2 = phi ptr [ %.030, %bb.h ], [ %.1, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i ], [ %.1, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i ], [ %.1, %bb.m ], [ %.1, %bb.n ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %bb.c, !llvm.loop !25

bb.o:                                             ; preds = %bb.a, %bb.d
  %.031 = phi ptr [ %i.u, %bb.d ], [ %1, %bb.a ]
  ret ptr %.031
}

declare noundef i32 @_ZNK2v88internal8compiler4Node8UseCountEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef ptr @_ZNK2v88internal8compiler19JSInliningHeuristic5graphEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(272) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %i.b, align 8
  ret ptr %i.c
}

declare noundef ptr @_ZN2v88internal8compiler7TFGraph9CloneNodeEPKNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4
  %i.c = and i32 %i.b, 251658240
  %.not.i = icmp eq i32 %i.c, 251658240
  %i.d = ptrtoint ptr %0 to i64
  %i.e = add i64 %i.d, 32
  %i.f = inttoptr i64 %i.e to ptr                 ; 2 uses
  br i1 %.not.i, label %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit, label %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread

_ZN2v88internal8compiler4Node11GetInputPtrEi.exit: ; preds = %bb.a
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = add i64 %i.h, 16
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = sext i32 %1 to i64
  %i.l = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.k ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %.not = icmp eq ptr %i.m, %2
  br i1 %.not, label %bb.e, label %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit

_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread: ; preds = %bb.a
  %i.n = sext i32 %1 to i64
  %i.o = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.n ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %.not18 = icmp eq ptr %i.p, %2
  br i1 %.not18, label %bb.e, label %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit

_ZN2v88internal8compiler4Node9GetUsePtrEi.exit:   ; preds = %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread
  %i.q = phi ptr [ %i.o, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread ], [ %i.l, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit ]
  %i.r = phi ptr [ %i.p, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread ], [ %i.m, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit ] ; 2 uses
  %i.s = phi ptr [ %0, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread ], [ %i.g, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit ]
  %i.t = xor i32 %1, -1
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [24 x i8], ptr %i.s, i64 %i.u ; 2 uses
  %.not14 = icmp eq ptr %i.r, null
  br i1 %.not14, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit
  tail call void @_ZN2v88internal8compiler4Node9RemoveUseEPNS2_3UseE(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef %i.v) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit
  store ptr %2, ptr %i.q, align 8
  %.not15 = icmp eq ptr %2, null
  br i1 %.not15, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2v88internal8compiler4Node9AppendUseEPNS2_3UseE(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %i.v) #16
  br label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread, %bb.c, %bb.d, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN2v88internal8compiler19JSInliningHeuristic28DuplicateFrameStateAndRenameENS1_10FrameStateEPNS1_4NodeES5_NS2_14StateCloneModeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(272) %0, ptr nonnull %1, ptr nofree noundef readnone captures(address) %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZNK2v88internal8compiler4Node8UseCountEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #16
  %i.b = icmp sgt i32 %i.a, 1
  br i1 %i.b, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit31.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %4, 1                       ; 2 uses
  %spec.select = select i1 %.not, ptr %1, ptr null
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4
  %i.e = and i32 %i.d, 251658240
  %.not.i.i.i = icmp eq i32 %i.e, 251658240
  %i.f = ptrtoint ptr %1 to i64
  %i.g = add i64 %i.f, 32
  %i.h = inttoptr i64 %i.g to ptr                 ; 4 uses
  br i1 %.not.i.i.i, label %bb.c, label %_ZNK2v88internal8compiler10FrameState5stackEv.exit

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = add i64 %i.j, 16
  %i.l = inttoptr i64 %i.k to ptr
  br label %_ZNK2v88internal8compiler10FrameState5stackEv.exit

_ZNK2v88internal8compiler10FrameState5stackEv.exit: ; preds = %bb.b, %bb.c
  %.sink.i.i.i = phi ptr [ %i.l, %bb.c ], [ %i.h, %bb.b ]
  %i.m = getelementptr inbounds nuw i8, ptr %.sink.i.i.i, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = icmp eq ptr %i.n, %2
  br i1 %i.o, label %bb.d, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit

bb.d:                                             ; preds = %_ZNK2v88internal8compiler10FrameState5stackEv.exit
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call noundef ptr @_ZN2v88internal8compiler7TFGraph9CloneNodeEPKNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(104) %i.r, ptr noundef nonnull %1) #16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi ptr [ %1, %bb.d ], [ %i.s, %bb.e ]    ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0, i64 20
  %i.u = load i32, ptr %i.t, align 4
  %i.v = and i32 %i.u, 251658240
  %.not.i.i = icmp eq i32 %i.v, 251658240
  %i.w = ptrtoint ptr %.0 to i64
  %i.x = add i64 %i.w, 32
  %i.y = inttoptr i64 %i.x to ptr                 ; 2 uses
  br i1 %.not.i.i, label %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i, label %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i

_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i: ; preds = %bb.f
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = add i64 %i.aa, 16
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.ae, %3
  br i1 %.not.i, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit, label %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i

_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i: ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %.not18.i = icmp eq ptr %i.ag, %3
  br i1 %.not18.i, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit, label %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i

_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i: ; preds = %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i
  %i.ah = phi ptr [ %i.af, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i ], [ %i.ad, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i ]
  %i.ai = phi ptr [ %i.ag, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i ], [ %i.ae, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i ] ; 2 uses
  %i.aj = phi ptr [ %.0, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i ], [ %i.z, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i ]
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -72 ; 2 uses
  %.not14.i = icmp eq ptr %i.ai, null
  br i1 %.not14.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i
  tail call void @_ZN2v88internal8compiler4Node9RemoveUseEPNS2_3UseE(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, ptr noundef nonnull %i.ak) #16
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i
  store ptr %3, ptr %i.ah, align 8
  %.not15.i = icmp eq ptr %3, null
  br i1 %.not15.i, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN2v88internal8compiler4Node9AppendUseEPNS2_3UseE(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull %i.ak) #16
  br label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit

_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit: ; preds = %bb.i, %bb.h, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i, %_ZNK2v88internal8compiler10FrameState5stackEv.exit
  %.1 = phi ptr [ %spec.select, %_ZNK2v88internal8compiler10FrameState5stackEv.exit ], [ %.0, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i ], [ %.0, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i ], [ %.0, %bb.h ], [ %.0, %bb.i ] ; 3 uses
  %i.al = load i32, ptr %i.c, align 4
  %i.am = and i32 %i.al, 251658240
  %.not.i.i.i21 = icmp eq i32 %i.am, 251658240
  br i1 %.not.i.i.i21, label %bb.j, label %_ZNK2v88internal8compiler10FrameState6localsEv.exit

bb.j:                                             ; preds = %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit
  %i.an = load ptr, ptr %i.h, align 8
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = add i64 %i.ao, 16
  %i.aq = inttoptr i64 %i.ap to ptr
  br label %_ZNK2v88internal8compiler10FrameState6localsEv.exit
end_hunk_1
