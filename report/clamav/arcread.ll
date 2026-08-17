inline.NumInlined: 217
inline.NumDeleted: 118
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN7Archive12ReadHeader15Ev:bb.a
bb.s:                                             ; preds = %bb.r
  %i.bi = zext i16 %i.bh to i32
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 13780 ; 3 uses
  store i32 %i.bi, ptr %i.bj, align 4, !tbaa !122
  %i.bk = lshr i16 %i.bh, 14
  %i.bl = trunc nuw nsw i16 %i.bk to i8
  %i.bm = and i8 %i.bl, 1
  store i8 %i.bm, ptr %i.be, align 4, !tbaa !123
  %i.bn = invoke noundef zeroext i16 @_ZN7RawRead4Get2Ev(ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %bb.t unwind label %bb.v       ; 2 uses

bb.t:                                             ; preds = %bb.s
  %i.bo = zext i16 %i.bn to i32                   ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 13784 ; 2 uses
  store i32 %i.bo, ptr %i.bp, align 8, !tbaa !124
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 13776 ; 5 uses
  store i32 %i.bg, ptr %i.bq, align 8, !tbaa !125
  %i.br = icmp ult i16 %i.bn, 7
  br i1 %i.br, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 52
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 8
  store <4 x ptr> <ptr @.str.8, ptr @.str.8, ptr @.str.8, ptr @.str.8>, ptr %i.bt, align 8, !tbaa !65
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr @.str.8, ptr %i.bu, align 8, !tbaa !65
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr @.str.8, ptr %i.bv, align 8, !tbaa !65
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 56
  store ptr @.str.8, ptr %i.bw, align 8, !tbaa !65
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bx, i8 0, i64 40, i1 false)
  store i32 26, ptr %i.by, align 8, !tbaa !66
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i32 1, ptr %i.bz, align 8, !tbaa !69
  store ptr %i.bs, ptr %1, align 8, !tbaa !65
  invoke void @_ZN10uiMsgStore3MsgEv(ptr noundef nonnull align 8 dereferenceable(108) %1)
          to label %.noexc250 unwind label %bb.v

.noexc250:                                        ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 48864
  store i8 1, ptr %i.ca, align 8, !tbaa !70
  invoke void @_ZN12ErrorHandler12SetErrorCodeE8RAR_EXIT(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler, i32 noundef 3)
          to label %_ZN7Archive14UnexpEndArcMsgEv.exit249 unwind label %bb.v

bb.v:                                             ; preds = %.invoke, %.noexc250, %bb.u, %bb.fm, %bb.fj, %bb.fi, %bb.fh, %bb.fg, %bb.ff, %bb.fe, %bb.fc, %bb.fb, %bb.fa, %bb.ez, %bb.ex, %bb.ew, %bb.ev, %bb.et, %bb.es, %bb.er, %bb.eq, %bb.ep, %bb.en, %bb.em, %bb.el, %bb.ek, %bb.ei, %bb.ef, %bb.ag, %bb.af, %bb.ae, %bb.ac, %bb.s, %bb.r, %bb.q
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ge

bb.w:                                             ; preds = %bb.t
  switch i8 %i.bf, label %bb.z [
    i8 115, label %.thread258
    i8 116, label %.thread257
    i8 122, label %bb.x
    i8 123, label %bb.y
  ]

.thread258:                                       ; preds = %bb.w
  store i32 1, ptr %i.bq, align 8, !tbaa !125
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 11076
  store i32 1, ptr %i.cc, align 4, !tbaa !71
  br label %bb.aa

bb.x:                                             ; preds = %bb.w
  br label %.thread257

bb.y:                                             ; preds = %bb.w
  br label %.thread257

.thread257:                                       ; preds = %bb.w, %bb.y, %bb.x
  %.sink301 = phi i32 [ 5, %bb.y ], [ 3, %bb.x ], [ 2, %bb.w ] ; 2 uses
  store i32 %.sink301, ptr %i.bq, align 8, !tbaa !125
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 11076
  store i32 %.sink301, ptr %i.cd, align 4, !tbaa !71
  br label %bb.ab

bb.z:                                             ; preds = %bb.w
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 11076
  store i32 %i.bg, ptr %i.ce, align 4, !tbaa !71
  switch i8 %i.bf, label %bb.ab [
    i8 117, label %.invoke
    i8 1, label %bb.aa
  ]

bb.aa:                                            ; preds = %.thread258, %bb.z
  %i.cf = load i32, ptr %i.bj, align 4, !tbaa !122
  %i.cg = and i32 %i.cf, 2
  %.not190 = icmp eq i32 %i.cg, 0
  br i1 %.not190, label %bb.ab, label %.invoke

bb.ab:                                            ; preds = %.thread257, %bb.z, %bb.aa
  %i.ch = add nsw i32 %i.bo, -7
  %i.ci = zext nneg i32 %i.ch to i64
  br label %.invoke

.invoke:                                          ; preds = %bb.aa, %bb.z, %bb.ab
  %i.cj = phi i64 [ %i.ci, %bb.ab ], [ 6, %bb.z ], [ 6, %bb.aa ]
  %i.ck = invoke noundef i64 @_ZN7RawRead4ReadEm(ptr noundef nonnull align 8 dereferenceable(64) %4, i64 noundef %i.cj)
          to label %bb.ac unwind label %bb.v      ; 0 uses

bb.ac:                                            ; preds = %.invoke
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 48824
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !62
  %i.cn = load i32, ptr %i.bp, align 8, !tbaa !124
  %i.co = zext i32 %i.cn to i64
  %i.cp = invoke noundef i32 @_ZN7Archive14FullHeaderSizeEm(ptr noundef nonnull align 8 dereferenceable(57108) %0, i64 noundef %i.co)
          to label %bb.ad unwind label %bb.v

bb.ad:                                            ; preds = %bb.ac
  %i.cq = zext i32 %i.cp to i64
  %i.cr = add nsw i64 %i.cm, %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 48832 ; 9 uses
  store i64 %i.cr, ptr %i.cs, align 8, !tbaa !64
  %i.ct = load i32, ptr %i.bq, align 8, !tbaa !125 ; 2 uses
  switch i32 %i.ct, label %bb.fl [
    i32 1, label %bb.ae
    i32 2, label %bb.ak
    i32 3, label %bb.ak
    i32 5, label %bb.ee
    i32 117, label %bb.ek
    i32 120, label %bb.ep
    i32 119, label %bb.ev
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 13808 ; 2 uses
  invoke void @_ZN10MainHeader5ResetEv(ptr noundef nonnull align 8 dereferenceable(112) %i.cu)
          to label %bb.af unwind label %bb.v

bb.af:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.cu, ptr noundef nonnull align 4 dereferenceable(20) %i.bd, i64 20, i1 false), !tbaa.struct !126
  %i.cv = invoke noundef zeroext i16 @_ZN7RawRead4Get2Ev(ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %bb.ag unwind label %bb.v

bb.ag:                                            ; preds = %bb.af
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 13828 ; 2 uses
  store i16 %i.cv, ptr %i.cw, align 4, !tbaa !130
  %i.cx = invoke noundef i32 @_ZN7RawRead4Get4Ev(ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %bb.ah unwind label %bb.v      ; 2 uses

bb.ah:                                            ; preds = %bb.ag
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 13832
  store i32 %i.cx, ptr %i.cy, align 8, !tbaa !131
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 13816
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !84 ; 3 uses
  %i.db = trunc i32 %i.da to i8                   ; 6 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 48845
  %i.dd = and i8 %i.db, 1
  store i8 %i.dd, ptr %i.dc, align 1, !tbaa !73
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 48844
  %i.df = lshr i8 %i.db, 3
  %i.dg = and i8 %i.df, 1
  store i8 %i.dg, ptr %i.de, align 4, !tbaa !74
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 48847
  %i.di = lshr i8 %i.db, 2
  %i.dj = and i8 %i.di, 1
  store i8 %i.dj, ptr %i.dh, align 1, !tbaa !75
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 48851
  %i.dl = lshr i8 %i.db, 6
  %i.dm = and i8 %i.dl, 1
  store i8 %i.dm, ptr %i.dk, align 1, !tbaa !132
  %i.dn = and i32 %i.da, 128
  %i.do = icmp ne i32 %i.dn, 0
  %i.dp = zext i1 %i.do to i8
  store i8 %i.dp, ptr %i.c, align 4, !tbaa !118
  %.not216 = icmp eq i32 %i.cx, 0
  br i1 %.not216, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.dq = load i16, ptr %i.cw, align 4, !tbaa !130
  %i.dr = icmp ne i16 %i.dq, 0
  %i.ds = zext i1 %i.dr to i8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.dt = phi i8 [ 1, %bb.ah ], [ %i.ds, %bb.ai ]
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 48848
  store i8 %i.dt, ptr %i.du, align 8, !tbaa !133
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 13836
  %i.dw = lshr i8 %i.db, 1
  %i.dx = and i8 %i.dw, 1
  store i8 %i.dx, ptr %i.dv, align 4, !tbaa !76
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 48849
  %i.dz = lshr i32 %i.da, 8
  %i.ea = trunc i32 %i.dz to i8
  %i.eb = and i8 %i.ea, 1
  store i8 %i.eb, ptr %i.dy, align 1, !tbaa !134
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 48850
  %i.ed = lshr i8 %i.db, 4
  %i.ee = and i8 %i.ed, 1
  store i8 %i.ee, ptr %i.ec, align 2, !tbaa !135
  br label %bb.fo

bb.ak:                                            ; preds = %bb.ad, %bb.ad
  %i.ef = icmp eq i32 %i.ct, 2                    ; 5 uses
  %.v = select i1 %i.ef, i64 13976, i64 31224
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 %.v ; 37 uses
  invoke void @_ZN10FileHeader5ResetEm(ptr noundef nonnull align 8 dereferenceable(17184) %i.eg, i64 noundef 0)
          to label %bb.al unwind label %bb.aw

bb.al:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.eg, ptr noundef nonnull align 4 dereferenceable(20) %i.bd, i64 20, i1 false), !tbaa.struct !126
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8 ; 6 uses
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !84 ; 5 uses
  %i.ej = trunc i32 %i.ei to i8                   ; 5 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eg, i64 8352
  %i.el = and i8 %i.ej, 1
  store i8 %i.el, ptr %i.ek, align 8, !tbaa !136
  %i.em = getelementptr inbounds nuw i8, ptr %i.eg, i64 8353
  %i.en = lshr i8 %i.ej, 1
  %i.eo = and i8 %i.en, 1
  store i8 %i.eo, ptr %i.em, align 1, !tbaa !137
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eg, i64 8355 ; 2 uses
  %i.eq = lshr i8 %i.ej, 2
  %i.er = and i8 %i.eq, 1
  store i8 %i.er, ptr %i.ep, align 1, !tbaa !138
  %i.es = getelementptr inbounds nuw i8, ptr %i.eg, i64 8360
  %i.et = lshr i32 %i.ei, 10
  %i.eu = trunc i32 %i.et to i8
  %i.ev = and i8 %i.eu, 1
  store i8 %i.ev, ptr %i.es, align 8, !tbaa !139
  %i.ew = lshr i8 %i.ej, 4
  %i.ex = and i8 %i.ew, 1                         ; 2 uses
  %. = select i1 %i.ef, i8 %i.ex, i8 0
  %.302 = select i1 %i.ef, i8 0, i8 %i.ex
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eg, i64 8440
  store i8 %., ptr %i.ey, align 8, !tbaa !140
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eg, i64 8458
  store i8 %.302, ptr %i.ez, align 2, !tbaa !141
  %i.fa = and i32 %i.ei, 224
  %i.fb = icmp eq i32 %i.fa, 224                  ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.eg, i64 8441 ; 3 uses
  %i.fd = zext i1 %i.fb to i8
  store i8 %i.fd, ptr %i.fc, align 1, !tbaa !111
  %i.fe = lshr i32 %i.ei, 5
  %i.ff = and i32 %i.fe, 7
  %i.fg = shl nuw nsw i32 65536, %i.ff
  %narrow = select i1 %i.fb, i32 0, i32 %i.fg
  %i.fh = zext nneg i32 %narrow to i64
  %i.fi = getelementptr inbounds nuw i8, ptr %i.eg, i64 8448
  store i64 %i.fh, ptr %i.fi, align 8, !tbaa !142
  %i.fj = getelementptr inbounds nuw i8, ptr %i.eg, i64 8442 ; 2 uses
  %i.fk = lshr i8 %i.ej, 3
  %i.fl = and i8 %i.fk, 1
  store i8 %i.fl, ptr %i.fj, align 2, !tbaa !143
  %i.fm = getelementptr inbounds nuw i8, ptr %i.eg, i64 8443
  %i.fn = lshr i32 %i.ei, 11
  %i.fo = trunc i32 %i.fn to i8
  %i.fp = and i8 %i.fo, 1
  store i8 %i.fp, ptr %i.fm, align 1, !tbaa !144
  %i.fq = invoke noundef i32 @_ZN7RawRead4Get4Ev(ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %bb.am unwind label %bb.aw

bb.am:                                            ; preds = %bb.al
  %i.fr = getelementptr inbounds nuw i8, ptr %i.eg, i64 20 ; 2 uses
  store i32 %i.fq, ptr %i.fr, align 4, !tbaa !79
  %i.fs = invoke noundef i32 @_ZN7RawRead4Get4Ev(ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %bb.an unwind label %bb.ax     ; 3 uses

bb.an:                                            ; preds = %bb.am
  %i.ft = invoke noundef zeroext i8 @_ZN7RawRead4Get1Ev(ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %bb.ao unwind label %bb.ax

bb.ao:                                            ; preds = %bb.an
  %i.fu = getelementptr inbounds nuw i8, ptr %i.eg, i64 24 ; 2 uses
  store i8 %i.ft, ptr %i.fu, align 8, !tbaa !145
  %i.fv = getelementptr inbounds nuw i8, ptr %i.eg, i64 8312
  store i32 2, ptr %i.fv, align 8, !tbaa !146
  %i.fw = invoke noundef i32 @_ZN7RawRead4Get4Ev(ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %bb.ap unwind label %bb.ax

bb.ap:                                            ; preds = %bb.ao
  %i.fx = getelementptr inbounds nuw i8, ptr %i.eg, i64 8316
  store i32 %i.fw, ptr %i.fx, align 4, !tbaa !82
  %i.fy = invoke noundef i32 @_ZN7RawRead4Get4Ev(ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %bb.aq unwind label %bb.ay

bb.aq:                                            ; preds = %bb.ap
  %i.fz = invoke noundef zeroext i8 @_ZN7RawRead4Get1Ev(ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %bb.ar unwind label %bb.ay

bb.ar:                                            ; preds = %bb.aq
  %i.ga = zext i8 %i.fz to i32
  %i.gb = getelementptr inbounds nuw i8, ptr %i.eg, i64 28 ; 2 uses
  store i32 %i.ga, ptr %i.gb, align 4, !tbaa !147
  %i.gc = invoke noundef zeroext i8 @_ZN7RawRead4Get1Ev(ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %bb.as unwind label %bb.ay

bb.as:                                            ; preds = %bb.ar
  %i.gd = add i8 %i.gc, -48
  %i.ge = getelementptr inbounds nuw i8, ptr %i.eg, i64 32
  store i8 %i.gd, ptr %i.ge, align 8, !tbaa !148
  %i.gf = invoke noundef zeroext i16 @_ZN7RawRead4Get2Ev(ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %bb.at unwind label %bb.az     ; 2 uses

bb.at:                                            ; preds = %bb.as
  %i.gg = invoke noundef i32 @_ZN7RawRead4Get4Ev(ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %bb.au unwind label %bb.az     ; 4 uses

bb.au:                                            ; preds = %bb.at
  %i.gh = getelementptr inbounds nuw i8, ptr %i.eg, i64 36 ; 2 uses
  store i32 %i.gg, ptr %i.gh, align 4, !tbaa !82
  %i.gi = load i32, ptr %i.gb, align 4, !tbaa !147 ; 2 uses
  %i.gj = icmp ugt i32 %i.gi, 19
  %i.gk = and i32 %i.gg, 16
  %.not191 = icmp eq i32 %i.gk, 0
  %or.cond235 = or i1 %.not191, %i.gj
  br i1 %or.cond235, label %bb.ba, label %bb.av

bb.av:                                            ; preds = %bb.au
  store i8 1, ptr %i.fc, align 1, !tbaa !111
  br label %bb.ba

bb.aw:                                            ; preds = %bb.al, %bb.ak
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ge

bb.ax:                                            ; preds = %bb.ao, %bb.an, %bb.am
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ge

bb.ay:                                            ; preds = %bb.ar, %bb.aq, %bb.ap
  %i.gn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ge

bb.az:                                            ; preds = %bb.at, %bb.as
  %i.go = landingpad { ptr, i32 }
          cleanup
  br label %bb.ge

bb.ba:                                            ; preds = %bb.av, %bb.au
  %i.gp = getelementptr inbounds nuw i8, ptr %i.eg, i64 8356 ; 2 uses
  store i32 0, ptr %i.gp, align 4, !tbaa !149
  %i.gq = load i8, ptr %i.ep, align 1, !tbaa !138, !range !58, !noundef !59
  %i.gr = trunc nuw i8 %i.gq to i1
  br i1 %i.gr, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %switch.tableidx = add i32 %i.gi, -13           ; 2 uses
  %i.gs = icmp ult i32 %switch.tableidx, 14
  br i1 %i.gs, label %switch.lookup, label %.sink.split

switch.lookup:                                    ; preds = %bb.bb
  %i.gt = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN7Archive12ReadHeader15Ev, i64 %i.gt
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %.sink.split

.sink.split:                                      ; preds = %bb.bb, %switch.lookup
  %.sink = phi i32 [ %switch.ext, %switch.lookup ], [ 4, %bb.bb ]
  store i32 %.sink, ptr %i.gp, align 4, !tbaa !149
  br label %bb.bc

bb.bc:                                            ; preds = %.sink.split, %bb.ba
  %i.gu = getelementptr inbounds nuw i8, ptr %i.eg, i64 8460 ; 3 uses
  store i32 2, ptr %i.gu, align 4, !tbaa !110
  %i.gv = load i8, ptr %i.fu, align 8, !tbaa !145 ; 3 uses
  switch i8 %i.gv, label %bb.bd [
    i8 3, label %bb.be
    i8 5, label %bb.be
  ]

bb.bd:                                            ; preds = %bb.bc
  %i.gw = icmp ult i8 %i.gv, 6
  br i1 %i.gw, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd, %bb.bc, %bb.bc
  %storemerge = phi i32 [ 1, %bb.bc ], [ 1, %bb.bc ], [ 0, %bb.bd ]
  store i32 %storemerge, ptr %i.gu, align 4, !tbaa !110
  %i.gx = getelementptr inbounds nuw i8, ptr %i.eg, i64 8464 ; 2 uses
  store i32 0, ptr %i.gx, align 8, !tbaa !150
  %i.gy = icmp eq i8 %i.gv, 3
  %i.gz = and i32 %i.gg, 61440
  %i.ha = icmp eq i32 %i.gz, 40960
  %or.cond = and i1 %i.gy, %i.ha
  br i1 %or.cond, label %7, label %bb.bg

7:                                                ; preds = %bb.be
  store i32 1, ptr %i.gx, align 8, !tbaa !150
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bd, %7
  %.sink306 = phi i64 [ 8468, %7 ], [ 8464, %bb.bd ]
  %i.hb = getelementptr inbounds nuw i8, ptr %i.eg, i64 %.sink306
  store i32 0, ptr %i.hb, align 4, !tbaa !82
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.lobit = lshr i32 %i.gg, 31
  %i.hc = trunc nuw nsw i32 %.lobit to i8
  %i.hd = select i1 %i.ef, i8 0, i8 %i.hc
  %i.he = getelementptr inbounds nuw i8, ptr %i.eg, i64 8456
  store i8 %i.hd, ptr %i.he, align 8, !tbaa !151
  %i.hf = load i32, ptr %i.eh, align 8, !tbaa !84
  %i.hg = and i32 %i.hf, 256                      ; 2 uses
  %.not193 = icmp eq i32 %i.hg, 0
  %i.hh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8457
  %.lobit192 = lshr exact i32 %i.hg, 8
  %i.hi = trunc nuw nsw i32 %.lobit192 to i8
  store i8 %i.hi, ptr %i.hh, align 1, !tbaa !152
  br i1 %.not193, label %bb.bl, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.hj = invoke noundef i32 @_ZN7RawRead4Get4Ev(ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %bb.bi unwind label %bb.bk

bb.bi:                                            ; preds = %bb.bh
  %i.hk = invoke noundef i32 @_ZN7RawRead4Get4Ev(ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %bb.bj unwind label %bb.bk     ; 2 uses

bb.bj:                                            ; preds = %bb.bi
  %i.hl = and i32 %i.hk, %i.fs
  %i.hm = icmp eq i32 %i.hl, -1                   ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.eg, i64 8354
  %i.ho = zext i1 %i.hm to i8
  store i8 %i.ho, ptr %i.hn, align 2, !tbaa !153
  %i.hp = zext i32 %i.hj to i64
  %i.hq = shl nuw i64 %i.hp, 32
  %i.hr = zext i32 %i.hk to i64
  %i.hs = shl nuw i64 %i.hr, 32
  br label %bb.bm

bb.bk:                                            ; preds = %bb.bi, %bb.bh
  %i.ht = landingpad { ptr, i32 }
          cleanup
  br label %bb.ge

bb.bl:                                            ; preds = %bb.bg
  %i.hu = icmp eq i32 %i.fs, -1                   ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.eg, i64 8354
  %i.hw = zext i1 %i.hu to i8
  store i8 %i.hw, ptr %i.hv, align 2, !tbaa !153
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bj
  %i.hx = phi i1 [ %i.hm, %bb.bj ], [ %i.hu, %bb.bl ]
  %.0180 = phi i64 [ %i.hs, %bb.bj ], [ 0, %bb.bl ]
  %.0178 = phi i64 [ %i.hq, %bb.bj ], [ 0, %bb.bl ]
  %i.hy = load i32, ptr %i.fr, align 4, !tbaa !79
  %i.hz = zext i32 %i.hy to i64
  %i.ia = or disjoint i64 %.0178, %i.hz
  %i.ib = getelementptr inbounds nuw i8, ptr %i.eg, i64 8288 ; 2 uses
  store i64 %i.ia, ptr %i.ib, align 8, !tbaa !154
  %i.ic = zext i32 %i.fs to i64
  %i.id = or disjoint i64 %.0180, %i.ic
  %i.ie = getelementptr inbounds nuw i8, ptr %i.eg, i64 8296
  %spec.store.select = select i1 %i.hx, i64 9223372034707292159, i64 %i.id
  store i64 %spec.store.select, ptr %i.ie, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.if = call i16 @llvm.umin.i16(i16 %i.gf, i16 8191)
  %i.ig = zext nneg i16 %i.if to i64              ; 5 uses
  %i.ih = invoke noundef i64 @_ZN7RawRead4GetBEPvm(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull %i.b, i64 noundef %i.ig)
          to label %bb.bn unwind label %bb.bs     ; 0 uses

bb.bn:                                            ; preds = %bb.bm
  %i.ii = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ig
  store i8 0, ptr %i.ii, align 1, !tbaa !82
  %i.ij = getelementptr inbounds nuw i8, ptr %i.eg, i64 40 ; 11 uses
  br i1 %i.ef, label %bb.bo, label %bb.cf

bb.bo:                                            ; preds = %bb.bn
  store i32 0, ptr %i.ij, align 8, !tbaa !112
  %i.ik = load i32, ptr %i.eh, align 8, !tbaa !84
  %i.il = and i32 %i.ik, 512
  %.not195 = icmp eq i32 %i.il, 0
  br i1 %.not195, label %.thread260, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  invoke void @_ZN14EncodeFileNameC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.bq unwind label %bb.bt

bb.bq:                                            ; preds = %bb.bp
  %i.im = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #21
  %i.in = add i64 %i.im, 1                        ; 3 uses
  %i.io = icmp ult i64 %i.in, %i.ig
  br i1 %i.io, label %bb.br, label %bb.bw

bb.br:                                            ; preds = %bb.bq
  %i.ip = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.in
  %i.iq = sub nuw nsw i64 %i.ig, %i.in
  invoke void @_ZN14EncodeFileName6DecodeEPcmPhmPwm(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull %i.b, i64 noundef %i.ig, ptr noundef nonnull %i.ip, i64 noundef %i.iq, ptr noundef nonnull %i.ij, i64 noundef 2048)
          to label %bb.bw unwind label %bb.bu

bb.bs:                                            ; preds = %bb.ca, %bb.by, %bb.cn, %bb.cm, %bb.cf, %.thread260, %bb.bm
  %i.ir = landingpad { ptr, i32 }
          cleanup
  br label %bb.ed

bb.bt:                                            ; preds = %bb.bp
  %i.is = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.bu:                                            ; preds = %bb.br
  %i.it = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %.pn = phi { ptr, i32 } [ %i.it, %bb.bu ], [ %i.is, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.ed

bb.bw:                                            ; preds = %bb.bq, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %.pr = load i32, ptr %i.ij, align 8, !tbaa !112
  %i.iu = icmp eq i32 %.pr, 0
  br i1 %i.iu, label %.thread260, label %bb.bx

.thread260:                                       ; preds = %bb.bo, %bb.bw
  invoke void @_Z13ArcCharToWidePKcPwm13ACTW_ENCODING(ptr noundef nonnull %i.b, ptr noundef nonnull %i.ij, i64 noundef 2048, i32 noundef 1)
          to label %bb.bx unwind label %bb.bs

bb.bx:                                            ; preds = %.thread260, %bb.bw
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 11056 ; 2 uses
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !96
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 57484
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !97 ; 2 uses
  %i.iz = icmp eq i32 %i.iy, 1
  br i1 %i.iz, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.ja = invoke noundef ptr @_Z8wcsupperPw(ptr noundef nonnull %i.ij)
          to label %.noexc252 unwind label %bb.bs ; 0 uses

.noexc252:                                        ; preds = %bb.by
  %.pre.i = load ptr, ptr %i.iv, align 8, !tbaa !96
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 57484
  %.pre3.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !97
  br label %bb.bz

bb.bz:                                            ; preds = %.noexc252, %bb.bx
  %i.jb = phi i32 [ %.pre3.i, %.noexc252 ], [ %i.iy, %bb.bx ]
  %i.jc = icmp eq i32 %i.jb, 2
  br i1 %i.jc, label %bb.ca, label %_ZN7Archive15ConvertNameCaseEPw.exit

bb.ca:                                            ; preds = %bb.bz
  %i.jd = invoke noundef ptr @_Z8wcslowerPw(ptr noundef nonnull %i.ij)
          to label %_ZN7Archive15ConvertNameCaseEPw.exit unwind label %bb.bs ; 0 uses

_ZN7Archive15ConvertNameCaseEPw.exit:             ; preds = %bb.bz, %bb.ca
  %i.je = load i32, ptr %i.gu, align 4, !tbaa !110
  %.fr20.i = freeze i32 %i.je                     ; 2 uses
  %i.jf = icmp eq i32 %.fr20.i, 2
  br i1 %i.jf, label %.thread.i, label %bb.cb

.thread.i:                                        ; preds = %_ZN7Archive15ConvertNameCaseEPw.exit
  %i.jg = load i8, ptr %i.fc, align 1, !tbaa !111, !range !58, !noundef !59
  %i.jh = trunc nuw i8 %i.jg to i1
  %..i = select i1 %i.jh, i32 16, i32 32
  store i32 %..i, ptr %i.gh, align 4, !tbaa !82
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 48840
  br label %.split.preheader.i

bb.cb:                                            ; preds = %_ZN7Archive15ConvertNameCaseEPw.exit
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 48840 ; 2 uses
  %i.jk = icmp eq i32 %.fr20.i, 0
  br i1 %i.jk, label %.split.us.preheader.i, label %.split.preheader.i

.split.preheader.i:                               ; preds = %bb.cb, %.thread.i
  %i.jl = phi ptr [ %i.ji, %.thread.i ], [ %i.jj, %bb.cb ]
  br label %.split.i

.split.us.preheader.i:                            ; preds = %bb.cb
  %i.jm = load i32, ptr %i.jj, align 8
  %.fr268 = freeze i32 %i.jm
  %i.jn = icmp eq i32 %.fr268, 3
  br i1 %i.jn, label %.split.us.i.us, label %.split.us.i

.split.us.i.us:                                   ; preds = %.split.us.preheader.i, %bb.cc
  %.0.us.i.us = phi ptr [ %i.jp, %bb.cc ], [ %i.ij, %.split.us.preheader.i ] ; 3 uses
  %i.jo = load i32, ptr %.0.us.i.us, align 4, !tbaa !112
  switch i32 %i.jo, label %bb.cc [
    i32 0, label %_ZN7Archive17ConvertFileHeaderEP10FileHeader.exit
    i32 92, label %.sink.split.i.us
    i32 47, label %.thread17.us.i.us
  ]

.thread17.us.i.us:                                ; preds = %.split.us.i.us
  br label %.sink.split.i.us

.sink.split.i.us:                                 ; preds = %.split.us.i.us, %.thread17.us.i.us
  %.sink27.i.us = phi i32 [ 47, %.thread17.us.i.us ], [ 95, %.split.us.i.us ]
  store i32 %.sink27.i.us, ptr %.0.us.i.us, align 4, !tbaa !112
  br label %bb.cc

bb.cc:                                            ; preds = %.sink.split.i.us, %.split.us.i.us
end_hunk_0
