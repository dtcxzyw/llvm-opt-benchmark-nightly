inline.NumInlined: 11
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
begin_hunk_0_@filter_frame:bb.a
  %i.cg = load i8, ptr %gep211.i, align 1, !tbaa !51
  %i.ch = zext i8 %i.cg to i16
  %i.ci = insertelement <4 x i16> poison, i16 %i.ch, i64 0
  %i.cj = zext i8 %i.cf to i16
  %i.ck = insertelement <4 x i16> %i.ci, i16 %i.cj, i64 1
  %i.cl = zext i8 %i.cd to i16
  %i.cm = insertelement <4 x i16> %i.ck, i16 %i.cl, i64 2
  %i.cn = zext i8 %i.ce to i16
  %i.co = insertelement <4 x i16> %i.cm, i16 %i.cn, i64 3
  %i.cp = sub nsw <4 x i16> %i.co, %i.ay
  %i.cq = sitofp <4 x i16> %i.cp to <4 x float>
  %i.cr = tail call nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.cq, <4 x float> zeroinitializer)
  %i.cs = tail call nsz <4 x float> @llvm.minnum.v4f32(<4 x float> %i.cr, <4 x float> %i.av) ; 4 uses
  %i.ct = extractelement <4 x float> %i.cs, i64 0
  %i.cu = fptosi float %i.ct to i32
  %i.cv = mul nsw i32 %i.al, %i.cu
  %i.cw = sdiv i32 %i.cv, %i.aj
  %i.cx = and i32 %i.cw, 65535                    ; 2 uses
  %i.cy = extractelement <4 x float> %i.cs, i64 1
  %i.cz = fptosi float %i.cy to i32
  %i.da = mul nsw i32 %i.al, %i.cz
  %i.db = sdiv i32 %i.da, %i.aj
  %i.dc = shl nsw i32 %i.db, 1
  %i.dd = and i32 %i.dc, 131070
  %i.de = extractelement <4 x float> %i.cs, i64 2
  %i.df = fptosi float %i.de to i32
  %i.dg = mul nsw i32 %i.al, %i.df
  %i.dh = sdiv i32 %i.dg, %i.aj
  %i.di = and i32 %i.dh, 65535                    ; 2 uses
  %i.dj = extractelement <4 x float> %i.cs, i64 3
  %i.dk = fptosi float %i.dj to i32
  %i.dl = mul nsw i32 %i.al, %i.dk
  %i.dm = sdiv i32 %i.dl, %i.aj
  %i.dn = shl nsw i32 %i.dm, 1
  %i.do = and i32 %i.dn, 131070
  %gep219.i = getelementptr i8, ptr %invariant.gep216.i, i64 %indvars.iv.next150.i
  %i.dp = load i8, ptr %gep219.i, align 1, !tbaa !51
  %gep221.i = getelementptr i8, ptr %invariant.gep220.i, i64 %i.cc
  %gep223.i = getelementptr i8, ptr %invariant.gep220.i, i64 %indvars.iv149.i
  %gep225.i = getelementptr i8, ptr %invariant.gep220.i, i64 %indvars.iv.next150.i
  %i.dq = load i8, ptr %gep225.i, align 1, !tbaa !51
  %i.dr = load i8, ptr %gep223.i, align 1, !tbaa !51
  %i.ds = load i8, ptr %gep221.i, align 1, !tbaa !51
  %i.dt = zext i8 %i.dp to i16
  %i.du = insertelement <4 x i16> poison, i16 %i.dt, i64 0
  %i.dv = zext i8 %i.ds to i16
  %i.dw = insertelement <4 x i16> %i.du, i16 %i.dv, i64 1
  %i.dx = zext i8 %i.dr to i16
  %i.dy = insertelement <4 x i16> %i.dw, i16 %i.dx, i64 2
  %i.dz = zext i8 %i.dq to i16
  %i.ea = insertelement <4 x i16> %i.dy, i16 %i.dz, i64 3
  %i.eb = sub nsw <4 x i16> %i.ea, %i.bb
  %i.ec = sitofp <4 x i16> %i.eb to <4 x float>
  %i.ed = tail call nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.ec, <4 x float> zeroinitializer)
  %i.ee = tail call nsz <4 x float> @llvm.minnum.v4f32(<4 x float> %i.ed, <4 x float> %i.av) ; 4 uses
  %i.ef = extractelement <4 x float> %i.ee, i64 0
  %i.eg = fptosi float %i.ef to i32
  %i.eh = mul nsw i32 %i.al, %i.eg
  %i.ei = sdiv i32 %i.eh, %i.aj
  %i.ej = shl nsw i32 %i.ei, 1
  %i.ek = and i32 %i.ej, 131070
  %i.el = extractelement <4 x float> %i.ee, i64 1
  %i.em = fptosi float %i.el to i32
  %i.en = mul nsw i32 %i.al, %i.em
  %i.eo = sdiv i32 %i.en, %i.aj
  %i.ep = and i32 %i.eo, 65535                    ; 2 uses
  %i.eq = extractelement <4 x float> %i.ee, i64 2
  %i.er = fptosi float %i.eq to i32
  %i.es = mul nsw i32 %i.al, %i.er
  %i.et = sdiv i32 %i.es, %i.aj
  %i.eu = shl nsw i32 %i.et, 1
  %i.ev = and i32 %i.eu, 131070
  %i.ew = extractelement <4 x float> %i.ee, i64 3
  %i.ex = fptosi float %i.ew to i32
  %i.ey = mul nsw i32 %i.al, %i.ex
  %i.ez = sdiv i32 %i.ey, %i.aj
  %i.fa = and i32 %i.ez, 65535                    ; 2 uses
  %i.fb = add nuw nsw i32 %i.cx, %i.do
  %i.fc = add nuw nsw i32 %i.di, %i.ek
  %i.fd = add nuw nsw i32 %i.fb, %i.ep
  %i.fe = add nuw nsw i32 %i.fc, %i.fa
  %i.ff = sub nsw i32 %i.fd, %i.fe
  %i.fg = sitofp i32 %i.ff to double              ; 2 uses
  %.neg106 = add nuw nsw i32 %i.dd, %i.cx
  %.neg107 = add nuw nsw i32 %.neg106, %i.di
  %i.fh = add nuw nsw i32 %i.ep, %i.ev
  %i.fi = add nuw nsw i32 %i.fh, %i.fa
  %i.fj = sub nsw i32 %.neg107, %i.fi
  %i.fk = sitofp i32 %i.fj to double              ; 2 uses
  %i.fl = fmul nnan nsz double %i.fk, %i.fk
  %i.fm = tail call nsz double @llvm.fmuladd.f64(double %i.fg, double %i.fg, double %i.fl)
  %i.fn = tail call nsz double @llvm.sqrt.f64(double %i.fm)
  %i.fo = fptrunc nsz double %i.fn to float
  %i.fp = trunc nuw nsw i64 %indvars.iv149.i to i32
  %.reass.us.us.i = add i32 %invariant.op.us.i, %i.fp
  %i.fq = sext i32 %.reass.us.us.i to i64
  %i.fr = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.fq
  store float %i.fo, ptr %i.fr, align 4, !tbaa !20
  %exitcond153.not.i = icmp eq i64 %indvars.iv.next150.i, %wide.trip.count152.i
  br i1 %exitcond153.not.i, label %._crit_edge.split.us.us.i, label %.preheader102.us.us.i, !llvm.loop !52

._crit_edge.split.us.us.i:                        ; preds = %.preheader102.us.us.i
  %exitcond158.not.i = icmp eq i64 %i.ca, %wide.trip.count157.i
  br i1 %exitcond158.not.i, label %convolve_sobel.exit, label %.preheader103.us.i, !llvm.loop !54

.preheader101.i:                                  ; preds = %is_full_range.exit
  br i1 %i.ae, label %.preheader100.lr.ph.i, label %convolve_sobel.exit.thread

.preheader100.lr.ph.i:                            ; preds = %.preheader101.i
  %i.fs = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !48 ; 3 uses
  %i.fu = icmp sgt i32 %i.ft, 2
  %i.fv = add i32 %i.ft, -2                       ; 4 uses
  br i1 %i.fu, label %.preheader100.lr.ph.split.i, label %convolve_sobel.exit.thread.thread

convolve_sobel.exit.thread.thread:                ; preds = %.preheader100.lr.ph.i
  %i.fw = getelementptr inbounds nuw i8, ptr %i.f, i64 72 ; 2 uses
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !49
  %i.fy = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !50
  br label %.preheader.lr.ph.i

.preheader100.lr.ph.split.i:                      ; preds = %.preheader100.lr.ph.i
  %i.ga = add nsw i32 %i.ft, -1
  %.not93.i = icmp eq i32 %.0.in.i, 0
  %i.gb = sext i32 %i.x to i64                    ; 6 uses
  %wide.trip.count185.i = zext nneg i32 %i.ad to i64 ; 2 uses
  %wide.trip.count180.i = zext i32 %i.ga to i64   ; 5 uses
  %i.gc = add nsw i64 %wide.trip.count180.i, -2   ; 4 uses
  br i1 %.not93.i, label %.preheader100.us.i.preheader, label %.preheader100.i.preheader

.preheader100.i.preheader:                        ; preds = %.preheader100.lr.ph.split.i
  %i.gd = add nsw i64 %wide.trip.count180.i, -1   ; 3 uses
  %min.iters.check208 = icmp ult i64 %i.gd, 4
  %i.ge = trunc i64 %i.gc to i32
  %i.gf = icmp ugt i64 %i.gc, 4294967295
  %n.vec210 = and i64 %i.gd, -4                   ; 3 uses
  %i.gg = or disjoint i64 %n.vec210, 1
  %cmp.n228 = icmp eq i64 %i.gd, %n.vec210
  br label %.preheader100.i

.preheader100.us.i.preheader:                     ; preds = %.preheader100.lr.ph.split.i
  %i.gh = add nsw i64 %wide.trip.count180.i, -1   ; 3 uses
  %min.iters.check237 = icmp ult i64 %i.gh, 4
  %i.gi = trunc i64 %i.gc to i32
  %i.gj = icmp ugt i64 %i.gc, 4294967295
  %n.vec239 = and i64 %i.gh, -4                   ; 3 uses
  %i.gk = or disjoint i64 %n.vec239, 1
  %cmp.n258 = icmp eq i64 %i.gh, %n.vec239
  br label %.preheader100.us.i

.preheader100.us.i:                               ; preds = %.preheader100.us.i.preheader, %._crit_edge.split124.us.us.i
  %indvar234 = phi i32 [ %indvar.next235, %._crit_edge.split124.us.us.i ], [ 0, %.preheader100.us.i.preheader ] ; 2 uses
  %indvars.iv182.i = phi i64 [ %i.gq, %._crit_edge.split124.us.us.i ], [ 1, %.preheader100.us.i.preheader ] ; 3 uses
  %i.gl = add nsw i64 %indvars.iv182.i, -1        ; 2 uses
  %i.gm = trunc i64 %i.gl to i32
  %i.gn = mul i32 %i.fv, %i.gm
  %invariant.op121.us.i = add i32 %i.gn, -1       ; 2 uses
  %i.go = mul nsw i64 %i.gl, %i.gb
  %invariant.gep242.i = getelementptr [2 x i8], ptr %i.q, i64 %i.go ; 5 uses
  %i.gp = mul nsw i64 %indvars.iv182.i, %i.gb
  %invariant.gep248.i = getelementptr [2 x i8], ptr %i.q, i64 %i.gp ; 4 uses
  %i.gq = add nuw nsw i64 %indvars.iv182.i, 1     ; 3 uses
  %i.gr = mul nsw i64 %i.gq, %i.gb
  %invariant.gep252.i = getelementptr [2 x i8], ptr %i.q, i64 %i.gr ; 4 uses
  %gep245.i.phi.trans.insert = getelementptr i8, ptr %invariant.gep242.i, i64 2
  %.pre142 = load i16, ptr %gep245.i.phi.trans.insert, align 2, !tbaa !55 ; 2 uses
  %.pre143 = load i16, ptr %invariant.gep252.i, align 2, !tbaa !55 ; 3 uses
  %gep255.i.phi.trans.insert = getelementptr i8, ptr %invariant.gep252.i, i64 2
  %.pre144 = load i16, ptr %gep255.i.phi.trans.insert, align 2, !tbaa !55 ; 2 uses
  %i.gs = insertelement <2 x i16> poison, i16 %.pre142, i64 0
  %i.gt = insertelement <2 x i16> %i.gs, i16 %.pre144, i64 1 ; 2 uses
  br i1 %min.iters.check237, label %.preheader.us.us.i.preheader, label %vector.scevcheck233

vector.scevcheck233:                              ; preds = %.preheader100.us.i
  %i.gu = mul i32 %i.fv, %indvar234               ; 2 uses
  %i.gv = add i32 %i.gu, %i.gi
  %i.gw = icmp slt i32 %i.gv, %i.gu
  %i.gx = or i1 %i.gw, %i.gj
  br i1 %i.gx, label %.preheader.us.us.i.preheader, label %vector.ph238

vector.ph238:                                     ; preds = %vector.scevcheck233
  %vector.recur.init242 = insertelement <4 x i16> poison, i16 %.pre144, i64 3
  %vector.recur.init244 = insertelement <4 x i16> poison, i16 %.pre143, i64 3
  %vector.recur.init246 = insertelement <4 x i16> poison, i16 %.pre142, i64 3
  br label %vector.body240

vector.body240:                                   ; preds = %vector.body240, %vector.ph238
  %index241 = phi i64 [ 0, %vector.ph238 ], [ %index.next253, %vector.body240 ] ; 5 uses
  %vector.recur243 = phi <4 x i16> [ %vector.recur.init242, %vector.ph238 ], [ %wide.load252, %vector.body240 ]
  %vector.recur245 = phi <4 x i16> [ %vector.recur.init244, %vector.ph238 ], [ %i.jb, %vector.body240 ]
  %vector.recur247 = phi <4 x i16> [ %vector.recur.init246, %vector.ph238 ], [ %wide.load249, %vector.body240 ]
  %i.gy = getelementptr [2 x i8], ptr %invariant.gep242.i, i64 %index241
  %wide.load248 = load <4 x i16>, ptr %i.gy, align 2, !tbaa !55
  %i.gz = zext <4 x i16> %wide.load248 to <4 x i32>
  %i.ha = add nsw <4 x i32> %i.gz, splat (i32 -64)
  %i.hb = sitofp nsz <4 x i32> %i.ha to <4 x float>
  %i.hc = tail call nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.hb, <4 x float> zeroinitializer)
  %i.hd = tail call nsz <4 x float> @llvm.minnum.v4f32(<4 x float> %i.hc, <4 x float> splat (float 8.760000e+02))
  %i.he = fptosi <4 x float> %i.hd to <4 x i32>
  %i.hf = mul nsw <4 x i32> %i.he, splat (i32 1023)
  %i.hg = sdiv <4 x i32> %i.hf, splat (i32 876)
  %i.hh = and <4 x i32> %i.hg, splat (i32 65535)  ; 2 uses
  %i.hi = or disjoint i64 %index241, 2            ; 3 uses
  %i.hj = getelementptr [2 x i8], ptr %invariant.gep242.i, i64 %i.hi
  %wide.load249 = load <4 x i16>, ptr %i.hj, align 2, !tbaa !55 ; 4 uses
  %i.hk = shufflevector <4 x i16> %vector.recur247, <4 x i16> %wide.load249, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.hl = zext <4 x i16> %i.hk to <4 x i32>
  %i.hm = add nsw <4 x i32> %i.hl, splat (i32 -64)
  %i.hn = sitofp nsz <4 x i32> %i.hm to <4 x float>
  %i.ho = tail call nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.hn, <4 x float> zeroinitializer)
  %i.hp = tail call nsz <4 x float> @llvm.minnum.v4f32(<4 x float> %i.ho, <4 x float> splat (float 8.760000e+02))
  %i.hq = fptosi <4 x float> %i.hp to <4 x i32>
  %i.hr = mul nsw <4 x i32> %i.hq, splat (i32 1023)
  %i.hs = sdiv <4 x i32> %i.hr, splat (i32 876)
  %i.ht = shl nsw <4 x i32> %i.hs, splat (i32 1)
  %i.hu = and <4 x i32> %i.ht, splat (i32 131070)
  %i.hv = zext <4 x i16> %wide.load249 to <4 x i32>
  %i.hw = add nsw <4 x i32> %i.hv, splat (i32 -64)
  %i.hx = sitofp nsz <4 x i32> %i.hw to <4 x float>
  %i.hy = tail call nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.hx, <4 x float> zeroinitializer)
  %i.hz = tail call nsz <4 x float> @llvm.minnum.v4f32(<4 x float> %i.hy, <4 x float> splat (float 8.760000e+02))
  %i.ia = fptosi <4 x float> %i.hz to <4 x i32>
  %i.ib = mul nsw <4 x i32> %i.ia, splat (i32 1023)
  %i.ic = sdiv <4 x i32> %i.ib, splat (i32 876)
  %i.id = and <4 x i32> %i.ic, splat (i32 65535)  ; 2 uses
  %i.ie = getelementptr [2 x i8], ptr %invariant.gep248.i, i64 %index241
  %wide.load250 = load <4 x i16>, ptr %i.ie, align 2, !tbaa !55
  %i.if = zext <4 x i16> %wide.load250 to <4 x i32>
  %i.ig = add nsw <4 x i32> %i.if, splat (i32 -64)
  %i.ih = sitofp nsz <4 x i32> %i.ig to <4 x float>
  %i.ii = tail call nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.ih, <4 x float> zeroinitializer)
  %i.ij = tail call nsz <4 x float> @llvm.minnum.v4f32(<4 x float> %i.ii, <4 x float> splat (float 8.760000e+02))
  %i.ik = fptosi <4 x float> %i.ij to <4 x i32>
  %i.il = mul nsw <4 x i32> %i.ik, splat (i32 1023)
  %i.im = sdiv <4 x i32> %i.il, splat (i32 876)
  %i.in = shl nsw <4 x i32> %i.im, splat (i32 1)
  %i.io = and <4 x i32> %i.in, splat (i32 131070)
  %i.ip = getelementptr [2 x i8], ptr %invariant.gep248.i, i64 %i.hi
  %wide.load251 = load <4 x i16>, ptr %i.ip, align 2, !tbaa !55
  %i.iq = zext <4 x i16> %wide.load251 to <4 x i32>
  %i.ir = add nsw <4 x i32> %i.iq, splat (i32 -64)
  %i.is = sitofp nsz <4 x i32> %i.ir to <4 x float>
  %i.it = tail call nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.is, <4 x float> zeroinitializer)
  %i.iu = tail call nsz <4 x float> @llvm.minnum.v4f32(<4 x float> %i.it, <4 x float> splat (float 8.760000e+02))
  %i.iv = fptosi <4 x float> %i.iu to <4 x i32>
  %i.iw = mul nsw <4 x i32> %i.iv, splat (i32 1023)
  %i.ix = sdiv <4 x i32> %i.iw, splat (i32 876)
  %i.iy = shl nsw <4 x i32> %i.ix, splat (i32 1)
  %i.iz = and <4 x i32> %i.iy, splat (i32 131070)
  %i.ja = getelementptr [2 x i8], ptr %invariant.gep252.i, i64 %i.hi
  %wide.load252 = load <4 x i16>, ptr %i.ja, align 2, !tbaa !55 ; 5 uses
  %i.jb = shufflevector <4 x i16> %vector.recur243, <4 x i16> %wide.load252, <4 x i32> <i32 3, i32 4, i32 5, i32 6> ; 3 uses
  %i.jc = shufflevector <4 x i16> %vector.recur245, <4 x i16> %i.jb, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.jd = zext <4 x i16> %i.jc to <4 x i32>
  %i.je = add nsw <4 x i32> %i.jd, splat (i32 -64)
  %i.jf = sitofp nsz <4 x i32> %i.je to <4 x float>
  %i.jg = tail call nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.jf, <4 x float> zeroinitializer)
  %i.jh = tail call nsz <4 x float> @llvm.minnum.v4f32(<4 x float> %i.jg, <4 x float> splat (float 8.760000e+02))
  %i.ji = fptosi <4 x float> %i.jh to <4 x i32>
  %i.jj = mul nsw <4 x i32> %i.ji, splat (i32 1023)
  %i.jk = sdiv <4 x i32> %i.jj, splat (i32 876)
  %i.jl = and <4 x i32> %i.jk, splat (i32 65535)  ; 2 uses
  %i.jm = zext <4 x i16> %i.jb to <4 x i32>
  %i.jn = add nsw <4 x i32> %i.jm, splat (i32 -64)
  %i.jo = sitofp nsz <4 x i32> %i.jn to <4 x float>
  %i.jp = tail call nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.jo, <4 x float> zeroinitializer)
  %i.jq = tail call nsz <4 x float> @llvm.minnum.v4f32(<4 x float> %i.jp, <4 x float> splat (float 8.760000e+02))
  %i.jr = fptosi <4 x float> %i.jq to <4 x i32>
  %i.js = mul nsw <4 x i32> %i.jr, splat (i32 1023)
  %i.jt = sdiv <4 x i32> %i.js, splat (i32 876)
  %i.ju = shl nsw <4 x i32> %i.jt, splat (i32 1)
  %i.jv = and <4 x i32> %i.ju, splat (i32 131070)
  %i.jw = zext <4 x i16> %wide.load252 to <4 x i32>
  %i.jx = add nsw <4 x i32> %i.jw, splat (i32 -64)
  %i.jy = sitofp nsz <4 x i32> %i.jx to <4 x float>
  %i.jz = tail call nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.jy, <4 x float> zeroinitializer)
  %i.ka = tail call nsz <4 x float> @llvm.minnum.v4f32(<4 x float> %i.jz, <4 x float> splat (float 8.760000e+02))
  %i.kb = fptosi <4 x float> %i.ka to <4 x i32>
  %i.kc = mul nsw <4 x i32> %i.kb, splat (i32 1023)
  %i.kd = sdiv <4 x i32> %i.kc, splat (i32 876)
  %i.ke = and <4 x i32> %i.kd, splat (i32 65535)  ; 2 uses
  %i.kf = sub nsw <4 x i32> %i.hh, %i.id
  %i.kg = add nsw <4 x i32> %i.kf, %i.io
  %i.kh = add nsw <4 x i32> %i.kg, %i.jl
  %i.ki = add nuw nsw <4 x i32> %i.iz, %i.ke
  %i.kj = sub nsw <4 x i32> %i.kh, %i.ki
  %i.kk = sitofp <4 x i32> %i.kj to <4 x double>  ; 2 uses
  %i.kl = add nuw nsw <4 x i32> %i.hu, %i.hh
  %i.km = add nuw nsw <4 x i32> %i.kl, %i.id
  %i.kn = add nuw nsw <4 x i32> %i.jl, %i.jv
  %i.ko = add nuw nsw <4 x i32> %i.kn, %i.ke
  %i.kp = sub nsw <4 x i32> %i.km, %i.ko
  %i.kq = sitofp <4 x i32> %i.kp to <4 x double>  ; 2 uses
  %i.kr = fmul nnan nsz <4 x double> %i.kq, %i.kq
  %i.ks = tail call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.kk, <4 x double> %i.kk, <4 x double> %i.kr)
  %i.kt = tail call nsz <4 x double> @llvm.sqrt.v4f64(<4 x double> %i.ks)
  %i.ku = fptrunc nsz <4 x double> %i.kt to <4 x float>
  %i.kv = trunc i64 %index241 to i32
  %i.kw = or disjoint i32 %i.kv, 1
  %i.kx = add i32 %invariant.op121.us.i, %i.kw
  %i.ky = sext i32 %i.kx to i64
  %i.kz = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.ky
  store <4 x float> %i.ku, ptr %i.kz, align 4, !tbaa !20
  %index.next253 = add nuw i64 %index241, 4       ; 2 uses
  %i.la = icmp eq i64 %index.next253, %n.vec239
  br i1 %i.la, label %middle.block254, label %vector.body240, !llvm.loop !57

middle.block254:                                  ; preds = %vector.body240
  %vector.recur.extract256 = extractelement <4 x i16> %wide.load252, i64 2
  %i.lb = shufflevector <4 x i16> %wide.load249, <4 x i16> %wide.load252, <2 x i32> <i32 3, i32 7>
  br i1 %cmp.n258, label %._crit_edge.split124.us.us.i, label %.preheader.us.us.i.preheader

.preheader.us.us.i.preheader:                     ; preds = %vector.scevcheck233, %.preheader100.us.i, %middle.block254
  %.ph = phi i16 [ %.pre143, %vector.scevcheck233 ], [ %.pre143, %.preheader100.us.i ], [ %vector.recur.extract256, %middle.block254 ]
  %indvars.iv177.i.ph = phi i64 [ 1, %vector.scevcheck233 ], [ 1, %.preheader100.us.i ], [ %i.gk, %middle.block254 ]
  %.ph353 = phi <2 x i16> [ %i.gt, %vector.scevcheck233 ], [ %i.gt, %.preheader100.us.i ], [ %i.lb, %middle.block254 ]
  br label %.preheader.us.us.i

.preheader.us.us.i:                               ; preds = %.preheader.us.us.i.preheader, %.preheader.us.us.i
  %i.lc = phi i16 [ %i.ny, %.preheader.us.us.i ], [ %.ph, %.preheader.us.us.i.preheader ]
  %indvars.iv177.i = phi i64 [ %indvars.iv.next178.i, %.preheader.us.us.i ], [ %indvars.iv177.i.ph, %.preheader.us.us.i.preheader ] ; 3 uses
  %i.ld = phi <2 x i16> [ %i.nx, %.preheader.us.us.i ], [ %.ph353, %.preheader.us.us.i.preheader ] ; 2 uses
  %i.le = add nsw i64 %indvars.iv177.i, -1        ; 2 uses
  %gep243.i = getelementptr [2 x i8], ptr %invariant.gep242.i, i64 %i.le
  %i.lf = load i16, ptr %gep243.i, align 2, !tbaa !55
  %i.lg = zext <2 x i16> %i.ld to <2 x i32>
  %indvars.iv.next178.i = add nuw nsw i64 %indvars.iv177.i, 1 ; 5 uses
  %gep247.i = getelementptr [2 x i8], ptr %invariant.gep242.i, i64 %indvars.iv.next178.i
  %i.lh = load i16, ptr %gep247.i, align 2, !tbaa !55 ; 2 uses
  %i.li = insertelement <2 x i16> poison, i16 %i.lf, i64 0
  %i.lj = insertelement <2 x i16> %i.li, i16 %i.lh, i64 1
  %i.lk = zext <2 x i16> %i.lj to <2 x i32>
  %i.ll = add nsw <2 x i32> %i.lk, splat (i32 -64)
  %i.lm = sitofp <2 x i32> %i.ll to <2 x float>
  %i.ln = tail call nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.lm, <2 x float> zeroinitializer)
  %i.lo = tail call nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.ln, <2 x float> splat (float 8.760000e+02))
  %i.lp = fptosi <2 x float> %i.lo to <2 x i32>
  %i.lq = mul nsw <2 x i32> %i.lp, splat (i32 1023)
  %i.lr = sdiv <2 x i32> %i.lq, splat (i32 876)
  %i.ls = and <2 x i32> %i.lr, splat (i32 65535)  ; 4 uses
  %gep249.i = getelementptr [2 x i8], ptr %invariant.gep248.i, i64 %i.le
  %i.lt = load i16, ptr %gep249.i, align 2, !tbaa !55
  %gep251.i = getelementptr [2 x i8], ptr %invariant.gep248.i, i64 %indvars.iv.next178.i
  %i.lu = load i16, ptr %gep251.i, align 2, !tbaa !55
  %gep257.i = getelementptr [2 x i8], ptr %invariant.gep252.i, i64 %indvars.iv.next178.i
  %i.lv = load i16, ptr %gep257.i, align 2, !tbaa !55 ; 2 uses
  %shift = shufflevector <2 x i32> %i.ls, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = sub nsw <2 x i32> %i.ls, %shift
  %i.lw = insertelement <2 x i16> poison, i16 %i.lt, i64 0
  %i.lx = insertelement <2 x i16> %i.lw, i16 %i.lu, i64 1
  %i.ly = zext <2 x i16> %i.lx to <2 x i32>
  %i.lz = add nsw <2 x i32> %i.ly, splat (i32 -64)
  %i.ma = sitofp <2 x i32> %i.lz to <2 x float>
  %i.mb = tail call nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ma, <2 x float> zeroinitializer)
  %i.mc = tail call nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.mb, <2 x float> splat (float 8.760000e+02))
  %i.md = fptosi <2 x float> %i.mc to <2 x i32>
  %i.me = mul nsw <2 x i32> %i.md, splat (i32 1023)
  %i.mf = sdiv <2 x i32> %i.me, splat (i32 876)
  %i.mg = shl nsw <2 x i32> %i.mf, splat (i32 1)
  %i.mh = and <2 x i32> %i.mg, <i32 131070, i32 -1> ; 2 uses
  %i.mi = insertelement <2 x i16> poison, i16 %i.lc, i64 0
  %i.mj = insertelement <2 x i16> %i.mi, i16 %i.lv, i64 1
  %i.mk = zext <2 x i16> %i.mj to <2 x i32>
  %i.ml = add nsw <2 x i32> %i.mk, splat (i32 -64)
  %i.mm = sitofp <2 x i32> %i.ml to <2 x float>
  %i.mn = tail call nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.mm, <2 x float> zeroinitializer)
  %i.mo = tail call nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.mn, <2 x float> splat (float 8.760000e+02))
  %i.mp = fptosi <2 x float> %i.mo to <2 x i32>
  %i.mq = mul nsw <2 x i32> %i.mp, splat (i32 1023)
  %i.mr = sdiv <2 x i32> %i.mq, splat (i32 876)
  %i.ms = and <2 x i32> %i.mr, splat (i32 65535)  ; 3 uses
  %i.mt = insertelement <2 x i32> %foldExtExtBinop, i32 131070, i64 1 ; 2 uses
  %i.mu = add nsw <2 x i32> %i.mh, %i.mt
  %i.mv = and <2 x i32> %i.mh, %i.mt
  %i.mw = shufflevector <2 x i32> %i.mu, <2 x i32> %i.mv, <2 x i32> <i32 0, i32 3>
  %i.mx = add nsw <2 x i32> %i.mw, %i.ms          ; 2 uses
  %shift339 = shufflevector <2 x i32> %i.mx, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop340 = sub nsw <2 x i32> %i.mx, %shift339
  %i.my = extractelement <2 x i32> %foldExtExtBinop340, i64 0
  %i.mz = sitofp i32 %i.my to double              ; 2 uses
  %i.na = add nsw <2 x i32> %i.lg, splat (i32 -64)
  %i.nb = sitofp <2 x i32> %i.na to <2 x float>
  %i.nc = tail call nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.nb, <2 x float> zeroinitializer)
  %i.nd = tail call nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.nc, <2 x float> splat (float 8.760000e+02))
  %i.ne = fptosi <2 x float> %i.nd to <2 x i32>
  %i.nf = mul nsw <2 x i32> %i.ne, splat (i32 1023)
  %i.ng = sdiv <2 x i32> %i.nf, splat (i32 876)
  %i.nh = shl nsw <2 x i32> %i.ng, splat (i32 1)
  %i.ni = and <2 x i32> %i.nh, splat (i32 131070)
  %i.nj = shufflevector <2 x i32> %i.ls, <2 x i32> %i.ms, <2 x i32> <i32 0, i32 2>
  %i.nk = add nuw nsw <2 x i32> %i.nj, %i.ni
  %i.nl = shufflevector <2 x i32> %i.ms, <2 x i32> %i.ls, <2 x i32> <i32 3, i32 1>
  %i.nm = add nuw nsw <2 x i32> %i.nk, %i.nl      ; 2 uses
  %shift342 = shufflevector <2 x i32> %i.nm, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop343 = sub nsw <2 x i32> %i.nm, %shift342
  %i.nn = extractelement <2 x i32> %foldExtExtBinop343, i64 0
  %i.no = sitofp i32 %i.nn to double              ; 2 uses
  %i.np = fmul nnan nsz double %i.no, %i.no
  %i.nq = tail call nsz double @llvm.fmuladd.f64(double %i.mz, double %i.mz, double %i.np)
  %i.nr = tail call nsz double @llvm.sqrt.f64(double %i.nq)
  %i.ns = fptrunc nsz double %i.nr to float
  %i.nt = trunc nuw nsw i64 %indvars.iv177.i to i32
  %.reass122.us.us.i = add i32 %invariant.op121.us.i, %i.nt
  %i.nu = sext i32 %.reass122.us.us.i to i64
  %i.nv = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.nu
  store float %i.ns, ptr %i.nv, align 4, !tbaa !20
  %exitcond181.not.i = icmp eq i64 %indvars.iv.next178.i, %wide.trip.count180.i
  %i.nw = insertelement <2 x i16> poison, i16 %i.lh, i64 0
  %i.nx = insertelement <2 x i16> %i.nw, i16 %i.lv, i64 1
  %i.ny = extractelement <2 x i16> %i.ld, i64 1
  br i1 %exitcond181.not.i, label %._crit_edge.split124.us.us.i, label %.preheader.us.us.i, !llvm.loop !60

._crit_edge.split124.us.us.i:                     ; preds = %.preheader.us.us.i, %middle.block254
  %exitcond186.not.i = icmp eq i64 %i.gq, %wide.trip.count185.i
  %indvar.next235 = add i32 %indvar234, 1
  br i1 %exitcond186.not.i, label %convolve_sobel.exit, label %.preheader100.us.i, !llvm.loop !61

.preheader100.i:                                  ; preds = %.preheader100.i.preheader, %._crit_edge.split124.i
  %indvar205 = phi i32 [ %indvar.next206, %._crit_edge.split124.i ], [ 0, %.preheader100.i.preheader ] ; 2 uses
  %indvars.iv168.i = phi i64 [ %i.oe, %._crit_edge.split124.i ], [ 1, %.preheader100.i.preheader ] ; 3 uses
  %i.nz = add nsw i64 %indvars.iv168.i, -1        ; 2 uses
  %i.oa = trunc i64 %i.nz to i32
  %i.ob = mul i32 %i.fv, %i.oa
  %invariant.op121.i = add i32 %i.ob, -1          ; 2 uses
  %i.oc = mul nsw i64 %i.nz, %i.gb
  %invariant.gep226.i = getelementptr [2 x i8], ptr %i.q, i64 %i.oc ; 4 uses
  %i.od = mul nsw i64 %indvars.iv168.i, %i.gb
  %invariant.gep232.i = getelementptr [2 x i8], ptr %i.q, i64 %i.od ; 4 uses
  %i.oe = add nuw nsw i64 %indvars.iv168.i, 1     ; 3 uses
  %i.of = mul nsw i64 %i.oe, %i.gb
  %invariant.gep236.i = getelementptr [2 x i8], ptr %i.q, i64 %i.of ; 4 uses
  %.pre = load i16, ptr %invariant.gep226.i, align 2, !tbaa !55 ; 3 uses
  %gep229.i.phi.trans.insert = getelementptr i8, ptr %invariant.gep226.i, i64 2
  %.pre139 = load i16, ptr %gep229.i.phi.trans.insert, align 2, !tbaa !55 ; 3 uses
  %.pre140 = load i16, ptr %invariant.gep236.i, align 2, !tbaa !55 ; 3 uses
  %gep239.i.phi.trans.insert = getelementptr i8, ptr %invariant.gep236.i, i64 2
  %.pre141 = load i16, ptr %gep239.i.phi.trans.insert, align 2, !tbaa !55 ; 3 uses
  br i1 %min.iters.check208, label %.preheader.i.preheader, label %vector.scevcheck204

vector.scevcheck204:                              ; preds = %.preheader100.i
  %i.og = mul i32 %i.fv, %indvar205               ; 2 uses
  %i.oh = add i32 %i.og, %i.ge
  %i.oi = icmp slt i32 %i.oh, %i.og
  %i.oj = or i1 %i.oi, %i.gf
  br i1 %i.oj, label %.preheader.i.preheader, label %vector.ph209

vector.ph209:                                     ; preds = %vector.scevcheck204
  %vector.recur.init = insertelement <4 x i16> poison, i16 %.pre141, i64 3
  %vector.recur.init213 = insertelement <4 x i16> poison, i16 %.pre140, i64 3
  %vector.recur.init215 = insertelement <4 x i16> poison, i16 %.pre139, i64 3
  %vector.recur.init217 = insertelement <4 x i16> poison, i16 %.pre, i64 3
  br label %vector.body211

vector.body211:                                   ; preds = %vector.body211, %vector.ph209
  %index212 = phi i64 [ 0, %vector.ph209 ], [ %index.next223, %vector.body211 ] ; 3 uses
  %vector.recur = phi <4 x i16> [ %vector.recur.init, %vector.ph209 ], [ %wide.load222, %vector.body211 ]
  %vector.recur214 = phi <4 x i16> [ %vector.recur.init213, %vector.ph209 ], [ %i.pm, %vector.body211 ]
  %vector.recur216 = phi <4 x i16> [ %vector.recur.init215, %vector.ph209 ], [ %wide.load219, %vector.body211 ]
  %vector.recur218 = phi <4 x i16> [ %vector.recur.init217, %vector.ph209 ], [ %i.on, %vector.body211 ]
  %i.ok = or disjoint i64 %index212, 1            ; 2 uses
  %i.ol = or disjoint i64 %index212, 2            ; 3 uses
  %i.om = getelementptr [2 x i8], ptr %invariant.gep226.i, i64 %i.ol
  %wide.load219 = load <4 x i16>, ptr %i.om, align 2, !tbaa !55 ; 6 uses
  %i.on = shufflevector <4 x i16> %vector.recur216, <4 x i16> %wide.load219, <4 x i32> <i32 3, i32 4, i32 5, i32 6> ; 3 uses
  %i.oo = shufflevector <4 x i16> %vector.recur218, <4 x i16> %i.on, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.op = uitofp <4 x i16> %i.oo to <4 x double>  ; 2 uses
  %i.oq = zext <4 x i16> %i.on to <4 x i32>
  %i.or = shl nuw nsw <4 x i32> %i.oq, splat (i32 1)
  %i.os = uitofp nneg <4 x i32> %i.or to <4 x double>
  %i.ot = fadd nsz <4 x double> %i.op, %i.os
  %i.ou = zext <4 x i16> %wide.load219 to <4 x i32>
  %i.ov = sub nsw <4 x i32> zeroinitializer, %i.ou
  %i.ow = sitofp nsz <4 x i32> %i.ov to <4 x double>
  %i.ox = fadd nsz <4 x double> %i.op, %i.ow
  %i.oy = uitofp <4 x i16> %wide.load219 to <4 x double>
  %i.oz = fadd nsz <4 x double> %i.ot, %i.oy
  %i.pa = getelementptr [2 x i8], ptr %invariant.gep232.i, i64 %i.ok
  %i.pb = getelementptr i8, ptr %i.pa, i64 -2
  %wide.load220 = load <4 x i16>, ptr %i.pb, align 2, !tbaa !55
  %i.pc = zext <4 x i16> %wide.load220 to <4 x i32>
  %i.pd = shl nuw nsw <4 x i32> %i.pc, splat (i32 1)
  %i.pe = uitofp nneg <4 x i32> %i.pd to <4 x double>
  %i.pf = fadd nsz <4 x double> %i.ox, %i.pe
  %i.pg = getelementptr [2 x i8], ptr %invariant.gep232.i, i64 %i.ol
  %wide.load221 = load <4 x i16>, ptr %i.pg, align 2, !tbaa !55
  %i.ph = zext <4 x i16> %wide.load221 to <4 x i32>
  %i.pi = mul nsw <4 x i32> %i.ph, splat (i32 -2)
  %i.pj = sitofp nsz <4 x i32> %i.pi to <4 x double>
  %i.pk = fadd nsz <4 x double> %i.pf, %i.pj
  %i.pl = getelementptr [2 x i8], ptr %invariant.gep236.i, i64 %i.ol
  %wide.load222 = load <4 x i16>, ptr %i.pl, align 2, !tbaa !55 ; 5 uses
  %i.pm = shufflevector <4 x i16> %vector.recur, <4 x i16> %wide.load222, <4 x i32> <i32 3, i32 4, i32 5, i32 6> ; 3 uses
  %i.pn = shufflevector <4 x i16> %vector.recur214, <4 x i16> %i.pm, <4 x i32> <i32 3, i32 4, i32 5, i32 6> ; 2 uses
  %i.po = zext <4 x i16> %i.pn to <4 x i32>
  %i.pp = uitofp <4 x i16> %i.pn to <4 x double>
  %i.pq = fadd nsz <4 x double> %i.pk, %i.pp
  %i.pr = sub nsw <4 x i32> zeroinitializer, %i.po
  %i.ps = sitofp nsz <4 x i32> %i.pr to <4 x double>
  %i.pt = fadd nsz <4 x double> %i.oz, %i.ps
  %i.pu = zext <4 x i16> %i.pm to <4 x i32>
  %i.pv = mul nsw <4 x i32> %i.pu, splat (i32 -2)
  %i.pw = sitofp nsz <4 x i32> %i.pv to <4 x double>
  %i.px = fadd nsz <4 x double> %i.pt, %i.pw
  %i.py = zext <4 x i16> %wide.load222 to <4 x i32>
  %i.pz = sub nsw <4 x i32> zeroinitializer, %i.py
  %i.qa = sitofp nsz <4 x i32> %i.pz to <4 x double> ; 2 uses
  %i.qb = fadd nsz <4 x double> %i.pq, %i.qa      ; 2 uses
  %i.qc = fadd nsz <4 x double> %i.px, %i.qa      ; 2 uses
  %i.qd = fmul nsz <4 x double> %i.qc, %i.qc
  %i.qe = tail call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.qb, <4 x double> %i.qb, <4 x double> %i.qd)
  %i.qf = tail call nsz <4 x double> @llvm.sqrt.v4f64(<4 x double> %i.qe)
  %i.qg = fptrunc nsz <4 x double> %i.qf to <4 x float>
  %i.qh = trunc nuw nsw i64 %i.ok to i32
  %i.qi = add i32 %invariant.op121.i, %i.qh
  %i.qj = sext i32 %i.qi to i64
  %i.qk = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.qj
  store <4 x float> %i.qg, ptr %i.qk, align 4, !tbaa !20
  %index.next223 = add nuw i64 %index212, 4       ; 2 uses
  %i.ql = icmp eq i64 %index.next223, %n.vec210
  br i1 %i.ql, label %middle.block224, label %vector.body211, !llvm.loop !62

middle.block224:                                  ; preds = %vector.body211
  %vector.recur.extract = extractelement <4 x i16> %wide.load222, i64 3
  %vector.recur.extract225 = extractelement <4 x i16> %wide.load222, i64 2
  %vector.recur.extract226 = extractelement <4 x i16> %wide.load219, i64 3
  %vector.recur.extract227 = extractelement <4 x i16> %wide.load219, i64 2
  br i1 %cmp.n228, label %._crit_edge.split124.i, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %vector.scevcheck204, %.preheader100.i, %middle.block224
  %.ph354 = phi i16 [ %.pre141, %vector.scevcheck204 ], [ %.pre141, %.preheader100.i ], [ %vector.recur.extract, %middle.block224 ]
  %.ph355 = phi i16 [ %.pre140, %vector.scevcheck204 ], [ %.pre140, %.preheader100.i ], [ %vector.recur.extract225, %middle.block224 ]
  %.ph356 = phi i16 [ %.pre139, %vector.scevcheck204 ], [ %.pre139, %.preheader100.i ], [ %vector.recur.extract226, %middle.block224 ]
  %.ph357 = phi i16 [ %.pre, %vector.scevcheck204 ], [ %.pre, %.preheader100.i ], [ %vector.recur.extract227, %middle.block224 ]
  %indvars.iv163.i.ph = phi i64 [ 1, %vector.scevcheck204 ], [ 1, %.preheader100.i ], [ %i.gg, %middle.block224 ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %i.qm = phi i16 [ %i.rx, %.preheader.i ], [ %.ph354, %.preheader.i.preheader ] ; 2 uses
  %i.qn = phi i16 [ %i.qm, %.preheader.i ], [ %.ph355, %.preheader.i.preheader ] ; 2 uses
  %i.qo = phi i16 [ %i.qv, %.preheader.i ], [ %.ph356, %.preheader.i.preheader ] ; 2 uses
  %i.qp = phi i16 [ %i.qo, %.preheader.i ], [ %.ph357, %.preheader.i.preheader ]
  %indvars.iv163.i = phi i64 [ %indvars.iv.next164.i, %.preheader.i ], [ %indvars.iv163.i.ph, %.preheader.i.preheader ] ; 3 uses
  %i.qq = uitofp i16 %i.qp to double              ; 2 uses
  %i.qr = zext i16 %i.qo to i32
  %i.qs = shl nuw nsw i32 %i.qr, 1
  %i.qt = uitofp nneg i32 %i.qs to double
  %i.qu = fadd nsz double %i.qq, %i.qt
  %indvars.iv.next164.i = add nuw nsw i64 %indvars.iv163.i, 1 ; 5 uses
  %gep231.i = getelementptr [2 x i8], ptr %invariant.gep226.i, i64 %indvars.iv.next164.i
  %i.qv = load i16, ptr %gep231.i, align 2, !tbaa !55 ; 3 uses
  %i.qw = zext i16 %i.qv to i32
  %i.qx = sub nsw i32 0, %i.qw
  %i.qy = sitofp nsz i32 %i.qx to double
  %i.qz = fadd nsz double %i.qq, %i.qy
  %i.ra = uitofp i16 %i.qv to double
  %i.rb = fadd nsz double %i.qu, %i.ra
  %i.rc = getelementptr [2 x i8], ptr %invariant.gep232.i, i64 %indvars.iv163.i
  %gep233.i = getelementptr i8, ptr %i.rc, i64 -2
  %i.rd = load i16, ptr %gep233.i, align 2, !tbaa !55
  %i.re = zext i16 %i.rd to i32
  %i.rf = shl nuw nsw i32 %i.re, 1
  %i.rg = uitofp nneg i32 %i.rf to double
  %i.rh = fadd nsz double %i.qz, %i.rg
  %gep235.i = getelementptr [2 x i8], ptr %invariant.gep232.i, i64 %indvars.iv.next164.i
  %i.ri = load i16, ptr %gep235.i, align 2, !tbaa !55
  %i.rj = zext i16 %i.ri to i32
  %i.rk = mul nsw i32 %i.rj, -2
  %i.rl = sitofp nsz i32 %i.rk to double
  %i.rm = fadd nsz double %i.rh, %i.rl
  %i.rn = zext i16 %i.qn to i32
  %i.ro = uitofp i16 %i.qn to double
  %i.rp = fadd nsz double %i.rm, %i.ro
  %i.rq = sub nsw i32 0, %i.rn
  %i.rr = sitofp nsz i32 %i.rq to double
  %i.rs = fadd nsz double %i.rb, %i.rr
  %i.rt = zext i16 %i.qm to i32
  %i.ru = mul nsw i32 %i.rt, -2
  %i.rv = sitofp nsz i32 %i.ru to double
  %i.rw = fadd nsz double %i.rs, %i.rv
  %gep241.i = getelementptr [2 x i8], ptr %invariant.gep236.i, i64 %indvars.iv.next164.i
  %i.rx = load i16, ptr %gep241.i, align 2, !tbaa !55 ; 2 uses
  %i.ry = zext i16 %i.rx to i32
  %i.rz = sub nsw i32 0, %i.ry
  %i.sa = sitofp nsz i32 %i.rz to double          ; 2 uses
  %i.sb = fadd nsz double %i.rp, %i.sa            ; 2 uses
  %i.sc = fadd nsz double %i.rw, %i.sa            ; 2 uses
  %i.sd = fmul nsz double %i.sc, %i.sc
end_hunk_0
begin_hunk_1_@filter_frame:bb.a
  %i.ug = getelementptr i8, ptr %invariant.gep204.i, i64 %i.sz
  %wide.load202 = load <4 x i8>, ptr %i.ug, align 1, !tbaa !51, !alias.scope !71, !noalias !67
  %i.uh = zext <4 x i8> %wide.load202 to <4 x i32>
  %i.ui = mul nsw <4 x i32> %i.uh, splat (i32 -2)
  %i.uj = sitofp nsz <4 x i32> %i.ui to <4 x double>
  %i.uk = fadd nsz <4 x double> %i.uf, %i.uj
  %i.ul = getelementptr i8, ptr %invariant.gep204.i, i64 %i.th
  %wide.load203 = load <4 x i8>, ptr %i.ul, align 1, !tbaa !51, !alias.scope !71, !noalias !67
  %i.um = zext <4 x i8> %wide.load203 to <4 x i32>
  %i.un = sub nsw <4 x i32> zeroinitializer, %i.um
  %i.uo = sitofp nsz <4 x i32> %i.un to <4 x double> ; 2 uses
  %i.up = fadd nsz <4 x double> %i.uc, %i.uo      ; 2 uses
  %i.uq = fadd nsz <4 x double> %i.uk, %i.uo      ; 2 uses
  %i.ur = fmul nsz <4 x double> %i.uq, %i.uq
  %i.us = tail call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.up, <4 x double> %i.up, <4 x double> %i.ur)
  %i.ut = tail call nsz <4 x double> @llvm.sqrt.v4f64(<4 x double> %i.us)
  %i.uu = fptrunc nsz <4 x double> %i.ut to <4 x float>
  %i.uv = trunc nuw nsw i64 %i.sz to i32
  %i.uw = add i32 %invariant.op.i, %i.uv
  %i.ux = sext i32 %i.uw to i64
  %i.uy = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.ux
  store <4 x float> %i.uu, ptr %i.uy, align 4, !tbaa !20, !alias.scope !67
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.uz = icmp eq i64 %index.next, %n.vec
  br i1 %i.uz, label %middle.block, label %vector.body, !llvm.loop !73

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.split.i, label %.preheader102.i.preheader

.preheader102.i.preheader:                        ; preds = %vector.memcheck, %vector.scevcheck, %.preheader103.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %vector.scevcheck ], [ 1, %.preheader103.i ], [ %i.bu, %middle.block ]
  br label %.preheader102.i

.preheader102.i:                                  ; preds = %.preheader102.i.preheader, %.preheader102.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.preheader102.i ], [ %indvars.iv.i.ph, %.preheader102.i.preheader ] ; 5 uses
  %i.va = add nsw i64 %indvars.iv.i, -1           ; 3 uses
  %gep.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.va
  %i.vb = load i8, ptr %gep.i, align 1, !tbaa !51
  %i.vc = uitofp i8 %i.vb to double               ; 2 uses
  %gep197.i = getelementptr i8, ptr %invariant.gep.i, i64 %indvars.iv.i
  %i.vd = load i8, ptr %gep197.i, align 1, !tbaa !51
  %i.ve = zext i8 %i.vd to i32
  %i.vf = shl nuw nsw i32 %i.ve, 1
  %i.vg = uitofp nneg i32 %i.vf to double
  %i.vh = fadd nsz double %i.vc, %i.vg
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 5 uses
  %gep199.i = getelementptr i8, ptr %invariant.gep.i, i64 %indvars.iv.next.i
  %i.vi = load i8, ptr %gep199.i, align 1, !tbaa !51 ; 2 uses
  %i.vj = zext i8 %i.vi to i32
  %i.vk = sub nsw i32 0, %i.vj
  %i.vl = sitofp nsz i32 %i.vk to double
  %i.vm = fadd nsz double %i.vc, %i.vl
  %i.vn = uitofp i8 %i.vi to double
  %i.vo = fadd nsz double %i.vh, %i.vn
  %gep201.i = getelementptr i8, ptr %invariant.gep200.i, i64 %i.va
  %i.vp = load i8, ptr %gep201.i, align 1, !tbaa !51
  %i.vq = zext i8 %i.vp to i32
  %i.vr = shl nuw nsw i32 %i.vq, 1
  %i.vs = uitofp nneg i32 %i.vr to double
  %i.vt = fadd nsz double %i.vm, %i.vs
  %gep203.i = getelementptr i8, ptr %invariant.gep200.i, i64 %indvars.iv.next.i
  %i.vu = load i8, ptr %gep203.i, align 1, !tbaa !51
  %i.vv = zext i8 %i.vu to i32
  %i.vw = mul nsw i32 %i.vv, -2
  %i.vx = sitofp nsz i32 %i.vw to double
  %i.vy = fadd nsz double %i.vt, %i.vx
  %gep205.i = getelementptr i8, ptr %invariant.gep204.i, i64 %i.va
  %i.vz = load i8, ptr %gep205.i, align 1, !tbaa !51 ; 2 uses
  %i.wa = zext i8 %i.vz to i32
  %i.wb = uitofp i8 %i.vz to double
  %i.wc = fadd nsz double %i.vy, %i.wb
  %i.wd = sub nsw i32 0, %i.wa
  %i.we = sitofp nsz i32 %i.wd to double
  %i.wf = fadd nsz double %i.vo, %i.we
  %gep207.i = getelementptr i8, ptr %invariant.gep204.i, i64 %indvars.iv.i
  %i.wg = load i8, ptr %gep207.i, align 1, !tbaa !51
  %i.wh = zext i8 %i.wg to i32
  %i.wi = mul nsw i32 %i.wh, -2
  %i.wj = sitofp nsz i32 %i.wi to double
  %i.wk = fadd nsz double %i.wf, %i.wj
  %gep209.i = getelementptr i8, ptr %invariant.gep204.i, i64 %indvars.iv.next.i
  %i.wl = load i8, ptr %gep209.i, align 1, !tbaa !51
  %i.wm = zext i8 %i.wl to i32
  %i.wn = sub nsw i32 0, %i.wm
  %i.wo = sitofp nsz i32 %i.wn to double          ; 2 uses
  %i.wp = fadd nsz double %i.wc, %i.wo            ; 2 uses
  %i.wq = fadd nsz double %i.wk, %i.wo            ; 2 uses
  %i.wr = fmul nsz double %i.wq, %i.wq
  %i.ws = tail call nsz double @llvm.fmuladd.f64(double %i.wp, double %i.wp, double %i.wr)
  %i.wt = tail call nsz double @llvm.sqrt.f64(double %i.ws)
  %i.wu = fptrunc nsz double %i.wt to float
  %i.wv = trunc nuw nsw i64 %indvars.iv.i to i32
  %.reass.i = add i32 %invariant.op.i, %i.wv
  %i.ww = sext i32 %.reass.i to i64
  %i.wx = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.ww
  store float %i.wu, ptr %i.wx, align 4, !tbaa !20
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count152.i
  br i1 %exitcond.not.i, label %._crit_edge.split.i, label %.preheader102.i, !llvm.loop !74

._crit_edge.split.i:                              ; preds = %.preheader102.i, %middle.block
  %exitcond144.not.i = icmp eq i64 %i.ss, %wide.trip.count157.i
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond144.not.i, label %convolve_sobel.exit, label %.preheader103.i, !llvm.loop !54

convolve_sobel.exit.thread:                       ; preds = %.preheader101.i
  %i.wy = getelementptr inbounds nuw i8, ptr %i.f, i64 72 ; 3 uses
  %i.wz = load ptr, ptr %i.wy, align 8, !tbaa !49
  %i.xa = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.xb = load ptr, ptr %i.xa, align 8, !tbaa !50
  %i.xc = icmp sgt i32 %i.ac, 0
  br i1 %i.xc, label %.preheader.lr.ph.i, label %calculate_motion.exit

convolve_sobel.exit.thread93:                     ; preds = %.preheader104.i
  %i.xd = getelementptr inbounds nuw i8, ptr %i.f, i64 72 ; 3 uses
  %i.xe = load ptr, ptr %i.xd, align 8, !tbaa !49
  %i.xf = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.xg = load ptr, ptr %i.xf, align 8, !tbaa !50
  %i.xh = icmp sgt i32 %i.ac, 0
  br i1 %i.xh, label %.preheader74.lr.ph.i, label %calculate_motion.exit

convolve_sobel.exit:                              ; preds = %._crit_edge.split.i, %._crit_edge.split.us.us.i, %._crit_edge.split124.i, %._crit_edge.split124.us.us.i
  %i.xi = getelementptr inbounds nuw i8, ptr %i.f, i64 72 ; 5 uses
  %i.xj = load ptr, ptr %i.xi, align 8, !tbaa !49 ; 2 uses
  %i.xk = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.xl = load ptr, ptr %i.xk, align 8, !tbaa !50 ; 2 uses
  %i.xm = icmp sgt i32 %i.ac, 0                   ; 2 uses
  br i1 %i.aa, label %bb.d, label %bb.e

bb.d:                                             ; preds = %convolve_sobel.exit
  br i1 %i.xm, label %.preheader.lr.ph.i, label %calculate_motion.exit

.preheader.lr.ph.i:                               ; preds = %convolve_sobel.exit.thread.thread, %convolve_sobel.exit.thread, %bb.d
  %i.xn = phi ptr [ %i.wy, %convolve_sobel.exit.thread ], [ %i.xi, %bb.d ], [ %i.fw, %convolve_sobel.exit.thread.thread ] ; 5 uses
  %i.xo = phi ptr [ %i.wz, %convolve_sobel.exit.thread ], [ %i.xj, %bb.d ], [ %i.fx, %convolve_sobel.exit.thread.thread ] ; 12 uses
  %i.xp = phi ptr [ %i.xb, %convolve_sobel.exit.thread ], [ %i.xl, %bb.d ], [ %i.fz, %convolve_sobel.exit.thread.thread ] ; 17 uses
  %i.xq = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.xr = load i32, ptr %i.xq, align 4, !tbaa !48 ; 6 uses
  %i.xs = icmp sgt i32 %i.xr, 0
  br i1 %i.xs, label %.preheader.lr.ph.split.i, label %calculate_motion.exit

.preheader.lr.ph.split.i:                         ; preds = %.preheader.lr.ph.i
  %.not73.i = icmp eq i32 %.0.in.i, 0
  %i.xt = icmp ugt i64 %i.p, 1                    ; 2 uses
  %i.xu = sext i32 %i.x to i64                    ; 5 uses
  %i.xv = zext nneg i32 %i.xr to i64              ; 22 uses
  %wide.trip.count133.i = zext i32 %i.ac to i64   ; 6 uses
  %i.xw = mul nuw nsw i64 %wide.trip.count133.i, %i.xv
  %i.xx = shl nuw i64 %i.xw, 1
  %scevgep320 = getelementptr i8, ptr %i.xp, i64 %i.xx ; 4 uses
  %i.xy = add nuw i64 %wide.trip.count133.i, 9223372036854775807
  %i.xz = mul i64 %i.xy, %i.xu
  %i.ya = add i64 %i.xz, %i.xv
  %i.yb = shl i64 %i.ya, 1
  %scevgep321 = getelementptr i8, ptr %i.q, i64 %i.yb ; 4 uses
  br i1 %.not73.i, label %.preheader.lr.ph.split.split.us.i, label %.preheader.lr.ph.split.split.i

.preheader.lr.ph.split.split.us.i:                ; preds = %.preheader.lr.ph.split.i
  br i1 %i.xt, label %.preheader.us.us.i52.preheader, label %.preheader.us.i.preheader

.preheader.us.i.preheader:                        ; preds = %.preheader.lr.ph.split.split.us.i
  %min.iters.check309 = icmp ult i32 %i.xr, 4
  %bound0304 = icmp ult ptr %i.xp, %scevgep321
  %bound1305 = icmp ult ptr %i.q, %scevgep320
  %found.conflict306 = and i1 %bound0304, %bound1305
  %stride.check307 = icmp slt i32 %i.x, 0
  %i.yc = or i1 %found.conflict306, %stride.check307
  %n.vec311 = and i64 %i.xv, 2147483644           ; 3 uses
  %cmp.n317 = icmp eq i64 %n.vec311, %i.xv
  br label %.preheader.us.i

.preheader.us.us.i52.preheader:                   ; preds = %.preheader.lr.ph.split.split.us.i
  %min.iters.check327 = icmp ult i32 %i.xr, 4
  %bound0322 = icmp ult ptr %i.xp, %scevgep321
  %bound1323 = icmp ult ptr %i.q, %scevgep320
  %found.conflict324 = and i1 %bound0322, %bound1323
  %stride.check325 = icmp slt i32 %i.x, 0
  %i.yd = or i1 %found.conflict324, %stride.check325
  %n.vec329 = and i64 %i.xv, 2147483644           ; 3 uses
  %cmp.n336 = icmp eq i64 %n.vec329, %i.xv
  br label %.preheader.us.us.i52

.preheader.us.us.i52:                             ; preds = %.preheader.us.us.i52.preheader, %._crit_edge80.split.us.us.split.us.us.i
  %indvars.iv130.i = phi i64 [ %indvars.iv.next131.i, %._crit_edge80.split.us.us.split.us.us.i ], [ 0, %.preheader.us.us.i52.preheader ] ; 3 uses
  %i.ye = mul nsw i64 %indvars.iv130.i, %i.xu
  %i.yf = mul nuw nsw i64 %indvars.iv130.i, %i.xv ; 2 uses
  %invariant.gep148.i = getelementptr [2 x i8], ptr %i.q, i64 %i.ye ; 2 uses
  %brmerge = select i1 %min.iters.check327, i1 true, i1 %i.yd
  br i1 %brmerge, label %scalar.ph326.preheader, label %vector.body330

vector.body330:                                   ; preds = %.preheader.us.us.i52, %vector.body330
  %index331 = phi i64 [ %index.next334, %vector.body330 ], [ 0, %.preheader.us.us.i52 ] ; 3 uses
  %i.yg = add nuw nsw i64 %index331, %i.yf        ; 2 uses
  %i.yh = getelementptr [2 x i8], ptr %invariant.gep148.i, i64 %index331
  %wide.load332 = load <4 x i16>, ptr %i.yh, align 2, !tbaa !55, !alias.scope !75
  %i.yi = zext <4 x i16> %wide.load332 to <4 x i32>
  %i.yj = add nsw <4 x i32> %i.yi, splat (i32 -64)
  %i.yk = sitofp nsz <4 x i32> %i.yj to <4 x float>
  %i.yl = tail call nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.yk, <4 x float> zeroinitializer)
  %i.ym = tail call nsz <4 x float> @llvm.minnum.v4f32(<4 x float> %i.yl, <4 x float> splat (float 8.760000e+02))
  %i.yn = fptosi <4 x float> %i.ym to <4 x i32>
  %i.yo = mul nsw <4 x i32> %i.yn, splat (i32 1023)
  %i.yp = sdiv <4 x i32> %i.yo, splat (i32 876)   ; 2 uses
  %i.yq = trunc <4 x i32> %i.yp to <4 x i16>
  %i.yr = and <4 x i32> %i.yp, splat (i32 65535)
  %i.ys = getelementptr inbounds nuw [2 x i8], ptr %i.xp, i64 %i.yg ; 2 uses
  %wide.load333 = load <4 x i16>, ptr %i.ys, align 2, !tbaa !55, !alias.scope !78, !noalias !75
  %i.yt = zext <4 x i16> %wide.load333 to <4 x i32>
  %i.yu = sub nsw <4 x i32> %i.yr, %i.yt
  %i.yv = sitofp nsz <4 x i32> %i.yu to <4 x float>
  store <4 x i16> %i.yq, ptr %i.ys, align 2, !tbaa !55, !alias.scope !78, !noalias !75
  %i.yw = getelementptr inbounds nuw [4 x i8], ptr %i.xo, i64 %i.yg
  store <4 x float> %i.yv, ptr %i.yw, align 4, !tbaa !20
  %index.next334 = add nuw i64 %index331, 4       ; 2 uses
  %i.yx = icmp eq i64 %index.next334, %n.vec329
  br i1 %i.yx, label %middle.block335, label %vector.body330, !llvm.loop !80

middle.block335:                                  ; preds = %vector.body330
  br i1 %cmp.n336, label %._crit_edge80.split.us.us.split.us.us.i, label %scalar.ph326.preheader

scalar.ph326.preheader:                           ; preds = %.preheader.us.us.i52, %middle.block335
  %indvars.iv125.i.ph = phi i64 [ %n.vec329, %middle.block335 ], [ 0, %.preheader.us.us.i52 ]
  br label %scalar.ph326

scalar.ph326:                                     ; preds = %scalar.ph326.preheader, %scalar.ph326
  %indvars.iv125.i = phi i64 [ %indvars.iv.next126.i, %scalar.ph326 ], [ %indvars.iv125.i.ph, %scalar.ph326.preheader ] ; 3 uses
  %i.yy = add nuw nsw i64 %indvars.iv125.i, %i.yf ; 2 uses
  %gep149.i = getelementptr [2 x i8], ptr %invariant.gep148.i, i64 %indvars.iv125.i
  %i.yz = load i16, ptr %gep149.i, align 2, !tbaa !55
  %i.za = zext i16 %i.yz to i32
  %i.zb = add nsw i32 %i.za, -64
  %i.zc = sitofp nsz i32 %i.zb to float
  %i.zd = tail call nsz float @llvm.maxnum.f32(float %i.zc, float 0.000000e+00)
  %i.ze = tail call nsz float @llvm.minnum.f32(float %i.zd, float 8.760000e+02)
  %i.zf = fptosi float %i.ze to i32
  %i.zg = mul nsw i32 %i.zf, 1023
  %i.zh = sdiv i32 %i.zg, 876                     ; 2 uses
  %i.zi = trunc i32 %i.zh to i16
  %i.zj = and i32 %i.zh, 65535
  %i.zk = getelementptr inbounds nuw [2 x i8], ptr %i.xp, i64 %i.yy ; 2 uses
  %i.zl = load i16, ptr %i.zk, align 2, !tbaa !55
  %i.zm = zext i16 %i.zl to i32
  %i.zn = sub nsw i32 %i.zj, %i.zm
  %i.zo = sitofp nsz i32 %i.zn to float
  store i16 %i.zi, ptr %i.zk, align 2, !tbaa !55
  %i.zp = getelementptr inbounds nuw [4 x i8], ptr %i.xo, i64 %i.yy
  store float %i.zo, ptr %i.zp, align 4, !tbaa !20
  %indvars.iv.next126.i = add nuw nsw i64 %indvars.iv125.i, 1 ; 2 uses
  %exitcond129.not.i = icmp eq i64 %indvars.iv.next126.i, %i.xv
  br i1 %exitcond129.not.i, label %._crit_edge80.split.us.us.split.us.us.i, label %scalar.ph326, !llvm.loop !81

._crit_edge80.split.us.us.split.us.us.i:          ; preds = %scalar.ph326, %middle.block335
  %indvars.iv.next131.i = add nuw nsw i64 %indvars.iv130.i, 1 ; 2 uses
  %exitcond134.not.i = icmp eq i64 %indvars.iv.next131.i, %wide.trip.count133.i
  br i1 %exitcond134.not.i, label %calculate_motion.exit, label %.preheader.us.us.i52, !llvm.loop !82

.preheader.us.i:                                  ; preds = %.preheader.us.i.preheader, %._crit_edge80.split.us.us.split.i
  %indvars.iv120.i = phi i64 [ %indvars.iv.next121.i, %._crit_edge80.split.us.us.split.i ], [ 0, %.preheader.us.i.preheader ] ; 3 uses
  %i.zq = mul nsw i64 %indvars.iv120.i, %i.xu
  %i.zr = mul nuw nsw i64 %indvars.iv120.i, %i.xv ; 2 uses
  %invariant.gep146.i = getelementptr [2 x i8], ptr %i.q, i64 %i.zq ; 2 uses
  %brmerge398 = select i1 %min.iters.check309, i1 true, i1 %i.yc
  br i1 %brmerge398, label %scalar.ph308.preheader, label %vector.body312

vector.body312:                                   ; preds = %.preheader.us.i, %vector.body312
  %index313 = phi i64 [ %index.next315, %vector.body312 ], [ 0, %.preheader.us.i ] ; 3 uses
  %i.zs = add nuw nsw i64 %index313, %i.zr        ; 2 uses
  %i.zt = getelementptr [2 x i8], ptr %invariant.gep146.i, i64 %index313
  %wide.load314 = load <4 x i16>, ptr %i.zt, align 2, !tbaa !55, !alias.scope !83
  %i.zu = zext <4 x i16> %wide.load314 to <4 x i32>
  %i.zv = add nsw <4 x i32> %i.zu, splat (i32 -64)
  %i.zw = sitofp nsz <4 x i32> %i.zv to <4 x float>
  %i.zx = tail call nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.zw, <4 x float> zeroinitializer)
  %i.zy = tail call nsz <4 x float> @llvm.minnum.v4f32(<4 x float> %i.zx, <4 x float> splat (float 8.760000e+02))
  %i.zz = fptosi <4 x float> %i.zy to <4 x i32>
  %i.aaa = mul nsw <4 x i32> %i.zz, splat (i32 1023)
  %i.aab = sdiv <4 x i32> %i.aaa, splat (i32 876)
  %i.aac = trunc <4 x i32> %i.aab to <4 x i16>
  %i.aad = getelementptr inbounds nuw [2 x i8], ptr %i.xp, i64 %i.zs
  store <4 x i16> %i.aac, ptr %i.aad, align 2, !tbaa !55, !alias.scope !86, !noalias !83
  %i.aae = getelementptr inbounds nuw [4 x i8], ptr %i.xo, i64 %i.zs
  store <4 x float> zeroinitializer, ptr %i.aae, align 4, !tbaa !20
  %index.next315 = add nuw i64 %index313, 4       ; 2 uses
  %i.aaf = icmp eq i64 %index.next315, %n.vec311
  br i1 %i.aaf, label %middle.block316, label %vector.body312, !llvm.loop !88

middle.block316:                                  ; preds = %vector.body312
  br i1 %cmp.n317, label %._crit_edge80.split.us.us.split.i, label %scalar.ph308.preheader

scalar.ph308.preheader:                           ; preds = %.preheader.us.i, %middle.block316
  %indvars.iv115.i.ph = phi i64 [ %n.vec311, %middle.block316 ], [ 0, %.preheader.us.i ]
  br label %scalar.ph308

scalar.ph308:                                     ; preds = %scalar.ph308.preheader, %scalar.ph308
  %indvars.iv115.i = phi i64 [ %indvars.iv.next116.i, %scalar.ph308 ], [ %indvars.iv115.i.ph, %scalar.ph308.preheader ] ; 3 uses
  %i.aag = add nuw nsw i64 %indvars.iv115.i, %i.zr ; 2 uses
  %gep147.i = getelementptr [2 x i8], ptr %invariant.gep146.i, i64 %indvars.iv115.i
  %i.aah = load i16, ptr %gep147.i, align 2, !tbaa !55
  %i.aai = zext i16 %i.aah to i32
  %i.aaj = add nsw i32 %i.aai, -64
  %i.aak = sitofp nsz i32 %i.aaj to float
  %i.aal = tail call nsz float @llvm.maxnum.f32(float %i.aak, float 0.000000e+00)
  %i.aam = tail call nsz float @llvm.minnum.f32(float %i.aal, float 8.760000e+02)
  %i.aan = fptosi float %i.aam to i32
  %i.aao = mul nsw i32 %i.aan, 1023
  %i.aap = sdiv i32 %i.aao, 876
  %i.aaq = trunc i32 %i.aap to i16
  %i.aar = getelementptr inbounds nuw [2 x i8], ptr %i.xp, i64 %i.aag
  store i16 %i.aaq, ptr %i.aar, align 2, !tbaa !55
  %i.aas = getelementptr inbounds nuw [4 x i8], ptr %i.xo, i64 %i.aag
  store float 0.000000e+00, ptr %i.aas, align 4, !tbaa !20
  %indvars.iv.next116.i = add nuw nsw i64 %indvars.iv115.i, 1 ; 2 uses
  %exitcond119.not.i = icmp eq i64 %indvars.iv.next116.i, %i.xv
  br i1 %exitcond119.not.i, label %._crit_edge80.split.us.us.split.i, label %scalar.ph308, !llvm.loop !89

._crit_edge80.split.us.us.split.i:                ; preds = %scalar.ph308, %middle.block316
  %indvars.iv.next121.i = add nuw nsw i64 %indvars.iv120.i, 1 ; 2 uses
  %exitcond124.not.i = icmp eq i64 %indvars.iv.next121.i, %wide.trip.count133.i
  br i1 %exitcond124.not.i, label %calculate_motion.exit, label %.preheader.us.i, !llvm.loop !82

.preheader.lr.ph.split.split.i:                   ; preds = %.preheader.lr.ph.split.i
  br i1 %i.xt, label %.preheader.us86.i.preheader, label %.preheader.i48.preheader

.preheader.i48.preheader:                         ; preds = %.preheader.lr.ph.split.split.i
  %min.iters.check271 = icmp ult i32 %i.xr, 8
  %bound0266 = icmp ult ptr %i.xp, %scevgep321
  %bound1267 = icmp ult ptr %i.q, %scevgep320
  %found.conflict268 = and i1 %bound0266, %bound1267
  %stride.check269 = icmp slt i32 %i.x, 0
  %i.aat = or i1 %found.conflict268, %stride.check269
  %n.vec273 = and i64 %i.xv, 2147483640           ; 3 uses
  %cmp.n280 = icmp eq i64 %n.vec273, %i.xv
  %xtraiter = and i64 %i.xv, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.aau = add nsw i64 %i.xv, -1
  br label %.preheader.i48

.preheader.us86.i.preheader:                      ; preds = %.preheader.lr.ph.split.split.i
  %min.iters.check290 = icmp ult i32 %i.xr, 4
  %bound0285 = icmp ult ptr %i.xp, %scevgep321
  %bound1286 = icmp ult ptr %i.q, %scevgep320
  %found.conflict287 = and i1 %bound0285, %bound1286
  %stride.check288 = icmp slt i32 %i.x, 0
  %i.aav = or i1 %found.conflict287, %stride.check288
  %n.vec292 = and i64 %i.xv, 2147483644           ; 3 uses
  %cmp.n299 = icmp eq i64 %n.vec292, %i.xv
  %xtraiter361 = and i64 %i.xv, 1
  %lcmp.mod362.not = icmp eq i64 %xtraiter361, 0
  %i.aaw = add nsw i64 %i.xv, -1
  br label %.preheader.us86.i

.preheader.us86.i:                                ; preds = %.preheader.us86.i.preheader, %._crit_edge80.split.split.us.us.i
  %indvars.iv110.i = phi i64 [ %indvars.iv.next111.i, %._crit_edge80.split.split.us.us.i ], [ 0, %.preheader.us86.i.preheader ] ; 3 uses
  %i.aax = mul nsw i64 %indvars.iv110.i, %i.xu
  %i.aay = mul nuw nsw i64 %indvars.iv110.i, %i.xv ; 4 uses
  %invariant.gep144.i = getelementptr [2 x i8], ptr %i.q, i64 %i.aax ; 4 uses
  %brmerge399 = select i1 %min.iters.check290, i1 true, i1 %i.aav
  br i1 %brmerge399, label %scalar.ph289.preheader, label %vector.body293

vector.body293:                                   ; preds = %.preheader.us86.i, %vector.body293
  %index294 = phi i64 [ %index.next297, %vector.body293 ], [ 0, %.preheader.us86.i ] ; 3 uses
  %i.aaz = add nuw nsw i64 %index294, %i.aay      ; 2 uses
  %i.aba = getelementptr [2 x i8], ptr %invariant.gep144.i, i64 %index294
  %wide.load295 = load <4 x i16>, ptr %i.aba, align 2, !tbaa !55, !alias.scope !90 ; 2 uses
  %i.abb = zext <4 x i16> %wide.load295 to <4 x i32>
  %i.abc = getelementptr inbounds nuw [2 x i8], ptr %i.xp, i64 %i.aaz ; 2 uses
  %wide.load296 = load <4 x i16>, ptr %i.abc, align 2, !tbaa !55, !alias.scope !93, !noalias !90
  %i.abd = zext <4 x i16> %wide.load296 to <4 x i32>
  %i.abe = sub nsw <4 x i32> %i.abb, %i.abd
  %i.abf = sitofp nsz <4 x i32> %i.abe to <4 x float>
  store <4 x i16> %wide.load295, ptr %i.abc, align 2, !tbaa !55, !alias.scope !93, !noalias !90
  %i.abg = getelementptr inbounds nuw [4 x i8], ptr %i.xo, i64 %i.aaz
  store <4 x float> %i.abf, ptr %i.abg, align 4, !tbaa !20
  %index.next297 = add nuw i64 %index294, 4       ; 2 uses
  %i.abh = icmp eq i64 %index.next297, %n.vec292
  br i1 %i.abh, label %middle.block298, label %vector.body293, !llvm.loop !95

middle.block298:                                  ; preds = %vector.body293
  br i1 %cmp.n299, label %._crit_edge80.split.split.us.us.i, label %scalar.ph289.preheader

scalar.ph289.preheader:                           ; preds = %.preheader.us86.i, %middle.block298
  %indvars.iv105.i.ph = phi i64 [ %n.vec292, %middle.block298 ], [ 0, %.preheader.us86.i ] ; 5 uses
  br i1 %lcmp.mod362.not, label %scalar.ph289.prol.loopexit, label %scalar.ph289.prol

scalar.ph289.prol:                                ; preds = %scalar.ph289.preheader
  %i.abi = add nuw nsw i64 %indvars.iv105.i.ph, %i.aay ; 2 uses
  %gep145.i.prol = getelementptr [2 x i8], ptr %invariant.gep144.i, i64 %indvars.iv105.i.ph
  %i.abj = load i16, ptr %gep145.i.prol, align 2, !tbaa !55 ; 2 uses
  %i.abk = zext i16 %i.abj to i32
  %i.abl = getelementptr inbounds nuw [2 x i8], ptr %i.xp, i64 %i.abi ; 2 uses
  %i.abm = load i16, ptr %i.abl, align 2, !tbaa !55
  %i.abn = zext i16 %i.abm to i32
  %i.abo = sub nsw i32 %i.abk, %i.abn
  %i.abp = sitofp nsz i32 %i.abo to float
  store i16 %i.abj, ptr %i.abl, align 2, !tbaa !55
  %i.abq = getelementptr inbounds nuw [4 x i8], ptr %i.xo, i64 %i.abi
  store float %i.abp, ptr %i.abq, align 4, !tbaa !20
  %indvars.iv.next106.i.prol = or disjoint i64 %indvars.iv105.i.ph, 1
  br label %scalar.ph289.prol.loopexit

scalar.ph289.prol.loopexit:                       ; preds = %scalar.ph289.prol, %scalar.ph289.preheader
  %indvars.iv105.i.unr = phi i64 [ %indvars.iv105.i.ph, %scalar.ph289.preheader ], [ %indvars.iv.next106.i.prol, %scalar.ph289.prol ]
  %i.abr = icmp eq i64 %indvars.iv105.i.ph, %i.aaw
  br i1 %i.abr, label %._crit_edge80.split.split.us.us.i, label %scalar.ph289

scalar.ph289:                                     ; preds = %scalar.ph289.prol.loopexit, %scalar.ph289
  %indvars.iv105.i = phi i64 [ %indvars.iv.next106.i.1, %scalar.ph289 ], [ %indvars.iv105.i.unr, %scalar.ph289.prol.loopexit ] ; 4 uses
  %i.abs = add nuw nsw i64 %indvars.iv105.i, %i.aay ; 2 uses
  %gep145.i = getelementptr [2 x i8], ptr %invariant.gep144.i, i64 %indvars.iv105.i
  %i.abt = load i16, ptr %gep145.i, align 2, !tbaa !55 ; 2 uses
  %i.abu = zext i16 %i.abt to i32
  %i.abv = getelementptr inbounds nuw [2 x i8], ptr %i.xp, i64 %i.abs ; 2 uses
  %i.abw = load i16, ptr %i.abv, align 2, !tbaa !55
  %i.abx = zext i16 %i.abw to i32
  %i.aby = sub nsw i32 %i.abu, %i.abx
  %i.abz = sitofp nsz i32 %i.aby to float
  store i16 %i.abt, ptr %i.abv, align 2, !tbaa !55
  %i.aca = getelementptr inbounds nuw [4 x i8], ptr %i.xo, i64 %i.abs
  store float %i.abz, ptr %i.aca, align 4, !tbaa !20
  %indvars.iv.next106.i = add nuw nsw i64 %indvars.iv105.i, 1 ; 2 uses
  %i.acb = add nuw nsw i64 %indvars.iv.next106.i, %i.aay ; 2 uses
  %gep145.i.1 = getelementptr [2 x i8], ptr %invariant.gep144.i, i64 %indvars.iv.next106.i
  %i.acc = load i16, ptr %gep145.i.1, align 2, !tbaa !55 ; 2 uses
  %i.acd = zext i16 %i.acc to i32
  %i.ace = getelementptr inbounds nuw [2 x i8], ptr %i.xp, i64 %i.acb ; 2 uses
  %i.acf = load i16, ptr %i.ace, align 2, !tbaa !55
  %i.acg = zext i16 %i.acf to i32
  %i.ach = sub nsw i32 %i.acd, %i.acg
  %i.aci = sitofp nsz i32 %i.ach to float
  store i16 %i.acc, ptr %i.ace, align 2, !tbaa !55
  %i.acj = getelementptr inbounds nuw [4 x i8], ptr %i.xo, i64 %i.acb
  store float %i.aci, ptr %i.acj, align 4, !tbaa !20
  %indvars.iv.next106.i.1 = add nuw nsw i64 %indvars.iv105.i, 2 ; 2 uses
  %exitcond109.not.i.1 = icmp eq i64 %indvars.iv.next106.i.1, %i.xv
  br i1 %exitcond109.not.i.1, label %._crit_edge80.split.split.us.us.i, label %scalar.ph289, !llvm.loop !96

._crit_edge80.split.split.us.us.i:                ; preds = %scalar.ph289.prol.loopexit, %scalar.ph289, %middle.block298
  %indvars.iv.next111.i = add nuw nsw i64 %indvars.iv110.i, 1 ; 2 uses
  %exitcond114.not.i = icmp eq i64 %indvars.iv.next111.i, %wide.trip.count133.i
  br i1 %exitcond114.not.i, label %calculate_motion.exit, label %.preheader.us86.i, !llvm.loop !82

.preheader.i48:                                   ; preds = %.preheader.i48.preheader, %._crit_edge80.split.split.i
  %indvars.iv100.i = phi i64 [ %indvars.iv.next101.i, %._crit_edge80.split.split.i ], [ 0, %.preheader.i48.preheader ] ; 3 uses
  %i.ack = mul nsw i64 %indvars.iv100.i, %i.xu
  %i.acl = mul nuw nsw i64 %indvars.iv100.i, %i.xv ; 4 uses
  %invariant.gep.i49 = getelementptr [2 x i8], ptr %i.q, i64 %i.ack ; 4 uses
  %brmerge400 = select i1 %min.iters.check271, i1 true, i1 %i.aat
  br i1 %brmerge400, label %scalar.ph270.preheader, label %vector.body274

vector.body274:                                   ; preds = %.preheader.i48, %vector.body274
  %index275 = phi i64 [ %index.next278, %vector.body274 ], [ 0, %.preheader.i48 ] ; 3 uses
  %i.acm = add nuw nsw i64 %index275, %i.acl      ; 2 uses
  %i.acn = getelementptr [2 x i8], ptr %invariant.gep.i49, i64 %index275 ; 2 uses
  %i.aco = getelementptr i8, ptr %i.acn, i64 8
  %wide.load276 = load <4 x i16>, ptr %i.acn, align 2, !tbaa !55, !alias.scope !97
  %wide.load277 = load <4 x i16>, ptr %i.aco, align 2, !tbaa !55, !alias.scope !97
  %i.acp = getelementptr inbounds nuw [2 x i8], ptr %i.xp, i64 %i.acm ; 2 uses
  %i.acq = getelementptr inbounds nuw i8, ptr %i.acp, i64 8
  store <4 x i16> %wide.load276, ptr %i.acp, align 2, !tbaa !55, !alias.scope !100, !noalias !97
  store <4 x i16> %wide.load277, ptr %i.acq, align 2, !tbaa !55, !alias.scope !100, !noalias !97
  %i.acr = getelementptr inbounds nuw [4 x i8], ptr %i.xo, i64 %i.acm ; 2 uses
  %i.acs = getelementptr inbounds nuw i8, ptr %i.acr, i64 16
  store <4 x float> zeroinitializer, ptr %i.acr, align 4, !tbaa !20
  store <4 x float> zeroinitializer, ptr %i.acs, align 4, !tbaa !20
  %index.next278 = add nuw i64 %index275, 8       ; 2 uses
  %i.act = icmp eq i64 %index.next278, %n.vec273
  br i1 %i.act, label %middle.block279, label %vector.body274, !llvm.loop !102

middle.block279:                                  ; preds = %vector.body274
  br i1 %cmp.n280, label %._crit_edge80.split.split.i, label %scalar.ph270.preheader

scalar.ph270.preheader:                           ; preds = %.preheader.i48, %middle.block279
  %indvars.iv97.i.ph = phi i64 [ %n.vec273, %middle.block279 ], [ 0, %.preheader.i48 ] ; 5 uses
  br i1 %lcmp.mod.not, label %scalar.ph270.prol.loopexit, label %scalar.ph270.prol

scalar.ph270.prol:                                ; preds = %scalar.ph270.preheader
  %i.acu = add nuw nsw i64 %indvars.iv97.i.ph, %i.acl ; 2 uses
  %gep.i50.prol = getelementptr [2 x i8], ptr %invariant.gep.i49, i64 %indvars.iv97.i.ph
  %i.acv = load i16, ptr %gep.i50.prol, align 2, !tbaa !55
  %i.acw = getelementptr inbounds nuw [2 x i8], ptr %i.xp, i64 %i.acu
  store i16 %i.acv, ptr %i.acw, align 2, !tbaa !55
  %i.acx = getelementptr inbounds nuw [4 x i8], ptr %i.xo, i64 %i.acu
  store float 0.000000e+00, ptr %i.acx, align 4, !tbaa !20
  %indvars.iv.next98.i.prol = or disjoint i64 %indvars.iv97.i.ph, 1
  br label %scalar.ph270.prol.loopexit

scalar.ph270.prol.loopexit:                       ; preds = %scalar.ph270.prol, %scalar.ph270.preheader
  %indvars.iv97.i.unr = phi i64 [ %indvars.iv97.i.ph, %scalar.ph270.preheader ], [ %indvars.iv.next98.i.prol, %scalar.ph270.prol ]
  %i.acy = icmp eq i64 %indvars.iv97.i.ph, %i.aau
  br i1 %i.acy, label %._crit_edge80.split.split.i, label %scalar.ph270

._crit_edge80.split.split.i:                      ; preds = %scalar.ph270.prol.loopexit, %scalar.ph270, %middle.block279
  %indvars.iv.next101.i = add nuw nsw i64 %indvars.iv100.i, 1 ; 2 uses
  %exitcond104.not.i = icmp eq i64 %indvars.iv.next101.i, %wide.trip.count133.i
  br i1 %exitcond104.not.i, label %calculate_motion.exit, label %.preheader.i48, !llvm.loop !82

scalar.ph270:                                     ; preds = %scalar.ph270.prol.loopexit, %scalar.ph270
  %indvars.iv97.i = phi i64 [ %indvars.iv.next98.i.1, %scalar.ph270 ], [ %indvars.iv97.i.unr, %scalar.ph270.prol.loopexit ] ; 4 uses
  %i.acz = add nuw nsw i64 %indvars.iv97.i, %i.acl ; 2 uses
  %gep.i50 = getelementptr [2 x i8], ptr %invariant.gep.i49, i64 %indvars.iv97.i
  %i.ada = load i16, ptr %gep.i50, align 2, !tbaa !55
  %i.adb = getelementptr inbounds nuw [2 x i8], ptr %i.xp, i64 %i.acz
  store i16 %i.ada, ptr %i.adb, align 2, !tbaa !55
  %i.adc = getelementptr inbounds nuw [4 x i8], ptr %i.xo, i64 %i.acz
  store float 0.000000e+00, ptr %i.adc, align 4, !tbaa !20
  %indvars.iv.next98.i = add nuw nsw i64 %indvars.iv97.i, 1 ; 2 uses
end_hunk_1
