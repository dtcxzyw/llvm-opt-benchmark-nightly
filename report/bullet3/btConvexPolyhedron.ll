inline.NumInlined: 320
inline.NumDeleted: 121
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN18btConvexPolyhedron11initialize2Ev:bb.a
  br label %bb.d

bb.b:                                             ; preds = %.lr.ph231, %._crit_edge
  %indvars.iv273 = phi i64 [ 0, %.lr.ph231 ], [ %indvars.iv.next274, %._crit_edge ] ; 2 uses
  %i.w = phi <4 x float> [ zeroinitializer, %.lr.ph231 ], [ %i.ah, %._crit_edge ] ; 2 uses
  %i.x = getelementptr inbounds nuw [48 x i8], ptr %i.h, i64 %indvars.iv273 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !39   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !28 ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !56
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds [16 x i8], ptr %i.j, i64 %i.ad ; 2 uses
  %.not220 = icmp slt i32 %i.z, 3
  br i1 %.not220, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = add nsw i32 %i.z, -1
  %wide.trip.count = zext nneg i32 %i.ag to i64
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !56
  br label %bb.c

._crit_edge:                                      ; preds = %bb.c, %bb.b
  %i.ah = phi <4 x float> [ %i.w, %bb.b ], [ %i.ch, %bb.c ] ; 2 uses
  %indvars.iv.next274 = add nuw nsw i64 %indvars.iv273, 1 ; 2 uses
  %exitcond277.not = icmp eq i64 %indvars.iv.next274, %wide.trip.count276
  br i1 %exitcond277.not, label %._crit_edge232, label %bb.b, !llvm.loop !79

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %i.ai = phi i32 [ %.pre, %.lr.ph ], [ %i.an, %bb.c ]
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.c ]
  %i.aj = phi <4 x float> [ %i.w, %.lr.ph ], [ %i.ch, %bb.c ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ak = sext i32 %i.ai to i64
  %i.al = getelementptr inbounds [16 x i8], ptr %i.j, i64 %i.ak ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next
  %i.an = load i32, ptr %i.am, align 4, !tbaa !56 ; 2 uses
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [16 x i8], ptr %i.j, i64 %i.ao ; 2 uses
  %i.aq = load float, ptr %i.af, align 4, !tbaa !36 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.as = load float, ptr %i.ar, align 4, !tbaa !36 ; 2 uses
  %i.at = fsub float %i.aq, %i.as                 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.av = load float, ptr %i.au, align 4, !tbaa !36 ; 2 uses
  %i.aw = fsub float %i.aq, %i.av                 ; 2 uses
  %i.ax = fneg float %i.aw
  %i.ay = fadd float %i.aq, %i.as
  %i.az = fadd float %i.ay, %i.av
  %i.ba = fmul float %i.az, f0x3EAAAAAB
  %i.bb = load <2 x float>, ptr %i.ae, align 4, !tbaa !36 ; 4 uses
  %i.bc = load <2 x float>, ptr %i.al, align 4, !tbaa !36 ; 3 uses
  %foldExtExtBinop = fsub <2 x float> %i.bb, %i.bc
  %i.bd = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %foldExtExtBinop424 = fsub <2 x float> %i.bb, %i.bc
  %i.be = extractelement <2 x float> %foldExtExtBinop424, i64 1 ; 2 uses
  %i.bf = load <2 x float>, ptr %i.ap, align 4, !tbaa !36 ; 2 uses
  %i.bg = fmul float %i.bd, %i.ax
  %i.bh = fsub <2 x float> %i.bb, %i.bf           ; 3 uses
  %i.bi = fneg <2 x float> %i.bh                  ; 2 uses
  %i.bj = extractelement <2 x float> %i.bi, i64 1
  %i.bk = fmul float %i.at, %i.bj
  %i.bl = tail call float @llvm.fmuladd.f32(float %i.be, float %i.aw, float %i.bk) ; 2 uses
  %i.bm = extractelement <2 x float> %i.bh, i64 0
  %i.bn = tail call float @llvm.fmuladd.f32(float %i.at, float %i.bm, float %i.bg) ; 2 uses
  %i.bo = extractelement <2 x float> %i.bi, i64 0
  %i.bp = fmul float %i.be, %i.bo
  %i.bq = extractelement <2 x float> %i.bh, i64 1
  %i.br = tail call float @llvm.fmuladd.f32(float %i.bd, float %i.bq, float %i.bp) ; 2 uses
  %i.bs = fmul float %i.bn, %i.bn
  %i.bt = tail call float @llvm.fmuladd.f32(float %i.bl, float %i.bl, float %i.bs)
  %i.bu = tail call noundef float @llvm.fmuladd.f32(float %i.br, float %i.br, float %i.bt)
  %sqrt.i = tail call noundef float @llvm.sqrt.f32(float %i.bu)
  %i.bv = fmul float %sqrt.i, 5.000000e-01        ; 3 uses
  %i.bw = fadd <2 x float> %i.bb, %i.bc
  %i.bx = fadd <2 x float> %i.bw, %i.bf
  %i.by = insertelement <2 x float> poison, float %i.bv, i64 0
  %i.bz = fmul float %i.ba, %i.bv
  %i.ca = insertelement <4 x float> poison, float %i.bz, i64 0
  %i.cb = fmul <2 x float> %i.bx, splat (float f0x3EAAAAAB)
  %i.cc = shufflevector <2 x float> %i.cb, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.cd = shufflevector <2 x float> %i.by, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.ce = fmul <4 x float> %i.cc, %i.cd
  %i.cf = shufflevector <4 x float> %i.ca, <4 x float> %i.ce, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.cg = insertelement <4 x float> %i.cf, float %i.bv, i64 3
  %i.ch = fadd <4 x float> %i.aj, %i.cg           ; 4 uses
  %i.ci = shufflevector <4 x float> %i.ch, <4 x float> poison, <2 x i32> <i32 2, i32 1>
  store <2 x float> %i.ci, ptr %i.a, align 8, !tbaa !36
  %i.cj = extractelement <4 x float> %i.ch, i64 0
  store float %i.cj, ptr %i.c, align 8, !tbaa !36
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !80

.preheader:                                       ; preds = %bb.f, %._crit_edge232
  %i.ck = phi float [ f0x7F7FFFFF, %._crit_edge232 ], [ %i.dg, %bb.f ] ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !18 ; 2 uses
  %i.cn = icmp sgt i32 %i.cm, 0
  br i1 %i.cn, label %.lr.ph246, label %._crit_edge247

.lr.ph246:                                        ; preds = %.preheader
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !17
  %wide.trip.count286 = zext nneg i32 %i.cm to i64
  br label %bb.g

bb.d:                                             ; preds = %.lr.ph237, %bb.f
  %indvars.iv278 = phi i64 [ 0, %.lr.ph237 ], [ %indvars.iv.next279, %bb.f ] ; 2 uses
  %i.cq = phi float [ f0x7F7FFFFF, %.lr.ph237 ], [ %i.dg, %bb.f ] ; 2 uses
  %i.cr = getelementptr inbounds nuw [48 x i8], ptr %i.v, i64 %indvars.iv278 ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 36
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 40
  %i.cv = load float, ptr %i.cs, align 4, !tbaa !36
  %i.cw = load float, ptr %i.ct, align 4, !tbaa !36
  %i.cx = load float, ptr %i.cu, align 4, !tbaa !36
  %i.cy = fmul float %i.q, %i.cw
  %i.cz = tail call float @llvm.fmuladd.f32(float %i.o, float %i.cv, float %i.cy)
  %i.da = tail call noundef float @llvm.fmuladd.f32(float %i.s, float %i.cx, float %i.cz)
  %i.db = getelementptr inbounds nuw i8, ptr %i.cr, i64 44
  %i.dc = load float, ptr %i.db, align 4, !tbaa !36
  %i.dd = fadd float %i.dc, %i.da
  %i.de = tail call noundef float @llvm.fabs.f32(float %i.dd) ; 3 uses
  %i.df = fcmp olt float %i.de, %i.cq
  br i1 %i.df, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store float %i.de, ptr %i.t, align 8, !tbaa !76
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.dg = phi float [ %i.de, %bb.e ], [ %i.cq, %bb.d ] ; 2 uses
  %indvars.iv.next279 = add nuw nsw i64 %indvars.iv278, 1 ; 2 uses
  %exitcond282.not = icmp eq i64 %indvars.iv.next279, %wide.trip.count281
  br i1 %exitcond282.not, label %.preheader, label %bb.d, !llvm.loop !81

._crit_edge247:                                   ; preds = %bb.g, %.preheader
  %.0105.lcssa = phi float [ f0xFF7FFFFF, %.preheader ], [ %.1106, %bb.g ] ; 2 uses
  %.098.lcssa = phi float [ f0x7F7FFFFF, %.preheader ], [ %.199, %bb.g ] ; 2 uses
  %i.dh = phi <2 x float> [ splat (float f0xFF7FFFFF), %.preheader ], [ %i.et, %bb.g ] ; 2 uses
  %i.di = phi <2 x float> [ splat (float f0x7F7FFFFF), %.preheader ], [ %i.es, %bb.g ] ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.dk = fadd <2 x float> %i.dh, %i.di
  %i.dl = fadd float %.0105.lcssa, %.098.lcssa
  store <2 x float> %i.dk, ptr %i.dj, align 4, !tbaa !36
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 148
  store float %i.dl, ptr %i.dm, align 4, !tbaa !36
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 152
  store float 0.000000e+00, ptr %i.dn, align 8, !tbaa !36
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 2 uses
  %i.dp = fsub <2 x float> %i.dh, %i.di           ; 2 uses
  %i.dq = fsub float %.0105.lcssa, %.098.lcssa    ; 2 uses
  %i.dr = extractelement <2 x float> %i.dp, i64 0 ; 3 uses
  store float %i.dr, ptr %i.do, align 4, !tbaa !36
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.dt = extractelement <2 x float> %i.dp, i64 1 ; 3 uses
  store float %i.dt, ptr %i.ds, align 8, !tbaa !36
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 164
  store float %i.dq, ptr %i.du, align 4, !tbaa !36
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 168
  store float 0.000000e+00, ptr %i.dv, align 8, !tbaa !36
  %i.dw = fdiv float %i.ck, f0x3FDDB3D7           ; 8 uses
  %i.dx = fcmp olt float %i.dr, %i.dt             ; 2 uses
  %..i = select i1 %i.dx, float %i.dt, float %i.dr
  %.5.i = zext i1 %i.dx to i32
  %i.dy = fcmp olt float %..i, %i.dq
  %i.dz = select i1 %i.dy, i32 2, i32 %.5.i       ; 2 uses
  %i.ea = zext nneg i32 %i.dz to i64              ; 2 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.ea
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !36 ; 2 uses
  %i.ed = fneg float %i.dw
  %i.ee = tail call float @llvm.fmuladd.f32(float %i.ec, float 5.000000e-01, float %i.ed)
  %i.ef = fmul float %i.ee, f0x3A800000
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 7 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  store float %i.dw, ptr %i.eh, align 8, !tbaa !36
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 4 uses
  store float %i.dw, ptr %i.ei, align 4, !tbaa !36
  store float %i.dw, ptr %i.eg, align 8, !tbaa !36
  %i.ej = fmul float %i.ec, 5.000000e-01          ; 2 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %i.ea ; 2 uses
  store float %i.ej, ptr %i.ek, align 4, !tbaa !36
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 9 uses
  %.not126.i = icmp sgt i32 %i.e, 0
  %wide.trip.count.i = zext nneg i32 %i.e to i64
  %.not126.i.1 = icmp sgt i32 %i.e, 0
  %wide.trip.count.i.1 = zext nneg i32 %i.e to i64
  %.not126.i.2 = icmp sgt i32 %i.e, 0
  %wide.trip.count.i.2 = zext nneg i32 %i.e to i64
  %.not126.i.3 = icmp sgt i32 %i.e, 0
  %wide.trip.count.i.3 = zext nneg i32 %i.e to i64
  %.not126.i.4 = icmp sgt i32 %i.e, 0
  %wide.trip.count.i.4 = zext nneg i32 %i.e to i64
  %.not126.i.5 = icmp sgt i32 %i.e, 0
  %wide.trip.count.i.5 = zext nneg i32 %i.e to i64
  %.not126.i.6 = icmp sgt i32 %i.e, 0
  %wide.trip.count.i.6 = zext nneg i32 %i.e to i64
  %wide.trip.count.i.7 = zext nneg i32 %i.e to i64 ; 2 uses
  br i1 %.not126.i, label %._crit_edge247.split, label %._crit_edge.i.7.loopexit

._crit_edge247.split:                             ; preds = %._crit_edge247
  %1 = load ptr, ptr %i.el, align 8, !tbaa !24
  %2 = load ptr, ptr %i.el, align 8
  %3 = load ptr, ptr %i.el, align 8
  %4 = load ptr, ptr %i.el, align 8
  %5 = load ptr, ptr %i.el, align 8
  %6 = load ptr, ptr %i.el, align 8
  %7 = load ptr, ptr %i.el, align 8
  %8 = load ptr, ptr %i.el, align 8
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph246, %bb.g
  %indvars.iv283 = phi i64 [ 0, %.lr.ph246 ], [ %indvars.iv.next284, %bb.g ] ; 2 uses
  %.098243 = phi float [ f0x7F7FFFFF, %.lr.ph246 ], [ %.199, %bb.g ] ; 2 uses
  %.0105239 = phi float [ f0xFF7FFFFF, %.lr.ph246 ], [ %.1106, %bb.g ] ; 2 uses
  %i.em = phi <2 x float> [ splat (float f0xFF7FFFFF), %.lr.ph246 ], [ %i.et, %bb.g ] ; 2 uses
  %i.en = phi <2 x float> [ splat (float f0x7F7FFFFF), %.lr.ph246 ], [ %i.es, %bb.g ] ; 2 uses
  %i.eo = getelementptr inbounds nuw [16 x i8], ptr %i.cp, i64 %indvars.iv283 ; 2 uses
  %i.ep = load <2 x float>, ptr %i.eo, align 4, !tbaa !36 ; 4 uses
  %i.eq = fcmp olt <2 x float> %i.ep, %i.en
  %i.er = fcmp ogt <2 x float> %i.ep, %i.em
  %i.es = select <2 x i1> %i.eq, <2 x float> %i.ep, <2 x float> %i.en ; 2 uses
  %i.et = select <2 x i1> %i.er, <2 x float> %i.ep, <2 x float> %i.em ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !36 ; 4 uses
  %i.ew = fcmp olt float %i.ev, %.098243
  %.199 = select i1 %i.ew, float %i.ev, float %.098243 ; 2 uses
  %i.ex = fcmp ogt float %i.ev, %.0105239
  %.1106 = select i1 %i.ex, float %i.ev, float %.0105239 ; 2 uses
  %indvars.iv.next284 = add nuw nsw i64 %indvars.iv283, 1 ; 2 uses
  %exitcond287.not = icmp eq i64 %indvars.iv.next284, %wide.trip.count286
  br i1 %exitcond287.not, label %._crit_edge247, label %bb.g, !llvm.loop !82

bb.h:                                             ; preds = %._crit_edge247.split, %_ZNK18btConvexPolyhedron15testContainmentEv.exit
  %i.ey = phi float [ %i.ej, %._crit_edge247.split ], [ %i.kb, %_ZNK18btConvexPolyhedron15testContainmentEv.exit ]
  %.094254 = phi i32 [ 0, %._crit_edge247.split ], [ %i.kc, %_ZNK18btConvexPolyhedron15testContainmentEv.exit ]
  %i.ez = load float, ptr %i.eg, align 8          ; 2 uses
  %i.fa = load float, ptr %i.ei, align 4          ; 2 uses
  %i.fb = load float, ptr %i.eh, align 8          ; 2 uses
  %i.fc = fsub float %i.o, %i.ez                  ; 4 uses
  %i.fd = fsub float %i.q, %i.fa                  ; 4 uses
  %i.fe = fsub float %i.s, %i.fb                  ; 4 uses
  %i.ff = fadd float %i.fb, %i.s                  ; 4 uses
  %i.fg = fadd float %i.fa, %i.q                  ; 4 uses
  %i.fh = fadd float %i.o, %i.ez                  ; 4 uses
  br label %.lr.ph.i

bb.i:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !35

.lr.ph.i:                                         ; preds = %bb.i, %bb.h
  %indvars.iv.i = phi i64 [ 0, %bb.h ], [ %indvars.iv.next.i, %bb.i ] ; 2 uses
  %i.fi = getelementptr inbounds nuw [48 x i8], ptr %1, i64 %indvars.iv.i ; 4 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 32
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 36
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fi, i64 40
  %i.fm = load float, ptr %i.fj, align 4, !tbaa !36
  %i.fn = load float, ptr %i.fk, align 4, !tbaa !36
  %i.fo = load float, ptr %i.fl, align 4, !tbaa !36
  %i.fp = fmul float %i.fg, %i.fn
  %i.fq = tail call float @llvm.fmuladd.f32(float %i.fh, float %i.fm, float %i.fp)
  %i.fr = tail call noundef float @llvm.fmuladd.f32(float %i.ff, float %i.fo, float %i.fq)
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fi, i64 44
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !36
  %i.fu = fadd float %i.ft, %i.fr
  %i.fv = fcmp ule float %i.fu, 0.000000e+00
  br i1 %i.fv, label %bb.i, label %_ZNK18btConvexPolyhedron15testContainmentEv.exit

._crit_edge.i:                                    ; preds = %bb.i
  br i1 %.not126.i.1, label %.lr.ph.i.1, label %._crit_edge.i.7.loopexit

.lr.ph.i.1:                                       ; preds = %._crit_edge.i, %bb.j
  %indvars.iv.i.1 = phi i64 [ %indvars.iv.next.i.1, %bb.j ], [ 0, %._crit_edge.i ] ; 2 uses
  %i.fw = getelementptr inbounds nuw [48 x i8], ptr %2, i64 %indvars.iv.i.1 ; 4 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 32
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fw, i64 36
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fw, i64 40
  %i.ga = load float, ptr %i.fx, align 4, !tbaa !36
  %i.gb = load float, ptr %i.fy, align 4, !tbaa !36
  %i.gc = load float, ptr %i.fz, align 4, !tbaa !36
  %i.gd = fmul float %i.fg, %i.gb
  %i.ge = tail call float @llvm.fmuladd.f32(float %i.fh, float %i.ga, float %i.gd)
  %i.gf = tail call noundef float @llvm.fmuladd.f32(float %i.fe, float %i.gc, float %i.ge)
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fw, i64 44
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !36
  %i.gi = fadd float %i.gh, %i.gf
  %i.gj = fcmp ule float %i.gi, 0.000000e+00
  br i1 %i.gj, label %bb.j, label %_ZNK18btConvexPolyhedron15testContainmentEv.exit

bb.j:                                             ; preds = %.lr.ph.i.1
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i.1, 1 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i.1
  br i1 %exitcond.not.i.1, label %._crit_edge.i.1, label %.lr.ph.i.1, !llvm.loop !35

._crit_edge.i.1:                                  ; preds = %bb.j
  br i1 %.not126.i.2, label %.lr.ph.i.2, label %._crit_edge.i.7.loopexit

.lr.ph.i.2:                                       ; preds = %._crit_edge.i.1, %bb.k
  %indvars.iv.i.2 = phi i64 [ %indvars.iv.next.i.2, %bb.k ], [ 0, %._crit_edge.i.1 ] ; 2 uses
  %i.gk = getelementptr inbounds nuw [48 x i8], ptr %3, i64 %indvars.iv.i.2 ; 4 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 32
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gk, i64 36
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gk, i64 40
  %i.go = load float, ptr %i.gl, align 4, !tbaa !36
  %i.gp = load float, ptr %i.gm, align 4, !tbaa !36
  %i.gq = load float, ptr %i.gn, align 4, !tbaa !36
  %i.gr = fmul float %i.fd, %i.gp
  %i.gs = tail call float @llvm.fmuladd.f32(float %i.fh, float %i.go, float %i.gr)
  %i.gt = tail call noundef float @llvm.fmuladd.f32(float %i.ff, float %i.gq, float %i.gs)
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gk, i64 44
  %i.gv = load float, ptr %i.gu, align 4, !tbaa !36
  %i.gw = fadd float %i.gv, %i.gt
  %i.gx = fcmp ule float %i.gw, 0.000000e+00
  br i1 %i.gx, label %bb.k, label %_ZNK18btConvexPolyhedron15testContainmentEv.exit

bb.k:                                             ; preds = %.lr.ph.i.2
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i.2, 1 ; 2 uses
  %exitcond.not.i.2 = icmp eq i64 %indvars.iv.next.i.2, %wide.trip.count.i.2
  br i1 %exitcond.not.i.2, label %._crit_edge.i.2, label %.lr.ph.i.2, !llvm.loop !35

._crit_edge.i.2:                                  ; preds = %bb.k
  br i1 %.not126.i.3, label %.lr.ph.i.3, label %._crit_edge.i.7.loopexit

.lr.ph.i.3:                                       ; preds = %._crit_edge.i.2, %bb.l
  %indvars.iv.i.3 = phi i64 [ %indvars.iv.next.i.3, %bb.l ], [ 0, %._crit_edge.i.2 ] ; 2 uses
  %i.gy = getelementptr inbounds nuw [48 x i8], ptr %4, i64 %indvars.iv.i.3 ; 4 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 32
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gy, i64 36
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gy, i64 40
  %i.hc = load float, ptr %i.gz, align 4, !tbaa !36
  %i.hd = load float, ptr %i.ha, align 4, !tbaa !36
  %i.he = load float, ptr %i.hb, align 4, !tbaa !36
  %i.hf = fmul float %i.fd, %i.hd
  %i.hg = tail call float @llvm.fmuladd.f32(float %i.fh, float %i.hc, float %i.hf)
  %i.hh = tail call noundef float @llvm.fmuladd.f32(float %i.fe, float %i.he, float %i.hg)
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gy, i64 44
  %i.hj = load float, ptr %i.hi, align 4, !tbaa !36
  %i.hk = fadd float %i.hj, %i.hh
  %i.hl = fcmp ule float %i.hk, 0.000000e+00
  br i1 %i.hl, label %bb.l, label %_ZNK18btConvexPolyhedron15testContainmentEv.exit

bb.l:                                             ; preds = %.lr.ph.i.3
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i.3, 1 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i.3
  br i1 %exitcond.not.i.3, label %._crit_edge.i.3, label %.lr.ph.i.3, !llvm.loop !35

._crit_edge.i.3:                                  ; preds = %bb.l
  br i1 %.not126.i.4, label %.lr.ph.i.4, label %._crit_edge.i.7.loopexit

.lr.ph.i.4:                                       ; preds = %._crit_edge.i.3, %bb.m
  %indvars.iv.i.4 = phi i64 [ %indvars.iv.next.i.4, %bb.m ], [ 0, %._crit_edge.i.3 ] ; 2 uses
  %i.hm = getelementptr inbounds nuw [48 x i8], ptr %5, i64 %indvars.iv.i.4 ; 4 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 32
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hm, i64 36
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hm, i64 40
  %i.hq = load float, ptr %i.hn, align 4, !tbaa !36
  %i.hr = load float, ptr %i.ho, align 4, !tbaa !36
  %i.hs = load float, ptr %i.hp, align 4, !tbaa !36
  %i.ht = fmul float %i.fg, %i.hr
  %i.hu = tail call float @llvm.fmuladd.f32(float %i.fc, float %i.hq, float %i.ht)
  %i.hv = tail call noundef float @llvm.fmuladd.f32(float %i.ff, float %i.hs, float %i.hu)
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hm, i64 44
  %i.hx = load float, ptr %i.hw, align 4, !tbaa !36
  %i.hy = fadd float %i.hx, %i.hv
  %i.hz = fcmp ule float %i.hy, 0.000000e+00
  br i1 %i.hz, label %bb.m, label %_ZNK18btConvexPolyhedron15testContainmentEv.exit

bb.m:                                             ; preds = %.lr.ph.i.4
  %indvars.iv.next.i.4 = add nuw nsw i64 %indvars.iv.i.4, 1 ; 2 uses
  %exitcond.not.i.4 = icmp eq i64 %indvars.iv.next.i.4, %wide.trip.count.i.4
  br i1 %exitcond.not.i.4, label %._crit_edge.i.4, label %.lr.ph.i.4, !llvm.loop !35

._crit_edge.i.4:                                  ; preds = %bb.m
  br i1 %.not126.i.5, label %.lr.ph.i.5, label %._crit_edge.i.7.loopexit

.lr.ph.i.5:                                       ; preds = %._crit_edge.i.4, %bb.n
  %indvars.iv.i.5 = phi i64 [ %indvars.iv.next.i.5, %bb.n ], [ 0, %._crit_edge.i.4 ] ; 2 uses
  %i.ia = getelementptr inbounds nuw [48 x i8], ptr %6, i64 %indvars.iv.i.5 ; 4 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 32
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ia, i64 36
  %i.id = getelementptr inbounds nuw i8, ptr %i.ia, i64 40
  %i.ie = load float, ptr %i.ib, align 4, !tbaa !36
  %i.if = load float, ptr %i.ic, align 4, !tbaa !36
  %i.ig = load float, ptr %i.id, align 4, !tbaa !36
  %i.ih = fmul float %i.fg, %i.if
  %i.ii = tail call float @llvm.fmuladd.f32(float %i.fc, float %i.ie, float %i.ih)
  %i.ij = tail call noundef float @llvm.fmuladd.f32(float %i.fe, float %i.ig, float %i.ii)
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ia, i64 44
  %i.il = load float, ptr %i.ik, align 4, !tbaa !36
  %i.im = fadd float %i.il, %i.ij
  %i.in = fcmp ule float %i.im, 0.000000e+00
  br i1 %i.in, label %bb.n, label %_ZNK18btConvexPolyhedron15testContainmentEv.exit

bb.n:                                             ; preds = %.lr.ph.i.5
  %indvars.iv.next.i.5 = add nuw nsw i64 %indvars.iv.i.5, 1 ; 2 uses
  %exitcond.not.i.5 = icmp eq i64 %indvars.iv.next.i.5, %wide.trip.count.i.5
  br i1 %exitcond.not.i.5, label %._crit_edge.i.5, label %.lr.ph.i.5, !llvm.loop !35

._crit_edge.i.5:                                  ; preds = %bb.n
  br i1 %.not126.i.6, label %.lr.ph.i.6, label %._crit_edge.i.7.loopexit

.lr.ph.i.6:                                       ; preds = %._crit_edge.i.5, %bb.o
  %indvars.iv.i.6 = phi i64 [ %indvars.iv.next.i.6, %bb.o ], [ 0, %._crit_edge.i.5 ] ; 2 uses
  %i.io = getelementptr inbounds nuw [48 x i8], ptr %7, i64 %indvars.iv.i.6 ; 4 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 32
  %i.iq = getelementptr inbounds nuw i8, ptr %i.io, i64 36
  %i.ir = getelementptr inbounds nuw i8, ptr %i.io, i64 40
  %i.is = load float, ptr %i.ip, align 4, !tbaa !36
  %i.it = load float, ptr %i.iq, align 4, !tbaa !36
  %i.iu = load float, ptr %i.ir, align 4, !tbaa !36
  %i.iv = fmul float %i.fd, %i.it
  %i.iw = tail call float @llvm.fmuladd.f32(float %i.fc, float %i.is, float %i.iv)
  %i.ix = tail call noundef float @llvm.fmuladd.f32(float %i.ff, float %i.iu, float %i.iw)
  %i.iy = getelementptr inbounds nuw i8, ptr %i.io, i64 44
  %i.iz = load float, ptr %i.iy, align 4, !tbaa !36
  %i.ja = fadd float %i.iz, %i.ix
  %i.jb = fcmp ule float %i.ja, 0.000000e+00
  br i1 %i.jb, label %bb.o, label %_ZNK18btConvexPolyhedron15testContainmentEv.exit

bb.o:                                             ; preds = %.lr.ph.i.6
  %indvars.iv.next.i.6 = add nuw nsw i64 %indvars.iv.i.6, 1 ; 2 uses
  %exitcond.not.i.6 = icmp eq i64 %indvars.iv.next.i.6, %wide.trip.count.i.6
  br i1 %exitcond.not.i.6, label %._crit_edge.i.6, label %.lr.ph.i.6, !llvm.loop !35

._crit_edge.i.6:                                  ; preds = %bb.o
  br i1 %i.f, label %.lr.ph.i.7, label %._crit_edge.i.7.loopexit

.lr.ph.i.7:                                       ; preds = %._crit_edge.i.6, %bb.p
  %indvars.iv.i.7 = phi i64 [ %indvars.iv.next.i.7, %bb.p ], [ 0, %._crit_edge.i.6 ] ; 2 uses
  %i.jc = getelementptr inbounds nuw [48 x i8], ptr %8, i64 %indvars.iv.i.7 ; 4 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 32
  %i.je = getelementptr inbounds nuw i8, ptr %i.jc, i64 36
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jc, i64 40
  %i.jg = load float, ptr %i.jd, align 4, !tbaa !36
  %i.jh = load float, ptr %i.je, align 4, !tbaa !36
  %i.ji = load float, ptr %i.jf, align 4, !tbaa !36
  %i.jj = fmul float %i.fd, %i.jh
  %i.jk = tail call float @llvm.fmuladd.f32(float %i.fc, float %i.jg, float %i.jj)
  %i.jl = tail call noundef float @llvm.fmuladd.f32(float %i.fe, float %i.ji, float %i.jk)
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jc, i64 44
  %i.jn = load float, ptr %i.jm, align 4, !tbaa !36
  %i.jo = fadd float %i.jn, %i.jl
  %i.jp = fcmp ule float %i.jo, 0.000000e+00
  br i1 %i.jp, label %bb.p, label %_ZNK18btConvexPolyhedron15testContainmentEv.exit

bb.p:                                             ; preds = %.lr.ph.i.7
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i.7, 1 ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %indvars.iv.next.i.7, %wide.trip.count.i.7
  br i1 %exitcond.not.i.7, label %._crit_edge.i.7, label %.lr.ph.i.7, !llvm.loop !35

._crit_edge.i.7.loopexit:                         ; preds = %._crit_edge.i.6, %._crit_edge.i.5, %._crit_edge.i.4, %._crit_edge.i.3, %._crit_edge.i.2, %._crit_edge.i.1, %._crit_edge.i, %._crit_edge247
  %.pre322 = zext nneg i32 %i.e to i64
  br label %._crit_edge.i.7

._crit_edge.i.7:                                  ; preds = %bb.p, %._crit_edge.i.7.loopexit
  %wide.trip.count.i168.pre-phi = phi i64 [ %.pre322, %._crit_edge.i.7.loopexit ], [ %wide.trip.count.i.7, %bb.p ] ; 8 uses
  %i.jq = fsub float %i.ck, %i.dw
  %i.jr = fmul float %i.jq, f0x3A800000           ; 2 uses
  %i.js = shl nuw nsw i32 1, %i.dz
  %i.jt = and i32 %i.js, 3                        ; 2 uses
  %i.ju = shl nuw nsw i32 1, %i.jt
  %i.jv = and i32 %i.ju, 3
  %i.jw = zext nneg i32 %i.jt to i64
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %i.jw ; 3 uses
  %i.jy = zext nneg i32 %i.jv to i64
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %i.jy ; 4 uses
  %.pre321 = load float, ptr %i.jz, align 4, !tbaa !36
  %i.ka = load ptr, ptr %i.el, align 8            ; 8 uses
  br label %bb.q

_ZNK18btConvexPolyhedron15testContainmentEv.exit: ; preds = %.lr.ph.i, %.lr.ph.i.1, %.lr.ph.i.2, %.lr.ph.i.3, %.lr.ph.i.4, %.lr.ph.i.5, %.lr.ph.i.6, %.lr.ph.i.7
  %i.kb = fsub float %i.ey, %i.ef                 ; 2 uses
  store float %i.kb, ptr %i.ek, align 4, !tbaa !36
  %i.kc = add nuw nsw i32 %.094254, 1             ; 2 uses
  %exitcond298.not = icmp eq i32 %i.kc, 1024
  br i1 %exitcond298.not, label %.critedge, label %bb.h, !llvm.loop !83

.critedge:                                        ; preds = %_ZNK18btConvexPolyhedron15testContainmentEv.exit
  store float %i.dw, ptr %i.eh, align 8, !tbaa !36
  store float %i.dw, ptr %i.ei, align 4, !tbaa !36
  store float %i.dw, ptr %i.eg, align 8, !tbaa !36
  br label %.loopexit

bb.q:                                             ; preds = %._crit_edge.i.7, %.critedge109
  %i.kd = phi float [ %.pre321, %._crit_edge.i.7 ], [ %i.kh, %.critedge109 ]
  %.090260 = phi i32 [ 0, %._crit_edge.i.7 ], [ %i.oz, %.critedge109 ]
  %i.ke = load float, ptr %i.jx, align 4, !tbaa !36 ; 2 uses
  %i.kf = fadd float %i.jr, %i.ke
  store float %i.kf, ptr %i.jx, align 4, !tbaa !36
  %i.kg = load float, ptr %i.jz, align 4, !tbaa !36
  %i.kh = fadd float %i.jr, %i.kg                 ; 2 uses
  store float %i.kh, ptr %i.jz, align 4, !tbaa !36
  %i.ki = load float, ptr %i.eg, align 8          ; 2 uses
  %i.kj = load float, ptr %i.ei, align 4          ; 2 uses
  %i.kk = load float, ptr %i.eh, align 8          ; 2 uses
  %i.kl = fsub float %i.o, %i.ki                  ; 4 uses
  %i.km = fsub float %i.q, %i.kj                  ; 4 uses
  %i.kn = fsub float %i.s, %i.kk                  ; 4 uses
  %i.ko = fadd float %i.s, %i.kk                  ; 4 uses
  %i.kp = fadd float %i.q, %i.kj                  ; 4 uses
  %i.kq = fadd float %i.o, %i.ki                  ; 4 uses
  br i1 %i.f, label %.lr.ph.i164.us, label %.critedge109

.lr.ph.i164.us:                                   ; preds = %bb.q, %bb.r
  %indvars.iv.i169.us = phi i64 [ %indvars.iv.next.i170.us, %bb.r ], [ 0, %bb.q ] ; 2 uses
  %i.kr = getelementptr inbounds nuw [48 x i8], ptr %i.ka, i64 %indvars.iv.i169.us ; 4 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 32
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kr, i64 36
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kr, i64 40
  %i.kv = load float, ptr %i.ks, align 4, !tbaa !36
  %i.kw = load float, ptr %i.kt, align 4, !tbaa !36
  %i.kx = load float, ptr %i.ku, align 4, !tbaa !36
  %i.ky = fmul float %i.kp, %i.kw
  %i.kz = tail call float @llvm.fmuladd.f32(float %i.kq, float %i.kv, float %i.ky)
  %i.la = tail call noundef float @llvm.fmuladd.f32(float %i.ko, float %i.kx, float %i.kz)
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kr, i64 44
  %i.lc = load float, ptr %i.lb, align 4, !tbaa !36
  %i.ld = fadd float %i.lc, %i.la
  %i.le = fcmp ule float %i.ld, 0.000000e+00
  br i1 %i.le, label %bb.r, label %_ZNK18btConvexPolyhedron15testContainmentEv.exit173.split.us

bb.r:                                             ; preds = %.lr.ph.i164.us
  %indvars.iv.next.i170.us = add nuw nsw i64 %indvars.iv.i169.us, 1 ; 2 uses
  %exitcond.not.i171.us = icmp eq i64 %indvars.iv.next.i170.us, %wide.trip.count.i168.pre-phi
  br i1 %exitcond.not.i171.us, label %.lr.ph.i164.us.1, label %.lr.ph.i164.us, !llvm.loop !35

.lr.ph.i164.us.1:                                 ; preds = %bb.r, %bb.s
  %indvars.iv.i169.us.1 = phi i64 [ %indvars.iv.next.i170.us.1, %bb.s ], [ 0, %bb.r ] ; 2 uses
  %i.lf = getelementptr inbounds nuw [48 x i8], ptr %i.ka, i64 %indvars.iv.i169.us.1 ; 4 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 32
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lf, i64 36
  %i.li = getelementptr inbounds nuw i8, ptr %i.lf, i64 40
  %i.lj = load float, ptr %i.lg, align 4, !tbaa !36
  %i.lk = load float, ptr %i.lh, align 4, !tbaa !36
  %i.ll = load float, ptr %i.li, align 4, !tbaa !36
  %i.lm = fmul float %i.kp, %i.lk
  %i.ln = tail call float @llvm.fmuladd.f32(float %i.kq, float %i.lj, float %i.lm)
  %i.lo = tail call noundef float @llvm.fmuladd.f32(float %i.kn, float %i.ll, float %i.ln)
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lf, i64 44
  %i.lq = load float, ptr %i.lp, align 4, !tbaa !36
  %i.lr = fadd float %i.lq, %i.lo
  %i.ls = fcmp ule float %i.lr, 0.000000e+00
  br i1 %i.ls, label %bb.s, label %_ZNK18btConvexPolyhedron15testContainmentEv.exit173.split.us

bb.s:                                             ; preds = %.lr.ph.i164.us.1
  %indvars.iv.next.i170.us.1 = add nuw nsw i64 %indvars.iv.i169.us.1, 1 ; 2 uses
  %exitcond.not.i171.us.1 = icmp eq i64 %indvars.iv.next.i170.us.1, %wide.trip.count.i168.pre-phi
  br i1 %exitcond.not.i171.us.1, label %.lr.ph.i164.us.2, label %.lr.ph.i164.us.1, !llvm.loop !35

.lr.ph.i164.us.2:                                 ; preds = %bb.s, %bb.t
  %indvars.iv.i169.us.2 = phi i64 [ %indvars.iv.next.i170.us.2, %bb.t ], [ 0, %bb.s ] ; 2 uses
  %i.lt = getelementptr inbounds nuw [48 x i8], ptr %i.ka, i64 %indvars.iv.i169.us.2 ; 4 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 32
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lt, i64 36
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lt, i64 40
  %i.lx = load float, ptr %i.lu, align 4, !tbaa !36
  %i.ly = load float, ptr %i.lv, align 4, !tbaa !36
  %i.lz = load float, ptr %i.lw, align 4, !tbaa !36
  %i.ma = fmul float %i.km, %i.ly
  %i.mb = tail call float @llvm.fmuladd.f32(float %i.kq, float %i.lx, float %i.ma)
  %i.mc = tail call noundef float @llvm.fmuladd.f32(float %i.ko, float %i.lz, float %i.mb)
  %i.md = getelementptr inbounds nuw i8, ptr %i.lt, i64 44
  %i.me = load float, ptr %i.md, align 4, !tbaa !36
  %i.mf = fadd float %i.me, %i.mc
  %i.mg = fcmp ule float %i.mf, 0.000000e+00
  br i1 %i.mg, label %bb.t, label %_ZNK18btConvexPolyhedron15testContainmentEv.exit173.split.us

bb.t:                                             ; preds = %.lr.ph.i164.us.2
  %indvars.iv.next.i170.us.2 = add nuw nsw i64 %indvars.iv.i169.us.2, 1 ; 2 uses
  %exitcond.not.i171.us.2 = icmp eq i64 %indvars.iv.next.i170.us.2, %wide.trip.count.i168.pre-phi
  br i1 %exitcond.not.i171.us.2, label %.lr.ph.i164.us.3, label %.lr.ph.i164.us.2, !llvm.loop !35

.lr.ph.i164.us.3:                                 ; preds = %bb.t, %bb.u
  %indvars.iv.i169.us.3 = phi i64 [ %indvars.iv.next.i170.us.3, %bb.u ], [ 0, %bb.t ] ; 2 uses
  %i.mh = getelementptr inbounds nuw [48 x i8], ptr %i.ka, i64 %indvars.iv.i169.us.3 ; 4 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 32
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mh, i64 36
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mh, i64 40
  %i.ml = load float, ptr %i.mi, align 4, !tbaa !36
  %i.mm = load float, ptr %i.mj, align 4, !tbaa !36
  %i.mn = load float, ptr %i.mk, align 4, !tbaa !36
  %i.mo = fmul float %i.km, %i.mm
  %i.mp = tail call float @llvm.fmuladd.f32(float %i.kq, float %i.ml, float %i.mo)
  %i.mq = tail call noundef float @llvm.fmuladd.f32(float %i.kn, float %i.mn, float %i.mp)
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mh, i64 44
  %i.ms = load float, ptr %i.mr, align 4, !tbaa !36
  %i.mt = fadd float %i.ms, %i.mq
  %i.mu = fcmp ule float %i.mt, 0.000000e+00
  br i1 %i.mu, label %bb.u, label %_ZNK18btConvexPolyhedron15testContainmentEv.exit173.split.us

bb.u:                                             ; preds = %.lr.ph.i164.us.3
  %indvars.iv.next.i170.us.3 = add nuw nsw i64 %indvars.iv.i169.us.3, 1 ; 2 uses
  %exitcond.not.i171.us.3 = icmp eq i64 %indvars.iv.next.i170.us.3, %wide.trip.count.i168.pre-phi
  br i1 %exitcond.not.i171.us.3, label %.lr.ph.i164.us.4, label %.lr.ph.i164.us.3, !llvm.loop !35

.lr.ph.i164.us.4:                                 ; preds = %bb.u, %bb.v
  %indvars.iv.i169.us.4 = phi i64 [ %indvars.iv.next.i170.us.4, %bb.v ], [ 0, %bb.u ] ; 2 uses
  %i.mv = getelementptr inbounds nuw [48 x i8], ptr %i.ka, i64 %indvars.iv.i169.us.4 ; 4 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 32
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mv, i64 36
  %i.my = getelementptr inbounds nuw i8, ptr %i.mv, i64 40
  %i.mz = load float, ptr %i.mw, align 4, !tbaa !36
  %i.na = load float, ptr %i.mx, align 4, !tbaa !36
  %i.nb = load float, ptr %i.my, align 4, !tbaa !36
  %i.nc = fmul float %i.kp, %i.na
  %i.nd = tail call float @llvm.fmuladd.f32(float %i.kl, float %i.mz, float %i.nc)
  %i.ne = tail call noundef float @llvm.fmuladd.f32(float %i.ko, float %i.nb, float %i.nd)
  %i.nf = getelementptr inbounds nuw i8, ptr %i.mv, i64 44
  %i.ng = load float, ptr %i.nf, align 4, !tbaa !36
  %i.nh = fadd float %i.ng, %i.ne
  %i.ni = fcmp ule float %i.nh, 0.000000e+00
  br i1 %i.ni, label %bb.v, label %_ZNK18btConvexPolyhedron15testContainmentEv.exit173.split.us

bb.v:                                             ; preds = %.lr.ph.i164.us.4
  %indvars.iv.next.i170.us.4 = add nuw nsw i64 %indvars.iv.i169.us.4, 1 ; 2 uses
  %exitcond.not.i171.us.4 = icmp eq i64 %indvars.iv.next.i170.us.4, %wide.trip.count.i168.pre-phi
  br i1 %exitcond.not.i171.us.4, label %.lr.ph.i164.us.5, label %.lr.ph.i164.us.4, !llvm.loop !35

.lr.ph.i164.us.5:                                 ; preds = %bb.v, %bb.w
  %indvars.iv.i169.us.5 = phi i64 [ %indvars.iv.next.i170.us.5, %bb.w ], [ 0, %bb.v ] ; 2 uses
  %i.nj = getelementptr inbounds nuw [48 x i8], ptr %i.ka, i64 %indvars.iv.i169.us.5 ; 4 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 32
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nj, i64 36
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nj, i64 40
  %i.nn = load float, ptr %i.nk, align 4, !tbaa !36
  %i.no = load float, ptr %i.nl, align 4, !tbaa !36
  %i.np = load float, ptr %i.nm, align 4, !tbaa !36
  %i.nq = fmul float %i.kp, %i.no
  %i.nr = tail call float @llvm.fmuladd.f32(float %i.kl, float %i.nn, float %i.nq)
  %i.ns = tail call noundef float @llvm.fmuladd.f32(float %i.kn, float %i.np, float %i.nr)
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nj, i64 44
  %i.nu = load float, ptr %i.nt, align 4, !tbaa !36
  %i.nv = fadd float %i.nu, %i.ns
  %i.nw = fcmp ule float %i.nv, 0.000000e+00
  br i1 %i.nw, label %bb.w, label %_ZNK18btConvexPolyhedron15testContainmentEv.exit173.split.us

bb.w:                                             ; preds = %.lr.ph.i164.us.5
  %indvars.iv.next.i170.us.5 = add nuw nsw i64 %indvars.iv.i169.us.5, 1 ; 2 uses
  %exitcond.not.i171.us.5 = icmp eq i64 %indvars.iv.next.i170.us.5, %wide.trip.count.i168.pre-phi
  br i1 %exitcond.not.i171.us.5, label %.lr.ph.i164.us.6, label %.lr.ph.i164.us.5, !llvm.loop !35

.lr.ph.i164.us.6:                                 ; preds = %bb.w, %bb.x
  %indvars.iv.i169.us.6 = phi i64 [ %indvars.iv.next.i170.us.6, %bb.x ], [ 0, %bb.w ] ; 2 uses
  %i.nx = getelementptr inbounds nuw [48 x i8], ptr %i.ka, i64 %indvars.iv.i169.us.6 ; 4 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 32
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nx, i64 36
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nx, i64 40
  %i.ob = load float, ptr %i.ny, align 4, !tbaa !36
  %i.oc = load float, ptr %i.nz, align 4, !tbaa !36
  %i.od = load float, ptr %i.oa, align 4, !tbaa !36
  %i.oe = fmul float %i.km, %i.oc
end_hunk_0
