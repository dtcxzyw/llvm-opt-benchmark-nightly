Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/domdec_setup?download=true
inline.NumInlined: 472
inline.NumDeleted: 184
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZL13comm_cost_estffPA3_KfRK11gmx_ddbox_tlRK10t_inputrecfiRKN3gmx11BasicVectorIiEE:bb.a

bb.o:                                             ; preds = %bb.n, %bb.l, %bb.k
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv267.2
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !13
  %i.az = icmp sgt i32 %i.ay, 1
  br i1 %i.az, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ba = load i32, ptr %i.ap, align 4, !tbaa !13
  %i.bb = icmp eq i32 %i.ba, 1
  br i1 %i.bb, label %.thread227, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.m
  %indvars.iv.next268.2 = add nuw nsw i64 %indvars.iv267.2, 1 ; 2 uses
  %exitcond.2.not = icmp eq i64 %indvars.iv.next268.2, %wide.trip.count.2
  br i1 %exitcond.2.not, label %.critedge.loopexit.2, label %bb.k, !llvm.loop !293

.critedge.loopexit.2:                             ; preds = %bb.q, %_ZL15inhomogeneous_zRK10t_inputrec.exit.thread, %.critedge.loopexit, %.critedge.loopexit.1
  %.not206245.1345348 = phi i1 [ false, %_ZL15inhomogeneous_zRK10t_inputrec.exit.thread ], [ true, %.critedge.loopexit.1 ], [ false, %.critedge.loopexit ], [ true, %bb.q ]
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.be = load float, ptr %i.bc, align 4, !tbaa !12
  %i.bf = load float, ptr %i.bd, align 4, !tbaa !12
  %i.bg = fmul float %i.be, %i.bf                 ; 7 uses
  %.not207 = icmp sgt i32 %i.y, 0
  %i.bh = load i32, ptr %8, align 4, !tbaa !13    ; 10 uses
  br i1 %.not207, label %bb.z, label %bb.y

.lr.ph:                                           ; preds = %_ZL15inhomogeneous_zRK10t_inputrec.exit.thread
  %wide.trip.count = zext nneg i32 %i.y to i64
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph, %bb.x
  %indvars.iv267 = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next268, %bb.x ] ; 5 uses
  %gep = getelementptr inbounds nuw [12 x i8], ptr %2, i64 %indvars.iv267
  %i.bi = load float, ptr %gep, align 4, !tbaa !12
  %i.bj = fcmp une float %i.bi, 0.000000e+00
  br i1 %i.bj, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %gep248 = getelementptr inbounds nuw [12 x i8], ptr %i.z, i64 %indvars.iv267
  %i.bk = load float, ptr %gep248, align 4, !tbaa !12
  %i.bl = fcmp une float %i.bk, 0.000000e+00
  br i1 %i.bl, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bm = load i32, ptr %i.aa, align 4, !tbaa !125
  %.not = icmp eq i32 %i.bm, 0
  br i1 %.not, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  %gep250 = getelementptr inbounds nuw [12 x i8], ptr %i.ab, i64 %indvars.iv267
  %i.bn = load float, ptr %gep250, align 4, !tbaa !12
  %i.bo = fcmp une float %i.bn, 0.000000e+00
  br i1 %i.bo, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u, %bb.s, %bb.r
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv267
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !13
  %i.br = icmp sgt i32 %i.bq, 1
  br i1 %i.br, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bs = load i32, ptr %8, align 4, !tbaa !13
  %i.bt = icmp eq i32 %i.bs, 1
  br i1 %i.bt, label %.thread227, label %bb.x

bb.x:                                             ; preds = %bb.t, %bb.u, %bb.w, %bb.v
  %indvars.iv.next268 = add nuw nsw i64 %indvars.iv267, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next268, %wide.trip.count
  br i1 %exitcond.not, label %.critedge.loopexit, label %bb.r, !llvm.loop !293

bb.y:                                             ; preds = %.critedge.loopexit.2
  %i.bu = icmp slt i32 %i.bh, 3
  br i1 %i.bu, label %.thread223.thread, label %.thread224

bb.z:                                             ; preds = %.critedge.loopexit.2
  %i.bv = sitofp i32 %i.bh to float
  %i.bw = fmul float %0, %i.bv
  %i.bx = fcmp olt float %i.bg, %i.bw
  br i1 %i.bx, label %.thread227, label %bb.aa

.thread224:                                       ; preds = %bb.y
  %i.by = uitofp nneg i32 %i.bh to float
  %i.bz = fmul float %0, %i.by
  %i.ca = fcmp olt float %i.bg, %i.bz
  br i1 %i.ca, label %.thread227, label %.thread223.thread

bb.aa:                                            ; preds = %bb.z
  %i.cb = icmp sgt i32 %i.bh, 1
  br i1 %i.cb, label %bb.ab, label %.thread223

bb.ab:                                            ; preds = %bb.aa
  %i.cc = add nsw i32 %i.bh, -1
  %i.cd = uitofp nneg i32 %i.cc to float
  %i.ce = fmul float %i.bg, %i.cd
  %i.cf = uitofp nneg i32 %i.bh to float
  %i.cg = fmul float %1, %i.cf
  %i.ch = fcmp olt float %i.ce, %i.cg
  br i1 %i.ch, label %.thread227, label %.thread223

.thread223.thread:                                ; preds = %.thread224, %bb.y
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !12
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !12
  %i.cm = fmul float %i.cj, %i.cl
  br label %bb.ac

.thread223:                                       ; preds = %bb.aa, %bb.ab
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.co = load float, ptr %i.cn, align 4, !tbaa !12
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !12
  %i.cr = fmul float %i.co, %i.cq                 ; 5 uses
  br i1 %.not206245, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.thread223.thread, %.thread223
  %i.cs = phi float [ %i.cm, %.thread223.thread ], [ %i.cr, %.thread223 ] ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !13 ; 4 uses
  %i.cv = icmp slt i32 %i.cu, 3
  br i1 %i.cv, label %.thread223.1, label %.thread224.1

.thread224.1:                                     ; preds = %bb.ac
  %i.cw = uitofp nneg i32 %i.cu to float
  %i.cx = fmul float %0, %i.cw
  %i.cy = fcmp olt float %i.cs, %i.cx
  br i1 %i.cy, label %.thread227, label %.thread223.1

bb.ad:                                            ; preds = %.thread223
  %i.cz = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !13 ; 6 uses
  %i.db = sitofp i32 %i.da to float
  %i.dc = fmul float %0, %i.db
  %i.dd = fcmp olt float %i.cr, %i.dc
  br i1 %i.dd, label %.thread227, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.de = icmp sgt i32 %i.da, 1
  br i1 %i.de, label %bb.af, label %.thread223.1

bb.af:                                            ; preds = %bb.ae
  %i.df = add nsw i32 %i.da, -1
  %i.dg = uitofp nneg i32 %i.df to float
  %i.dh = fmul float %i.cr, %i.dg
  %i.di = uitofp nneg i32 %i.da to float
  %i.dj = fmul float %1, %i.di
  %i.dk = fcmp olt float %i.dh, %i.dj
  br i1 %i.dk, label %.thread227, label %.thread223.1

.thread223.1:                                     ; preds = %bb.af, %bb.ae, %.thread224.1, %bb.ac
  %i.dl = phi float [ %i.cr, %bb.af ], [ %i.cr, %bb.ae ], [ %i.cs, %.thread224.1 ], [ %i.cs, %bb.ac ] ; 5 uses
  %i.dm = phi i32 [ %i.da, %bb.af ], [ %i.da, %bb.ae ], [ %i.cu, %.thread224.1 ], [ %i.cu, %bb.ac ] ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.do = load float, ptr %i.dn, align 4, !tbaa !12
  %i.dp = getelementptr inbounds nuw i8, ptr %3, i64 52
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !12
  %i.dr = fmul float %i.do, %i.dq                 ; 7 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !13 ; 6 uses
  br i1 %.not206245.1345348, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.thread223.1
  %i.du = icmp slt i32 %i.dt, 3
  br i1 %i.du, label %.thread223.2, label %.thread224.2

.thread224.2:                                     ; preds = %bb.ag
  %i.dv = uitofp nneg i32 %i.dt to float
  %i.dw = fmul float %0, %i.dv
  %i.dx = fcmp olt float %i.dr, %i.dw
  br i1 %i.dx, label %.thread227, label %.thread223.2

bb.ah:                                            ; preds = %.thread223.1
  %i.dy = sitofp i32 %i.dt to float
  %i.dz = fmul float %0, %i.dy
  %i.ea = fcmp olt float %i.dr, %i.dz
  br i1 %i.ea, label %.thread227, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.eb = icmp sgt i32 %i.dt, 1
  br i1 %i.eb, label %bb.aj, label %.thread223.2

bb.aj:                                            ; preds = %bb.ai
  %i.ec = add nsw i32 %i.dt, -1
  %i.ed = uitofp nneg i32 %i.ec to float
  %i.ee = fmul float %i.dr, %i.ed
  %i.ef = uitofp nneg i32 %i.dt to float
  %i.eg = fmul float %1, %i.ef
  %i.eh = fcmp olt float %i.ee, %i.eg
  br i1 %i.eh, label %.thread227, label %.thread223.2

.thread223.2:                                     ; preds = %bb.aj, %bb.ai, %.thread224.2, %bb.ag
  %i.ei = icmp sgt i32 %7, 1
  br i1 %i.ei, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %.thread223.2
  %i.ej = icmp eq i32 %i.bh, 1
  %i.ek = icmp sgt i32 %i.dm, 1
  %or.cond359 = and i1 %i.ej, %i.ek
  %9 = insertelement <2 x i32> <i32 1, i32 poison>, i32 %7, i64 1
  br i1 %or.cond359, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.el = icmp eq i32 %i.dm, 1
  %10 = insertelement <2 x i32> <i32 poison, i32 1>, i32 %7, i64 0
  br i1 %i.el, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.em = srem i32 %7, %i.bh
  %i.en = icmp eq i32 %i.em, 0
  %spec.select = select i1 %i.en, i32 %i.bh, i32 %7
  %spec.select.fr = freeze i32 %spec.select       ; 4 uses
  %i.eo = sdiv i32 %7, %spec.select.fr            ; 3 uses
  %11 = insertelement <2 x i32> poison, i32 %spec.select.fr, i64 0
  %12 = insertelement <2 x i32> %11, i32 %i.eo, i64 1
  br label %bb.an

bb.an:                                            ; preds = %bb.ak, %bb.al, %bb.am, %.thread223.2
  %spec.select361 = phi i32 [ %i.dm, %.thread223.2 ], [ %7, %bb.ak ], [ %i.eo, %bb.am ], [ 1, %bb.al ]
  %spec.select360 = phi i32 [ %i.bh, %.thread223.2 ], [ 1, %bb.ak ], [ %spec.select.fr, %bb.am ], [ %7, %bb.al ]
  %.sroa.7.0 = phi i32 [ 1, %.thread223.2 ], [ %7, %bb.ak ], [ %i.eo, %bb.am ], [ 1, %bb.al ] ; 13 uses
  %.sroa.0.0 = phi i32 [ 1, %.thread223.2 ], [ 1, %bb.ak ], [ %spec.select.fr, %bb.am ], [ %7, %bb.al ] ; 11 uses
  %13 = phi <2 x i32> [ splat (i32 1), %.thread223.2 ], [ %9, %bb.ak ], [ %12, %bb.am ], [ %10, %bb.al ] ; 2 uses
  switch i32 %.val.i, label %_ZL8usingPmeRK22CoulombInteractionType.exit [
    i32 3, label %_ZL8usingPmeRK22CoulombInteractionType.exit.thread
    i32 14, label %_ZL8usingPmeRK22CoulombInteractionType.exit.thread
    i32 13, label %_ZL8usingPmeRK22CoulombInteractionType.exit.thread
    i32 15, label %_ZL8usingPmeRK22CoulombInteractionType.exit.thread
    i32 5, label %_ZL8usingPmeRK22CoulombInteractionType.exit.thread
  ]

_ZL8usingPmeRK22CoulombInteractionType.exit:      ; preds = %bb.an
  %i.ep = getelementptr inbounds nuw i8, ptr %5, i64 392
  %.val222 = load i32, ptr %i.ep, align 8, !tbaa !138
  %i.eq = icmp eq i32 %.val222, 5
  br i1 %i.eq, label %_ZL8usingPmeRK22CoulombInteractionType.exit.thread, label %bb.ao

_ZL8usingPmeRK22CoulombInteractionType.exit.thread: ; preds = %bb.an, %bb.an, %bb.an, %bb.an, %bb.an, %_ZL8usingPmeRK22CoulombInteractionType.exit
  %i.er = getelementptr inbounds nuw i8, ptr %5, i64 152
  %i.es = load i32, ptr %i.er, align 8, !tbaa !295
  %i.et = getelementptr inbounds nuw i8, ptr %5, i64 140
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !139
  %i.ev = getelementptr inbounds nuw i8, ptr %5, i64 144
  %i.ew = load i32, ptr %i.ev, align 8, !tbaa !140
  %i.ex = getelementptr inbounds nuw i8, ptr %5, i64 148
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !296
  %i.ez = tail call noundef zeroext i1 @_Z26gmx_pme_check_restrictionsiiiiiiibbb(i32 noundef %i.es, i32 noundef %i.eu, i32 noundef %i.ew, i32 noundef %i.ey, i32 noundef %spec.select360, i32 noundef %spec.select361, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext false)
  br i1 %i.ez, label %bb.ao, label %.thread227

bb.ao:                                            ; preds = %_ZL8usingPmeRK22CoulombInteractionType.exit.thread, %_ZL8usingPmeRK22CoulombInteractionType.exit
  %i.fa = icmp slt i32 %7, 2
  %i.fb = icmp sgt i32 %.sroa.7.0, 1
  %i.fc = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 5 uses
  %i.fd = fpext float %i.bg to double
  %i.fe = fmul double %i.fd, 1.000000e-02         ; 3 uses
  %i.ff = fsub float %i.dl, %i.bg
  %i.fg = tail call noundef float @llvm.fabs.f32(float %i.ff)
  %i.fh = fpext float %i.fg to double
  %i.fi = fcmp ogt double %i.fe, %i.fh            ; 2 uses
  br i1 %i.fa, label %.lr.ph254.us, label %.lr.ph254.split.split.preheader

.lr.ph254.us:                                     ; preds = %bb.ao
  br i1 %i.fi, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %.lr.ph254.us
  %i.fj = load i32, ptr %i.fc, align 4, !tbaa !13
  %i.fk = load i32, ptr %8, align 4, !tbaa !13
  %i.fl = icmp sgt i32 %i.fj, %i.fk
  br i1 %i.fl, label %.thread227, label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %.lr.ph254.us
  %i.fm = fsub float %i.dr, %i.bg
  %i.fn = tail call noundef float @llvm.fabs.f32(float %i.fm)
  %i.fo = fpext float %i.fn to double
  %i.fp = fcmp ogt double %i.fe, %i.fo
  br i1 %i.fp, label %bb.ar, label %.lr.ph254.us.1

bb.ar:                                            ; preds = %bb.aq
  %i.fq = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !13
  %i.fs = load i32, ptr %8, align 4, !tbaa !13
  %i.ft = icmp sgt i32 %i.fr, %i.fs
  br i1 %i.ft, label %.thread227, label %.lr.ph254.us.1

.lr.ph254.us.1:                                   ; preds = %bb.ar, %bb.aq
  %i.fu = fpext float %i.dl to double
  %i.fv = fmul double %i.fu, 1.000000e-02
  %i.fw = fsub float %i.dr, %i.dl
  %i.fx = tail call noundef float @llvm.fabs.f32(float %i.fw)
  %i.fy = fpext float %i.fx to double
  %i.fz = fcmp ogt double %i.fv, %i.fy
  br i1 %i.fz, label %bb.as, label %.critedge221

bb.as:                                            ; preds = %.lr.ph254.us.1
  %i.ga = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !13
  %i.gc = load i32, ptr %i.fc, align 4, !tbaa !13
  %i.gd = icmp sgt i32 %i.gb, %i.gc
  br i1 %i.gd, label %.thread227, label %.critedge221

.lr.ph254.1:                                      ; preds = %bb.av, %.lr.ph254.split.split.1296
  br i1 %i.fb, label %.critedge221, label %.lr.ph254.split.split.preheader.1

.lr.ph254.split.split.preheader.1:                ; preds = %.lr.ph254.1
  %i.ge = fpext float %i.dl to double
  %i.gf = fmul double %i.ge, 1.000000e-02
  %i.gg = fsub float %i.dr, %i.dl
  %i.gh = tail call noundef float @llvm.fabs.f32(float %i.gg)
  %i.gi = fpext float %i.gh to double
  %i.gj = fcmp ogt double %i.gf, %i.gi
  br i1 %i.gj, label %bb.at, label %.critedge221

bb.at:                                            ; preds = %.lr.ph254.split.split.preheader.1
  %i.gk = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !13
  %i.gm = load i32, ptr %i.fc, align 4, !tbaa !13
  %i.gn = icmp sgt i32 %i.gl, %i.gm
  br i1 %i.gn, label %.thread227, label %.critedge221

.lr.ph254.split.split.preheader:                  ; preds = %bb.ao
  br i1 %i.fi, label %bb.au, label %.lr.ph254.split.split.1296

bb.au:                                            ; preds = %.lr.ph254.split.split.preheader
  %i.go = load i32, ptr %i.fc, align 4, !tbaa !13 ; 2 uses
  %i.gp = load i32, ptr %8, align 4, !tbaa !13
  %i.gq = icmp sgt i32 %i.go, %i.gp
  %.not208 = icmp eq i32 %i.go, %.sroa.7.0
  %or.cond362 = and i1 %i.gq, %.not208
  br i1 %or.cond362, label %.thread227, label %.lr.ph254.split.split.1296

.lr.ph254.split.split.1296:                       ; preds = %.lr.ph254.split.split.preheader, %bb.au
  %i.gr = fsub float %i.dr, %i.bg
  %i.gs = tail call noundef float @llvm.fabs.f32(float %i.gr)
  %i.gt = fpext float %i.gs to double
  %i.gu = fcmp ogt double %i.fe, %i.gt
  br i1 %i.gu, label %bb.av, label %.lr.ph254.1

bb.av:                                            ; preds = %.lr.ph254.split.split.1296
  %i.gv = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !13
  %i.gx = load i32, ptr %8, align 4, !tbaa !13
  %i.gy = icmp sgt i32 %i.gw, %i.gx
  br i1 %i.gy, label %.thread227, label %.lr.ph254.1

.critedge221:                                     ; preds = %.lr.ph254.1, %.lr.ph254.split.split.preheader.1, %bb.at, %.lr.ph254.us.1, %bb.as
  %i.gz = tail call noundef float @_Z13comm_box_fracRKN3gmx11BasicVectorIiEEfRK11gmx_ddbox_t(ptr noundef nonnull align 4 dereferenceable(12) %8, float noundef %1, ptr noundef nonnull align 4 dereferenceable(200) %3) ; 3 uses
  %i.ha = mul nsw i64 %4, 3
  %i.hb = sitofp i64 %i.ha to float               ; 4 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %5, i64 140 ; 4 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %5, i64 144
  %i.he = getelementptr inbounds nuw i8, ptr %5, i64 152
  %i.hf = load i32, ptr %8, align 4, !tbaa !13    ; 7 uses
  %i.hg = srem i32 %i.hf, %.sroa.0.0
  %.not213 = icmp eq i32 %i.hg, 0
  br i1 %.not213, label %bb.bb, label %bb.aw

bb.aw:                                            ; preds = %.critedge221
  %i.hh = icmp sgt i32 %i.hf, %.sroa.0.0
  br i1 %i.hh, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.hi = icmp eq i32 %.sroa.0.0, 2
  %i.hj = select i1 %i.hi, double f0x3FD5555555555555, double 5.000000e-01
  br label %bb.ba

bb.ay:                                            ; preds = %bb.aw
  %.0.i4.i = tail call noundef i32 @llvm.abs.i32(i32 %.sroa.0.0, i1 true) ; 2 uses
  %i.hk = icmp eq i32 %i.hf, 0
  br i1 %i.hk, label %_ZSt3gcdIiiENSt11common_typeIJT_T0_EE4typeES1_S2_.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %.0.i.i = tail call noundef i32 @llvm.abs.i32(i32 %i.hf, i1 true)
  %i.hl = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.hf, i1 true) ; 2 uses
  %i.hm = lshr exact i32 %.0.i.i, %i.hl           ; 3 uses
  %i.hn = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.0.0, i1 true) ; 2 uses
  %i.ho = lshr exact i32 %.0.i4.i, %i.hn          ; 3 uses
  %i.hp = tail call i32 @llvm.umin.i32(i32 %i.hl, i32 %i.hn)
  %spec.select34.i.i = tail call i32 @llvm.umin.i32(i32 %i.hm, i32 %i.ho) ; 2 uses
  %i.hq = icmp eq i32 %i.hm, %i.ho
  br i1 %i.hq, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.az
  %spec.select.lcssa.i.i = phi i32 [ %spec.select34.i.i, %bb.az ], [ %spec.select.i.i, %.lr.ph.i.i ]
  %i.hr = shl i32 %spec.select.lcssa.i.i, %i.hp
  br label %_ZSt3gcdIiiENSt11common_typeIJT_T0_EE4typeES1_S2_.exit

.lr.ph.i.i:                                       ; preds = %bb.az, %.lr.ph.i.i
  %spec.select37.i.i = phi i32 [ %spec.select.i.i, %.lr.ph.i.i ], [ %spec.select34.i.i, %bb.az ] ; 4 uses
  %.02736.i.i = phi i32 [ %i.hu, %.lr.ph.i.i ], [ %i.ho, %bb.az ]
  %.02835.i.i = phi i32 [ %spec.select37.i.i, %.lr.ph.i.i ], [ %i.hm, %bb.az ]
  %spec.select33.i.i = tail call i32 @llvm.umax.i32(i32 %.02835.i.i, i32 %.02736.i.i)
  %i.hs = sub nuw nsw i32 %spec.select33.i.i, %spec.select37.i.i ; 2 uses
  %i.ht = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.hs, i1 true)
  %i.hu = lshr exact i32 %i.hs, %i.ht             ; 3 uses
  %spec.select.i.i = tail call i32 @llvm.umin.i32(i32 %spec.select37.i.i, i32 %i.hu) ; 2 uses
  %i.hv = icmp eq i32 %spec.select37.i.i, %i.hu
  br i1 %i.hv, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !1

_ZSt3gcdIiiENSt11common_typeIJT_T0_EE4typeES1_S2_.exit: ; preds = %bb.ay, %._crit_edge.i.i
  %.0.i5.i = phi i32 [ %i.hr, %._crit_edge.i.i ], [ %.0.i4.i, %bb.ay ]
  %i.hw = sitofp i32 %.0.i5.i to double
  %i.hx = sitofp i32 %.sroa.0.0 to double
  %i.hy = fdiv double %i.hw, %i.hx
  %i.hz = fsub double 1.000000e+00, %i.hy
  br label %bb.ba

bb.ba:                                            ; preds = %_ZSt3gcdIiiENSt11common_typeIJT_T0_EE4typeES1_S2_.exit, %bb.ax
  %i.ia = phi double [ %i.hj, %bb.ax ], [ %i.hz, %_ZSt3gcdIiiENSt11common_typeIJT_T0_EE4typeES1_S2_.exit ]
  %i.ib = fptrunc double %i.ia to float
  %i.ic = tail call float @llvm.fmuladd.f32(float %i.hb, float %i.ib, float 0.000000e+00)
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %.critedge221
  %.1191 = phi float [ %i.ic, %bb.ba ], [ 0.000000e+00, %.critedge221 ] ; 2 uses
  %i.id = icmp sgt i32 %.sroa.0.0, 1
  br i1 %i.id, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.ie = uitofp nneg i32 %.sroa.0.0 to float
  %i.if = load <4 x i32>, ptr %i.hc, align 4, !tbaa !13
  %i.ig = load i32, ptr %i.hc, align 4, !tbaa !13
  %i.ih = srem i32 %i.ig, %.sroa.0.0
  %i.ii = icmp eq i32 %i.ih, 0
  %i.ij = sext i1 %i.ii to i32
  %i.ik = insertelement <4 x i32> <i32 0, i32 0, i32 0, i32 poison>, i32 %i.ij, i64 3
  %i.il = add nsw <4 x i32> %i.if, %i.ik
  %i.im = sitofp <4 x i32> %i.il to <4 x float>   ; 4 uses
  %i.in = extractelement <4 x float> %i.im, i64 3
  %i.io = fmul nnan float %i.in, %i.ie
  %i.ip = extractelement <4 x float> %i.im, i64 0 ; 2 uses
  %i.iq = fmul float %i.io, %i.ip
  %i.ir = extractelement <4 x float> %i.im, i64 1
  %i.is = fmul float %i.iq, %i.ir
  %i.it = extractelement <4 x float> %i.im, i64 2
  %i.iu = fmul float %i.is, %i.it
  %i.iv = fdiv float %i.iu, %i.ip
  %i.iw = fadd float %.1191, %i.iv
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bb, %bb.bc
  %.2192 = phi float [ %i.iw, %bb.bc ], [ %.1191, %bb.bb ] ; 2 uses
  %i.ix = load i32, ptr %i.fc, align 4, !tbaa !13 ; 8 uses
  %i.iy = srem i32 %i.ix, %.sroa.7.0
  %.not213.1 = icmp eq i32 %i.iy, 0
  br i1 %.not213.1, label %bb.bj, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.iz = icmp sgt i32 %i.ix, %.sroa.7.0
  br i1 %i.iz, label %bb.bh, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %.0.i4.i.1 = tail call noundef i32 @llvm.abs.i32(i32 %.sroa.7.0, i1 true) ; 2 uses
  %i.ja = icmp eq i32 %i.ix, 0
  br i1 %i.ja, label %_ZSt3gcdIiiENSt11common_typeIJT_T0_EE4typeES1_S2_.exit.1, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %.0.i.i.1 = tail call noundef i32 @llvm.abs.i32(i32 %i.ix, i1 true)
  %i.jb = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.ix, i1 true) ; 2 uses
  %i.jc = lshr exact i32 %.0.i.i.1, %i.jb         ; 3 uses
  %i.jd = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.7.0, i1 true) ; 2 uses
  %i.je = lshr exact i32 %.0.i4.i.1, %i.jd        ; 3 uses
  %i.jf = tail call i32 @llvm.umin.i32(i32 %i.jb, i32 %i.jd)
  %spec.select34.i.i.1 = tail call i32 @llvm.umin.i32(i32 %i.jc, i32 %i.je) ; 2 uses
  %i.jg = icmp eq i32 %i.jc, %i.je
  br i1 %i.jg, label %._crit_edge.i.i.1, label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %bb.bg, %.lr.ph.i.i.1
  %spec.select37.i.i.1 = phi i32 [ %spec.select.i.i.1, %.lr.ph.i.i.1 ], [ %spec.select34.i.i.1, %bb.bg ] ; 4 uses
  %.02736.i.i.1 = phi i32 [ %i.jj, %.lr.ph.i.i.1 ], [ %i.je, %bb.bg ]
  %.02835.i.i.1 = phi i32 [ %spec.select37.i.i.1, %.lr.ph.i.i.1 ], [ %i.jc, %bb.bg ]
  %spec.select33.i.i.1 = tail call i32 @llvm.umax.i32(i32 %.02835.i.i.1, i32 %.02736.i.i.1)
  %i.jh = sub nuw nsw i32 %spec.select33.i.i.1, %spec.select37.i.i.1 ; 2 uses
  %i.ji = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.jh, i1 true)
  %i.jj = lshr exact i32 %i.jh, %i.ji             ; 3 uses
  %spec.select.i.i.1 = tail call i32 @llvm.umin.i32(i32 %spec.select37.i.i.1, i32 %i.jj) ; 2 uses
  %i.jk = icmp eq i32 %spec.select37.i.i.1, %i.jj
  br i1 %i.jk, label %._crit_edge.i.i.1, label %.lr.ph.i.i.1, !llvm.loop !1

._crit_edge.i.i.1:                                ; preds = %.lr.ph.i.i.1, %bb.bg
  %spec.select.lcssa.i.i.1 = phi i32 [ %spec.select34.i.i.1, %bb.bg ], [ %spec.select.i.i.1, %.lr.ph.i.i.1 ]
  %i.jl = shl i32 %spec.select.lcssa.i.i.1, %i.jf
  br label %_ZSt3gcdIiiENSt11common_typeIJT_T0_EE4typeES1_S2_.exit.1

_ZSt3gcdIiiENSt11common_typeIJT_T0_EE4typeES1_S2_.exit.1: ; preds = %._crit_edge.i.i.1, %bb.bf
  %.0.i5.i.1 = phi i32 [ %i.jl, %._crit_edge.i.i.1 ], [ %.0.i4.i.1, %bb.bf ]
  %i.jm = sitofp i32 %.0.i5.i.1 to double
  %i.jn = sitofp i32 %.sroa.7.0 to double
  %i.jo = fdiv double %i.jm, %i.jn
  %i.jp = fsub double 1.000000e+00, %i.jo
  br label %bb.bi

bb.bh:                                            ; preds = %bb.be
  %i.jq = icmp eq i32 %.sroa.7.0, 2
  %i.jr = select i1 %i.jq, double f0x3FD5555555555555, double 5.000000e-01
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %_ZSt3gcdIiiENSt11common_typeIJT_T0_EE4typeES1_S2_.exit.1
  %i.js = phi double [ %i.jr, %bb.bh ], [ %i.jp, %_ZSt3gcdIiiENSt11common_typeIJT_T0_EE4typeES1_S2_.exit.1 ]
  %i.jt = fptrunc double %i.js to float
  %i.ju = tail call float @llvm.fmuladd.f32(float %i.hb, float %i.jt, float %.2192)
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bd
  %.1191.1 = phi float [ %i.ju, %bb.bi ], [ %.2192, %bb.bd ] ; 2 uses
  %i.jv = icmp sgt i32 %.sroa.7.0, 1
  br i1 %i.jv, label %bb.bk, label %._crit_edge

._crit_edge:                                      ; preds = %bb.bj
  %14 = load <3 x i32>, ptr %i.hc, align 4, !tbaa !13 ; 3 uses
  %15 = shufflevector <3 x i32> %14, <3 x i32> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 1>
  %16 = extractelement <3 x i32> %14, i64 0
  %.pre312 = sitofp i32 %16 to float
  %17 = extractelement <3 x i32> %14, i64 2
  %.pre313 = sitofp i32 %17 to float
  br label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %18 = load i32, ptr %i.hd, align 8, !tbaa !13   ; 2 uses
  %i.jw = srem i32 %18, %.sroa.7.0
  %i.jx = icmp eq i32 %i.jw, 0
  %i.jy = load i32, ptr %i.he, align 8, !tbaa !295
  %i.jz = sext i1 %i.jx to i32
  %i.ka = add nsw i32 %i.jy, %i.jz
  %i.kb = uitofp nneg i32 %.sroa.7.0 to float
  %i.kc = sitofp i32 %i.ka to float
  %i.kd = fmul nnan float %i.kb, %i.kc
  %19 = sitofp i32 %18 to float                   ; 2 uses
  %20 = load <3 x i32>, ptr %i.hc, align 4, !tbaa !13 ; 3 uses
  %21 = shufflevector <3 x i32> %20, <3 x i32> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 1>
  %22 = extractelement <3 x i32> %20, i64 0
  %i.ke = sitofp i32 %22 to float                 ; 2 uses
  %23 = fmul float %i.kd, %i.ke
  %i.kf = fmul float %23, %19
  %24 = extractelement <3 x i32> %20, i64 2
  %i.kg = sitofp i32 %24 to float                 ; 2 uses
  %i.kh = fmul float %i.kf, %i.kg
  %i.ki = fdiv float %i.kh, %19
  %i.kj = fadd float %.1191.1, %i.ki
  br label %bb.bl

bb.bl:                                            ; preds = %._crit_edge, %bb.bk
  %.pre-phi314 = phi float [ %.pre313, %._crit_edge ], [ %i.kg, %bb.bk ]
  %.pre-phi = phi float [ %.pre312, %._crit_edge ], [ %i.ke, %bb.bk ]
  %.2192.1 = phi float [ %.1191.1, %._crit_edge ], [ %i.kj, %bb.bk ]
  %25 = phi <4 x i32> [ %15, %._crit_edge ], [ %21, %bb.bk ]
  %26 = add <2 x i32> %13, splat (i32 -1)
  %27 = shufflevector <2 x i32> %26, <2 x i32> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 2 uses
  %i.kk = sitofp i32 %.sroa.7.0 to float
  %i.kl = sitofp i32 %.sroa.0.0 to float
  %28 = add <4 x i32> %25, %27
  %29 = shufflevector <2 x i32> %13, <2 x i32> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %30 = sdiv <4 x i32> %28, %29                   ; 2 uses
  %31 = shufflevector <4 x i32> %27, <4 x i32> %30, <4 x i32> <i32 0, i32 1, i32 6, i32 4>
  %32 = sitofp <4 x i32> %31 to <4 x float>       ; 4 uses
  %33 = extractelement <4 x float> %32, i64 0
  %34 = fmul nnan float %33, %i.kk
  %35 = extractelement <4 x float> %32, i64 1
  %36 = fmul nnan float %35, %i.kl
  %37 = extractelement <4 x float> %32, i64 2
  %38 = fmul float %34, %37
  %i.km = extractelement <4 x float> %32, i64 3
  %i.kn = fmul float %38, %i.km
  %39 = fmul float %i.kn, %.pre-phi
  %40 = fadd float %.2192.1, %39
  %41 = shufflevector <4 x i32> %30, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %42 = sitofp <2 x i32> %41 to <2 x float>       ; 2 uses
  %i.ko = extractelement <2 x float> %42, i64 0
  %i.kp = fmul float %36, %i.ko
  %i.kq = extractelement <2 x float> %42, i64 1
  %i.kr = fmul float %i.kp, %i.kq
  %i.ks = fmul float %i.kr, %.pre-phi314
  %i.kt = fadd float %40, %i.ks                   ; 2 uses
  %i.ku = icmp eq i32 %i.hf, 1
  br i1 %i.ku, label %.thread229, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.kv = icmp eq i32 %i.ix, 1
  br i1 %i.kv, label %.thread349, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.kw = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !13
  %i.ky = icmp eq i32 %i.kx, 1
  br i1 %i.ky, label %bb.bo, label %bb.br

bb.bo:                                            ; preds = %bb.bn
  %i.kz = load i32, ptr %i.a, align 8, !tbaa !141
  %.not209 = icmp eq i32 %i.kz, 2
  br i1 %.not209, label %bb.br, label %bb.bp

.thread229:                                       ; preds = %bb.bl
  %i.la = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !13
  %.not210230 = icmp eq i32 %i.lb, 0
  br i1 %.not210230, label %bb.bp, label %.thread231

bb.bp:                                            ; preds = %bb.bo, %.thread229
  %i.lc = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !13
  %.not211 = icmp ne i32 %i.ld, 0
  %i.le = icmp eq i32 %i.ix, 1
  %or.cond363 = and i1 %.not211, %i.le
  br i1 %or.cond363, label %.thread231, label %bb.bq

.thread349:                                       ; preds = %bb.bm
  %i.lf = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !13
  %.not211350 = icmp eq i32 %i.lg, 0
  br i1 %.not211350, label %bb.bq, label %.thread231

.thread231:                                       ; preds = %bb.bp, %.thread349, %.thread229
  %i.lh = fmul float %6, 2.000000e-01
  br label %bb.br

bb.bq:                                            ; preds = %.thread349, %bb.bp
  %i.li = fmul float %6, 1.000000e-01
  br label %bb.br

bb.br:                                            ; preds = %.thread231, %bb.bq, %bb.bo, %bb.bn
  %.0 = phi float [ %i.lh, %.thread231 ], [ %i.li, %bb.bq ], [ 0.000000e+00, %bb.bo ], [ 0.000000e+00, %bb.bn ] ; 3 uses
  %i.lj = load ptr, ptr @debug, align 8, !tbaa !147 ; 2 uses
  %.not212 = icmp eq ptr %i.lj, null
  br i1 %.not212, label %._crit_edge318, label %bb.bs

._crit_edge318:                                   ; preds = %bb.br
  %.pre319 = fadd float %i.gz, %.0
  br label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.lk = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !13
  %i.lm = fpext float %i.gz to double
  %i.ln = fpext float %.0 to double
  %i.lo = fdiv float %i.kt, %i.hb                 ; 2 uses
  %i.lp = fpext float %i.lo to double
  %i.lq = fadd float %i.gz, %.0                   ; 2 uses
  %i.lr = fadd float %i.lo, %i.lq
  %i.ls = fpext float %i.lr to double
  %i.lt = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.lj, ptr noundef nonnull @.str.33, i32 noundef %i.hf, i32 noundef %i.ix, i32 noundef %i.ll, i32 noundef %.sroa.0.0, i32 noundef %.sroa.7.0, double noundef %i.lm, double noundef %i.ln, double noundef %i.lp, double noundef %i.ls) #18 ; 0 uses
  br label %bb.bt

bb.bt:                                            ; preds = %._crit_edge318, %bb.bs
  %.pre-phi320 = phi float [ %.pre319, %._crit_edge318 ], [ %i.lq, %bb.bs ]
  %i.lu = tail call float @llvm.fmuladd.f32(float %i.hb, float %.pre-phi320, float %i.kt)
  br label %.thread227

.thread227:                                       ; preds = %bb.w, %bb.i, %bb.p, %bb.au, %_ZL8usingPmeRK22CoulombInteractionType.exit.thread.i, %bb.z, %bb.ab, %.thread224, %.thread224.1, %bb.ad, %bb.af, %.thread224.2, %bb.ah, %bb.aj, %bb.av, %bb.at, %bb.ar, %bb.ap, %bb.as, %bb.b, %bb.c, %_ZL8usingPmeRK22CoulombInteractionType.exit.thread, %bb.bt
  %.9 = phi float [ -1.000000e+00, %_ZL8usingPmeRK22CoulombInteractionType.exit.thread.i ], [ -1.000000e+00, %bb.b ], [ %i.lu, %bb.bt ], [ -1.000000e+00, %bb.z ], [ -1.000000e+00, %_ZL8usingPmeRK22CoulombInteractionType.exit.thread ], [ -1.000000e+00, %bb.av ], [ -1.000000e+00, %bb.c ], [ -1.000000e+00, %bb.ar ], [ -1.000000e+00, %bb.as ], [ -1.000000e+00, %bb.ap ], [ -1.000000e+00, %bb.at ], [ -1.000000e+00, %bb.au ], [ -1.000000e+00, %bb.aj ], [ -1.000000e+00, %bb.ah ], [ -1.000000e+00, %.thread224.2 ], [ -1.000000e+00, %bb.af ], [ -1.000000e+00, %bb.ad ], [ -1.000000e+00, %.thread224.1 ], [ -1.000000e+00, %.thread224 ], [ -1.000000e+00, %bb.ab ], [ -1.000000e+00, %bb.p ], [ -1.000000e+00, %bb.i ], [ -1.000000e+00, %bb.w ]
  ret float %.9
}

declare noundef zeroext i1 @_Z26gmx_pme_check_restrictionsiiiiiiibbb(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.mul.v8i32(<8 x i32>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.mul.v4i32(<4 x i32>) #15

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #10 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nounwind }
attributes #19 = { noreturn }
attributes #20 = { builtin nounwind }
attributes #21 = { builtin allocsize(0) }
attributes #22 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{null}
!1 = distinct !{!1, !131}
!2 = !{i32 7, !"openmp", i32 51}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"float", !7, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!8, !8, i64 0}
!14 = !{!"any pointer", !7, i64 0}
!15 = !{!"p1 _ZTSN3gmx10ILogTargetE", !14, i64 0}
!16 = !{!"_ZTSN3gmx14LogLevelHelperE", !15, i64 0}
!17 = !{!16, !15, i64 0}
!18 = !{!"p1 omnipotent char", !14, i64 0}
!19 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !18, i64 0}
!20 = !{!19, !18, i64 0}
!21 = !{!"long", !7, i64 0}
!22 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !19, i64 0, !21, i64 8, !7, i64 16}
!23 = !{!22, !21, i64 8}
!24 = !{!"bool", !7, i64 0}
!25 = !{!"vtable pointer", !6, i64 0}
!26 = !{!25, !25, i64 0}
!27 = !{!22, !18, i64 0}
!28 = !{!7, !7, i64 0}
!29 = !{!"_ZTS20IntegrationAlgorithm", !7, i64 0}
!30 = !{!"_ZTS12CutoffScheme", !7, i64 0}
!31 = !{!"_ZTS19ComRemovalAlgorithm", !7, i64 0}
!32 = !{!"double", !7, i64 0}
!33 = !{!"p1 _ZTSN3gmx8MtsLevelE", !14, i64 0}
!34 = !{!"_ZTSNSt12_Vector_baseIN3gmx8MtsLevelESaIS1_EE17_Vector_impl_dataE", !33, i64 0, !33, i64 8, !33, i64 16}
!35 = !{!"_ZTSNSt12_Vector_baseIN3gmx8MtsLevelESaIS1_EE12_Vector_implE", !34, i64 0}
!36 = !{!"_ZTSSt12_Vector_baseIN3gmx8MtsLevelESaIS1_EE", !35, i64 0}
!37 = !{!"_ZTSSt6vectorIN3gmx8MtsLevelESaIS1_EE", !36, i64 0}
!38 = !{!"_ZTS13EwaldGeometry", !7, i64 0}
!39 = !{!"_ZTS12LongRangeVdW", !7, i64 0}
!40 = !{!"_ZTS7PbcType", !7, i64 0}
!41 = !{!"_ZTS26EnsembleTemperatureSetting", !7, i64 0}
!42 = !{!"_ZTS19TemperatureCoupling", !7, i64 0}
!43 = !{!"_ZTS16PressureCoupling", !7, i64 0}
!44 = !{!"_ZTS20PressureCouplingType", !7, i64 0}
!45 = !{!"_ZTS15RefCoordScaling", !7, i64 0}
!46 = !{!"_ZTS23PressureCouplingOptions", !43, i64 0, !44, i64 4, !8, i64 8, !11, i64 12, !7, i64 16, !7, i64 52, !45, i64 88}
!47 = !{!"p1 _ZTSN3gmx11BasicVectorIfEE", !14, i64 0}
!48 = !{!"_ZTSNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE17_Vector_impl_dataE", !47, i64 0, !47, i64 8, !47, i64 16}
!49 = !{!"_ZTSNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE12_Vector_implE", !48, i64 0}
!50 = !{!"_ZTSSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE", !49, i64 0}
!51 = !{!"_ZTSSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE", !50, i64 0}
!52 = !{!"_ZTS22CoulombInteractionType", !7, i64 0}
!53 = !{!"_ZTS20InteractionModifiers", !7, i64 0}
!54 = !{!"_ZTS15VanDerWaalsType", !7, i64 0}
!55 = !{!"_ZTS24DispersionCorrectionType", !7, i64 0}
!56 = !{!"_ZTS26FreeEnergyPerturbationType", !7, i64 0}
!57 = !{!"p1 _ZTS8t_lambda", !14, i64 0}
end_hunk_0
