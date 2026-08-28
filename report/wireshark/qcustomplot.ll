Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/qcustomplot?download=true
inline.NumInlined: 26883
inline.NumDeleted: 6472
loop-unroll.NumRuntimeUnrolled: 93
loop-unroll.NumUnrolled: 93
begin_hunk_0_@_ZNK12QCPErrorBars20getVisibleDataBoundsERN5QListI16QCPErrorBarsDataE14const_iteratorES4_RK12QCPDataRange:bb.a
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 200
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = tail call noundef ptr %i.cc(ptr noundef align 8 dereferenceable_or_null(184) %spec.select159) ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 64
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = tail call noundef zeroext i1 %i.cg(ptr noundef align 8 dereferenceable_or_null(8) %i.cd)
  br i1 %i.ch, label %bb.x, label %bb.s

bb.s:                                             ; preds = %_ZNK8QPointerI20QCPAbstractPlottableEptEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #51
  %i.ci = getelementptr i8, ptr %0, i64 192       ; 3 uses
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = getelementptr i8, ptr %i.cj, i64 16
  %i.cl = load i64, ptr %i.ck, align 8
  %i.cm = trunc i64 %i.cl to i32
  call void @_ZN12QCPDataRangeC1Eii(ptr noundef nonnull align 4 dereferenceable_or_null(8) %20, i32 noundef 0, i32 noundef %i.cm)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #51
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
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #51
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
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #51
  call void @_ZN12QCPDataRangeC1Eii(ptr noundef nonnull align 4 dereferenceable_or_null(8) %14, i32 noundef %i.da, i32 noundef %i.da)
  %i.db = load i64, ptr %14, align 8              ; 2 uses
  %.sroa.5.0.extract.shift12.i = lshr i64 %i.db, 32
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #51
  br label %_ZNK12QCPDataRange7boundedERKS_.exit

bb.w:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #51
  %i.dc = load i32, ptr %i.bn, align 4            ; 2 uses
  call void @_ZN12QCPDataRangeC1Eii(ptr noundef nonnull align 4 dereferenceable_or_null(8) %15, i32 noundef %i.dc, i32 noundef %i.dc)
  %i.dd = load i64, ptr %15, align 8              ; 2 uses
  %.sroa.5.0.extract.shift10.i = lshr i64 %i.dd, 32
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #51
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
  %sext = shl i64 %.sroa.0.0.i, 32
  %i.dh = ashr exact i64 %sext, 28
  %i.di = getelementptr i8, ptr %i.dg, i64 %i.dh
  store ptr %i.di, ptr %1, align 8
  %i.dj = load ptr, ptr %i.ci, align 8
  %i.dk = getelementptr i8, ptr %i.dj, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8
  %sext156 = shl nuw i64 %.sroa.5.0.i, 32
  %i.dm = ashr exact i64 %sext156, 28
  %i.dn = getelementptr i8, ptr %i.dl, i64 %i.dm
  store ptr %i.dn, ptr %2, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #51
  br label %bb.ao

bb.x:                                             ; preds = %_ZNK8QPointerI20QCPAbstractPlottableEptEv.exit
  %i.do = getelementptr i8, ptr %0, i64 192       ; 4 uses
  %i.dp = load ptr, ptr %i.do, align 8
  %i.dq = getelementptr i8, ptr %i.dp, i64 16
  %i.dr = load i64, ptr %i.dq, align 8
  %i.ds = load ptr, ptr %i.bf, align 8            ; 2 uses
  %i.dt = icmp eq ptr %i.ds, null
  br i1 %i.dt, label %_ZNK8QPointerI20QCPAbstractPlottableEptEv.exit76, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.du = getelementptr i8, ptr %i.ds, i64 4
  %i.dv = load atomic i32, ptr %i.du monotonic, align 4
  %i.dw = icmp eq i32 %i.dv, 0
  br i1 %i.dw, label %_ZNK8QPointerI20QCPAbstractPlottableEptEv.exit76, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dx = load ptr, ptr %i.bl, align 8
  br label %_ZNK8QPointerI20QCPAbstractPlottableEptEv.exit76

_ZNK8QPointerI20QCPAbstractPlottableEptEv.exit76: ; preds = %bb.x, %bb.y, %bb.z
  %i.dy = phi ptr [ %i.dx, %bb.z ], [ null, %bb.y ], [ null, %bb.x ] ; 2 uses
  %i.dz = load ptr, ptr %i.dy, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 200
  %i.eb = load ptr, ptr %i.ea, align 8
  %i.ec = tail call noundef ptr %i.eb(ptr noundef align 8 dereferenceable_or_null(184) %i.dy) ; 2 uses
  %i.ed = load ptr, ptr %i.ec, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.ef = load ptr, ptr %i.ee, align 8
  %i.eg = tail call noundef i32 %i.ef(ptr noundef align 8 dereferenceable_or_null(8) %i.ec)
  %i.eh = sext i32 %i.eg to i64
  %i.ei = tail call noundef i64 @llvm.smin.i64(i64 %i.dr, i64 %i.eh)
  %i.ej = trunc i64 %i.ei to i32                  ; 3 uses
  %i.ek = load ptr, ptr %i.bf, align 8            ; 2 uses
  %i.el = icmp eq ptr %i.ek, null
  br i1 %i.el, label %_ZNK8QPointerI20QCPAbstractPlottableEptEv.exit77, label %bb.aa

bb.aa:                                            ; preds = %_ZNK8QPointerI20QCPAbstractPlottableEptEv.exit76
  %i.em = getelementptr i8, ptr %i.ek, i64 4
  %i.en = load atomic i32, ptr %i.em monotonic, align 4
  %i.eo = icmp eq i32 %i.en, 0
  br i1 %i.eo, label %_ZNK8QPointerI20QCPAbstractPlottableEptEv.exit77, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ep = load ptr, ptr %i.bl, align 8
  br label %_ZNK8QPointerI20QCPAbstractPlottableEptEv.exit77

_ZNK8QPointerI20QCPAbstractPlottableEptEv.exit77: ; preds = %_ZNK8QPointerI20QCPAbstractPlottableEptEv.exit76, %bb.aa, %bb.ab
  %i.eq = phi ptr [ %i.ep, %bb.ab ], [ null, %bb.aa ], [ null, %_ZNK8QPointerI20QCPAbstractPlottableEptEv.exit76 ] ; 2 uses
  %i.er = load ptr, ptr %i.eq, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 200
  %i.et = load ptr, ptr %i.es, align 8
  %i.eu = tail call noundef ptr %i.et(ptr noundef align 8 dereferenceable_or_null(184) %i.eq) ; 2 uses
  %i.ev = getelementptr i8, ptr %i.i, i64 304
  %.sroa.0.0.copyload.i = load double, ptr %i.ev, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %i.i, i64 312
  %i.ew = load ptr, ptr %i.eu, align 8
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 80
  %i.ey = load ptr, ptr %i.ex, align 8
  %i.ez = tail call noundef i32 %i.ey(ptr noundef align 8 dereferenceable_or_null(8) %i.eu, double noundef %.sroa.0.0.copyload.i, i1 noundef zeroext true) ; 5 uses
  %i.fa = load ptr, ptr %i.bf, align 8            ; 2 uses
  %i.fb = icmp eq ptr %i.fa, null
  br i1 %i.fb, label %_ZNK8QPointerI20QCPAbstractPlottableEptEv.exit78, label %bb.ac

bb.ac:                                            ; preds = %_ZNK8QPointerI20QCPAbstractPlottableEptEv.exit77
  %i.fc = getelementptr i8, ptr %i.fa, i64 4
  %i.fd = load atomic i32, ptr %i.fc monotonic, align 4
  %i.fe = icmp eq i32 %i.fd, 0
  br i1 %i.fe, label %_ZNK8QPointerI20QCPAbstractPlottableEptEv.exit78, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ff = load ptr, ptr %i.bl, align 8
  br label %_ZNK8QPointerI20QCPAbstractPlottableEptEv.exit78

_ZNK8QPointerI20QCPAbstractPlottableEptEv.exit78: ; preds = %_ZNK8QPointerI20QCPAbstractPlottableEptEv.exit77, %bb.ac, %bb.ad
  %i.fg = phi ptr [ %i.ff, %bb.ad ], [ null, %bb.ac ], [ null, %_ZNK8QPointerI20QCPAbstractPlottableEptEv.exit77 ] ; 2 uses
  %i.fh = load ptr, ptr %i.fg, align 8
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 200
  %i.fj = load ptr, ptr %i.fi, align 8
  %i.fk = tail call noundef ptr %i.fj(ptr noundef align 8 dereferenceable_or_null(184) %i.fg) ; 2 uses
  %.sroa.2.0.copyload.i81 = load double, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.fl = load ptr, ptr %i.fk, align 8
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 88
  %i.fn = load ptr, ptr %i.fm, align 8
  %i.fo = tail call noundef i32 %i.fn(ptr noundef align 8 dereferenceable_or_null(8) %i.fk, double noundef %.sroa.2.0.copyload.i81, i1 noundef zeroext true) ; 5 uses
  %i.fp = icmp sgt i32 %i.ez, 0
  %i.fq = icmp slt i32 %i.ez, %i.ej
  %or.cond57127 = and i1 %i.fp, %i.fq
  br i1 %or.cond57127, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %_ZNK8QPointerI20QCPAbstractPlottableEptEv.exit78, %bb.ae
  %.0129 = phi i32 [ %i.fu, %bb.ae ], [ %i.ez, %_ZNK8QPointerI20QCPAbstractPlottableEptEv.exit78 ] ; 5 uses
  %.051128 = phi i32 [ %spec.select, %bb.ae ], [ %i.ez, %_ZNK8QPointerI20QCPAbstractPlottableEptEv.exit78 ] ; 2 uses
  %i.fr = load i32, ptr %3, align 4
  %i.fs = icmp sgt i32 %.0129, %i.fr
  br i1 %i.fs, label %bb.ae, label %.critedge

bb.ae:                                            ; preds = %.lr.ph
  %i.ft = tail call noundef zeroext i1 @_ZNK12QCPErrorBars15errorBarVisibleEi(ptr noundef align 8 dereferenceable_or_null(248) %0, i32 noundef %.0129)
  %spec.select = select i1 %i.ft, i32 %.0129, i32 %.051128 ; 2 uses
  %i.fu = add nsw i32 %.0129, -1
  %i.fv = icmp sgt i32 %.0129, 1
  br i1 %i.fv, label %.lr.ph, label %.critedge, !llvm.loop !1307

.critedge:                                        ; preds = %bb.ae, %.lr.ph, %_ZNK8QPointerI20QCPAbstractPlottableEptEv.exit78
  %.051.lcssa = phi i32 [ %i.ez, %_ZNK8QPointerI20QCPAbstractPlottableEptEv.exit78 ], [ %spec.select, %bb.ae ], [ %.051128, %.lr.ph ]
  %i.fw = icmp sgt i32 %i.fo, -1
  %i.fx = icmp slt i32 %i.fo, %i.ej
  %or.cond58132 = and i1 %i.fw, %i.fx
  br i1 %or.cond58132, label %.lr.ph135, label %.critedge3

.lr.ph135:                                        ; preds = %.critedge, %bb.af
  %.1134 = phi i32 [ %i.gb, %bb.af ], [ %i.fo, %.critedge ] ; 3 uses
  %.053133 = phi i32 [ %spec.select59, %bb.af ], [ %i.fo, %.critedge ] ; 2 uses
  %i.fy = load i32, ptr %i.bn, align 4
  %i.fz = icmp slt i32 %.1134, %i.fy
  br i1 %i.fz, label %bb.af, label %.critedge3

bb.af:                                            ; preds = %.lr.ph135
  %i.ga = tail call noundef zeroext i1 @_ZNK12QCPErrorBars15errorBarVisibleEi(ptr noundef align 8 dereferenceable_or_null(248) %0, i32 noundef %.1134)
  %i.gb = add nuw nsw i32 %.1134, 1               ; 3 uses
  %spec.select59 = select i1 %i.ga, i32 %i.gb, i32 %.053133 ; 2 uses
  %i.gc = icmp slt i32 %i.gb, %i.ej
  br i1 %i.gc, label %.lr.ph135, label %.critedge3, !llvm.loop !1308

.critedge3:                                       ; preds = %.lr.ph135, %bb.af, %.critedge
  %.053.lcssa = phi i32 [ %i.fo, %.critedge ], [ %spec.select59, %bb.af ], [ %.053133, %.lr.ph135 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #51
  call void @_ZN12QCPDataRangeC1Eii(ptr noundef nonnull align 4 dereferenceable_or_null(8) %21, i32 noundef %.051.lcssa, i32 noundef %.053.lcssa)
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #51
  %i.gd = load ptr, ptr %i.do, align 8
  %i.ge = getelementptr i8, ptr %i.gd, i64 16
  %i.gf = load i64, ptr %i.ge, align 8
  %i.gg = trunc i64 %i.gf to i32
  call void @_ZN12QCPDataRangeC1Eii(ptr noundef nonnull align 4 dereferenceable_or_null(8) %22, i32 noundef 0, i32 noundef %i.gg)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #51
  %i.gh = load i32, ptr %3, align 4
  %i.gi = load i32, ptr %22, align 4
  %i.gj = call i32 @llvm.smax.i32(i32 %i.gh, i32 %i.gi)
  %i.gk = getelementptr inbounds nuw i8, ptr %22, i64 4 ; 2 uses
  %i.gl = load i32, ptr %i.bn, align 4
  %i.gm = load i32, ptr %i.gk, align 4
  %i.gn = call i32 @llvm.smin.i32(i32 %i.gl, i32 %i.gm)
  call void @_ZN12QCPDataRangeC1Eii(ptr noundef nonnull align 4 dereferenceable_or_null(8) %9, i32 noundef %i.gj, i32 noundef %i.gn)
  %i.go = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.gp = load i32, ptr %i.go, align 4
  %i.gq = load i32, ptr %9, align 4               ; 2 uses
  %.not.i.i.i84 = icmp sge i32 %i.gp, %i.gq
  %i.gr = icmp sgt i32 %i.gq, -1
  %spec.select.i.i.i85 = and i1 %.not.i.i.i84, %i.gr
  br i1 %spec.select.i.i.i85, label %_ZNK12QCPDataRange12intersectionERKS_.exit.i86, label %bb.ag

bb.ag:                                            ; preds = %.critedge3
  call void @_ZN12QCPDataRangeC1Ev(ptr noundef nonnull align 4 dereferenceable_or_null(8) %8)
  br label %_ZNK12QCPDataRange12intersectionERKS_.exit.i86

_ZNK12QCPDataRange12intersectionERKS_.exit.i86:   ; preds = %bb.ag, %.critedge3
  %.sink.i.i87 = phi ptr [ %8, %bb.ag ], [ %9, %.critedge3 ]
  %.pre.i.i88 = load i64, ptr %.sink.i.i87, align 4 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %.sroa.0.0.extract.trunc.i89 = trunc i64 %.pre.i.i88 to i32
  %.sroa.5.0.extract.shift.i90 = lshr i64 %.pre.i.i88, 32 ; 2 uses
  %.sroa.5.0.extract.trunc.i91 = trunc nuw i64 %.sroa.5.0.extract.shift.i90 to i32
  %i.gs = icmp eq i32 %.sroa.5.0.extract.trunc.i91, %.sroa.0.0.extract.trunc.i89
  br i1 %i.gs, label %bb.ah, label %_ZNK12QCPDataRange7boundedERKS_.exit100

bb.ah:                                            ; preds = %_ZNK12QCPDataRange12intersectionERKS_.exit.i86
  %i.gt = load i32, ptr %i.bn, align 4
  %i.gu = load i32, ptr %22, align 4              ; 3 uses
  %.not.i97 = icmp sgt i32 %i.gt, %i.gu
  br i1 %.not.i97, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #51
  call void @_ZN12QCPDataRangeC1Eii(ptr noundef nonnull align 4 dereferenceable_or_null(8) %10, i32 noundef %i.gu, i32 noundef %i.gu)
  %i.gv = load i64, ptr %10, align 8              ; 2 uses
  %.sroa.5.0.extract.shift12.i98 = lshr i64 %i.gv, 32
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #51
  br label %_ZNK12QCPDataRange7boundedERKS_.exit100

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #51
  %i.gw = load i32, ptr %i.gk, align 4            ; 2 uses
  call void @_ZN12QCPDataRangeC1Eii(ptr noundef nonnull align 4 dereferenceable_or_null(8) %11, i32 noundef %i.gw, i32 noundef %i.gw)
  %i.gx = load i64, ptr %11, align 8              ; 2 uses
  %.sroa.5.0.extract.shift10.i99 = lshr i64 %i.gx, 32
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #51
  br label %_ZNK12QCPDataRange7boundedERKS_.exit100

_ZNK12QCPDataRange7boundedERKS_.exit100:          ; preds = %_ZNK12QCPDataRange12intersectionERKS_.exit.i86, %bb.ai, %bb.aj
  %.sroa.5.0.i92 = phi i64 [ %.sroa.5.0.extract.shift10.i99, %bb.aj ], [ %.sroa.5.0.extract.shift12.i98, %bb.ai ], [ %.sroa.5.0.extract.shift.i90, %_ZNK12QCPDataRange12intersectionERKS_.exit.i86 ]
  %.sroa.0.0.i93 = phi i64 [ %i.gx, %bb.aj ], [ %i.gv, %bb.ai ], [ %.pre.i.i88, %_ZNK12QCPDataRange12intersectionERKS_.exit.i86 ]
  %.sroa.0119.0.extract.trunc = trunc i64 %.sroa.0.0.i93 to i32 ; 4 uses
  %.sroa.5.0.extract.trunc = trunc nuw i64 %.sroa.5.0.i92 to i32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #51
  %i.gy = load i32, ptr %21, align 8
  %i.gz = call i32 @llvm.smax.i32(i32 %i.gy, i32 %.sroa.0119.0.extract.trunc)
  %i.ha = getelementptr inbounds nuw i8, ptr %21, i64 4 ; 2 uses
  %i.hb = load i32, ptr %i.ha, align 4
  %i.hc = call i32 @llvm.smin.i32(i32 %i.hb, i32 %.sroa.5.0.extract.trunc)
  call void @_ZN12QCPDataRangeC1Eii(ptr noundef nonnull align 4 dereferenceable_or_null(8) %5, i32 noundef %i.gz, i32 noundef %i.hc)
  %i.hd = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.he = load i32, ptr %i.hd, align 4
  %i.hf = load i32, ptr %5, align 4               ; 2 uses
  %.not.i.i.i101 = icmp sge i32 %i.he, %i.hf
  %i.hg = icmp sgt i32 %i.hf, -1
  %spec.select.i.i.i102 = and i1 %.not.i.i.i101, %i.hg
  br i1 %spec.select.i.i.i102, label %_ZNK12QCPDataRange12intersectionERKS_.exit.i103, label %bb.ak

bb.ak:                                            ; preds = %_ZNK12QCPDataRange7boundedERKS_.exit100
  call void @_ZN12QCPDataRangeC1Ev(ptr noundef nonnull align 4 dereferenceable_or_null(8) %4)
  br label %_ZNK12QCPDataRange12intersectionERKS_.exit.i103

_ZNK12QCPDataRange12intersectionERKS_.exit.i103:  ; preds = %bb.ak, %_ZNK12QCPDataRange7boundedERKS_.exit100
  %.sink.i.i104 = phi ptr [ %4, %bb.ak ], [ %5, %_ZNK12QCPDataRange7boundedERKS_.exit100 ]
  %.pre.i.i105 = load i64, ptr %.sink.i.i104, align 4 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.sroa.0.0.extract.trunc.i106 = trunc i64 %.pre.i.i105 to i32
  %.sroa.5.0.extract.shift.i107 = lshr i64 %.pre.i.i105, 32 ; 2 uses
  %.sroa.5.0.extract.trunc.i108 = trunc nuw i64 %.sroa.5.0.extract.shift.i107 to i32
  %i.hh = icmp eq i32 %.sroa.5.0.extract.trunc.i108, %.sroa.0.0.extract.trunc.i106
  br i1 %i.hh, label %bb.al, label %_ZNK12QCPDataRange7boundedERKS_.exit117

bb.al:                                            ; preds = %_ZNK12QCPDataRange12intersectionERKS_.exit.i103
  %i.hi = load i32, ptr %i.ha, align 4
  %.not.i114 = icmp sgt i32 %i.hi, %.sroa.0119.0.extract.trunc
  br i1 %.not.i114, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #51
  call void @_ZN12QCPDataRangeC1Eii(ptr noundef nonnull align 4 dereferenceable_or_null(8) %6, i32 noundef %.sroa.0119.0.extract.trunc, i32 noundef %.sroa.0119.0.extract.trunc)
  %i.hj = load i64, ptr %6, align 8               ; 2 uses
  %.sroa.5.0.extract.shift12.i115 = lshr i64 %i.hj, 32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #51
  br label %_ZNK12QCPDataRange7boundedERKS_.exit117

bb.an:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #51
  call void @_ZN12QCPDataRangeC1Eii(ptr noundef nonnull align 4 dereferenceable_or_null(8) %7, i32 noundef %.sroa.5.0.extract.trunc, i32 noundef %.sroa.5.0.extract.trunc)
  %i.hk = load i64, ptr %7, align 8               ; 2 uses
  %.sroa.5.0.extract.shift10.i116 = lshr i64 %i.hk, 32
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #51
  br label %_ZNK12QCPDataRange7boundedERKS_.exit117

_ZNK12QCPDataRange7boundedERKS_.exit117:          ; preds = %_ZNK12QCPDataRange12intersectionERKS_.exit.i103, %bb.am, %bb.an
  %.sroa.5.0.i109 = phi i64 [ %.sroa.5.0.extract.shift10.i116, %bb.an ], [ %.sroa.5.0.extract.shift12.i115, %bb.am ], [ %.sroa.5.0.extract.shift.i107, %_ZNK12QCPDataRange12intersectionERKS_.exit.i103 ] ; 2 uses
  %.sroa.0.0.i110 = phi i64 [ %i.hk, %bb.an ], [ %i.hj, %bb.am ], [ %.pre.i.i105, %_ZNK12QCPDataRange12intersectionERKS_.exit.i103 ] ; 2 uses
  %.sroa.5.0.insert.shift.i111 = shl nuw i64 %.sroa.5.0.i109, 32
  %.sroa.0.0.insert.ext.i112 = and i64 %.sroa.0.0.i110, 4294967295
  %.sroa.0.0.insert.insert.i113 = or disjoint i64 %.sroa.0.0.insert.ext.i112, %.sroa.5.0.insert.shift.i111
  store i64 %.sroa.0.0.insert.insert.i113, ptr %21, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #51
  %i.hl = load ptr, ptr %i.do, align 8
  %i.hm = getelementptr i8, ptr %i.hl, i64 8
  %i.hn = load ptr, ptr %i.hm, align 8
  %sext157 = shl i64 %.sroa.0.0.i110, 32
  %i.ho = ashr exact i64 %sext157, 28
  %i.hp = getelementptr i8, ptr %i.hn, i64 %i.ho
  store ptr %i.hp, ptr %1, align 8
  %i.hq = load ptr, ptr %i.do, align 8
  %i.hr = getelementptr i8, ptr %i.hq, i64 8
  %i.hs = load ptr, ptr %i.hr, align 8
  %sext158 = shl nuw i64 %.sroa.5.0.i109, 32
  %i.ht = ashr exact i64 %sext158, 28
  %i.hu = getelementptr i8, ptr %i.hs, i64 %i.ht
  store ptr %i.hu, ptr %2, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #51
  br label %bb.ao

bb.ao:                                            ; preds = %_ZNK12QCPDataRange7boundedERKS_.exit117, %_ZNK12QCPDataRange7boundedERKS_.exit, %_ZNK8QPointerI20QCPAbstractPlottableEcvPS0_Ev.exit.thread, %_ZN6QDebuglsEPKc.exit74
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZNK12QCPErrorBars16getErrorBarLinesEN5QListI16QCPErrorBarsDataE14const_iteratorERS0_I6QLineFES6_(ptr nofree noundef readonly align 8 captures(none) dereferenceable_or_null(248) %0, ptr %1, ptr noundef align 8 dereferenceable(24) %2, ptr noundef align 8 dereferenceable(24) %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
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
