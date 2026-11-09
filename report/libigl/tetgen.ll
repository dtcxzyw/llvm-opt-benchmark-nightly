Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/tetgen?download=true
inline.NumInlined: 6986
inline.NumDeleted: 169
loop-unroll.NumCompletelyUnrolled: 436
loop-unroll.NumRuntimeUnrolled: 112
loop-unroll.NumUnrolled: 551
begin_hunk_0_@_ZN10tetgenmesh6flipnmEPNS_7trifaceEiiiPNS_15flipconstraintsE:bb.a
  %i.ay = and i32 %i.ax, 3
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.az
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !110
  %.not570 = icmp eq ptr %i.bb, null
  br i1 %.not570, label %._crit_edge864, label %.critedge587

._crit_edge864:                                   ; preds = %bb.b, %bb.c, %bb.d
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv ; 4 uses
  %i.bd = load i32, ptr %i.w, align 4, !tbaa !230
  %i.be = sext i32 %i.bd to i64                   ; 2 uses
  %i.bf = getelementptr inbounds [4 x i8], ptr %.pre, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !57
  %i.bh = icmp sgt i32 %i.bg, 131071
  br i1 %i.bh, label %.critedge587, label %bb.e

bb.e:                                             ; preds = %._crit_edge864
  %i.bi = add nsw i64 %indvars.iv, -1             ; 2 uses
  %i.bj = trunc i64 %i.bi to i32
  %i.bk = add i32 %2, %i.bj
  %i.bl = srem i32 %i.bk, %2
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds [16 x i8], ptr %1, i64 %i.bm ; 4 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !229 ; 2 uses
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.bo, i64 %i.be
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !57
  %i.br = icmp sgt i32 %i.bq, 131071
  br i1 %i.br, label %.critedge587, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 3 uses
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !234
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9apexpivotE, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !57
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds [8 x i8], ptr %.pre, i64 %i.bx
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !218 ; 5 uses
  %i.ca = add nuw nsw i64 %indvars.iv, 1          ; 2 uses
  %i.cb = icmp eq i64 %i.ca, %i.an
  %i.cc = select i1 %i.cb, i64 0, i64 %i.ca
  %i.cd = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.cc ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !229
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !234
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9apexpivotE, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !57
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.ce, i64 %i.ck
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !218 ; 9 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 3 uses
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !234
  %i.cp = sext i32 %i.co to i64
  %i.cq = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9apexpivotE, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !57
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %i.cs
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !218 ; 9 uses
  %i.cv = load ptr, ptr %i.x, align 8, !tbaa !248 ; 3 uses
  %i.cw = icmp eq ptr %i.cm, %i.cv
  %i.cx = icmp eq ptr %i.cu, %i.cv
  %or.cond582 = or i1 %i.cw, %i.cx
  br i1 %or.cond582, label %.critedge587, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cy = icmp eq ptr %i.bz, %i.cv                ; 2 uses
  %i.cz = zext i1 %i.cy to i32                    ; 2 uses
  br i1 %i.cy, label %bb.o, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.da = call noundef double @_Z8orient3dPdS_S_S_(ptr noundef %i.t, ptr noundef %i.bz, ptr noundef %i.cm, ptr noundef %i.cu)
  %i.db = fcmp ogt double %i.da, 0.000000e+00
  br i1 %i.db, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.dc = call noundef double @_Z8orient3dPdS_S_S_(ptr noundef %i.bz, ptr noundef %i.o, ptr noundef %i.cm, ptr noundef %i.cu)
  %i.dd = fcmp ogt double %i.dc, 0.000000e+00
  br i1 %i.dd, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.de = call noundef double @_Z8orient3dPdS_S_S_(ptr noundef %i.o, ptr noundef %i.t, ptr noundef %i.cm, ptr noundef %i.cu) ; 3 uses
  %i.df = fcmp ogt double %i.de, 0.000000e+00
  br i1 %i.df, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dg = fcmp oeq double %i.de, 0.000000e+00
  %or.cond5 = and i1 %i.y, %i.dg
  br i1 %or.cond5, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.dh = and i64 %indvars.iv, 3
  %i.di = xor i64 %i.dh, 2
  %i.dj = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.di ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !229
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !234
  %i.dn = sext i32 %i.dm to i64
  %i.do = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9apexpivotE, i64 %i.dn
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !57
  %i.dq = sext i32 %i.dp to i64
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.dk, i64 %i.dq
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !218
  %i.dt = load ptr, ptr %i.x, align 8, !tbaa !248
  %i.du = icmp eq ptr %i.ds, %i.dt
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.l
  %.0487 = phi i1 [ false, %bb.j ], [ %i.du, %bb.l ]
  %i.dv = fcmp oeq double %i.de, 0.000000e+00
  br label %bb.r

bb.n:                                             ; preds = %bb.h, %bb.k, %bb.i
  %i.dw = add nsw i32 %.0472736, 1
  br label %.critedge587

bb.o:                                             ; preds = %bb.g
  br i1 %i.y, label %bb.p, label %.critedge587

bb.p:                                             ; preds = %bb.o
  %i.dx = and i64 %indvars.iv, 3
  %i.dy = xor i64 %i.dx, 2
  %i.dz = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.dy ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !229
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !234
  %i.ed = sext i32 %i.ec to i64
  %i.ee = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9apexpivotE, i64 %i.ed
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !57
  %i.eg = sext i32 %i.ef to i64
  %i.eh = getelementptr inbounds [8 x i8], ptr %i.ea, i64 %i.eg
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !218 ; 2 uses
  %i.ej = call noundef double @_Z8orient3dPdS_S_S_(ptr noundef %i.cm, ptr noundef %i.cu, ptr noundef %i.ei, ptr noundef %i.o)
  %i.ek = fcmp olt double %i.ej, 0.000000e+00
  br i1 %i.ek, label %bb.q, label %.critedge587

bb.q:                                             ; preds = %bb.p
  %i.el = call noundef double @_Z8orient3dPdS_S_S_(ptr noundef %i.cu, ptr noundef %i.cm, ptr noundef %i.ei, ptr noundef %i.t)
  %i.em = fcmp olt double %i.el, 0.000000e+00
  br i1 %i.em, label %bb.r, label %.critedge587

bb.r:                                             ; preds = %bb.q, %bb.m
  %.2492 = phi i1 [ %i.dv, %bb.m ], [ true, %bb.q ]
  %.1488 = phi i1 [ %.0487, %bb.m ], [ true, %bb.q ]
  %i.en = load i32, ptr %i.z, align 8, !tbaa !290
  %i.eo = icmp ne i32 %i.en, 0
  %or.cond = select i1 %i.eo, i1 %.1488, i1 false
  br i1 %or.cond, label %bb.s, label %.critedge

bb.s:                                             ; preds = %bb.r
  %i.ep = call noundef i32 @_ZN10tetgenmesh7getedgeEPdS0_PNS_7trifaceE(ptr noundef nonnull align 8 dereferenceable(69984) %0, ptr noundef %i.cu, ptr noundef %i.cm, ptr noundef nonnull %7)
  %.not573.not = icmp eq i32 %i.ep, 0
  br i1 %.not573.not, label %.critedge, label %.critedge587

.critedge:                                        ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i64 16, i1 false), !tbaa.struct !292
  %i.eq = call noundef zeroext i1 @_ZN10tetgenmesh21valid_constrained_f23ERNS_7trifaceEPdS2_(ptr noundef nonnull align 8 dereferenceable(69984) %0, ptr noundef nonnull align 8 dereferenceable(12) %8, ptr noundef %i.cm, ptr noundef %i.cu)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #40
  br i1 %i.eq, label %bb.t, label %.critedge587

bb.t:                                             ; preds = %.critedge
  %i.er = load i32, ptr %i.aa, align 8, !tbaa !293
  %.not576 = icmp eq i32 %i.er, 0
  br i1 %.not576, label %.critedge589, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.es = call noundef i32 @_ZN10tetgenmesh20checkflipeligibilityEiPdS0_S0_S0_S0_iiPNS_15flipconstraintsE(ptr noundef nonnull align 8 dereferenceable(69984) %0, i32 noundef 1, ptr noundef %i.o, ptr noundef %i.t, ptr noundef %i.bz, ptr noundef %i.cm, ptr noundef %i.cu, i32 noundef %3, i32 noundef %4, ptr noundef nonnull %5)
  %i.et = icmp eq i32 %i.es, 0
  br i1 %i.et, label %.critedge589, label %.critedge587

.critedge589:                                     ; preds = %bb.t, %bb.u
  %i.eu = load ptr, ptr %i.bc, align 8, !tbaa !229 ; 2 uses
  store ptr %i.eu, ptr %6, align 16, !tbaa !229
  %i.ev = load i32, ptr %i.bs, align 8, !tbaa !234 ; 3 uses
  store i32 %i.ev, ptr %i.c, align 8, !tbaa !234
  %i.ew = and i32 %i.ev, 3
  %i.ex = zext nneg i32 %i.ew to i64
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %i.ex
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !218
  %i.fa = ptrtoint ptr %i.ez to i64               ; 2 uses
  %i.fb = and i64 %i.fa, -16
  %i.fc = inttoptr i64 %i.fb to ptr
  store ptr %i.fc, ptr %.ptr.1, align 16, !tbaa !229
  %i.fd = sext i32 %i.ev to i64
  %i.fe = getelementptr inbounds [48 x i8], ptr @_ZN10tetgenmesh7fsymtblE, i64 %i.fd
  %i.ff = and i64 %i.fa, 15
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %i.ff
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !57
  store i32 %i.fh, ptr %i.ab, align 8, !tbaa !234
  call void @_ZN10tetgenmesh6flip23EPNS_7trifaceEiPNS_15flipconstraintsE(ptr noundef nonnull align 8 dereferenceable(69984) %0, ptr noundef nonnull %6, i32 noundef %i.cz, ptr noundef nonnull %5)
  %i.fi = load i32, ptr %i.c, align 8, !tbaa !234
  %i.fj = sext i32 %i.fi to i64
  %i.fk = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh12edestoppotblE, i64 %i.fj
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !57
  store i32 %i.fl, ptr %i.c, align 8, !tbaa !234
  %i.fm = load ptr, ptr %6, align 16, !tbaa !229  ; 2 uses
  %i.fn = load i32, ptr %i.w, align 4, !tbaa !230
  %i.fo = sext i32 %i.fn to i64
  %i.fp = getelementptr inbounds [4 x i8], ptr %i.fm, i64 %i.fo ; 2 uses
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !57
  %i.fr = add i32 %i.fq, 65536
  store i32 %i.fr, ptr %i.fp, align 4, !tbaa !57
  store ptr %i.fm, ptr %i.bn, align 8, !tbaa !229
  %i.fs = load i32, ptr %i.c, align 8, !tbaa !234
  store i32 %i.fs, ptr %i.cn, align 8, !tbaa !234
  %i.ft = icmp samesign ult i64 %indvars.iv, %i.am
  br i1 %i.ft, label %.lr.ph711.preheader, label %._crit_edge712

.lr.ph711.preheader:                              ; preds = %.critedge589
  %xtraiter = and i64 %i.as, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph711.prol.loopexit, label %.lr.ph711.prol

.lr.ph711.prol:                                   ; preds = %.lr.ph711.preheader
  %indvars.iv.next821.prol = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fu = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv.next821.prol ; 2 uses
  %i.fv = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.fw = load ptr, ptr %i.fu, align 8, !tbaa !229
  store ptr %i.fw, ptr %i.fv, align 8, !tbaa !229
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.fy = load i32, ptr %i.fx, align 8, !tbaa !234
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  store i32 %i.fy, ptr %i.fz, align 8, !tbaa !234
  br label %.lr.ph711.prol.loopexit

.lr.ph711.prol.loopexit:                          ; preds = %.lr.ph711.prol, %.lr.ph711.preheader
  %indvars.iv820.unr = phi i64 [ %indvars.iv, %.lr.ph711.preheader ], [ %indvars.iv.next821.prol, %.lr.ph711.prol ]
  %i.ga = icmp eq i64 %indvars.iv, %i.ap
  br i1 %i.ga, label %._crit_edge712, label %.lr.ph711

.lr.ph711:                                        ; preds = %.lr.ph711.prol.loopexit, %.lr.ph711
  %indvars.iv820 = phi i64 [ %indvars.iv.next821.1, %.lr.ph711 ], [ %indvars.iv820.unr, %.lr.ph711.prol.loopexit ] ; 3 uses
  %indvars.iv.next821 = add nuw nsw i64 %indvars.iv820, 1 ; 2 uses
  %i.gb = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv.next821 ; 2 uses
  %i.gc = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv820 ; 2 uses
  %i.gd = load ptr, ptr %i.gb, align 8, !tbaa !229
  store ptr %i.gd, ptr %i.gc, align 8, !tbaa !229
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.gf = load i32, ptr %i.ge, align 8, !tbaa !234
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  store i32 %i.gf, ptr %i.gg, align 8, !tbaa !234
  %indvars.iv.next821.1 = add nuw nsw i64 %indvars.iv820, 2 ; 3 uses
  %i.gh = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv.next821.1 ; 2 uses
  %i.gi = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv.next821 ; 2 uses
  %i.gj = load ptr, ptr %i.gh, align 8, !tbaa !229
  store ptr %i.gj, ptr %i.gi, align 8, !tbaa !229
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.gl = load i32, ptr %i.gk, align 8, !tbaa !234
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  store i32 %i.gl, ptr %i.gm, align 8, !tbaa !234
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next821.1, %i.ad
  br i1 %exitcond.not.1, label %._crit_edge712, label %.lr.ph711, !llvm.loop !600

._crit_edge712:                                   ; preds = %.lr.ph711.prol.loopexit, %.lr.ph711, %.critedge589
  store ptr %i.bz, ptr %i.ae, align 8, !tbaa !229
  %i.gn = trunc nuw nsw i64 %indvars.iv to i32
  %i.go = shl i32 %i.gn, 6
  %i.gp = or disjoint i32 %i.go, 16
  store i32 %i.gp, ptr %i.af, align 8, !tbaa !234
  %i.gq = load i32, ptr %i.ag, align 4, !tbaa !294
  %.not578 = icmp eq i32 %i.gq, 0
  br i1 %.not578, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %._crit_edge712
  %i.gr = load ptr, ptr %i.ah, align 8, !tbaa !264 ; 4 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 32 ; 3 uses
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !98
  %i.gu = trunc i64 %i.gt to i32
  %i.gv = call noundef ptr @_ZN10tetgenmesh9arraypool8getblockEi(ptr noundef nonnull align 8 dereferenceable(48) %i.gr, i32 noundef %i.gu)
  %i.gw = load i64, ptr %i.gs, align 8, !tbaa !98 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gr, i64 4
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !99
  %i.gz = add nsw i32 %i.gy, -1
  %i.ha = sext i32 %i.gz to i64
  %i.hb = and i64 %i.gw, %i.ha
  %i.hc = load i32, ptr %i.gr, align 8, !tbaa !100
  %i.hd = sext i32 %i.hc to i64
  %i.he = mul nsw i64 %i.hb, %i.hd
  %i.hf = getelementptr inbounds i8, ptr %i.gv, i64 %i.he ; 2 uses
  %i.hg = add nsw i64 %i.gw, 1
  store i64 %i.hg, ptr %i.gs, align 8, !tbaa !98
  %i.hh = load ptr, ptr %.ptr.1, align 16, !tbaa !229
  store ptr %i.hh, ptr %i.hf, align 8, !tbaa !229
  %i.hi = load i32, ptr %i.d, align 8, !tbaa !234
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  store i32 %i.hi, ptr %i.hj, align 8, !tbaa !234
  %i.hk = load ptr, ptr %i.ah, align 8, !tbaa !264 ; 4 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 32 ; 3 uses
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !98
  %i.hn = trunc i64 %i.hm to i32
  %i.ho = call noundef ptr @_ZN10tetgenmesh9arraypool8getblockEi(ptr noundef nonnull align 8 dereferenceable(48) %i.hk, i32 noundef %i.hn)
  %i.hp = load i64, ptr %i.hl, align 8, !tbaa !98 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hk, i64 4
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !99
  %i.hs = add nsw i32 %i.hr, -1
  %i.ht = sext i32 %i.hs to i64
  %i.hu = and i64 %i.hp, %i.ht
  %i.hv = load i32, ptr %i.hk, align 8, !tbaa !100
  %i.hw = sext i32 %i.hv to i64
  %i.hx = mul nsw i64 %i.hu, %i.hw
  %i.hy = getelementptr inbounds i8, ptr %i.ho, i64 %i.hx ; 3 uses
  %i.hz = add nsw i64 %i.hp, 1
  store i64 %i.hz, ptr %i.hl, align 8, !tbaa !98
  %i.ia = load ptr, ptr %.ptr.2, align 16, !tbaa !229
  store ptr %i.ia, ptr %i.hy, align 8, !tbaa !229
  %i.ib = load i32, ptr %i.e, align 8, !tbaa !234
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  store i32 %i.ib, ptr %i.ic, align 8, !tbaa !234
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.preheader, %._crit_edge712
  %.lcssa715730 = phi ptr [ %.lcssa715731734, %._crit_edge712 ], [ %i.hy, %.preheader.preheader ]
  %i.id = call noundef i32 @_ZN10tetgenmesh6flipnmEPNS_7trifaceEiiiPNS_15flipconstraintsE(ptr noundef nonnull align 8 dereferenceable(69984) %0, ptr noundef nonnull %1, i32 noundef %i.ac, i32 noundef %3, i32 noundef %4, ptr noundef nonnull %5) ; 3 uses
  %i.ie = icmp eq i32 %i.id, 2
  br i1 %i.ie, label %.critedge602, label %bb.v

bb.v:                                             ; preds = %.loopexit
  %i.if = load i32, ptr %i.ai, align 8, !tbaa !295
  %i.ig = icmp ne i32 %i.if, 0
  %or.cond3 = or i1 %.2492, %i.ig
  br i1 %or.cond3, label %bb.w, label %.critedge602

bb.w:                                             ; preds = %bb.v
  %i.ih = trunc i64 %i.bi to i32
  %i.ii = add i32 %i.ac, %i.ih
  %i.ij = srem i32 %i.ii, %i.ac
  %i.ik = sext i32 %i.ij to i64
  %i.il = getelementptr inbounds [16 x i8], ptr %1, i64 %i.ik ; 2 uses
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !229 ; 2 uses
  store ptr %i.im, ptr %6, align 16, !tbaa !229
  %i.in = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  %i.io = load i32, ptr %i.in, align 8, !tbaa !234
  %i.ip = sext i32 %i.io to i64
  %i.iq = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh12edestoppotblE, i64 %i.ip
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !57 ; 2 uses
  store i32 %i.ir, ptr %i.c, align 8, !tbaa !234
  %i.is = sext i32 %i.ir to i64                   ; 2 uses
  %i.it = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10facepivot1E, i64 %i.is
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !57
  %i.iv = sext i32 %i.iu to i64
  %i.iw = getelementptr inbounds [8 x i8], ptr %i.im, i64 %i.iv
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !218
  %i.iy = ptrtoint ptr %i.ix to i64               ; 2 uses
  %i.iz = and i64 %i.iy, -16
  %i.ja = inttoptr i64 %i.iz to ptr               ; 2 uses
  store ptr %i.ja, ptr %.ptr.1, align 16, !tbaa !229
  %i.jb = getelementptr inbounds [48 x i8], ptr @_ZN10tetgenmesh10facepivot2E, i64 %i.is
  %i.jc = and i64 %i.iy, 15
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.jb, i64 %i.jc
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !57 ; 2 uses
  store i32 %i.je, ptr %i.ab, align 8, !tbaa !234
  %i.jf = sext i32 %i.je to i64                   ; 2 uses
  %i.jg = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10facepivot1E, i64 %i.jf
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !57
  %i.ji = sext i32 %i.jh to i64
  %i.jj = getelementptr inbounds [8 x i8], ptr %i.ja, i64 %i.ji
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !218
  %i.jl = ptrtoint ptr %i.jk to i64               ; 2 uses
  %i.jm = and i64 %i.jl, -16
  %i.jn = inttoptr i64 %i.jm to ptr
  store ptr %i.jn, ptr %.ptr.2, align 16, !tbaa !229
  %i.jo = getelementptr inbounds [48 x i8], ptr @_ZN10tetgenmesh10facepivot2E, i64 %i.jf
  %i.jp = and i64 %i.jl, 15
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.jo, i64 %i.jp
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !57
  store i32 %i.jr, ptr %i.aj, align 8, !tbaa !234
  call void @_ZN10tetgenmesh6flip32EPNS_7trifaceEiPNS_15flipconstraintsE(ptr noundef nonnull align 8 dereferenceable(69984) %0, ptr noundef nonnull %6, i32 noundef %i.cz, ptr noundef nonnull %5)
  %i.js = load ptr, ptr %6, align 16, !tbaa !229  ; 2 uses
  %i.jt = load i32, ptr %i.w, align 4, !tbaa !230
  %i.ju = sext i32 %i.jt to i64
  %i.jv = getelementptr inbounds [4 x i8], ptr %i.js, i64 %i.ju ; 2 uses
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !57
  %i.jx = add i32 %i.jw, 65536
  store i32 %i.jx, ptr %i.jv, align 4, !tbaa !57
  %i.jy = load ptr, ptr %.ptr.1, align 16, !tbaa !229 ; 2 uses
  %i.jz = load i32, ptr %i.w, align 4, !tbaa !230
  %i.ka = sext i32 %i.jz to i64
  %i.kb = getelementptr inbounds [4 x i8], ptr %i.jy, i64 %i.ka ; 2 uses
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !57
  %i.kd = add i32 %i.kc, 65536
  store i32 %i.kd, ptr %i.kb, align 4, !tbaa !57
  %.not579718 = icmp samesign ugt i64 %indvars.iv, %i.al
  br i1 %.not579718, label %._crit_edge722, label %.lr.ph721.preheader

.lr.ph721.preheader:                              ; preds = %bb.w
  %xtraiter956 = and i64 %i.aq, 3                 ; 2 uses
  %lcmp.mod957.not = icmp eq i64 %xtraiter956, 0
  br i1 %lcmp.mod957.not, label %.lr.ph721.prol.loopexit, label %.lr.ph721.prol

.lr.ph721.prol:                                   ; preds = %.lr.ph721.preheader, %.lr.ph721.prol
  %indvars.iv830.prol = phi i64 [ %indvars.iv.next831.prol, %.lr.ph721.prol ], [ %i.al, %.lr.ph721.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph721.prol ], [ 0, %.lr.ph721.preheader ]
  %i.ke = getelementptr inbounds [16 x i8], ptr %1, i64 %indvars.iv830.prol ; 4 uses
  %i.kf = getelementptr i8, ptr %i.ke, i64 16
  %i.kg = load ptr, ptr %i.ke, align 8, !tbaa !229
  store ptr %i.kg, ptr %i.kf, align 8, !tbaa !229
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ke, i64 8
  %i.ki = load i32, ptr %i.kh, align 8, !tbaa !234
  %i.kj = getelementptr i8, ptr %i.ke, i64 24
  store i32 %i.ki, ptr %i.kj, align 8, !tbaa !234
  %indvars.iv.next831.prol = add nsw i64 %indvars.iv830.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter956
  br i1 %prol.iter.cmp.not, label %.lr.ph721.prol.loopexit, label %.lr.ph721.prol, !llvm.loop !601

.lr.ph721.prol.loopexit:                          ; preds = %.lr.ph721.prol, %.lr.ph721.preheader
  %indvars.iv830.unr = phi i64 [ %i.al, %.lr.ph721.preheader ], [ %indvars.iv.next831.prol, %.lr.ph721.prol ]
  %i.kk = icmp ult i64 %i.ar, 3
  br i1 %i.kk, label %._crit_edge722, label %.lr.ph721

.lr.ph721:                                        ; preds = %.lr.ph721.prol.loopexit, %.lr.ph721
  %indvars.iv830 = phi i64 [ %indvars.iv.next831.3, %.lr.ph721 ], [ %indvars.iv830.unr, %.lr.ph721.prol.loopexit ] ; 5 uses
  %i.kl = getelementptr inbounds [16 x i8], ptr %1, i64 %indvars.iv830 ; 4 uses
  %i.km = getelementptr i8, ptr %i.kl, i64 16
  %i.kn = load ptr, ptr %i.kl, align 8, !tbaa !229
  store ptr %i.kn, ptr %i.km, align 8, !tbaa !229
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  %i.kp = load i32, ptr %i.ko, align 8, !tbaa !234
  %i.kq = getelementptr i8, ptr %i.kl, i64 24
  store i32 %i.kp, ptr %i.kq, align 8, !tbaa !234
  %i.kr = getelementptr [16 x i8], ptr %1, i64 %indvars.iv830 ; 4 uses
  %i.ks = getelementptr i8, ptr %i.kr, i64 -16
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !229
  store ptr %i.kt, ptr %i.kr, align 8, !tbaa !229
  %i.ku = getelementptr i8, ptr %i.kr, i64 -8
  %i.kv = load i32, ptr %i.ku, align 8, !tbaa !234
  %i.kw = getelementptr i8, ptr %i.kr, i64 8
  store i32 %i.kv, ptr %i.kw, align 8, !tbaa !234
  %i.kx = getelementptr [16 x i8], ptr %1, i64 %indvars.iv830 ; 4 uses
  %i.ky = getelementptr i8, ptr %i.kx, i64 -32
  %i.kz = getelementptr i8, ptr %i.kx, i64 -16
  %i.la = load ptr, ptr %i.ky, align 8, !tbaa !229
  store ptr %i.la, ptr %i.kz, align 8, !tbaa !229
  %i.lb = getelementptr i8, ptr %i.kx, i64 -24
  %i.lc = load i32, ptr %i.lb, align 8, !tbaa !234
  %i.ld = getelementptr i8, ptr %i.kx, i64 -8
  store i32 %i.lc, ptr %i.ld, align 8, !tbaa !234
  %indvars.iv.next831.2 = add nsw i64 %indvars.iv830, -3 ; 2 uses
  %i.le = getelementptr inbounds [16 x i8], ptr %1, i64 %indvars.iv.next831.2 ; 4 uses
  %i.lf = getelementptr i8, ptr %i.le, i64 16
  %i.lg = load ptr, ptr %i.le, align 8, !tbaa !229
  store ptr %i.lg, ptr %i.lf, align 8, !tbaa !229
  %i.lh = getelementptr inbounds nuw i8, ptr %i.le, i64 8
  %i.li = load i32, ptr %i.lh, align 8, !tbaa !234
  %i.lj = getelementptr i8, ptr %i.le, i64 24
  store i32 %i.li, ptr %i.lj, align 8, !tbaa !234
  %indvars.iv.next831.3 = add nsw i64 %indvars.iv830, -4
  %.not579.not.3 = icmp sgt i64 %indvars.iv.next831.2, %indvars.iv
  br i1 %.not579.not.3, label %.lr.ph721, label %._crit_edge722, !llvm.loop !602

._crit_edge722:                                   ; preds = %.lr.ph721.prol.loopexit, %.lr.ph721, %bb.w
  store ptr %i.jy, ptr %i.bn, align 8, !tbaa !229
  %i.lk = load i32, ptr %i.ab, align 8, !tbaa !234
  %i.ll = sext i32 %i.lk to i64
  %i.lm = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh7esymtblE, i64 %i.ll
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !57
  store i32 %i.ln, ptr %i.cn, align 8, !tbaa !234
  store ptr %i.js, ptr %i.bc, align 8, !tbaa !229
  %i.lo = load i32, ptr %i.c, align 8, !tbaa !234
  store i32 %i.lo, ptr %i.bs, align 8, !tbaa !234
  %i.lp = load i32, ptr %i.ag, align 4, !tbaa !294
  %.not580 = icmp eq i32 %i.lp, 0
  br i1 %.not580, label %bb.y, label %bb.x

bb.x:                                             ; preds = %._crit_edge722
  %i.lq = load ptr, ptr %i.ah, align 8, !tbaa !264
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 32 ; 2 uses
  %i.ls = load i64, ptr %i.lr, align 8, !tbaa !98
  %i.lt = add nsw i64 %i.ls, -2
  store i64 %i.lt, ptr %i.lr, align 8, !tbaa !98
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %._crit_edge722
  %.pr = load i32, ptr %i.ai, align 8, !tbaa !295
  %.not581 = icmp eq i32 %.pr, 0
  br i1 %.not581, label %.critedge602.loopexit686.split.loop.exit723, label %.critedge587

.critedge587:                                     ; preds = %bb.n, %bb.q, %bb.o, %bb.p, %bb.s, %.critedge, %bb.y, %bb.u, %bb.f, %._crit_edge864, %bb.e, %bb.d
  %.lcssa715729 = phi ptr [ %.lcssa715731734, %bb.d ], [ %.lcssa715731734, %._crit_edge864 ], [ %.lcssa715731734, %bb.e ], [ %.lcssa715731734, %bb.f ], [ %.lcssa715731734, %.critedge ], [ %.lcssa715731734, %bb.u ], [ %.lcssa715730, %bb.y ], [ %.lcssa715731734, %bb.s ], [ %.lcssa715731734, %bb.n ], [ %.lcssa715731734, %bb.q ], [ %.lcssa715731734, %bb.o ], [ %.lcssa715731734, %bb.p ] ; 2 uses
  %.2474 = phi i32 [ %.0472736, %bb.d ], [ %.0472736, %._crit_edge864 ], [ %.0472736, %bb.e ], [ %.0472736, %bb.f ], [ %.0472736, %.critedge ], [ %.0472736, %bb.u ], [ %.0472736, %bb.y ], [ %.0472736, %bb.s ], [ %i.dw, %bb.n ], [ %.0472736, %bb.q ], [ %.0472736, %bb.o ], [ %.0472736, %bb.p ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond835.not = icmp eq i64 %indvars.iv.next, %i.an
  br i1 %exitcond835.not, label %bb.z, label %bb.b, !llvm.loop !603

bb.z:                                             ; preds = %.critedge587
  store ptr %.lcssa715729, ptr %i.a, align 8
  %i.lu = icmp sgt i32 %.2474, 0
  br i1 %i.lu, label %bb.aa, label %.critedge602

bb.aa:                                            ; preds = %bb.z
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !216
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 188
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !296 ; 2 uses
  %i.lz = icmp slt i32 %i.ly, 0
  br i1 %i.lz, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ma = getelementptr inbounds nuw i8, ptr %0, i64 68716
  %i.mb = load i32, ptr %i.ma, align 4, !tbaa !297
  %i.mc = icmp slt i32 %3, %i.mb
  br i1 %i.mc, label %.lr.ph785, label %.critedge602

bb.ac:                                            ; preds = %bb.aa
  %i.md = icmp slt i32 %3, %i.ly
  br i1 %i.md, label %.lr.ph785, label %.critedge602

.lr.ph785:                                        ; preds = %bb.ab, %bb.ac
  %i.me = getelementptr inbounds nuw i8, ptr %0, i64 68696
  %i.mf = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.mg = getelementptr inbounds nuw i8, ptr %0, i64 68688
  %i.mh = getelementptr inbounds nuw i8, ptr %0, i64 2864
  %i.mi = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.mj = add nsw i32 %3, 1
  %i.mk = zext nneg i32 %i.ak to i64
  %i.ml = add nsw i64 %i.ad, -1
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph785, %.thread662
  %indvars.iv848 = phi i64 [ 0, %.lr.ph785 ], [ %indvars.iv.next849, %.thread662 ] ; 13 uses
  %i.mm = sub nsw i64 %i.ad, %indvars.iv848
  %i.mn = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv848 ; 4 uses
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !229 ; 2 uses
  %i.mp = load i32, ptr %i.w, align 4, !tbaa !230
  %i.mq = sext i32 %i.mp to i64                   ; 2 uses
  %i.mr = getelementptr inbounds [4 x i8], ptr %i.mo, i64 %i.mq
  %i.ms = load i32, ptr %i.mr, align 4, !tbaa !57
  %i.mt = icmp sgt i32 %i.ms, 131071
  br i1 %i.mt, label %.thread662, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.mu = add nsw i64 %indvars.iv848, -1          ; 2 uses
  %i.mv = trunc i64 %i.mu to i32
  %i.mw = add i32 %2, %i.mv
  %i.mx = srem i32 %i.mw, %2
  %i.my = sext i32 %i.mx to i64
  %i.mz = getelementptr inbounds [16 x i8], ptr %1, i64 %i.my ; 4 uses
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !229 ; 2 uses
  %i.nb = getelementptr inbounds [4 x i8], ptr %i.na, i64 %i.mq
  %i.nc = load i32, ptr %i.nb, align 4, !tbaa !57
  %i.nd = icmp sgt i32 %i.nc, 131071
  br i1 %i.nd, label %.thread662, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ne = getelementptr inbounds nuw i8, ptr %i.mn, i64 8 ; 3 uses
  %i.nf = load i32, ptr %i.ne, align 8, !tbaa !234
  %i.ng = sext i32 %i.nf to i64
  %i.nh = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9apexpivotE, i64 %i.ng
  %i.ni = load i32, ptr %i.nh, align 4, !tbaa !57
  %i.nj = sext i32 %i.ni to i64
  %i.nk = getelementptr inbounds [8 x i8], ptr %i.mo, i64 %i.nj
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !218 ; 4 uses
  %i.nm = load ptr, ptr %i.x, align 8, !tbaa !248 ; 3 uses
  %i.nn = icmp eq ptr %i.nl, %i.nm
  br i1 %i.nn, label %.thread662, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.no = trunc i64 %indvars.iv848 to i32
  %i.np = add i32 %i.no, 1
  %i.nq = urem i32 %i.np, %2
  %i.nr = zext nneg i32 %i.nq to i64
  %i.ns = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.nr ; 2 uses
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !229
  %i.nu = getelementptr inbounds nuw i8, ptr %i.ns, i64 8
  %i.nv = load i32, ptr %i.nu, align 8, !tbaa !234
  %i.nw = sext i32 %i.nv to i64
  %i.nx = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9apexpivotE, i64 %i.nw
  %i.ny = load i32, ptr %i.nx, align 4, !tbaa !57
  %i.nz = sext i32 %i.ny to i64
  %i.oa = getelementptr inbounds [8 x i8], ptr %i.nt, i64 %i.nz
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !218 ; 3 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.mz, i64 8 ; 3 uses
  %i.od = load i32, ptr %i.oc, align 8, !tbaa !234
  %i.oe = sext i32 %i.od to i64
  %i.of = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9apexpivotE, i64 %i.oe
  %i.og = load i32, ptr %i.of, align 4, !tbaa !57
  %i.oh = sext i32 %i.og to i64
  %i.oi = getelementptr inbounds [8 x i8], ptr %i.na, i64 %i.oh
  %i.oj = load ptr, ptr %i.oi, align 8, !tbaa !218 ; 3 uses
  %i.ok = icmp eq ptr %i.ob, %i.nm
  %i.ol = icmp eq ptr %i.oj, %i.nm
end_hunk_0
begin_hunk_1_@_ZN10tetgenmesh6flipnmEPNS_7trifaceEiiiPNS_15flipconstraintsE:bb.a
bb.al:                                            ; preds = %bb.ak
  %i.pc = load i32, ptr %i.mf, align 8, !tbaa !298
  %.not567 = icmp eq i32 %i.pc, 0
  br i1 %.not567, label %.thread662, label %_ZN10tetgenmesh9tsspivot1ERNS_7trifaceERNS_4faceE.exit

_ZN10tetgenmesh9tsspivot1ERNS_7trifaceERNS_4faceE.exit: ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #40
  %i.pd = ptrtoint ptr %i.pb to i64               ; 2 uses
  %i.pe = and i64 %i.pd, -8
  %i.pf = inttoptr i64 %i.pe to ptr               ; 2 uses
  %i.pg = load i32, ptr %i.mg, align 8, !tbaa !237
  %i.ph = sext i32 %i.pg to i64
  %i.pi = getelementptr [4 x i8], ptr %i.pf, i64 %i.ph
  %i.pj = getelementptr i8, ptr %i.pi, i64 4      ; 2 uses
  %i.pk = load i32, ptr %i.pj, align 4, !tbaa !57 ; 2 uses
  %i.pl = trunc i32 %i.pk to i1
  br i1 %i.pl, label %bb.an, label %bb.am

bb.am:                                            ; preds = %_ZN10tetgenmesh9tsspivot1ERNS_7trifaceERNS_4faceE.exit
  %i.pm = trunc i64 %i.pd to i32
  %i.pn = and i32 %i.pm, 7
  %i.po = or disjoint i32 %i.pk, 1
  store i32 %i.po, ptr %i.pj, align 4, !tbaa !57
  %i.pp = load ptr, ptr %i.mh, align 8, !tbaa !260
  %i.pq = call noundef i32 @_ZN10tetgenmesh9arraypool8newindexEPPv(ptr noundef nonnull align 8 dereferenceable(48) %i.pp, ptr noundef nonnull %i.b) ; 0 uses
  %i.pr = load ptr, ptr %i.b, align 8, !tbaa !225 ; 2 uses
  store ptr %i.pf, ptr %i.pr, align 8, !tbaa !222
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 8
  store i32 %i.pn, ptr %i.ps, align 8, !tbaa !223
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %_ZN10tetgenmesh9tsspivot1ERNS_7trifaceERNS_4faceE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40
  br label %.thread662

bb.ao:                                            ; preds = %bb.aj, %bb.ak, %bb.ai
  %i.pt = sext i32 %.sroa.10621.1.ph to i64
  %i.pu = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh7esymtblE, i64 %i.pt
  %i.pv = load i32, ptr %i.pu, align 4, !tbaa !57 ; 2 uses
  %i.pw = load i32, ptr %i.w, align 4, !tbaa !230
  %i.px = sext i32 %i.pw to i64
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ar, %bb.ao
  %indvar = phi i64 [ %indvar.next, %bb.ar ], [ 0, %bb.ao ] ; 3 uses
  %indvars.iv839 = phi i32 [ %indvars.iv.next840, %bb.ar ], [ 1, %bb.ao ] ; 2 uses
  %i.py = phi i32 [ %i.qy, %bb.ar ], [ %i.pv, %bb.ao ] ; 2 uses
  %i.pz = phi ptr [ %i.qu, %bb.ar ], [ %.sroa.0616.1.ph, %bb.ao ] ; 3 uses
  %.0467 = phi i32 [ %i.qh, %bb.ar ], [ 0, %bb.ao ] ; 3 uses
  %.4 = phi i32 [ %i.ql, %bb.ar ], [ 0, %bb.ao ]
  %.0456 = phi i32 [ %.1457, %bb.ar ], [ 0, %bb.ao ] ; 2 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 72
  %i.qb = load ptr, ptr %i.qa, align 8, !tbaa !218 ; 2 uses
  %.not559 = icmp eq ptr %i.qb, null
  br i1 %.not559, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.qc = and i32 %i.py, 3
  %i.qd = zext nneg i32 %i.qc to i64
  %i.qe = getelementptr inbounds nuw [8 x i8], ptr %i.qb, i64 %i.qd
  %i.qf = load ptr, ptr %i.qe, align 8, !tbaa !110
  %.not560 = icmp ne ptr %i.qf, null
  %i.qg = zext i1 %.not560 to i32
  %spec.select594 = add nsw i32 %.0456, %i.qg
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.1457 = phi i32 [ %.0456, %bb.ap ], [ %spec.select594, %bb.aq ] ; 2 uses
  %i.qh = add nuw nsw i32 %.0467, 1               ; 6 uses
  %i.qi = getelementptr inbounds [4 x i8], ptr %i.pz, i64 %i.px
  %i.qj = load i32, ptr %i.qi, align 4, !tbaa !57
  %i.qk = ashr i32 %i.qj, 16
  %i.ql = add nsw i32 %i.qk, %.4                  ; 2 uses
  %i.qm = sext i32 %i.py to i64                   ; 2 uses
  %i.qn = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10facepivot1E, i64 %i.qm
  %i.qo = load i32, ptr %i.qn, align 4, !tbaa !57
  %i.qp = sext i32 %i.qo to i64
  %i.qq = getelementptr inbounds [8 x i8], ptr %i.pz, i64 %i.qp
  %i.qr = load ptr, ptr %i.qq, align 8, !tbaa !218
  %i.qs = ptrtoint ptr %i.qr to i64               ; 2 uses
  %i.qt = and i64 %i.qs, -16
  %i.qu = inttoptr i64 %i.qt to ptr               ; 2 uses
  %i.qv = getelementptr inbounds [48 x i8], ptr @_ZN10tetgenmesh10facepivot2E, i64 %i.qm
  %i.qw = and i64 %i.qs, 15
  %i.qx = getelementptr inbounds nuw [4 x i8], ptr %i.qv, i64 %i.qw
  %i.qy = load i32, ptr %i.qx, align 4, !tbaa !57
  %i.qz = icmp eq ptr %.sroa.0616.1.ph, %i.qu
  %indvars.iv.next840 = add nuw i32 %indvars.iv839, 1
  %indvar.next = add i64 %indvar, 1
  br i1 %i.qz, label %bb.as, label %bb.ap, !llvm.loop !604

bb.as:                                            ; preds = %bb.ar
  %i.ra = icmp samesign ult i32 %.0467, 2
  br i1 %i.ra, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.rb = call ptr @__cxa_allocate_exception(i64 4) #40 ; 2 uses
  store i32 2, ptr %i.rb, align 16, !tbaa !57
  call void @__cxa_throw(ptr nonnull %i.rb, ptr nonnull @_ZTIi, ptr null) #43
  unreachable

bb.au:                                            ; preds = %bb.as
  %i.rc = icmp sgt i32 %i.ql, 2
  br i1 %i.rc, label %.thread662, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.rd = load i32, ptr %i.mi, align 4, !tbaa !299
  %i.re = icmp ne i32 %i.rd, 0
  %i.rf = icmp sgt i32 %.1457, 0
  %or.cond7 = select i1 %i.re, i1 %i.rf, i1 false
  br i1 %or.cond7, label %.thread662, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.rg = load ptr, ptr %i.lv, align 8, !tbaa !216
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 192
  %i.ri = load i32, ptr %i.rh, align 8, !tbaa !300 ; 2 uses
  %i.rj = icmp slt i32 %i.ri, 1
  %.not561 = icmp slt i32 %.0467, %i.ri
  %or.cond595 = select i1 %i.rj, i1 true, i1 %.not561
  br i1 %or.cond595, label %bb.ax, label %.thread662

bb.ax:                                            ; preds = %bb.aw
  %i.rk = zext nneg i32 %i.qh to i64              ; 2 uses
  %i.rl = shl nuw nsw i64 %i.rk, 4
  %i.rm = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.rl) #41 ; 26 uses
  %i.rn = getelementptr inbounds nuw [16 x i8], ptr %i.rm, i64 %i.rk
  %i.ro = and i64 %indvar, 1152921504606846975
  %i.rp = add i64 %indvar, 1
  %xtraiter959 = and i64 %i.rp, 7                 ; 2 uses
  %lcmp.mod960.not = icmp eq i64 %xtraiter959, 0
  br i1 %lcmp.mod960.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.ax, %.prol.preheader
  %i.rq = phi ptr [ %i.rs, %.prol.preheader ], [ %i.rm, %bb.ax ] ; 3 uses
  %prol.iter961 = phi i64 [ %prol.iter961.next, %.prol.preheader ], [ 0, %bb.ax ]
  store ptr null, ptr %i.rq, align 8, !tbaa !229
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rq, i64 8
  store i32 0, ptr %i.rr, align 8, !tbaa !234
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rq, i64 16 ; 2 uses
  %prol.iter961.next = add i64 %prol.iter961, 1   ; 2 uses
  %prol.iter961.cmp.not = icmp eq i64 %prol.iter961.next, %xtraiter959
  br i1 %prol.iter961.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !605

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.ax
  %.unr = phi ptr [ %i.rm, %bb.ax ], [ %i.rs, %.prol.preheader ]
  %i.rt = icmp samesign ult i64 %i.ro, 7
  br i1 %i.rt, label %.preheader789, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.ru = phi ptr [ %i.sk, %.new ], [ %.unr, %.prol.loopexit ] ; 17 uses
  store ptr null, ptr %i.ru, align 8, !tbaa !229
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 8
  store i32 0, ptr %i.rv, align 8, !tbaa !234
  %i.rw = getelementptr inbounds nuw i8, ptr %i.ru, i64 16
  store ptr null, ptr %i.rw, align 8, !tbaa !229
  %i.rx = getelementptr inbounds nuw i8, ptr %i.ru, i64 24
  store i32 0, ptr %i.rx, align 8, !tbaa !234
  %i.ry = getelementptr inbounds nuw i8, ptr %i.ru, i64 32
  store ptr null, ptr %i.ry, align 8, !tbaa !229
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ru, i64 40
  store i32 0, ptr %i.rz, align 8, !tbaa !234
  %i.sa = getelementptr inbounds nuw i8, ptr %i.ru, i64 48
  store ptr null, ptr %i.sa, align 8, !tbaa !229
  %i.sb = getelementptr inbounds nuw i8, ptr %i.ru, i64 56
  store i32 0, ptr %i.sb, align 8, !tbaa !234
  %i.sc = getelementptr inbounds nuw i8, ptr %i.ru, i64 64
  store ptr null, ptr %i.sc, align 8, !tbaa !229
  %i.sd = getelementptr inbounds nuw i8, ptr %i.ru, i64 72
  store i32 0, ptr %i.sd, align 8, !tbaa !234
  %i.se = getelementptr inbounds nuw i8, ptr %i.ru, i64 80
  store ptr null, ptr %i.se, align 8, !tbaa !229
  %i.sf = getelementptr inbounds nuw i8, ptr %i.ru, i64 88
  store i32 0, ptr %i.sf, align 8, !tbaa !234
  %i.sg = getelementptr inbounds nuw i8, ptr %i.ru, i64 96
  store ptr null, ptr %i.sg, align 8, !tbaa !229
  %i.sh = getelementptr inbounds nuw i8, ptr %i.ru, i64 104
  store i32 0, ptr %i.sh, align 8, !tbaa !234
  %i.si = getelementptr inbounds nuw i8, ptr %i.ru, i64 112
  store ptr null, ptr %i.si, align 8, !tbaa !229
  %i.sj = getelementptr inbounds nuw i8, ptr %i.ru, i64 120
  store i32 0, ptr %i.sj, align 8, !tbaa !234
  %i.sk = getelementptr inbounds nuw i8, ptr %i.ru, i64 128 ; 2 uses
  %i.sl = icmp eq ptr %i.sk, %i.rn
  br i1 %i.sl, label %.preheader789, label %.new

.preheader789:                                    ; preds = %.new, %.prol.loopexit
  %wide.trip.count841 = zext i32 %indvars.iv839 to i64
  br label %bb.ay

bb.ay:                                            ; preds = %.preheader789, %bb.ay
  %indvars.iv836 = phi i64 [ 0, %.preheader789 ], [ %indvars.iv.next837, %bb.ay ] ; 2 uses
  %i.sm = phi ptr [ %.sroa.0616.1.ph, %.preheader789 ], [ %i.td, %bb.ay ] ; 3 uses
  %i.sn = phi i32 [ %i.pv, %.preheader789 ], [ %i.th, %bb.ay ] ; 2 uses
  %i.so = getelementptr inbounds nuw [16 x i8], ptr %i.rm, i64 %indvars.iv836 ; 2 uses
  store ptr %i.sm, ptr %i.so, align 8, !tbaa !229
  %i.sp = getelementptr inbounds nuw i8, ptr %i.so, i64 8
  store i32 %i.sn, ptr %i.sp, align 8, !tbaa !234
  %i.sq = load i32, ptr %i.w, align 4, !tbaa !230
  %i.sr = sext i32 %i.sq to i64
  %i.ss = getelementptr inbounds [4 x i8], ptr %i.sm, i64 %i.sr ; 2 uses
  %i.st = load i32, ptr %i.ss, align 4, !tbaa !57
  %i.su = add i32 %i.st, 65536
  store i32 %i.su, ptr %i.ss, align 4, !tbaa !57
  %i.sv = sext i32 %i.sn to i64                   ; 2 uses
  %i.sw = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10facepivot1E, i64 %i.sv
  %i.sx = load i32, ptr %i.sw, align 4, !tbaa !57
  %i.sy = sext i32 %i.sx to i64
  %i.sz = getelementptr inbounds [8 x i8], ptr %i.sm, i64 %i.sy
  %i.ta = load ptr, ptr %i.sz, align 8, !tbaa !218
  %i.tb = ptrtoint ptr %i.ta to i64               ; 2 uses
  %i.tc = and i64 %i.tb, -16
  %i.td = inttoptr i64 %i.tc to ptr
  %i.te = getelementptr inbounds [48 x i8], ptr @_ZN10tetgenmesh10facepivot2E, i64 %i.sv
  %i.tf = and i64 %i.tb, 15
  %i.tg = getelementptr inbounds nuw [4 x i8], ptr %i.te, i64 %i.tf
  %i.th = load i32, ptr %i.tg, align 4, !tbaa !57
  %indvars.iv.next837 = add nuw nsw i64 %indvars.iv836, 1 ; 2 uses
  %exitcond842.not = icmp eq i64 %indvars.iv.next837, %wide.trip.count841
  br i1 %exitcond842.not, label %bb.az, label %bb.ay, !llvm.loop !606

bb.az:                                            ; preds = %bb.ay
  %i.ti = call noundef i32 @_ZN10tetgenmesh6flipnmEPNS_7trifaceEiiiPNS_15flipconstraintsE(ptr noundef nonnull align 8 dereferenceable(69984) %0, ptr noundef nonnull %i.rm, i32 noundef %i.qh, i32 noundef %i.mj, i32 noundef %.1469.ph, ptr noundef nonnull %5) ; 6 uses
  %i.tj = icmp eq i32 %i.ti, 2
  br i1 %i.tj, label %bb.ba, label %bb.be

bb.ba:                                            ; preds = %bb.az
  %.sink928 = select i1 %i.on, i64 8, i64 24
  %_ZN10tetgenmesh8eprevtblE.sink926 = select i1 %i.on, ptr @_ZN10tetgenmesh8enexttblE, ptr @_ZN10tetgenmesh8eprevtblE ; 2 uses
  %.lcssa744771.in.idx = select i1 %i.on, i64 0, i64 16
  %.lcssa744771.in = getelementptr inbounds nuw i8, ptr %i.rm, i64 %.lcssa744771.in.idx
  %i.tk = getelementptr inbounds nuw i8, ptr %i.rm, i64 %.sink928
  %i.tl = load i32, ptr %i.tk, align 8, !tbaa !234
  %i.tm = sext i32 %i.tl to i64
  %i.tn = getelementptr inbounds [4 x i8], ptr %_ZN10tetgenmesh8eprevtblE.sink926, i64 %i.tm
  %i.to = load i32, ptr %i.tn, align 4, !tbaa !57
  %i.tp = sext i32 %i.to to i64
  %i.tq = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh7esymtblE, i64 %i.tp
  %i.tr = load i32, ptr %i.tq, align 4, !tbaa !57
  %i.ts = sext i32 %i.tr to i64
  %i.tt = getelementptr inbounds [4 x i8], ptr %_ZN10tetgenmesh8eprevtblE.sink926, i64 %i.ts
  %.lcssa744771 = load ptr, ptr %.lcssa744771.in, align 8, !tbaa !229 ; 2 uses
  %storemerge = load i32, ptr %i.tt, align 4, !tbaa !57
  %i.tu = load i32, ptr %i.w, align 4, !tbaa !230
  %i.tv = sext i32 %i.tu to i64
  %i.tw = getelementptr inbounds [4 x i8], ptr %.lcssa744771, i64 %i.tv ; 2 uses
  %i.tx = load i32, ptr %i.tw, align 4, !tbaa !57
  %i.ty = add i32 %i.tx, 65536
  store i32 %i.ty, ptr %i.tw, align 4, !tbaa !57
  store ptr %.lcssa744771, ptr %i.mz, align 8, !tbaa !229
  store i32 %storemerge, ptr %i.oc, align 8, !tbaa !234
  %i.tz = icmp samesign ult i64 %indvars.iv848, %i.am
  br i1 %i.tz, label %.lr.ph754.preheader, label %._crit_edge755

.lr.ph754.preheader:                              ; preds = %bb.ba
  %xtraiter965 = and i64 %i.mm, 1
  %lcmp.mod966.not = icmp eq i64 %xtraiter965, 0
  br i1 %lcmp.mod966.not, label %.lr.ph754.prol.loopexit, label %.lr.ph754.prol

.lr.ph754.prol:                                   ; preds = %.lr.ph754.preheader
  %indvars.iv.next851.prol = add nuw nsw i64 %indvars.iv848, 1 ; 2 uses
  %i.ua = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv.next851.prol ; 2 uses
  %i.ub = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv848 ; 2 uses
  %i.uc = load ptr, ptr %i.ua, align 8, !tbaa !229
  store ptr %i.uc, ptr %i.ub, align 8, !tbaa !229
  %i.ud = getelementptr inbounds nuw i8, ptr %i.ua, i64 8
  %i.ue = load i32, ptr %i.ud, align 8, !tbaa !234
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ub, i64 8
  store i32 %i.ue, ptr %i.uf, align 8, !tbaa !234
  br label %.lr.ph754.prol.loopexit

.lr.ph754.prol.loopexit:                          ; preds = %.lr.ph754.prol, %.lr.ph754.preheader
  %indvars.iv850.unr = phi i64 [ %indvars.iv848, %.lr.ph754.preheader ], [ %indvars.iv.next851.prol, %.lr.ph754.prol ]
  %i.ug = icmp eq i64 %indvars.iv848, %i.ml
  br i1 %i.ug, label %._crit_edge755, label %.lr.ph754

.lr.ph754:                                        ; preds = %.lr.ph754.prol.loopexit, %.lr.ph754
  %indvars.iv850 = phi i64 [ %indvars.iv.next851.1, %.lr.ph754 ], [ %indvars.iv850.unr, %.lr.ph754.prol.loopexit ] ; 3 uses
  %indvars.iv.next851 = add nuw nsw i64 %indvars.iv850, 1 ; 2 uses
  %i.uh = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv.next851 ; 2 uses
  %i.ui = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv850 ; 2 uses
  %i.uj = load ptr, ptr %i.uh, align 8, !tbaa !229
  store ptr %i.uj, ptr %i.ui, align 8, !tbaa !229
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uh, i64 8
  %i.ul = load i32, ptr %i.uk, align 8, !tbaa !234
  %i.um = getelementptr inbounds nuw i8, ptr %i.ui, i64 8
  store i32 %i.ul, ptr %i.um, align 8, !tbaa !234
  %indvars.iv.next851.1 = add nuw nsw i64 %indvars.iv850, 2 ; 3 uses
  %i.un = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv.next851.1 ; 2 uses
  %i.uo = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv.next851 ; 2 uses
  %i.up = load ptr, ptr %i.un, align 8, !tbaa !229
  store ptr %i.up, ptr %i.uo, align 8, !tbaa !229
  %i.uq = getelementptr inbounds nuw i8, ptr %i.un, i64 8
  %i.ur = load i32, ptr %i.uq, align 8, !tbaa !234
  %i.us = getelementptr inbounds nuw i8, ptr %i.uo, i64 8
  store i32 %i.ur, ptr %i.us, align 8, !tbaa !234
  %exitcond854.not.1 = icmp eq i64 %indvars.iv.next851.1, %i.ad
  br i1 %exitcond854.not.1, label %._crit_edge755, label %.lr.ph754, !llvm.loop !607

._crit_edge755:                                   ; preds = %.lr.ph754.prol.loopexit, %.lr.ph754, %bb.ba
  store ptr %i.rm, ptr %i.ae, align 8, !tbaa !229
  %i.ut = trunc nuw nsw i64 %indvars.iv848 to i32
  %i.uu = shl i32 %i.ut, 6
  %i.uv = shl i32 %i.qh, 19
  %i.uw = or i32 %i.uu, %i.uv
  %i.ux = or disjoint i32 %i.uw, %.1469.ph
  %i.uy = or disjoint i32 %i.ux, 32
  store i32 %i.uy, ptr %i.af, align 8, !tbaa !234
  store ptr %i.nl, ptr %i.rm, align 8, !tbaa !229
  %i.uz = getelementptr inbounds nuw i8, ptr %i.rm, i64 8 ; 4 uses
  store i32 32, ptr %i.uz, align 8, !tbaa !234
  %i.va = call noundef i32 @_ZN10tetgenmesh6flipnmEPNS_7trifaceEiiiPNS_15flipconstraintsE(ptr noundef nonnull align 8 dereferenceable(69984) %0, ptr noundef nonnull %1, i32 noundef %i.ac, i32 noundef %3, i32 noundef %4, ptr noundef nonnull %5) ; 3 uses
  %i.vb = icmp eq i32 %i.va, 2
  br i1 %i.vb, label %.critedge602, label %bb.bb

bb.bb:                                            ; preds = %._crit_edge755
  %i.vc = load i32, ptr %i.ai, align 8, !tbaa !295
  %.not564 = icmp eq i32 %i.vc, 0
  br i1 %.not564, label %.critedge602, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.vd = trunc i64 %i.mu to i32
  %i.ve = add i32 %i.ac, %i.vd
  %i.vf = srem i32 %i.ve, %i.ac
  %i.vg = sext i32 %i.vf to i64
  %i.vh = getelementptr inbounds [16 x i8], ptr %1, i64 %i.vg ; 4 uses
  br i1 %i.on, label %.split, label %.split502

.split:                                           ; preds = %bb.bc
  %i.vi = load ptr, ptr %i.vh, align 8, !tbaa !229 ; 2 uses
  store ptr %i.vi, ptr %i.rm, align 8, !tbaa !229
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vh, i64 8
  %i.vk = load i32, ptr %i.vj, align 8, !tbaa !234
  %i.vl = sext i32 %i.vk to i64
  %i.vm = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8eprevtblE, i64 %i.vl
  %i.vn = load i32, ptr %i.vm, align 4, !tbaa !57
  %i.vo = sext i32 %i.vn to i64
  %i.vp = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh7esymtblE, i64 %i.vo
  %i.vq = load i32, ptr %i.vp, align 4, !tbaa !57
  %i.vr = sext i32 %i.vq to i64
  %i.vs = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8eprevtblE, i64 %i.vr
  %i.vt = load i32, ptr %i.vs, align 4, !tbaa !57 ; 3 uses
  store i32 %i.vt, ptr %i.uz, align 8, !tbaa !234
  %i.vu = getelementptr inbounds nuw i8, ptr %i.rm, i64 16
  %i.vv = and i32 %i.vt, 3
  %i.vw = zext nneg i32 %i.vv to i64
  %i.vx = getelementptr inbounds nuw [8 x i8], ptr %i.vi, i64 %i.vw
  %i.vy = load ptr, ptr %i.vx, align 8, !tbaa !218
  %i.vz = ptrtoint ptr %i.vy to i64               ; 2 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %i.rm, i64 24
  %i.wb = and i64 %i.vz, -16
  %i.wc = inttoptr i64 %i.wb to ptr
  store ptr %i.wc, ptr %i.vu, align 8, !tbaa !229
  %i.wd = sext i32 %i.vt to i64
  %i.we = getelementptr inbounds [48 x i8], ptr @_ZN10tetgenmesh7fsymtblE, i64 %i.wd
  %i.wf = and i64 %i.vz, 15
  %i.wg = getelementptr inbounds nuw [4 x i8], ptr %i.we, i64 %i.wf
  %i.wh = load i32, ptr %i.wg, align 4, !tbaa !57
  store i32 %i.wh, ptr %i.wa, align 8, !tbaa !234
  br label %bb.bd

.split502:                                        ; preds = %bb.bc
  %i.wi = getelementptr inbounds nuw i8, ptr %i.rm, i64 16
  %i.wj = load ptr, ptr %i.vh, align 8, !tbaa !229 ; 2 uses
  store ptr %i.wj, ptr %i.wi, align 8, !tbaa !229
  %i.wk = getelementptr inbounds nuw i8, ptr %i.vh, i64 8
  %i.wl = load i32, ptr %i.wk, align 8, !tbaa !234
  %i.wm = getelementptr inbounds nuw i8, ptr %i.rm, i64 24
  %i.wn = sext i32 %i.wl to i64
  %i.wo = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8enexttblE, i64 %i.wn
  %i.wp = load i32, ptr %i.wo, align 4, !tbaa !57
  %i.wq = sext i32 %i.wp to i64
  %i.wr = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh7esymtblE, i64 %i.wq
  %i.ws = load i32, ptr %i.wr, align 4, !tbaa !57
  %i.wt = sext i32 %i.ws to i64
  %i.wu = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8enexttblE, i64 %i.wt
  %i.wv = load i32, ptr %i.wu, align 4, !tbaa !57 ; 3 uses
  store i32 %i.wv, ptr %i.wm, align 8, !tbaa !234
  %i.ww = and i32 %i.wv, 3
  %i.wx = zext nneg i32 %i.ww to i64
  %i.wy = getelementptr inbounds nuw [8 x i8], ptr %i.wj, i64 %i.wx
  %i.wz = load ptr, ptr %i.wy, align 8, !tbaa !218
  %i.xa = ptrtoint ptr %i.wz to i64               ; 2 uses
  %i.xb = and i64 %i.xa, -16
  %i.xc = inttoptr i64 %i.xb to ptr
  store ptr %i.xc, ptr %i.rm, align 8, !tbaa !229
  %i.xd = sext i32 %i.wv to i64
  %i.xe = getelementptr inbounds [48 x i8], ptr @_ZN10tetgenmesh7fsymtblE, i64 %i.xd
  %i.xf = and i64 %i.xa, 15
  %i.xg = getelementptr inbounds nuw [4 x i8], ptr %i.xe, i64 %i.xf
  %i.xh = load i32, ptr %i.xg, align 4, !tbaa !57
  store i32 %i.xh, ptr %i.uz, align 8, !tbaa !234
  br label %bb.bd

bb.bd:                                            ; preds = %.split502, %.split
  %.sink = phi i32 [ 2, %.split502 ], [ 1, %.split ]
  %i.xi = call noundef i32 @_ZN10tetgenmesh11flipnm_postEPNS_7trifaceEiiiPNS_15flipconstraintsE(ptr noundef nonnull align 8 dereferenceable(69984) %0, ptr noundef nonnull %i.rm, i32 noundef %i.qh, i32 noundef 2, i32 noundef %.sink, ptr noundef nonnull %5) ; 0 uses
  %.not565757 = icmp samesign ugt i64 %indvars.iv848, %i.al
  br i1 %.not565757, label %._crit_edge761, label %.lr.ph760

.lr.ph760:                                        ; preds = %bb.bd, %.lr.ph760
  %indvars.iv855 = phi i64 [ %indvars.iv.next856, %.lr.ph760 ], [ %i.mk, %bb.bd ] ; 3 uses
  %i.xj = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv855 ; 4 uses
  %i.xk = getelementptr i8, ptr %i.xj, i64 16
  %i.xl = load ptr, ptr %i.xj, align 8, !tbaa !229
  store ptr %i.xl, ptr %i.xk, align 8, !tbaa !229
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xj, i64 8
  %i.xn = load i32, ptr %i.xm, align 8, !tbaa !234
  %i.xo = getelementptr i8, ptr %i.xj, i64 24
  store i32 %i.xn, ptr %i.xo, align 8, !tbaa !234
  %indvars.iv.next856 = add nsw i64 %indvars.iv855, -1
  %i.xp = shl i64 %indvars.iv855, 32
  %i.xq = ashr exact i64 %i.xp, 32
  %.not565.not = icmp sgt i64 %i.xq, %indvars.iv848
  br i1 %.not565.not, label %.lr.ph760, label %._crit_edge761, !llvm.loop !608

._crit_edge761:                                   ; preds = %.lr.ph760, %bb.bd
  %i.xr = getelementptr inbounds nuw i8, ptr %i.rm, i64 16
  %i.xs = load ptr, ptr %i.xr, align 8, !tbaa !229 ; 3 uses
  store ptr %i.xs, ptr %6, align 16, !tbaa !229
  %i.xt = getelementptr inbounds nuw i8, ptr %i.rm, i64 24
  %i.xu = load i32, ptr %i.xt, align 8, !tbaa !234
  %i.xv = sext i32 %i.xu to i64
  %_ZN10tetgenmesh8enexttblE._ZN10tetgenmesh8eprevtblE = select i1 %i.on, ptr @_ZN10tetgenmesh8enexttblE, ptr @_ZN10tetgenmesh8eprevtblE
  %_ZN10tetgenmesh8eprevtblE._ZN10tetgenmesh8enexttblE = select i1 %i.on, ptr @_ZN10tetgenmesh8eprevtblE, ptr @_ZN10tetgenmesh8enexttblE
  %i.xw = getelementptr inbounds [4 x i8], ptr %_ZN10tetgenmesh8enexttblE._ZN10tetgenmesh8eprevtblE, i64 %i.xv
  %i.xx = load i32, ptr %i.xw, align 4, !tbaa !57
  %i.xy = sext i32 %i.xx to i64
  %i.xz = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh7esymtblE, i64 %i.xy
  %i.ya = load i32, ptr %i.xz, align 4, !tbaa !57
  store i32 %i.ya, ptr %i.c, align 8, !tbaa !234
  %i.yb = load ptr, ptr %i.rm, align 8, !tbaa !229 ; 3 uses
  store ptr %i.yb, ptr %.ptr.1, align 16, !tbaa !229
  %i.yc = load i32, ptr %i.uz, align 8, !tbaa !234
  %i.yd = sext i32 %i.yc to i64
  %i.ye = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh7esymtblE, i64 %i.yd
  %i.yf = load i32, ptr %i.ye, align 4, !tbaa !57
  %i.yg = sext i32 %i.yf to i64
  %i.yh = getelementptr inbounds [4 x i8], ptr %_ZN10tetgenmesh8eprevtblE._ZN10tetgenmesh8enexttblE, i64 %i.yg
  %storemerge906 = load i32, ptr %i.yh, align 4, !tbaa !57
  store i32 %storemerge906, ptr %i.ab, align 8, !tbaa !234
  %i.yi = load i32, ptr %i.w, align 4, !tbaa !230
  %i.yj = sext i32 %i.yi to i64
  %i.yk = getelementptr inbounds [4 x i8], ptr %i.xs, i64 %i.yj ; 2 uses
  %i.yl = load i32, ptr %i.yk, align 4, !tbaa !57
  %i.ym = add i32 %i.yl, 65536
  store i32 %i.ym, ptr %i.yk, align 4, !tbaa !57
  %i.yn = load i32, ptr %i.w, align 4, !tbaa !230
  %i.yo = sext i32 %i.yn to i64
  %i.yp = getelementptr inbounds [4 x i8], ptr %i.yb, i64 %i.yo ; 2 uses
  %i.yq = load i32, ptr %i.yp, align 4, !tbaa !57
  %i.yr = add i32 %i.yq, 65536
  store i32 %i.yr, ptr %i.yp, align 4, !tbaa !57
  store ptr %i.xs, ptr %i.mz, align 8, !tbaa !229
  %i.ys = load i32, ptr %i.c, align 8, !tbaa !234
  store i32 %i.ys, ptr %i.oc, align 8, !tbaa !234
  store ptr %i.yb, ptr %i.mn, align 8, !tbaa !229
  %i.yt = load i32, ptr %i.ab, align 8, !tbaa !234
  store i32 %i.yt, ptr %i.ne, align 8, !tbaa !234
  call void @_ZdaPv(ptr noundef nonnull %i.rm) #42
  %.pr657 = load i32, ptr %i.ai, align 8, !tbaa !295
  %.not566 = icmp eq i32 %.pr657, 0
  br i1 %.not566, label %.critedge602.loopexit.split.loop.exit763, label %.thread662

bb.be:                                            ; preds = %bb.az
  %i.yu = load i32, ptr %i.ai, align 8, !tbaa !295
  %.not563 = icmp eq i32 %i.yu, 0
  br i1 %.not563, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.yv = call noundef i32 @_ZN10tetgenmesh11flipnm_postEPNS_7trifaceEiiiPNS_15flipconstraintsE(ptr noundef nonnull align 8 dereferenceable(69984) %0, ptr noundef nonnull %i.rm, i32 noundef %i.qh, i32 noundef %i.ti, i32 noundef %.1469.ph, ptr noundef nonnull %5) ; 0 uses
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.yw = icmp sgt i32 %i.ti, 0
  br i1 %i.yw, label %.lr.ph750.preheader, label %._crit_edge751

.lr.ph750.preheader:                              ; preds = %bb.bg
  %wide.trip.count846 = zext nneg i32 %i.ti to i64 ; 2 uses
  %xtraiter962 = and i64 %wide.trip.count846, 1
  %i.yx = icmp eq i32 %i.ti, 1
  br i1 %i.yx, label %.lr.ph750.epil.preheader, label %.lr.ph750.preheader.new

.lr.ph750.preheader.new:                          ; preds = %.lr.ph750.preheader
  %unroll_iter = and i64 %wide.trip.count846, 2147483646
  br label %.lr.ph750

.lr.ph750:                                        ; preds = %.lr.ph750, %.lr.ph750.preheader.new
  %indvars.iv843 = phi i64 [ 0, %.lr.ph750.preheader.new ], [ %indvars.iv.next844.1, %.lr.ph750 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph750.preheader.new ], [ %niter.next.1, %.lr.ph750 ]
  %i.yy = getelementptr inbounds nuw [16 x i8], ptr %i.rm, i64 %indvars.iv843
  %i.yz = load ptr, ptr %i.yy, align 8, !tbaa !229
  %i.za = load i32, ptr %i.w, align 4, !tbaa !230
  %i.zb = sext i32 %i.za to i64
  %i.zc = getelementptr inbounds [4 x i8], ptr %i.yz, i64 %i.zb ; 2 uses
  %i.zd = load i32, ptr %i.zc, align 4, !tbaa !57
  %i.ze = add i32 %i.zd, -65536
  store i32 %i.ze, ptr %i.zc, align 4, !tbaa !57
  %i.zf = getelementptr inbounds nuw [16 x i8], ptr %i.rm, i64 %indvars.iv843
  %i.zg = getelementptr inbounds nuw i8, ptr %i.zf, i64 16
  %i.zh = load ptr, ptr %i.zg, align 8, !tbaa !229
  %i.zi = load i32, ptr %i.w, align 4, !tbaa !230
  %i.zj = sext i32 %i.zi to i64
  %i.zk = getelementptr inbounds [4 x i8], ptr %i.zh, i64 %i.zj ; 2 uses
  %i.zl = load i32, ptr %i.zk, align 4, !tbaa !57
  %i.zm = add i32 %i.zl, -65536
  store i32 %i.zm, ptr %i.zk, align 4, !tbaa !57
  %indvars.iv.next844.1 = add nuw nsw i64 %indvars.iv843, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge751.loopexit.unr-lcssa, label %.lr.ph750, !llvm.loop !609

._crit_edge751.loopexit.unr-lcssa:                ; preds = %.lr.ph750
  %lcmp.mod963.not = icmp eq i64 %xtraiter962, 0
  br i1 %lcmp.mod963.not, label %._crit_edge751, label %.lr.ph750.epil.preheader

.lr.ph750.epil.preheader:                         ; preds = %._crit_edge751.loopexit.unr-lcssa, %.lr.ph750.preheader
  %indvars.iv843.epil.init = phi i64 [ 0, %.lr.ph750.preheader ], [ %indvars.iv.next844.1, %._crit_edge751.loopexit.unr-lcssa ]
  %lcmp.mod964 = trunc i32 %i.ti to i1
  call void @llvm.assume(i1 %lcmp.mod964)
  %i.zn = getelementptr inbounds nuw [16 x i8], ptr %i.rm, i64 %indvars.iv843.epil.init
  %i.zo = load ptr, ptr %i.zn, align 8, !tbaa !229
  %i.zp = load i32, ptr %i.w, align 4, !tbaa !230
  %i.zq = sext i32 %i.zp to i64
  %i.zr = getelementptr inbounds [4 x i8], ptr %i.zo, i64 %i.zq ; 2 uses
  %i.zs = load i32, ptr %i.zr, align 4, !tbaa !57
  %i.zt = add i32 %i.zs, -65536
  store i32 %i.zt, ptr %i.zr, align 4, !tbaa !57
  br label %._crit_edge751

._crit_edge751:                                   ; preds = %.lr.ph750.epil.preheader, %._crit_edge751.loopexit.unr-lcssa, %bb.bg
  call void @_ZdaPv(ptr noundef nonnull %i.rm) #42
  br label %.thread662

.thread662:                                       ; preds = %._crit_edge761, %._crit_edge751, %bb.aw, %bb.av, %bb.au, %.critedge593, %bb.al, %bb.an, %bb.ag, %bb.af, %bb.ad, %bb.ae
  %indvars.iv.next849 = add nuw nsw i64 %indvars.iv848, 1 ; 2 uses
  %exitcond863.not = icmp eq i64 %indvars.iv.next849, %i.an
  br i1 %exitcond863.not, label %.critedge602, label %bb.ad, !llvm.loop !610

bb.bh:                                            ; preds = %bb.a
  %i.zu = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9apexpivotE, i64 %i.j
  %i.zv = load i32, ptr %i.zu, align 4, !tbaa !57
  %i.zw = sext i32 %i.zv to i64
  %i.zx = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.zw
  %i.zy = load ptr, ptr %i.zx, align 8, !tbaa !218 ; 7 uses
  %i.zz = getelementptr inbounds nuw i8, ptr %0, i64 68584 ; 2 uses
  %i.aaa = load ptr, ptr %i.zz, align 8, !tbaa !248 ; 3 uses
  %i.aab = icmp eq ptr %i.zy, %i.aaa
  %i.aac = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aad = load ptr, ptr %i.aac, align 8, !tbaa !229
  %i.aae = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aaf = load i32, ptr %i.aae, align 8, !tbaa !234
  %i.aag = sext i32 %i.aaf to i64
  %i.aah = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9apexpivotE, i64 %i.aag
  %i.aai = load i32, ptr %i.aah, align 4, !tbaa !57
  %i.aaj = sext i32 %i.aai to i64
  %i.aak = getelementptr inbounds [8 x i8], ptr %i.aad, i64 %i.aaj
  %i.aal = load ptr, ptr %i.aak, align 8, !tbaa !218 ; 7 uses
  br i1 %i.aab, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.aam = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aan = load ptr, ptr %i.aam, align 8, !tbaa !229
  %i.aao = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aap = load i32, ptr %i.aao, align 8, !tbaa !234
  %i.aaq = sext i32 %i.aap to i64
  %i.aar = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9apexpivotE, i64 %i.aaq
  %i.aas = load i32, ptr %i.aar, align 4, !tbaa !57
  %i.aat = sext i32 %i.aas to i64
  %i.aau = getelementptr inbounds [8 x i8], ptr %i.aan, i64 %i.aat
  %i.aav = load ptr, ptr %i.aau, align 8, !tbaa !218
  br label %select.unfold

bb.bj:                                            ; preds = %bb.bh
  %i.aaw = icmp eq ptr %i.aal, %i.aaa
  %i.aax = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aay = load ptr, ptr %i.aax, align 8, !tbaa !229
  %i.aaz = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aba = load i32, ptr %i.aaz, align 8, !tbaa !234
  %i.abb = sext i32 %i.aba to i64
  %i.abc = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9apexpivotE, i64 %i.abb
  %i.abd = load i32, ptr %i.abc, align 4, !tbaa !57
  %i.abe = sext i32 %i.abd to i64
  %i.abf = getelementptr inbounds [8 x i8], ptr %i.aay, i64 %i.abe
  %i.abg = load ptr, ptr %i.abf, align 8, !tbaa !218 ; 6 uses
  br i1 %i.aaw, label %select.unfold, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.abh = icmp eq ptr %i.abg, %i.aaa
  br i1 %i.abh, label %select.unfold, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.abi = tail call noundef double @_Z8orient3dPdS_S_S_(ptr noundef %i.aal, ptr noundef %i.zy, ptr noundef %i.abg, ptr noundef %i.o)
  %i.abj = fcmp olt double %i.abi, 0.000000e+00
  br i1 %i.abj, label %bb.bs, label %.critedge602

select.unfold:                                    ; preds = %bb.bj, %bb.bk, %bb.bi
  %.0496.ph = phi ptr [ %i.aal, %bb.bi ], [ %i.zy, %bb.bk ], [ %i.abg, %bb.bj ] ; 6 uses
  %.0495.ph = phi ptr [ %i.aav, %bb.bi ], [ %i.aal, %bb.bk ], [ %i.zy, %bb.bj ] ; 6 uses
  %.0494.ph = phi ptr [ %i.zy, %bb.bi ], [ %i.abg, %bb.bk ], [ %i.aal, %bb.bj ]
  %.cmp = phi i1 [ true, %bb.bi ], [ false, %bb.bk ], [ true, %bb.bj ]
  %.0489.ph = phi i32 [ 1, %bb.bi ], [ 3, %bb.bk ], [ 2, %bb.bj ] ; 3 uses
  %i.abk = getelementptr inbounds nuw i8, ptr %0, i64 68712
  %i.abl = load i32, ptr %i.abk, align 8, !tbaa !290
  %.not = icmp eq i32 %i.abl, 0
  br i1 %.not, label %bb.bm, label %.critedge599

bb.bm:                                            ; preds = %select.unfold
  %i.abm = tail call noundef double @_Z8orient3dPdS_S_S_(ptr noundef %i.o, ptr noundef %i.t, ptr noundef %.0496.ph, ptr noundef %.0495.ph)
  %i.abn = fcmp oeq double %i.abm, 0.000000e+00
  br i1 %i.abn, label %.critedge599, label %.critedge602

.critedge599:                                     ; preds = %select.unfold, %bb.bm
  %.urem = add nsw i32 %.0489.ph, -3
  %i.abo = select i1 %.cmp, i32 %.0489.ph, i32 %.urem
  %i.abp = zext nneg i32 %i.abo to i64
  %i.abq = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.abp ; 2 uses
  %i.abr = load ptr, ptr %i.abq, align 8, !tbaa !229
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abq, i64 8
  %i.abt = load i32, ptr %i.abs, align 8, !tbaa !234
  %i.abu = sext i32 %i.abt to i64
  %i.abv = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh11eorgoppotblE, i64 %i.abu
  %i.abw = load i32, ptr %i.abv, align 4, !tbaa !57
  %i.abx = sext i32 %i.abw to i64                 ; 2 uses
  %i.aby = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10facepivot1E, i64 %i.abx
  %i.abz = load i32, ptr %i.aby, align 4, !tbaa !57
  %i.aca = sext i32 %i.abz to i64
  %i.acb = getelementptr inbounds [8 x i8], ptr %i.abr, i64 %i.aca
  %i.acc = load ptr, ptr %i.acb, align 8, !tbaa !218
  %i.acd = ptrtoint ptr %i.acc to i64             ; 2 uses
  %i.ace = and i64 %i.acd, -16
  %i.acf = inttoptr i64 %i.ace to ptr             ; 2 uses
  %i.acg = getelementptr inbounds [48 x i8], ptr @_ZN10tetgenmesh10facepivot2E, i64 %i.abx
  %i.ach = and i64 %i.acd, 15
  %i.aci = getelementptr inbounds nuw [4 x i8], ptr %i.acg, i64 %i.ach
  %i.acj = load i32, ptr %i.aci, align 4, !tbaa !57 ; 2 uses
  %i.ack = sext i32 %i.acj to i64                 ; 2 uses
  %i.acl = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9oppopivotE, i64 %i.ack
  %i.acm = load i32, ptr %i.acl, align 4, !tbaa !57
  %i.acn = sext i32 %i.acm to i64
  %i.aco = getelementptr inbounds [8 x i8], ptr %i.acf, i64 %i.acn
  %i.acp = load ptr, ptr %i.aco, align 8, !tbaa !218 ; 2 uses
  %i.acq = icmp eq ptr %i.acp, %i.t
  br i1 %i.acq, label %.critedge602, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge599, %bb.bq
  %i.acr = phi ptr [ %i.adw, %bb.bq ], [ %i.acp, %.critedge599 ] ; 3 uses
  %i.acs = phi i64 [ %i.adr, %bb.bq ], [ %i.ack, %.critedge599 ]
  %i.act = phi i32 [ %i.adq, %bb.bq ], [ %i.acj, %.critedge599 ]
  %i.acu = phi ptr [ %i.adm, %bb.bq ], [ %i.acf, %.critedge599 ] ; 2 uses
  %.0700 = phi double [ %.1, %bb.bq ], [ 0.000000e+00, %.critedge599 ] ; 4 uses
  %.0454699 = phi ptr [ %.1455, %bb.bq ], [ null, %.critedge599 ] ; 3 uses
  %i.acv = load ptr, ptr %i.zz, align 8, !tbaa !248 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN10tetgenmesh6flipnmEPNS_7trifaceEiiiPNS_15flipconstraintsE:bb.a
  %i.adn = getelementptr inbounds [48 x i8], ptr @_ZN10tetgenmesh10facepivot2E, i64 %i.ade
  %i.ado = and i64 %i.adk, 15
  %i.adp = getelementptr inbounds nuw [4 x i8], ptr %i.adn, i64 %i.ado
  %i.adq = load i32, ptr %i.adp, align 4, !tbaa !57 ; 2 uses
  %i.adr = sext i32 %i.adq to i64                 ; 2 uses
  %i.ads = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9oppopivotE, i64 %i.adr
  %i.adt = load i32, ptr %i.ads, align 4, !tbaa !57
  %i.adu = sext i32 %i.adt to i64
  %i.adv = getelementptr inbounds [8 x i8], ptr %i.adm, i64 %i.adu
  %i.adw = load ptr, ptr %i.adv, align 8, !tbaa !218 ; 2 uses
  %i.adx = icmp eq ptr %i.adw, %i.t
  br i1 %i.adx, label %._crit_edge, label %.lr.ph, !llvm.loop !611

._crit_edge:                                      ; preds = %bb.bq
  %.not540 = icmp eq ptr %.1455, null
  br i1 %.not540, label %.critedge602, label %bb.br

bb.br:                                            ; preds = %._crit_edge
  %i.ady = tail call noundef double @_Z8orient3dPdS_S_S_(ptr noundef %.0495.ph, ptr noundef %.0496.ph, ptr noundef nonnull %.1455, ptr noundef %i.o)
  %i.adz = tail call noundef double @_Z8orient3dPdS_S_S_(ptr noundef %.0495.ph, ptr noundef %.0496.ph, ptr noundef nonnull %.1455, ptr noundef %i.t)
  %i.aea = fmul double %i.ady, %i.adz
  %i.aeb = fcmp ult double %i.aea, 0.000000e+00
  br i1 %i.aeb, label %.split679, label %.critedge602

.split679:                                        ; preds = %bb.br
  %i.aec = tail call noundef double @_Z8orient3dPdS_S_S_(ptr noundef %i.o, ptr noundef %i.t, ptr noundef nonnull %.1455, ptr noundef %.0496.ph)
  %i.aed = tail call noundef double @_Z8orient3dPdS_S_S_(ptr noundef %i.o, ptr noundef %i.t, ptr noundef nonnull %.1455, ptr noundef %.0495.ph)
  %i.aee = fmul double %i.aec, %i.aed
  %i.aef = fcmp ult double %i.aee, 0.000000e+00
  br i1 %i.aef, label %bb.bt, label %.critedge602

bb.bs:                                            ; preds = %bb.bl
  %i.aeg = tail call noundef double @_Z8orient3dPdS_S_S_(ptr noundef %i.zy, ptr noundef %i.aal, ptr noundef %i.abg, ptr noundef %i.t)
  %i.aeh = fcmp uge double %i.aeg, 0.000000e+00
  br i1 %i.aeh, label %.critedge602, label %bb.bt

bb.bt:                                            ; preds = %.split679, %bb.bs
  %.0496671683 = phi ptr [ %.0496.ph, %.split679 ], [ %i.zy, %bb.bs ]
  %.0495673682 = phi ptr [ %.0495.ph, %.split679 ], [ %i.aal, %bb.bs ]
  %.0494675681 = phi ptr [ %.0494.ph, %.split679 ], [ %i.abg, %bb.bs ]
  %.0489677680 = phi i32 [ %.0489.ph, %.split679 ], [ 0, %bb.bs ] ; 2 uses
  %i.aei = getelementptr inbounds nuw i8, ptr %0, i64 68700
  %i.aej = load i32, ptr %i.aei, align 4, !tbaa !274
  %.not542 = icmp eq i32 %i.aej, 0
  br i1 %.not542, label %.critedge607, label %.preheader691.preheader

.preheader691.preheader:                          ; preds = %bb.bt
  %i.aek = load ptr, ptr %1, align 8, !tbaa !229
  %i.ael = getelementptr inbounds nuw i8, ptr %i.aek, i64 72
  %i.aem = load ptr, ptr %i.ael, align 8, !tbaa !218 ; 2 uses
  %.not552 = icmp eq ptr %i.aem, null
  br i1 %.not552, label %.preheader691.1, label %bb.bu

bb.bu:                                            ; preds = %.preheader691.preheader
  %i.aen = load i32, ptr %i.h, align 8, !tbaa !234
  %i.aeo = and i32 %i.aen, 3
  %i.aep = zext nneg i32 %i.aeo to i64
  %i.aeq = getelementptr inbounds nuw [8 x i8], ptr %i.aem, i64 %i.aep
  %i.aer = load ptr, ptr %i.aeq, align 8, !tbaa !110
  %.not553 = icmp ne ptr %i.aer, null             ; 2 uses
  %i.aes = zext i1 %.not553 to i32
  %not..not553 = xor i1 %.not553, true
  %i.aet = zext i1 %not..not553 to i64
  br label %.preheader691.1

.preheader691.1:                                  ; preds = %bb.bu, %.preheader691.preheader
  %.3471 = phi i64 [ 1, %.preheader691.preheader ], [ %i.aet, %bb.bu ]
  %.3466 = phi i32 [ 0, %.preheader691.preheader ], [ %i.aes, %bb.bu ] ; 2 uses
  %i.aeu = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aev = load ptr, ptr %i.aeu, align 8, !tbaa !229
  %i.aew = getelementptr inbounds nuw i8, ptr %i.aev, i64 72
  %i.aex = load ptr, ptr %i.aew, align 8, !tbaa !218 ; 2 uses
  %.not552.1 = icmp eq ptr %i.aex, null
  br i1 %.not552.1, label %.preheader691.2, label %bb.bv

bb.bv:                                            ; preds = %.preheader691.1
  %i.aey = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aez = load i32, ptr %i.aey, align 8, !tbaa !234
  %i.afa = and i32 %i.aez, 3
  %i.afb = zext nneg i32 %i.afa to i64
  %i.afc = getelementptr inbounds nuw [8 x i8], ptr %i.aex, i64 %i.afb
  %i.afd = load ptr, ptr %i.afc, align 8, !tbaa !110
  %.not553.1 = icmp ne ptr %i.afd, null           ; 2 uses
  %i.afe = zext i1 %.not553.1 to i32
  %spec.select613.1 = add nuw nsw i32 %.3466, %i.afe
  %i.aff = select i1 %.not553.1, i64 %.3471, i64 2
  br label %.preheader691.2

.preheader691.2:                                  ; preds = %bb.bv, %.preheader691.1
  %.3471.1 = phi i64 [ 2, %.preheader691.1 ], [ %i.aff, %bb.bv ]
  %.3466.1 = phi i32 [ %.3466, %.preheader691.1 ], [ %spec.select613.1, %bb.bv ] ; 2 uses
  %i.afg = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.afh = load ptr, ptr %i.afg, align 8, !tbaa !229
  %i.afi = getelementptr inbounds nuw i8, ptr %i.afh, i64 72
  %i.afj = load ptr, ptr %i.afi, align 8, !tbaa !218 ; 2 uses
  %.not552.2 = icmp eq ptr %i.afj, null
  br i1 %.not552.2, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %.preheader691.2
  %i.afk = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.afl = load i32, ptr %i.afk, align 8, !tbaa !234
  %i.afm = and i32 %i.afl, 3
  %i.afn = zext nneg i32 %i.afm to i64
  %i.afo = getelementptr inbounds nuw [8 x i8], ptr %i.afj, i64 %i.afn
  %i.afp = load ptr, ptr %i.afo, align 8, !tbaa !110
  %.not553.2 = icmp ne ptr %i.afp, null           ; 2 uses
  %i.afq = zext i1 %.not553.2 to i32
  %spec.select613.2 = add nuw nsw i32 %.3466.1, %i.afq
  %i.afr = select i1 %.not553.2, i64 %.3471.1, i64 0
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %.preheader691.2
  %.3471.2 = phi i64 [ 0, %.preheader691.2 ], [ %i.afr, %bb.bw ]
  %.3466.2 = phi i32 [ %.3466.1, %.preheader691.2 ], [ %spec.select613.2, %bb.bw ]
  switch i32 %.3466.2, label %.critedge607 [
    i32 1, label %.critedge602
    i32 2, label %bb.by
    i32 3, label %bb.cb
  ]

bb.by:                                            ; preds = %bb.bx
  %i.afs = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.3471.2 ; 2 uses
  %i.aft = load ptr, ptr %i.afs, align 8, !tbaa !229
  %i.afu = getelementptr inbounds nuw i8, ptr %i.afs, i64 8
  %i.afv = load i32, ptr %i.afu, align 8, !tbaa !234
  %i.afw = sext i32 %i.afv to i64
  %i.afx = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh11eorgoppotblE, i64 %i.afw
  %i.afy = load i32, ptr %i.afx, align 4, !tbaa !57 ; 2 uses
  %i.afz = getelementptr inbounds nuw i8, ptr %i.aft, i64 72
  %i.aga = load ptr, ptr %i.afz, align 8, !tbaa !218 ; 3 uses
  %.not543 = icmp eq ptr %i.aga, null
  br i1 %.not543, label %.critedge607, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.agb = and i32 %i.afy, 3
  %i.agc = zext nneg i32 %i.agb to i64
  %i.agd = getelementptr inbounds nuw [8 x i8], ptr %i.aga, i64 %i.agc
  %i.age = load ptr, ptr %i.agd, align 8, !tbaa !110
  %.not544 = icmp eq ptr %i.age, null
  br i1 %.not544, label %bb.ca, label %.critedge602

bb.ca:                                            ; preds = %bb.bz
  %i.agf = sext i32 %i.afy to i64
  %i.agg = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh7esymtblE, i64 %i.agf
  %i.agh = load i32, ptr %i.agg, align 4, !tbaa !57
  %i.agi = and i32 %i.agh, 3
  %i.agj = zext nneg i32 %i.agi to i64
  %i.agk = getelementptr inbounds nuw [8 x i8], ptr %i.aga, i64 %i.agj
  %i.agl = load ptr, ptr %i.agk, align 8, !tbaa !110
  %.not546 = icmp eq ptr %i.agl, null
  br i1 %.not546, label %.critedge607, label %.critedge602

bb.cb:                                            ; preds = %bb.bx
  tail call void @_Z15terminatetetgenP10tetgenmeshi(ptr noundef nonnull %0, i32 noundef 2)
  br label %.critedge607

.critedge607:                                     ; preds = %bb.by, %bb.bt, %bb.cb, %bb.bx, %bb.ca
  %i.agm = tail call noundef zeroext i1 @_ZN10tetgenmesh21valid_constrained_f32EPNS_7trifaceEPdS2_(ptr noundef nonnull align 8 dereferenceable(69984) %0, ptr noundef nonnull %1, ptr poison, ptr poison)
  br i1 %i.agm, label %bb.cc, label %.critedge602

bb.cc:                                            ; preds = %.critedge607
  %i.agn = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.ago = load i32, ptr %i.agn, align 8, !tbaa !293
  %.not549 = icmp eq i32 %i.ago, 0
  br i1 %.not549, label %.critedge611, label %.critedge609

.critedge609:                                     ; preds = %bb.cc
  %i.agp = tail call noundef i32 @_ZN10tetgenmesh20checkflipeligibilityEiPdS0_S0_S0_S0_iiPNS_15flipconstraintsE(ptr noundef nonnull align 8 dereferenceable(69984) %0, i32 noundef 2, ptr noundef %.0496671683, ptr noundef %.0495673682, ptr noundef %.0494675681, ptr noundef %i.t, ptr noundef %i.o, i32 noundef %3, i32 noundef %4, ptr noundef nonnull %5)
  %i.agq = icmp eq i32 %i.agp, 0
  br i1 %i.agq, label %.critedge611, label %.critedge602

.critedge611:                                     ; preds = %bb.cc, %.critedge609
  tail call void @_ZN10tetgenmesh6flip32EPNS_7trifaceEiPNS_15flipconstraintsE(ptr noundef nonnull align 8 dereferenceable(69984) %0, ptr noundef nonnull %1, i32 noundef %.0489677680, ptr noundef nonnull %5)
  %i.agr = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ags = load i32, ptr %i.agr, align 8, !tbaa !277
  %i.agt = icmp ne i32 %i.ags, 0
  %i.agu = icmp eq i32 %3, 0                      ; 2 uses
  %or.cond9 = and i1 %i.agu, %i.agt
  br i1 %or.cond9, label %bb.cd, label %bb.cf

bb.cd:                                            ; preds = %.critedge611
  %i.agv = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.agw = load double, ptr %i.agv, align 8, !tbaa !278 ; 2 uses
  %i.agx = fcmp ult double %i.agw, 0.000000e+00
  br i1 %i.agx, label %bb.ce, label %.critedge602.loopexit

bb.ce:                                            ; preds = %bb.cd
  %i.agy = tail call double @llvm.fabs.f64(double %i.agw)
  %i.agz = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.aha = load double, ptr %i.agz, align 8, !tbaa !301
  %i.ahb = fcmp olt double %i.agy, %i.aha
  br i1 %i.ahb, label %.critedge602.loopexit, label %bb.cf

.critedge602.loopexit:                            ; preds = %bb.ce, %bb.cd
  tail call void @_ZN10tetgenmesh6flip23EPNS_7trifaceEiPNS_15flipconstraintsE(ptr noundef nonnull align 8 dereferenceable(69984) %0, ptr noundef nonnull %1, i32 noundef %.0489677680, ptr noundef nonnull %5)
  %i.ahc = getelementptr inbounds nuw i8, ptr %0, i64 68684 ; 3 uses
  %i.ahd = load ptr, ptr %1, align 8, !tbaa !229
  %i.ahe = load i32, ptr %i.ahc, align 4, !tbaa !230
  %i.ahf = sext i32 %i.ahe to i64
  %i.ahg = getelementptr inbounds [4 x i8], ptr %i.ahd, i64 %i.ahf ; 2 uses
  %i.ahh = load i32, ptr %i.ahg, align 4, !tbaa !57
  %i.ahi = add i32 %i.ahh, 65536
  store i32 %i.ahi, ptr %i.ahg, align 4, !tbaa !57
  %i.ahj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ahk = load ptr, ptr %i.ahj, align 8, !tbaa !229
  %i.ahl = load i32, ptr %i.ahc, align 4, !tbaa !230
  %i.ahm = sext i32 %i.ahl to i64
  %i.ahn = getelementptr inbounds [4 x i8], ptr %i.ahk, i64 %i.ahm ; 2 uses
  %i.aho = load i32, ptr %i.ahn, align 4, !tbaa !57
  %i.ahp = add i32 %i.aho, 65536
  store i32 %i.ahp, ptr %i.ahn, align 4, !tbaa !57
  %i.ahq = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ahr = load ptr, ptr %i.ahq, align 8, !tbaa !229
  %i.ahs = load i32, ptr %i.ahc, align 4, !tbaa !230
  %i.aht = sext i32 %i.ahs to i64
  %i.ahu = getelementptr inbounds [4 x i8], ptr %i.ahr, i64 %i.aht ; 2 uses
  %i.ahv = load i32, ptr %i.ahu, align 4, !tbaa !57
  %i.ahw = add i32 %i.ahv, 65536
  store i32 %i.ahw, ptr %i.ahu, align 4, !tbaa !57
  br label %.critedge602

bb.cf:                                            ; preds = %bb.ce, %.critedge611
  %i.ahx = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.ahy = load i32, ptr %i.ahx, align 4, !tbaa !294
  %.not551 = icmp eq i32 %i.ahy, 0
  br i1 %.not551, label %.critedge602, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.ahz = getelementptr inbounds nuw i8, ptr %0, i64 2800 ; 2 uses
  %i.aia = load ptr, ptr %i.ahz, align 8, !tbaa !264 ; 5 uses
  br i1 %i.agu, label %.preheader689, label %bb.ch

.preheader689:                                    ; preds = %bb.cg
  %i.aib = getelementptr inbounds nuw i8, ptr %i.aia, i64 32 ; 3 uses
  %i.aic = load i64, ptr %i.aib, align 8, !tbaa !98
  %i.aid = trunc i64 %i.aic to i32
  %i.aie = tail call noundef ptr @_ZN10tetgenmesh9arraypool8getblockEi(ptr noundef nonnull align 8 dereferenceable(48) %i.aia, i32 noundef %i.aid)
  %i.aif = load i64, ptr %i.aib, align 8, !tbaa !98 ; 2 uses
  %i.aig = getelementptr inbounds nuw i8, ptr %i.aia, i64 4
  %i.aih = load i32, ptr %i.aig, align 4, !tbaa !99
  %i.aii = add nsw i32 %i.aih, -1
  %i.aij = sext i32 %i.aii to i64
  %i.aik = and i64 %i.aif, %i.aij
  %i.ail = load i32, ptr %i.aia, align 8, !tbaa !100
  %i.aim = sext i32 %i.ail to i64
  %i.ain = mul nsw i64 %i.aik, %i.aim
  %i.aio = getelementptr inbounds i8, ptr %i.aie, i64 %i.ain ; 2 uses
  %i.aip = add nsw i64 %i.aif, 1
  store i64 %i.aip, ptr %i.aib, align 8, !tbaa !98
  %i.aiq = load ptr, ptr %1, align 8, !tbaa !229
  store ptr %i.aiq, ptr %i.aio, align 8, !tbaa !229
  %i.air = load i32, ptr %i.h, align 8, !tbaa !234
  %i.ais = getelementptr inbounds nuw i8, ptr %i.aio, i64 8
  store i32 %i.air, ptr %i.ais, align 8, !tbaa !234
  %i.ait = load ptr, ptr %i.ahz, align 8, !tbaa !264 ; 4 uses
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.ait, i64 32 ; 3 uses
  %i.aiv = load i64, ptr %i.aiu, align 8, !tbaa !98
  %i.aiw = trunc i64 %i.aiv to i32
  %i.aix = tail call noundef ptr @_ZN10tetgenmesh9arraypool8getblockEi(ptr noundef nonnull align 8 dereferenceable(48) %i.ait, i32 noundef %i.aiw)
  %i.aiy = load i64, ptr %i.aiu, align 8, !tbaa !98 ; 2 uses
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.ait, i64 4
  %i.aja = load i32, ptr %i.aiz, align 4, !tbaa !99
  %i.ajb = add nsw i32 %i.aja, -1
  %i.ajc = sext i32 %i.ajb to i64
  %i.ajd = and i64 %i.aiy, %i.ajc
  %i.aje = load i32, ptr %i.ait, align 8, !tbaa !100
  %i.ajf = sext i32 %i.aje to i64
  %i.ajg = mul nsw i64 %i.ajd, %i.ajf
  %i.ajh = getelementptr inbounds i8, ptr %i.aix, i64 %i.ajg ; 2 uses
  %i.aji = add nsw i64 %i.aiy, 1
  store i64 %i.aji, ptr %i.aiu, align 8, !tbaa !98
  %i.ajj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ajk = load ptr, ptr %i.ajj, align 8, !tbaa !229
  store ptr %i.ajk, ptr %i.ajh, align 8, !tbaa !229
  %i.ajl = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ajm = load i32, ptr %i.ajl, align 8, !tbaa !234
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.ajh, i64 8
  store i32 %i.ajm, ptr %i.ajn, align 8, !tbaa !234
  br label %.critedge602

bb.ch:                                            ; preds = %bb.cg
  %i.ajo = call noundef i32 @_ZN10tetgenmesh9arraypool8newindexEPPv(ptr noundef nonnull align 8 dereferenceable(48) %i.aia, ptr noundef nonnull %i.a) ; 0 uses
  %i.ajp = icmp eq i32 %4, 1
  br i1 %i.ajp, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.ajq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ajr = load ptr, ptr %i.a, align 8, !tbaa !303 ; 2 uses
  %i.ajs = load ptr, ptr %i.ajq, align 8, !tbaa !229
  store ptr %i.ajs, ptr %i.ajr, align 8, !tbaa !229
  %i.ajt = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aju = load i32, ptr %i.ajt, align 8, !tbaa !234
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.ajr, i64 8
  store i32 %i.aju, ptr %i.ajv, align 8, !tbaa !234
  br label %.critedge602

bb.cj:                                            ; preds = %bb.ch
  %i.ajw = load ptr, ptr %i.a, align 8, !tbaa !303 ; 2 uses
  %i.ajx = load ptr, ptr %1, align 8, !tbaa !229
  store ptr %i.ajx, ptr %i.ajw, align 8, !tbaa !229
  %i.ajy = load i32, ptr %i.h, align 8, !tbaa !234
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.ajw, i64 8
  store i32 %i.ajy, ptr %i.ajz, align 8, !tbaa !234
  br label %.critedge602

.critedge602.loopexit.split.loop.exit763:         ; preds = %._crit_edge761
  %i.aka = add nsw i32 %i.va, 1
  br label %.critedge602

.critedge602.loopexit686.split.loop.exit723:      ; preds = %bb.y
  %i.akb = add nsw i32 %i.id, 1
  br label %.critedge602

.critedge602:                                     ; preds = %bb.v, %.loopexit, %bb.bb, %._crit_edge755, %.thread662, %.critedge599, %.critedge602.loopexit, %.critedge602.loopexit686.split.loop.exit723, %.critedge602.loopexit.split.loop.exit763, %.preheader689, %bb.ab, %.split679, %bb.ac, %bb.z, %.critedge609, %bb.bs, %._crit_edge, %bb.br, %bb.bl, %bb.bm, %bb.ca, %bb.bz, %bb.bx, %.critedge607, %bb.cf, %bb.ci, %bb.cj
  %.3500 = phi i32 [ %i.akb, %.critedge602.loopexit686.split.loop.exit723 ], [ %2, %bb.ac ], [ %2, %.split679 ], [ 2, %bb.cf ], [ 2, %.preheader689 ], [ 2, %._crit_edge755 ], [ 2, %bb.cj ], [ 2, %bb.ci ], [ %2, %.critedge607 ], [ %2, %bb.bx ], [ %2, %bb.bz ], [ %2, %bb.ca ], [ %2, %bb.bm ], [ %2, %bb.bl ], [ %2, %bb.br ], [ %2, %._crit_edge ], [ %2, %bb.bs ], [ %2, %.critedge609 ], [ %2, %bb.z ], [ %2, %bb.ab ], [ 3, %.critedge602.loopexit ], [ %2, %.critedge599 ], [ %i.aka, %.critedge602.loopexit.split.loop.exit763 ], [ %2, %.thread662 ], [ %i.va, %bb.bb ], [ %i.id, %bb.v ], [ 2, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  ret i32 %.3500
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 2) i32 @_ZN10tetgenmesh7getedgeEPdS0_PNS_7trifaceE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(69984) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, null
  %i.b = icmp eq ptr %2, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 68664
  %i.d = load i32, ptr %i.c, align 8, !tbaa !221
  %i.e = sext i32 %i.d to i64                     ; 2 uses
  %i.f = getelementptr [4 x i8], ptr %1, i64 %i.e
  %i.g = getelementptr i8, ptr %i.f, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !57
  %i.i = icmp ult i32 %i.h, 256
  br i1 %i.i, label %bb.ae, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr [4 x i8], ptr %2, i64 %i.e
  %i.k = getelementptr i8, ptr %i.j, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !57
  %i.m = icmp ult i32 %i.l, 256
  br i1 %i.m, label %bb.ae, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %3, align 8, !tbaa !229    ; 5 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZN10tetgenmesh9isdeadtetERNS_7trifaceE.exit.thread, label %_ZN10tetgenmesh9isdeadtetERNS_7trifaceE.exit

_ZN10tetgenmesh9isdeadtetERNS_7trifaceE.exit:     ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !218
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %_ZN10tetgenmesh9isdeadtetERNS_7trifaceE.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZN10tetgenmesh9isdeadtetERNS_7trifaceE.exit
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !234
  %i.u = sext i32 %i.t to i64                     ; 4 uses
  %i.v = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8orgpivotE, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !57
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.x
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !218  ; 2 uses
  %i.aa = icmp eq ptr %i.z, %1
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9destpivotE, i64 %i.u
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !57
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !218
  %i.ag = icmp eq ptr %i.af, %2
  br i1 %i.ag, label %bb.ae, label %_ZN10tetgenmesh9isdeadtetERNS_7trifaceE.exit.thread

bb.g:                                             ; preds = %bb.e
  %i.ah = icmp eq ptr %i.z, %2
  br i1 %i.ah, label %bb.h, label %_ZN10tetgenmesh9isdeadtetERNS_7trifaceE.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9destpivotE, i64 %i.u
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !57
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.ak
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !218
  %i.an = icmp eq ptr %i.am, %1
  br i1 %i.an, label %bb.i, label %_ZN10tetgenmesh9isdeadtetERNS_7trifaceE.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh7esymtblE, i64 %i.u
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !57
  store i32 %i.ap, ptr %i.s, align 8, !tbaa !234
  br label %bb.ae

_ZN10tetgenmesh9isdeadtetERNS_7trifaceE.exit.thread: ; preds = %bb.d, %bb.f, %bb.h, %bb.g, %_ZN10tetgenmesh9isdeadtetERNS_7trifaceE.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 68660 ; 3 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !242
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds [8 x i8], ptr %1, i64 %i.as
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !218
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = and i64 %i.av, -16
  %i.ax = inttoptr i64 %i.aw to ptr               ; 4 uses
  store ptr %i.ax, ptr %3, align 8, !tbaa !229
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.az = load ptr, ptr %i.ay, align 16, !tbaa !218
  %i.ba = icmp eq ptr %i.az, %1
  br i1 %i.ba, label %_ZN10tetgenmesh12point2tetorgEPdRNS_7trifaceE.exit, label %bb.j

bb.j:                                             ; preds = %_ZN10tetgenmesh9isdeadtetERNS_7trifaceE.exit.thread
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !218
  %i.bd = icmp eq ptr %i.bc, %1
  br i1 %i.bd, label %_ZN10tetgenmesh12point2tetorgEPdRNS_7trifaceE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
end_hunk_2
