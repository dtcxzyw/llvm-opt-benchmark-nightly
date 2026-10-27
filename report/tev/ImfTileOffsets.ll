Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/ImfTileOffsets?download=true
inline.NumInlined: 917
inline.NumDeleted: 495
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNK7Imf_3_411TileOffsets12getTileOrderEPiS1_S1_S1_:bb.a
  %i.bz = and i64 %indvars.iv.next150, 4294967295
  %i.ca = icmp ugt i64 %i.j, %i.bz
  br i1 %i.ca, label %.preheader107, label %._crit_edge113, !llvm.loop !104

.lr.ph:                                           ; preds = %.lr.ph.preheader229, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader229 ] ; 2 uses
  %.1110 = phi i64 [ %i.cj, %.lr.ph ], [ %.1110.ph, %.lr.ph.preheader229 ]
  %i.cb = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %indvars.iv ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !36
  %i.ce = load ptr, ptr %i.cb, align 8, !tbaa !35
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = ashr exact i64 %i.ch, 3
  %i.cj = add i64 %i.ci, %.1110                   ; 2 uses
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %i.ck = and i64 %indvars.iv.next, 4294967295
  %i.cl = icmp ugt i64 %i.r, %i.ck
  br i1 %i.cl, label %.lr.ph, label %._crit_edge, !llvm.loop !105

.preheader106:                                    ; preds = %_ZNSt3__16vectorIN7Imf_3_412_GLOBAL__N_17tileposENS_9allocatorIS3_EEEC2Em.exit, %._crit_edge122
  %indvars.iv161 = phi i64 [ %indvars.iv.next162, %._crit_edge122 ], [ 0, %_ZNSt3__16vectorIN7Imf_3_412_GLOBAL__N_17tileposENS_9allocatorIS3_EEEC2Em.exit ] ; 3 uses
  %.076124 = phi i64 [ %.177.lcssa, %._crit_edge122 ], [ 0, %_ZNSt3__16vectorIN7Imf_3_412_GLOBAL__N_17tileposENS_9allocatorIS3_EEEC2Em.exit ] ; 2 uses
  %i.cm = getelementptr inbounds nuw [24 x i8], ptr %i.by, i64 %indvars.iv161 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !29 ; 2 uses
  %i.cp = load ptr, ptr %i.cm, align 8, !tbaa !30 ; 3 uses
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = ptrtoint ptr %i.cp to i64
  %i.cs = sub i64 %i.cq, %i.cr
  %i.ct = sdiv exact i64 %i.cs, 24
  %.not139 = icmp eq ptr %i.co, %i.cp
  br i1 %.not139, label %._crit_edge122, label %.preheader105.preheader

.preheader105.preheader:                          ; preds = %.preheader106
  %i.cu = trunc nuw i64 %indvars.iv161 to i32
  br label %.preheader105

._crit_edge126:                                   ; preds = %._crit_edge122, %_ZNSt3__16vectorIN7Imf_3_412_GLOBAL__N_17tileposENS_9allocatorIS3_EEEC2Em.exit
  %i.cv = ptrtoint ptr %.sroa.19.0 to i64
  %i.cw = ptrtoint ptr %.sroa.0.0 to i64          ; 3 uses
  %i.cx = sub i64 %i.cv, %i.cw
  %i.cy = sdiv exact i64 %i.cx, 24
  %i.cz = icmp eq ptr %.sroa.19.0, %.sroa.0.0
  %i.da = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cy, i1 true)
  %i.db = shl nuw nsw i64 %i.da, 1
  %i.dc = xor i64 %i.db, 126
  %i.dd = select i1 %i.cz, i64 0, i64 %i.dc
  tail call fastcc void @_ZNSt3__111__introsortINS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposELb0EEEvT1_S9_T0_NS_15iterator_traitsIS9_E15difference_typeEb(ptr noundef %.sroa.0.0, ptr noundef %.sroa.19.0, i64 noundef %i.dd, i1 noundef zeroext true)
  br i1 %.not.i182, label %._crit_edge130, label %.lr.ph129.preheader

.lr.ph129.preheader:                              ; preds = %._crit_edge126
  %xtraiter = and i64 %.071.lcssa181, 1
  %i.de = icmp eq i64 %.071.lcssa181, 1
  br i1 %i.de, label %.lr.ph129.epil.preheader, label %.lr.ph129.preheader.new

.lr.ph129.preheader.new:                          ; preds = %.lr.ph129.preheader
  %unroll_iter = and i64 %.071.lcssa181, 1152921504606846974
  br label %.lr.ph129

.preheader105:                                    ; preds = %.preheader105.preheader, %._crit_edge118
  %indvars.iv157 = phi i64 [ 0, %.preheader105.preheader ], [ %indvars.iv.next158, %._crit_edge118 ] ; 3 uses
  %.177120 = phi i64 [ %.076124, %.preheader105.preheader ], [ %.2.lcssa, %._crit_edge118 ] ; 2 uses
  %i.df = getelementptr inbounds nuw [24 x i8], ptr %i.cp, i64 %indvars.iv157 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !36 ; 2 uses
  %i.di = load ptr, ptr %i.df, align 8, !tbaa !35 ; 3 uses
  %i.dj = ptrtoint ptr %i.dh to i64
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = sub i64 %i.dj, %i.dk
  %i.dm = ashr exact i64 %i.dl, 3
  %.not140 = icmp eq ptr %i.dh, %i.di
  br i1 %.not140, label %._crit_edge118, label %.lr.ph117.preheader

.lr.ph117.preheader:                              ; preds = %.preheader105
  %i.dn = trunc nuw i64 %indvars.iv157 to i32
  br label %.lr.ph117

._crit_edge122:                                   ; preds = %._crit_edge118, %.preheader106
  %.177.lcssa = phi i64 [ %.076124, %.preheader106 ], [ %.2.lcssa, %._crit_edge118 ]
  %indvars.iv.next162 = add i64 %indvars.iv161, 1 ; 2 uses
  %i.do = and i64 %indvars.iv.next162, 4294967295
  %i.dp = icmp ugt i64 %.pre-phi174, %i.do
  br i1 %i.dp, label %.preheader106, label %._crit_edge126, !llvm.loop !106

._crit_edge118:                                   ; preds = %.lr.ph117, %.preheader105
  %.2.lcssa = phi i64 [ %.177120, %.preheader105 ], [ %i.dz, %.lr.ph117 ] ; 2 uses
  %indvars.iv.next158 = add i64 %indvars.iv157, 1 ; 2 uses
  %i.dq = and i64 %indvars.iv.next158, 4294967295
  %i.dr = icmp ugt i64 %i.ct, %i.dq
  br i1 %i.dr, label %.preheader105, label %._crit_edge122, !llvm.loop !107

.lr.ph117:                                        ; preds = %.lr.ph117.preheader, %.lr.ph117
  %indvars.iv153 = phi i64 [ 0, %.lr.ph117.preheader ], [ %indvars.iv.next154, %.lr.ph117 ] ; 3 uses
  %.2115 = phi i64 [ %.177120, %.lr.ph117.preheader ], [ %i.dz, %.lr.ph117 ] ; 2 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %indvars.iv153
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !40
  %i.du = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0, i64 %.2115 ; 4 uses
  store i64 %i.dt, ptr %i.du, align 8, !tbaa !50
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dw = trunc nuw i64 %indvars.iv153 to i32
  store i32 %i.dw, ptr %i.dv, align 8, !tbaa !118
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 12
  store i32 %i.dn, ptr %i.dx, align 4, !tbaa !119
  %i.dy = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  store i32 %i.cu, ptr %i.dy, align 8, !tbaa !120
  %i.dz = add i64 %.2115, 1                       ; 2 uses
  %indvars.iv.next154 = add i64 %indvars.iv153, 1 ; 2 uses
  %i.ea = and i64 %indvars.iv.next154, 4294967295
  %i.eb = icmp ugt i64 %i.dm, %i.ea
  br i1 %i.eb, label %.lr.ph117, label %._crit_edge118, !llvm.loop !108

._crit_edge130.loopexit.unr-lcssa:                ; preds = %.lr.ph129
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge130, label %.lr.ph129.epil.preheader

.lr.ph129.epil.preheader:                         ; preds = %._crit_edge130.loopexit.unr-lcssa, %.lr.ph129.preheader
  %.068127.epil.init = phi i64 [ 0, %.lr.ph129.preheader ], [ %i.ik, %._crit_edge130.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod233 = trunc i64 %.071.lcssa181 to i1
  tail call void @llvm.assume(i1 %lcmp.mod233)
  %i.ec = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0, i64 %.068127.epil.init ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !118
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.068127.epil.init
  store i32 %i.ee, ptr %i.ef, align 4, !tbaa !24
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ec, i64 12
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !119
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.068127.epil.init
  store i32 %i.eh, ptr %i.ei, align 4, !tbaa !24
  br label %._crit_edge130

._crit_edge130:                                   ; preds = %.lr.ph129.epil.preheader, %._crit_edge130.loopexit.unr-lcssa, %._crit_edge126
  %i.ej = load i32, ptr %0, align 8, !tbaa !20
  switch i32 %i.ej, label %.loopexit [
    i32 0, label %.preheader
    i32 1, label %.preheader101
    i32 2, label %.preheader103
    i32 3, label %bb.d
  ]

.preheader103:                                    ; preds = %._crit_edge130
  br i1 %.not.i182, label %.loopexit, label %.lr.ph132

.lr.ph132:                                        ; preds = %.preheader103
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 9 uses
  %min.iters.check199 = icmp ult i64 %.071.lcssa181, 5
  br i1 %min.iters.check199, label %scalar.ph198.preheader, label %vector.memcheck

scalar.ph198.preheader:                           ; preds = %vector.body209, %vector.memcheck, %.lr.ph132
  %.0131.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph132 ], [ %n.vec208, %vector.body209 ] ; 7 uses
  %i.el = sub i64 %.071.lcssa181, %.0131.ph
  %.neg = add i64 %.0131.ph, 1
  %xtraiter234.a = and i64 %i.el, 1
  %lcmp.mod235.not.a = icmp eq i64 %xtraiter234.a, 0
  br i1 %lcmp.mod235.not.a, label %scalar.ph198.prol.loopexit, label %scalar.ph198.prol

scalar.ph198.prol:                                ; preds = %scalar.ph198.preheader
  %i.em = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0, i64 %.0131.ph
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !120 ; 2 uses
  %i.ep = load i32, ptr %i.ek, align 4, !tbaa !21
  %i.eq = srem i32 %i.eo, %i.ep
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.0131.ph
  store i32 %i.eq, ptr %i.er, align 4, !tbaa !24
  %i.es = load i32, ptr %i.ek, align 4, !tbaa !21
  %i.et = sdiv i32 %i.eo, %i.es
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.0131.ph
  store i32 %i.et, ptr %i.eu, align 4, !tbaa !24
  %i.ev = add nuw i64 %.0131.ph, 1
  br label %scalar.ph198.prol.loopexit

scalar.ph198.prol.loopexit:                       ; preds = %scalar.ph198.prol, %scalar.ph198.preheader
  %.0131.unr = phi i64 [ %.0131.ph, %scalar.ph198.preheader ], [ %i.ev, %scalar.ph198.prol ]
  %i.ew = icmp eq i64 %.071.lcssa181, %.neg
  br i1 %i.ew, label %.loopexit.thread, label %scalar.ph198

vector.memcheck:                                  ; preds = %.lr.ph132
  %i.ex = shl nuw nsw i64 %.071.lcssa181, 2       ; 2 uses
  %i.ey = getelementptr i8, ptr %3, i64 %i.ex     ; 2 uses
  %i.ez = getelementptr i8, ptr %4, i64 %i.ex     ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %bound0 = icmp ult ptr %3, %i.ez
  %bound1 = icmp ult ptr %4, %i.ey
  %found.conflict = and i1 %bound0, %bound1
  %bound0200 = icmp ult ptr %3, %i.fa
  %bound1201 = icmp ult ptr %i.ek, %i.ey
  %found.conflict202 = and i1 %bound0200, %bound1201
  %conflict.rdx = or i1 %found.conflict, %found.conflict202
  %bound0203 = icmp ult ptr %4, %i.fa
  %bound1204 = icmp ult ptr %i.ek, %i.ez
  %found.conflict205 = and i1 %bound0203, %bound1204
  %conflict.rdx206 = or i1 %conflict.rdx, %found.conflict205
  br i1 %conflict.rdx206, label %scalar.ph198.preheader, label %vector.ph207

vector.ph207:                                     ; preds = %vector.memcheck
  %i.fb = and i64 %.071.lcssa181, 3               ; 2 uses
  %i.fc = icmp eq i64 %i.fb, 0
  %i.fd = select i1 %i.fc, i64 4, i64 %i.fb
  %n.vec208 = sub nsw i64 %.071.lcssa181, %i.fd   ; 2 uses
  %5 = load <1 x i32>, ptr %i.ek, align 4
  %broadcast.splat212 = shufflevector <1 x i32> %5, <1 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body209

vector.body209:                                   ; preds = %vector.body209, %vector.ph207
  %index210 = phi i64 [ 0, %vector.ph207 ], [ %index.next213, %vector.body209 ] ; 7 uses
  %i.fe = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0, i64 %index210
  %i.ff = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0, i64 %index210
  %i.fg = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0, i64 %index210
  %i.fh = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0, i64 %index210
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ff, i64 40
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fg, i64 64
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fh, i64 88
  %i.fm = load i32, ptr %i.fi, align 8, !tbaa !120
  %i.fn = load i32, ptr %i.fj, align 8, !tbaa !120
  %i.fo = load i32, ptr %i.fk, align 8, !tbaa !120
  %i.fp = load i32, ptr %i.fl, align 8, !tbaa !120
  %i.fq = insertelement <4 x i32> poison, i32 %i.fm, i64 0
  %i.fr = insertelement <4 x i32> %i.fq, i32 %i.fn, i64 1
  %i.fs = insertelement <4 x i32> %i.fr, i32 %i.fo, i64 2
  %i.ft = insertelement <4 x i32> %i.fs, i32 %i.fp, i64 3
  %.frozen = freeze <4 x i32> %i.ft               ; 2 uses
  %broadcast.splat.frozen = freeze <4 x i32> %broadcast.splat212 ; 2 uses
  %6 = sdiv <4 x i32> %.frozen, %broadcast.splat.frozen ; 2 uses
  %7 = mul <4 x i32> %6, %broadcast.splat.frozen
  %.decomposed = sub <4 x i32> %.frozen, %7
  %8 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index210
  store <4 x i32> %.decomposed, ptr %8, align 4, !tbaa !24, !alias.scope !121, !noalias !122
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index210
  store <4 x i32> %6, ptr %i.fu, align 4, !tbaa !24, !alias.scope !123, !noalias !124
  %index.next213 = add nuw i64 %index210, 4       ; 2 uses
  %i.fv = icmp eq i64 %index.next213, %n.vec208
  br i1 %i.fv, label %scalar.ph198.preheader, label %vector.body209, !llvm.loop !113

.preheader101:                                    ; preds = %._crit_edge130
  br i1 %.not.i182, label %.loopexit, label %.lr.ph134.preheader

.lr.ph134.preheader:                              ; preds = %.preheader101
  %min.iters.check218 = icmp ult i64 %.071.lcssa181, 9
  %i.fw = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.fw, -32
  %or.cond = or i1 %min.iters.check218, %diff.check
  br i1 %or.cond, label %.lr.ph134.preheader227, label %vector.ph220

.lr.ph134.preheader227:                           ; preds = %vector.body222, %.lr.ph134.preheader
  %.066133.ph = phi i64 [ 0, %.lr.ph134.preheader ], [ %n.vec221, %vector.body222 ] ; 7 uses
  %i.fx = sub i64 %.071.lcssa181, %.066133.ph
  %.neg238 = add i64 %.066133.ph, 1
  %xtraiter236 = and i64 %i.fx, 1
  %lcmp.mod237.not = icmp eq i64 %xtraiter236, 0
  br i1 %lcmp.mod237.not, label %.lr.ph134.prol.loopexit, label %.lr.ph134.prol

.lr.ph134.prol:                                   ; preds = %.lr.ph134.preheader227
  %i.fy = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0, i64 %.066133.ph
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  %i.ga = load i32, ptr %i.fz, align 8, !tbaa !120 ; 2 uses
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.066133.ph
  store i32 %i.ga, ptr %i.gb, align 4, !tbaa !24
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.066133.ph
  store i32 %i.ga, ptr %i.gc, align 4, !tbaa !24
  %i.gd = add nuw i64 %.066133.ph, 1
  br label %.lr.ph134.prol.loopexit

.lr.ph134.prol.loopexit:                          ; preds = %.lr.ph134.prol, %.lr.ph134.preheader227
  %.066133.unr = phi i64 [ %.066133.ph, %.lr.ph134.preheader227 ], [ %i.gd, %.lr.ph134.prol ]
  %i.ge = icmp eq i64 %.071.lcssa181, %.neg238
  br i1 %i.ge, label %.loopexit.thread, label %.lr.ph134

vector.ph220:                                     ; preds = %.lr.ph134.preheader
  %i.gf = and i64 %.071.lcssa181, 7               ; 2 uses
  %i.gg = icmp eq i64 %i.gf, 0
  %i.gh = select i1 %i.gg, i64 8, i64 %i.gf
  %n.vec221 = sub nsw i64 %.071.lcssa181, %i.gh   ; 2 uses
  br label %vector.body222

vector.body222:                                   ; preds = %vector.body222, %vector.ph220
  %index223 = phi i64 [ 0, %vector.ph220 ], [ %index.next224, %vector.body222 ] ; 11 uses
  %i.gi = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0, i64 %index223
  %i.gj = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0, i64 %index223
  %i.gk = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0, i64 %index223
  %i.gl = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0, i64 %index223
  %i.gm = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0, i64 %index223
  %i.gn = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0, i64 %index223
  %i.go = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0, i64 %index223
  %i.gp = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0, i64 %index223
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gj, i64 40
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gk, i64 64
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gl, i64 88
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gm, i64 112
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gn, i64 136
  %i.gw = getelementptr inbounds nuw i8, ptr %i.go, i64 160
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gp, i64 184
  %i.gy = load i32, ptr %i.gq, align 8, !tbaa !120
  %i.gz = load i32, ptr %i.gr, align 8, !tbaa !120
  %i.ha = load i32, ptr %i.gs, align 8, !tbaa !120
  %i.hb = load i32, ptr %i.gt, align 8, !tbaa !120
  %i.hc = insertelement <4 x i32> poison, i32 %i.gy, i64 0
  %i.hd = insertelement <4 x i32> %i.hc, i32 %i.gz, i64 1
  %i.he = insertelement <4 x i32> %i.hd, i32 %i.ha, i64 2
  %i.hf = insertelement <4 x i32> %i.he, i32 %i.hb, i64 3 ; 2 uses
  %i.hg = load i32, ptr %i.gu, align 8, !tbaa !120
  %i.hh = load i32, ptr %i.gv, align 8, !tbaa !120
  %i.hi = load i32, ptr %i.gw, align 8, !tbaa !120
  %i.hj = load i32, ptr %i.gx, align 8, !tbaa !120
  %i.hk = insertelement <4 x i32> poison, i32 %i.hg, i64 0
  %i.hl = insertelement <4 x i32> %i.hk, i32 %i.hh, i64 1
  %i.hm = insertelement <4 x i32> %i.hl, i32 %i.hi, i64 2
  %i.hn = insertelement <4 x i32> %i.hm, i32 %i.hj, i64 3 ; 2 uses
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index223 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 16
  store <4 x i32> %i.hf, ptr %i.ho, align 4, !tbaa !24
  store <4 x i32> %i.hn, ptr %i.hp, align 4, !tbaa !24
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index223 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  store <4 x i32> %i.hf, ptr %i.hq, align 4, !tbaa !24
  store <4 x i32> %i.hn, ptr %i.hr, align 4, !tbaa !24
  %index.next224 = add nuw i64 %index223, 8       ; 2 uses
  %i.hs = icmp eq i64 %index.next224, %n.vec221
  br i1 %i.hs, label %.lr.ph134.preheader227, label %vector.body222, !llvm.loop !114

.preheader:                                       ; preds = %._crit_edge130
  br i1 %.not.i182, label %.loopexit, label %.lr.ph136.preheader

.lr.ph136.preheader:                              ; preds = %.preheader
  %i.ht = shl nuw nsw i64 %.071.lcssa181, 2       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %3, i8 0, i64 %i.ht, i1 false), !tbaa !24
  tail call void @llvm.memset.p0.i64(ptr align 4 %4, i8 0, i64 %i.ht, i1 false), !tbaa !24
  br label %.loopexit

bb.c:                                             ; preds = %bb.e
  %i.hu = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

.lr.ph129:                                        ; preds = %.lr.ph129, %.lr.ph129.preheader.new
  %.068127 = phi i64 [ 0, %.lr.ph129.preheader.new ], [ %i.ik, %.lr.ph129 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph129.preheader.new ], [ %niter.next.1, %.lr.ph129 ]
  %i.hv = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0, i64 %.068127 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  %i.hx = load i32, ptr %i.hw, align 8, !tbaa !118
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.068127
  store i32 %i.hx, ptr %i.hy, align 4, !tbaa !24
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hv, i64 12
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !119
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.068127
  store i32 %i.ia, ptr %i.ib, align 4, !tbaa !24
  %i.ic = or disjoint i64 %.068127, 1             ; 3 uses
  %i.id = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0, i64 %i.ic ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  %i.if = load i32, ptr %i.ie, align 8, !tbaa !118
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ic
  store i32 %i.if, ptr %i.ig, align 4, !tbaa !24
  %i.ih = getelementptr inbounds nuw i8, ptr %i.id, i64 12
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !119
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ic
  store i32 %i.ii, ptr %i.ij, align 4, !tbaa !24
  %i.ik = add nuw i64 %.068127, 2                 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge130.loopexit.unr-lcssa, label %.lr.ph129, !llvm.loop !115

.lr.ph134:                                        ; preds = %.lr.ph134.prol.loopexit, %.lr.ph134
  %.066133 = phi i64 [ %i.iw, %.lr.ph134 ], [ %.066133.unr, %.lr.ph134.prol.loopexit ] ; 5 uses
  %i.il = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0, i64 %.066133
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 16
  %i.in = load i32, ptr %i.im, align 8, !tbaa !120 ; 2 uses
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.066133
  store i32 %i.in, ptr %i.io, align 4, !tbaa !24
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.066133
  store i32 %i.in, ptr %i.ip, align 4, !tbaa !24
  %i.iq = add nuw i64 %.066133, 1                 ; 3 uses
  %i.ir = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0, i64 %i.iq
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 16
  %i.it = load i32, ptr %i.is, align 8, !tbaa !120 ; 2 uses
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.iq
  store i32 %i.it, ptr %i.iu, align 4, !tbaa !24
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.iq
  store i32 %i.it, ptr %i.iv, align 4, !tbaa !24
  %i.iw = add nuw i64 %.066133, 2                 ; 2 uses
  %exitcond166.not.1 = icmp eq i64 %i.iw, %.071.lcssa181
  br i1 %exitcond166.not.1, label %.loopexit.thread, label %.lr.ph134, !llvm.loop !116

scalar.ph198:                                     ; preds = %scalar.ph198.prol.loopexit, %scalar.ph198
  %.0131 = phi i64 [ %i.jq, %scalar.ph198 ], [ %.0131.unr, %scalar.ph198.prol.loopexit ] ; 5 uses
  %i.ix = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0, i64 %.0131
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 16
  %i.iz = load i32, ptr %i.iy, align 8, !tbaa !120 ; 2 uses
  %i.ja = load i32, ptr %i.ek, align 4, !tbaa !21
  %i.jb = srem i32 %i.iz, %i.ja
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.0131
  store i32 %i.jb, ptr %i.jc, align 4, !tbaa !24
  %i.jd = load i32, ptr %i.ek, align 4, !tbaa !21
  %i.je = sdiv i32 %i.iz, %i.jd
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.0131
  store i32 %i.je, ptr %i.jf, align 4, !tbaa !24
  %i.jg = add nuw i64 %.0131, 1                   ; 3 uses
  %i.jh = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0, i64 %i.jg
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 16
  %i.jj = load i32, ptr %i.ji, align 8, !tbaa !120 ; 2 uses
  %i.jk = load i32, ptr %i.ek, align 4, !tbaa !21
  %i.jl = srem i32 %i.jj, %i.jk
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.jg
  store i32 %i.jl, ptr %i.jm, align 4, !tbaa !24
  %i.jn = load i32, ptr %i.ek, align 4, !tbaa !21
  %i.jo = sdiv i32 %i.jj, %i.jn
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.jg
  store i32 %i.jo, ptr %i.jp, align 4, !tbaa !24
  %i.jq = add nuw i64 %.0131, 2                   ; 2 uses
  %exitcond165.not.1 = icmp eq i64 %i.jq, %.071.lcssa181
  br i1 %exitcond165.not.1, label %.loopexit.thread, label %scalar.ph198, !llvm.loop !117

bb.d:                                             ; preds = %._crit_edge130
  %i.jr = tail call ptr @__cxa_allocate_exception(i64 56) #22 ; 3 uses
  invoke void @_ZN7Iex_3_48LogicExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(56) %i.jr, ptr noundef nonnull @.str.5)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr nonnull %i.jr, ptr nonnull @_ZTIN7Iex_3_48LogicExcE, ptr nonnull @_ZN7Iex_3_48LogicExcD1Ev) #21
          to label %bb.i unwind label %bb.c

bb.f:                                             ; preds = %bb.d
  %i.js = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.jr) #22
  br label %bb.g

.loopexit:                                        ; preds = %.lr.ph136.preheader, %.preheader103, %.preheader101, %.preheader, %._crit_edge130
  %.not.i.i = icmp eq ptr %.sroa.0.0, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorIN7Imf_3_412_GLOBAL__N_17tileposENS_9allocatorIS3_EEED2B8ne180100Ev.exit, label %.loopexit.thread
end_hunk_0
begin_hunk_1_@_ZNSt3__17__sort4B8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposEEEvT1_S9_S9_S9_T0_:bb.a

_ZNSt3__17__sort3B8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposEEEjT1_S9_S9_T0_.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.f, %bb.g, %bb.h
  %.val7 = load i64, ptr %3, align 8, !tbaa !50
  %.val8 = load i64, ptr %2, align 8, !tbaa !50
  %i.e = icmp ult i64 %.val7, %.val8
  br i1 %i.e, label %bb.i, label %bb.l

bb.i:                                             ; preds = %_ZNSt3__17__sort3B8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposEEEjT1_S9_S9_T0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !51
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !51
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %.val5 = load i64, ptr %2, align 8, !tbaa !50
  %.val6 = load i64, ptr %1, align 8, !tbaa !50
  %i.f = icmp ult i64 %.val5, %.val6
  br i1 %i.f, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !51
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !51
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %.val = load i64, ptr %1, align 8, !tbaa !50
  %.val4 = load i64, ptr %0, align 8, !tbaa !50
  %i.g = icmp ult i64 %.val, %.val4
  br i1 %i.g, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !51
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !51
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.k, %bb.j, %_ZNSt3__17__sort3B8ne180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPN7Imf_3_412_GLOBAL__N_17tileposEEEjT1_S9_S9_T0_.exit
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold noreturn }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { builtin nounwind }
attributes #20 = { builtin allocsize(0) }
attributes #21 = { noreturn }
attributes #22 = { nounwind }

!llvm.module.flags = !{!5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{!0, !38}
!1 = distinct !{!1, !38}
!2 = distinct !{!2, !38}
!3 = distinct !{!3, !38}
!4 = distinct !{null, null, null}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"_ZTSN7Imf_3_49LevelModeE", !9, i64 0}
!14 = !{!"any pointer", !9, i64 0}
!15 = !{!"p1 _ZTSNSt3__16vectorINS0_ImNS_9allocatorImEEEENS1_IS3_EEEE", !14, i64 0}
!16 = !{!"_ZTSNSt3__122__compressed_pair_elemIPNS_6vectorINS1_ImNS_9allocatorImEEEENS2_IS4_EEEELi0ELb0EEE", !15, i64 0}
!17 = !{!"_ZTSNSt3__117__compressed_pairIPNS_6vectorINS1_ImNS_9allocatorImEEEENS2_IS4_EEEENS2_IS6_EEEE", !16, i64 0}
!18 = !{!"_ZTSNSt3__16vectorINS0_INS0_ImNS_9allocatorImEEEENS1_IS3_EEEENS1_IS5_EEEE", !15, i64 0, !15, i64 8, !17, i64 16}
!19 = !{!"_ZTSN7Imf_3_411TileOffsetsE", !13, i64 0, !10, i64 4, !10, i64 8, !18, i64 16}
!20 = !{!19, !13, i64 0}
!21 = !{!19, !10, i64 4}
!22 = !{!18, !15, i64 8}
!23 = !{!18, !15, i64 0}
!24 = !{!10, !10, i64 0}
!25 = !{!"p1 _ZTSNSt3__16vectorImNS_9allocatorImEEEE", !14, i64 0}
!26 = !{!"_ZTSNSt3__122__compressed_pair_elemIPNS_6vectorImNS_9allocatorImEEEELi0ELb0EEE", !25, i64 0}
!27 = !{!"_ZTSNSt3__117__compressed_pairIPNS_6vectorImNS_9allocatorImEEEENS2_IS4_EEEE", !26, i64 0}
!28 = !{!"_ZTSNSt3__16vectorINS0_ImNS_9allocatorImEEEENS1_IS3_EEEE", !25, i64 0, !25, i64 8, !27, i64 16}
!29 = !{!28, !25, i64 8}
!30 = !{!28, !25, i64 0}
!31 = !{!"p1 long", !14, i64 0}
!32 = !{!"_ZTSNSt3__122__compressed_pair_elemIPmLi0ELb0EEE", !31, i64 0}
!33 = !{!"_ZTSNSt3__117__compressed_pairIPmNS_9allocatorImEEEE", !32, i64 0}
!34 = !{!"_ZTSNSt3__16vectorImNS_9allocatorImEEEE", !31, i64 0, !31, i64 8, !33, i64 16}
!35 = !{!34, !31, i64 0}
!36 = !{!34, !31, i64 8}
!37 = !{!31, !31, i64 0}
!38 = !{!"llvm.loop.mustprogress"}
!39 = !{!"long", !9, i64 0}
!40 = !{!39, !39, i64 0}
!41 = !{!25, !25, i64 0}
!42 = !{!15, !15, i64 0}
!43 = !{!"vtable pointer", !8, i64 0}
!44 = !{!43, !43, i64 0}
!45 = !{!"bool", !9, i64 0}
!46 = !{!45, !45, i64 0}
!47 = !{!"llvm.loop.isvectorized", i32 1}
!48 = !{!"llvm.loop.unroll.runtime.disable"}
!49 = !{!"_ZTSN7Imf_3_412_GLOBAL__N_17tileposE", !39, i64 0, !10, i64 8, !10, i64 12, !10, i64 16}
!50 = !{!49, !39, i64 0}
!51 = !{i64 0, i64 8, !40, i64 8, i64 4, !24, i64 12, i64 4, !24, i64 16, i64 4, !24}
!52 = !{i64 0, i64 4, !24, i64 4, i64 4, !24, i64 8, i64 4, !24}
!53 = distinct !{!53, !38}
!54 = distinct !{!54, i1 true, !"_ZNSt3__16__moveB8ne180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPmEES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_"}
!55 = distinct !{!55, !54, !"_ZNSt3__16__moveB8ne180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPmEES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_: argument 0"}
!56 = distinct !{!56, i1 true, !"_ZNSt3__123__dispatch_copy_or_moveB8ne180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPmEES7_S7_EENS_4pairIT2_T4_EES9_T3_SA_"}
!57 = distinct !{!57, !56, !"_ZNSt3__123__dispatch_copy_or_moveB8ne180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPmEES7_S7_EENS_4pairIT2_T4_EES9_T3_SA_: argument 0"}
!58 = distinct !{!58, i1 true, !"_ZNSt3__121__unwrap_and_dispatchB8ne180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPmEES9_S9_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISB_SD_EESB_SC_SD_"}
!59 = distinct !{!59, !58, !"_ZNSt3__121__unwrap_and_dispatchB8ne180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPmEES9_S9_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISB_SD_EESB_SC_SD_: argument 0"}
!60 = distinct !{!60, i1 true, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8ne180100INS_16reverse_iteratorIPmEES6_S6_EENS_4pairIT_T1_EES8_T0_S9_"}
!61 = distinct !{!61, !60, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8ne180100INS_16reverse_iteratorIPmEES6_S6_EENS_4pairIT_T1_EES8_T0_S9_: argument 0"}
!62 = distinct !{!62, !38}
!63 = distinct !{!63, !38}
!64 = distinct !{!64, !38, !77}
!65 = distinct !{!65, !38}
!66 = distinct !{!66, i1 true, !"_ZNSt3__16__moveB8ne180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPmEES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_"}
!67 = distinct !{!67, !66, !"_ZNSt3__16__moveB8ne180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPmEES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_: argument 0"}
!68 = distinct !{!68, i1 true, !"_ZNSt3__123__dispatch_copy_or_moveB8ne180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPmEES7_S7_EENS_4pairIT2_T4_EES9_T3_SA_"}
!69 = distinct !{!69, !68, !"_ZNSt3__123__dispatch_copy_or_moveB8ne180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPmEES7_S7_EENS_4pairIT2_T4_EES9_T3_SA_: argument 0"}
!70 = distinct !{!70, i1 true, !"_ZNSt3__121__unwrap_and_dispatchB8ne180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPmEES9_S9_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISB_SD_EESB_SC_SD_"}
!71 = distinct !{!71, !70, !"_ZNSt3__121__unwrap_and_dispatchB8ne180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPmEES9_S9_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISB_SD_EESB_SC_SD_: argument 0"}
!72 = distinct !{!72, i1 true, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8ne180100INS_16reverse_iteratorIPmEES6_S6_EENS_4pairIT_T1_EES8_T0_S9_"}
!73 = distinct !{!73, !72, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8ne180100INS_16reverse_iteratorIPmEES6_S6_EENS_4pairIT_T1_EES8_T0_S9_: argument 0"}
!74 = distinct !{!74, !38}
!75 = !{!19, !10, i64 8}
!76 = !{!61, !59, !57, !55}
!77 = !{!"llvm.loop.unswitch.partial.disable"}
!78 = !{!73, !71, !69, !67}
!79 = distinct !{null, null, null}
!80 = distinct !{null, null}
!81 = distinct !{!81, !38}
!82 = distinct !{!82, !38}
!83 = distinct !{!83, !38}
!84 = distinct !{!84, !38}
!85 = distinct !{!85, !38}
!86 = distinct !{!86, !38}
!87 = distinct !{!87, !38}
!88 = !{ptr @_ZN7Imf_3_411TileOffsets19reconstructFromFileERNS_7IStreamEbb}
!89 = distinct !{!89, !38, !47, !48}
!90 = distinct !{!90, !38}
!91 = distinct !{!91, !38, !47}
!92 = distinct !{!92, !38, !47, !48}
!93 = distinct !{!93, !97}
!94 = distinct !{!94, !38}
!95 = distinct !{!95, !38}
!96 = distinct !{!96, !38, !47}
!97 = !{!"llvm.loop.unroll.disable"}
!98 = distinct !{!98, !38}
!99 = distinct !{!99, !38}
!100 = distinct !{null, null, null}
!101 = distinct !{!101, !38}
!102 = !{!9, !9, i64 0}
!103 = distinct !{!103, !38, !47, !48}
!104 = distinct !{!104, !38}
!105 = distinct !{!105, !38, !47}
!106 = distinct !{!106, !38}
!107 = distinct !{!107, !38}
!108 = distinct !{!108, !38}
!109 = distinct !{!109, i1 false, !"LVerDomain"}
!110 = distinct !{!110, !109}
!111 = distinct !{!111, !109}
!112 = distinct !{!112, !109}
!113 = distinct !{!113, !38, !47, !48}
!114 = distinct !{!114, !38, !47, !48}
!115 = distinct !{!115, !38}
!116 = distinct !{!116, !38, !47}
!117 = distinct !{!117, !38, !47}
!118 = !{!49, !10, i64 8}
!119 = !{!49, !10, i64 12}
!120 = !{!49, !10, i64 16}
!121 = !{!110}
!122 = !{!112, !111}
!123 = !{!112}
!124 = !{!111}
!125 = distinct !{!125, !38}
!126 = distinct !{!126, !38}
!127 = distinct !{!127, !38}
!128 = distinct !{!128, !38}
!129 = distinct !{!129, !38}
!130 = distinct !{!130, !38}
!131 = distinct !{!131, !38}
!132 = distinct !{!132, !38}
!133 = distinct !{!133, !38}
!134 = distinct !{!134, !38}
!135 = distinct !{!135, !38}
!136 = distinct !{!136, !38}
!137 = distinct !{!137, !38}
!138 = distinct !{!138, !38}
!139 = distinct !{!139, !38}
!140 = distinct !{!140, !38}
!141 = distinct !{!141, !38}
!142 = distinct !{!142, !38}
!143 = distinct !{!143, !38}
!144 = distinct !{!144, !38}
!145 = distinct !{!145, !38}
!146 = distinct !{!146, !38}
!147 = distinct !{!147, !38}
!148 = distinct !{!148, !38}
!149 = distinct !{!149, !38}
!150 = distinct !{!150, !38}
!151 = distinct !{!151, !38}
!152 = distinct !{!152, !38}
end_hunk_1
