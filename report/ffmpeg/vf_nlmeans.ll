Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_nlmeans?download=true
inline.NumInlined: 10
inline.NumDeleted: 6
begin_hunk_0_@filter_frame:bb.a
  %.in39 = select i1 %.not38, ptr %i.u, ptr %i.t
  %i.af = load i32, ptr %.in39, align 4, !tbaa !49 ; 10 uses
  %.in40.v = select i1 %.not38, i64 44, i64 52
  %.in40 = getelementptr inbounds nuw i8, ptr %i.e, i64 %.in40.v
  %i.ag = load i32, ptr %.in40, align 4, !tbaa !49 ; 2 uses
  %.in41.v = select i1 %.not38, i64 60, i64 68
  %.in41 = getelementptr inbounds nuw i8, ptr %i.e, i64 %.in41.v
  %i.ah = load i32, ptr %.in41, align 4, !tbaa !49 ; 4 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !90 ; 4 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !49 ; 3 uses
  %i.am = sext i32 %i.al to i64                   ; 2 uses
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !86  ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !90 ; 15 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !49 ; 3 uses
  %i.at = sext i32 %i.as to i64                   ; 16 uses
  %i.au = load ptr, ptr %i.d, align 8, !tbaa !19  ; 6 uses
  %i.av = add nsw i32 %i.ah, %i.ag                ; 11 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 80 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !50
  %i.ay = sext i32 %i.av to i64                   ; 9 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 96 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !51
  %i.bb = mul nsw i64 %i.ba, %i.ay
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.bb
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.ay
  %i.be = getelementptr inbounds nuw i8, ptr %i.au, i64 104 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !52
  %i.bg = getelementptr inbounds nuw i8, ptr %i.au, i64 120 ; 3 uses
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !53
  %i.bi = mul nsw i32 %i.bh, %i.af
  %i.bj = sext i32 %i.bi to i64
  %i.bk = shl nsw i64 %i.bj, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.bf, i8 0, i64 %i.bk, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.au, i64 112
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !54
  %i.bn = load i32, ptr %i.bg, align 8, !tbaa !53
  %i.bo = mul nsw i32 %i.bn, %i.af
  %i.bp = sext i32 %i.bo to i64
  %i.bq = shl nsw i64 %i.bp, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.bm, i8 0, i64 %i.bq, i1 false)
  %.not80.i = icmp slt i32 %i.ah, 0
  br i1 %.not80.i, label %._crit_edge82.i, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %bb.d
  %i.br = sub nsw i32 0, %i.ah
  %i.bs = getelementptr inbounds nuw i8, ptr %i.au, i64 144
  %i.bt = shl i32 %i.av, 1                        ; 3 uses
  %i.bu = add i32 %i.bt, %i.ae                    ; 4 uses
  %i.bv = add nsw i32 %i.af, -1                   ; 8 uses
  %i.bw = icmp slt i32 %i.bu, 1                   ; 2 uses
  %i.bx = add nsw i32 %i.ae, -1                   ; 8 uses
  %i.by = zext nneg i32 %i.bu to i64              ; 2 uses
  %i.bz = sext i32 %i.bu to i64
  %i.ca = add i32 %i.bt, %i.af
  %i.cb = sext i32 %i.ca to i64
  %i.cc = sext i32 %i.br to i64                   ; 2 uses
  %i.cd = add nuw i32 %i.ah, 1                    ; 2 uses
  %i.ce = insertelement <2 x i32> <i32 poison, i32 0>, i32 %i.ag, i64 0
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.lr.ph.i
  %indvars.iv89.i = phi i64 [ %i.cc, %.preheader.lr.ph.i ], [ %indvars.iv.next90.i, %._crit_edge.i ] ; 7 uses
  %i.cf = mul nsw i64 %indvars.iv89.i, %i.at
  %i.cg = getelementptr inbounds i8, ptr %i.ap, i64 %i.cf
  %i.ch = trunc i64 %indvars.iv89.i to i32        ; 2 uses
  %i.ci = sub i32 0, %i.ch
  %i.cj = call i32 @llvm.smax.i32(i32 %i.ci, i32 0)
  %i.ck = sub i32 %i.af, %i.ch
  %i.cl = call i32 @llvm.smin.i32(i32 %i.af, i32 %i.ck)
  %i.cm = add nsw i64 %indvars.iv89.i, %i.ay      ; 2 uses
  %i.cn = trunc nsw i64 %i.cm to i32              ; 6 uses
  %i.co = call i32 @llvm.smax.i32(i32 %i.av, i32 %i.cn) ; 6 uses
  %i.cp = icmp slt i64 %indvars.iv89.i, 0
  %.pn119.i.i = select i1 %i.cp, i32 %i.cn, i32 %i.av ; 2 uses
  %i.cq = add nsw i32 %.pn119.i.i, %i.af          ; 3 uses
  %i.cr = sub nsw i32 %i.cq, %i.co                ; 2 uses
  %i.cs = icmp slt i32 %i.co, 1
  %i.ct = zext nneg i32 %i.co to i64
  %i.cu = icmp sgt i32 %i.cr, 0                   ; 2 uses
  %i.cv = sext i32 %i.co to i64                   ; 4 uses
  %i.cw = sext i32 %i.cq to i64                   ; 3 uses
  %i.cx = icmp ne i32 %i.cq, %i.co
  %i.cy = sub nsw i32 %i.co, %i.av
  %i.cz = sext i32 %i.cy to i64
  %i.da = mul nsw i64 %i.cz, %i.at
  %i.db = getelementptr inbounds i8, ptr %i.ap, i64 %i.da
  %i.dc = sub nsw i64 %i.cv, %i.cm
  %i.dd = mul nsw i64 %i.dc, %i.at
  %i.de = getelementptr inbounds i8, ptr %i.ap, i64 %i.dd
  %i.df = icmp sle i32 %i.bt, %.pn119.i.i
  %brmerge.i = select i1 %i.cs, i1 true, i1 %i.bw
  %brmerge87.i = or i1 %i.bw, %i.df
  br label %bb.e

._crit_edge82.i:                                  ; preds = %._crit_edge.i, %bb.d
  %i.dg = load i32, ptr %i.bg, align 8, !tbaa !53 ; 3 uses
  %i.dh = sext i32 %i.dg to i64                   ; 3 uses
  %i.di = icmp sgt i32 %i.af, 0
  %i.dj = icmp sgt i32 %i.ae, 0
  %or.cond.i.i = and i1 %i.dj, %i.di
  br i1 %or.cond.i.i, label %.preheader.preheader.i.i, label %nlmeans_plane.exit

.preheader.preheader.i.i:                         ; preds = %._crit_edge82.i
  %i.dk = load <2 x ptr>, ptr %i.be, align 8, !tbaa !91 ; 5 uses
  %wide.trip.count.i.i = zext nneg i32 %i.ae to i64 ; 6 uses
  %i.dl = shl nsw i64 %i.dh, 2
  %i.dm = add nsw i32 %i.af, -1
  %i.dn = zext i32 %i.dm to i64                   ; 3 uses
  %i.do = mul i64 %i.dl, %i.dn
  %i.dp = shl nuw nsw i64 %wide.trip.count.i.i, 2
  %i.dq = add i64 %i.do, %i.dp                    ; 2 uses
  %i.dr = extractelement <2 x ptr> %i.dk, i64 0   ; 2 uses
  %scevgep = getelementptr i8, ptr %i.dr, i64 %i.dq ; 2 uses
  %i.ds = extractelement <2 x ptr> %i.dk, i64 1   ; 2 uses
  %scevgep51 = getelementptr i8, ptr %i.ds, i64 %i.dq ; 2 uses
  %i.dt = mul nsw i64 %i.am, %i.dn
  %i.du = getelementptr i8, ptr %i.aj, i64 %i.dt
  %scevgep52 = getelementptr i8, ptr %i.du, i64 %wide.trip.count.i.i ; 2 uses
  %i.dv = mul nsw i64 %i.at, %i.dn
  %i.dw = getelementptr i8, ptr %i.ap, i64 %i.dv
  %scevgep53 = getelementptr i8, ptr %i.dw, i64 %wide.trip.count.i.i ; 2 uses
  %i.dx = insertelement <4 x i32> poison, i32 %i.al, i64 0
  %i.dy = insertelement <4 x i32> %i.dx, i32 %i.as, i64 1
  %i.dz = shufflevector <4 x i32> %i.dy, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ea = insertelement <4 x i32> poison, i32 %i.dg, i64 0
  %i.eb = shufflevector <4 x i32> %i.ea, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ec = insertelement <2 x ptr> poison, ptr %scevgep52, i64 0
  %i.ed = shufflevector <2 x ptr> %i.ec, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.ee = insertelement <2 x ptr> poison, ptr %i.aj, i64 0
  %i.ef = shufflevector <2 x ptr> %i.ee, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.eg = insertelement <2 x ptr> poison, ptr %scevgep, i64 0
  %i.eh = insertelement <2 x ptr> %i.eg, ptr %scevgep51, i64 1 ; 2 uses
  %i.ei = insertelement <2 x ptr> poison, ptr %scevgep53, i64 0
  %i.ej = shufflevector <2 x ptr> %i.ei, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.ek = insertelement <2 x ptr> poison, ptr %i.ap, i64 0
  %i.el = shufflevector <2 x ptr> %i.ek, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.em = insertelement <2 x ptr> poison, ptr %scevgep51, i64 0
  %i.en = insertelement <2 x ptr> %i.em, ptr %scevgep, i64 1
  %min.iters.check = icmp ult i32 %i.ae, 8
  %i.eo = icmp uge <2 x ptr> %i.dk, %i.en
  %i.ep = bitcast <2 x i1> %i.eo to i2
  %i.eq = icmp eq i2 %i.ep, 0
  %stride.check = icmp slt i32 %i.dg, 0
  %i.er = icmp ult <2 x ptr> %i.dk, %i.ed
  %i.es = icmp ult <2 x ptr> %i.ef, %i.eh
  %i.et = or <4 x i32> %i.dz, %i.eb
  %i.eu = icmp ult <2 x ptr> %i.dk, %i.ej
  %i.ev = icmp ult <2 x ptr> %i.el, %i.eh
  %i.ew = icmp slt <4 x i32> %i.et, zeroinitializer
  %bound078 = icmp ult ptr %i.aj, %scevgep53
  %bound179 = icmp ult ptr %i.ap, %scevgep52
  %found.conflict80 = and i1 %bound078, %bound179
  %i.ex = or i32 %i.as, %i.al
  %i.ey = icmp slt i32 %i.ex, 0
  %i.ez = bitcast <4 x i1> %i.ew to i4
  %i.fa = icmp ne i4 %i.ez, 0
  %op.rdx = or i1 %i.fa, %stride.check
  %op.rdx87 = or i1 %i.ey, %i.eq
  %i.fb = and <2 x i1> %i.er, %i.es
  %i.fc = and <2 x i1> %i.eu, %i.ev
  %i.fd = or <2 x i1> %i.fb, %i.fc
  %op.rdx90 = or i1 %op.rdx, %op.rdx87
  %i.fe = bitcast <2 x i1> %i.fd to i2
  %i.ff = icmp ne i2 %i.fe, 0
  %op.rdx92 = or i1 %op.rdx90, %i.ff
  %op.rdx93 = or i1 %op.rdx92, %found.conflict80
  %n.vec = and i64 %wide.trip.count.i.i, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %._crit_edge.i.i, %.preheader.preheader.i.i
  %.02535.i.i = phi i32 [ %i.fw, %._crit_edge.i.i ], [ 0, %.preheader.preheader.i.i ]
  %.02634.i.i = phi ptr [ %i.fs, %._crit_edge.i.i ], [ %i.aj, %.preheader.preheader.i.i ] ; 3 uses
  %.02733.i.i = phi ptr [ %i.ft, %._crit_edge.i.i ], [ %i.ap, %.preheader.preheader.i.i ] ; 3 uses
  %.02832.i.i = phi ptr [ %i.fu, %._crit_edge.i.i ], [ %i.dr, %.preheader.preheader.i.i ] ; 3 uses
  %.02931.i.i = phi ptr [ %i.fv, %._crit_edge.i.i ], [ %i.ds, %.preheader.preheader.i.i ] ; 3 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %op.rdx93
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.i.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.i.i ] ; 5 uses
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %.02832.i.i, i64 %index ; 3 uses
  %wide.load = load <4 x float>, ptr %i.fg, align 4, !tbaa !29, !alias.scope !92, !noalias !93
  %i.fh = fadd nsz <4 x float> %wide.load, splat (float 1.000000e+00)
  store <4 x float> %i.fh, ptr %i.fg, align 4, !tbaa !29, !alias.scope !92, !noalias !93
  %i.fi = getelementptr inbounds nuw i8, ptr %.02733.i.i, i64 %index
  %wide.load84 = load <4 x i8>, ptr %i.fi, align 1, !tbaa !55, !alias.scope !94
  %i.fj = uitofp <4 x i8> %wide.load84 to <4 x float>
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %.02931.i.i, i64 %index ; 2 uses
  %wide.load85 = load <4 x float>, ptr %i.fk, align 4, !tbaa !29, !alias.scope !95, !noalias !96
  %i.fl = fadd nsz <4 x float> %wide.load85, %i.fj ; 2 uses
  store <4 x float> %i.fl, ptr %i.fk, align 4, !tbaa !29, !alias.scope !95, !noalias !96
  %wide.load86 = load <4 x float>, ptr %i.fg, align 4, !tbaa !29, !alias.scope !92, !noalias !93
  %i.fm = fdiv nsz <4 x float> %i.fl, %wide.load86
  %i.fn = fadd nsz <4 x float> %i.fm, splat (float 5.000000e-01)
  %i.fo = fptosi <4 x float> %i.fn to <4 x i32>
  %3 = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.fo, <4 x i32> zeroinitializer)
  %4 = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %3, <4 x i32> splat (i32 255))
  %i.fp = trunc nuw <4 x i32> %4 to <4 x i8>
  %i.fq = getelementptr inbounds nuw i8, ptr %.02634.i.i, i64 %index
  store <4 x i8> %i.fp, ptr %i.fq, align 1, !tbaa !55, !alias.scope !97, !noalias !94
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fr = icmp eq i64 %index.next, %n.vec
  br i1 %i.fr, label %middle.block, label %vector.body, !llvm.loop !76

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.i.i ]
  br label %scalar.ph

._crit_edge.i.i:                                  ; preds = %scalar.ph, %middle.block
  %i.fs = getelementptr inbounds i8, ptr %.02634.i.i, i64 %i.am
  %i.ft = getelementptr inbounds i8, ptr %.02733.i.i, i64 %i.at
  %i.fu = getelementptr inbounds [4 x i8], ptr %.02832.i.i, i64 %i.dh
  %i.fv = getelementptr inbounds [4 x i8], ptr %.02931.i.i, i64 %i.dh
  %i.fw = add nuw nsw i32 %.02535.i.i, 1          ; 2 uses
  %exitcond38.not.i.i = icmp eq i32 %i.fw, %i.af
  br i1 %exitcond38.not.i.i, label %nlmeans_plane.exit, label %.preheader.i.i, !llvm.loop !77

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %scalar.ph ], [ %indvars.iv.i.i.ph, %scalar.ph.preheader ] ; 5 uses
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %.02832.i.i, i64 %indvars.iv.i.i ; 3 uses
  %i.fy = load float, ptr %i.fx, align 4, !tbaa !29
  %i.fz = fadd nsz float %i.fy, 1.000000e+00
  store float %i.fz, ptr %i.fx, align 4, !tbaa !29
  %i.ga = getelementptr inbounds nuw i8, ptr %.02733.i.i, i64 %indvars.iv.i.i
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !55
  %i.gc = uitofp i8 %i.gb to float
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %.02931.i.i, i64 %indvars.iv.i.i ; 2 uses
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !29
  %i.gf = fadd nsz float %i.ge, %i.gc             ; 2 uses
  store float %i.gf, ptr %i.gd, align 4, !tbaa !29
  %i.gg = load float, ptr %i.fx, align 4, !tbaa !29
  %i.gh = fdiv nsz float %i.gf, %i.gg
  %i.gi = fadd nsz float %i.gh, 5.000000e-01
  %i.gj = fptosi float %i.gi to i32
  %5 = call i32 @llvm.smax.i32(i32 %i.gj, i32 0)
  %.0.i30.i.i = call i32 @llvm.umin.i32(i32 %5, i32 255)
  %i.gk = trunc nuw i32 %.0.i30.i.i to i8
  %i.gl = getelementptr inbounds nuw i8, ptr %.02634.i.i, i64 %indvars.iv.i.i
  store i8 %i.gk, ptr %i.gl, align 1, !tbaa !55
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %scalar.ph, !llvm.loop !78

._crit_edge.i:                                    ; preds = %bb.m
  %indvars.iv.next90.i = add nsw i64 %indvars.iv89.i, 1 ; 2 uses
  %lftr.wideiv92.i = trunc i64 %indvars.iv.next90.i to i32
  %exitcond93.not.i = icmp eq i32 %i.cd, %lftr.wideiv92.i
  br i1 %exitcond93.not.i, label %._crit_edge82.i, label %.preheader.i, !llvm.loop !79

bb.e:                                             ; preds = %bb.m, %.preheader.i
  %indvars.iv.i = phi i64 [ %i.cc, %.preheader.i ], [ %indvars.iv.next.i, %bb.m ] ; 6 uses
  %i.gm = or i64 %indvars.iv.i, %indvars.iv89.i
  %or.cond.not.i = icmp eq i64 %i.gm, 0
  br i1 %or.cond.not.i, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.gn = trunc i64 %indvars.iv.i to i32          ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  %i.go = getelementptr inbounds i8, ptr %i.cg, i64 %indvars.iv.i
  store ptr %i.go, ptr %2, align 8, !tbaa !57
  store i64 %i.at, ptr %i.w, align 8, !tbaa !58
  %i.gp = sub i32 0, %i.gn
  %i.gq = call i32 @llvm.smax.i32(i32 %i.gp, i32 0)
  store i32 %i.gq, ptr %i.x, align 8, !tbaa !59
  store i32 %i.cj, ptr %i.y, align 4, !tbaa !60
  %i.gr = sub i32 %i.ae, %i.gn
  %i.gs = call i32 @llvm.smin.i32(i32 %i.ae, i32 %i.gr)
  store i32 %i.gs, ptr %i.z, align 8, !tbaa !61
  store i32 %i.cl, ptr %i.aa, align 4, !tbaa !62
  %i.gt = load i64, ptr %i.az, align 8, !tbaa !51 ; 11 uses
  %i.gu = mul nsw i64 %i.gt, %indvars.iv89.i
  %i.gv = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.gu
  %i.gw = getelementptr inbounds [4 x i8], ptr %i.gv, i64 %indvars.iv.i
  store ptr %i.gw, ptr %i.ab, align 8, !tbaa !63
  store <2 x i32> %i.ce, ptr %i.ac, align 8
  %i.gx = load ptr, ptr %i.aw, align 8, !tbaa !50 ; 9 uses
  %i.gy = add i32 %i.av, %i.gn                    ; 7 uses
  %i.gz = call i32 @llvm.smax.i32(i32 %i.av, i32 %i.gy) ; 7 uses
  %i.ha = icmp slt i64 %indvars.iv.i, 0
  %..i.i = select i1 %i.ha, i32 %i.gy, i32 %i.av
  %i.hb = add nsw i32 %..i.i, %i.ae
  %i.hc = sub i32 %i.hb, %i.gz
  %i.hd = and i32 %i.hc, -16                      ; 3 uses
  br i1 %brmerge.i, label %compute_unsafe_ssd_integral_image.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %._crit_edge.i.i.i
  %indvars.iv72.i.i.i = phi i64 [ %indvars.iv.next73.i.i.i, %._crit_edge.i.i.i ], [ 0, %bb.f ] ; 5 uses
  %i.he = mul nsw i64 %indvars.iv72.i.i.i, %i.gt
  %i.hf = getelementptr [4 x i8], ptr %i.gx, i64 %i.he ; 2 uses
  %i.hg = getelementptr i8, ptr %i.hf, i64 -4
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !49
  %i.hi = add nsw i64 %indvars.iv72.i.i.i, -1
  %i.hj = mul nsw i64 %i.hi, %i.gt
  %i.hk = getelementptr [4 x i8], ptr %i.gx, i64 %i.hj ; 2 uses
  %i.hl = getelementptr i8, ptr %i.hk, i64 -4
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !49
  %i.hn = sub i32 %i.hh, %i.hm
  %i.ho = sub nsw i64 %indvars.iv72.i.i.i, %i.ay  ; 2 uses
  %i.hp = icmp slt i64 %i.ho, 0
  %i.hq = trunc nsw i64 %i.ho to i32
  %..i59.i.i.i = call i32 @llvm.smin.i32(i32 %i.hq, i32 %i.bv)
  %i.hr = trunc nuw nsw i64 %indvars.iv72.i.i.i to i32
  %i.hs = sub i32 %i.hr, %i.cn                    ; 2 uses
  %i.ht = icmp slt i32 %i.hs, 0
  %..i57.i.i.i = call i32 @llvm.smin.i32(i32 %i.hs, i32 %i.bv)
  %.0.i58.i.i.i = select i1 %i.ht, i32 0, i32 %..i57.i.i.i
  %i.hu = sext i32 %..i59.i.i.i to i64
  %i.hv = select i1 %i.hp, i64 0, i64 %i.hu
  %i.hw = mul nsw i64 %i.hv, %i.at
  %i.hx = getelementptr i8, ptr %i.ap, i64 %i.hw
  %i.hy = sext i32 %.0.i58.i.i.i to i64
  %i.hz = mul nsw i64 %i.hy, %i.at
  %i.ia = getelementptr i8, ptr %i.ap, i64 %i.hz
  br label %bb.g

._crit_edge.i.i.i:                                ; preds = %bb.g
  %indvars.iv.next73.i.i.i = add nuw nsw i64 %indvars.iv72.i.i.i, 1 ; 2 uses
  %exitcond168.not.i.i = icmp eq i64 %indvars.iv.next73.i.i.i, %i.ct
  br i1 %exitcond168.not.i.i, label %compute_unsafe_ssd_integral_image.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !80

bb.g:                                             ; preds = %bb.g, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.g ] ; 5 uses
  %.05366.i.i.i = phi i32 [ %i.hn, %.lr.ph.i.i.i ], [ %i.is, %bb.g ]
  %i.ib = sub nsw i64 %indvars.iv.i.i.i, %i.ay    ; 2 uses
  %i.ic = icmp slt i64 %i.ib, 0
  %i.id = trunc nsw i64 %i.ib to i32
  %..i55.i.i.i = call i32 @llvm.smin.i32(i32 %i.id, i32 %i.bx)
  %i.ie = trunc nuw nsw i64 %indvars.iv.i.i.i to i32
  %i.if = sub i32 %i.ie, %i.gy                    ; 2 uses
  %i.ig = icmp slt i32 %i.if, 0
  %..i.i.i.i = call i32 @llvm.smin.i32(i32 %i.if, i32 %i.bx)
  %.0.i.i.i.i = select i1 %i.ig, i32 0, i32 %..i.i.i.i
  %i.ih = sext i32 %..i55.i.i.i to i64
  %i.ii = select i1 %i.ic, i64 0, i64 %i.ih
  %i.ij = getelementptr i8, ptr %i.hx, i64 %i.ii
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !55
  %i.il = sext i32 %.0.i.i.i.i to i64
  %i.im = getelementptr i8, ptr %i.ia, i64 %i.il
  %i.in = load i8, ptr %i.im, align 1, !tbaa !55
  %i.io = zext i8 %i.ik to i32
  %i.ip = zext i8 %i.in to i32
  %i.iq = sub nsw i32 %i.io, %i.ip                ; 2 uses
  %i.ir = mul nsw i32 %i.iq, %i.iq
  %i.is = add i32 %i.ir, %.05366.i.i.i            ; 2 uses
  %i.it = getelementptr [4 x i8], ptr %i.hk, i64 %indvars.iv.i.i.i
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !49
  %i.iv = add i32 %i.is, %i.iu
  %i.iw = getelementptr [4 x i8], ptr %i.hf, i64 %indvars.iv.i.i.i
  store i32 %i.iv, ptr %i.iw, align 4, !tbaa !49
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i77.i = icmp eq i64 %indvars.iv.next.i.i.i, %i.by
  br i1 %exitcond.not.i77.i, label %._crit_edge.i.i.i, label %bb.g, !llvm.loop !81

compute_unsafe_ssd_integral_image.exit.i.i:       ; preds = %._crit_edge.i.i.i, %bb.f
  %i.ix = icmp sgt i32 %i.gz, 0
  %or.cond.i = select i1 %i.cu, i1 %i.ix, i1 false
  br i1 %or.cond.i, label %.lr.ph.preheader.i121.i.i, label %compute_unsafe_ssd_integral_image.exit135.i.i

.lr.ph.preheader.i121.i.i:                        ; preds = %compute_unsafe_ssd_integral_image.exit.i.i
  %i.iy = zext nneg i32 %i.gz to i64
  br label %.lr.ph.i122.i.i

.lr.ph.i122.i.i:                                  ; preds = %._crit_edge.i133.i.i, %.lr.ph.preheader.i121.i.i
  %indvars.iv72.i123.i.i = phi i64 [ %i.cv, %.lr.ph.preheader.i121.i.i ], [ %indvars.iv.next73.i134.i.i, %._crit_edge.i133.i.i ] ; 4 uses
  %i.iz = mul nsw i64 %indvars.iv72.i123.i.i, %i.gt
  %i.ja = getelementptr [4 x i8], ptr %i.gx, i64 %i.iz ; 2 uses
  %i.jb = getelementptr i8, ptr %i.ja, i64 -4
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !49
  %i.jd = add nsw i64 %indvars.iv72.i123.i.i, -1
  %i.je = mul nsw i64 %i.jd, %i.gt
  %i.jf = getelementptr [4 x i8], ptr %i.gx, i64 %i.je ; 2 uses
  %i.jg = getelementptr i8, ptr %i.jf, i64 -4
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !49
  %i.ji = sub i32 %i.jc, %i.jh
  %i.jj = trunc nsw i64 %indvars.iv72.i123.i.i to i32 ; 2 uses
  %i.jk = sub i32 %i.jj, %i.av
  %..i59.i124.i.i = call i32 @llvm.smin.i32(i32 %i.jk, i32 %i.bv)
  %i.jl = sub i32 %i.jj, %i.cn                    ; 2 uses
  %i.jm = icmp slt i32 %i.jl, 0
  %..i57.i125.i.i = call i32 @llvm.smin.i32(i32 %i.jl, i32 %i.bv)
  %.0.i58.i126.i.i = select i1 %i.jm, i32 0, i32 %..i57.i125.i.i
  %i.jn = sext i32 %..i59.i124.i.i to i64
  %i.jo = mul nsw i64 %i.jn, %i.at
  %i.jp = getelementptr i8, ptr %i.ap, i64 %i.jo
  %i.jq = sext i32 %.0.i58.i126.i.i to i64
  %i.jr = mul nsw i64 %i.jq, %i.at
  %i.js = getelementptr i8, ptr %i.ap, i64 %i.jr
  br label %bb.h

._crit_edge.i133.i.i:                             ; preds = %bb.h
  %indvars.iv.next73.i134.i.i = add nsw i64 %indvars.iv72.i123.i.i, 1 ; 2 uses
  %i.jt = icmp slt i64 %indvars.iv.next73.i134.i.i, %i.cw
  br i1 %i.jt, label %.lr.ph.i122.i.i, label %compute_unsafe_ssd_integral_image.exit135.i.i, !llvm.loop !80

bb.h:                                             ; preds = %bb.h, %.lr.ph.i122.i.i
  %indvars.iv.i127.i.i = phi i64 [ 0, %.lr.ph.i122.i.i ], [ %indvars.iv.next.i132.i.i, %bb.h ] ; 5 uses
  %.05366.i128.i.i = phi i32 [ %i.ji, %.lr.ph.i122.i.i ], [ %i.kl, %bb.h ]
  %i.ju = sub nsw i64 %indvars.iv.i127.i.i, %i.ay ; 2 uses
  %i.jv = icmp slt i64 %i.ju, 0
  %i.jw = trunc nsw i64 %i.ju to i32
  %..i55.i129.i.i = call i32 @llvm.smin.i32(i32 %i.jw, i32 %i.bx)
  %i.jx = trunc nuw nsw i64 %indvars.iv.i127.i.i to i32
  %i.jy = sub i32 %i.jx, %i.gy                    ; 2 uses
  %i.jz = icmp slt i32 %i.jy, 0
  %..i.i130.i.i = call i32 @llvm.smin.i32(i32 %i.jy, i32 %i.bx)
  %.0.i.i131.i.i = select i1 %i.jz, i32 0, i32 %..i.i130.i.i
  %i.ka = sext i32 %..i55.i129.i.i to i64
  %i.kb = select i1 %i.jv, i64 0, i64 %i.ka
  %i.kc = getelementptr i8, ptr %i.jp, i64 %i.kb
  %i.kd = load i8, ptr %i.kc, align 1, !tbaa !55
  %i.ke = sext i32 %.0.i.i131.i.i to i64
  %i.kf = getelementptr i8, ptr %i.js, i64 %i.ke
  %i.kg = load i8, ptr %i.kf, align 1, !tbaa !55
  %i.kh = zext i8 %i.kd to i32
  %i.ki = zext i8 %i.kg to i32
  %i.kj = sub nsw i32 %i.kh, %i.ki                ; 2 uses
  %i.kk = mul nsw i32 %i.kj, %i.kj
  %i.kl = add i32 %i.kk, %.05366.i128.i.i         ; 2 uses
  %i.km = getelementptr [4 x i8], ptr %i.jf, i64 %indvars.iv.i127.i.i
  %i.kn = load i32, ptr %i.km, align 4, !tbaa !49
  %i.ko = add i32 %i.kl, %i.kn
  %i.kp = getelementptr [4 x i8], ptr %i.ja, i64 %indvars.iv.i127.i.i
  store i32 %i.ko, ptr %i.kp, align 4, !tbaa !49
  %indvars.iv.next.i132.i.i = add nuw nsw i64 %indvars.iv.i127.i.i, 1 ; 2 uses
  %exitcond170.not.i.i = icmp eq i64 %indvars.iv.next.i132.i.i, %i.iy
  br i1 %exitcond170.not.i.i, label %._crit_edge.i133.i.i, label %bb.h, !llvm.loop !81

compute_unsafe_ssd_integral_image.exit135.i.i:    ; preds = %._crit_edge.i133.i.i, %compute_unsafe_ssd_integral_image.exit.i.i
  %i.kq = icmp ne i32 %i.hd, 0
  %or.cond.i76.i = select i1 %i.kq, i1 %i.cx, i1 false
  br i1 %or.cond.i76.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %compute_unsafe_ssd_integral_image.exit135.i.i
  %i.kr = load ptr, ptr %i.bs, align 8, !tbaa !35
  %i.ks = mul nsw i64 %i.gt, %i.cv
  %i.kt = getelementptr inbounds [4 x i8], ptr %i.gx, i64 %i.ks
  %i.ku = sext i32 %i.gz to i64
  %i.kv = getelementptr inbounds [4 x i8], ptr %i.kt, i64 %i.ku
  %i.kw = sub nsw i32 %i.gz, %i.av
end_hunk_0
begin_hunk_1_@nlmeans_slice:bb.a
  tail call void %i.bu(ptr noundef nonnull %.06263, ptr noundef nonnull %i.br, ptr noundef %i.bs, ptr noundef %i.bt, ptr noundef %i.bj, ptr noundef %i.bo, ptr noundef %i.bq, ptr noundef %i.ab, i64 noundef %i.bc, i64 noundef %i.bw, i64 noundef %i.by) #8
  %i.bz = load i64, ptr %i.w, align 8, !tbaa !51
  %i.ca = getelementptr inbounds [4 x i8], ptr %.06263, i64 %i.bz
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.cb = icmp slt i64 %indvars.iv.next, %i.bg
  br i1 %i.cb, label %bb.b, label %._crit_edge, !llvm.loop !109
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @ff_filter_get_nb_threads(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

declare ptr @av_pix_fmt_desc_get(i32 noundef) local_unnamed_addr #3

declare i32 @av_pix_fmt_count_planes(i32 noundef) local_unnamed_addr #3

declare noalias ptr @av_calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @av_malloc_array(i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @av_default_item_name(ptr noundef) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.exp.f64(double) #6

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @compute_safe_ssd_integral_image_c(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, i64 noundef %5, i32 noundef %6, i32 noundef %7) #7 {
bb.a:
  %i.a = icmp sgt i32 %7, 0
  %i.b = icmp sgt i32 %6, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %.preheader.preheader, label %._crit_edge90.split

.preheader.preheader:                             ; preds = %bb.a
  %i.c = sub i64 0, %1
  %i.d = getelementptr inbounds [4 x i8], ptr %0, i64 %i.c
  %i.e = zext nneg i32 %6 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.089 = phi ptr [ %i.h, %._crit_edge ], [ %0, %.preheader.preheader ] ; 6 uses
  %.07988 = phi ptr [ %i.f, %._crit_edge ], [ %2, %.preheader.preheader ] ; 5 uses
  %.08087 = phi ptr [ %i.g, %._crit_edge ], [ %4, %.preheader.preheader ] ; 5 uses
  %.08186 = phi ptr [ %i.i, %._crit_edge ], [ %i.d, %.preheader.preheader ] ; 6 uses
  %.08385 = phi i32 [ %i.j, %._crit_edge ], [ 0, %.preheader.preheader ]
  br label %bb.b

._crit_edge90.split:                              ; preds = %._crit_edge, %bb.a
  ret void

._crit_edge:                                      ; preds = %bb.b
  %i.f = getelementptr inbounds i8, ptr %.07988, i64 %3
  %i.g = getelementptr inbounds i8, ptr %.08087, i64 %5
  %i.h = getelementptr inbounds [4 x i8], ptr %.089, i64 %1
  %i.i = getelementptr inbounds [4 x i8], ptr %.08186, i64 %1
  %i.j = add nuw nsw i32 %.08385, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.j, %7
  br i1 %exitcond.not, label %._crit_edge90.split, label %.preheader, !llvm.loop !111

bb.b:                                             ; preds = %.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.b ] ; 9 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.07988, i64 %indvars.iv
  %i.l = load i8, ptr %i.k, align 1, !tbaa !55
  %i.m = zext i8 %i.l to i32
  %i.n = getelementptr inbounds nuw i8, ptr %.08087, i64 %indvars.iv
  %i.o = load i8, ptr %i.n, align 1, !tbaa !55
  %i.p = zext i8 %i.o to i32
  %i.q = sub nsw i32 %i.m, %i.p                   ; 2 uses
  %i.r = or disjoint i64 %indvars.iv, 1           ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.07988, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !55
  %i.u = zext i8 %i.t to i32
  %i.v = getelementptr inbounds nuw i8, ptr %.08087, i64 %i.r
  %i.w = load i8, ptr %i.v, align 1, !tbaa !55
  %i.x = zext i8 %i.w to i32
  %i.y = sub nsw i32 %i.u, %i.x                   ; 2 uses
  %i.z = or disjoint i64 %indvars.iv, 2           ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.07988, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !55
  %i.ac = zext i8 %i.ab to i32
  %i.ad = getelementptr inbounds nuw i8, ptr %.08087, i64 %i.z
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !55
  %i.af = zext i8 %i.ae to i32
  %i.ag = sub nsw i32 %i.ac, %i.af                ; 2 uses
  %i.ah = or disjoint i64 %indvars.iv, 3          ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.07988, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !55
  %i.ak = zext i8 %i.aj to i32
  %i.al = getelementptr inbounds nuw i8, ptr %.08087, i64 %i.ah
  %i.am = load i8, ptr %i.al, align 1, !tbaa !55
  %i.an = zext i8 %i.am to i32
  %i.ao = sub nsw i32 %i.ak, %i.an                ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %.08186, i64 %indvars.iv ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !49
  %i.ar = add nsw i64 %indvars.iv, -1             ; 2 uses
  %i.as = getelementptr inbounds [4 x i8], ptr %.08186, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !49
  %i.au = sub i32 %i.aq, %i.at
  %i.av = mul nsw i32 %i.q, %i.q
  %i.aw = add i32 %i.au, %i.av                    ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %.089, i64 %indvars.iv ; 2 uses
  store i32 %i.aw, ptr %i.ax, align 4, !tbaa !49
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %.08186, i64 %i.r ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !49
  %i.ba = load i32, ptr %i.ap, align 4, !tbaa !49
  %i.bb = sub i32 %i.az, %i.ba
  %i.bc = mul nsw i32 %i.y, %i.y
  %i.bd = add i32 %i.bb, %i.bc                    ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %.089, i64 %i.r ; 2 uses
  store i32 %i.bd, ptr %i.be, align 4, !tbaa !49
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %.08186, i64 %i.z ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !49
  %i.bh = load i32, ptr %i.ay, align 4, !tbaa !49
  %i.bi = sub i32 %i.bg, %i.bh
  %i.bj = mul nsw i32 %i.ag, %i.ag
  %i.bk = add i32 %i.bi, %i.bj                    ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %.089, i64 %i.z ; 2 uses
  store i32 %i.bk, ptr %i.bl, align 4, !tbaa !49
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %.08186, i64 %i.ah
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !49
  %i.bo = load i32, ptr %i.bf, align 4, !tbaa !49
  %i.bp = sub i32 %i.bn, %i.bo
  %i.bq = mul nsw i32 %i.ao, %i.ao
  %i.br = add i32 %i.bp, %i.bq
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %.089, i64 %i.ah
  %i.bt = getelementptr inbounds [4 x i8], ptr %.089, i64 %i.ar
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !49
  %i.bv = add i32 %i.bu, %i.aw                    ; 2 uses
  store i32 %i.bv, ptr %i.ax, align 4, !tbaa !49
  %i.bw = add i32 %i.bv, %i.bd                    ; 2 uses
  store i32 %i.bw, ptr %i.be, align 4, !tbaa !49
  %i.bx = add i32 %i.bw, %i.bk                    ; 2 uses
  store i32 %i.bx, ptr %i.bl, align 4, !tbaa !49
  %i.by = add i32 %i.bx, %i.br
  store i32 %i.by, ptr %i.bs, align 4, !tbaa !49
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.bz = icmp samesign ult i64 %indvars.iv.next, %i.e
  br i1 %i.bz, label %bb.b, label %._crit_edge, !llvm.loop !112
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @compute_weights_line_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef captures(none) %5, ptr nofree noundef captures(none) %6, ptr nofree noundef readonly captures(none) %7, i64 noundef %8, i64 noundef %9, i64 noundef %10) #7 {
bb.a:
  %sext = shl i64 %9, 32
  %i.a = ashr exact i64 %sext, 32                 ; 2 uses
  %i.b = icmp sgt i64 %10, %i.a
  br i1 %i.b, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %i.a, %bb.a ] ; 8 uses
  %i.c = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv
  %i.d = load i32, ptr %i.c, align 4, !tbaa !49
  %i.e = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv
  %i.f = load i32, ptr %i.e, align 4, !tbaa !49
  %i.g = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv
  %i.h = load i32, ptr %i.g, align 4, !tbaa !49
  %i.i = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv
  %i.j = load i32, ptr %i.i, align 4, !tbaa !49
  %i.k = add i32 %i.f, %i.h
  %i.l = sub i32 %i.d, %i.k
  %i.m = add i32 %i.l, %i.j
  %i.n = zext i32 %i.m to i64
  %i.o = tail call i64 @llvm.smin.i64(i64 %8, i64 %i.n)
  %i.p = and i64 %i.o, 4294967295
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %i.p
  %i.r = load float, ptr %i.q, align 4, !tbaa !29 ; 2 uses
  %i.s = getelementptr inbounds [4 x i8], ptr %5, i64 %indvars.iv ; 2 uses
  %i.t = load float, ptr %i.s, align 4, !tbaa !29
  %i.u = fadd nsz float %i.r, %i.t
  store float %i.u, ptr %i.s, align 4, !tbaa !29
  %i.v = getelementptr inbounds i8, ptr %4, i64 %indvars.iv
  %i.w = load i8, ptr %i.v, align 1, !tbaa !55
  %i.x = uitofp i8 %i.w to float
  %i.y = getelementptr inbounds [4 x i8], ptr %6, i64 %indvars.iv ; 2 uses
  %i.z = load float, ptr %i.y, align 4, !tbaa !29
  %i.aa = tail call nsz float @llvm.fmuladd.f32(float %i.r, float %i.x, float %i.z)
  store float %i.aa, ptr %i.y, align 4, !tbaa !29
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.ab = icmp sgt i64 %10, %indvars.iv.next
  br i1 %i.ab, label %.lr.ph, label %._crit_edge, !llvm.loop !113
}

declare void @av_freep(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #6

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!11 = !{!"p1 _ZTS8AVFilter", !9, i64 0}
!12 = !{!"p1 omnipotent char", !9, i64 0}
!13 = !{!"p1 _ZTS11AVFilterPad", !9, i64 0}
!14 = !{!"any p2 pointer", !9, i64 0}
!15 = !{!"p2 _ZTS12AVFilterLink", !14, i64 0}
!16 = !{!"p1 _ZTS13AVFilterGraph", !9, i64 0}
!17 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!18 = !{!"AVFilterContext", !10, i64 0, !11, i64 8, !12, i64 16, !13, i64 24, !15, i64 32, !6, i64 40, !13, i64 48, !15, i64 56, !6, i64 64, !9, i64 72, !16, i64 80, !6, i64 88, !6, i64 92, !12, i64 96, !6, i64 104, !17, i64 112, !6, i64 120}
!19 = !{!18, !9, i64 72}
!20 = !{!"double", !5, i64 0}
!21 = !{!"p1 int", !9, i64 0}
!22 = !{!"long", !5, i64 0}
!23 = !{!"p1 float", !9, i64 0}
!24 = !{!"NLMeansDSPContext", !9, i64 0, !9, i64 8}
!25 = !{!"NLMeansContext", !10, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !20, i64 24, !20, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !21, i64 72, !21, i64 80, !6, i64 88, !6, i64 92, !22, i64 96, !23, i64 104, !23, i64 112, !6, i64 120, !23, i64 128, !6, i64 136, !24, i64 144}
!26 = !{!25, !6, i64 136}
!27 = !{!25, !23, i64 128}
!28 = !{!"float", !5, i64 0}
!29 = !{!28, !28, i64 0}
!30 = !{!"llvm.loop.mustprogress"}
!31 = !{!25, !6, i64 60}
!32 = !{!25, !6, i64 68}
!33 = !{!25, !6, i64 44}
!34 = !{!25, !6, i64 52}
!35 = !{!24, !9, i64 0}
!36 = !{!24, !9, i64 8}
!37 = !{!"p1 _ZTS15AVFilterContext", !9, i64 0}
!38 = !{!"AVRational", !6, i64 0, !6, i64 4}
!39 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!40 = !{!"p2 _ZTS15AVFrameSideData", !14, i64 0}
!41 = !{!"p1 _ZTS15AVFilterFormats", !9, i64 0}
!42 = !{!"p1 _ZTS22AVFilterChannelLayouts", !9, i64 0}
!43 = !{!"AVFilterFormatsConfig", !41, i64 0, !41, i64 8, !42, i64 16, !41, i64 24, !41, i64 32, !41, i64 40}
!44 = !{!"AVFilterLink", !37, i64 0, !13, i64 8, !37, i64 16, !13, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !38, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !39, i64 72, !38, i64 96, !40, i64 104, !6, i64 112, !6, i64 116, !43, i64 120, !43, i64 168}
!45 = !{!44, !37, i64 16}
!46 = !{!44, !6, i64 40}
!47 = !{!44, !6, i64 44}
!48 = !{!25, !6, i64 8}
!49 = !{!6, !6, i64 0}
!50 = !{!25, !21, i64 80}
!51 = !{!25, !22, i64 96}
!52 = !{!25, !23, i64 104}
!53 = !{!25, !6, i64 120}
!54 = !{!25, !23, i64 112}
!55 = !{!5, !5, i64 0}
!56 = !{!"thread_data", !12, i64 0, !22, i64 8, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !21, i64 32, !6, i64 40}
!57 = !{!56, !12, i64 0}
!58 = !{!56, !22, i64 8}
!59 = !{!56, !6, i64 16}
!60 = !{!56, !6, i64 20}
!61 = !{!56, !6, i64 24}
!62 = !{!56, !6, i64 28}
!63 = !{!56, !21, i64 32}
!64 = distinct !{!64, !30}
!65 = !{!25, !20, i64 32}
!66 = !{!25, !20, i64 24}
!67 = !{!25, !6, i64 56}
!68 = !{!25, !6, i64 40}
!69 = !{!25, !6, i64 64}
!70 = !{!25, !6, i64 48}
!71 = distinct !{!71, !"LVerDomain"}
!72 = distinct !{!72, !71}
!73 = distinct !{!73, !71}
!74 = distinct !{!74, !71}
!75 = distinct !{!75, !71}
!76 = distinct !{!76, !30, !98, !99}
!77 = distinct !{!77, !30}
!78 = distinct !{!78, !30, !98}
!79 = distinct !{!79, !30}
!80 = distinct !{!80, !30}
!81 = distinct !{!81, !30}
!82 = distinct !{null, null}
!83 = distinct !{!83, !30}
!84 = distinct !{!84, !30}
!85 = !{!"p1 _ZTS7AVFrame", !9, i64 0}
!86 = !{!85, !85, i64 0}
!87 = !{!18, !15, i64 56}
!88 = !{!"p1 _ZTS12AVFilterLink", !9, i64 0}
!89 = !{!88, !88, i64 0}
!90 = !{!12, !12, i64 0}
!91 = !{!23, !23, i64 0}
!92 = !{!72}
!93 = !{!75, !74, !73}
!94 = !{!73}
!95 = !{!75}
!96 = !{!74, !73}
!97 = !{!74}
!98 = !{!"llvm.loop.isvectorized", i32 1}
!99 = !{!"llvm.loop.unroll.runtime.disable"}
!100 = !{!44, !6, i64 36}
!101 = !{!"AVPixFmtDescriptor", !12, i64 0, !5, i64 8, !5, i64 9, !5, i64 10, !22, i64 16, !5, i64 24, !12, i64 104}
!102 = !{!101, !5, i64 9}
!103 = !{!25, !6, i64 12}
!104 = !{!101, !5, i64 10}
!105 = !{!25, !6, i64 16}
!106 = !{!25, !6, i64 88}
!107 = !{!25, !6, i64 92}
!108 = !{!25, !21, i64 72}
!109 = distinct !{!109, !30}
!110 = !{!56, !6, i64 40}
!111 = distinct !{!111, !30}
!112 = distinct !{!112, !30}
!113 = distinct !{!113, !30}
end_hunk_1
