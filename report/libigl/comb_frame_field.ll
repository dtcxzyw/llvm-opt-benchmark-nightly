Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/comb_frame_field?download=true
inline.NumInlined: 1184
inline.NumDeleted: 657
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN3igl16comb_frame_fieldIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELi3ELi0ELin1ELi3EEES3_EEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERKNS5_IT1_EESH_SH_SH_RNS1_15PlainObjectBaseISE_EESK_:bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %11, i64 80
  %i.q = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.s = getelementptr inbounds nuw i8, ptr %11, i64 88
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.e

._crit_edge:                                      ; preds = %.lr.ph.preheader.i.i, %.preheader
  %i.x = load ptr, ptr %10, align 8, !tbaa !14
  call void @free(ptr noundef %i.x) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  %i.y = load ptr, ptr %9, align 8, !tbaa !14
  call void @free(ptr noundef %i.y) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  %i.z = load ptr, ptr %8, align 8, !tbaa !14
  call void @free(ptr noundef %i.z) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  ret void

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.e:                                             ; preds = %.lr.ph, %.lr.ph.preheader.i.i
  %i.ab = phi i64 [ %i.f, %.lr.ph ], [ %i.hn, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.ac = phi i64 [ 0, %.lr.ph ], [ %i.hm, %.lr.ph.preheader.i.i ] ; 7 uses
  %.064271 = phi i32 [ 0, %.lr.ph ], [ %i.hl, %.lr.ph.preheader.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  %i.ad = load ptr, ptr %2, align 8, !tbaa !14, !noalias !41
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ac ; 3 uses
  %i.af = load double, ptr %i.ae, align 8, !tbaa !16, !noalias !42 ; 6 uses
  store double %i.af, ptr %11, align 16, !tbaa !16, !noalias !42
  %i.ag = getelementptr [8 x i8], ptr %i.ae, i64 %i.ab
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !16, !noalias !42 ; 6 uses
  store double %i.ah, ptr %i.h, align 16, !tbaa !16, !noalias !42
  %.idx.i.i = shl i64 %i.ab, 4
  %i.ai = getelementptr i8, ptr %i.ae, i64 %.idx.i.i
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !16, !noalias !42 ; 4 uses
  store double %i.aj, ptr %i.i, align 16, !tbaa !16, !noalias !42
  %i.ak = fneg double %i.af
  store double %i.ak, ptr %i.j, align 8, !tbaa !16
  %i.al = fneg double %i.ah
  store double %i.al, ptr %i.k, align 8, !tbaa !16
  %i.am = fneg double %i.aj                       ; 3 uses
  store double %i.am, ptr %i.l, align 8, !tbaa !16
  %i.an = load ptr, ptr %3, align 8, !tbaa !14, !noalias !43
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.ac ; 3 uses
  %i.ap = load i64, ptr %i.n, align 8, !tbaa !13  ; 2 uses
  %i.aq = load double, ptr %i.ao, align 8, !tbaa !16 ; 6 uses
  store double %i.aq, ptr %i.m, align 16, !tbaa !16
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.ap
  %i.as = load double, ptr %i.ar, align 8, !tbaa !16 ; 6 uses
  store double %i.as, ptr %i.o, align 16, !tbaa !16
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i94 = shl nsw i64 %i.ap, 4
  %i.at = getelementptr inbounds i8, ptr %i.ao, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i94
  %i.au = load double, ptr %i.at, align 8, !tbaa !16 ; 4 uses
  store double %i.au, ptr %i.p, align 16, !tbaa !16
  %i.av = fneg double %i.aq
  store double %i.av, ptr %i.q, align 8, !tbaa !16
  %i.aw = fneg double %i.as
  store double %i.aw, ptr %i.r, align 8, !tbaa !16
  %i.ax = fneg double %i.au                       ; 3 uses
  store double %i.ax, ptr %i.s, align 8, !tbaa !16
  %i.ay = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #15
          to label %.lr.ph.preheader.i.i unwind label %bb.f ; 9 uses

.lr.ph.preheader.i.i:                             ; preds = %bb.e
  %.ptr265.ptr = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ay, i8 0, i64 32, i1 false)
  %i.az = load ptr, ptr %9, align 8, !tbaa !14, !noalias !44
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.ac ; 6 uses
  %i.bb = load ptr, ptr %4, align 8, !tbaa !14, !noalias !45
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.ac ; 3 uses
  %i.bd = load i64, ptr %i.t, align 8, !tbaa !13  ; 2 uses
  %i.be = load i64, ptr %i.a, align 8, !tbaa !13  ; 2 uses
  %i.bf = load double, ptr %i.bc, align 8, !tbaa !16 ; 2 uses
  %i.bg = load double, ptr %i.ba, align 8, !tbaa !16 ; 2 uses
  %i.bh = fmul double %i.bf, %i.bg
  %i.bi = getelementptr [8 x i8], ptr %i.ba, i64 %i.bd ; 4 uses
  %i.bj = getelementptr [8 x i8], ptr %i.bc, i64 %i.be
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !16 ; 2 uses
  %i.bl = load double, ptr %i.bi, align 8, !tbaa !16 ; 2 uses
  %i.bm = fmul double %i.bk, %i.bl
  %.idx.i.i.i.i.i.i.i.i = shl i64 %i.bd, 4
  %i.bn = getelementptr i8, ptr %i.ba, i64 %.idx.i.i.i.i.i.i.i.i ; 4 uses
  %.idx1.i.i.i.i.i.i.i.i = shl i64 %i.be, 4
  %i.bo = getelementptr i8, ptr %i.bc, i64 %.idx1.i.i.i.i.i.i.i.i
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !16 ; 2 uses
  %i.bq = load double, ptr %i.bn, align 8, !tbaa !16 ; 2 uses
  %i.br = fmul double %i.bp, %i.bq
  %i.bs = fadd double %i.bm, %i.br
  %i.bt = fadd double %i.bh, %i.bs
  %i.bu = load ptr, ptr %8, align 8, !tbaa !14, !noalias !46
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.ac ; 6 uses
  %i.bw = load i64, ptr %i.u, align 8, !tbaa !13  ; 2 uses
  %i.bx = load double, ptr %i.bv, align 8, !tbaa !16 ; 2 uses
  %i.by = fmul double %i.bf, %i.bx
  %i.bz = getelementptr [8 x i8], ptr %i.bv, i64 %i.bw ; 4 uses
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !16 ; 2 uses
  %i.cb = fmul double %i.bk, %i.ca
  %.idx.i.i.i.i.i.i.i.i107 = shl i64 %i.bw, 4
  %i.cc = getelementptr i8, ptr %i.bv, i64 %.idx.i.i.i.i.i.i.i.i107 ; 4 uses
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !16 ; 2 uses
  %i.ce = fmul double %i.bp, %i.cd
  %i.cf = fadd double %i.cb, %i.ce
  %i.cg = fadd double %i.by, %i.cf
  %i.ch = call double @atan2(double noundef %i.bt, double noundef %i.cg) #14 ; 4 uses
  %i.ci = fmul double %i.bg, %i.af
  %i.cj = fmul double %i.bl, %i.ah
  %i.ck = fmul double %i.bq, %i.aj
  %i.cl = fadd double %i.cj, %i.ck
  %i.cm = fadd double %i.ci, %i.cl
  %i.cn = fmul double %i.af, %i.bx
  %i.co = fmul double %i.ah, %i.ca
  %i.cp = fmul double %i.aj, %i.cd
  %i.cq = fadd double %i.co, %i.cp
  %i.cr = fadd double %i.cn, %i.cq
  %i.cs = call double @atan2(double noundef %i.cm, double noundef %i.cr) #14
  %i.ct = fsub double %i.cs, %i.ch                ; 3 uses
  %i.cu = fcmp olt double %i.ct, 0.000000e+00
  %i.cv = fdiv double %i.ct, f0xC01921FB54442D18
  %i.cw = call double @llvm.ceil.f64(double %i.cv)
  %i.cx = select i1 %i.cu, double %i.cw, double 0.000000e+00
  %i.cy = call double @llvm.fmuladd.f64(double %i.cx, double f0x401921FB54442D18, double %i.ct)
  %i.cz = call double @fmod(double noundef %i.cy, double noundef f0x401921FB54442D18) #14 ; 5 uses
  store double %i.cz, ptr %i.ay, align 8, !tbaa !16
  %i.da = load double, ptr %i.ba, align 8, !tbaa !16
  %i.db = load double, ptr %i.bi, align 8, !tbaa !16
  %i.dc = load double, ptr %i.bn, align 8, !tbaa !16
  %i.dd = fmul double %i.dc, %i.am
  %i.de = fmul double %i.ah, %i.db
  %i.df = fsub double %i.dd, %i.de
  %i.dg = fmul double %i.af, %i.da
  %i.dh = fsub double %i.df, %i.dg
  %i.di = load double, ptr %i.bv, align 8, !tbaa !16
  %i.dj = load double, ptr %i.bz, align 8, !tbaa !16
  %i.dk = load double, ptr %i.cc, align 8, !tbaa !16
  %i.dl = fmul double %i.dk, %i.am
  %i.dm = fmul double %i.ah, %i.dj
  %i.dn = fsub double %i.dl, %i.dm
  %i.do = fmul double %i.af, %i.di
  %i.dp = fsub double %i.dn, %i.do
  %i.dq = call double @atan2(double noundef %i.dh, double noundef %i.dp) #14
  %i.dr = fsub double %i.dq, %i.ch                ; 3 uses
  %i.ds = fcmp olt double %i.dr, 0.000000e+00
  %i.dt = fdiv double %i.dr, f0xC01921FB54442D18
  %i.du = call double @llvm.ceil.f64(double %i.dt)
  %i.dv = select i1 %i.ds, double %i.du, double 0.000000e+00
  %i.dw = call double @llvm.fmuladd.f64(double %i.dv, double f0x401921FB54442D18, double %i.dr)
  %i.dx = call double @fmod(double noundef %i.dw, double noundef f0x401921FB54442D18) #14 ; 5 uses
  store double %i.dx, ptr %.ptr265.ptr, align 8, !tbaa !16
  %i.dy = load double, ptr %i.ba, align 8, !tbaa !16
  %i.dz = fmul double %i.dy, %i.aq
  %i.ea = load double, ptr %i.bi, align 8, !tbaa !16
  %i.eb = fmul double %i.ea, %i.as
  %i.ec = load double, ptr %i.bn, align 8, !tbaa !16
  %i.ed = fmul double %i.ec, %i.au
  %i.ee = fadd double %i.eb, %i.ed
  %i.ef = fadd double %i.dz, %i.ee
  %i.eg = load double, ptr %i.bv, align 8, !tbaa !16
  %i.eh = fmul double %i.aq, %i.eg
  %i.ei = load double, ptr %i.bz, align 8, !tbaa !16
  %i.ej = fmul double %i.as, %i.ei
  %i.ek = load double, ptr %i.cc, align 8, !tbaa !16
  %i.el = fmul double %i.au, %i.ek
  %i.em = fadd double %i.ej, %i.el
  %i.en = fadd double %i.eh, %i.em
  %i.eo = call double @atan2(double noundef %i.ef, double noundef %i.en) #14
  %i.ep = fsub double %i.eo, %i.ch                ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 3 uses
  %i.er = fcmp olt double %i.ep, 0.000000e+00
  %i.es = fdiv double %i.ep, f0xC01921FB54442D18
  %i.et = call double @llvm.ceil.f64(double %i.es)
  %i.eu = select i1 %i.er, double %i.et, double 0.000000e+00
  %i.ev = call double @llvm.fmuladd.f64(double %i.eu, double f0x401921FB54442D18, double %i.ep)
  %i.ew = call double @fmod(double noundef %i.ev, double noundef f0x401921FB54442D18) #14 ; 5 uses
  store double %i.ew, ptr %i.eq, align 8, !tbaa !16
  %i.ex = load double, ptr %i.ba, align 8, !tbaa !16
  %i.ey = load double, ptr %i.bi, align 8, !tbaa !16
  %i.ez = load double, ptr %i.bn, align 8, !tbaa !16
  %i.fa = fmul double %i.ez, %i.ax
  %i.fb = fmul double %i.as, %i.ey
  %i.fc = fsub double %i.fa, %i.fb
  %i.fd = fmul double %i.aq, %i.ex
  %i.fe = fsub double %i.fc, %i.fd
  %i.ff = load double, ptr %i.bv, align 8, !tbaa !16
  %i.fg = load double, ptr %i.bz, align 8, !tbaa !16
  %i.fh = load double, ptr %i.cc, align 8, !tbaa !16
  %i.fi = fmul double %i.fh, %i.ax
  %i.fj = fmul double %i.as, %i.fg
  %i.fk = fsub double %i.fi, %i.fj
  %i.fl = fmul double %i.aq, %i.ff
  %i.fm = fsub double %i.fk, %i.fl
  %i.fn = call double @atan2(double noundef %i.fe, double noundef %i.fm) #14
  %i.fo = fsub double %i.fn, %i.ch                ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ay, i64 24 ; 3 uses
  %i.fq = fcmp olt double %i.fo, 0.000000e+00
  %i.fr = fdiv double %i.fo, f0xC01921FB54442D18
  %i.fs = call double @llvm.ceil.f64(double %i.fr)
  %i.ft = select i1 %i.fq, double %i.fs, double 0.000000e+00
  %i.fu = call double @llvm.fmuladd.f64(double %i.ft, double f0x401921FB54442D18, double %i.fo)
  %i.fv = call double @fmod(double noundef %i.fu, double noundef f0x401921FB54442D18) #14 ; 3 uses
  store double %i.fv, ptr %i.fp, align 8, !tbaa !16
  %i.fw = fcmp olt double %i.cz, %i.dx            ; 2 uses
  %spec.select.i.i125 = select i1 %i.fw, ptr %.ptr265.ptr, ptr %i.ay
  %i.fx = select i1 %i.fw, double %i.dx, double %i.cz ; 2 uses
  %i.fy = fcmp olt double %i.fx, %i.ew            ; 2 uses
  %spec.select.i.i125.1 = select i1 %i.fy, ptr %i.eq, ptr %spec.select.i.i125
  %i.fz = select i1 %i.fy, double %i.ew, double %i.fx
  %i.ga = fcmp olt double %i.fz, %i.fv
  %spec.select.i.i125.2 = select i1 %i.ga, ptr %i.fp, ptr %spec.select.i.i125.1
  %i.gb = fcmp olt double %i.dx, %i.cz            ; 2 uses
  %spec.select.i.i = select i1 %i.gb, ptr %.ptr265.ptr, ptr %i.ay
  %i.gc = select i1 %i.gb, double %i.dx, double %i.cz ; 2 uses
  %i.gd = fcmp olt double %i.ew, %i.gc            ; 2 uses
  %spec.select.i.i.1 = select i1 %i.gd, ptr %i.eq, ptr %spec.select.i.i
  %i.ge = select i1 %i.gd, double %i.ew, double %i.gc
  %i.gf = fcmp olt double %i.fv, %i.ge
  %spec.select.i.i.2 = select i1 %i.gf, ptr %i.fp, ptr %spec.select.i.i.1
  %i.gg = ptrtoint ptr %spec.select.i.i.2 to i64
  %i.gh = ptrtoint ptr %i.ay to i64               ; 2 uses
  %i.gi = sub i64 %i.gg, %i.gh
  %i.gj = ptrtoint ptr %spec.select.i.i125.2 to i64
  %i.gk = sub i64 %i.gj, %i.gh
  %i.gl = shl i64 %i.gi, 29
  %i.gm = ashr exact i64 %i.gl, 29
  %i.gn = getelementptr inbounds i8, ptr %11, i64 %i.gm ; 3 uses
  %i.go = load ptr, ptr %6, align 8, !tbaa !14, !noalias !47
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %i.ac ; 3 uses
  %i.gq = load i64, ptr %i.v, align 8, !tbaa !13  ; 2 uses
  %i.gr = load double, ptr %i.gn, align 8, !tbaa !16
  store double %i.gr, ptr %i.gp, align 8, !tbaa !16
  %i.gs = getelementptr inbounds [8 x i8], ptr %i.gp, i64 %i.gq
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gn, i64 32
  %i.gu = load double, ptr %i.gt, align 8, !tbaa !16
  store double %i.gu, ptr %i.gs, align 8, !tbaa !16
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i = shl nsw i64 %i.gq, 4
  %i.gv = getelementptr inbounds i8, ptr %i.gp, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gn, i64 64
  %i.gx = load double, ptr %i.gw, align 8, !tbaa !16
  store double %i.gx, ptr %i.gv, align 8, !tbaa !16
  %i.gy = shl i64 %i.gk, 29
  %i.gz = ashr exact i64 %i.gy, 29
  %i.ha = getelementptr inbounds i8, ptr %11, i64 %i.gz ; 3 uses
  %i.hb = load ptr, ptr %7, align 8, !tbaa !14, !noalias !48
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.hb, i64 %i.ac ; 3 uses
  %i.hd = load i64, ptr %i.w, align 8, !tbaa !13  ; 2 uses
  %i.he = load double, ptr %i.ha, align 8, !tbaa !16
  store double %i.he, ptr %i.hc, align 8, !tbaa !16
  %i.hf = getelementptr inbounds [8 x i8], ptr %i.hc, i64 %i.hd
  %i.hg = getelementptr inbounds nuw i8, ptr %i.ha, i64 32
  %i.hh = load double, ptr %i.hg, align 8, !tbaa !16
  store double %i.hh, ptr %i.hf, align 8, !tbaa !16
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i128 = shl nsw i64 %i.hd, 4
  %i.hi = getelementptr inbounds i8, ptr %i.hc, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i128
  %i.hj = getelementptr inbounds nuw i8, ptr %i.ha, i64 64
  %i.hk = load double, ptr %i.hj, align 8, !tbaa !16
  store double %i.hk, ptr %i.hi, align 8, !tbaa !16
  call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef 32) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  %i.hl = add i32 %.064271, 1                     ; 2 uses
  %i.hm = zext i32 %i.hl to i64                   ; 2 uses
  %i.hn = load i64, ptr %i.e, align 8, !tbaa !13  ; 2 uses
  %i.ho = icmp sgt i64 %i.hn, %i.hm
  br i1 %i.ho, label %bb.e, label %._crit_edge, !llvm.loop !40

bb.f:                                             ; preds = %bb.e
  %i.hp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %.pn80.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.hp, %bb.f ], [ %i.aa, %bb.d ]
  %i.hq = load ptr, ptr %10, align 8, !tbaa !14
  call void @free(ptr noundef %i.hq) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  %i.hr = load ptr, ptr %9, align 8, !tbaa !14
  call void @free(ptr noundef %i.hr) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  %i.hs = load ptr, ptr %8, align 8, !tbaa !14
  call void @free(ptr noundef %i.hs) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  resume { ptr, i32 } %.pn80.pn.pn.pn.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

declare void @_ZN3igl11local_basisIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELi3ELi0ELin1ELi3EEES3_S3_S3_EEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERNS1_15PlainObjectBaseIT1_EERNSE_IT2_EERNSE_IT3_EE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  %i.b = icmp eq i64 %2, 0
  %or.cond.i = or i1 %i.a, %i.b
  br i1 %or.cond.i, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sdiv i64 9223372036854775807, %2
  %i.d = icmp sgt i64 %1, %i.c
  br i1 %i.d, label %bb.c, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @__cxa_allocate_exception(i64 8) #14 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.e, align 8, !tbaa !19
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #17
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit: ; preds = %bb.a, %bb.b
  %i.f = mul nsw i64 %2, %1                       ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !13
  %i.i = mul nsw i64 %i.h, 3
  %.not.i = icmp eq i64 %i.f, %i.i
  br i1 %.not.i, label %_ZN5Eigen12DenseStorageIdLin1ELin1ELi3ELi0EE6resizeElll.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit
  %i.j = load ptr, ptr %0, align 8, !tbaa !14
  tail call void @free(ptr noundef %i.j) #14
  %i.k = icmp sgt i64 %i.f, 0
  br i1 %i.k, label %bb.e, label %.sink.split.i

bb.e:                                             ; preds = %bb.d
  %i.l = icmp samesign ugt i64 %i.f, 2305843009213693951
  br i1 %i.l, label %bb.f, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #14 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.m, align 8, !tbaa !19
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #17
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i: ; preds = %bb.e
  %i.n = shl nuw i64 %i.f, 3
  %i.o = tail call noalias ptr @malloc(i64 noundef %i.n) #18 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.g, label %.sink.split.i

bb.g:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i
  %i.q = tail call ptr @__cxa_allocate_exception(i64 8) #14 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.q, align 8, !tbaa !19
  tail call void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #17
  unreachable

.sink.split.i:                                    ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i, %bb.d
  %.sink.i = phi ptr [ %i.o, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i ], [ null, %bb.d ]
  store ptr %.sink.i, ptr %0, align 8, !tbaa !14
  br label %_ZN5Eigen12DenseStorageIdLin1ELin1ELi3ELi0EE6resizeElll.exit

_ZN5Eigen12DenseStorageIdLin1ELin1ELi3ELi0EE6resizeElll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, %.sink.split.i
  store i64 %1, ptr %i.g, align 8, !tbaa !13
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atan2(double noundef, double noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @fmod(double noundef, double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl16comb_frame_fieldIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES3_EEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERKNS5_IT1_EESH_SH_SH_RNS1_15PlainObjectBaseISE_EESK_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.Eigen::Matrix.48", align 8  ; 11 uses
  %9 = alloca %"class.Eigen::Matrix.48", align 8  ; 9 uses
  %10 = alloca %"class.Eigen::Matrix.48", align 8 ; 7 uses
  %11 = alloca %"class.Eigen::Matrix.4", align 16 ; 25 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  invoke void @_ZN3igl11local_basisIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES3_S3_S3_EEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERNS1_15PlainObjectBaseIT1_EERNSE_IT2_EERNSE_IT3_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 %1, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !21   ; 3 uses
  %i.c = icmp sgt i64 %i.b, 3074457345618258602
  br i1 %i.c, label %.invoke, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i: ; preds = %bb.b
  %i.d = mul nsw i64 %i.b, 3
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %i.d, i64 noundef %i.b, i64 noundef 3)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit unwind label %bb.c

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !21   ; 3 uses
end_hunk_0
