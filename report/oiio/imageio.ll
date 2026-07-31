inline.NumInlined: 4864
inline.NumDeleted: 1339
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 62
loop-unroll.NumUnrolled: 72
begin_hunk_0_@_ZN11OpenImageIO4v3_110copy_imageERKNS0_10image_spanISt4byteLm4EEERKNS1_IKS2_Lm4EEE:bb.a
  %i.h = load i64, ptr %i.g, align 8, !tbaa !50   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = load i32, ptr %i.i, align 8, !tbaa !3    ; 2 uses
  %i.k = zext i32 %i.j to i64
  %i.l = mul nuw i64 %i.b, %i.k
  %i.m = icmp eq i64 %i.h, %i.l
  br i1 %i.m, label %bb.b, label %_ZNK11OpenImageIO4v3_110image_spanIKSt4byteLm4EE22is_contiguous_scanlineEv.exit.thread

bb.b:                                             ; preds = %_ZNK11OpenImageIO4v3_110image_spanIKSt4byteLm4EE22is_contiguous_scanlineEv.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !50   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.q = load i32, ptr %i.p, align 4, !tbaa !3
  %i.r = zext i32 %i.q to i64
  %i.s = mul i64 %i.h, %i.r
  %i.t = icmp eq i64 %i.o, %i.s
  br i1 %i.t, label %_ZNK11OpenImageIO4v3_110image_spanIKSt4byteLm4EE13is_contiguousEv.exit, label %bb.f

_ZNK11OpenImageIO4v3_110image_spanIKSt4byteLm4EE13is_contiguousEv.exit: ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.v = load i64, ptr %i.u, align 8, !tbaa !50   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.x = load i32, ptr %i.w, align 8, !tbaa !3
  %i.y = zext i32 %i.x to i64
  %i.z = mul i64 %i.o, %i.y
  %i.aa = icmp eq i64 %i.v, %i.z
  br i1 %i.aa, label %bb.c, label %bb.f

bb.c:                                             ; preds = %_ZNK11OpenImageIO4v3_110image_spanIKSt4byteLm4EE13is_contiguousEv.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !50 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !185
  %i.af = zext i32 %i.ae to i64
  %i.ag = icmp eq i64 %i.ac, %i.af
  br i1 %i.ag, label %_ZNK11OpenImageIO4v3_110image_spanISt4byteLm4EE22is_contiguous_scanlineEv.exit.i, label %bb.f

_ZNK11OpenImageIO4v3_110image_spanISt4byteLm4EE22is_contiguous_scanlineEv.exit.i: ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !50 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !3
  %i.al = zext i32 %i.ak to i64
  %i.am = mul nuw nsw i64 %i.ac, %i.al
  %i.an = icmp eq i64 %i.ai, %i.am
  br i1 %i.an, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_ZNK11OpenImageIO4v3_110image_spanISt4byteLm4EE22is_contiguous_scanlineEv.exit.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !50 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !3
  %i.as = zext i32 %i.ar to i64
  %i.at = mul nsw i64 %i.ai, %i.as
  %i.au = icmp eq i64 %i.ap, %i.at
  br i1 %i.au, label %_ZNK11OpenImageIO4v3_110image_spanISt4byteLm4EE13is_contiguousEv.exit, label %bb.f

_ZNK11OpenImageIO4v3_110image_spanISt4byteLm4EE13is_contiguousEv.exit: ; preds = %bb.d
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !50
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !3
  %i.az = zext i32 %i.ay to i64
  %i.ba = mul nsw i64 %i.ap, %i.az
  %i.bb = icmp eq i64 %i.aw, %i.ba
  br i1 %i.bb, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNK11OpenImageIO4v3_110image_spanISt4byteLm4EE13is_contiguousEv.exit
  %i.bc = load ptr, ptr %0, align 8, !tbaa !183
  %i.bd = load ptr, ptr %1, align 8, !tbaa !182
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !3
  %i.bg = zext i32 %i.bf to i64
  %i.bh = mul i64 %i.v, %i.bg
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bc, ptr align 1 %i.bd, i64 %i.bh, i1 false)
  br label %_ZN11OpenImageIO4v3_118aligned_copy_imageIjEEvRKNS0_10image_spanISt4byteLm4EEERKNS2_IKS3_Lm4EEE.exit

bb.f:                                             ; preds = %bb.b, %bb.c, %_ZNK11OpenImageIO4v3_110image_spanISt4byteLm4EE22is_contiguous_scanlineEv.exit.i, %bb.d, %_ZNK11OpenImageIO4v3_110image_spanIKSt4byteLm4EE13is_contiguousEv.exit, %_ZNK11OpenImageIO4v3_110image_spanISt4byteLm4EE13is_contiguousEv.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !50 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !185
  %i.bm = zext i32 %i.bl to i64
  %i.bn = icmp eq i64 %i.bj, %i.bm
  br i1 %i.bn, label %_ZNK11OpenImageIO4v3_110image_spanISt4byteLm4EE22is_contiguous_scanlineEv.exit, label %_ZNK11OpenImageIO4v3_110image_spanIKSt4byteLm4EE22is_contiguous_scanlineEv.exit.thread

_ZNK11OpenImageIO4v3_110image_spanISt4byteLm4EE22is_contiguous_scanlineEv.exit: ; preds = %bb.f
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !50
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !3
  %i.bs = zext i32 %i.br to i64
  %i.bt = mul nuw nsw i64 %i.bj, %i.bs
  %i.bu = icmp eq i64 %i.bp, %i.bt
  br i1 %i.bu, label %bb.g, label %_ZNK11OpenImageIO4v3_110image_spanIKSt4byteLm4EE22is_contiguous_scanlineEv.exit.thread

bb.g:                                             ; preds = %_ZNK11OpenImageIO4v3_110image_spanISt4byteLm4EE22is_contiguous_scanlineEv.exit
  %i.bv = mul i32 %i.j, %i.d
  %i.bw = zext i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !3
  %i.bz = zext i32 %i.by to i64
  %i.ca = mul nuw i64 %i.bw, %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !3  ; 2 uses
  %.not167 = icmp eq i32 %i.cc, 0
  br i1 %.not167, label %_ZN11OpenImageIO4v3_118aligned_copy_imageIjEEvRKNS0_10image_spanISt4byteLm4EEERKNS2_IKS3_Lm4EEE.exit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ci = load i32, ptr %i.cd, align 8, !tbaa !3
  %.not168 = icmp eq i32 %i.ci, 0
  br i1 %.not168, label %_ZN11OpenImageIO4v3_118aligned_copy_imageIjEEvRKNS0_10image_spanISt4byteLm4EEERKNS2_IKS3_Lm4EEE.exit, label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge155
  %i.cj = phi i32 [ %i.cm, %._crit_edge155 ], [ %i.cc, %.preheader.lr.ph ]
  %i.ck = phi i32 [ %i.cn, %._crit_edge155 ], [ 1, %.preheader.lr.ph ]
  %.099156 = phi i32 [ %i.co, %._crit_edge155 ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %.not169 = icmp eq i32 %i.ck, 0
  br i1 %.not169, label %._crit_edge155, label %.lr.ph154

.lr.ph154:                                        ; preds = %.preheader
  %i.cl = sext i32 %.099156 to i64                ; 2 uses
  br label %bb.h

._crit_edge155.loopexit:                          ; preds = %bb.h
  %.pre193 = load i32, ptr %i.cb, align 4, !tbaa !3
  br label %._crit_edge155

._crit_edge155:                                   ; preds = %._crit_edge155.loopexit, %.preheader
  %i.cm = phi i32 [ %.pre193, %._crit_edge155.loopexit ], [ %i.cj, %.preheader ] ; 2 uses
  %i.cn = phi i32 [ %i.dg, %._crit_edge155.loopexit ], [ 0, %.preheader ]
  %i.co = add nuw i32 %.099156, 1                 ; 2 uses
  %i.cp = icmp ult i32 %i.co, %i.cm
  br i1 %i.cp, label %.preheader, label %_ZN11OpenImageIO4v3_118aligned_copy_imageIjEEvRKNS0_10image_spanISt4byteLm4EEERKNS2_IKS3_Lm4EEE.exit, !llvm.loop !186

bb.h:                                             ; preds = %.lr.ph154, %bb.h
  %.0101153 = phi i32 [ 0, %.lr.ph154 ], [ %i.df, %bb.h ] ; 2 uses
  %i.cq = load ptr, ptr %0, align 8, !tbaa !183
  %i.cr = sext i32 %.0101153 to i64               ; 2 uses
  %i.cs = load i64, ptr %i.ce, align 8, !tbaa !50
  %i.ct = mul nsw i64 %i.cs, %i.cr
  %i.cu = getelementptr inbounds i8, ptr %i.cq, i64 %i.ct
  %i.cv = load i64, ptr %i.cf, align 8, !tbaa !50
  %i.cw = mul nsw i64 %i.cv, %i.cl
  %i.cx = getelementptr inbounds i8, ptr %i.cu, i64 %i.cw
  %i.cy = load ptr, ptr %1, align 8, !tbaa !182
  %i.cz = load i64, ptr %i.cg, align 8, !tbaa !50
  %i.da = mul nsw i64 %i.cz, %i.cr
  %i.db = getelementptr inbounds i8, ptr %i.cy, i64 %i.da
  %i.dc = load i64, ptr %i.ch, align 8, !tbaa !50
  %i.dd = mul nsw i64 %i.dc, %i.cl
  %i.de = getelementptr inbounds i8, ptr %i.db, i64 %i.dd
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cx, ptr align 1 %i.de, i64 %i.ca, i1 false)
  %i.df = add nuw i32 %.0101153, 1                ; 2 uses
  %i.dg = load i32, ptr %i.cd, align 8, !tbaa !3  ; 2 uses
  %i.dh = icmp ult i32 %i.df, %i.dg
  br i1 %i.dh, label %bb.h, label %._crit_edge155.loopexit, !llvm.loop !188

_ZNK11OpenImageIO4v3_110image_spanIKSt4byteLm4EE22is_contiguous_scanlineEv.exit.thread: ; preds = %_ZNK11OpenImageIO4v3_110image_spanIKSt4byteLm4EE22is_contiguous_scanlineEv.exit.i, %bb.f, %bb.a, %_ZNK11OpenImageIO4v3_110image_spanISt4byteLm4EE22is_contiguous_scanlineEv.exit
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !50
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !185
  %i.dm = zext i32 %i.dl to i64
  %i.dn = icmp eq i64 %i.dj, %i.dm
  br i1 %i.dn, label %bb.i, label %.preheader132

.preheader132:                                    ; preds = %_ZNK11OpenImageIO4v3_110image_spanIKSt4byteLm4EE22is_contiguous_scanlineEv.exit.thread
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 2 uses
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !3  ; 2 uses
  %.not = icmp eq i32 %i.dp, 0
  br i1 %.not, label %_ZN11OpenImageIO4v3_118aligned_copy_imageIjEEvRKNS0_10image_spanISt4byteLm4EEERKNS2_IKS3_Lm4EEE.exit, label %.preheader131.lr.ph

.preheader131.lr.ph:                              ; preds = %.preheader132
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.dz = load i32, ptr %i.dq, align 8, !tbaa !3  ; 3 uses
  %.not157 = icmp eq i32 %i.dz, 0
  br i1 %.not157, label %_ZN11OpenImageIO4v3_118aligned_copy_imageIjEEvRKNS0_10image_spanISt4byteLm4EEERKNS2_IKS3_Lm4EEE.exit, label %.preheader131

bb.i:                                             ; preds = %_ZNK11OpenImageIO4v3_110image_spanIKSt4byteLm4EE22is_contiguous_scanlineEv.exit.thread
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !50 ; 6 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !50 ; 5 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !3
  %i.eg = mul i32 %i.ef, %i.d
  %.fr166 = freeze i32 %i.eg                      ; 6 uses
  %i.eh = zext i32 %.fr166 to i64                 ; 2 uses
  %i.ei = load ptr, ptr %1, align 8, !tbaa !182   ; 6 uses
  %i.ej = ptrtoint ptr %i.ei to i64
  %i.ek = load ptr, ptr %0, align 8, !tbaa !183   ; 6 uses
  %i.el = ptrtoint ptr %i.ek to i64
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.en = load i64, ptr %i.em, align 8, !tbaa !50 ; 5 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !50 ; 5 uses
  %i.eq = or i64 %i.ej, %i.el
  %i.er = or i64 %i.eq, %i.eb
  %i.es = or i64 %i.er, %i.eh
  %i.et = or i64 %i.es, %i.en
  %i.eu = or i64 %i.et, %i.ep                     ; 2 uses
  %i.ev = and i64 %i.eu, 3
  %i.ew = icmp eq i64 %i.ev, 0
  br i1 %i.ew, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ex = lshr i32 %.fr166, 2                     ; 2 uses
  %i.ey = zext nneg i32 %i.ex to i64              ; 6 uses
  %i.ez = lshr i64 %i.en, 2
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !50 ; 2 uses
  %i.fc = lshr i64 %i.fb, 2
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 2 uses
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !3  ; 2 uses
  %.not55.i = icmp eq i32 %i.fe, 0
  br i1 %.not55.i, label %_ZN11OpenImageIO4v3_118aligned_copy_imageIjEEvRKNS0_10image_spanISt4byteLm4EEERKNS2_IKS3_Lm4EEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !50 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.fj = load i32, ptr %i.fh, align 8, !tbaa !3  ; 3 uses
  %.not57.i = icmp eq i32 %i.fj, 0
  %.not56.i = icmp eq i32 %i.ex, 0
  %or.cond = or i1 %.not57.i, %.not56.i
  br i1 %or.cond, label %_ZN11OpenImageIO4v3_118aligned_copy_imageIjEEvRKNS0_10image_spanISt4byteLm4EEERKNS2_IKS3_Lm4EEE.exit, label %.lr.ph.split.i.preheader

.lr.ph.split.i.preheader:                         ; preds = %.lr.ph.i
  %i.fk = and i64 %i.fb, -4
  %2 = shl nuw nsw i64 %i.ey, 2                   ; 2 uses
  %i.fl = and i64 %i.en, -4
  %min.iters.check280 = icmp ult i32 %.fr166, 32
  %i.fm = getelementptr i8, ptr %i.ei, i64 %2
  %i.fn = getelementptr i8, ptr %i.ek, i64 %2
  %n.vec283 = and i64 %i.ey, 1073741816           ; 3 uses
  %cmp.n290 = icmp eq i64 %n.vec283, %i.ey
  %xtraiter303 = and i64 %i.ey, 3                 ; 2 uses
  %lcmp.mod304.not = icmp eq i64 %xtraiter303, 0
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i.preheader, %._crit_edge50.i
  %i.fo = phi i32 [ %i.gm, %._crit_edge50.i ], [ %i.fe, %.lr.ph.split.i.preheader ] ; 2 uses
  %i.fp = phi i32 [ %i.gn, %._crit_edge50.i ], [ %i.fj, %.lr.ph.split.i.preheader ] ; 3 uses
  %i.fq = phi i32 [ %i.go, %._crit_edge50.i ], [ %i.fj, %.lr.ph.split.i.preheader ] ; 2 uses
  %.03751.i = phi i32 [ %i.gp, %._crit_edge50.i ], [ 0, %.lr.ph.split.i.preheader ] ; 3 uses
  %i.fr = sext i32 %.03751.i to i64               ; 2 uses
  %i.fs = mul i64 %i.fg, %i.fr                    ; 2 uses
  %i.ft = mul i64 %i.ep, %i.fr                    ; 2 uses
  %.not58.i = icmp eq i32 %i.fq, 0
  br i1 %.not58.i, label %._crit_edge50.i, label %.preheader41.lr.ph.i

.preheader41.lr.ph.i:                             ; preds = %.lr.ph.split.i
  %i.fu = load i32, ptr %i.fi, align 4, !tbaa !3
  %.not59.i = icmp eq i32 %i.fu, 0
  br i1 %.not59.i, label %._crit_edge50.i, label %.preheader41.preheader.i

.preheader41.preheader.i:                         ; preds = %.preheader41.lr.ph.i
  %i.fv = sext i32 %.03751.i to i64               ; 2 uses
  %i.fw = mul nsw i64 %i.ep, %i.fv
  %i.fx = getelementptr inbounds i8, ptr %i.ei, i64 %i.fw
  %i.fy = mul nsw i64 %i.fg, %i.fv
  %i.fz = getelementptr inbounds i8, ptr %i.ek, i64 %i.fy
  %i.ga = getelementptr i8, ptr %i.fm, i64 %i.ft
  %i.gb = getelementptr i8, ptr %i.ei, i64 %i.ft
  %i.gc = getelementptr i8, ptr %i.fn, i64 %i.fs
  %i.gd = getelementptr i8, ptr %i.ek, i64 %i.fs
  br label %.preheader41.i

.preheader41.i:                                   ; preds = %._crit_edge44.split.i, %.preheader41.preheader.i
  %indvar271 = phi i64 [ %indvar.next272, %._crit_edge44.split.i ], [ 0, %.preheader41.preheader.i ] ; 3 uses
  %i.ge = phi i32 [ %i.hi, %._crit_edge44.split.i ], [ %i.fp, %.preheader41.preheader.i ]
  %i.gf = phi i32 [ %i.hj, %._crit_edge44.split.i ], [ 1, %.preheader41.preheader.i ]
  %.03849.i = phi i32 [ %i.hm, %._crit_edge44.split.i ], [ 0, %.preheader41.preheader.i ]
  %.03947.i = phi ptr [ %i.hk, %._crit_edge44.split.i ], [ %i.fx, %.preheader41.preheader.i ] ; 2 uses
  %.04045.i = phi ptr [ %i.hl, %._crit_edge44.split.i ], [ %i.fz, %.preheader41.preheader.i ] ; 2 uses
  %i.gg = mul i64 %i.ed, %indvar271               ; 2 uses
  %i.gh = mul i64 %i.eb, %indvar271               ; 2 uses
  %.not60.i = icmp eq i32 %i.gf, 0
  br i1 %.not60.i, label %._crit_edge44.split.i, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %.preheader41.i
  %i.gi = getelementptr i8, ptr %i.ga, i64 %i.gh
  %i.gj = getelementptr i8, ptr %i.gb, i64 %i.gh
  %i.gk = getelementptr i8, ptr %i.gc, i64 %i.gg
  %i.gl = getelementptr i8, ptr %i.gd, i64 %i.gg
  br label %.preheader.i

._crit_edge50.loopexit61.i.split:                 ; preds = %._crit_edge44.split.i
  %.pre67.i = load i32, ptr %i.fd, align 4, !tbaa !3
  br label %._crit_edge50.i

._crit_edge50.i:                                  ; preds = %._crit_edge50.loopexit61.i.split, %.preheader41.lr.ph.i, %.lr.ph.split.i
  %i.gm = phi i32 [ %.pre67.i, %._crit_edge50.loopexit61.i.split ], [ %i.fo, %.lr.ph.split.i ], [ %i.fo, %.preheader41.lr.ph.i ] ; 2 uses
  %i.gn = phi i32 [ %i.hi, %._crit_edge50.loopexit61.i.split ], [ %i.fp, %.lr.ph.split.i ], [ %i.fp, %.preheader41.lr.ph.i ]
  %i.go = phi i32 [ %i.hi, %._crit_edge50.loopexit61.i.split ], [ 0, %.lr.ph.split.i ], [ %i.fq, %.preheader41.lr.ph.i ]
  %i.gp = add nuw i32 %.03751.i, 1                ; 2 uses
  %i.gq = icmp ult i32 %i.gp, %i.gm
  br i1 %i.gq, label %.lr.ph.split.i, label %_ZN11OpenImageIO4v3_118aligned_copy_imageIjEEvRKNS0_10image_spanISt4byteLm4EEERKNS2_IKS3_Lm4EEE.exit, !llvm.loop !189

.preheader.i:                                     ; preds = %.preheader.i.preheader, %._crit_edge.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %._crit_edge.i ], [ 0, %.preheader.i.preheader ] ; 5 uses
  %i.gr = mul i64 %indvars.iv.i, %i.ez
  %i.gs = getelementptr [4 x i8], ptr %.03947.i, i64 %i.gr ; 6 uses
  %i.gt = mul i64 %indvars.iv.i, %i.fc
  %i.gu = getelementptr [4 x i8], ptr %.04045.i, i64 %i.gt ; 6 uses
  br i1 %min.iters.check280, label %scalar.ph.preheader, label %vector.memcheck270

vector.memcheck270:                               ; preds = %.preheader.i
  %i.gv = mul i64 %i.fl, %indvars.iv.i            ; 2 uses
  %scevgep276 = getelementptr i8, ptr %i.gi, i64 %i.gv
  %scevgep275 = getelementptr i8, ptr %i.gj, i64 %i.gv
  %i.gw = mul i64 %i.fk, %indvars.iv.i            ; 2 uses
  %scevgep274 = getelementptr i8, ptr %i.gk, i64 %i.gw
  %scevgep273 = getelementptr i8, ptr %i.gl, i64 %i.gw
  %bound0277 = icmp ult ptr %scevgep273, %scevgep276
  %bound1278 = icmp ult ptr %scevgep275, %scevgep274
  %found.conflict279 = and i1 %bound0277, %bound1278
  br i1 %found.conflict279, label %scalar.ph.preheader, label %vector.body284

vector.body284:                                   ; preds = %vector.memcheck270, %vector.body284
  %index285 = phi i64 [ %index.next288, %vector.body284 ], [ 0, %vector.memcheck270 ] ; 3 uses
  %i.gx = getelementptr [4 x i8], ptr %i.gs, i64 %index285 ; 2 uses
  %i.gy = getelementptr i8, ptr %i.gx, i64 16
  %wide.load286 = load <4 x i32>, ptr %i.gx, align 4, !tbaa !3, !alias.scope !190
  %wide.load287 = load <4 x i32>, ptr %i.gy, align 4, !tbaa !3, !alias.scope !190
  %i.gz = getelementptr [4 x i8], ptr %i.gu, i64 %index285 ; 2 uses
  %i.ha = getelementptr i8, ptr %i.gz, i64 16
  store <4 x i32> %wide.load286, ptr %i.gz, align 4, !tbaa !3, !alias.scope !193, !noalias !190
  store <4 x i32> %wide.load287, ptr %i.ha, align 4, !tbaa !3, !alias.scope !193, !noalias !190
  %index.next288 = add nuw i64 %index285, 8       ; 2 uses
  %i.hb = icmp eq i64 %index.next288, %n.vec283
  br i1 %i.hb, label %middle.block289, label %vector.body284, !llvm.loop !195

middle.block289:                                  ; preds = %vector.body284
  br i1 %cmp.n290, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck270, %.preheader.i, %middle.block289
  %.042.i.ph = phi i64 [ 0, %vector.memcheck270 ], [ 0, %.preheader.i ], [ %n.vec283, %middle.block289 ] ; 3 uses
  br i1 %lcmp.mod304.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.042.i.prol = phi i64 [ %i.hf, %scalar.ph.prol ], [ %.042.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter305 = phi i64 [ %prol.iter305.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.hc = getelementptr [4 x i8], ptr %i.gs, i64 %.042.i.prol
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !3
  %i.he = getelementptr [4 x i8], ptr %i.gu, i64 %.042.i.prol
  store i32 %i.hd, ptr %i.he, align 4, !tbaa !3
  %i.hf = add nuw nsw i64 %.042.i.prol, 1         ; 2 uses
  %prol.iter305.next = add i64 %prol.iter305, 1   ; 2 uses
  %prol.iter305.cmp.not = icmp eq i64 %prol.iter305.next, %xtraiter303
  br i1 %prol.iter305.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !196

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.042.i.unr = phi i64 [ %.042.i.ph, %scalar.ph.preheader ], [ %i.hf, %scalar.ph.prol ]
  %i.hg = sub nsw i64 %.042.i.ph, %i.ey
  %i.hh = icmp ugt i64 %i.hg, -4
  br i1 %i.hh, label %._crit_edge.i, label %scalar.ph

._crit_edge44.split.loopexit.i:                   ; preds = %._crit_edge.i
  %.pre.i = load i32, ptr %i.fh, align 8, !tbaa !3
  br label %._crit_edge44.split.i

._crit_edge44.split.i:                            ; preds = %._crit_edge44.split.loopexit.i, %.preheader41.i
  %i.hi = phi i32 [ %.pre.i, %._crit_edge44.split.loopexit.i ], [ %i.ge, %.preheader41.i ] ; 4 uses
  %i.hj = phi i32 [ %i.ho, %._crit_edge44.split.loopexit.i ], [ 0, %.preheader41.i ]
  %i.hk = getelementptr inbounds nuw i8, ptr %.03947.i, i64 %i.eb
  %i.hl = getelementptr inbounds nuw i8, ptr %.04045.i, i64 %i.ed
  %i.hm = add nuw i32 %.03849.i, 1                ; 2 uses
  %i.hn = icmp ult i32 %i.hm, %i.hi
  %indvar.next272 = add i64 %indvar271, 1
  br i1 %i.hn, label %.preheader41.i, label %._crit_edge50.loopexit61.i.split, !llvm.loop !197

._crit_edge.i:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block289
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ho = load i32, ptr %i.fi, align 4, !tbaa !3  ; 2 uses
  %i.hp = zext i32 %i.ho to i64
  %i.hq = icmp samesign ult i64 %indvars.iv.next.i, %i.hp
  br i1 %i.hq, label %.preheader.i, label %._crit_edge44.split.loopexit.i, !llvm.loop !198

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.042.i = phi i64 [ %i.ig, %scalar.ph ], [ %.042.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.hr = getelementptr [4 x i8], ptr %i.gs, i64 %.042.i
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !3
  %i.ht = getelementptr [4 x i8], ptr %i.gu, i64 %.042.i
  store i32 %i.hs, ptr %i.ht, align 4, !tbaa !3
  %i.hu = add nuw nsw i64 %.042.i, 1              ; 2 uses
  %i.hv = getelementptr [4 x i8], ptr %i.gs, i64 %i.hu
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !3
  %i.hx = getelementptr [4 x i8], ptr %i.gu, i64 %i.hu
  store i32 %i.hw, ptr %i.hx, align 4, !tbaa !3
  %i.hy = add nuw nsw i64 %.042.i, 2              ; 2 uses
  %i.hz = getelementptr [4 x i8], ptr %i.gs, i64 %i.hy
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !3
  %i.ib = getelementptr [4 x i8], ptr %i.gu, i64 %i.hy
  store i32 %i.ia, ptr %i.ib, align 4, !tbaa !3
  %i.ic = add nuw nsw i64 %.042.i, 3              ; 2 uses
  %i.id = getelementptr [4 x i8], ptr %i.gs, i64 %i.ic
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !3
  %i.if = getelementptr [4 x i8], ptr %i.gu, i64 %i.ic
  store i32 %i.ie, ptr %i.if, align 4, !tbaa !3
  %i.ig = add nuw nsw i64 %.042.i, 4              ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.ig, %i.ey
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %scalar.ph, !llvm.loop !199

bb.k:                                             ; preds = %bb.i
  %i.ih = and i64 %i.eu, 1
  %i.ii = icmp eq i64 %i.ih, 0
  br i1 %i.ii, label %bb.l, label %.preheader129

.preheader129:                                    ; preds = %bb.k
  %i.ij = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 2 uses
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !3  ; 2 uses
  %.not161 = icmp eq i32 %i.ik, 0
  br i1 %.not161, label %_ZN11OpenImageIO4v3_118aligned_copy_imageIjEEvRKNS0_10image_spanISt4byteLm4EEERKNS2_IKS3_Lm4EEE.exit, label %.lr.ph152

.lr.ph152:                                        ; preds = %.preheader129
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.in = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.ip = load i32, ptr %i.in, align 8, !tbaa !3  ; 3 uses
  %.not162 = icmp eq i32 %i.ip, 0
  br i1 %.not162, label %_ZN11OpenImageIO4v3_118aligned_copy_imageIjEEvRKNS0_10image_spanISt4byteLm4EEERKNS2_IKS3_Lm4EEE.exit, label %.lr.ph152.split

bb.l:                                             ; preds = %bb.k
  %i.iq = lshr i32 %.fr166, 1                     ; 2 uses
  %i.ir = zext nneg i32 %i.iq to i64              ; 10 uses
  %i.is = lshr i64 %i.en, 1                       ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !50 ; 2 uses
  %i.iv = lshr i64 %i.iu, 1                       ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !3  ; 2 uses
  %.not60.i109 = icmp eq i32 %i.ix, 0
  br i1 %.not60.i109, label %_ZN11OpenImageIO4v3_118aligned_copy_imageIjEEvRKNS0_10image_spanISt4byteLm4EEERKNS2_IKS3_Lm4EEE.exit, label %.lr.ph.i110

.lr.ph.i110:                                      ; preds = %bb.l
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.iz = load i64, ptr %i.iy, align 8, !tbaa !50 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.jb = load i32, ptr %i.ja, align 8, !tbaa !3  ; 2 uses
  %.not61.i = icmp eq i32 %i.jb, 0
  %i.jc = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.jd = load i32, ptr %i.jc, align 4            ; 2 uses
  %.not62.i = icmp eq i32 %i.jd, 0
  %.not63.i = icmp eq i32 %i.iq, 0
  %brmerge.i111 = select i1 %.not61.i, i1 true, i1 %.not62.i
  %brmerge59.i = or i1 %.not63.i, %brmerge.i111
  br i1 %brmerge59.i, label %_ZN11OpenImageIO4v3_118aligned_copy_imageIjEEvRKNS0_10image_spanISt4byteLm4EEERKNS2_IKS3_Lm4EEE.exit, label %.preheader41.lr.ph.preheader.i

.preheader41.lr.ph.preheader.i:                   ; preds = %.lr.ph.i110
  %wide.trip.count.i = zext i32 %i.jd to i64      ; 2 uses
  %i.je = add nsw i64 %wide.trip.count.i, -1      ; 2 uses
  %i.jf = mul i64 %i.iv, %i.je
  %3 = add i64 %i.jf, %i.ir
  %4 = shl i64 %3, 1
  %i.jg = mul i64 %i.is, %i.je
  %5 = add i64 %i.jg, %i.ir
  %6 = shl i64 %5, 1
  %i.jh = getelementptr i8, ptr %i.ek, i64 %4
  %i.ji = getelementptr i8, ptr %i.ei, i64 %6
  %min.iters.check = icmp ult i32 %.fr166, 8
  %i.jj = or i64 %i.en, %i.iu
  %i.jk = icmp slt i64 %i.jj, 0
  %min.iters.check262 = icmp ult i32 %.fr166, 32
  %n.mod.vf = and i64 %i.ir, 12
  %n.vec = and i64 %i.ir, 2147483632              ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %i.ir
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  %n.vec265 = and i64 %i.ir, 2147483644           ; 3 uses
  %cmp.n269 = icmp eq i64 %n.vec265, %i.ir
  %xtraiter = and i64 %i.ir, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader41.lr.ph.i112

.preheader41.lr.ph.i112:                          ; preds = %._crit_edge50.i123, %.preheader41.lr.ph.preheader.i
  %.03752.i = phi i32 [ %i.jy, %._crit_edge50.i123 ], [ 0, %.preheader41.lr.ph.preheader.i ] ; 3 uses
  %i.jl = sext i32 %.03752.i to i64               ; 2 uses
  %i.jm = mul i64 %i.iz, %i.jl
  %i.jn = mul i64 %i.ep, %i.jl
  %i.jo = sext i32 %.03752.i to i64               ; 2 uses
  %i.jp = mul nsw i64 %i.iz, %i.jo
  %i.jq = getelementptr inbounds i8, ptr %i.ek, i64 %i.jp
  %i.jr = mul nsw i64 %i.ep, %i.jo
  %i.js = getelementptr inbounds i8, ptr %i.ei, i64 %i.jr
  %i.jt = getelementptr i8, ptr %i.jh, i64 %i.jm
  %i.ju = getelementptr i8, ptr %i.ji, i64 %i.jn
  br label %.preheader41.i113

.preheader41.i113:                                ; preds = %._crit_edge44.i, %.preheader41.lr.ph.i112
  %indvar = phi i64 [ %indvar.next, %._crit_edge44.i ], [ 0, %.preheader41.lr.ph.i112 ] ; 3 uses
  %.03849.i114 = phi i32 [ %i.kt, %._crit_edge44.i ], [ 0, %.preheader41.lr.ph.i112 ]
  %.03947.i115 = phi ptr [ %i.kr, %._crit_edge44.i ], [ %i.js, %.preheader41.lr.ph.i112 ] ; 3 uses
  %.04045.i116 = phi ptr [ %i.ks, %._crit_edge44.i ], [ %i.jq, %.preheader41.lr.ph.i112 ] ; 3 uses
  %i.jv = mul i64 %i.ed, %indvar
  %scevgep = getelementptr i8, ptr %i.jt, i64 %i.jv
  %i.jw = mul i64 %i.eb, %indvar
  %scevgep260 = getelementptr i8, ptr %i.ju, i64 %i.jw
  %bound0 = icmp ult ptr %.04045.i116, %scevgep260
  %bound1 = icmp ult ptr %.03947.i115, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.jx = or i1 %found.conflict, %i.jk
  br label %iter.check

._crit_edge50.i123:                               ; preds = %._crit_edge44.i
  %i.jy = add nuw i32 %.03752.i, 1                ; 2 uses
  %exitcond70.not.i = icmp eq i32 %i.jy, %i.ix
  br i1 %exitcond70.not.i, label %_ZN11OpenImageIO4v3_118aligned_copy_imageIjEEvRKNS0_10image_spanISt4byteLm4EEERKNS2_IKS3_Lm4EEE.exit, label %.preheader41.lr.ph.i112, !llvm.loop !200

iter.check:                                       ; preds = %._crit_edge.i121, %.preheader41.i113
  %indvars.iv.i118 = phi i64 [ 0, %.preheader41.i113 ], [ %indvars.iv.next.i122, %._crit_edge.i121 ] ; 3 uses
  %i.jz = mul i64 %indvars.iv.i118, %i.is
  %i.ka = getelementptr [2 x i8], ptr %.03947.i115, i64 %i.jz ; 7 uses
  %i.kb = mul i64 %indvars.iv.i118, %i.iv
  %i.kc = getelementptr [2 x i8], ptr %.04045.i116, i64 %i.kb ; 7 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.jx
  br i1 %brmerge, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check262, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.kd = getelementptr [2 x i8], ptr %i.ka, i64 %index ; 2 uses
  %i.ke = getelementptr i8, ptr %i.kd, i64 16
  %wide.load = load <8 x i16>, ptr %i.kd, align 2, !tbaa !201, !alias.scope !203
  %wide.load263 = load <8 x i16>, ptr %i.ke, align 2, !tbaa !201, !alias.scope !203
  %i.kf = getelementptr [2 x i8], ptr %i.kc, i64 %index ; 2 uses
  %i.kg = getelementptr i8, ptr %i.kf, i64 16
  store <8 x i16> %wide.load, ptr %i.kf, align 2, !tbaa !201, !alias.scope !206, !noalias !203
  store <8 x i16> %wide.load263, ptr %i.kg, align 2, !tbaa !201, !alias.scope !206, !noalias !203
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.kh = icmp eq i64 %index.next, %n.vec
  br i1 %i.kh, label %middle.block, label %vector.body, !llvm.loop !208

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i121, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !209

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index266 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next268, %vec.epilog.vector.body ] ; 3 uses
  %i.ki = getelementptr [2 x i8], ptr %i.ka, i64 %index266
  %wide.load267 = load <4 x i16>, ptr %i.ki, align 2, !tbaa !201, !alias.scope !203
  %i.kj = getelementptr [2 x i8], ptr %i.kc, i64 %index266
  store <4 x i16> %wide.load267, ptr %i.kj, align 2, !tbaa !201, !alias.scope !206, !noalias !203
  %index.next268 = add nuw i64 %index266, 4       ; 2 uses
  %i.kk = icmp eq i64 %index.next268, %n.vec265
  br i1 %i.kk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !210

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n269, label %._crit_edge.i121, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.042.i119.ph = phi i64 [ 0, %iter.check ], [ %n.vec265, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ] ; 3 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.042.i119.prol = phi i64 [ %i.ko, %vec.epilog.scalar.ph.prol ], [ %.042.i119.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.kl = getelementptr [2 x i8], ptr %i.ka, i64 %.042.i119.prol
  %i.km = load i16, ptr %i.kl, align 2, !tbaa !201
  %i.kn = getelementptr [2 x i8], ptr %i.kc, i64 %.042.i119.prol
  store i16 %i.km, ptr %i.kn, align 2, !tbaa !201
  %i.ko = add nuw nsw i64 %.042.i119.prol, 1      ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !211

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.042.i119.unr = phi i64 [ %.042.i119.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ko, %vec.epilog.scalar.ph.prol ]
  %i.kp = sub nsw i64 %.042.i119.ph, %i.ir
  %i.kq = icmp ugt i64 %i.kp, -4
  br i1 %i.kq, label %._crit_edge.i121, label %vec.epilog.scalar.ph

._crit_edge44.i:                                  ; preds = %._crit_edge.i121
  %i.kr = getelementptr inbounds nuw i8, ptr %.03947.i115, i64 %i.eb
  %i.ks = getelementptr inbounds nuw i8, ptr %.04045.i116, i64 %i.ed
  %i.kt = add nuw i32 %.03849.i114, 1             ; 2 uses
  %exitcond69.not.i = icmp eq i32 %i.kt, %i.jb
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond69.not.i, label %._crit_edge50.i123, label %.preheader41.i113, !llvm.loop !212

._crit_edge.i121:                                 ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next.i122 = add nuw nsw i64 %indvars.iv.i118, 1 ; 2 uses
  %exitcond68.not.i = icmp eq i64 %indvars.iv.next.i122, %wide.trip.count.i
  br i1 %exitcond68.not.i, label %._crit_edge44.i, label %iter.check, !llvm.loop !213

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.042.i119 = phi i64 [ %i.lj, %vec.epilog.scalar.ph ], [ %.042.i119.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.ku = getelementptr [2 x i8], ptr %i.ka, i64 %.042.i119
  %i.kv = load i16, ptr %i.ku, align 2, !tbaa !201
  %i.kw = getelementptr [2 x i8], ptr %i.kc, i64 %.042.i119
  store i16 %i.kv, ptr %i.kw, align 2, !tbaa !201
  %i.kx = add nuw nsw i64 %.042.i119, 1           ; 2 uses
  %i.ky = getelementptr [2 x i8], ptr %i.ka, i64 %i.kx
  %i.kz = load i16, ptr %i.ky, align 2, !tbaa !201
  %i.la = getelementptr [2 x i8], ptr %i.kc, i64 %i.kx
  store i16 %i.kz, ptr %i.la, align 2, !tbaa !201
  %i.lb = add nuw nsw i64 %.042.i119, 2           ; 2 uses
  %i.lc = getelementptr [2 x i8], ptr %i.ka, i64 %i.lb
  %i.ld = load i16, ptr %i.lc, align 2, !tbaa !201
  %i.le = getelementptr [2 x i8], ptr %i.kc, i64 %i.lb
  store i16 %i.ld, ptr %i.le, align 2, !tbaa !201
  %i.lf = add nuw nsw i64 %.042.i119, 3           ; 2 uses
  %i.lg = getelementptr [2 x i8], ptr %i.ka, i64 %i.lf
  %i.lh = load i16, ptr %i.lg, align 2, !tbaa !201
  %i.li = getelementptr [2 x i8], ptr %i.kc, i64 %i.lf
  store i16 %i.lh, ptr %i.li, align 2, !tbaa !201
  %i.lj = add nuw nsw i64 %.042.i119, 4           ; 2 uses
  %exitcond.not.i120.3 = icmp eq i64 %i.lj, %i.ir
  br i1 %exitcond.not.i120.3, label %._crit_edge.i121, label %vec.epilog.scalar.ph, !llvm.loop !214

.lr.ph152.split:                                  ; preds = %.lr.ph152, %._crit_edge150
  %i.lk = phi i32 [ %i.lz, %._crit_edge150 ], [ %i.ik, %.lr.ph152 ] ; 2 uses
  %i.ll = phi i32 [ %i.ma, %._crit_edge150 ], [ %i.ip, %.lr.ph152 ] ; 3 uses
  %i.lm = phi i32 [ %i.mb, %._crit_edge150 ], [ %i.ip, %.lr.ph152 ] ; 2 uses
  %.0104151 = phi i32 [ %i.mc, %._crit_edge150 ], [ 0, %.lr.ph152 ] ; 2 uses
  %.not163 = icmp eq i32 %i.lm, 0
  br i1 %.not163, label %._crit_edge150, label %.preheader128.lr.ph

.preheader128.lr.ph:                              ; preds = %.lr.ph152.split
  %i.ln = load i32, ptr %i.io, align 4, !tbaa !3
  %.not164 = icmp eq i32 %i.ln, 0
  br i1 %.not164, label %._crit_edge150, label %.preheader128.preheader

.preheader128.preheader:                          ; preds = %.preheader128.lr.ph
  %i.lo = load ptr, ptr %1, align 8, !tbaa !182
  %i.lp = load i64, ptr %i.eo, align 8, !tbaa !50
  %i.lq = sext i32 %.0104151 to i64               ; 2 uses
  %i.lr = mul nsw i64 %i.lp, %i.lq
  %i.ls = getelementptr inbounds i8, ptr %i.lo, i64 %i.lr
  %i.lt = load ptr, ptr %0, align 8, !tbaa !183
  %i.lu = load i64, ptr %i.im, align 8, !tbaa !50
  %i.lv = mul nsw i64 %i.lu, %i.lq
  %i.lw = getelementptr inbounds i8, ptr %i.lt, i64 %i.lv
  br label %.preheader128

.preheader128:                                    ; preds = %.preheader128.preheader, %._crit_edge146
  %i.lx = phi i32 [ %i.me, %._crit_edge146 ], [ %i.ll, %.preheader128.preheader ]
  %i.ly = phi i32 [ %i.mf, %._crit_edge146 ], [ 1, %.preheader128.preheader ]
  %.0106149 = phi i32 [ %i.mi, %._crit_edge146 ], [ 0, %.preheader128.preheader ]
  %.0107148 = phi ptr [ %i.mg, %._crit_edge146 ], [ %i.ls, %.preheader128.preheader ] ; 2 uses
  %.0108147 = phi ptr [ %i.mh, %._crit_edge146 ], [ %i.lw, %.preheader128.preheader ] ; 2 uses
  %.not165 = icmp eq i32 %i.ly, 0
  br i1 %.not165, label %._crit_edge146, label %.lr.ph145

._crit_edge150.loopexit176:                       ; preds = %._crit_edge146
  %.pre192 = load i32, ptr %i.ij, align 4, !tbaa !3
  br label %._crit_edge150

._crit_edge150:                                   ; preds = %.preheader128.lr.ph, %._crit_edge150.loopexit176, %.lr.ph152.split
  %i.lz = phi i32 [ %.pre192, %._crit_edge150.loopexit176 ], [ %i.lk, %.lr.ph152.split ], [ %i.lk, %.preheader128.lr.ph ] ; 2 uses
  %i.ma = phi i32 [ %i.me, %._crit_edge150.loopexit176 ], [ %i.ll, %.lr.ph152.split ], [ %i.ll, %.preheader128.lr.ph ]
  %i.mb = phi i32 [ %i.me, %._crit_edge150.loopexit176 ], [ 0, %.lr.ph152.split ], [ %i.lm, %.preheader128.lr.ph ]
  %i.mc = add nuw i32 %.0104151, 1                ; 2 uses
  %i.md = icmp ult i32 %i.mc, %i.lz
  br i1 %i.md, label %.lr.ph152.split, label %_ZN11OpenImageIO4v3_118aligned_copy_imageIjEEvRKNS0_10image_spanISt4byteLm4EEERKNS2_IKS3_Lm4EEE.exit, !llvm.loop !215

._crit_edge146.loopexit:                          ; preds = %.lr.ph145
  %.pre191 = load i32, ptr %i.in, align 8, !tbaa !3
  br label %._crit_edge146

._crit_edge146:                                   ; preds = %._crit_edge146.loopexit, %.preheader128
  %i.me = phi i32 [ %.pre191, %._crit_edge146.loopexit ], [ %i.lx, %.preheader128 ] ; 4 uses
  %i.mf = phi i32 [ %i.mq, %._crit_edge146.loopexit ], [ 0, %.preheader128 ]
  %i.mg = getelementptr inbounds nuw i8, ptr %.0107148, i64 %i.eb
  %i.mh = getelementptr inbounds nuw i8, ptr %.0108147, i64 %i.ed
  %i.mi = add nuw i32 %.0106149, 1                ; 2 uses
  %i.mj = icmp ult i32 %i.mi, %i.me
  br i1 %i.mj, label %.preheader128, label %._crit_edge150.loopexit176, !llvm.loop !216

.lr.ph145:                                        ; preds = %.preheader128, %.lr.ph145
  %indvars.iv183 = phi i64 [ %indvars.iv.next184, %.lr.ph145 ], [ 0, %.preheader128 ] ; 3 uses
  %i.mk = load i64, ptr %i.il, align 8, !tbaa !50
  %i.ml = mul nsw i64 %i.mk, %indvars.iv183
  %i.mm = getelementptr inbounds i8, ptr %.0108147, i64 %i.ml
  %i.mn = load i64, ptr %i.em, align 8, !tbaa !50
  %i.mo = mul nsw i64 %i.mn, %indvars.iv183
  %i.mp = getelementptr inbounds i8, ptr %.0107148, i64 %i.mo
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.mm, ptr align 1 %i.mp, i64 %i.eh, i1 false)
end_hunk_0
