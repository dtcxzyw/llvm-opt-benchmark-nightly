inline.NumInlined: 912
inline.NumDeleted: 390
begin_hunk_0_@_ZN2v88internal8compiler19RawMachineAssembler21ExportForOptimizationEv:bb.a

bb.f:                                             ; preds = %bb.e
  call void @_ZN2v84base14RecursiveMutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.am) #18, !inline_history !12
  br label %_ZN2v88internal12StdoutStreamD1Ev.exit2

_ZN2v88internal12StdoutStreamD1Ev.exit2:          ; preds = %bb.e, %bb.f
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN2v88internal12StdoutStreamE0_NS0_8OFStreamE, i64 24), ptr %2, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN2v88internal12StdoutStreamE0_NS0_8OFStreamE, i64 64), ptr %i.ac, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ao) #18, !inline_history !12
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ac) #18, !inline_history !12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal12StdoutStreamD1Ev.exit2, %bb.d
  call void @_ZN2v88internal8compiler19RawMachineAssembler17MakeReschedulableEv(ptr noundef nonnull align 8 dereferenceable(168) %0)
  store ptr null, ptr %i.q, align 8
  %i.ap = load ptr, ptr %i.t, align 8
  ret ptr %i.ap
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler19RawMachineAssembler19OptimizeControlFlowEPNS1_8ScheduleEPNS1_7TFGraphEPNS1_21CommonOperatorBuilderE(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"struct.std::array.511", align 8   ; 4 uses
  %4 = alloca %"struct.std::array.511", align 8   ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.pre = load ptr, ptr %i.a, align 8
  %.pre136 = load ptr, ptr %i.b, align 8
  br label %.preheader

.loopexit:                                        ; preds = %thread-pre-split.thread
  br i1 %.6, label %.preheader, label %.critedge, !llvm.loop !13

.preheader:                                       ; preds = %bb.a, %.loopexit
  %i.c = phi ptr [ %.pre136, %bb.a ], [ %i.ew, %.loopexit ] ; 2 uses
  %i.d = phi ptr [ %.pre, %bb.a ], [ %i.ev, %.loopexit ]
  %.not133 = icmp eq ptr %i.d, %i.c
  br i1 %.not133, label %.critedge, label %.lr.ph132

.critedge:                                        ; preds = %.preheader, %.loopexit
  ret void

.lr.ph132:                                        ; preds = %.preheader, %thread-pre-split.thread
  %i.e = phi ptr [ %i.ew, %thread-pre-split.thread ], [ %i.c, %.preheader ]
  %.1131 = phi i1 [ %.6, %thread-pre-split.thread ], [ false, %.preheader ] ; 7 uses
  %.0100130 = phi i64 [ %i.eu, %thread-pre-split.thread ], [ 0, %.preheader ] ; 10 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.0100130
  %i.g = load ptr, ptr %i.f, align 8              ; 18 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %thread-pre-split.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph132
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 52
  %i.j = load i32, ptr %i.i, align 4
  switch i32 %i.j, label %thread-pre-split.thread [
    i32 1, label %bb.c
    i32 3, label %bb.i
  ]

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 104 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = load ptr, ptr %i.l, align 8              ; 9 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 144
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 136
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %.not110 = icmp eq i64 %i.t, 8
  br i1 %.not110, label %bb.d, label %thread-pre-split.thread

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %.not125 = icmp eq ptr %i.v, %i.x
  br i1 %.not125, label %._crit_edge129, label %.lr.ph128

._crit_edge129:                                   ; preds = %.lr.ph128, %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 52
  %i.z = load i32, ptr %i.y, align 4
  call void @_ZN2v88internal8compiler10BasicBlock11set_controlENS2_7ControlE(ptr noundef nonnull align 8 dereferenceable(168) %i.g, i32 noundef %i.z) #18
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.ab = load ptr, ptr %i.aa, align 8            ; 3 uses
  call void @_ZN2v88internal8compiler10BasicBlock17set_control_inputEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(168) %i.g, ptr noundef %i.ab) #18
  %.not109 = icmp eq ptr %i.ab, null
  br i1 %.not109, label %bb.f, label %bb.e

.lr.ph128:                                        ; preds = %bb.d, %.lr.ph128
  %.0104126 = phi ptr [ %i.ad, %.lr.ph128 ], [ %i.v, %bb.d ] ; 2 uses
  %i.ac = load ptr, ptr %.0104126, align 8        ; 2 uses
  call void @_ZN2v88internal8compiler8Schedule15SetBlockForNodeEPNS1_10BasicBlockEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef null, ptr noundef %i.ac) #18
  call void @_ZN2v88internal8compiler8Schedule7AddNodeEPNS1_10BasicBlockEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull %i.g, ptr noundef %i.ac) #18
  %i.ad = getelementptr inbounds nuw i8, ptr %.0104126, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ad, %i.x
  br i1 %.not, label %._crit_edge129, label %.lr.ph128

bb.e:                                             ; preds = %._crit_edge129
  call void @_ZN2v88internal8compiler8Schedule15SetBlockForNodeEPNS1_10BasicBlockEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull %i.g, ptr noundef nonnull %i.ab) #18
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge129
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.af = load i8, ptr %i.ae, align 8, !range !10, !noundef !11
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i8 1, ptr %i.ah, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.ai = load ptr, ptr %i.k, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  store ptr %i.ai, ptr %i.aj, align 8
  call void @_ZN2v88internal8compiler8Schedule14MoveSuccessorsEPNS1_10BasicBlockES4_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull %i.m, ptr noundef nonnull %i.g) #18
  %i.ak = getelementptr inbounds nuw i8, ptr %i.m, i64 160
  %.sroa.0.0.copyload.i = load i64, ptr %i.ak, align 8
  call void @_ZN2v88internal8compiler8Schedule14ClearBlockByIdENS1_10BasicBlock2IdE(ptr noundef nonnull align 8 dereferenceable(120) %0, i64 %.sroa.0.0.copyload.i) #18
  %i.al = add i64 %.0100130, -1
  br label %thread-pre-split.thread

bb.i:                                             ; preds = %bb.b
  %i.am = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.ap = load ptr, ptr %i.ao, align 8            ; 2 uses
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = icmp eq i64 %i.as, 8
  br i1 %i.at, label %bb.j, label %thread-pre-split.thread

bb.j:                                             ; preds = %bb.i
  %i.au = load ptr, ptr %i.ap, align 8            ; 6 uses
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load i16, ptr %i.aw, align 8
  %.not111 = icmp eq i16 %i.ax, 36
  br i1 %.not111, label %bb.k, label %thread-pre-split.thread

bb.k:                                             ; preds = %bb.j
  %i.ay = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.az = load ptr, ptr %i.ay, align 8            ; 5 uses
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 20
  %i.bc = load i32, ptr %i.bb, align 4
  %i.bd = icmp sgt i32 %i.bc, 0
  br i1 %i.bd, label %bb.m, label %bb.l, !prof !6

bb.l:                                             ; preds = %bb.k
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.7) #19
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 20
  %i.bf = load i32, ptr %i.be, align 4
  %i.bg = and i32 %i.bf, 251658240
  %.not.i.i.i = icmp eq i32 %i.bg, 251658240
  %i.bh = ptrtoint ptr %i.az to i64
  %i.bi = add i64 %i.bh, 32
  %i.bj = inttoptr i64 %i.bi to ptr               ; 2 uses
  br i1 %.not.i.i.i, label %bb.n, label %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit

bb.n:                                             ; preds = %bb.m
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = add i64 %i.bl, 16
  %i.bn = inttoptr i64 %i.bm to ptr
  br label %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit

_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit: ; preds = %bb.m, %bb.n
  %.sink.i.i.i = phi ptr [ %i.bn, %bb.n ], [ %i.bj, %bb.m ]
  %i.bo = load ptr, ptr %.sink.i.i.i, align 8
  %.not112 = icmp eq ptr %i.bo, %i.au
  br i1 %.not112, label %bb.o, label %thread-pre-split.thread

bb.o:                                             ; preds = %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit
  %i.bp = call noundef i32 @_ZNK2v88internal8compiler4Node8UseCountEv(ptr noundef nonnull align 8 dereferenceable(32) %i.au) #18
  %.not113 = icmp eq i32 %i.bp, 1
  br i1 %.not113, label %bb.p, label %thread-pre-split.thread

bb.p:                                             ; preds = %bb.o
  %i.bq = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  %i.br = load ptr, ptr %i.bq, align 8            ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8            ; 5 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8            ; 5 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 72 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = load ptr, ptr %i.bw, align 8
  call void @_ZN2v88internal8compiler4Node4KillEv(ptr noundef nonnull align 8 dereferenceable(32) %i.bx) #18
  %i.by = load ptr, ptr %i.bv, align 8            ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bs, i64 80 ; 3 uses
  %i.ca = load ptr, ptr %i.bz, align 8            ; 2 uses
  %i.cb = icmp eq ptr %i.by, %i.ca
  br i1 %i.cb, label %_ZN2v88internal8compiler10BasicBlock10RemoveNodeEPPNS1_4NodeE.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 2 uses
  %i.cd = ptrtoint ptr %i.ca to i64
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = sub i64 %i.cd, %i.ce
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.by) ]
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.by, ptr nonnull align 8 %i.cc, i64 %i.cf, i1 false)
  %i.cg = load ptr, ptr %i.bz, align 8
  %i.ch = getelementptr inbounds i8, ptr %i.cg, i64 -8
  store ptr %i.ch, ptr %i.bz, align 8
  br label %_ZN2v88internal8compiler10BasicBlock10RemoveNodeEPPNS1_4NodeE.exit

_ZN2v88internal8compiler10BasicBlock10RemoveNodeEPPNS1_4NodeE.exit: ; preds = %bb.p, %bb.q
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bu, i64 72 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = load ptr, ptr %i.cj, align 8
  call void @_ZN2v88internal8compiler4Node4KillEv(ptr noundef nonnull align 8 dereferenceable(32) %i.ck) #18
  %i.cl = load ptr, ptr %i.ci, align 8            ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bu, i64 80 ; 3 uses
  %i.cn = load ptr, ptr %i.cm, align 8            ; 2 uses
  %i.co = icmp eq ptr %i.cl, %i.cn
  br i1 %i.co, label %_ZN2v88internal8compiler10BasicBlock10RemoveNodeEPPNS1_4NodeE.exit114, label %bb.r

bb.r:                                             ; preds = %_ZN2v88internal8compiler10BasicBlock10RemoveNodeEPPNS1_4NodeE.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 8 ; 2 uses
  %i.cq = ptrtoint ptr %i.cn to i64
  %i.cr = ptrtoint ptr %i.cp to i64
  %i.cs = sub i64 %i.cq, %i.cr
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cl) ]
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cl, ptr nonnull align 8 %i.cp, i64 %i.cs, i1 false)
  %i.ct = load ptr, ptr %i.cm, align 8
  %i.cu = getelementptr inbounds i8, ptr %i.ct, i64 -8
  store ptr %i.cu, ptr %i.cm, align 8
  br label %_ZN2v88internal8compiler10BasicBlock10RemoveNodeEPPNS1_4NodeE.exit114

_ZN2v88internal8compiler10BasicBlock10RemoveNodeEPPNS1_4NodeE.exit114: ; preds = %_ZN2v88internal8compiler10BasicBlock10RemoveNodeEPPNS1_4NodeE.exit, %bb.r
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bs, i64 136
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bs, i64 144
  store ptr %i.cw, ptr %i.cx, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bu, i64 136
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.bu, i64 144
  store ptr %i.cz, ptr %i.da, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  %i.dc = load ptr, ptr %i.db, align 8            ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.g, i64 136 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8            ; 2 uses
  %.not134 = icmp eq ptr %i.dc, %i.de
  br i1 %.not134, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN2v88internal8compiler10BasicBlock10RemoveNodeEPPNS1_4NodeE.exit114
  %i.df = ptrtoint ptr %i.dc to i64
  %i.dg = ptrtoint ptr %i.de to i64
  %i.dh = sub i64 %i.df, %i.dg
  %i.di = ashr exact i64 %i.dh, 3
  %i.dj = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.au, i64 20
  %i.dl = ptrtoint ptr %i.au to i64
  %i.dm = add i64 %i.dl, 32
  %i.dn = inttoptr i64 %i.dm to ptr               ; 2 uses
  br label %bb.s

._crit_edge:                                      ; preds = %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit118, %_ZN2v88internal8compiler10BasicBlock10RemoveNodeEPPNS1_4NodeE.exit114
  call void @_ZN2v88internal8compiler4Node4KillEv(ptr noundef nonnull align 8 dereferenceable(32) %i.az) #18
  %i.do = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  %.sroa.0.0.copyload.i115 = load i64, ptr %i.do, align 8
  call void @_ZN2v88internal8compiler8Schedule14ClearBlockByIdENS1_10BasicBlock2IdE(ptr noundef nonnull align 8 dereferenceable(120) %0, i64 %.sroa.0.0.copyload.i115) #18
  br label %thread-pre-split.thread

bb.s:                                             ; preds = %.lr.ph, %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit118
  %.0105124 = phi i64 [ 0, %.lr.ph ], [ %i.et, %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit118 ] ; 5 uses
  %i.dp = load ptr, ptr %i.dd, align 8
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %.0105124
  %i.dr = load ptr, ptr %i.dq, align 8            ; 5 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 104
  %i.dt = load ptr, ptr %i.ds, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 112
  store ptr %i.dt, ptr %i.du, align 8
  %i.dv = load i8, ptr %i.dj, align 8, !range !10, !noundef !11
  %i.dw = trunc nuw i8 %i.dv to i1
  br i1 %i.dw, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  store i8 1, ptr %i.dx, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.dy = call noundef ptr @_ZN2v88internal8compiler7TFGraph9CloneNodeEPKNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull %i.az) #18 ; 4 uses
  %exitcond.not = icmp eq i64 %.0105124, 2147483648
  br i1 %exitcond.not, label %bb.v, label %bb.w, !prof !5

bb.v:                                             ; preds = %bb.u
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.6) #19
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.dz = trunc i64 %.0105124 to i32
  %i.ea = load ptr, ptr %i.au, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 20
  %i.ec = load i32, ptr %i.eb, align 4
  %i.ed = icmp sgt i32 %i.ec, %i.dz
  br i1 %i.ed, label %bb.y, label %bb.x, !prof !6

bb.x:                                             ; preds = %bb.w
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.7) #19
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.ee = load i32, ptr %i.dk, align 4
  %i.ef = and i32 %i.ee, 251658240
  %.not.i.i.i116 = icmp eq i32 %i.ef, 251658240
  br i1 %.not.i.i.i116, label %bb.z, label %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit118

bb.z:                                             ; preds = %bb.y
  %i.eg = load ptr, ptr %i.dn, align 8
  %i.eh = ptrtoint ptr %i.eg to i64
  %i.ei = add i64 %i.eh, 16
  %i.ej = inttoptr i64 %i.ei to ptr
  br label %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit118

_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit118: ; preds = %bb.y, %bb.z
  %.sink.i.i.i117 = phi ptr [ %i.ej, %bb.z ], [ %i.dn, %bb.y ]
  %i.ek = and i64 %.0105124, 2147483647
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.i.i117, i64 %i.ek
  %i.em = load ptr, ptr %i.el, align 8
  call void @_ZN2v88internal8compiler14NodeProperties17ReplaceValueInputEPNS1_4NodeES4_i(ptr noundef %i.dy, ptr noundef %i.em, i32 noundef 0) #18
  %i.en = call noundef ptr @_ZN2v88internal8compiler8Schedule13NewBasicBlockEv(ptr noundef nonnull align 8 dereferenceable(120) %0) #18 ; 3 uses
  %i.eo = call noundef ptr @_ZN2v88internal8compiler8Schedule13NewBasicBlockEv(ptr noundef nonnull align 8 dereferenceable(120) %0) #18 ; 3 uses
  %i.ep = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder6IfTrueEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  store ptr %i.dy, ptr %4, align 8
  %i.eq = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef %i.ep, i32 noundef 1, ptr noundef nonnull %4, i1 noundef zeroext false) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @_ZN2v88internal8compiler10BasicBlock7AddNodeEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(168) %i.en, ptr noundef %i.eq) #18
  %i.er = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder7IfFalseEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  store ptr %i.dy, ptr %3, align 8
  %i.es = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef %i.er, i32 noundef 1, ptr noundef nonnull %3, i1 noundef zeroext false) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @_ZN2v88internal8compiler10BasicBlock7AddNodeEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(168) %i.eo, ptr noundef %i.es) #18
  call void @_ZN2v88internal8compiler8Schedule7AddGotoEPNS1_10BasicBlockES4_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull %i.en, ptr noundef nonnull %i.bs) #18
  call void @_ZN2v88internal8compiler8Schedule7AddGotoEPNS1_10BasicBlockES4_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull %i.eo, ptr noundef nonnull %i.bu) #18
  call void @_ZN2v88internal8compiler10BasicBlock11set_controlENS2_7ControlE(ptr noundef nonnull align 8 dereferenceable(168) %i.dr, i32 noundef 0) #18
  call void @_ZN2v88internal8compiler8Schedule9AddBranchEPNS1_10BasicBlockEPNS1_4NodeES4_S4_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull %i.dr, ptr noundef %i.dy, ptr noundef nonnull %i.en, ptr noundef nonnull %i.eo) #18
  %i.et = add nuw nsw i64 %.0105124, 1            ; 2 uses
  %exitcond135.not = icmp eq i64 %i.et, %i.di
  br i1 %exitcond135.not, label %._crit_edge, label %bb.s, !llvm.loop !14

thread-pre-split.thread:                          ; preds = %bb.b, %bb.c, %bb.h, %bb.i, %bb.j, %bb.o, %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit, %._crit_edge, %.lr.ph132
  %.3103 = phi i64 [ %i.al, %bb.h ], [ %.0100130, %.lr.ph132 ], [ %.0100130, %bb.j ], [ %.0100130, %._crit_edge ], [ %.0100130, %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit ], [ %.0100130, %bb.o ], [ %.0100130, %bb.i ], [ %.0100130, %bb.b ], [ %.0100130, %bb.c ]
  %.6 = phi i1 [ true, %bb.h ], [ %.1131, %.lr.ph132 ], [ %.1131, %bb.j ], [ true, %._crit_edge ], [ %.1131, %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit ], [ %.1131, %bb.o ], [ %.1131, %bb.i ], [ %.1131, %bb.b ], [ %.1131, %bb.c ] ; 2 uses
  %i.eu = add i64 %.3103, 1                       ; 2 uses
  %i.ev = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ew = load ptr, ptr %i.b, align 8             ; 3 uses
  %i.ex = ptrtoint ptr %i.ev to i64
  %i.ey = ptrtoint ptr %i.ew to i64
  %i.ez = sub i64 %i.ex, %i.ey
  %i.fa = ashr exact i64 %i.ez, 3
  %i.fb = icmp ult i64 %i.eu, %i.fa
  br i1 %i.fb, label %.lr.ph132, label %.loopexit, !llvm.loop !15
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler19RawMachineAssembler17MakeReschedulableEv(ptr noundef nonnull align 8 dereferenceable(168) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"struct.std::array.512", align 8   ; 5 uses
  %2 = alloca %"struct.std::array.513", align 8   ; 6 uses
  %3 = alloca %"struct.std::array.512", align 8   ; 5 uses
  %4 = alloca %"class.std::vector.479", align 8   ; 12 uses
  %5 = alloca %"class.std::vector.479", align 8   ; 14 uses
  %6 = alloca %"class.std::vector.489", align 8   ; 10 uses
  %7 = alloca %"class.std::vector.489", align 8   ; 9 uses
  %8 = alloca %"class.std::vector.479", align 8   ; 4 uses
  %9 = alloca %"class.std::vector.479", align 8   ; 4 uses
  %10 = alloca %"class.std::vector.479", align 8  ; 6 uses
  %11 = alloca %"class.std::vector.479", align 8  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 5 uses
  %i.j = ashr exact i64 %i.i, 3                   ; 3 uses
  %i.k = icmp ugt i64 %i.j, 1152921504606846975
  br i1 %i.k, label %bb.b, label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #19
  unreachable

_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIPN2v88internal8compiler4NodeESaIS4_EEC2EmRKS5_.exit.thread.i102, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #20 ; 6 uses
  store ptr %i.m, ptr %4, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.i
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.n, ptr %i.o, align 8
  store ptr null, ptr %i.m, align 8
  %i.p = getelementptr i8, ptr %i.m, i64 8        ; 3 uses
  %i.q = add nsw i64 %i.j, -1                     ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.d, label %_ZSt6fill_nIPPN2v88internal8compiler4NodeEmS4_ET_S6_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPPN2v88internal8compiler4NodeEmS4_ET_S6_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.q, 3   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i.i.i
  br label %bb.d

_ZNSt12_Vector_baseIPN2v88internal8compiler4NodeESaIS4_EEC2EmRKS5_.exit.thread.i102: ; preds = %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  br label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EEC2EmRKS5_.exit103

bb.d:                                             ; preds = %_ZSt6fill_nIPPN2v88internal8compiler4NodeEmS4_ET_S6_T0_RKT1_.exit.loopexit.i.i.i.i.i, %bb.c
  %.0.i.i.i.i.i.ph = phi ptr [ %i.s, %_ZSt6fill_nIPPN2v88internal8compiler4NodeEmS4_ET_S6_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i.i.i.ph, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
end_hunk_0
