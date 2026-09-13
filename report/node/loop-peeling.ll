Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/loop-peeling?download=true
inline.NumInlined: 407
inline.NumDeleted: 234
begin_hunk_0_@_ZN2v88internal8compiler10LoopPeeler4PeelEPNS1_8LoopTree4LoopE:bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i8 0, i64 24, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 60 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.t = load i32, ptr %i.s, align 8
  %i.u = sub nsw i32 %i.r, %i.t
  %i.v = shl i32 %i.u, 1
  %i.w = add i32 %i.v, 5
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  %i.x = load ptr, ptr %0, align 8
  call void @_ZN2v88internal8compiler14NodeMarkerBaseC2EPNS1_7TFGraphEj(ptr noundef nonnull align 8 dereferenceable(20) %2, ptr noundef %i.x, i32 noundef %i.w) #8
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.m, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 1, ptr %i.z, align 8
  %i.aa = load ptr, ptr %0, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder4DeadEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #8
  %i.ae = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.aa, ptr noundef %i.ad, i32 noundef 0, ptr noundef null, i1 noundef zeroext false) #8
  %i.af = load ptr, ptr %i.a, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 112
  %i.ah = load ptr, ptr %i.ag, align 8            ; 3 uses
  %i.ai = load i32, ptr %i.s, align 8             ; 2 uses
  %i.aj = sext i32 %i.ai to i64                   ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 4 uses
  %i.al = load i32, ptr %i.ak, align 4            ; 2 uses
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.am
  %.not175 = icmp eq i32 %i.ai, %i.al
  br i1 %.not175, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN2v88internal4Zone3NewINS0_8compiler19PeeledIterationImplEJRKPS1_EEEPT_DpOT0_.exit
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.aj
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit
  %.pre = load ptr, ptr %i.a, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 112
  %.pre201 = load ptr, ptr %.phi.trans.insert, align 8
  %.pre202 = load i32, ptr %i.ak, align 4
  %.pre206 = sext i32 %.pre202 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN2v88internal4Zone3NewINS0_8compiler19PeeledIterationImplEJRKPS1_EEEPT_DpOT0_.exit
  %.pre-phi = phi i64 [ %.pre206, %._crit_edge.loopexit ], [ %i.aj, %_ZN2v88internal4Zone3NewINS0_8compiler19PeeledIterationImplEJRKPS1_EEEPT_DpOT0_.exit ]
  %i.ap = phi ptr [ %.pre201, %._crit_edge.loopexit ], [ %i.ah, %_ZN2v88internal4Zone3NewINS0_8compiler19PeeledIterationImplEJRKPS1_EEEPT_DpOT0_.exit ] ; 2 uses
  %i.aq = load ptr, ptr %0, align 8
  %i.ar = load ptr, ptr %i.d, align 8
  %i.as = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %.pre-phi
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.au = load i32, ptr %i.at, align 8
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ba = load ptr, ptr %i.az, align 8
  call void @_ZN2v88internal8compiler10NodeCopier9CopyNodesIPPNS1_4NodeEEEvPNS1_7TFGraphEPNS0_4ZoneES5_NS_4base14iterator_rangeIT_EEPNS1_19SourcePositionTableEPNS1_15NodeOriginTableE(ptr noundef nonnull align 8 dereferenceable(20) %2, ptr noundef %i.aq, ptr noundef %i.ar, ptr noundef %i.ae, ptr %i.as, ptr %i.aw, ptr noundef %i.ay, ptr noundef %i.ba)
  %i.bb = load ptr, ptr %i.a, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 112
  %i.bd = load ptr, ptr %i.bc, align 8            ; 2 uses
  %i.be = load i32, ptr %i.s, align 8             ; 2 uses
  %i.bf = load i32, ptr %i.ak, align 4            ; 2 uses
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.bg ; 2 uses
  %.not18.i = icmp eq i32 %i.be, %i.bf
  br i1 %.not18.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %._crit_edge
  %i.bi = sext i32 %i.be to i64
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.bi ; 2 uses
  br label %.lr.ph.i

bb.d:                                             ; preds = %.lr.ph.i
  %i.bk = getelementptr inbounds nuw i8, ptr %.01219.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.bk, %i.bh
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.preheader.i
  %.01219.i = phi ptr [ %i.bk, %bb.d ], [ %i.bj, %.lr.ph.preheader.i ] ; 2 uses
  %i.bl = load ptr, ptr %.01219.i, align 8        ; 6 uses
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load i16, ptr %i.bn, align 8
  %.not15.i = icmp eq i16 %i.bo, 1
  br i1 %.not15.i, label %_ZN2v88internal8compiler8LoopTree14GetLoopControlEPKNS2_4LoopE.exit, label %bb.d

._crit_edge.i:                                    ; preds = %bb.d, %._crit_edge
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.3) #9
  unreachable

_ZN2v88internal8compiler8LoopTree14GetLoopControlEPKNS2_4LoopE.exit: ; preds = %.lr.ph.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 20 ; 4 uses
  %i.bq = load i32, ptr %i.bp, align 4            ; 2 uses
  %i.br = and i32 %i.bq, 251658240
  %.not.i101 = icmp eq i32 %i.br, 251658240
  br i1 %.not.i101, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal8compiler8LoopTree14GetLoopControlEPKNS2_4LoopE.exit
  %i.bs = lshr i32 %i.bq, 24
  %i.bt = and i32 %i.bs, 15
  br label %_ZNK2v88internal8compiler4Node10InputCountEv.exit

bb.f:                                             ; preds = %_ZN2v88internal8compiler8LoopTree14GetLoopControlEPKNS2_4LoopE.exit
  %i.bu = ptrtoint ptr %i.bl to i64
  %i.bv = add i64 %i.bu, 32
  %i.bw = inttoptr i64 %i.bv to ptr
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load i32, ptr %i.by, align 8
  br label %_ZNK2v88internal8compiler4Node10InputCountEv.exit

_ZNK2v88internal8compiler4Node10InputCountEv.exit: ; preds = %bb.e, %bb.f
  %i.ca = phi i32 [ %i.bt, %bb.e ], [ %i.bz, %bb.f ] ; 3 uses
  %i.cb = add i32 %i.ca, -1                       ; 4 uses
  %i.cc = icmp sgt i32 %i.ca, 2
  br i1 %i.cc, label %bb.h, label %.lr.ph179

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNK2v88internal8compiler4Node7InputAtEi.exit
  %.092176 = phi ptr [ %i.cp, %_ZNK2v88internal8compiler4Node7InputAtEi.exit ], [ %i.ao, %.lr.ph.preheader ] ; 2 uses
  %i.cd = load ptr, ptr %.092176, align 8         ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 20
  %i.cf = load i32, ptr %i.ce, align 4
  %i.cg = and i32 %i.cf, 251658240
  %.not.i.i = icmp eq i32 %i.cg, 251658240
  %i.ch = ptrtoint ptr %i.cd to i64
  %i.ci = add i64 %i.ch, 32
  %i.cj = inttoptr i64 %i.ci to ptr               ; 2 uses
  br i1 %.not.i.i, label %bb.g, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit

bb.g:                                             ; preds = %.lr.ph
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = ptrtoint ptr %i.ck to i64
  %i.cm = add i64 %i.cl, 16
  %i.cn = inttoptr i64 %i.cm to ptr
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit

_ZNK2v88internal8compiler4Node7InputAtEi.exit:    ; preds = %.lr.ph, %bb.g
  %.sink.i.i = phi ptr [ %i.cn, %bb.g ], [ %i.cj, %.lr.ph ]
  %i.co = load ptr, ptr %.sink.i.i, align 8
  call void @_ZN2v88internal8compiler10NodeCopier6InsertEPNS1_4NodeES4_(ptr noundef nonnull align 8 dereferenceable(20) %2, ptr noundef nonnull %i.cd, ptr noundef %i.co) #8
  %i.cp = getelementptr inbounds nuw i8, ptr %.092176, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.cp, %i.an
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph

bb.h:                                             ; preds = %_ZNK2v88internal8compiler4Node10InputCountEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  %i.cq = load ptr, ptr %i.d, align 8
  store ptr %i.cq, ptr %3, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cr, i8 0, i64 24, i1 false)
  %i.cs = ptrtoint ptr %i.bl to i64
  %i.ct = add i64 %i.cs, 32
  %i.cu = inttoptr i64 %i.ct to ptr               ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 10 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  br label %bb.i

bb.i:                                             ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE9push_backEOS4_.exit, %bb.h
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE9push_backEOS4_.exit ], [ 1, %bb.h ] ; 4 uses
  %i.cx = load i32, ptr %i.bp, align 4            ; 2 uses
  %i.cy = and i32 %i.cx, 251658240
  %.not.i102 = icmp eq i32 %i.cy, 251658240
  br i1 %.not.i102, label %_ZNK2v88internal8compiler4Node10InputCountEv.exit103, label %_ZNK2v88internal8compiler4Node10InputCountEv.exit103.thread

_ZNK2v88internal8compiler4Node10InputCountEv.exit103: ; preds = %bb.i
  %i.cz = load ptr, ptr %i.cu, align 8            ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.db = load i32, ptr %i.da, align 8
  %i.dc = sext i32 %i.db to i64
  %i.dd = icmp slt i64 %indvars.iv, %i.dc
  br i1 %i.dd, label %bb.k, label %bb.j

_ZNK2v88internal8compiler4Node10InputCountEv.exit103.thread: ; preds = %bb.i
  %i.de = lshr i32 %i.cx, 24
  %i.df = and i32 %i.de, 15
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = icmp samesign ult i64 %indvars.iv, %i.dg
  br i1 %i.dh, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit108, label %bb.j

bb.j:                                             ; preds = %_ZNK2v88internal8compiler4Node10InputCountEv.exit103.thread, %_ZNK2v88internal8compiler4Node10InputCountEv.exit103
  %i.di = load ptr, ptr %0, align 8
  %i.dj = load ptr, ptr %i.ab, align 8
  %i.dk = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder5MergeEi(ptr noundef nonnull align 8 dereferenceable(16) %i.dj, i32 noundef %i.cb) #8
  %i.dl = load ptr, ptr %i.cr, align 8
  %i.dm = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.di, ptr noundef %i.dk, i32 noundef %i.cb, ptr noundef nonnull %i.dl, i1 noundef zeroext false) #8 ; 2 uses
  %i.dn = load ptr, ptr %i.a, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 112
  %i.dp = load ptr, ptr %i.do, align 8            ; 2 uses
  %i.dq = load i32, ptr %i.s, align 8             ; 2 uses
  %i.dr = load i32, ptr %i.ak, align 4            ; 2 uses
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr inbounds [8 x i8], ptr %i.dp, i64 %i.ds
  %.not95187 = icmp eq i32 %i.dq, %i.dr
  br i1 %.not95187, label %._crit_edge191, label %.lr.ph190

.lr.ph190:                                        ; preds = %bb.j
  %i.du = sext i32 %i.dq to i64
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.dp, i64 %i.du
  %smax = call i32 @llvm.smax.i32(i32 %i.cb, i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %bb.m

bb.k:                                             ; preds = %_ZNK2v88internal8compiler4Node10InputCountEv.exit103
  %i.dw = ptrtoint ptr %i.cz to i64
  %i.dx = add i64 %i.dw, 16
  %.pre207 = inttoptr i64 %i.dx to ptr
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit108

_ZNK2v88internal8compiler4Node7InputAtEi.exit108: ; preds = %_ZNK2v88internal8compiler4Node10InputCountEv.exit103.thread, %bb.k
  %.sink.i.i107.pre-phi = phi ptr [ %i.cu, %_ZNK2v88internal8compiler4Node10InputCountEv.exit103.thread ], [ %.pre207, %bb.k ]
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.i107.pre-phi, i64 %indvars.iv
  %i.dz = load ptr, ptr %i.dy, align 8
  %i.ea = call noundef ptr @_ZN2v88internal8compiler10NodeCopier3mapEPNS1_4NodeEj(ptr noundef nonnull align 8 dereferenceable(20) %2, ptr noundef %i.dz, i32 noundef 0) #8
  %i.eb = load ptr, ptr %i.cv, align 8            ; 2 uses
  %i.ec = load ptr, ptr %i.cw, align 8            ; 2 uses
  %i.ed = icmp ult ptr %i.eb, %i.ec
  br i1 %i.ed, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE9push_backEOS4_.exit, label %bb.l, !prof !8

bb.l:                                             ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit108
  %i.ee = load ptr, ptr %i.cr, align 8
  %i.ef = ptrtoint ptr %i.ec to i64
  %i.eg = ptrtoint ptr %i.ee to i64
  %i.eh = sub i64 %i.ef, %i.eg
  %i.ei = ashr exact i64 %i.eh, 3
  %i.ej = add nsw i64 %i.ei, 1
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.ej)
  %.pre.i.i109 = load ptr, ptr %i.cv, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE9push_backEOS4_.exit

_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE9push_backEOS4_.exit: ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit108, %bb.l
  %i.ek = phi ptr [ %i.eb, %_ZNK2v88internal8compiler4Node7InputAtEi.exit108 ], [ %.pre.i.i109, %bb.l ] ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  store ptr %i.el, ptr %i.cv, align 8
  store ptr %i.ea, ptr %i.ek, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %bb.i, !llvm.loop !10

._crit_edge191:                                   ; preds = %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  br label %bb.ab

bb.m:                                             ; preds = %.lr.ph190, %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit
  %.089188 = phi ptr [ %i.dv, %.lr.ph190 ], [ %i.gx, %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit ] ; 2 uses
  %i.em = load ptr, ptr %.089188, align 8         ; 7 uses
  %i.en = load ptr, ptr %i.em, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %i.ep = load i16, ptr %i.eo, align 8
  %i.eq = icmp eq i16 %i.ep, 1
  br i1 %i.eq, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit, label %.lr.ph183

.lr.ph183:                                        ; preds = %bb.m
  %i.er = load ptr, ptr %i.cr, align 8
  store ptr %i.er, ptr %i.cv, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.em, i64 20
  %i.et = ptrtoint ptr %i.em to i64
  %i.eu = add i64 %i.et, 32
  %i.ev = inttoptr i64 %i.eu to ptr               ; 2 uses
  br label %bb.n

._crit_edge184:                                   ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE9push_backEOS4_.exit114
  %.pre204 = load ptr, ptr %i.cr, align 8         ; 4 uses
  %.pre205 = load ptr, ptr %i.cv, align 8         ; 4 uses
  %.not97185 = icmp eq ptr %.pre204, %.pre205
  br i1 %.not97185, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit, label %.critedge.lr.ph

.critedge.lr.ph:                                  ; preds = %._crit_edge184
  %i.ew = load ptr, ptr %.pre204, align 8
  br label %.critedge

bb.n:                                             ; preds = %.lr.ph183, %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE9push_backEOS4_.exit114
  %indvars.iv198 = phi i64 [ 0, %.lr.ph183 ], [ %indvars.iv.next199, %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE9push_backEOS4_.exit114 ]
  %indvars.iv.next199 = add nuw nsw i64 %indvars.iv198, 1 ; 3 uses
  %i.ex = load i32, ptr %i.es, align 4
  %i.ey = and i32 %i.ex, 251658240
  %.not.i.i110 = icmp eq i32 %i.ey, 251658240
  br i1 %.not.i.i110, label %bb.o, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit112

bb.o:                                             ; preds = %bb.n
  %i.ez = load ptr, ptr %i.ev, align 8
  %i.fa = ptrtoint ptr %i.ez to i64
  %i.fb = add i64 %i.fa, 16
  %i.fc = inttoptr i64 %i.fb to ptr
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit112

_ZNK2v88internal8compiler4Node7InputAtEi.exit112: ; preds = %bb.n, %bb.o
  %.sink.i.i111 = phi ptr [ %i.fc, %bb.o ], [ %i.ev, %bb.n ]
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.i111, i64 %indvars.iv.next199
  %i.fe = load ptr, ptr %i.fd, align 8
  %i.ff = call noundef ptr @_ZN2v88internal8compiler10NodeCopier3mapEPNS1_4NodeEj(ptr noundef nonnull align 8 dereferenceable(20) %2, ptr noundef %i.fe, i32 noundef 0) #8
  %i.fg = load ptr, ptr %i.cv, align 8            ; 2 uses
  %i.fh = load ptr, ptr %i.cw, align 8            ; 2 uses
  %i.fi = icmp ult ptr %i.fg, %i.fh
  br i1 %i.fi, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE9push_backEOS4_.exit114, label %bb.p, !prof !8

bb.p:                                             ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit112
  %i.fj = load ptr, ptr %i.cr, align 8
  %i.fk = ptrtoint ptr %i.fh to i64
  %i.fl = ptrtoint ptr %i.fj to i64
  %i.fm = sub i64 %i.fk, %i.fl
  %i.fn = ashr exact i64 %i.fm, 3
  %i.fo = add nsw i64 %i.fn, 1
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.fo)
  %.pre.i.i113 = load ptr, ptr %i.cv, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE9push_backEOS4_.exit114

_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE9push_backEOS4_.exit114: ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit112, %bb.p
  %i.fp = phi ptr [ %i.fg, %_ZNK2v88internal8compiler4Node7InputAtEi.exit112 ], [ %.pre.i.i113, %bb.p ] ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  store ptr %i.fq, ptr %i.cv, align 8
  store ptr %i.ff, ptr %i.fp, align 8
  %exitcond.not = icmp eq i64 %indvars.iv.next199, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge184, label %bb.n, !llvm.loop !11

bb.q:                                             ; preds = %.critedge
  %i.fr = getelementptr inbounds nuw i8, ptr %.086186, i64 8 ; 2 uses
  %.not97 = icmp eq ptr %i.fr, %.pre205
  br i1 %.not97, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit, label %.critedge

.critedge:                                        ; preds = %.critedge.lr.ph, %bb.q
  %.086186 = phi ptr [ %.pre204, %.critedge.lr.ph ], [ %i.fr, %bb.q ] ; 2 uses
  %i.fs = load ptr, ptr %.086186, align 8
  %.not98 = icmp eq ptr %i.fs, %i.ew
  br i1 %.not98, label %bb.q, label %bb.r

bb.r:                                             ; preds = %.critedge
  %i.ft = load ptr, ptr %i.cw, align 8            ; 2 uses
  %i.fu = icmp ult ptr %.pre205, %i.ft
  br i1 %i.fu, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE9push_backERKS4_.exit, label %bb.s, !prof !8

bb.s:                                             ; preds = %bb.r
  %i.fv = ptrtoint ptr %i.ft to i64
  %i.fw = ptrtoint ptr %.pre204 to i64
  %i.fx = sub i64 %i.fv, %i.fw
  %i.fy = ashr exact i64 %i.fx, 3
  %i.fz = add nsw i64 %i.fy, 1
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.fz)
  %.pre.i = load ptr, ptr %i.cv, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE9push_backERKS4_.exit

_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE9push_backERKS4_.exit: ; preds = %bb.r, %bb.s
  %i.ga = phi ptr [ %.pre205, %bb.r ], [ %.pre.i, %bb.s ] ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  store ptr %i.gb, ptr %i.cv, align 8
  store ptr %i.dm, ptr %i.ga, align 8
  %i.gc = load ptr, ptr %i.ab, align 8
  %i.gd = load ptr, ptr %i.em, align 8
  %i.ge = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder16ResizeMergeOrPhiEPKNS1_8OperatorEi(ptr noundef nonnull align 8 dereferenceable(16) %i.gc, ptr noundef %i.gd, i32 noundef %i.cb) #8
  %i.gf = load ptr, ptr %0, align 8
  %i.gg = load ptr, ptr %i.cr, align 8
  %i.gh = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.gf, ptr noundef %i.ge, i32 noundef %i.ca, ptr noundef nonnull %i.gg, i1 noundef zeroext false) #8 ; 5 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.em, i64 20
  %i.gj = load i32, ptr %i.gi, align 4
  %i.gk = and i32 %i.gj, 251658240
  %.not.i.i115 = icmp eq i32 %i.gk, 251658240
  %i.gl = ptrtoint ptr %i.em to i64
  %i.gm = add i64 %i.gl, 32
  %i.gn = inttoptr i64 %i.gm to ptr               ; 2 uses
  %i.go = load ptr, ptr %i.gn, align 8            ; 4 uses
  br i1 %.not.i.i115, label %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i, label %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i

_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i: ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE9push_backERKS4_.exit
  %i.gp = ptrtoint ptr %i.go to i64
  %i.gq = add i64 %i.gp, 16
  %i.gr = inttoptr i64 %i.gq to ptr               ; 2 uses
  %i.gs = load ptr, ptr %i.gr, align 8            ; 2 uses
  %.not.i118 = icmp eq ptr %i.gs, %i.gh
  br i1 %.not.i118, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit, label %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i

_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i: ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE9push_backERKS4_.exit
  %.not18.i116 = icmp eq ptr %i.go, %i.gh
  br i1 %.not18.i116, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit, label %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i

_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i: ; preds = %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i
  %i.gt = phi ptr [ %i.gn, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i ], [ %i.gr, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i ]
  %i.gu = phi ptr [ %i.go, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i ], [ %i.gs, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i ] ; 2 uses
  %i.gv = phi ptr [ %i.em, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i ], [ %i.go, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i ]
  %i.gw = getelementptr inbounds i8, ptr %i.gv, i64 -24 ; 2 uses
  %.not14.i = icmp eq ptr %i.gu, null
  br i1 %.not14.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i
  call void @_ZN2v88internal8compiler4Node9RemoveUseEPNS2_3UseE(ptr noundef nonnull align 8 dereferenceable(32) %i.gu, ptr noundef nonnull %i.gw) #8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i
  store ptr %i.gh, ptr %i.gt, align 8
  %.not15.i117 = icmp eq ptr %i.gh, null
  br i1 %.not15.i117, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_ZN2v88internal8compiler4Node9AppendUseEPNS2_3UseE(ptr noundef nonnull align 8 dereferenceable(32) %i.gh, ptr noundef nonnull %i.gw) #8
  br label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit

_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit: ; preds = %bb.q, %._crit_edge184, %bb.v, %bb.u, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i, %bb.m
  %i.gx = getelementptr inbounds nuw i8, ptr %.089188, i64 8 ; 2 uses
  %.not95 = icmp eq ptr %i.gx, %i.dt
  br i1 %.not95, label %._crit_edge191, label %bb.m

._crit_edge180:                                   ; preds = %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit135
  %.pre203 = load i32, ptr %i.bp, align 4
end_hunk_0
begin_hunk_1_@_ZNSt5dequeIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE17_M_reallocate_mapEmb:bb.a
bb.n:                                             ; preds = %bb.m
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.ao, i64 noundef %i.aq) #8
  %.pre.i.i.i.i.i.i = load i64, ptr %i.at, align 8
  br label %_ZNSt11_Deque_baseIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE15_M_allocate_mapEm.exit

_ZNSt11_Deque_baseIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE15_M_allocate_mapEm.exit: ; preds = %bb.m, %bb.n
  %i.ax = phi i64 [ %.pre.i.i.i.i.i.i, %bb.n ], [ %i.au, %bb.m ] ; 2 uses
  %i.ay = inttoptr i64 %i.ax to ptr               ; 2 uses
  %i.az = add i64 %i.ax, %i.aq
  store i64 %i.az, ptr %i.at, align 8
  %i.ba = sub i64 %i.an, %i.k
  %i.bb = lshr i64 %i.ba, 1
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bb
  %i.bd = select i1 %2, i64 %1, i64 0
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bd ; 3 uses
  %i.bf = load ptr, ptr %i.d, align 8             ; 3 uses
  %i.bg = load ptr, ptr %i.b, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = ptrtoint ptr %i.bf to i64
  %i.bk = sub i64 %i.bi, %i.bj                    ; 3 uses
  %i.bl = icmp sgt i64 %i.bk, 8
  br i1 %i.bl, label %bb.o, label %bb.p, !prof !8

bb.o:                                             ; preds = %_ZNSt11_Deque_baseIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE15_M_allocate_mapEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.be, ptr align 8 %i.bf, i64 %i.bk, i1 false)
  br label %_ZSt4copyIPPPN2v88internal8compiler4NodeES6_ET0_T_S8_S7_.exit24

bb.p:                                             ; preds = %_ZNSt11_Deque_baseIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE15_M_allocate_mapEm.exit
  %i.bm = icmp eq i64 %i.bk, 8
  br i1 %i.bm, label %bb.q, label %_ZSt4copyIPPPN2v88internal8compiler4NodeES6_ET0_T_S8_S7_.exit24

bb.q:                                             ; preds = %bb.p
  %i.bn = load ptr, ptr %i.bf, align 8
  store ptr %i.bn, ptr %i.be, align 8
  br label %_ZSt4copyIPPPN2v88internal8compiler4NodeES6_ET0_T_S8_S7_.exit24

_ZSt4copyIPPPN2v88internal8compiler4NodeES6_ET0_T_S8_S7_.exit24: ; preds = %bb.o, %bb.p, %bb.q
  %i.bo = load i64, ptr %i.l, align 8             ; 2 uses
  %i.bp = and i64 %i.bo, 2305843009213693950
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %_ZNSt11_Deque_baseIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE17_M_deallocate_mapEPPS4_m.exit, label %bb.r

bb.r:                                             ; preds = %_ZSt4copyIPPPN2v88internal8compiler4NodeES6_ET0_T_S8_S7_.exit24
  %i.br = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store i64 %i.bo, ptr %i.bs, align 8
  store ptr null, ptr %i.br, align 8
  br label %_ZNSt11_Deque_baseIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE17_M_deallocate_mapEPPS4_m.exit

_ZNSt11_Deque_baseIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE17_M_deallocate_mapEPPS4_m.exit: ; preds = %_ZSt4copyIPPPN2v88internal8compiler4NodeES6_ET0_T_S8_S7_.exit24, %bb.r
  store ptr %i.ay, ptr %i.a, align 8
  store i64 %i.an, ptr %i.l, align 8
  br label %_ZSt4copyIPPPN2v88internal8compiler4NodeES6_ET0_T_S8_S7_.exit

_ZSt4copyIPPPN2v88internal8compiler4NodeES6_ET0_T_S8_S7_.exit: ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %_ZNSt11_Deque_baseIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE17_M_deallocate_mapEPPS4_m.exit
  %.0 = phi ptr [ %i.be, %_ZNSt11_Deque_baseIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE17_M_deallocate_mapEPPS4_m.exit ], [ %i.u, %bb.f ], [ %i.u, %bb.d ], [ %i.u, %bb.e ], [ %i.u, %bb.h ], [ %i.u, %bb.i ], [ %i.u, %bb.j ] ; 3 uses
  store ptr %.0, ptr %i.d, align 8
  %i.bt = load ptr, ptr %.0, align 8              ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.bt, ptr %i.bu, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 512
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.bv, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.j
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -8 ; 2 uses
  store ptr %i.by, ptr %i.b, align 8
  %i.bz = load ptr, ptr %i.by, align 8            ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.bz, ptr %i.ca, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 512
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.cb, ptr %i.cc, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt5dequeIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE16_M_push_back_auxIJRKS4_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i
  %i.m = shl nsw i64 %i.l, 6
  %i.n = load ptr, ptr %i.a, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 3
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = load ptr, ptr %i.b, align 8
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 3
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = icmp eq i64 %i.ac, 2305843009213693951
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #9
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = load ptr, ptr %i.ae, align 8
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = sub i64 %i.g, %i.ai
  %i.ak = ashr exact i64 %i.aj, 3
  %i.al = sub i64 %i.ag, %i.ak
  %i.am = icmp ult i64 %i.al, 2
  br i1 %i.am, label %bb.d, label %_ZNSt5dequeIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE22_M_reserve_map_at_backEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt5dequeIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(96) %0, i64 noundef 1, i1 noundef zeroext false)
  br label %_ZNSt5dequeIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE22_M_reserve_map_at_backEm.exit

_ZNSt5dequeIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE22_M_reserve_map_at_backEm.exit: ; preds = %bb.c, %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8            ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_ZNSt5dequeIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE22_M_reserve_map_at_backEm.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load i64, ptr %i.ap, align 8
  %.not5.i.i.i = icmp ult i64 %i.aq, 64
  br i1 %.not5.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ar = load ptr, ptr %i.ao, align 8
  store ptr %i.ar, ptr %i.an, align 8
  br label %_ZNSt11_Deque_baseIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE16_M_allocate_nodeEv.exit

bb.g:                                             ; preds = %bb.e, %_ZNSt5dequeIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE22_M_reserve_map_at_backEm.exit
  %i.as = load ptr, ptr %0, align 8               ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load i64, ptr %i.at, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 3 uses
  %i.aw = load i64, ptr %i.av, align 8            ; 2 uses
  %i.ax = sub i64 %i.au, %i.aw
  %i.ay = icmp ult i64 %i.ax, 512
  br i1 %i.ay, label %bb.h, label %_ZN2v88internal13ZoneAllocatorIPNS0_8compiler4NodeEE8allocateEm.exit.i.i.i, !prof !7

bb.h:                                             ; preds = %bb.g
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.as, i64 noundef 512) #8
  %.pre.i.i.i.i.i.i = load i64, ptr %i.av, align 8
  br label %_ZN2v88internal13ZoneAllocatorIPNS0_8compiler4NodeEE8allocateEm.exit.i.i.i

_ZN2v88internal13ZoneAllocatorIPNS0_8compiler4NodeEE8allocateEm.exit.i.i.i: ; preds = %bb.h, %bb.g
  %i.az = phi i64 [ %.pre.i.i.i.i.i.i, %bb.h ], [ %i.aw, %bb.g ] ; 2 uses
  %i.ba = inttoptr i64 %i.az to ptr
  %i.bb = add i64 %i.az, 512
  store i64 %i.bb, ptr %i.av, align 8
  br label %_ZNSt11_Deque_baseIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE16_M_allocate_nodeEv.exit

_ZNSt11_Deque_baseIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE16_M_allocate_nodeEv.exit: ; preds = %bb.f, %_ZN2v88internal13ZoneAllocatorIPNS0_8compiler4NodeEE8allocateEm.exit.i.i.i
  %.0.i.i.i = phi ptr [ %i.ao, %bb.f ], [ %i.ba, %_ZN2v88internal13ZoneAllocatorIPNS0_8compiler4NodeEE8allocateEm.exit.i.i.i ]
  %i.bc = load ptr, ptr %i.c, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr %.0.i.i.i, ptr %i.bd, align 8
  %i.be = load ptr, ptr %i.a, align 8
  %i.bf = load ptr, ptr %1, align 8
  store ptr %i.bf, ptr %i.be, align 8
  %i.bg = load ptr, ptr %i.c, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 2 uses
  store ptr %i.bh, ptr %i.c, align 8
  %i.bi = load ptr, ptr %i.bh, align 8            ; 3 uses
  store ptr %i.bi, ptr %i.o, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 512
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.bj, ptr %i.bk, align 8
  store ptr %i.bi, ptr %i.a, align 8
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }

!llvm.module.flags = !{!1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = distinct !{!0, !6}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!8 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !16}
!14 = distinct !{!14, !6}
!15 = distinct !{!15, !6}
!16 = !{!"llvm.loop.unswitch.partial.disable"}
!17 = distinct !{!17, !6}
!18 = distinct !{!18, !6}
!19 = distinct !{!19, !6}
end_hunk_1
