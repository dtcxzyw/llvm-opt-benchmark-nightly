Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_hbond?download=true
inline.NumInlined: 2166
inline.NumDeleted: 889
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 48
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_Z12analyse_corriPfS_S_S_S_S_S_ff:bb.a
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !69 ; 2 uses
  %i.bq = insertelement <2 x float> poison, float %i.bn, i64 0
  %i.br = insertelement <2 x float> %i.bq, float %i.bl, i64 1
  %i.bs = insertelement <2 x float> poison, float %i.bp, i64 0
  %i.bt = shufflevector <2 x float> %i.bs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bu = fmul <2 x float> %i.br, %i.bt
  %i.bv = fpext <2 x float> %i.bu to <2 x double>
  %i.bw = fadd <2 x double> %i.bb, %i.bv          ; 3 uses
  %i.bx = insertelement <4 x float> poison, float %i.bn, i64 0
  %i.by = insertelement <4 x float> %i.bx, float %i.bl, i64 1
  %i.bz = insertelement <4 x float> %i.by, float %i.bp, i64 2 ; 2 uses
  %i.ca = shufflevector <4 x float> %i.bz, <4 x float> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 1>
  %i.cb = shufflevector <4 x float> %i.bz, <4 x float> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 0>
  %i.cc = fmul <4 x float> %i.ca, %i.cb
  %i.cd = fpext <4 x float> %i.cc to <4 x double>
  %i.ce = fadd <4 x double> %i.bj, %i.cd          ; 2 uses
  %indvars.iv.next246.1 = add nuw nsw i64 %indvars.iv245, 2 ; 2 uses
  %exitcond249.not.1 = icmp eq i64 %indvars.iv.next246.1, %wide.trip.count248
  br i1 %exitcond249.not.1, label %.critedge._crit_edge.loopexit.unr-lcssa, label %.critedge, !llvm.loop !197

.critedge._crit_edge.loopexit.unr-lcssa:          ; preds = %.critedge
  %i.cf = extractelement <2 x double> %i.bw, i64 1
  %i.cg = extractelement <2 x double> %i.bw, i64 0
  br label %.critedge._crit_edge

.critedge._crit_edge:                             ; preds = %.critedge._crit_edge.loopexit.unr-lcssa, %.critedge.prol.loopexit, %.critedge.preheader
  %.0156.lcssa = phi double [ 0.000000e+00, %.critedge.preheader ], [ %.lcssa304.unr, %.critedge.prol.loopexit ], [ %i.cf, %.critedge._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %.0.lcssa = phi double [ 0.000000e+00, %.critedge.preheader ], [ %.lcssa305.unr, %.critedge.prol.loopexit ], [ %i.cg, %.critedge._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %i.ch = phi <4 x double> [ zeroinitializer, %.critedge.preheader ], [ %.lcssa306.unr, %.critedge.prol.loopexit ], [ %i.ce, %.critedge._crit_edge.loopexit.unr-lcssa ] ; 4 uses
  %i.ci = fpext float %9 to double                ; 7 uses
  %i.cj = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, double noundef %i.ci) ; 0 uses
  %i.ck = extractelement <4 x double> %i.ch, i64 3 ; 5 uses
  %i.cl = fneg double %i.ck
  %i.cm = fmul double %i.ck, %i.cl
  %i.cn = extractelement <4 x double> %i.ch, i64 1 ; 4 uses
  %i.co = extractelement <4 x double> %i.ch, i64 2 ; 5 uses
  %i.cp = tail call double @llvm.fmuladd.f64(double %i.co, double %i.cn, double %i.cm) ; 2 uses
  %i.cq = fcmp ogt double %i.cp, 0.000000e+00
  %i.cr = fcmp ogt double %i.co, 0.000000e+00
  %or.cond3 = and i1 %i.cr, %i.cq
  br i1 %or.cond3, label %bb.d, label %bb.i

bb.d:                                             ; preds = %.critedge._crit_edge
  %i.cs = fneg double %.0.lcssa                   ; 2 uses
  %i.ct = fmul double %i.ck, %i.cs
  %i.cu = tail call double @llvm.fmuladd.f64(double %i.co, double %.0156.lcssa, double %i.ct)
  %i.cv = fdiv double %i.cu, %i.cp
  %i.cw = fptrunc double %i.cv to float           ; 14 uses
  %i.cx = fpext float %i.cw to double             ; 4 uses
  %i.cy = tail call double @llvm.fmuladd.f64(double %i.cx, double %i.ck, double %i.cs)
  %i.cz = fdiv double %i.cy, %i.co
  %i.da = fptrunc double %i.cz to float           ; 15 uses
  br i1 %spec.select, label %.preheader, label %.preheader198

.preheader198:                                    ; preds = %bb.d
  br i1 %i.m, label %.lr.ph220.preheader, label %._crit_edge

.lr.ph220.preheader:                              ; preds = %.preheader198
  %wide.trip.count255 = zext nneg i32 %0 to i64   ; 3 uses
  %i.db = sub nsw i64 %wide.trip.count255, %indvars.iv
  %xtraiter313 = and i64 %i.db, 3                 ; 2 uses
  %lcmp.mod314.not = icmp eq i64 %xtraiter313, 0
  br i1 %lcmp.mod314.not, label %.lr.ph220.prol.loopexit, label %.lr.ph220.prol

.lr.ph220.prol:                                   ; preds = %.lr.ph220.preheader, %.lr.ph220.prol
  %indvars.iv252.prol = phi i64 [ %indvars.iv.next253.prol, %.lr.ph220.prol ], [ %indvars.iv, %.lr.ph220.preheader ] ; 4 uses
  %.1219.prol = phi float [ %i.dn, %.lr.ph220.prol ], [ 0.000000e+00, %.lr.ph220.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph220.prol ], [ 0, %.lr.ph220.preheader ]
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv252.prol
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !69
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv252.prol
  %i.df = load float, ptr %i.de, align 4, !tbaa !69
  %i.dg = fneg float %i.df
  %i.dh = fmul float %i.da, %i.dg
  %i.di = tail call float @llvm.fmuladd.f32(float %i.cw, float %i.dd, float %i.dh)
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv252.prol
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !69
  %i.dl = fsub float %i.di, %i.dk                 ; 2 uses
  %i.dm = fmul float %i.dl, %i.dl
  %i.dn = fadd float %.1219.prol, %i.dm           ; 3 uses
  %indvars.iv.next253.prol = add nuw nsw i64 %indvars.iv252.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter313
  br i1 %prol.iter.cmp.not, label %.lr.ph220.prol.loopexit, label %.lr.ph220.prol, !llvm.loop !198

.lr.ph220.prol.loopexit:                          ; preds = %.lr.ph220.prol, %.lr.ph220.preheader
  %.lcssa303.unr = phi float [ poison, %.lr.ph220.preheader ], [ %i.dn, %.lr.ph220.prol ]
  %indvars.iv252.unr = phi i64 [ %indvars.iv, %.lr.ph220.preheader ], [ %indvars.iv.next253.prol, %.lr.ph220.prol ]
  %.1219.unr = phi float [ 0.000000e+00, %.lr.ph220.preheader ], [ %i.dn, %.lr.ph220.prol ]
  %i.do = sub nsw i64 %indvars.iv, %wide.trip.count255
  %i.dp = icmp ugt i64 %i.do, -4
  br i1 %i.dp, label %._crit_edge.loopexit, label %.lr.ph220

.preheader:                                       ; preds = %bb.d
  br i1 %i.m, label %.lr.ph224.preheader, label %._crit_edge225

.lr.ph224.preheader:                              ; preds = %.preheader
  %wide.trip.count262 = zext nneg i32 %0 to i64   ; 3 uses
  %i.dq = sub nsw i64 %wide.trip.count262, %indvars.iv
  %xtraiter317 = and i64 %i.dq, 3                 ; 2 uses
  %lcmp.mod318.not = icmp eq i64 %xtraiter317, 0
  br i1 %lcmp.mod318.not, label %.lr.ph224.prol.loopexit, label %.lr.ph224.prol

.lr.ph224.prol:                                   ; preds = %.lr.ph224.preheader, %.lr.ph224.prol
  %indvars.iv259.prol = phi i64 [ %indvars.iv.next260.prol, %.lr.ph224.prol ], [ %indvars.iv, %.lr.ph224.preheader ] ; 4 uses
  %.0161223.prol = phi float [ %i.ec, %.lr.ph224.prol ], [ 0.000000e+00, %.lr.ph224.preheader ]
  %prol.iter319 = phi i64 [ %prol.iter319.next, %.lr.ph224.prol ], [ 0, %.lr.ph224.preheader ]
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv259.prol
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !69
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv259.prol
  %i.du = load float, ptr %i.dt, align 4, !tbaa !69
  %i.dv = fneg float %i.du
  %i.dw = fmul float %i.da, %i.dv
  %i.dx = tail call float @llvm.fmuladd.f32(float %i.cw, float %i.ds, float %i.dw)
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv259.prol
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !69
  %i.ea = fsub float %i.dx, %i.dz                 ; 2 uses
  %i.eb = fmul float %i.ea, %i.ea
  %i.ec = fadd float %.0161223.prol, %i.eb        ; 3 uses
  %indvars.iv.next260.prol = add nuw nsw i64 %indvars.iv259.prol, 1 ; 2 uses
  %prol.iter319.next = add i64 %prol.iter319, 1   ; 2 uses
  %prol.iter319.cmp.not = icmp eq i64 %prol.iter319.next, %xtraiter317
  br i1 %prol.iter319.cmp.not, label %.lr.ph224.prol.loopexit, label %.lr.ph224.prol, !llvm.loop !199

.lr.ph224.prol.loopexit:                          ; preds = %.lr.ph224.prol, %.lr.ph224.preheader
  %.lcssa302.unr = phi float [ poison, %.lr.ph224.preheader ], [ %i.ec, %.lr.ph224.prol ]
  %indvars.iv259.unr = phi i64 [ %indvars.iv, %.lr.ph224.preheader ], [ %indvars.iv.next260.prol, %.lr.ph224.prol ]
  %.0161223.unr = phi float [ 0.000000e+00, %.lr.ph224.preheader ], [ %i.ec, %.lr.ph224.prol ]
  %i.ed = sub nsw i64 %indvars.iv, %wide.trip.count262
  %i.ee = icmp ugt i64 %i.ed, -4
  br i1 %i.ee, label %._crit_edge225.loopexit, label %.lr.ph224

.lr.ph224:                                        ; preds = %.lr.ph224.prol.loopexit, %.lr.ph224
  %indvars.iv259 = phi i64 [ %indvars.iv.next260.3, %.lr.ph224 ], [ %indvars.iv259.unr, %.lr.ph224.prol.loopexit ] ; 7 uses
  %.0161223 = phi float [ %i.ga, %.lr.ph224 ], [ %.0161223.unr, %.lr.ph224.prol.loopexit ]
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv259
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !69
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv259
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !69
  %i.ej = fneg float %i.ei
  %i.ek = fmul float %i.da, %i.ej
  %i.el = tail call float @llvm.fmuladd.f32(float %i.cw, float %i.eg, float %i.ek)
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv259
  %i.en = load float, ptr %i.em, align 4, !tbaa !69
  %i.eo = fsub float %i.el, %i.en                 ; 2 uses
  %i.ep = fmul float %i.eo, %i.eo
  %i.eq = fadd float %.0161223, %i.ep
  %indvars.iv.next260 = add nuw nsw i64 %indvars.iv259, 1 ; 3 uses
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next260
  %i.es = load float, ptr %i.er, align 4, !tbaa !69
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next260
  %i.eu = load float, ptr %i.et, align 4, !tbaa !69
  %i.ev = fneg float %i.eu
  %i.ew = fmul float %i.da, %i.ev
  %i.ex = tail call float @llvm.fmuladd.f32(float %i.cw, float %i.es, float %i.ew)
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next260
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !69
  %i.fa = fsub float %i.ex, %i.ez                 ; 2 uses
  %i.fb = fmul float %i.fa, %i.fa
  %i.fc = fadd float %i.eq, %i.fb
  %indvars.iv.next260.1 = add nuw nsw i64 %indvars.iv259, 2 ; 3 uses
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next260.1
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !69
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next260.1
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !69
  %i.fh = fneg float %i.fg
  %i.fi = fmul float %i.da, %i.fh
  %i.fj = tail call float @llvm.fmuladd.f32(float %i.cw, float %i.fe, float %i.fi)
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next260.1
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !69
  %i.fm = fsub float %i.fj, %i.fl                 ; 2 uses
  %i.fn = fmul float %i.fm, %i.fm
  %i.fo = fadd float %i.fc, %i.fn
  %indvars.iv.next260.2 = add nuw nsw i64 %indvars.iv259, 3 ; 3 uses
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next260.2
  %i.fq = load float, ptr %i.fp, align 4, !tbaa !69
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next260.2
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !69
  %i.ft = fneg float %i.fs
  %i.fu = fmul float %i.da, %i.ft
  %i.fv = tail call float @llvm.fmuladd.f32(float %i.cw, float %i.fq, float %i.fu)
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next260.2
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !69
  %i.fy = fsub float %i.fv, %i.fx                 ; 2 uses
  %i.fz = fmul float %i.fy, %i.fy
  %i.ga = fadd float %i.fo, %i.fz                 ; 2 uses
  %indvars.iv.next260.3 = add nuw nsw i64 %indvars.iv259, 4 ; 2 uses
  %exitcond263.not.3 = icmp eq i64 %indvars.iv.next260.3, %wide.trip.count262
  br i1 %exitcond263.not.3, label %._crit_edge225.loopexit, label %.lr.ph224, !llvm.loop !200

._crit_edge225.loopexit:                          ; preds = %.lr.ph224, %.lr.ph224.prol.loopexit
  %.lcssa302 = phi float [ %.lcssa302.unr, %.lr.ph224.prol.loopexit ], [ %i.ga, %.lr.ph224 ]
  %i.gb = fpext float %.lcssa302 to double
  br label %._crit_edge225

._crit_edge225:                                   ; preds = %._crit_edge225.loopexit, %.preheader
  %.0161.lcssa = phi double [ 0.000000e+00, %.preheader ], [ %i.gb, %._crit_edge225.loopexit ]
  %i.gc = insertelement <2 x float> poison, float %i.cw, i64 0
  %i.gd = insertelement <2 x float> %i.gc, float %i.da, i64 1 ; 12 uses
  %i.ge = fmul <2 x float> %i.gd, %i.gd           ; 10 uses
  %10 = fadd <2 x float> %i.gd, zeroinitializer
  %i.gf = fadd <2 x float> %i.ge, zeroinitializer
  %i.gg = fadd <2 x float> %10, %i.gd
  %i.gh = fadd <2 x float> %i.ge, %i.gf
  %i.gi = fadd <2 x float> %i.gg, %i.gd
  %i.gj = fadd <2 x float> %i.ge, %i.gh
  %i.gk = fadd <2 x float> %i.gi, %i.gd
  %i.gl = fadd <2 x float> %i.ge, %i.gj
  %i.gm = fadd <2 x float> %i.gk, %i.gd
  %i.gn = fadd <2 x float> %i.ge, %i.gl
  %i.go = fadd <2 x float> %i.gm, %i.gd
  %i.gp = fadd <2 x float> %i.ge, %i.gn
  %i.gq = fadd <2 x float> %i.go, %i.gd
  %i.gr = fadd <2 x float> %i.ge, %i.gp
  %i.gs = fadd <2 x float> %i.gq, %i.gd
  %i.gt = fadd <2 x float> %i.ge, %i.gr
  %i.gu = fadd <2 x float> %i.gs, %i.gd
  %i.gv = fadd <2 x float> %i.ge, %i.gt
  %i.gw = fadd <2 x float> %i.gu, %i.gd
  %i.gx = fadd <2 x float> %i.ge, %i.gv
  %i.gy = fdiv <2 x float> %i.gx, splat (float 1.000000e+01)
  %i.gz = fdiv <2 x float> %i.gw, splat (float 1.000000e+01) ; 2 uses
  %i.ha = fmul <2 x float> %i.gz, %i.gz
  %i.hb = fsub <2 x float> %i.gy, %i.ha           ; 2 uses
  %i.hc = extractelement <2 x float> %i.hb, i64 0
  %i.hd = tail call noundef float @sqrtf(float noundef %i.hc) #24
  %i.he = extractelement <2 x float> %i.hb, i64 1
  %i.hf = tail call noundef float @sqrtf(float noundef %i.he) #24
  %i.hg = fmul double %i.ci, f0x3F81072C483AF26D  ; 4 uses
  %i.hh = fpext float %i.hd to double             ; 2 uses
  %i.hi = fmul double %i.hg, %i.hh
  %i.hj = fdiv double %i.hi, %i.cx
  %i.hk = fptrunc double %i.hj to float
  %i.hl = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, double noundef %.0161.lcssa, double noundef 0.000000e+00) ; 0 uses
  %puts169 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  %puts170 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  %i.hm = fdiv float 1.000000e+00, %i.cw          ; 3 uses
  %i.hn = fpext float %i.hm to double
  %i.ho = fcmp ugt float %i.hm, 0.000000e+00
  br i1 %i.ho, label %bb.e, label %_ZL7calc_dgff.exit

bb.e:                                             ; preds = %._crit_edge225
  %i.hp = fptrunc double %i.hg to float           ; 2 uses
  %i.hq = fpext float %i.hp to double
  %i.hr = fmul float %i.hm, %i.hp
  %i.hs = fpext float %i.hr to double
  %i.ht = fdiv double %i.hs, f0x3FD989BA751137D3
  %i.hu = tail call double @log(double noundef %i.ht) #24
  %i.hv = fmul double %i.hu, %i.hq
  %i.hw = fptrunc double %i.hv to float
  %i.hx = fpext float %i.hw to double
  br label %_ZL7calc_dgff.exit

_ZL7calc_dgff.exit:                               ; preds = %._crit_edge225, %bb.e
  %.0.i = phi double [ %i.hx, %bb.e ], [ -6.660000e+02, %._crit_edge225 ]
  %i.hy = fpext float %i.hk to double
  %i.hz = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, double noundef %i.cx, double noundef %i.hh, double noundef %i.hn, double noundef %.0.i, double noundef %i.hy) ; 0 uses
  %i.ia = fpext float %i.hf to double             ; 2 uses
  %i.ib = fmul double %i.hg, %i.ia
  %i.ic = fpext float %i.da to double             ; 2 uses
  %i.id = fdiv double %i.ib, %i.ic
  %i.ie = fptrunc double %i.id to float
  %i.if = fdiv float 1.000000e+00, %i.da          ; 3 uses
  %i.ig = fpext float %i.if to double
  %i.ih = fcmp ugt float %i.if, 0.000000e+00
  br i1 %i.ih, label %bb.f, label %_ZL7calc_dgff.exit176

bb.f:                                             ; preds = %_ZL7calc_dgff.exit
  %i.ii = fptrunc double %i.hg to float           ; 2 uses
  %i.ij = fpext float %i.ii to double
  %i.ik = fmul float %i.if, %i.ii
  %i.il = fpext float %i.ik to double
  %i.im = fdiv double %i.il, f0x3FD989BA751137D3
  %i.in = tail call double @log(double noundef %i.im) #24
  %i.io = fmul double %i.in, %i.ij
  %i.ip = fptrunc double %i.io to float
  %i.iq = fpext float %i.ip to double
  br label %_ZL7calc_dgff.exit176

_ZL7calc_dgff.exit176:                            ; preds = %_ZL7calc_dgff.exit, %bb.f
  %.0.i175 = phi double [ %i.iq, %bb.f ], [ -6.660000e+02, %_ZL7calc_dgff.exit ]
  %i.ir = fpext float %i.ie to double
  %i.is = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, double noundef %i.ic, double noundef %i.ia, double noundef %i.ig, double noundef %.0.i175, double noundef %i.ir) ; 0 uses
  br label %bb.i

.lr.ph220:                                        ; preds = %.lr.ph220.prol.loopexit, %.lr.ph220
  %indvars.iv252 = phi i64 [ %indvars.iv.next253.3, %.lr.ph220 ], [ %indvars.iv252.unr, %.lr.ph220.prol.loopexit ] ; 7 uses
  %.1219 = phi float [ %i.ko, %.lr.ph220 ], [ %.1219.unr, %.lr.ph220.prol.loopexit ]
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv252
  %i.iu = load float, ptr %i.it, align 4, !tbaa !69
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv252
  %i.iw = load float, ptr %i.iv, align 4, !tbaa !69
  %i.ix = fneg float %i.iw
  %i.iy = fmul float %i.da, %i.ix
  %i.iz = tail call float @llvm.fmuladd.f32(float %i.cw, float %i.iu, float %i.iy)
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv252
  %i.jb = load float, ptr %i.ja, align 4, !tbaa !69
  %i.jc = fsub float %i.iz, %i.jb                 ; 2 uses
  %i.jd = fmul float %i.jc, %i.jc
  %i.je = fadd float %.1219, %i.jd
  %indvars.iv.next253 = add nuw nsw i64 %indvars.iv252, 1 ; 3 uses
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next253
  %i.jg = load float, ptr %i.jf, align 4, !tbaa !69
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next253
  %i.ji = load float, ptr %i.jh, align 4, !tbaa !69
  %i.jj = fneg float %i.ji
  %i.jk = fmul float %i.da, %i.jj
  %i.jl = tail call float @llvm.fmuladd.f32(float %i.cw, float %i.jg, float %i.jk)
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next253
  %i.jn = load float, ptr %i.jm, align 4, !tbaa !69
  %i.jo = fsub float %i.jl, %i.jn                 ; 2 uses
  %i.jp = fmul float %i.jo, %i.jo
  %i.jq = fadd float %i.je, %i.jp
  %indvars.iv.next253.1 = add nuw nsw i64 %indvars.iv252, 2 ; 3 uses
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next253.1
  %i.js = load float, ptr %i.jr, align 4, !tbaa !69
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next253.1
  %i.ju = load float, ptr %i.jt, align 4, !tbaa !69
  %i.jv = fneg float %i.ju
  %i.jw = fmul float %i.da, %i.jv
  %i.jx = tail call float @llvm.fmuladd.f32(float %i.cw, float %i.js, float %i.jw)
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next253.1
  %i.jz = load float, ptr %i.jy, align 4, !tbaa !69
  %i.ka = fsub float %i.jx, %i.jz                 ; 2 uses
  %i.kb = fmul float %i.ka, %i.ka
  %i.kc = fadd float %i.jq, %i.kb
  %indvars.iv.next253.2 = add nuw nsw i64 %indvars.iv252, 3 ; 3 uses
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next253.2
  %i.ke = load float, ptr %i.kd, align 4, !tbaa !69
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next253.2
  %i.kg = load float, ptr %i.kf, align 4, !tbaa !69
  %i.kh = fneg float %i.kg
  %i.ki = fmul float %i.da, %i.kh
  %i.kj = tail call float @llvm.fmuladd.f32(float %i.cw, float %i.ke, float %i.ki)
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next253.2
  %i.kl = load float, ptr %i.kk, align 4, !tbaa !69
  %i.km = fsub float %i.kj, %i.kl                 ; 2 uses
  %i.kn = fmul float %i.km, %i.km
  %i.ko = fadd float %i.kc, %i.kn                 ; 2 uses
  %indvars.iv.next253.3 = add nuw nsw i64 %indvars.iv252, 4 ; 2 uses
  %exitcond256.not.3 = icmp eq i64 %indvars.iv.next253.3, %wide.trip.count255
  br i1 %exitcond256.not.3, label %._crit_edge.loopexit, label %.lr.ph220, !llvm.loop !201

._crit_edge.loopexit:                             ; preds = %.lr.ph220, %.lr.ph220.prol.loopexit
  %.lcssa303 = phi float [ %.lcssa303.unr, %.lr.ph220.prol.loopexit ], [ %i.ko, %.lr.ph220 ]
  %i.kp = fpext float %.lcssa303 to double
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader198
  %.1.lcssa = phi double [ 0.000000e+00, %.preheader198 ], [ %i.kp, %._crit_edge.loopexit ] ; 2 uses
  %i.kq = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, double noundef %.1.lcssa, double noundef 0.000000e+00) ; 0 uses
  %puts168 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  %i.kr = fdiv float 1.000000e+00, %i.cw          ; 3 uses
  %i.ks = fpext float %i.kr to double
  %i.kt = fcmp ugt float %i.kr, 0.000000e+00
  br i1 %i.kt, label %bb.g, label %_ZL7calc_dgff.exit178

bb.g:                                             ; preds = %._crit_edge
  %i.ku = fmul double %i.ci, f0x3F81072C483AF26D
  %i.kv = fptrunc double %i.ku to float           ; 2 uses
  %i.kw = fpext float %i.kv to double
  %i.kx = fmul float %i.kr, %i.kv
  %i.ky = fpext float %i.kx to double
  %i.kz = fdiv double %i.ky, f0x3FD989BA751137D3
  %i.la = tail call double @log(double noundef %i.kz) #24
  %i.lb = fmul double %i.la, %i.kw
  %i.lc = fptrunc double %i.lb to float
  %i.ld = fpext float %i.lc to double
  br label %_ZL7calc_dgff.exit178

_ZL7calc_dgff.exit178:                            ; preds = %._crit_edge, %bb.g
  %.0.i177 = phi double [ %i.ld, %bb.g ], [ -6.660000e+02, %._crit_edge ]
  %i.le = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, double noundef %i.cx, double noundef %i.ks, double noundef %.0.i177, double noundef %.1.lcssa) ; 0 uses
  %i.lf = fpext float %i.da to double
  %i.lg = fdiv float 1.000000e+00, %i.da          ; 3 uses
  %i.lh = fpext float %i.lg to double
  %i.li = fcmp ugt float %i.lg, 0.000000e+00
  br i1 %i.li, label %bb.h, label %_ZL7calc_dgff.exit180

bb.h:                                             ; preds = %_ZL7calc_dgff.exit178
  %i.lj = fmul double %i.ci, f0x3F81072C483AF26D
  %i.lk = fptrunc double %i.lj to float           ; 2 uses
  %i.ll = fpext float %i.lk to double
  %i.lm = fmul float %i.lg, %i.lk
  %i.ln = fpext float %i.lm to double
  %i.lo = fdiv double %i.ln, f0x3FD989BA751137D3
  %i.lp = tail call double @log(double noundef %i.lo) #24
  %i.lq = fmul double %i.lp, %i.ll
  %i.lr = fptrunc double %i.lq to float
  %i.ls = fpext float %i.lr to double
  br label %_ZL7calc_dgff.exit180

_ZL7calc_dgff.exit180:                            ; preds = %_ZL7calc_dgff.exit178, %bb.h
  %.0.i179 = phi double [ %i.ls, %bb.h ], [ -6.660000e+02, %_ZL7calc_dgff.exit178 ]
  %i.lt = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, double noundef %i.lf, double noundef %i.lh, double noundef %.0.i179) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %_ZL7calc_dgff.exit176, %_ZL7calc_dgff.exit180, %.critedge._crit_edge
  %i.lu = fcmp ogt double %i.cn, 0.000000e+00
  br i1 %i.lu, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.lv = fmul double %.0156.lcssa, 2.000000e+00
  %i.lw = fdiv double %i.lv, %i.cn
end_hunk_0
