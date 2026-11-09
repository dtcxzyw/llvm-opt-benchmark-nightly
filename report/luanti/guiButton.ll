Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/guiButton?download=true
inline.NumInlined: 861
inline.NumDeleted: 333
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN9GUIButtonC2EPN3gui15IGUIEnvironmentEPNS0_11IGUIElementEiN4core4rectIiEEP20ISimpleTextureSourceb:bb.a
  store i8 0, ptr %i.z, align 4, !tbaa !30
  %.ptr.5 = getelementptr inbounds nuw i8, ptr %0, i64 368
  store i32 -1, ptr %.ptr.5, align 8, !tbaa !28
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 372
  store i32 0, ptr %i.aa, align 4, !tbaa !29
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 376
  store i8 0, ptr %i.ab, align 8, !tbaa !30
  %.ptr.6 = getelementptr inbounds nuw i8, ptr %0, i64 380
  store i32 -1, ptr %.ptr.6, align 4, !tbaa !28
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 384
  store i32 0, ptr %i.ac, align 8, !tbaa !29
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 388
  store i8 0, ptr %i.ad, align 4, !tbaa !30
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 392
  %scevgep = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, i8 0, i64 224, i1 false)
  call void @_ZNSt5arrayI9StyleSpecLm8EEC2Ev(ptr noundef nonnull align 8 dereferenceable(6720) %i.af) #28
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 7336
  store ptr null, ptr %i.ag, align 8, !tbaa !67
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 7344
  store i8 0, ptr %i.ah, align 8, !tbaa !68
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 7348
  store i32 1711276031, ptr %i.ai, align 4, !tbaa !29
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 7352
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 7369
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.aj, i8 0, i64 17, i1 false)
  store i8 1, ptr %i.ak, align 1, !tbaa !69
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 7370
  store i8 0, ptr %i.al, align 2, !tbaa !70
  %.ptr35 = getelementptr inbounds nuw i8, ptr %0, i64 7372 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 7392
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(18) %.ptr35, i8 0, i64 18, i1 false)
  store ptr %6, ptr %i.am, align 8, !tbaa !71
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 7408
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 7448
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.an, i8 0, i64 40, i1 false)
  store i32 -1, ptr %i.ao, align 8, !tbaa !29
  %i.ap = zext i1 %7 to i8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 163
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !72
  %i.ar = load ptr, ptr %0, align 8, !tbaa !24
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load ptr, ptr %i.as, align 8
  invoke void %i.at(ptr noundef nonnull align 8 dereferenceable(308) %0)
          to label %_ZN3gui11IGUIElement13setNotClippedEb.exit unwind label %.loopexit.split-lp.loopexit.split-lp, !inline_history !0

_ZN3gui11IGUIElement13setNotClippedEb.exit:       ; preds = %bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 268
  store i8 1, ptr %i.au, align 4, !tbaa !73
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  store i32 0, ptr %i.av, align 8, !tbaa !74
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %_ZN3gui11IGUIElement13setNotClippedEb.exit
  %.05.i.i = phi ptr [ %0, %_ZN3gui11IGUIElement13setNotClippedEb.exit ], [ %i.ba, %bb.c ] ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 276
  %i.ax = load i8, ptr %i.aw, align 4, !tbaa !75, !range !76, !noundef !77
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %_ZN3gui11IGUIElement11getTabGroupEv.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.az = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !78 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i, label %_ZN3gui11IGUIElement11getTabGroupEv.exit.thread.i, label %bb.b, !llvm.loop !1

_ZN3gui11IGUIElement11getTabGroupEv.exit.i:       ; preds = %bb.b
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.bc = load i8, ptr %i.bb, align 4, !tbaa !75, !range !76, !noundef !77
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %_ZN3gui11IGUIElement11getTabGroupEv.exit.split.i.preheader, label %.critedge.thread.i

_ZN3gui11IGUIElement11getTabGroupEv.exit.split.i.preheader: ; preds = %_ZN3gui11IGUIElement11getTabGroupEv.exit.thread.i, %_ZN3gui11IGUIElement11getTabGroupEv.exit.i
  %.0.i.ph = phi ptr [ %.05.i.i, %_ZN3gui11IGUIElement11getTabGroupEv.exit.i ], [ null, %_ZN3gui11IGUIElement11getTabGroupEv.exit.thread.i ]
  br label %_ZN3gui11IGUIElement11getTabGroupEv.exit.split.i

_ZN3gui11IGUIElement11getTabGroupEv.exit.thread.i: ; preds = %bb.c
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.bf = load i8, ptr %i.be, align 4, !tbaa !75, !range !76, !noundef !77
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %_ZN3gui11IGUIElement11getTabGroupEv.exit.split.i.preheader, label %.critedge.thread31.i

.critedge.thread31.i:                             ; preds = %_ZN3gui11IGUIElement11getTabGroupEv.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  br label %_ZN3gui11IGUIElement11setTabOrderEi.exit

_ZN3gui11IGUIElement11getTabGroupEv.exit.split.i: ; preds = %_ZN3gui11IGUIElement11getTabGroupEv.exit.split.i.preheader, %bb.d
  %.0.i = phi ptr [ %i.bi, %bb.d ], [ %.0.i.ph, %_ZN3gui11IGUIElement11getTabGroupEv.exit.split.i.preheader ] ; 3 uses
  %.not19.i = icmp eq ptr %.0.i, null
  br i1 %.not19.i, label %.critedge.thread25.i, label %bb.d

.critedge.thread25.i:                             ; preds = %_ZN3gui11IGUIElement11getTabGroupEv.exit.split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  br label %_ZN3gui11IGUIElement11setTabOrderEi.exit

bb.d:                                             ; preds = %_ZN3gui11IGUIElement11getTabGroupEv.exit.split.i
  %i.bh = getelementptr inbounds nuw i8, ptr %.0.i, i64 32
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !78 ; 2 uses
  %.not.i = icmp eq ptr %i.bi, null
  br i1 %.not.i, label %.critedge.thread.i, label %_ZN3gui11IGUIElement11getTabGroupEv.exit.split.i, !llvm.loop !2

.critedge.thread.i:                               ; preds = %bb.d, %_ZN3gui11IGUIElement11getTabGroupEv.exit.i
  %.016.i = phi ptr [ %.05.i.i, %_ZN3gui11IGUIElement11getTabGroupEv.exit.i ], [ %.0.i, %bb.d ]
  %i.bj = phi i1 [ false, %_ZN3gui11IGUIElement11getTabGroupEv.exit.i ], [ true, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store ptr null, ptr %i.a, align 8, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store ptr null, ptr %i.b, align 8, !tbaa !80
  %i.bk = invoke noundef zeroext i1 @_ZNK3gui11IGUIElement14getNextElementEibbRPS0_S2_bb(ptr noundef nonnull align 8 dereferenceable(308) %.016.i, i32 noundef -1, i1 noundef zeroext true, i1 noundef zeroext %i.bj, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i1 noundef zeroext true, i1 noundef zeroext true)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc:                                           ; preds = %.critedge.thread.i
  %i.bl = load ptr, ptr %i.a, align 8, !tbaa !80  ; 2 uses
  %.not11.i = icmp eq ptr %i.bl, null
  br i1 %.not11.i, label %_ZN3gui11IGUIElement11setTabOrderEi.exit, label %bb.e

bb.e:                                             ; preds = %.noexc
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 272
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !74
  %i.bo = add nsw i32 %i.bn, 1
  store i32 %i.bo, ptr %i.av, align 8, !tbaa !74
  br label %_ZN3gui11IGUIElement11setTabOrderEi.exit

_ZN3gui11IGUIElement11setTabOrderEi.exit:         ; preds = %.critedge.thread31.i, %.critedge.thread25.i, %.noexc, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 5 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !81 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !24
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 96
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = invoke noundef ptr %i.bt(ptr noundef nonnull align 8 dereferenceable(8) %i.bq)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.f:                                             ; preds = %_ZN3gui11IGUIElement11setTabOrderEi.exit
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !24
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = invoke i32 %i.bx(ptr noundef nonnull align 8 dereferenceable(8) %i.bu, i32 noundef 0)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %bb.f
  store i32 %i.by, ptr %.ptr35, align 4, !tbaa !82
  %i.bz = load ptr, ptr %i.bp, align 8, !tbaa !81 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !24
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 96
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = invoke noundef ptr %i.cc(ptr noundef nonnull align 8 dereferenceable(8) %i.bz)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !24
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = invoke i32 %i.cg(ptr noundef nonnull align 8 dereferenceable(8) %i.cd, i32 noundef 1)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp

bb.i:                                             ; preds = %bb.h
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 7376
  store i32 %i.ch, ptr %i.ci, align 8, !tbaa !82
  %i.cj = load ptr, ptr %i.bp, align 8, !tbaa !81 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !24
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 96
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = invoke noundef ptr %i.cm(ptr noundef nonnull align 8 dereferenceable(8) %i.cj)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.j:                                             ; preds = %bb.i
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !24
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = invoke i32 %i.cq(ptr noundef nonnull align 8 dereferenceable(8) %i.cn, i32 noundef 2)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %bb.j
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 7380
  store i32 %i.cr, ptr %i.cs, align 4, !tbaa !82
  %i.ct = load ptr, ptr %i.bp, align 8, !tbaa !81 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !24
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 96
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = invoke noundef ptr %i.cw(ptr noundef nonnull align 8 dereferenceable(8) %i.ct)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.l:                                             ; preds = %bb.k
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !24
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.da = load ptr, ptr %i.cz, align 8
  %i.db = invoke i32 %i.da(ptr noundef nonnull align 8 dereferenceable(8) %i.cx, i32 noundef 3)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp

bb.m:                                             ; preds = %bb.l
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 7384
  store i32 %i.db, ptr %i.dc, align 8, !tbaa !82
  %i.dd = load ptr, ptr %i.bp, align 8, !tbaa !81
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !83 ; 2 uses
  %i.dg = call noundef i64 @wcslen(ptr noundef nonnull %i.df) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  %i.dh = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %9, align 4, !tbaa !84
  %i.di = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i32 0, ptr %i.di, align 4, !tbaa !85
  %i.dj = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.dk = load <2 x i32>, ptr %i.dh, align 8, !tbaa !82
  %i.dl = load <2 x i32>, ptr %5, align 8, !tbaa !82
  %i.dm = sub nsw <2 x i32> %i.dk, %i.dl
  store <2 x i32> %i.dm, ptr %i.dj, align 4, !tbaa !82
  %i.dn = invoke noundef ptr @_ZN3gui10StaticText3addEPNS_15IGUIEnvironmentESt17basic_string_viewIwSt11char_traitsIwEERKN4core4rectIiEEbbPNS_11IGUIElementEib(ptr noundef %i.dd, i64 %i.dg, ptr nonnull %i.df, ptr noundef nonnull align 4 dereferenceable(16) %9, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef nonnull %0, i32 noundef %4, i1 noundef zeroext false)
          to label %bb.n unwind label %bb.p       ; 3 uses

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.f, %_ZN3gui11IGUIElement11setTabOrderEi.exit, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %.critedge.thread.i, %bb.a, %bb.n
  %lpad.loopexit.split-lp51 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.n:                                             ; preds = %bb.m
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 7400
  store ptr %i.dn, ptr %i.do, align 8, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  %i.dp = load ptr, ptr %i.dn, align 8, !tbaa !24
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 392
  %i.dr = load ptr, ptr %i.dq, align 8
  invoke void %i.dr(ptr noundef nonnull align 8 dereferenceable(308) %i.dn, i32 noundef 2, i32 noundef 2)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %bb.n
  ret void

bb.p:                                             ; preds = %bb.m
  %i.ds = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp, %bb.p
  %.pn = phi { ptr, i32 } [ %i.ds, %bb.p ], [ %lpad.loopexit.split-lp51, %.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt5arrayI9StyleSpecLm8EED2Ev(ptr noundef nonnull align 8 dead_on_return(6720) dereferenceable(6720) %i.af) #28
  %.ptr40 = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.dt = load ptr, ptr %.ptr40, align 8, !tbaa !89 ; 3 uses
  %.not.i45 = icmp eq ptr %i.dt, null
  br i1 %.not.i45, label %_ZN9GUIButton11ButtonImageD2Ev.exit47, label %bb.q

bb.q:                                             ; preds = %.loopexit.split-lp
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !24
  %i.dv = getelementptr i8, ptr %i.du, i64 -24
  %i.dw = load i64, ptr %i.dv, align 8
  %i.dx = getelementptr inbounds i8, ptr %i.dt, i64 %i.dw ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8 ; 2 uses
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !91
  %i.ea = add nsw i32 %i.dz, -1                   ; 2 uses
  store i32 %i.ea, ptr %i.dy, align 8, !tbaa !91
  %.not.i.i46 = icmp eq i32 %i.ea, 0
  br i1 %.not.i.i46, label %bb.r, label %_ZN9GUIButton11ButtonImageD2Ev.exit47

bb.r:                                             ; preds = %bb.q
  %i.eb = load ptr, ptr %i.dx, align 8, !tbaa !24
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8
  call void %i.ed(ptr noundef nonnull align 8 dereferenceable(12) %i.dx) #28, !inline_history !3
  br label %_ZN9GUIButton11ButtonImageD2Ev.exit47

_ZN9GUIButton11ButtonImageD2Ev.exit47:            ; preds = %.loopexit.split-lp, %bb.q, %bb.r
  %.ptr40.1 = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.ee = load ptr, ptr %.ptr40.1, align 8, !tbaa !89 ; 3 uses
  %.not.i45.1 = icmp eq ptr %i.ee, null
  br i1 %.not.i45.1, label %_ZN9GUIButton11ButtonImageD2Ev.exit47.1, label %bb.s

bb.s:                                             ; preds = %_ZN9GUIButton11ButtonImageD2Ev.exit47
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !24
  %i.eg = getelementptr i8, ptr %i.ef, i64 -24
  %i.eh = load i64, ptr %i.eg, align 8
  %i.ei = getelementptr inbounds i8, ptr %i.ee, i64 %i.eh ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8 ; 2 uses
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !91
  %i.el = add nsw i32 %i.ek, -1                   ; 2 uses
  store i32 %i.el, ptr %i.ej, align 8, !tbaa !91
  %.not.i.i46.1 = icmp eq i32 %i.el, 0
  br i1 %.not.i.i46.1, label %bb.t, label %_ZN9GUIButton11ButtonImageD2Ev.exit47.1

bb.t:                                             ; preds = %bb.s
  %i.em = load ptr, ptr %i.ei, align 8, !tbaa !24
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.eo = load ptr, ptr %i.en, align 8
  call void %i.eo(ptr noundef nonnull align 8 dereferenceable(12) %i.ei) #28, !inline_history !3
  br label %_ZN9GUIButton11ButtonImageD2Ev.exit47.1

_ZN9GUIButton11ButtonImageD2Ev.exit47.1:          ; preds = %bb.t, %bb.s, %_ZN9GUIButton11ButtonImageD2Ev.exit47
  %.ptr40.2 = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.ep = load ptr, ptr %.ptr40.2, align 8, !tbaa !89 ; 3 uses
  %.not.i45.2 = icmp eq ptr %i.ep, null
  br i1 %.not.i45.2, label %_ZN9GUIButton11ButtonImageD2Ev.exit47.2, label %bb.u

bb.u:                                             ; preds = %_ZN9GUIButton11ButtonImageD2Ev.exit47.1
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !24
  %i.er = getelementptr i8, ptr %i.eq, i64 -24
  %i.es = load i64, ptr %i.er, align 8
  %i.et = getelementptr inbounds i8, ptr %i.ep, i64 %i.es ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8 ; 2 uses
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !91
  %i.ew = add nsw i32 %i.ev, -1                   ; 2 uses
  store i32 %i.ew, ptr %i.eu, align 8, !tbaa !91
  %.not.i.i46.2 = icmp eq i32 %i.ew, 0
  br i1 %.not.i.i46.2, label %bb.v, label %_ZN9GUIButton11ButtonImageD2Ev.exit47.2

bb.v:                                             ; preds = %bb.u
  %i.ex = load ptr, ptr %i.et, align 8, !tbaa !24
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.ez = load ptr, ptr %i.ey, align 8
  call void %i.ez(ptr noundef nonnull align 8 dereferenceable(12) %i.et) #28, !inline_history !3
  br label %_ZN9GUIButton11ButtonImageD2Ev.exit47.2

_ZN9GUIButton11ButtonImageD2Ev.exit47.2:          ; preds = %bb.v, %bb.u, %_ZN9GUIButton11ButtonImageD2Ev.exit47.1
  %.ptr40.3 = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.fa = load ptr, ptr %.ptr40.3, align 8, !tbaa !89 ; 3 uses
  %.not.i45.3 = icmp eq ptr %i.fa, null
  br i1 %.not.i45.3, label %_ZN9GUIButton11ButtonImageD2Ev.exit47.3, label %bb.w

bb.w:                                             ; preds = %_ZN9GUIButton11ButtonImageD2Ev.exit47.2
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !24
  %i.fc = getelementptr i8, ptr %i.fb, i64 -24
  %i.fd = load i64, ptr %i.fc, align 8
  %i.fe = getelementptr inbounds i8, ptr %i.fa, i64 %i.fd ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8 ; 2 uses
  %i.fg = load i32, ptr %i.ff, align 8, !tbaa !91
  %i.fh = add nsw i32 %i.fg, -1                   ; 2 uses
  store i32 %i.fh, ptr %i.ff, align 8, !tbaa !91
  %.not.i.i46.3 = icmp eq i32 %i.fh, 0
  br i1 %.not.i.i46.3, label %bb.x, label %_ZN9GUIButton11ButtonImageD2Ev.exit47.3

bb.x:                                             ; preds = %bb.w
  %i.fi = load ptr, ptr %i.fe, align 8, !tbaa !24
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fk = load ptr, ptr %i.fj, align 8
  call void %i.fk(ptr noundef nonnull align 8 dereferenceable(12) %i.fe) #28, !inline_history !3
  br label %_ZN9GUIButton11ButtonImageD2Ev.exit47.3

_ZN9GUIButton11ButtonImageD2Ev.exit47.3:          ; preds = %bb.x, %bb.w, %_ZN9GUIButton11ButtonImageD2Ev.exit47.2
  %.ptr40.4 = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.fl = load ptr, ptr %.ptr40.4, align 8, !tbaa !89 ; 3 uses
  %.not.i45.4 = icmp eq ptr %i.fl, null
  br i1 %.not.i45.4, label %_ZN9GUIButton11ButtonImageD2Ev.exit47.4, label %bb.y

bb.y:                                             ; preds = %_ZN9GUIButton11ButtonImageD2Ev.exit47.3
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !24
  %i.fn = getelementptr i8, ptr %i.fm, i64 -24
  %i.fo = load i64, ptr %i.fn, align 8
  %i.fp = getelementptr inbounds i8, ptr %i.fl, i64 %i.fo ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 8 ; 2 uses
  %i.fr = load i32, ptr %i.fq, align 8, !tbaa !91
  %i.fs = add nsw i32 %i.fr, -1                   ; 2 uses
  store i32 %i.fs, ptr %i.fq, align 8, !tbaa !91
  %.not.i.i46.4 = icmp eq i32 %i.fs, 0
  br i1 %.not.i.i46.4, label %bb.z, label %_ZN9GUIButton11ButtonImageD2Ev.exit47.4

bb.z:                                             ; preds = %bb.y
  %i.ft = load ptr, ptr %i.fp, align 8, !tbaa !24
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.fv = load ptr, ptr %i.fu, align 8
  call void %i.fv(ptr noundef nonnull align 8 dereferenceable(12) %i.fp) #28, !inline_history !3
  br label %_ZN9GUIButton11ButtonImageD2Ev.exit47.4

_ZN9GUIButton11ButtonImageD2Ev.exit47.4:          ; preds = %bb.z, %bb.y, %_ZN9GUIButton11ButtonImageD2Ev.exit47.3
  %.ptr40.5 = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.fw = load ptr, ptr %.ptr40.5, align 8, !tbaa !89 ; 3 uses
  %.not.i45.5 = icmp eq ptr %i.fw, null
  br i1 %.not.i45.5, label %_ZN9GUIButton11ButtonImageD2Ev.exit47.5, label %bb.aa

bb.aa:                                            ; preds = %_ZN9GUIButton11ButtonImageD2Ev.exit47.4
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !24
  %i.fy = getelementptr i8, ptr %i.fx, i64 -24
  %i.fz = load i64, ptr %i.fy, align 8
  %i.ga = getelementptr inbounds i8, ptr %i.fw, i64 %i.fz ; 3 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8 ; 2 uses
  %i.gc = load i32, ptr %i.gb, align 8, !tbaa !91
  %i.gd = add nsw i32 %i.gc, -1                   ; 2 uses
  store i32 %i.gd, ptr %i.gb, align 8, !tbaa !91
  %.not.i.i46.5 = icmp eq i32 %i.gd, 0
  br i1 %.not.i.i46.5, label %bb.ab, label %_ZN9GUIButton11ButtonImageD2Ev.exit47.5

bb.ab:                                            ; preds = %bb.aa
  %i.ge = load ptr, ptr %i.ga, align 8, !tbaa !24
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %i.gg = load ptr, ptr %i.gf, align 8
  call void %i.gg(ptr noundef nonnull align 8 dereferenceable(12) %i.ga) #28, !inline_history !3
  br label %_ZN9GUIButton11ButtonImageD2Ev.exit47.5

_ZN9GUIButton11ButtonImageD2Ev.exit47.5:          ; preds = %bb.ab, %bb.aa, %_ZN9GUIButton11ButtonImageD2Ev.exit47.4
  %.ptr40.6 = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.gh = load ptr, ptr %.ptr40.6, align 8, !tbaa !89 ; 3 uses
  %.not.i45.6 = icmp eq ptr %i.gh, null
  br i1 %.not.i45.6, label %_ZN9GUIButton11ButtonImageD2Ev.exit47.6, label %bb.ac

bb.ac:                                            ; preds = %_ZN9GUIButton11ButtonImageD2Ev.exit47.5
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !24
  %i.gj = getelementptr i8, ptr %i.gi, i64 -24
  %i.gk = load i64, ptr %i.gj, align 8
  %i.gl = getelementptr inbounds i8, ptr %i.gh, i64 %i.gk ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN9GUIButtonC1EPN3gui15IGUIEnvironmentEPNS0_11IGUIElementEiN4core4rectIiEEP20ISimpleTextureSourceb:bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 372
  store i32 0, ptr %i.o, align 4, !tbaa !29
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 376
  store i8 0, ptr %i.p, align 8, !tbaa !30
  %.ptr.6 = getelementptr inbounds nuw i8, ptr %0, i64 380
  store i32 -1, ptr %.ptr.6, align 4, !tbaa !28
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 384
  store i32 0, ptr %i.q, align 8, !tbaa !29
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 388
  store i8 0, ptr %i.r, align 4, !tbaa !30
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 392
  %scevgep = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.s, i8 0, i64 224, i1 false)
  call void @_ZNSt5arrayI9StyleSpecLm8EEC2Ev(ptr noundef nonnull align 8 dereferenceable(6720) %i.t) #28
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 7336
  store ptr null, ptr %i.u, align 8, !tbaa !67
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 7344
  store i8 0, ptr %i.v, align 8, !tbaa !68
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 7348
  store i32 1711276031, ptr %i.w, align 4, !tbaa !29
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 7352
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 7369
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.x, i8 0, i64 17, i1 false)
  store i8 1, ptr %i.y, align 1, !tbaa !69
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 7370
  store i8 0, ptr %i.z, align 2, !tbaa !70
  %.ptr35 = getelementptr inbounds nuw i8, ptr %0, i64 7372 ; 2 uses
  %.sroa.049.sroa.0.0.extract.trunc = trunc i64 %4 to i32
  %.sroa.049.sroa.3.0.extract.shift = lshr i64 %4, 32
  %.sroa.049.sroa.3.0.extract.trunc = trunc nuw i64 %.sroa.049.sroa.3.0.extract.shift to i32
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 7392
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(18) %.ptr35, i8 0, i64 18, i1 false)
  store ptr %6, ptr %i.aa, align 8, !tbaa !71
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 7408
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 7448
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ab, i8 0, i64 40, i1 false)
  store i32 -1, ptr %i.ac, align 8, !tbaa !29
  %i.ad = zext i1 %7 to i8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 163
  store i8 %i.ad, ptr %i.ae, align 1, !tbaa !72
  %i.af = load ptr, ptr %0, align 8, !tbaa !24
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8
  invoke void %i.ah(ptr noundef nonnull align 8 dereferenceable(308) %0)
          to label %_ZN3gui11IGUIElement13setNotClippedEb.exit unwind label %.loopexit.split-lp.loopexit.split-lp, !inline_history !0

_ZN3gui11IGUIElement13setNotClippedEb.exit:       ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 268
  store i8 1, ptr %i.ai, align 4, !tbaa !73
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  store i32 0, ptr %i.aj, align 8, !tbaa !74
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %_ZN3gui11IGUIElement13setNotClippedEb.exit
  %.05.i.i = phi ptr [ %0, %_ZN3gui11IGUIElement13setNotClippedEb.exit ], [ %i.ao, %bb.c ] ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 276
  %i.al = load i8, ptr %i.ak, align 4, !tbaa !75, !range !76, !noundef !77
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %_ZN3gui11IGUIElement11getTabGroupEv.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.an = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !78 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i, label %_ZN3gui11IGUIElement11getTabGroupEv.exit.thread.i, label %bb.b, !llvm.loop !1

_ZN3gui11IGUIElement11getTabGroupEv.exit.i:       ; preds = %bb.b
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.aq = load i8, ptr %i.ap, align 4, !tbaa !75, !range !76, !noundef !77
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %_ZN3gui11IGUIElement11getTabGroupEv.exit.split.i.preheader, label %.critedge.thread.i

_ZN3gui11IGUIElement11getTabGroupEv.exit.split.i.preheader: ; preds = %_ZN3gui11IGUIElement11getTabGroupEv.exit.thread.i, %_ZN3gui11IGUIElement11getTabGroupEv.exit.i
  %.0.i.ph = phi ptr [ %.05.i.i, %_ZN3gui11IGUIElement11getTabGroupEv.exit.i ], [ null, %_ZN3gui11IGUIElement11getTabGroupEv.exit.thread.i ]
  br label %_ZN3gui11IGUIElement11getTabGroupEv.exit.split.i

_ZN3gui11IGUIElement11getTabGroupEv.exit.thread.i: ; preds = %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.at = load i8, ptr %i.as, align 4, !tbaa !75, !range !76, !noundef !77
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %_ZN3gui11IGUIElement11getTabGroupEv.exit.split.i.preheader, label %.critedge.thread31.i

.critedge.thread31.i:                             ; preds = %_ZN3gui11IGUIElement11getTabGroupEv.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  br label %_ZN3gui11IGUIElement11setTabOrderEi.exit

_ZN3gui11IGUIElement11getTabGroupEv.exit.split.i: ; preds = %_ZN3gui11IGUIElement11getTabGroupEv.exit.split.i.preheader, %bb.d
  %.0.i = phi ptr [ %i.aw, %bb.d ], [ %.0.i.ph, %_ZN3gui11IGUIElement11getTabGroupEv.exit.split.i.preheader ] ; 3 uses
  %.not19.i = icmp eq ptr %.0.i, null
  br i1 %.not19.i, label %.critedge.thread25.i, label %bb.d

.critedge.thread25.i:                             ; preds = %_ZN3gui11IGUIElement11getTabGroupEv.exit.split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  br label %_ZN3gui11IGUIElement11setTabOrderEi.exit

bb.d:                                             ; preds = %_ZN3gui11IGUIElement11getTabGroupEv.exit.split.i
  %i.av = getelementptr inbounds nuw i8, ptr %.0.i, i64 32
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !78 ; 2 uses
  %.not.i = icmp eq ptr %i.aw, null
  br i1 %.not.i, label %.critedge.thread.i, label %_ZN3gui11IGUIElement11getTabGroupEv.exit.split.i, !llvm.loop !2

.critedge.thread.i:                               ; preds = %bb.d, %_ZN3gui11IGUIElement11getTabGroupEv.exit.i
  %.016.i = phi ptr [ %.05.i.i, %_ZN3gui11IGUIElement11getTabGroupEv.exit.i ], [ %.0.i, %bb.d ]
  %i.ax = phi i1 [ false, %_ZN3gui11IGUIElement11getTabGroupEv.exit.i ], [ true, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store ptr null, ptr %i.a, align 8, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store ptr null, ptr %i.b, align 8, !tbaa !80
  %i.ay = invoke noundef zeroext i1 @_ZNK3gui11IGUIElement14getNextElementEibbRPS0_S2_bb(ptr noundef nonnull align 8 dereferenceable(308) %.016.i, i32 noundef -1, i1 noundef zeroext true, i1 noundef zeroext %i.ax, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i1 noundef zeroext true, i1 noundef zeroext true)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc:                                           ; preds = %.critedge.thread.i
  %i.az = load ptr, ptr %i.a, align 8, !tbaa !80  ; 2 uses
  %.not11.i = icmp eq ptr %i.az, null
  br i1 %.not11.i, label %_ZN3gui11IGUIElement11setTabOrderEi.exit, label %bb.e

bb.e:                                             ; preds = %.noexc
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 272
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !74
  %i.bc = add nsw i32 %i.bb, 1
  store i32 %i.bc, ptr %i.aj, align 8, !tbaa !74
  br label %_ZN3gui11IGUIElement11setTabOrderEi.exit

_ZN3gui11IGUIElement11setTabOrderEi.exit:         ; preds = %.critedge.thread31.i, %.critedge.thread25.i, %.noexc, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 5 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !81 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !24
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 96
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = invoke noundef ptr %i.bh(ptr noundef nonnull align 8 dereferenceable(8) %i.be)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.f:                                             ; preds = %_ZN3gui11IGUIElement11setTabOrderEi.exit
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !24
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = invoke i32 %i.bl(ptr noundef nonnull align 8 dereferenceable(8) %i.bi, i32 noundef 0)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %bb.f
  store i32 %i.bm, ptr %.ptr35, align 4, !tbaa !82
  %i.bn = load ptr, ptr %i.bd, align 8, !tbaa !81 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !24
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 96
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = invoke noundef ptr %i.bq(ptr noundef nonnull align 8 dereferenceable(8) %i.bn)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !24
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = invoke i32 %i.bu(ptr noundef nonnull align 8 dereferenceable(8) %i.br, i32 noundef 1)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp

bb.i:                                             ; preds = %bb.h
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 7376
  store i32 %i.bv, ptr %i.bw, align 8, !tbaa !82
  %i.bx = load ptr, ptr %i.bd, align 8, !tbaa !81 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !24
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 96
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = invoke noundef ptr %i.ca(ptr noundef nonnull align 8 dereferenceable(8) %i.bx)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.j:                                             ; preds = %bb.i
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !24
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = invoke i32 %i.ce(ptr noundef nonnull align 8 dereferenceable(8) %i.cb, i32 noundef 2)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %bb.j
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 7380
  store i32 %i.cf, ptr %i.cg, align 4, !tbaa !82
  %i.ch = load ptr, ptr %i.bd, align 8, !tbaa !81 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !24
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 96
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = invoke noundef ptr %i.ck(ptr noundef nonnull align 8 dereferenceable(8) %i.ch)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.l:                                             ; preds = %bb.k
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !24
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.co = load ptr, ptr %i.cn, align 8
  %i.cp = invoke i32 %i.co(ptr noundef nonnull align 8 dereferenceable(8) %i.cl, i32 noundef 3)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp

bb.m:                                             ; preds = %bb.l
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 7384
  store i32 %i.cp, ptr %i.cq, align 8, !tbaa !82
  %i.cr = load ptr, ptr %i.bd, align 8, !tbaa !81
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !83 ; 2 uses
  %i.cu = call noundef i64 @wcslen(ptr noundef nonnull %i.ct) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  %.sroa.4.8.extract.trunc = trunc i64 %5 to i32
  %i.cv = sub nsw i32 %.sroa.4.8.extract.trunc, %.sroa.049.sroa.0.0.extract.trunc
  %.sroa.4.12.extract.shift = lshr i64 %5, 32
  %.sroa.4.12.extract.trunc = trunc nuw i64 %.sroa.4.12.extract.shift to i32
  %i.cw = sub nsw i32 %.sroa.4.12.extract.trunc, %.sroa.049.sroa.3.0.extract.trunc
  store i32 0, ptr %9, align 4, !tbaa !84
  %i.cx = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i32 0, ptr %i.cx, align 4, !tbaa !85
  %i.cy = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %i.cv, ptr %i.cy, align 4, !tbaa !84
  %i.cz = getelementptr inbounds nuw i8, ptr %9, i64 12
  store i32 %i.cw, ptr %i.cz, align 4, !tbaa !85
  %i.da = invoke noundef ptr @_ZN3gui10StaticText3addEPNS_15IGUIEnvironmentESt17basic_string_viewIwSt11char_traitsIwEERKN4core4rectIiEEbbPNS_11IGUIElementEib(ptr noundef %i.cr, i64 %i.cu, ptr nonnull %i.ct, ptr noundef nonnull align 4 dereferenceable(16) %9, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef nonnull %0, i32 noundef %3, i1 noundef zeroext false)
          to label %bb.n unwind label %bb.p       ; 3 uses

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.f, %_ZN3gui11IGUIElement11setTabOrderEi.exit, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %.critedge.thread.i, %bb.a, %bb.n
  %lpad.loopexit.split-lp55 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.n:                                             ; preds = %bb.m
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 7400
  store ptr %i.da, ptr %i.db, align 8, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  %i.dc = load ptr, ptr %i.da, align 8, !tbaa !24
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 392
  %i.de = load ptr, ptr %i.dd, align 8
  invoke void %i.de(ptr noundef nonnull align 8 dereferenceable(308) %i.da, i32 noundef 2, i32 noundef 2)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %bb.n
  ret void

bb.p:                                             ; preds = %bb.m
  %i.df = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp, %bb.p
  %.pn = phi { ptr, i32 } [ %i.df, %bb.p ], [ %lpad.loopexit.split-lp55, %.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt5arrayI9StyleSpecLm8EED2Ev(ptr noundef nonnull align 8 dead_on_return(6720) dereferenceable(6720) %i.t) #28
  %.ptr40 = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.dg = load ptr, ptr %.ptr40, align 8, !tbaa !89 ; 3 uses
  %.not.i46 = icmp eq ptr %i.dg, null
  br i1 %.not.i46, label %_ZN9GUIButton11ButtonImageD2Ev.exit48, label %bb.q

bb.q:                                             ; preds = %.loopexit.split-lp
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !24
  %i.di = getelementptr i8, ptr %i.dh, i64 -24
  %i.dj = load i64, ptr %i.di, align 8
  %i.dk = getelementptr inbounds i8, ptr %i.dg, i64 %i.dj ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8 ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !91
  %i.dn = add nsw i32 %i.dm, -1                   ; 2 uses
  store i32 %i.dn, ptr %i.dl, align 8, !tbaa !91
  %.not.i.i47 = icmp eq i32 %i.dn, 0
  br i1 %.not.i.i47, label %bb.r, label %_ZN9GUIButton11ButtonImageD2Ev.exit48

bb.r:                                             ; preds = %bb.q
  %i.do = load ptr, ptr %i.dk, align 8, !tbaa !24
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8
  call void %i.dq(ptr noundef nonnull align 8 dereferenceable(12) %i.dk) #28, !inline_history !3
  br label %_ZN9GUIButton11ButtonImageD2Ev.exit48

_ZN9GUIButton11ButtonImageD2Ev.exit48:            ; preds = %.loopexit.split-lp, %bb.q, %bb.r
  %.ptr40.1 = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.dr = load ptr, ptr %.ptr40.1, align 8, !tbaa !89 ; 3 uses
  %.not.i46.1 = icmp eq ptr %i.dr, null
  br i1 %.not.i46.1, label %_ZN9GUIButton11ButtonImageD2Ev.exit48.1, label %bb.s

bb.s:                                             ; preds = %_ZN9GUIButton11ButtonImageD2Ev.exit48
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !24
  %i.dt = getelementptr i8, ptr %i.ds, i64 -24
  %i.du = load i64, ptr %i.dt, align 8
  %i.dv = getelementptr inbounds i8, ptr %i.dr, i64 %i.du ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8 ; 2 uses
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !91
  %i.dy = add nsw i32 %i.dx, -1                   ; 2 uses
  store i32 %i.dy, ptr %i.dw, align 8, !tbaa !91
  %.not.i.i47.1 = icmp eq i32 %i.dy, 0
  br i1 %.not.i.i47.1, label %bb.t, label %_ZN9GUIButton11ButtonImageD2Ev.exit48.1

bb.t:                                             ; preds = %bb.s
  %i.dz = load ptr, ptr %i.dv, align 8, !tbaa !24
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8
  call void %i.eb(ptr noundef nonnull align 8 dereferenceable(12) %i.dv) #28, !inline_history !3
  br label %_ZN9GUIButton11ButtonImageD2Ev.exit48.1

_ZN9GUIButton11ButtonImageD2Ev.exit48.1:          ; preds = %bb.t, %bb.s, %_ZN9GUIButton11ButtonImageD2Ev.exit48
  %.ptr40.2 = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.ec = load ptr, ptr %.ptr40.2, align 8, !tbaa !89 ; 3 uses
  %.not.i46.2 = icmp eq ptr %i.ec, null
  br i1 %.not.i46.2, label %_ZN9GUIButton11ButtonImageD2Ev.exit48.2, label %bb.u

bb.u:                                             ; preds = %_ZN9GUIButton11ButtonImageD2Ev.exit48.1
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !24
  %i.ee = getelementptr i8, ptr %i.ed, i64 -24
  %i.ef = load i64, ptr %i.ee, align 8
  %i.eg = getelementptr inbounds i8, ptr %i.ec, i64 %i.ef ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8 ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !91
  %i.ej = add nsw i32 %i.ei, -1                   ; 2 uses
  store i32 %i.ej, ptr %i.eh, align 8, !tbaa !91
  %.not.i.i47.2 = icmp eq i32 %i.ej, 0
  br i1 %.not.i.i47.2, label %bb.v, label %_ZN9GUIButton11ButtonImageD2Ev.exit48.2

bb.v:                                             ; preds = %bb.u
  %i.ek = load ptr, ptr %i.eg, align 8, !tbaa !24
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.em = load ptr, ptr %i.el, align 8
  call void %i.em(ptr noundef nonnull align 8 dereferenceable(12) %i.eg) #28, !inline_history !3
  br label %_ZN9GUIButton11ButtonImageD2Ev.exit48.2

_ZN9GUIButton11ButtonImageD2Ev.exit48.2:          ; preds = %bb.v, %bb.u, %_ZN9GUIButton11ButtonImageD2Ev.exit48.1
  %.ptr40.3 = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.en = load ptr, ptr %.ptr40.3, align 8, !tbaa !89 ; 3 uses
  %.not.i46.3 = icmp eq ptr %i.en, null
  br i1 %.not.i46.3, label %_ZN9GUIButton11ButtonImageD2Ev.exit48.3, label %bb.w

bb.w:                                             ; preds = %_ZN9GUIButton11ButtonImageD2Ev.exit48.2
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !24
  %i.ep = getelementptr i8, ptr %i.eo, i64 -24
  %i.eq = load i64, ptr %i.ep, align 8
  %i.er = getelementptr inbounds i8, ptr %i.en, i64 %i.eq ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8 ; 2 uses
  %i.et = load i32, ptr %i.es, align 8, !tbaa !91
  %i.eu = add nsw i32 %i.et, -1                   ; 2 uses
  store i32 %i.eu, ptr %i.es, align 8, !tbaa !91
  %.not.i.i47.3 = icmp eq i32 %i.eu, 0
  br i1 %.not.i.i47.3, label %bb.x, label %_ZN9GUIButton11ButtonImageD2Ev.exit48.3

bb.x:                                             ; preds = %bb.w
  %i.ev = load ptr, ptr %i.er, align 8, !tbaa !24
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.ex = load ptr, ptr %i.ew, align 8
  call void %i.ex(ptr noundef nonnull align 8 dereferenceable(12) %i.er) #28, !inline_history !3
  br label %_ZN9GUIButton11ButtonImageD2Ev.exit48.3

_ZN9GUIButton11ButtonImageD2Ev.exit48.3:          ; preds = %bb.x, %bb.w, %_ZN9GUIButton11ButtonImageD2Ev.exit48.2
  %.ptr40.4 = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.ey = load ptr, ptr %.ptr40.4, align 8, !tbaa !89 ; 3 uses
  %.not.i46.4 = icmp eq ptr %i.ey, null
  br i1 %.not.i46.4, label %_ZN9GUIButton11ButtonImageD2Ev.exit48.4, label %bb.y

bb.y:                                             ; preds = %_ZN9GUIButton11ButtonImageD2Ev.exit48.3
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !24
  %i.fa = getelementptr i8, ptr %i.ez, i64 -24
  %i.fb = load i64, ptr %i.fa, align 8
  %i.fc = getelementptr inbounds i8, ptr %i.ey, i64 %i.fb ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8 ; 2 uses
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !91
  %i.ff = add nsw i32 %i.fe, -1                   ; 2 uses
  store i32 %i.ff, ptr %i.fd, align 8, !tbaa !91
  %.not.i.i47.4 = icmp eq i32 %i.ff, 0
  br i1 %.not.i.i47.4, label %bb.z, label %_ZN9GUIButton11ButtonImageD2Ev.exit48.4

bb.z:                                             ; preds = %bb.y
  %i.fg = load ptr, ptr %i.fc, align 8, !tbaa !24
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fi = load ptr, ptr %i.fh, align 8
  call void %i.fi(ptr noundef nonnull align 8 dereferenceable(12) %i.fc) #28, !inline_history !3
  br label %_ZN9GUIButton11ButtonImageD2Ev.exit48.4

_ZN9GUIButton11ButtonImageD2Ev.exit48.4:          ; preds = %bb.z, %bb.y, %_ZN9GUIButton11ButtonImageD2Ev.exit48.3
  %.ptr40.5 = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.fj = load ptr, ptr %.ptr40.5, align 8, !tbaa !89 ; 3 uses
  %.not.i46.5 = icmp eq ptr %i.fj, null
  br i1 %.not.i46.5, label %_ZN9GUIButton11ButtonImageD2Ev.exit48.5, label %bb.aa

bb.aa:                                            ; preds = %_ZN9GUIButton11ButtonImageD2Ev.exit48.4
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !24
  %i.fl = getelementptr i8, ptr %i.fk, i64 -24
  %i.fm = load i64, ptr %i.fl, align 8
  %i.fn = getelementptr inbounds i8, ptr %i.fj, i64 %i.fm ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8 ; 2 uses
  %i.fp = load i32, ptr %i.fo, align 8, !tbaa !91
  %i.fq = add nsw i32 %i.fp, -1                   ; 2 uses
  store i32 %i.fq, ptr %i.fo, align 8, !tbaa !91
  %.not.i.i47.5 = icmp eq i32 %i.fq, 0
  br i1 %.not.i.i47.5, label %bb.ab, label %_ZN9GUIButton11ButtonImageD2Ev.exit48.5

bb.ab:                                            ; preds = %bb.aa
  %i.fr = load ptr, ptr %i.fn, align 8, !tbaa !24
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.ft = load ptr, ptr %i.fs, align 8
  call void %i.ft(ptr noundef nonnull align 8 dereferenceable(12) %i.fn) #28, !inline_history !3
  br label %_ZN9GUIButton11ButtonImageD2Ev.exit48.5

_ZN9GUIButton11ButtonImageD2Ev.exit48.5:          ; preds = %bb.ab, %bb.aa, %_ZN9GUIButton11ButtonImageD2Ev.exit48.4
  %.ptr40.6 = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.fu = load ptr, ptr %.ptr40.6, align 8, !tbaa !89 ; 3 uses
  %.not.i46.6 = icmp eq ptr %i.fu, null
  br i1 %.not.i46.6, label %_ZN9GUIButton11ButtonImageD2Ev.exit48.6, label %bb.ac

bb.ac:                                            ; preds = %_ZN9GUIButton11ButtonImageD2Ev.exit48.5
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !24
end_hunk_1
begin_hunk_2_@_ZNK3gui11IGUIElement14getNextElementEibbRPS0_S2_bb:bb.a
  %i.at = phi i1 [ true, %bb.i ], [ false, %bb.a ], [ true, %bb.q ], [ false, %bb.r ]
  ret i1 %i.at
}

declare void @_ZN14EnrichedStringC1ESt17basic_string_viewIwSt11char_traitsIwEERKN5video6SColorE(ptr noundef nonnull align 8 dereferenceable(80), i64, ptr, ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #10

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14EnrichedStringD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !102  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !103
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #31
  br label %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit

_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit:    ; preds = %bb.a, %bb.b
  %i.h = load ptr, ptr %0, align 8, !tbaa !83     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !94
  %i.l = shl i64 %i.k, 2
  %i.m = add i64 %i.l, 4
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.m) #31
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit: ; preds = %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i
  ret void
}

declare void @_ZN3gui10StaticTextC1ERK14EnrichedStringbPNS_15IGUIEnvironmentEPNS_11IGUIElementEiRKN4core4rectIiEEb(ptr noundef nonnull align 8 dereferenceable(464), ptr noundef nonnull align 8 dereferenceable(80), i1 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(16), i1 noundef zeroext) unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @wcslen(ptr noundef captures(none)) local_unnamed_addr #18

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3gui11IGUIElementD2Ev(ptr noundef nonnull align 8 dereferenceable(308) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !24
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr i8, ptr %i.a, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %0, i64 %i.e
  store ptr %i.c, ptr %i.f, align 8, !tbaa !24
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %.sroa.09.012 = load ptr, ptr %i.g, align 8, !tbaa !127 ; 2 uses
  %.not13 = icmp eq ptr %.sroa.09.012, %i.g
  br i1 %.not13, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNK17IReferenceCounted4dropEv.exit, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !129  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZN4core6stringIcED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %._crit_edge
  %i.l = load i64, ptr %i.j, align 8, !tbaa !94
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #31
  br label %_ZN4core6stringIcED2Ev.exit

_ZN4core6stringIcED2Ev.exit:                      ; preds = %._crit_edge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !83   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZN4core6stringIwED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN4core6stringIcED2Ev.exit
  %i.r = load i64, ptr %i.p, align 8, !tbaa !94
  %i.s = shl i64 %i.r, 2
  %i.t = add i64 %i.s, 4
  tail call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.t) #31
  br label %_ZN4core6stringIwED2Ev.exit

_ZN4core6stringIwED2Ev.exit:                      ; preds = %_ZN4core6stringIcED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !83   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZN4core6stringIwED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i6

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i6: ; preds = %_ZN4core6stringIwED2Ev.exit
  %i.y = load i64, ptr %i.w, align 8, !tbaa !94
  %i.z = shl i64 %i.y, 2
  %i.aa = add i64 %i.z, 4
  tail call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.aa) #31
  br label %_ZN4core6stringIwED2Ev.exit8

_ZN4core6stringIwED2Ev.exit8:                     ; preds = %_ZN4core6stringIwED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i6
  %i.ab = load ptr, ptr %i.g, align 8, !tbaa !127 ; 2 uses
  %.not8.i.i = icmp eq ptr %i.ab, %i.g
  br i1 %.not8.i.i, label %_ZNSt7__cxx1110_List_baseIPN3gui11IGUIElementESaIS3_EED2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4core6stringIwED2Ev.exit8, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.ac, %.lr.ph.i.i ], [ %i.ab, %_ZN4core6stringIwED2Ev.exit8 ] ; 2 uses
  %i.ac = load ptr, ptr %.09.i.i, align 8, !tbaa !127 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 24) #31
  %.not.i.i = icmp eq ptr %i.ac, %i.g
  br i1 %.not.i.i, label %_ZNSt7__cxx1110_List_baseIPN3gui11IGUIElementESaIS3_EED2Ev.exit, label %.lr.ph.i.i, !llvm.loop !11

_ZNSt7__cxx1110_List_baseIPN3gui11IGUIElementESaIS3_EED2Ev.exit: ; preds = %.lr.ph.i.i, %_ZN4core6stringIwED2Ev.exit8
  ret void

.lr.ph:                                           ; preds = %bb.a, %_ZNK17IReferenceCounted4dropEv.exit
  %.sroa.09.014 = phi ptr [ %.sroa.09.0, %_ZNK17IReferenceCounted4dropEv.exit ], [ %.sroa.09.012, %bb.a ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.09.014, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !80 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  store ptr null, ptr %i.af, align 8, !tbaa !78
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !24
  %i.ah = getelementptr i8, ptr %i.ag, i64 -24
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds i8, ptr %i.ae, i64 %i.ai ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !91
  %i.am = add nsw i32 %i.al, -1                   ; 2 uses
  store i32 %i.am, ptr %i.ak, align 8, !tbaa !91
  %.not.i = icmp eq i32 %i.am, 0
  br i1 %.not.i, label %bb.b, label %_ZNK17IReferenceCounted4dropEv.exit

bb.b:                                             ; preds = %.lr.ph
  %i.an = load ptr, ptr %i.aj, align 8, !tbaa !24
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  tail call void %i.ap(ptr noundef nonnull align 8 dereferenceable(12) %i.aj) #28, !inline_history !4
  br label %_ZNK17IReferenceCounted4dropEv.exit

_ZNK17IReferenceCounted4dropEv.exit:              ; preds = %.lr.ph, %bb.b
  %.sroa.09.0 = load ptr, ptr %.sroa.09.014, align 8, !tbaa !127 ; 2 uses
  %.not = icmp eq ptr %.sroa.09.0, %i.g
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17IReferenceCountedD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17IReferenceCountedD0Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #31
  ret void
}

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN4core6stringIwEaSIwEERS1_PKT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !155
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !156
  store i32 0, ptr %i.b, align 8, !tbaa !158
  call void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %2) #28
  %i.d = load ptr, ptr %2, align 8, !tbaa !83     ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.b
  br i1 %i.e, label %_ZN4core6stringIwE5clearEb.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.b, align 8, !tbaa !94
  %i.g = shl i64 %i.f, 2
  %i.h = add i64 %i.g, 4
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #31
  br label %_ZN4core6stringIwE5clearEb.exit

_ZN4core6stringIwE5clearEb.exit:                  ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8, !tbaa !83
  %i.j = icmp eq ptr %1, %i.i
  br i1 %i.j, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = tail call i64 @wcslen(ptr noundef nonnull %1) #29 ; 5 uses
  %i.l = and i64 %i.k, 4294967295                 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !156
  %i.o = icmp ult i64 %i.n, %i.l
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6resizeEmw(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.l, i32 noundef signext 0)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.p = and i64 %i.k, 4294967295                 ; 2 uses
  %.not18 = icmp eq i64 %i.p, 0
  br i1 %.not18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.q = load ptr, ptr %0, align 8, !tbaa !83     ; 7 uses
  %wide.trip.count = and i64 %i.k, 4294967295     ; 3 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count, 8
  %i.r = ptrtoaddr ptr %i.q to i64
  %i.s = sub i64 %i.a, %i.r
  %diff.check = icmp ugt i64 %i.s, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.k, 4294967288               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %wide.load = load <4 x i32>, ptr %i.t, align 4, !tbaa !158
  %wide.load24 = load <4 x i32>, ptr %i.u, align 4, !tbaa !158
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %index ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store <4 x i32> %wide.load, ptr %i.v, align 4, !tbaa !158
  store <4 x i32> %wide.load24, ptr %i.w, align 4, !tbaa !158
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !252

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %wide.trip.count, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.k, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.prol
  %i.z = load i32, ptr %i.y, align 4, !tbaa !158
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.prol
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !158
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !253

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.ab = sub nsw i64 %indvars.iv.ph, %i.p
  %i.ac = icmp ugt i64 %i.ab, -4
  br i1 %i.ac, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.f
  %i.ad = load i64, ptr %i.m, align 8, !tbaa !156
  %i.ae = icmp ugt i64 %i.ad, %i.l
  br i1 %i.ae, label %bb.g, label %bb.h

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !158
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !158
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !158
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !158
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.1
  %i.am = load i32, ptr %i.al, align 4, !tbaa !158
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next.1
  store i32 %i.am, ptr %i.an, align 4, !tbaa !158
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.2
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !158
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next.2
  store i32 %i.ap, ptr %i.aq, align 4, !tbaa !158
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !254

bb.g:                                             ; preds = %._crit_edge
  tail call void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6resizeEmw(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.l, i32 noundef signext 0)
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.g, %bb.c, %_ZN4core6stringIwE5clearEb.exit
  ret ptr %0
}

; Function Attrs: nounwind
declare void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #15

declare void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6resizeEmw(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i32 noundef signext) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK9StyleSpecorERKS_(ptr dead_on_unwind noalias writable sret(%class.StyleSpec) align 8 %0, ptr noundef nonnull align 8 dereferenceable(833) %1, ptr noundef nonnull align 8 dereferenceable(833) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(833) %0, ptr noundef nonnull align 8 dereferenceable(833) %1, i64 25, i1 false), !tbaa.struct !128
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.c = phi i64 [ 0, %bb.a ], [ %i.r, %bb.e ]    ; 4 uses
  %.idx.i.i = shl nuw nsw i64 %i.c, 5
  %.add4.i = add nuw nsw i64 %.idx.i.i, 32        ; 2 uses
  %.ptr7.i = getelementptr inbounds nuw i8, ptr %0, i64 %.add4.i ; 6 uses
  %i.d = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.c ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.ptr7.i, i64 16 ; 3 uses
  store ptr %i.e, ptr %.ptr7.i, align 8, !tbaa !92
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !129  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !93   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.h, ptr %i.a, align 8, !tbaa !130
  %i.i = icmp ugt i64 %i.h, 15
  br i1 %i.i, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.b
  %i.j = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %.ptr7.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i.i unwind label %bb.f ; 2 uses

.noexc.i.i:                                       ; preds = %.noexc.i.i.i
  store ptr %i.j, ptr %.ptr7.i, align 8, !tbaa !129
  %i.k = load i64, ptr %i.a, align 8, !tbaa !130
  store i64 %i.k, ptr %i.e, align 8, !tbaa !94
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i, %bb.b
  %i.l = phi ptr [ %i.j, %.noexc.i.i ], [ %i.e, %bb.b ] ; 2 uses
  switch i64 %i.h, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.m = load i8, ptr %i.f, align 1, !tbaa !94
  store i8 %i.m, ptr %i.l, align 1, !tbaa !94
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr align 1 %i.f, i64 %i.h, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i.i
  %i.n = load i64, ptr %i.a, align 8, !tbaa !130  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.ptr7.i, i64 8
  store i64 %i.n, ptr %i.o, align 8, !tbaa !93
  %i.p = load ptr, ptr %.ptr7.i, align 8, !tbaa !129
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1, !tbaa !94
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.r = add nuw nsw i64 %i.c, 1                  ; 2 uses
  %i.s = icmp eq i64 %i.r, 25
  br i1 %i.s, label %_ZN9StyleSpecC2ERKS_.exit, label %bb.b

bb.f:                                             ; preds = %.noexc.i.i.i
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = icmp eq i64 %i.c, 0
  br i1 %i.u, label %common.resume, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %.idx.i = phi i64 [ %.add.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.add4.i, %bb.f ] ; 2 uses
  %.ptr.i = getelementptr inbounds i8, ptr %0, i64 %.idx.i
  %.add.i = add nsw i64 %.idx.i, -32              ; 3 uses
  %.ptr5.i = getelementptr inbounds i8, ptr %0, i64 %.add.i
  %i.v = load ptr, ptr %.ptr5.i, align 8, !tbaa !129 ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %.ptr.i, i64 -16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.preheader.i.i
  %i.y = load i64, ptr %i.w, align 8, !tbaa !94
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %.preheader.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.aa = icmp eq i64 %.add.i, 32
end_hunk_2
