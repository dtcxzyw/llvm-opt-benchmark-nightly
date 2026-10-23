Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/qcustomplot?download=true
inline.NumInlined: 26883
inline.NumDeleted: 6472
loop-unroll.NumRuntimeUnrolled: 106
loop-unroll.NumUnrolled: 106
begin_hunk_0_@_ZNK12QCPErrorBars20getVisibleDataBoundsERN5QListI16QCPErrorBarsDataE14const_iteratorES4_RK12QCPDataRange:bb.a
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 200
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = tail call noundef ptr %i.cc(ptr noundef align 8 dereferenceable_or_null(184) %spec.select156) ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 64
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = tail call noundef zeroext i1 %i.cg(ptr noundef align 8 dereferenceable_or_null(8) %i.cd)
  br i1 %i.ch, label %bb.x, label %bb.s

bb.s:                                             ; preds = %_ZNK8QPointerI20QCPAbstractPlottableEptEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #50
  %i.ci = getelementptr i8, ptr %0, i64 192       ; 3 uses
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = getelementptr i8, ptr %i.cj, i64 16
  %i.cl = load i64, ptr %i.ck, align 8
  %i.cm = trunc i64 %i.cl to i32
  call void @_ZN12QCPDataRangeC1Eii(ptr noundef nonnull align 4 dereferenceable_or_null(8) %20, i32 noundef 0, i32 noundef %i.cm)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #50
  %i.cn = load i32, ptr %20, align 8
  %i.co = load i32, ptr %3, align 4
  %i.cp = call i32 @llvm.smax.i32(i32 %i.cn, i32 %i.co)
  %i.cq = getelementptr inbounds nuw i8, ptr %20, i64 4 ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 4
  %i.cs = load i32, ptr %i.bn, align 4
  %i.ct = call i32 @llvm.smin.i32(i32 %i.cr, i32 %i.cs)
  call void @_ZN12QCPDataRangeC1Eii(ptr noundef nonnull align 4 dereferenceable_or_null(8) %13, i32 noundef %i.cp, i32 noundef %i.ct)
  %i.cu = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.cv = load i32, ptr %i.cu, align 4
  %i.cw = load i32, ptr %13, align 4              ; 2 uses
  %.not.i.i.i75 = icmp sge i32 %i.cv, %i.cw
  %i.cx = icmp sgt i32 %i.cw, -1
  %spec.select.i.i.i = and i1 %.not.i.i.i75, %i.cx
  br i1 %spec.select.i.i.i, label %_ZNK12QCPDataRange12intersectionERKS_.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_ZN12QCPDataRangeC1Ev(ptr noundef nonnull align 4 dereferenceable_or_null(8) %12)
  br label %_ZNK12QCPDataRange12intersectionERKS_.exit.i

_ZNK12QCPDataRange12intersectionERKS_.exit.i:     ; preds = %bb.t, %bb.s
  %.sink.i.i = phi ptr [ %12, %bb.t ], [ %13, %bb.s ]
  %.pre.i.i = load i64, ptr %.sink.i.i, align 4   ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  %.sroa.0.0.extract.trunc.i = trunc i64 %.pre.i.i to i32
  %.sroa.5.0.extract.shift.i = lshr i64 %.pre.i.i, 32 ; 2 uses
  %.sroa.5.0.extract.trunc.i = trunc nuw i64 %.sroa.5.0.extract.shift.i to i32
  %i.cy = icmp eq i32 %.sroa.5.0.extract.trunc.i, %.sroa.0.0.extract.trunc.i
  br i1 %i.cy, label %bb.u, label %_ZNK12QCPDataRange7boundedERKS_.exit

bb.u:                                             ; preds = %_ZNK12QCPDataRange12intersectionERKS_.exit.i
  %i.cz = load i32, ptr %i.cq, align 4
  %i.da = load i32, ptr %3, align 4               ; 3 uses
  %.not.i = icmp sgt i32 %i.cz, %i.da
  br i1 %.not.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #50
  call void @_ZN12QCPDataRangeC1Eii(ptr noundef nonnull align 4 dereferenceable_or_null(8) %14, i32 noundef %i.da, i32 noundef %i.da)
  %i.db = load i64, ptr %14, align 8              ; 2 uses
  %.sroa.5.0.extract.shift12.i = lshr i64 %i.db, 32
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #50
  br label %_ZNK12QCPDataRange7boundedERKS_.exit

bb.w:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #50
  %i.dc = load i32, ptr %i.bn, align 4            ; 2 uses
  call void @_ZN12QCPDataRangeC1Eii(ptr noundef nonnull align 4 dereferenceable_or_null(8) %15, i32 noundef %i.dc, i32 noundef %i.dc)
  %i.dd = load i64, ptr %15, align 8              ; 2 uses
  %.sroa.5.0.extract.shift10.i = lshr i64 %i.dd, 32
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #50
  br label %_ZNK12QCPDataRange7boundedERKS_.exit

_ZNK12QCPDataRange7boundedERKS_.exit:             ; preds = %_ZNK12QCPDataRange12intersectionERKS_.exit.i, %bb.v, %bb.w
  %.sroa.5.0.i = phi i64 [ %.sroa.5.0.extract.shift10.i, %bb.w ], [ %.sroa.5.0.extract.shift12.i, %bb.v ], [ %.sroa.5.0.extract.shift.i, %_ZNK12QCPDataRange12intersectionERKS_.exit.i ] ; 2 uses
  %.sroa.0.0.i = phi i64 [ %i.dd, %bb.w ], [ %i.db, %bb.v ], [ %.pre.i.i, %_ZNK12QCPDataRange12intersectionERKS_.exit.i ] ; 2 uses
  %.sroa.5.0.insert.shift.i = shl nuw i64 %.sroa.5.0.i, 32
  %.sroa.0.0.insert.ext.i = and i64 %.sroa.0.0.i, 4294967295
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.0.0.insert.ext.i, %.sroa.5.0.insert.shift.i
  store i64 %.sroa.0.0.insert.insert.i, ptr %20, align 8
  %i.de = load ptr, ptr %i.ci, align 8
  %i.df = getelementptr i8, ptr %i.de, i64 8
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = shl i64 %.sroa.0.0.i, 32
  %i.di = ashr exact i64 %i.dh, 28
  %i.dj = getelementptr i8, ptr %i.dg, i64 %i.di
  store ptr %i.dj, ptr %1, align 8
  %i.dk = load ptr, ptr %i.ci, align 8
  %i.dl = getelementptr i8, ptr %i.dk, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8
  %i.dn = shl nuw i64 %.sroa.5.0.i, 32
  %i.do = ashr exact i64 %i.dn, 28
  %i.dp = getelementptr i8, ptr %i.dm, i64 %i.do
  store ptr %i.dp, ptr %2, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #50
  br label %bb.ao

bb.x:                                             ; preds = %_ZNK8QPointerI20QCPAbstractPlottableEptEv.exit
  %i.dq = getelementptr i8, ptr %0, i64 192       ; 4 uses
  %i.dr = load ptr, ptr %i.dq, align 8
  %i.ds = getelementptr i8, ptr %i.dr, i64 16
  %i.dt = load i64, ptr %i.ds, align 8
  %i.du = load ptr, ptr %i.bf, align 8            ; 2 uses
  %i.dv = icmp eq ptr %i.du, null
  br i1 %i.dv, label %_ZNK8QPointerI20QCPAbstractPlottableEptEv.exit76, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dw = getelementptr i8, ptr %i.du, i64 4
  %i.dx = load atomic i32, ptr %i.dw monotonic, align 4
  %i.dy = icmp eq i32 %i.dx, 0
  br i1 %i.dy, label %_ZNK8QPointerI20QCPAbstractPlottableEptEv.exit76, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dz = load ptr, ptr %i.bl, align 8
  br label %_ZNK8QPointerI20QCPAbstractPlottableEptEv.exit76

_ZNK8QPointerI20QCPAbstractPlottableEptEv.exit76: ; preds = %bb.x, %bb.y, %bb.z
  %i.ea = phi ptr [ %i.dz, %bb.z ], [ null, %bb.y ], [ null, %bb.x ] ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 200
  %i.ed = load ptr, ptr %i.ec, align 8
  %i.ee = tail call noundef ptr %i.ed(ptr noundef align 8 dereferenceable_or_null(184) %i.ea) ; 2 uses
  %i.ef = load ptr, ptr %i.ee, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %i.eh = load ptr, ptr %i.eg, align 8
  %i.ei = tail call noundef i32 %i.eh(ptr noundef align 8 dereferenceable_or_null(8) %i.ee)
  %i.ej = sext i32 %i.ei to i64
  %i.ek = tail call noundef i64 @llvm.smin.i64(i64 %i.dt, i64 %i.ej)
  %i.el = trunc i64 %i.ek to i32                  ; 3 uses
  %i.em = load ptr, ptr %i.bf, align 8            ; 2 uses
  %i.en = icmp eq ptr %i.em, null
  br i1 %i.en, label %_ZNK8QPointerI20QCPAbstractPlottableEptEv.exit77, label %bb.aa

bb.aa:                                            ; preds = %_ZNK8QPointerI20QCPAbstractPlottableEptEv.exit76
  %i.eo = getelementptr i8, ptr %i.em, i64 4
  %i.ep = load atomic i32, ptr %i.eo monotonic, align 4
  %i.eq = icmp eq i32 %i.ep, 0
  br i1 %i.eq, label %_ZNK8QPointerI20QCPAbstractPlottableEptEv.exit77, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.er = load ptr, ptr %i.bl, align 8
  br label %_ZNK8QPointerI20QCPAbstractPlottableEptEv.exit77

_ZNK8QPointerI20QCPAbstractPlottableEptEv.exit77: ; preds = %_ZNK8QPointerI20QCPAbstractPlottableEptEv.exit76, %bb.aa, %bb.ab
  %i.es = phi ptr [ %i.er, %bb.ab ], [ null, %bb.aa ], [ null, %_ZNK8QPointerI20QCPAbstractPlottableEptEv.exit76 ] ; 2 uses
  %i.et = load ptr, ptr %i.es, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 200
  %i.ev = load ptr, ptr %i.eu, align 8
  %i.ew = tail call noundef ptr %i.ev(ptr noundef align 8 dereferenceable_or_null(184) %i.es) ; 2 uses
  %i.ex = getelementptr i8, ptr %i.i, i64 304
  %.sroa.0.0.copyload.i = load double, ptr %i.ex, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %i.i, i64 312
  %i.ey = load ptr, ptr %i.ew, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 80
  %i.fa = load ptr, ptr %i.ez, align 8
  %i.fb = tail call noundef i32 %i.fa(ptr noundef align 8 dereferenceable_or_null(8) %i.ew, double noundef %.sroa.0.0.copyload.i, i1 noundef zeroext true) ; 5 uses
  %i.fc = load ptr, ptr %i.bf, align 8            ; 2 uses
  %i.fd = icmp eq ptr %i.fc, null
  br i1 %i.fd, label %_ZNK8QPointerI20QCPAbstractPlottableEptEv.exit78, label %bb.ac

bb.ac:                                            ; preds = %_ZNK8QPointerI20QCPAbstractPlottableEptEv.exit77
  %i.fe = getelementptr i8, ptr %i.fc, i64 4
  %i.ff = load atomic i32, ptr %i.fe monotonic, align 4
  %i.fg = icmp eq i32 %i.ff, 0
  br i1 %i.fg, label %_ZNK8QPointerI20QCPAbstractPlottableEptEv.exit78, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fh = load ptr, ptr %i.bl, align 8
  br label %_ZNK8QPointerI20QCPAbstractPlottableEptEv.exit78

_ZNK8QPointerI20QCPAbstractPlottableEptEv.exit78: ; preds = %_ZNK8QPointerI20QCPAbstractPlottableEptEv.exit77, %bb.ac, %bb.ad
  %i.fi = phi ptr [ %i.fh, %bb.ad ], [ null, %bb.ac ], [ null, %_ZNK8QPointerI20QCPAbstractPlottableEptEv.exit77 ] ; 2 uses
  %i.fj = load ptr, ptr %i.fi, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 200
  %i.fl = load ptr, ptr %i.fk, align 8
  %i.fm = tail call noundef ptr %i.fl(ptr noundef align 8 dereferenceable_or_null(184) %i.fi) ; 2 uses
  %.sroa.2.0.copyload.i81 = load double, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.fn = load ptr, ptr %i.fm, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 88
  %i.fp = load ptr, ptr %i.fo, align 8
  %i.fq = tail call noundef i32 %i.fp(ptr noundef align 8 dereferenceable_or_null(8) %i.fm, double noundef %.sroa.2.0.copyload.i81, i1 noundef zeroext true) ; 5 uses
  %i.fr = icmp sgt i32 %i.fb, 0
  %i.fs = icmp slt i32 %i.fb, %i.el
  %or.cond57127 = and i1 %i.fr, %i.fs
  br i1 %or.cond57127, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %_ZNK8QPointerI20QCPAbstractPlottableEptEv.exit78, %bb.ae
  %.0129 = phi i32 [ %i.fw, %bb.ae ], [ %i.fb, %_ZNK8QPointerI20QCPAbstractPlottableEptEv.exit78 ] ; 5 uses
  %.051128 = phi i32 [ %spec.select, %bb.ae ], [ %i.fb, %_ZNK8QPointerI20QCPAbstractPlottableEptEv.exit78 ] ; 2 uses
  %i.ft = load i32, ptr %3, align 4
  %i.fu = icmp sgt i32 %.0129, %i.ft
  br i1 %i.fu, label %bb.ae, label %.critedge

bb.ae:                                            ; preds = %.lr.ph
  %i.fv = tail call noundef zeroext i1 @_ZNK12QCPErrorBars15errorBarVisibleEi(ptr noundef align 8 dereferenceable_or_null(248) %0, i32 noundef %.0129)
  %spec.select = select i1 %i.fv, i32 %.0129, i32 %.051128 ; 2 uses
  %i.fw = add nsw i32 %.0129, -1
  %i.fx = icmp sgt i32 %.0129, 1
  br i1 %i.fx, label %.lr.ph, label %.critedge, !llvm.loop !1385

.critedge:                                        ; preds = %bb.ae, %.lr.ph, %_ZNK8QPointerI20QCPAbstractPlottableEptEv.exit78
  %.051.lcssa = phi i32 [ %i.fb, %_ZNK8QPointerI20QCPAbstractPlottableEptEv.exit78 ], [ %spec.select, %bb.ae ], [ %.051128, %.lr.ph ]
  %i.fy = icmp sgt i32 %i.fq, -1
  %i.fz = icmp slt i32 %i.fq, %i.el
  %or.cond58132 = and i1 %i.fy, %i.fz
  br i1 %or.cond58132, label %.lr.ph135, label %.critedge3

.lr.ph135:                                        ; preds = %.critedge, %bb.af
  %.1134 = phi i32 [ %i.gd, %bb.af ], [ %i.fq, %.critedge ] ; 3 uses
  %.053133 = phi i32 [ %spec.select59, %bb.af ], [ %i.fq, %.critedge ] ; 2 uses
  %i.ga = load i32, ptr %i.bn, align 4
  %i.gb = icmp slt i32 %.1134, %i.ga
  br i1 %i.gb, label %bb.af, label %.critedge3

bb.af:                                            ; preds = %.lr.ph135
  %i.gc = tail call noundef zeroext i1 @_ZNK12QCPErrorBars15errorBarVisibleEi(ptr noundef align 8 dereferenceable_or_null(248) %0, i32 noundef %.1134)
  %i.gd = add nuw nsw i32 %.1134, 1               ; 3 uses
  %spec.select59 = select i1 %i.gc, i32 %i.gd, i32 %.053133 ; 2 uses
  %i.ge = icmp slt i32 %i.gd, %i.el
  br i1 %i.ge, label %.lr.ph135, label %.critedge3, !llvm.loop !1386

.critedge3:                                       ; preds = %.lr.ph135, %bb.af, %.critedge
  %.053.lcssa = phi i32 [ %i.fq, %.critedge ], [ %spec.select59, %bb.af ], [ %.053133, %.lr.ph135 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #50
  call void @_ZN12QCPDataRangeC1Eii(ptr noundef nonnull align 4 dereferenceable_or_null(8) %21, i32 noundef %.051.lcssa, i32 noundef %.053.lcssa)
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #50
  %i.gf = load ptr, ptr %i.dq, align 8
  %i.gg = getelementptr i8, ptr %i.gf, i64 16
  %i.gh = load i64, ptr %i.gg, align 8
  %i.gi = trunc i64 %i.gh to i32
  call void @_ZN12QCPDataRangeC1Eii(ptr noundef nonnull align 4 dereferenceable_or_null(8) %22, i32 noundef 0, i32 noundef %i.gi)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #50
  %i.gj = load i32, ptr %3, align 4
  %i.gk = load i32, ptr %22, align 4
  %i.gl = call i32 @llvm.smax.i32(i32 %i.gj, i32 %i.gk)
  %i.gm = getelementptr inbounds nuw i8, ptr %22, i64 4 ; 2 uses
  %i.gn = load i32, ptr %i.bn, align 4
  %i.go = load i32, ptr %i.gm, align 4
  %i.gp = call i32 @llvm.smin.i32(i32 %i.gn, i32 %i.go)
  call void @_ZN12QCPDataRangeC1Eii(ptr noundef nonnull align 4 dereferenceable_or_null(8) %9, i32 noundef %i.gl, i32 noundef %i.gp)
  %i.gq = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.gr = load i32, ptr %i.gq, align 4
  %i.gs = load i32, ptr %9, align 4               ; 2 uses
  %.not.i.i.i84 = icmp sge i32 %i.gr, %i.gs
  %i.gt = icmp sgt i32 %i.gs, -1
  %spec.select.i.i.i85 = and i1 %.not.i.i.i84, %i.gt
  br i1 %spec.select.i.i.i85, label %_ZNK12QCPDataRange12intersectionERKS_.exit.i86, label %bb.ag

bb.ag:                                            ; preds = %.critedge3
  call void @_ZN12QCPDataRangeC1Ev(ptr noundef nonnull align 4 dereferenceable_or_null(8) %8)
  br label %_ZNK12QCPDataRange12intersectionERKS_.exit.i86

_ZNK12QCPDataRange12intersectionERKS_.exit.i86:   ; preds = %bb.ag, %.critedge3
  %.sink.i.i87 = phi ptr [ %8, %bb.ag ], [ %9, %.critedge3 ]
  %.pre.i.i88 = load i64, ptr %.sink.i.i87, align 4 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %.sroa.0.0.extract.trunc.i89 = trunc i64 %.pre.i.i88 to i32
  %.sroa.5.0.extract.shift.i90 = lshr i64 %.pre.i.i88, 32 ; 2 uses
  %.sroa.5.0.extract.trunc.i91 = trunc nuw i64 %.sroa.5.0.extract.shift.i90 to i32
  %i.gu = icmp eq i32 %.sroa.5.0.extract.trunc.i91, %.sroa.0.0.extract.trunc.i89
  br i1 %i.gu, label %bb.ah, label %_ZNK12QCPDataRange7boundedERKS_.exit100

bb.ah:                                            ; preds = %_ZNK12QCPDataRange12intersectionERKS_.exit.i86
  %i.gv = load i32, ptr %i.bn, align 4
  %i.gw = load i32, ptr %22, align 4              ; 3 uses
  %.not.i97 = icmp sgt i32 %i.gv, %i.gw
  br i1 %.not.i97, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #50
  call void @_ZN12QCPDataRangeC1Eii(ptr noundef nonnull align 4 dereferenceable_or_null(8) %10, i32 noundef %i.gw, i32 noundef %i.gw)
  %i.gx = load i64, ptr %10, align 8              ; 2 uses
  %.sroa.5.0.extract.shift12.i98 = lshr i64 %i.gx, 32
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #50
  br label %_ZNK12QCPDataRange7boundedERKS_.exit100

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #50
  %i.gy = load i32, ptr %i.gm, align 4            ; 2 uses
  call void @_ZN12QCPDataRangeC1Eii(ptr noundef nonnull align 4 dereferenceable_or_null(8) %11, i32 noundef %i.gy, i32 noundef %i.gy)
  %i.gz = load i64, ptr %11, align 8              ; 2 uses
  %.sroa.5.0.extract.shift10.i99 = lshr i64 %i.gz, 32
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #50
  br label %_ZNK12QCPDataRange7boundedERKS_.exit100

_ZNK12QCPDataRange7boundedERKS_.exit100:          ; preds = %_ZNK12QCPDataRange12intersectionERKS_.exit.i86, %bb.ai, %bb.aj
  %.sroa.5.0.i92 = phi i64 [ %.sroa.5.0.extract.shift10.i99, %bb.aj ], [ %.sroa.5.0.extract.shift12.i98, %bb.ai ], [ %.sroa.5.0.extract.shift.i90, %_ZNK12QCPDataRange12intersectionERKS_.exit.i86 ]
  %.sroa.0.0.i93 = phi i64 [ %i.gz, %bb.aj ], [ %i.gx, %bb.ai ], [ %.pre.i.i88, %_ZNK12QCPDataRange12intersectionERKS_.exit.i86 ]
  %.sroa.0119.0.extract.trunc = trunc i64 %.sroa.0.0.i93 to i32 ; 4 uses
  %.sroa.5.0.extract.trunc = trunc nuw i64 %.sroa.5.0.i92 to i32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #50
  %i.ha = load i32, ptr %21, align 8
  %i.hb = call i32 @llvm.smax.i32(i32 %i.ha, i32 %.sroa.0119.0.extract.trunc)
  %i.hc = getelementptr inbounds nuw i8, ptr %21, i64 4 ; 2 uses
  %i.hd = load i32, ptr %i.hc, align 4
  %i.he = call i32 @llvm.smin.i32(i32 %i.hd, i32 %.sroa.5.0.extract.trunc)
  call void @_ZN12QCPDataRangeC1Eii(ptr noundef nonnull align 4 dereferenceable_or_null(8) %5, i32 noundef %i.hb, i32 noundef %i.he)
  %i.hf = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.hg = load i32, ptr %i.hf, align 4
  %i.hh = load i32, ptr %5, align 4               ; 2 uses
  %.not.i.i.i101 = icmp sge i32 %i.hg, %i.hh
  %i.hi = icmp sgt i32 %i.hh, -1
  %spec.select.i.i.i102 = and i1 %.not.i.i.i101, %i.hi
  br i1 %spec.select.i.i.i102, label %_ZNK12QCPDataRange12intersectionERKS_.exit.i103, label %bb.ak

bb.ak:                                            ; preds = %_ZNK12QCPDataRange7boundedERKS_.exit100
  call void @_ZN12QCPDataRangeC1Ev(ptr noundef nonnull align 4 dereferenceable_or_null(8) %4)
  br label %_ZNK12QCPDataRange12intersectionERKS_.exit.i103

_ZNK12QCPDataRange12intersectionERKS_.exit.i103:  ; preds = %bb.ak, %_ZNK12QCPDataRange7boundedERKS_.exit100
  %.sink.i.i104 = phi ptr [ %4, %bb.ak ], [ %5, %_ZNK12QCPDataRange7boundedERKS_.exit100 ]
  %.pre.i.i105 = load i64, ptr %.sink.i.i104, align 4 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.sroa.0.0.extract.trunc.i106 = trunc i64 %.pre.i.i105 to i32
  %.sroa.5.0.extract.shift.i107 = lshr i64 %.pre.i.i105, 32 ; 2 uses
  %.sroa.5.0.extract.trunc.i108 = trunc nuw i64 %.sroa.5.0.extract.shift.i107 to i32
  %i.hj = icmp eq i32 %.sroa.5.0.extract.trunc.i108, %.sroa.0.0.extract.trunc.i106
  br i1 %i.hj, label %bb.al, label %_ZNK12QCPDataRange7boundedERKS_.exit117

bb.al:                                            ; preds = %_ZNK12QCPDataRange12intersectionERKS_.exit.i103
  %i.hk = load i32, ptr %i.hc, align 4
  %.not.i114 = icmp sgt i32 %i.hk, %.sroa.0119.0.extract.trunc
  br i1 %.not.i114, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #50
  call void @_ZN12QCPDataRangeC1Eii(ptr noundef nonnull align 4 dereferenceable_or_null(8) %6, i32 noundef %.sroa.0119.0.extract.trunc, i32 noundef %.sroa.0119.0.extract.trunc)
  %i.hl = load i64, ptr %6, align 8               ; 2 uses
  %.sroa.5.0.extract.shift12.i115 = lshr i64 %i.hl, 32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #50
  br label %_ZNK12QCPDataRange7boundedERKS_.exit117

bb.an:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #50
  call void @_ZN12QCPDataRangeC1Eii(ptr noundef nonnull align 4 dereferenceable_or_null(8) %7, i32 noundef %.sroa.5.0.extract.trunc, i32 noundef %.sroa.5.0.extract.trunc)
  %i.hm = load i64, ptr %7, align 8               ; 2 uses
  %.sroa.5.0.extract.shift10.i116 = lshr i64 %i.hm, 32
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #50
  br label %_ZNK12QCPDataRange7boundedERKS_.exit117

_ZNK12QCPDataRange7boundedERKS_.exit117:          ; preds = %_ZNK12QCPDataRange12intersectionERKS_.exit.i103, %bb.am, %bb.an
  %.sroa.5.0.i109 = phi i64 [ %.sroa.5.0.extract.shift10.i116, %bb.an ], [ %.sroa.5.0.extract.shift12.i115, %bb.am ], [ %.sroa.5.0.extract.shift.i107, %_ZNK12QCPDataRange12intersectionERKS_.exit.i103 ] ; 2 uses
  %.sroa.0.0.i110 = phi i64 [ %i.hm, %bb.an ], [ %i.hl, %bb.am ], [ %.pre.i.i105, %_ZNK12QCPDataRange12intersectionERKS_.exit.i103 ] ; 2 uses
  %.sroa.5.0.insert.shift.i111 = shl nuw i64 %.sroa.5.0.i109, 32
  %.sroa.0.0.insert.ext.i112 = and i64 %.sroa.0.0.i110, 4294967295
  %.sroa.0.0.insert.insert.i113 = or disjoint i64 %.sroa.0.0.insert.ext.i112, %.sroa.5.0.insert.shift.i111
  store i64 %.sroa.0.0.insert.insert.i113, ptr %21, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #50
  %i.hn = load ptr, ptr %i.dq, align 8
  %i.ho = getelementptr i8, ptr %i.hn, i64 8
  %i.hp = load ptr, ptr %i.ho, align 8
  %i.hq = shl i64 %.sroa.0.0.i110, 32
  %i.hr = ashr exact i64 %i.hq, 28
  %i.hs = getelementptr i8, ptr %i.hp, i64 %i.hr
  store ptr %i.hs, ptr %1, align 8
  %i.ht = load ptr, ptr %i.dq, align 8
  %i.hu = getelementptr i8, ptr %i.ht, i64 8
  %i.hv = load ptr, ptr %i.hu, align 8
  %i.hw = shl nuw i64 %.sroa.5.0.i109, 32
  %i.hx = ashr exact i64 %i.hw, 28
  %i.hy = getelementptr i8, ptr %i.hv, i64 %i.hx
  store ptr %i.hy, ptr %2, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #50
  br label %bb.ao

bb.ao:                                            ; preds = %_ZNK12QCPDataRange7boundedERKS_.exit117, %_ZNK12QCPDataRange7boundedERKS_.exit, %_ZNK8QPointerI20QCPAbstractPlottableEcvPS0_Ev.exit.thread, %_ZN6QDebuglsEPKc.exit74
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZNK12QCPErrorBars16getErrorBarLinesEN5QListI16QCPErrorBarsDataE14const_iteratorERS0_I6QLineFES6_(ptr nofree noundef readonly align 8 captures(none) dereferenceable_or_null(248) %0, ptr %1, ptr noundef align 8 dereferenceable(24) %2, ptr noundef align 8 dereferenceable(24) %3) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.QLineF, align 8              ; 7 uses
  %5 = alloca %class.QLineF, align 8              ; 7 uses
  %6 = alloca %class.QLineF, align 8              ; 7 uses
  %7 = alloca %class.QLineF, align 8              ; 7 uses
  %8 = alloca %class.QLineF, align 8              ; 7 uses
  %9 = alloca %class.QLineF, align 8              ; 7 uses
  %10 = alloca %class.QLineF, align 8             ; 7 uses
  %11 = alloca %class.QLineF, align 8             ; 7 uses
  %i.a = getelementptr i8, ptr %0, i64 208
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNK8QPointerI20QCPAbstractPlottableEcvPS0_Ev.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.b, i64 4        ; 2 uses
  %i.e = load atomic i32, ptr %i.d monotonic, align 4
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZNK8QPointerI20QCPAbstractPlottableEcvPS0_Ev.exit.thread, label %_ZNK8QPointerI20QCPAbstractPlottableEcvPS0_Ev.exit

_ZNK8QPointerI20QCPAbstractPlottableEcvPS0_Ev.exit: ; preds = %bb.b
  %i.g = getelementptr i8, ptr %0, i64 216
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %_ZNK8QPointerI20QCPAbstractPlottableEcvPS0_Ev.exit.thread, label %_ZNK8QPointerI20QCPAbstractPlottableEptEv.exit

end_hunk_0
