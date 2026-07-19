inline.NumInlined: 4879
inline.NumDeleted: 1465
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 43
loop-unroll.NumUnrolled: 53
begin_hunk_0_@_ZL18stbsp__real_to_strPPKcPjPcPidj:bb.a
  %i.ae = and i64 %i.ad, -134217728
  %i.af = bitcast i64 %i.ae to double             ; 3 uses
  %i.ag = fsub double %i.e, %i.ac                 ; 2 uses
  %i.ah = fsub double %i.y, %i.af                 ; 2 uses
  %i.ai = fneg double %i.z
  %i.aj = tail call double @llvm.fmuladd.f64(double %i.ac, double %i.af, double %i.ai)
  %i.ak = tail call double @llvm.fmuladd.f64(double %i.ac, double %i.ah, double %i.aj)
  %i.al = tail call double @llvm.fmuladd.f64(double %i.ag, double %i.af, double %i.ak)
  %i.am = tail call double @llvm.fmuladd.f64(double %i.ag, double %i.ah, double %i.al)
  br label %_ZL23stbsp__raise_to_power10PdS_di.exit

bb.h:                                             ; preds = %bb.f
  %i.an = icmp sgt i32 %i.u, 18
  %spec.select.i = tail call i32 @llvm.abs.i32(i32 range(i32 -524270, 1048595) %i.v, i1 true) ; 2 uses
  %i.ao = mul nuw nsw i32 %spec.select.i, 713
  %i.ap = lshr i32 %i.ao, 14                      ; 3 uses
  %spec.store.select.i = tail call i32 @llvm.umin.i32(i32 %i.ap, i32 13) ; 3 uses
  %.neg.i = mul nsw i32 %spec.store.select.i, -23
  %i.aq = add nsw i32 %.neg.i, %spec.select.i     ; 5 uses
  %.not235.i = icmp eq i32 %i.aq, 0               ; 2 uses
  br i1 %i.an, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  br i1 %.not235.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ar = add nsw i32 %i.aq, -1
  %i.as = sext i32 %i.ar to i64                   ; 2 uses
  %i.at = getelementptr inbounds [8 x i8], ptr @_ZL13stbsp__negbot, i64 %i.as
  %i.au = load double, ptr %i.at, align 8         ; 3 uses
  %i.av = fmul double %i.e, %i.au                 ; 2 uses
  %i.aw = bitcast double %i.e to i64
  %i.ax = and i64 %i.aw, 9223372036720558080
  %i.ay = bitcast i64 %i.ax to double             ; 3 uses
  %i.az = bitcast double %i.au to i64
  %i.ba = and i64 %i.az, -134217728
  %i.bb = bitcast i64 %i.ba to double             ; 3 uses
  %i.bc = fsub double %i.e, %i.ay                 ; 2 uses
  %i.bd = fsub double %i.au, %i.bb                ; 2 uses
  %i.be = fneg double %i.av
  %i.bf = tail call double @llvm.fmuladd.f64(double %i.ay, double %i.bb, double %i.be)
  %i.bg = tail call double @llvm.fmuladd.f64(double %i.ay, double %i.bd, double %i.bf)
  %i.bh = tail call double @llvm.fmuladd.f64(double %i.bc, double %i.bb, double %i.bg)
  %i.bi = tail call double @llvm.fmuladd.f64(double %i.bc, double %i.bd, double %i.bh)
  %i.bj = getelementptr inbounds [8 x i8], ptr @_ZL16stbsp__negboterr, i64 %i.as
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !20
  %i.bl = tail call double @llvm.fmuladd.f64(double %i.e, double %i.bk, double %i.bi)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0.i = phi double [ %i.bl, %bb.j ], [ 0.000000e+00, %bb.i ] ; 3 uses
  %i.bm = phi double [ %i.av, %bb.j ], [ %i.e, %bb.i ] ; 3 uses
  %.not236.i = icmp eq i32 %i.ap, 0
  br i1 %.not236.i, label %_ZL23stbsp__raise_to_power10PdS_di.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bn = fadd double %.0.i, %i.bm                ; 5 uses
  %i.bo = add nsw i32 %spec.store.select.i, -1
  %i.bp = zext nneg i32 %i.bo to i64              ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr @_ZL13stbsp__negtop, i64 %i.bp
  %i.br = load double, ptr %i.bq, align 8         ; 4 uses
  %i.bs = bitcast double %i.bn to i64
  %i.bt = and i64 %i.bs, -134217728
  %i.bu = bitcast i64 %i.bt to double             ; 3 uses
  %i.bv = bitcast double %i.br to i64
  %i.bw = and i64 %i.bv, -134217728
  %i.bx = bitcast i64 %i.bw to double             ; 3 uses
  %i.by = fsub double %i.bn, %i.bm
  %i.bz = fsub double %.0.i, %i.by
  %i.ca = fmul double %i.bn, %i.br                ; 2 uses
  %i.cb = fsub double %i.bn, %i.bu                ; 2 uses
  %i.cc = fsub double %i.br, %i.bx                ; 2 uses
  %i.cd = fneg double %i.ca
  %i.ce = tail call double @llvm.fmuladd.f64(double %i.bu, double %i.bx, double %i.cd)
  %i.cf = tail call double @llvm.fmuladd.f64(double %i.bu, double %i.cc, double %i.ce)
  %i.cg = tail call double @llvm.fmuladd.f64(double %i.cb, double %i.bx, double %i.cf)
  %i.ch = tail call double @llvm.fmuladd.f64(double %i.cb, double %i.cc, double %i.cg)
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr @_ZL16stbsp__negtoperr, i64 %i.bp
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !20
  %i.ck = fmul double %i.bz, %i.br
  %i.cl = tail call double @llvm.fmuladd.f64(double %i.bn, double %i.cj, double %i.ck)
  %i.cm = fadd double %i.cl, %i.ch
  br label %_ZL23stbsp__raise_to_power10PdS_di.exit

bb.m:                                             ; preds = %bb.h
  br i1 %.not235.i, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %spec.store.select2.i = tail call i32 @llvm.smin.i32(i32 %i.aq, i32 22) ; 2 uses
  %i.cn = sext i32 %spec.store.select2.i to i64
  %i.co = getelementptr inbounds [8 x i8], ptr @_ZL10stbsp__bot, i64 %i.cn
  %i.cp = load double, ptr %i.co, align 8         ; 3 uses
  %i.cq = fmul double %i.e, %i.cp                 ; 4 uses
  %i.cr = bitcast double %i.e to i64
  %i.cs = and i64 %i.cr, 9223372036720558080
  %i.ct = bitcast i64 %i.cs to double             ; 3 uses
  %i.cu = bitcast double %i.cp to i64
  %i.cv = and i64 %i.cu, -134217728
  %i.cw = bitcast i64 %i.cv to double             ; 3 uses
  %i.cx = fsub double %i.e, %i.ct                 ; 2 uses
  %i.cy = fsub double %i.cp, %i.cw                ; 2 uses
  %i.cz = fneg double %i.cq
  %i.da = tail call double @llvm.fmuladd.f64(double %i.ct, double %i.cw, double %i.cz)
  %i.db = tail call double @llvm.fmuladd.f64(double %i.ct, double %i.cy, double %i.da)
  %i.dc = tail call double @llvm.fmuladd.f64(double %i.cx, double %i.cw, double %i.db)
  %i.dd = tail call double @llvm.fmuladd.f64(double %i.cx, double %i.cy, double %i.dc) ; 3 uses
  %.not233.i = icmp slt i32 %i.aq, 23
  br i1 %.not233.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.de = sub nsw i32 %i.aq, %spec.store.select2.i
  %i.df = fadd double %i.cq, %i.dd                ; 4 uses
  %i.dg = zext nneg i32 %i.de to i64
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr @_ZL10stbsp__bot, i64 %i.dg
  %i.di = load double, ptr %i.dh, align 8         ; 4 uses
  %i.dj = bitcast double %i.df to i64
  %i.dk = and i64 %i.dj, -134217728
  %i.dl = bitcast i64 %i.dk to double             ; 3 uses
  %i.dm = bitcast double %i.di to i64
  %i.dn = and i64 %i.dm, -134217728
  %i.do = bitcast i64 %i.dn to double             ; 3 uses
  %i.dp = fsub double %i.df, %i.cq
  %i.dq = fsub double %i.dd, %i.dp
  %i.dr = fmul double %i.df, %i.di                ; 2 uses
  %i.ds = fsub double %i.df, %i.dl                ; 2 uses
  %i.dt = fsub double %i.di, %i.do                ; 2 uses
  %i.du = fneg double %i.dr
  %i.dv = tail call double @llvm.fmuladd.f64(double %i.dl, double %i.do, double %i.du)
  %i.dw = tail call double @llvm.fmuladd.f64(double %i.dl, double %i.dt, double %i.dv)
  %i.dx = tail call double @llvm.fmuladd.f64(double %i.ds, double %i.do, double %i.dw)
  %i.dy = tail call double @llvm.fmuladd.f64(double %i.ds, double %i.dt, double %i.dx)
  %i.dz = tail call double @llvm.fmuladd.f64(double %i.di, double %i.dq, double %i.dy)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %.1.i = phi double [ %i.dz, %bb.o ], [ %i.dd, %bb.n ], [ 0.000000e+00, %bb.m ] ; 3 uses
  %i.ea = phi double [ %i.dr, %bb.o ], [ %i.cq, %bb.n ], [ %i.e, %bb.m ] ; 3 uses
  %.not234.i = icmp eq i32 %i.ap, 0
  br i1 %.not234.i, label %_ZL23stbsp__raise_to_power10PdS_di.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.eb = fadd double %.1.i, %i.ea                ; 5 uses
  %i.ec = add nsw i32 %spec.store.select.i, -1
  %i.ed = zext nneg i32 %i.ec to i64              ; 2 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr @_ZL10stbsp__top, i64 %i.ed
  %i.ef = load double, ptr %i.ee, align 8         ; 4 uses
  %i.eg = bitcast double %i.eb to i64
  %i.eh = and i64 %i.eg, -134217728
  %i.ei = bitcast i64 %i.eh to double             ; 3 uses
  %i.ej = bitcast double %i.ef to i64
  %i.ek = and i64 %i.ej, -134217728
  %i.el = bitcast i64 %i.ek to double             ; 3 uses
  %i.em = fsub double %i.eb, %i.ea
  %i.en = fsub double %.1.i, %i.em
  %i.eo = fmul double %i.eb, %i.ef                ; 2 uses
  %i.ep = fsub double %i.eb, %i.ei                ; 2 uses
  %i.eq = fsub double %i.ef, %i.el                ; 2 uses
  %i.er = fneg double %i.eo
  %i.es = tail call double @llvm.fmuladd.f64(double %i.ei, double %i.el, double %i.er)
  %i.et = tail call double @llvm.fmuladd.f64(double %i.ei, double %i.eq, double %i.es)
  %i.eu = tail call double @llvm.fmuladd.f64(double %i.ep, double %i.el, double %i.et)
  %i.ev = tail call double @llvm.fmuladd.f64(double %i.ep, double %i.eq, double %i.eu)
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr @_ZL13stbsp__toperr, i64 %i.ed
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !20
  %i.ey = fmul double %i.en, %i.ef
  %i.ez = tail call double @llvm.fmuladd.f64(double %i.eb, double %i.ex, double %i.ey)
  %i.fa = fadd double %i.ez, %i.ev
  br label %_ZL23stbsp__raise_to_power10PdS_di.exit

_ZL23stbsp__raise_to_power10PdS_di.exit:          ; preds = %bb.g, %bb.k, %bb.l, %bb.p, %bb.q
  %.3.i = phi double [ %i.am, %bb.g ], [ %i.cm, %bb.l ], [ %.0.i, %bb.k ], [ %i.fa, %bb.q ], [ %.1.i, %bb.p ] ; 2 uses
  %i.fb = phi double [ %i.z, %bb.g ], [ %i.ca, %bb.l ], [ %i.bm, %bb.k ], [ %i.eo, %bb.q ], [ %i.ea, %bb.p ] ; 2 uses
  %i.fc = fadd double %.3.i, %i.fb                ; 5 uses
  %i.fd = fsub double %i.fc, %i.fb
  %i.fe = fsub double %.3.i, %i.fd
  %i.ff = fptosi double %i.fc to i64              ; 2 uses
  %i.fg = sitofp i64 %i.ff to double              ; 2 uses
  %i.fh = fsub double %i.fc, %i.fg                ; 3 uses
  %i.fi = fsub double %i.fh, %i.fc                ; 2 uses
  %i.fj = fsub double %i.fh, %i.fi
  %i.fk = fsub double %i.fc, %i.fj
  %i.fl = fadd double %i.fi, %i.fg
  %i.fm = fsub double %i.fk, %i.fl
  %i.fn = fadd double %i.fh, %i.fm
  %i.fo = fadd double %i.fe, %i.fn
  %i.fp = fptosi double %i.fo to i64
  %i.fq = add nsw i64 %i.fp, %i.ff                ; 7 uses
  %i.fr = icmp ugt i64 %i.fq, 999999999999999999
  %i.fs = zext i1 %i.fr to i32
  %spec.select = add nsw i32 %i.u, %i.fs          ; 5 uses
  %i.ft = and i32 %5, 134217727
  %i.fu = add nuw nsw i32 %i.ft, 1
  %i.fv = add i32 %spec.select, %5
  %.not110130 = icmp slt i32 %5, 0
  %i.fw = select i1 %.not110130, i32 %i.fu, i32 %i.fv ; 3 uses
  %i.fx = icmp ult i32 %i.fw, 24
  br i1 %i.fx, label %bb.r, label %thread-pre-split

bb.r:                                             ; preds = %_ZL23stbsp__raise_to_power10PdS_di.exit
  %i.fy = icmp ugt i64 %i.fq, 999999999
  %spec.store.select = select i1 %i.fy, i32 10, i32 1
  br label %bb.s

bb.s:                                             ; preds = %bb.t, %bb.r
  %.084 = phi i32 [ %spec.store.select, %bb.r ], [ %7, %bb.t ] ; 4 uses
  %6 = zext nneg i32 %.084 to i64
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr @_ZL13stbsp__powten, i64 %6
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !39 ; 2 uses
  %.not111 = icmp ult i64 %i.fq, %i.ga
  br i1 %.not111, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %7 = add nuw nsw i32 %.084, 1                   ; 2 uses
  %i.gb = icmp eq i32 %7, 20
  br i1 %i.gb, label %thread-pre-split, label %bb.s, !llvm.loop !69

bb.u:                                             ; preds = %bb.s
  %i.gc = icmp ult i32 %i.fw, %.084
  br i1 %i.gc, label %bb.v, label %thread-pre-split

bb.v:                                             ; preds = %bb.u
  %i.gd = sub nuw nsw i32 %.084, %i.fw
  %i.ge = zext nneg i32 %i.gd to i64
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr @_ZL13stbsp__powten, i64 %i.ge
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !39 ; 2 uses
  %i.gh = lshr i64 %i.gg, 1
  %i.gi = add i64 %i.gh, %i.fq                    ; 2 uses
  %.not112 = icmp uge i64 %i.gi, %i.ga
  %i.gj = zext i1 %.not112 to i32
  %spec.select120 = add nsw i32 %spec.select, %i.gj
  %i.gk = udiv i64 %i.gi, %i.gg
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.t, %bb.u, %_ZL23stbsp__raise_to_power10PdS_di.exit, %bb.v
  %.0 = phi i64 [ %i.gk, %bb.v ], [ %i.fq, %bb.u ], [ %i.fq, %_ZL23stbsp__raise_to_power10PdS_di.exit ], [ %i.fq, %bb.t ] ; 4 uses
  %.496 = phi i32 [ %spec.select120, %bb.v ], [ %spec.select, %bb.u ], [ %spec.select, %_ZL23stbsp__raise_to_power10PdS_di.exit ], [ %spec.select, %bb.t ]
  %.not113 = icmp eq i64 %.0, 0
  br i1 %.not113, label %.loopexit, label %thread-pre-split122

thread-pre-split122:                              ; preds = %thread-pre-split
  %i.gl = icmp slt i64 %.0, 4294967296
  br i1 %i.gl, label %._crit_edge, label %.lr.ph142

.lr.ph142:                                        ; preds = %thread-pre-split122, %bb.w
  %i.gm = phi i64 [ %i.go, %bb.w ], [ %.0, %thread-pre-split122 ] ; 4 uses
  %i.gn = urem i64 %i.gm, 1000
  %i.go = udiv i64 %i.gm, 1000                    ; 2 uses
  %.not114 = icmp eq i64 %i.gn, 0
  br i1 %.not114, label %bb.w, label %.loopexit

bb.w:                                             ; preds = %.lr.ph142
  %i.gp = icmp samesign ult i64 %i.gm, 4294967296000
  br i1 %i.gp, label %._crit_edge, label %.lr.ph142, !llvm.loop !70

._crit_edge:                                      ; preds = %bb.w, %thread-pre-split122
  %.lcssa = phi i64 [ %.0, %thread-pre-split122 ], [ %i.go, %bb.w ]
  %i.gq = trunc i64 %.lcssa to i32                ; 3 uses
  %i.gr = urem i32 %i.gq, 1000
  %i.gs = icmp eq i32 %i.gr, 0
  br i1 %i.gs, label %.lr.ph147, label %._crit_edge148

.lr.ph147:                                        ; preds = %._crit_edge, %.lr.ph147
  %.081145 = phi i32 [ %i.gt, %.lr.ph147 ], [ %i.gq, %._crit_edge ]
  %i.gt = udiv i32 %.081145, 1000                 ; 3 uses
  %i.gu = urem i32 %i.gt, 1000
  %i.gv = icmp eq i32 %i.gu, 0
  br i1 %i.gv, label %.lr.ph147, label %._crit_edge148, !llvm.loop !71

._crit_edge148:                                   ; preds = %.lr.ph147, %._crit_edge
  %.081.lcssa = phi i32 [ %i.gq, %._crit_edge ], [ %i.gt, %.lr.ph147 ]
  %i.gw = zext i32 %.081.lcssa to i64
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph142, %._crit_edge148, %thread-pre-split
  %.1 = phi i64 [ 0, %thread-pre-split ], [ %i.gw, %._crit_edge148 ], [ %i.gm, %.lr.ph142 ]
  %i.gx = getelementptr inbounds nuw i8, ptr %2, i64 64
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge165, %.loopexit
  %storemerge169 = phi i64 [ %.1, %.loopexit ], [ %storemerge210, %._crit_edge165 ] ; 5 uses
  %.087 = phi i32 [ 0, %.loopexit ], [ %.390.lcssa, %._crit_edge165 ] ; 3 uses
  %.082 = phi ptr [ %i.gx, %.loopexit ], [ %.3.ptr, %._crit_edge165 ] ; 4 uses
  %i.gy = icmp samesign ugt i64 %storemerge169, 99999999
  br i1 %i.gy, label %bb.y, label %.thread

bb.y:                                             ; preds = %bb.x
  %i.gz = urem i64 %storemerge169, 100000000      ; 2 uses
  %i.ha = udiv i64 %storemerge169, 100000000      ; 2 uses
  %.not115151 = icmp eq i64 %i.gz, 0
  br i1 %.not115151, label %.lr.ph164.preheader, label %.lr.ph156.preheader

.thread:                                          ; preds = %bb.x
  %.not115151208 = icmp eq i64 %storemerge169, 0
  br i1 %.not115151208, label %._crit_edge157.thread.thread, label %.lr.ph156.preheader

.lr.ph156.preheader:                              ; preds = %.thread, %bb.y
  %.080213.in = phi i64 [ %storemerge169, %.thread ], [ %i.gz, %bb.y ]
  %storemerge209 = phi i64 [ 0, %.thread ], [ %i.ha, %bb.y ] ; 3 uses
  %.080213 = trunc nuw i64 %.080213.in to i32
  br label %.lr.ph156

.lr.ph156:                                        ; preds = %.lr.ph156.preheader, %.lr.ph156
  %.1154 = phi i32 [ %i.hg, %.lr.ph156 ], [ %.080213, %.lr.ph156.preheader ] ; 3 uses
  %.183.idx153 = phi i64 [ %.183.add, %.lr.ph156 ], [ 0, %.lr.ph156.preheader ]
  %.188152 = phi i32 [ %i.hh, %.lr.ph156 ], [ %.087, %.lr.ph156.preheader ]
  %.183.add = add nsw i64 %.183.idx153, -2        ; 5 uses
  %.ptr117 = getelementptr inbounds i8, ptr %.082, i64 %.183.add
  %i.hb = urem i32 %.1154, 100
  %i.hc = shl nuw nsw i32 %i.hb, 1
  %i.hd = zext nneg i32 %i.hc to i64
  %i.he = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL16stbsp__digitpair, i64 2), i64 %i.hd
  %i.hf = load i16, ptr %i.he, align 2, !tbaa !42
  store i16 %i.hf, ptr %.ptr117, align 2, !tbaa !42
  %i.hg = udiv i32 %.1154, 100
  %i.hh = add nsw i32 %.188152, 2                 ; 4 uses
  %.not115 = icmp ult i32 %.1154, 100
  br i1 %.not115, label %._crit_edge157, label %.lr.ph156, !llvm.loop !72

._crit_edge157:                                   ; preds = %.lr.ph156
  %i.hi = icmp eq i64 %storemerge209, 0
  br i1 %i.hi, label %._crit_edge157.thread.thread, label %.preheader

.preheader:                                       ; preds = %._crit_edge157
  %.not116161 = icmp eq i64 %.183.add, -8
  br i1 %.not116161, label %._crit_edge165, label %.lr.ph164.preheader

.lr.ph164.preheader:                              ; preds = %bb.y, %.preheader
  %storemerge211.a = phi i64 [ %storemerge209, %.preheader ], [ %i.ha, %bb.y ]
  %.183.idx.lcssa150196204 = phi i64 [ %.183.add, %.preheader ], [ 0, %bb.y ] ; 2 uses
  %.188.lcssa198203 = phi i32 [ %i.hh, %.preheader ], [ %.087, %bb.y ]
  %scevgep = getelementptr i8, ptr %.082, i64 -8
  %i.hj = add nsw i64 %.183.idx.lcssa150196204, 8
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep, i8 48, i64 %i.hj, i1 false), !tbaa !7
  %i.hk = add i32 %.188.lcssa198203, 8
  %i.hl = trunc i64 %.183.idx.lcssa150196204 to i32
  %i.hm = add i32 %i.hk, %i.hl
  br label %._crit_edge165

._crit_edge157.thread.thread:                     ; preds = %.thread, %._crit_edge157
  %.188.lcssa199 = phi i32 [ %.087, %.thread ], [ %i.hh, %._crit_edge157 ] ; 3 uses
  %.183.idx.lcssa150197 = phi i64 [ 0, %.thread ], [ %.183.add, %._crit_edge157 ]
  %.183.ptr.le.le = getelementptr inbounds i8, ptr %.082, i64 %.183.idx.lcssa150197 ; 4 uses
  %.not118 = icmp eq i32 %.188.lcssa199, 0
  br i1 %.not118, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %._crit_edge157.thread.thread
  %i.hn = load i8, ptr %.183.ptr.le.le, align 1, !tbaa !7
  %i.ho = icmp eq i8 %i.hn, 48
  br i1 %i.ho, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.hp = getelementptr inbounds nuw i8, ptr %.183.ptr.le.le, i64 1
  %i.hq = add nsw i32 %.188.lcssa199, -1
  br label %bb.ab

._crit_edge165:                                   ; preds = %.lr.ph164.preheader, %.preheader
  %storemerge210 = phi i64 [ %storemerge209, %.preheader ], [ %storemerge211.a, %.lr.ph164.preheader ]
  %.390.lcssa = phi i32 [ %i.hh, %.preheader ], [ %i.hm, %.lr.ph164.preheader ]
  %.3.ptr = getelementptr inbounds i8, ptr %.082, i64 -8
  br label %bb.x

bb.ab:                                            ; preds = %bb.aa, %bb.z, %._crit_edge157.thread.thread
  %.491.ph = phi i32 [ 0, %._crit_edge157.thread.thread ], [ %.188.lcssa199, %bb.z ], [ %i.hq, %bb.aa ]
  %.4.ph = phi ptr [ %.183.ptr.le.le, %._crit_edge157.thread.thread ], [ %.183.ptr.le.le, %bb.z ], [ %i.hp, %bb.aa ]
  store i32 %.496, ptr %3, align 4, !tbaa !3
  store ptr %.4.ph, ptr %0, align 8, !tbaa !13
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.d, %bb.b
  %.491.ph.sink = phi i32 [ %.491.ph, %bb.ab ], [ 1, %bb.d ], [ 3, %bb.b ]
  store i32 %.491.ph.sink, ptr %1, align 4, !tbaa !3
  %i.hr = lshr i64 %i.a, 63
  %i.hs = trunc nuw nsw i64 %i.hr to i32
  ret i32 %i.hs
}

; Function Attrs: mustprogress uwtable
define hidden i32 @oiio_stbsp_sprintf(ptr noundef %0, ptr noundef %1, ...) local_unnamed_addr #1 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.a = call i32 @oiio_stbsp_vsprintfcb(ptr noundef null, ptr noundef null, ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2)
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret i32 %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #4

; Function Attrs: mustprogress uwtable
define hidden i32 @oiio_stbsp_vsnprintf(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #1 {
bb.a:
  %4 = alloca %struct.stbsp__context, align 8     ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.a = icmp ne i32 %1, 0
  %i.b = icmp ne ptr %0, null
  %or.cond = or i1 %i.b, %i.a
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 0, ptr %i.c, align 4, !tbaa !73
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.e = call i32 @oiio_stbsp_vsprintfcb(ptr noundef nonnull @_ZL27stbsp__count_clamp_callbackPKcPvi, ptr noundef nonnull %4, ptr noundef nonnull %i.d, ptr noundef %2, ptr noundef %3) ; 0 uses
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  store ptr %0, ptr %4, align 8, !tbaa !75
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i32 %1, ptr %i.f, align 8, !tbaa !76
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !73
  %.not.i = icmp sgt i32 %1, -1
  br i1 %.not.i, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.c
  %.not34.i = icmp eq ptr %0, null
end_hunk_0
