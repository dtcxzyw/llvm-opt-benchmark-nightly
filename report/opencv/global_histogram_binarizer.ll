Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/global_histogram_binarizer?download=true
inline.NumInlined: 221
inline.NumDeleted: 109
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN5zxing24GlobalHistogramBinarizer14binarizeImage0ERNS_12ErrorHandlerE:bb.a
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !35
  %i.ea = add nsw i32 %i.dz, 1
  store i32 %i.ea, ptr %i.dy, align 4, !tbaa !35
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge.thread, label %.lr.ph.new, !llvm.loop !64

._crit_edge.thread:                               ; preds = %.lr.ph.new, %.prol.loopexit
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5zxing8ArrayRefIcEE, i64 16), ptr %5, align 8, !tbaa !15
  br label %bb.ab

._crit_edge:                                      ; preds = %bb.aa
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5zxing8ArrayRefIcEE, i64 16), ptr %5, align 8, !tbaa !15
  %.not.i70 = icmp eq ptr %.pre, null
  br i1 %.not.i70, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge.thread, %._crit_edge
  %i.eb = getelementptr inbounds nuw i8, ptr %.pre, i64 8 ; 3 uses
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !13
  %i.ed = add i32 %i.ec, -1                       ; 2 uses
  store i32 %i.ed, ptr %i.eb, align 8, !tbaa !13
  %i.ee = icmp eq i32 %i.ed, 0
  br i1 %i.ee, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i32 -559026175, ptr %i.eb, align 8, !tbaa !13
  %i.ef = load ptr, ptr %.pre, align 8, !tbaa !15
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8
  call void %i.eh(ptr noundef nonnull align 8 dereferenceable(12) %.pre) #17, !inline_history !2
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %i.ei = add nuw nsw i32 %.03693, 1              ; 2 uses
  %exitcond103 = icmp eq i32 %i.ei, 5
  br i1 %exitcond103, label %.critedge64, label %bb.q, !llvm.loop !65

bb.ae:                                            ; preds = %bb.z
  %i.ej = getelementptr inbounds nuw i8, ptr %i.cs, i64 8 ; 3 uses
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !13
  %i.el = add i32 %i.ek, -1                       ; 2 uses
  store i32 %i.el, ptr %i.ej, align 8, !tbaa !13
  %i.em = icmp eq i32 %i.el, 0
  br i1 %i.em, label %bb.af, label %_ZN5zxing8ArrayRefIcED2Ev.exit69

bb.af:                                            ; preds = %bb.ae
  store i32 -559026175, ptr %i.ej, align 8, !tbaa !13
  br label %_ZN5zxing8ArrayRefIcED2Ev.exit69.sink.split

_ZN5zxing8ArrayRefIcED2Ev.exit69.sink.split:      ; preds = %bb.y, %bb.af
  %.sink136 = phi ptr [ %i.cs, %bb.af ], [ %i.cm, %bb.y ] ; 2 uses
  %.pn.pn.ph = phi { ptr, i32 } [ %i.cr, %bb.af ], [ %i.cl, %bb.y ]
  %i.en = load ptr, ptr %.sink136, align 8, !tbaa !15
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8
  call void %i.ep(ptr noundef nonnull align 8 dereferenceable(12) %.sink136) #17
  br label %_ZN5zxing8ArrayRefIcED2Ev.exit69

_ZN5zxing8ArrayRefIcED2Ev.exit69:                 ; preds = %_ZN5zxing8ArrayRefIcED2Ev.exit69.sink.split, %bb.ae, %bb.z, %bb.x, %bb.w
  %.pn.pn = phi { ptr, i32 } [ %i.cr, %bb.ae ], [ %i.cl, %bb.w ], [ %i.cl, %bb.x ], [ %i.cr, %bb.z ], [ %.pn.pn.ph, %_ZN5zxing8ArrayRefIcED2Ev.exit69.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %bb.ax

.critedge:                                        ; preds = %bb.v
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5zxing8ArrayRefIcEE, i64 16), ptr %5, align 8, !tbaa !15
  %i.eq = load ptr, ptr %i.bo, align 8, !tbaa !19 ; 4 uses
  %.not.i74 = icmp eq ptr %i.eq, null
  br i1 %.not.i74, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %.critedge
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8 ; 3 uses
  %i.es = load i32, ptr %i.er, align 8, !tbaa !13
  %i.et = add i32 %i.es, -1                       ; 2 uses
  store i32 %i.et, ptr %i.er, align 8, !tbaa !13
  %i.eu = icmp eq i32 %i.et, 0
  br i1 %i.eu, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store i32 -559026175, ptr %i.er, align 8, !tbaa !13
  %i.ev = load ptr, ptr %i.eq, align 8, !tbaa !15
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.ex = load ptr, ptr %i.ew, align 8
  call void %i.ex(ptr noundef nonnull align 8 dereferenceable(12) %i.eq) #17, !inline_history !2
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %bb.av

.critedge64:                                      ; preds = %bb.ad
  %i.ey = invoke noundef i32 @_ZN5zxing24GlobalHistogramBinarizer18estimateBlackPointERKNS_8ArrayRefIiEERNS_12ErrorHandlerE(ptr noundef nonnull align 8 dereferenceable(121) %0, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.aj unwind label %bb.al

bb.aj:                                            ; preds = %.critedge64
  %i.ez = load ptr, ptr %1, align 8, !tbaa !15
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.fb = load ptr, ptr %i.fa, align 8
  %i.fc = invoke noundef i32 %i.fb(ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.ak unwind label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %.not56 = icmp eq i32 %i.fc, 0
  br i1 %.not56, label %bb.am, label %bb.av

bb.al:                                            ; preds = %bb.aj, %.critedge64
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.am:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.fe = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 24
  %i.fg = load ptr, ptr %i.ff, align 8
  invoke void %i.fg(ptr dead_on_unwind nonnull writable sret(%"class.zxing::ArrayRef") align 8 %7, ptr noundef nonnull align 8 dereferenceable(20) %i.a)
          to label %.preheader unwind label %bb.ar

.preheader:                                       ; preds = %bb.am
  %i.fh = load i32, ptr %i.l, align 8, !tbaa !71  ; 2 uses
  %i.fi = icmp sgt i32 %i.fh, 0
  br i1 %i.fi, label %.lr.ph99, label %._crit_edge100

.lr.ph99:                                         ; preds = %.preheader
  %i.fj = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.i, i64 336
  %i.fl = getelementptr inbounds nuw i8, ptr %i.i, i64 312
  %i.fm = load i32, ptr %i.j, align 4, !tbaa !70  ; 3 uses
  %i.fn = icmp sgt i32 %i.fm, 0
  br i1 %i.fn, label %.lr.ph99.split, label %._crit_edge100

._crit_edge100:                                   ; preds = %._crit_edge97, %.lr.ph99, %.preheader
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.fp = load i32, ptr %i.n, align 8, !tbaa !13
  %i.fq = add i32 %i.fp, 1
  store i32 %i.fq, ptr %i.n, align 8, !tbaa !13
  %i.fr = load ptr, ptr %i.fo, align 8, !tbaa !41 ; 4 uses
  %.not5.i.i = icmp eq ptr %i.fr, null
  br i1 %.not5.i.i, label %_ZN5zxing3RefINS_9BitMatrixEEaSERKS2_.exit, label %bb.an

bb.an:                                            ; preds = %._crit_edge100
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8 ; 3 uses
  %i.ft = load i32, ptr %i.fs, align 8, !tbaa !13
  %i.fu = add i32 %i.ft, -1                       ; 2 uses
  store i32 %i.fu, ptr %i.fs, align 8, !tbaa !13
  %i.fv = icmp eq i32 %i.fu, 0
  br i1 %i.fv, label %bb.ao, label %_ZN5zxing3RefINS_9BitMatrixEEaSERKS2_.exit

bb.ao:                                            ; preds = %bb.an
  store i32 -559026175, ptr %i.fs, align 8, !tbaa !13
  %i.fw = load ptr, ptr %i.fr, align 8, !tbaa !15
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.fy = load ptr, ptr %i.fx, align 8
  call void %i.fy(ptr noundef nonnull align 8 dereferenceable(12) %i.fr) #17, !inline_history !66
  br label %_ZN5zxing3RefINS_9BitMatrixEEaSERKS2_.exit

_ZN5zxing3RefINS_9BitMatrixEEaSERKS2_.exit:       ; preds = %._crit_edge100, %bb.an, %bb.ao
  store ptr %i.i, ptr %i.fo, align 8, !tbaa !41
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5zxing8ArrayRefIcEE, i64 16), ptr %7, align 8, !tbaa !15
  %i.fz = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !19 ; 4 uses
  %.not.i77 = icmp eq ptr %i.ga, null
  br i1 %.not.i77, label %_ZN5zxing8ArrayRefIcED2Ev.exit78, label %bb.ap

bb.ap:                                            ; preds = %_ZN5zxing3RefINS_9BitMatrixEEaSERKS2_.exit
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8 ; 3 uses
  %i.gc = load i32, ptr %i.gb, align 8, !tbaa !13
  %i.gd = add i32 %i.gc, -1                       ; 2 uses
  store i32 %i.gd, ptr %i.gb, align 8, !tbaa !13
  %i.ge = icmp eq i32 %i.gd, 0
  br i1 %i.ge, label %bb.aq, label %_ZN5zxing8ArrayRefIcED2Ev.exit78

bb.aq:                                            ; preds = %bb.ap
  store i32 -559026175, ptr %i.gb, align 8, !tbaa !13
  %i.gf = load ptr, ptr %i.ga, align 8, !tbaa !15
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.gh = load ptr, ptr %i.gg, align 8
  call void %i.gh(ptr noundef nonnull align 8 dereferenceable(12) %i.ga) #17, !inline_history !2
  br label %_ZN5zxing8ArrayRefIcED2Ev.exit78

_ZN5zxing8ArrayRefIcED2Ev.exit78:                 ; preds = %_ZN5zxing3RefINS_9BitMatrixEEaSERKS2_.exit, %bb.ap, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %bb.av

bb.ar:                                            ; preds = %bb.am
  %i.gi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %bb.ax

.lr.ph99.split:                                   ; preds = %.lr.ph99, %._crit_edge97
  %i.gj = phi i32 [ %i.gq, %._crit_edge97 ], [ %i.fh, %.lr.ph99 ]
  %i.gk = phi i32 [ %i.gr, %._crit_edge97 ], [ %i.fm, %.lr.ph99 ] ; 2 uses
  %i.gl = phi i32 [ %i.gs, %._crit_edge97 ], [ %i.fm, %.lr.ph99 ] ; 3 uses
  %indvars.iv107 = phi i64 [ %indvars.iv.next108, %._crit_edge97 ], [ 0, %.lr.ph99 ] ; 3 uses
  %i.gm = icmp sgt i32 %i.gl, 0
  br i1 %i.gm, label %.lr.ph96, label %._crit_edge97

.lr.ph96:                                         ; preds = %.lr.ph99.split
  %i.gn = trunc nuw nsw i64 %indvars.iv107 to i32
  %i.go = mul nuw nsw i32 %i.gl, %i.gn
  %i.gp = zext nneg i32 %i.go to i64
  %.pre111 = load ptr, ptr %i.fj, align 8, !tbaa !19
  br label %bb.as

._crit_edge97.loopexit:                           ; preds = %bb.au
  %.pre113 = load i32, ptr %i.l, align 8, !tbaa !71
  br label %._crit_edge97

._crit_edge97:                                    ; preds = %._crit_edge97.loopexit, %.lr.ph99.split
  %i.gq = phi i32 [ %.pre113, %._crit_edge97.loopexit ], [ %i.gj, %.lr.ph99.split ] ; 2 uses
  %i.gr = phi i32 [ %i.hq, %._crit_edge97.loopexit ], [ %i.gk, %.lr.ph99.split ]
  %i.gs = phi i32 [ %i.hq, %._crit_edge97.loopexit ], [ %i.gl, %.lr.ph99.split ]
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 1 ; 2 uses
  %i.gt = sext i32 %i.gq to i64
  %i.gu = icmp slt i64 %indvars.iv.next108, %i.gt
  br i1 %i.gu, label %.lr.ph99.split, label %._crit_edge100, !llvm.loop !67

bb.as:                                            ; preds = %.lr.ph96, %bb.au
  %i.gv = phi i32 [ %i.gk, %.lr.ph96 ], [ %i.hq, %bb.au ]
  %i.gw = phi ptr [ %.pre111, %.lr.ph96 ], [ %i.hr, %bb.au ] ; 2 uses
  %indvars.iv104 = phi i64 [ 0, %.lr.ph96 ], [ %indvars.iv.next105, %bb.au ] ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !22
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 %indvars.iv104
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 %i.gp
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !42
  %i.hc = zext i8 %i.hb to i32
  %i.hd = icmp sgt i32 %i.ey, %i.hc
  br i1 %i.hd, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.he = load ptr, ptr %i.fk, align 8, !tbaa !30
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !33
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %indvars.iv107
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !35
  %i.hj = trunc nuw nsw i64 %indvars.iv104 to i32
  %i.hk = add nsw i32 %i.hi, %i.hj
  %i.hl = load ptr, ptr %i.fl, align 8, !tbaa !75
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 16
  %i.hn = sext i32 %i.hk to i64
  %i.ho = load ptr, ptr %i.hm, align 8, !tbaa !77
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 %i.hn
  store i8 1, ptr %i.hp, align 1, !tbaa !42
  %.pre110 = load ptr, ptr %i.fj, align 8, !tbaa !19
  %.pre112 = load i32, ptr %i.j, align 4, !tbaa !70
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.hq = phi i32 [ %.pre112, %bb.at ], [ %i.gv, %bb.as ] ; 4 uses
  %i.hr = phi ptr [ %.pre110, %bb.at ], [ %i.gw, %bb.as ]
  %indvars.iv.next105 = add nuw nsw i64 %indvars.iv104, 1 ; 2 uses
  %i.hs = sext i32 %i.hq to i64
  %i.ht = icmp slt i64 %indvars.iv.next105, %i.hs
  br i1 %i.ht, label %bb.as, label %._crit_edge97.loopexit, !llvm.loop !68

bb.av:                                            ; preds = %bb.ak, %_ZN5zxing8ArrayRefIcED2Ev.exit78, %bb.ai
  %.451 = phi i32 [ -1, %bb.ai ], [ 0, %_ZN5zxing8ArrayRefIcED2Ev.exit78 ], [ -1, %bb.ak ]
  %i.hu = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 3 uses
  %i.hv = load i32, ptr %i.hu, align 8, !tbaa !13
  %i.hw = add i32 %i.hv, -1                       ; 2 uses
  store i32 %i.hw, ptr %i.hu, align 8, !tbaa !13
  %i.hx = icmp eq i32 %i.hw, 0
  br i1 %i.hx, label %bb.aw, label %_ZN5zxing8ArrayRefIiED2Ev.exit

bb.aw:                                            ; preds = %bb.av
  store i32 -559026175, ptr %i.hu, align 8, !tbaa !13
  %i.hy = load ptr, ptr %i.be, align 8, !tbaa !15
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  %i.ia = load ptr, ptr %i.hz, align 8
  call void %i.ia(ptr noundef nonnull align 8 dereferenceable(12) %i.be) #17, !inline_history !3
  br label %_ZN5zxing8ArrayRefIiED2Ev.exit

_ZN5zxing8ArrayRefIiED2Ev.exit:                   ; preds = %bb.av, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.az

bb.ax:                                            ; preds = %_ZN5zxing8ArrayRefIcED2Ev.exit69, %bb.ar, %bb.al
  %.pn57.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN5zxing8ArrayRefIcED2Ev.exit69 ], [ %i.gi, %bb.ar ], [ %i.fd, %bb.al ]
  %i.ib = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 3 uses
  %i.ic = load i32, ptr %i.ib, align 8, !tbaa !13
  %i.id = add i32 %i.ic, -1                       ; 2 uses
  store i32 %i.id, ptr %i.ib, align 8, !tbaa !13
  %i.ie = icmp eq i32 %i.id, 0
  br i1 %i.ie, label %bb.ay, label %_ZN5zxing8ArrayRefIiED2Ev.exit83

bb.ay:                                            ; preds = %bb.ax
  store i32 -559026175, ptr %i.ib, align 8, !tbaa !13
  %i.if = load ptr, ptr %i.be, align 8, !tbaa !15
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  %i.ih = load ptr, ptr %i.ig, align 8
  call void %i.ih(ptr noundef nonnull align 8 dereferenceable(12) %i.be) #17, !inline_history !3
  br label %_ZN5zxing8ArrayRefIiED2Ev.exit83

_ZN5zxing8ArrayRefIiED2Ev.exit83:                 ; preds = %bb.ax, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.bb

bb.az:                                            ; preds = %_ZN5zxing8ArrayRefIiED2Ev.exit, %bb.e
  %.552 = phi i32 [ %.451, %_ZN5zxing8ArrayRefIiED2Ev.exit ], [ -1, %bb.e ]
  %i.ii = load i32, ptr %i.n, align 8, !tbaa !13
  %i.ij = add i32 %i.ii, -1                       ; 2 uses
  store i32 %i.ij, ptr %i.n, align 8, !tbaa !13
  %i.ik = icmp eq i32 %i.ij, 0
  br i1 %i.ik, label %bb.ba, label %_ZN5zxing3RefINS_9BitMatrixEED2Ev.exit

bb.ba:                                            ; preds = %bb.az
  store i32 -559026175, ptr %i.n, align 8, !tbaa !13
  %i.il = load ptr, ptr %i.i, align 8, !tbaa !15
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  %i.in = load ptr, ptr %i.im, align 8
  call void %i.in(ptr noundef nonnull align 8 dereferenceable(12) %i.i) #17, !inline_history !69
  br label %_ZN5zxing3RefINS_9BitMatrixEED2Ev.exit

_ZN5zxing3RefINS_9BitMatrixEED2Ev.exit:           ; preds = %bb.az, %bb.ba
  ret i32 %.552

bb.bb:                                            ; preds = %bb.g, %_ZN5zxing8ArrayRefIiED2Ev.exit83
  %.pn57.pn.pn.pn = phi { ptr, i32 } [ %.pn57.pn.pn, %_ZN5zxing8ArrayRefIiED2Ev.exit83 ], [ %i.v, %bb.g ] ; 2 uses
  %i.io = load i32, ptr %i.n, align 8, !tbaa !13
  %i.ip = add i32 %i.io, -1                       ; 2 uses
  store i32 %i.ip, ptr %i.n, align 8, !tbaa !13
  %i.iq = icmp eq i32 %i.ip, 0
  br i1 %i.iq, label %bb.bc, label %_ZN5zxing3RefINS_9BitMatrixEED2Ev.exit86

bb.bc:                                            ; preds = %bb.bb
  store i32 -559026175, ptr %i.n, align 8, !tbaa !13
  %i.ir = load ptr, ptr %i.i, align 8, !tbaa !15
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  %i.it = load ptr, ptr %i.is, align 8
  call void %i.it(ptr noundef nonnull align 8 dereferenceable(12) %i.i) #17, !inline_history !69
  br label %_ZN5zxing3RefINS_9BitMatrixEED2Ev.exit86

_ZN5zxing3RefINS_9BitMatrixEED2Ev.exit86:         ; preds = %bb.bc, %bb.bb, %bb.f
  %.pn57.pn.pn.pn.pn = phi { ptr, i32 } [ %i.u, %bb.f ], [ %.pn57.pn.pn.pn, %bb.bb ], [ %.pn57.pn.pn.pn, %bb.bc ]
  resume { ptr, i32 } %.pn57.pn.pn.pn.pn
}

declare void @_ZN5zxing9Binarizer11getBlackRowEiNS_3RefINS_8BitArrayEEERNS_12ErrorHandlerE(ptr dead_on_unwind writable sret(%"class.zxing::Ref.2") align 8, ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, ptr noundef align 8, ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5zxing24GlobalHistogramBinarizer14getBlackMatrixERNS_12ErrorHandlerE(ptr dead_on_unwind noalias writable sret(%"class.zxing::Ref.0") align 8 %0, ptr noundef nonnull align 8 dereferenceable(121) %1, ptr noundef nonnull align 8 dereferenceable(48) %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN5zxing24GlobalHistogramBinarizer14binarizeImage0ERNS_12ErrorHandlerE(ptr noundef nonnull align 8 dereferenceable(121) %1, ptr noundef nonnull align 8 dereferenceable(48) %2) ; 0 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef i32 %i.d(ptr noundef nonnull align 8 dereferenceable(48) %2)
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !41
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN5zxing9Binarizer14getBlackMatrixERNS_12ErrorHandlerE(ptr dead_on_unwind writable sret(%"class.zxing::Ref.0") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(48) %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

declare void @_ZN5zxing9Binarizer14getBlackMatrixERNS_12ErrorHandlerE(ptr dead_on_unwind writable sret(%"class.zxing::Ref.0") align 8, ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 -1, -7) i32 @_ZN5zxing24GlobalHistogramBinarizer18estimateBlackPointERKNS_8ArrayRefIiEERNS_12ErrorHandlerE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(121) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(48) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.zxing::NotFoundErrorHandler", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !36
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !33   ; 7 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 3 uses
  %i.j = lshr exact i64 %i.i, 2                   ; 6 uses
  %i.k = trunc i64 %i.j to i32                    ; 2 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = and i64 %i.j, 2147483647
  %i.m = add nsw i64 %wide.trip.count, -1         ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.j, 2147483646
  br label %.lr.ph

.lr.ph96.preheader.unr-lcssa:                     ; preds = %.lr.ph
  %i.o = and i64 %i.i, 4
  %lcmp.mod.not = icmp eq i64 %i.o, 0
  br i1 %lcmp.mod.not, label %.lr.ph96.preheader, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.lr.ph96.preheader.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %.lr.ph96.preheader.unr-lcssa ] ; 2 uses
end_hunk_0
