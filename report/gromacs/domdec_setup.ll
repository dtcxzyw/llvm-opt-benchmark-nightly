inline.NumInlined: 472
inline.NumDeleted: 184
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZL13comm_cost_estffPA3_KfRK11gmx_ddbox_tlRK10t_inputrecfiRKN3gmx11BasicVectorIiEE:bb.a
  %i.bb = icmp eq i32 %i.ba, 1
  br i1 %i.bb, label %.thread227, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %indvars.iv.next268.2 = add nuw nsw i64 %indvars.iv267.2, 1 ; 2 uses
  %exitcond.2.not = icmp eq i64 %indvars.iv.next268.2, %wide.trip.count.2
  br i1 %exitcond.2.not, label %.critedge.loopexit.2, label %bb.l, !llvm.loop !294

.critedge.loopexit.2:                             ; preds = %bb.r, %_ZL15inhomogeneous_zRK10t_inputrec.exit.thread, %.critedge.loopexit, %.critedge.loopexit.1
  %.not206245.1338341 = phi i1 [ false, %_ZL15inhomogeneous_zRK10t_inputrec.exit.thread ], [ true, %.critedge.loopexit.1 ], [ false, %.critedge.loopexit ], [ true, %bb.r ]
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.be = load float, ptr %i.bc, align 4, !tbaa !9
  %i.bf = load float, ptr %i.bd, align 4, !tbaa !9
  %i.bg = fmul float %i.be, %i.bf                 ; 7 uses
  %.not207 = icmp sgt i32 %i.y, 0
  %i.bh = load i32, ptr %8, align 4, !tbaa !11    ; 10 uses
  br i1 %.not207, label %bb.aa, label %bb.z

.lr.ph:                                           ; preds = %_ZL15inhomogeneous_zRK10t_inputrec.exit.thread
  %wide.trip.count = zext nneg i32 %i.y to i64
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph, %bb.y
  %indvars.iv267 = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next268, %bb.y ] ; 5 uses
  %gep = getelementptr inbounds nuw [12 x i8], ptr %2, i64 %indvars.iv267
  %i.bi = load float, ptr %gep, align 4, !tbaa !9
  %i.bj = fcmp une float %i.bi, 0.000000e+00
  br i1 %i.bj, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %gep248 = getelementptr inbounds nuw [12 x i8], ptr %i.z, i64 %indvars.iv267
  %i.bk = load float, ptr %gep248, align 4, !tbaa !9
  %i.bl = fcmp une float %i.bk, 0.000000e+00
  br i1 %i.bl, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bm = load i32, ptr %i.aa, align 4, !tbaa !30
  %.not = icmp eq i32 %i.bm, 0
  br i1 %.not, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %gep250 = getelementptr inbounds nuw [12 x i8], ptr %i.ab, i64 %indvars.iv267
  %i.bn = load float, ptr %gep250, align 4, !tbaa !9
  %i.bo = fcmp une float %i.bn, 0.000000e+00
  br i1 %i.bo, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v, %bb.t, %bb.s
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv267
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !11
  %i.br = icmp sgt i32 %i.bq, 1
  br i1 %i.br, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bs = load i32, ptr %8, align 4, !tbaa !11
  %i.bt = icmp eq i32 %i.bs, 1
  br i1 %i.bt, label %.thread227, label %bb.y

bb.y:                                             ; preds = %bb.u, %bb.v, %bb.x, %bb.w
  %indvars.iv.next268 = add nuw nsw i64 %indvars.iv267, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next268, %wide.trip.count
  br i1 %exitcond.not, label %.critedge.loopexit, label %bb.s, !llvm.loop !294

bb.z:                                             ; preds = %.critedge.loopexit.2
  %i.bu = icmp slt i32 %i.bh, 3
  br i1 %i.bu, label %.thread223.thread, label %.thread224

bb.aa:                                            ; preds = %.critedge.loopexit.2
  %i.bv = sitofp i32 %i.bh to float
  %i.bw = fmul float %0, %i.bv
  %i.bx = fcmp olt float %i.bg, %i.bw
  br i1 %i.bx, label %.thread227, label %bb.ab

.thread224:                                       ; preds = %bb.z
  %i.by = uitofp nneg i32 %i.bh to float
  %i.bz = fmul float %0, %i.by
  %i.ca = fcmp olt float %i.bg, %i.bz
  br i1 %i.ca, label %.thread227, label %.thread223.thread

bb.ab:                                            ; preds = %bb.aa
  %i.cb = icmp sgt i32 %i.bh, 1
  br i1 %i.cb, label %bb.ac, label %.thread223

bb.ac:                                            ; preds = %bb.ab
  %i.cc = add nsw i32 %i.bh, -1
  %i.cd = uitofp nneg i32 %i.cc to float
  %i.ce = fmul float %i.bg, %i.cd
  %i.cf = uitofp nneg i32 %i.bh to float
  %i.cg = fmul float %1, %i.cf
  %i.ch = fcmp olt float %i.ce, %i.cg
  br i1 %i.ch, label %.thread227, label %.thread223

.thread223.thread:                                ; preds = %.thread224, %bb.z
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !9
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !9
  %i.cm = fmul float %i.cj, %i.cl
  br label %bb.ad

.thread223:                                       ; preds = %bb.ab, %bb.ac
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.co = load float, ptr %i.cn, align 4, !tbaa !9
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !9
  %i.cr = fmul float %i.co, %i.cq                 ; 5 uses
  br i1 %.not206245, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %.thread223.thread, %.thread223
  %i.cs = phi float [ %i.cm, %.thread223.thread ], [ %i.cr, %.thread223 ] ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !11 ; 4 uses
  %i.cv = icmp slt i32 %i.cu, 3
  br i1 %i.cv, label %.thread223.1, label %.thread224.1

.thread224.1:                                     ; preds = %bb.ad
  %i.cw = uitofp nneg i32 %i.cu to float
  %i.cx = fmul float %0, %i.cw
  %i.cy = fcmp olt float %i.cs, %i.cx
  br i1 %i.cy, label %.thread227, label %.thread223.1

bb.ae:                                            ; preds = %.thread223
  %i.cz = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !11 ; 6 uses
  %i.db = sitofp i32 %i.da to float
  %i.dc = fmul float %0, %i.db
  %i.dd = fcmp olt float %i.cr, %i.dc
  br i1 %i.dd, label %.thread227, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.de = icmp sgt i32 %i.da, 1
  br i1 %i.de, label %bb.ag, label %.thread223.1

bb.ag:                                            ; preds = %bb.af
  %i.df = add nsw i32 %i.da, -1
  %i.dg = uitofp nneg i32 %i.df to float
  %i.dh = fmul float %i.cr, %i.dg
  %i.di = uitofp nneg i32 %i.da to float
  %i.dj = fmul float %1, %i.di
  %i.dk = fcmp olt float %i.dh, %i.dj
  br i1 %i.dk, label %.thread227, label %.thread223.1

.thread223.1:                                     ; preds = %bb.ag, %bb.af, %.thread224.1, %bb.ad
  %i.dl = phi float [ %i.cr, %bb.ag ], [ %i.cr, %bb.af ], [ %i.cs, %.thread224.1 ], [ %i.cs, %bb.ad ] ; 5 uses
  %i.dm = phi i32 [ %i.da, %bb.ag ], [ %i.da, %bb.af ], [ %i.cu, %.thread224.1 ], [ %i.cu, %bb.ad ] ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.do = load float, ptr %i.dn, align 4, !tbaa !9
  %i.dp = getelementptr inbounds nuw i8, ptr %3, i64 52
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !9
  %i.dr = fmul float %i.do, %i.dq                 ; 7 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !11 ; 6 uses
  br i1 %.not206245.1338341, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.thread223.1
  %i.du = icmp slt i32 %i.dt, 3
  br i1 %i.du, label %.thread223.2, label %.thread224.2

.thread224.2:                                     ; preds = %bb.ah
  %i.dv = uitofp nneg i32 %i.dt to float
  %i.dw = fmul float %0, %i.dv
  %i.dx = fcmp olt float %i.dr, %i.dw
  br i1 %i.dx, label %.thread227, label %.thread223.2

bb.ai:                                            ; preds = %.thread223.1
  %i.dy = sitofp i32 %i.dt to float
  %i.dz = fmul float %0, %i.dy
  %i.ea = fcmp olt float %i.dr, %i.dz
  br i1 %i.ea, label %.thread227, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.eb = icmp sgt i32 %i.dt, 1
  br i1 %i.eb, label %bb.ak, label %.thread223.2

bb.ak:                                            ; preds = %bb.aj
  %i.ec = add nsw i32 %i.dt, -1
  %i.ed = uitofp nneg i32 %i.ec to float
  %i.ee = fmul float %i.dr, %i.ed
  %i.ef = uitofp nneg i32 %i.dt to float
  %i.eg = fmul float %1, %i.ef
  %i.eh = fcmp olt float %i.ee, %i.eg
  br i1 %i.eh, label %.thread227, label %.thread223.2

.thread223.2:                                     ; preds = %bb.ak, %bb.aj, %.thread224.2, %bb.ah
  %i.ei = icmp sgt i32 %7, 1
  br i1 %i.ei, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %.thread223.2
  %i.ej = icmp eq i32 %i.bh, 1
  %i.ek = icmp sgt i32 %i.dm, 1
  %or.cond = and i1 %i.ej, %i.ek
  br i1 %or.cond, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.el = icmp eq i32 %i.dm, 1
  br i1 %i.el, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.em = srem i32 %7, %i.bh
  %i.en = icmp eq i32 %i.em, 0
  %spec.select = select i1 %i.en, i32 %i.bh, i32 %7 ; 3 uses
  %i.eo = sdiv i32 %7, %spec.select               ; 2 uses
  br label %bb.ao

bb.ao:                                            ; preds = %bb.al, %bb.am, %bb.an, %.thread223.2
  %spec.select348 = phi i32 [ %i.dm, %.thread223.2 ], [ %7, %bb.al ], [ %i.eo, %bb.an ], [ 1, %bb.am ]
  %spec.select347 = phi i32 [ %i.bh, %.thread223.2 ], [ 1, %bb.al ], [ %spec.select, %bb.an ], [ %7, %bb.am ]
  %.sroa.7.0 = phi i32 [ 1, %.thread223.2 ], [ %7, %bb.al ], [ %i.eo, %bb.an ], [ 1, %bb.am ] ; 16 uses
  %.sroa.0.0 = phi i32 [ 1, %.thread223.2 ], [ 1, %bb.al ], [ %spec.select, %bb.an ], [ %7, %bb.am ] ; 14 uses
  switch i32 %.val.i, label %_ZL8usingPmeRK22CoulombInteractionType.exit [
    i32 3, label %_ZL8usingPmeRK22CoulombInteractionType.exit.thread
    i32 14, label %_ZL8usingPmeRK22CoulombInteractionType.exit.thread
    i32 13, label %_ZL8usingPmeRK22CoulombInteractionType.exit.thread
    i32 15, label %_ZL8usingPmeRK22CoulombInteractionType.exit.thread
    i32 5, label %_ZL8usingPmeRK22CoulombInteractionType.exit.thread
  ]

_ZL8usingPmeRK22CoulombInteractionType.exit:      ; preds = %bb.ao
  %i.ep = getelementptr inbounds nuw i8, ptr %5, i64 392
  %.val222 = load i32, ptr %i.ep, align 8, !tbaa !164
  %i.eq = icmp eq i32 %.val222, 5
  br i1 %i.eq, label %_ZL8usingPmeRK22CoulombInteractionType.exit.thread, label %bb.ap

_ZL8usingPmeRK22CoulombInteractionType.exit.thread: ; preds = %bb.ao, %bb.ao, %bb.ao, %bb.ao, %bb.ao, %_ZL8usingPmeRK22CoulombInteractionType.exit
  %i.er = getelementptr inbounds nuw i8, ptr %5, i64 152
  %i.es = load i32, ptr %i.er, align 8, !tbaa !295
  %i.et = getelementptr inbounds nuw i8, ptr %5, i64 140
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !170
  %i.ev = getelementptr inbounds nuw i8, ptr %5, i64 144
  %i.ew = load i32, ptr %i.ev, align 8, !tbaa !171
  %i.ex = getelementptr inbounds nuw i8, ptr %5, i64 148
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !296
  %i.ez = tail call noundef zeroext i1 @_Z26gmx_pme_check_restrictionsiiiiiiibbb(i32 noundef %i.es, i32 noundef %i.eu, i32 noundef %i.ew, i32 noundef %i.ey, i32 noundef %spec.select347, i32 noundef %spec.select348, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext false)
  br i1 %i.ez, label %bb.ap, label %.thread227

bb.ap:                                            ; preds = %_ZL8usingPmeRK22CoulombInteractionType.exit.thread, %_ZL8usingPmeRK22CoulombInteractionType.exit
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

.lr.ph254.us.1:                                   ; preds = %bb.at, %bb.as
  %i.fj = fpext float %i.dl to double
  %i.fk = fmul double %i.fj, 1.000000e-02
  %i.fl = fsub float %i.dr, %i.dl
  %i.fm = tail call noundef float @llvm.fabs.f32(float %i.fl)
  %i.fn = fpext float %i.fm to double
  %i.fo = fcmp ogt double %i.fk, %i.fn
  br i1 %i.fo, label %bb.aq, label %.critedge221

bb.aq:                                            ; preds = %.lr.ph254.us.1
  %i.fp = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !11
  %i.fr = load i32, ptr %i.fc, align 4, !tbaa !11
  %i.fs = icmp sgt i32 %i.fq, %i.fr
  br i1 %i.fs, label %.thread227, label %.critedge221

.lr.ph254.us:                                     ; preds = %bb.ap
  br i1 %i.fi, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %.lr.ph254.us
  %i.ft = load i32, ptr %i.fc, align 4, !tbaa !11
  %i.fu = load i32, ptr %8, align 4, !tbaa !11
  %i.fv = icmp sgt i32 %i.ft, %i.fu
  br i1 %i.fv, label %.thread227, label %bb.as

bb.as:                                            ; preds = %bb.ar, %.lr.ph254.us
  %i.fw = fsub float %i.dr, %i.bg
  %i.fx = tail call noundef float @llvm.fabs.f32(float %i.fw)
  %i.fy = fpext float %i.fx to double
  %i.fz = fcmp ogt double %i.fe, %i.fy
  br i1 %i.fz, label %bb.at, label %.lr.ph254.us.1

bb.at:                                            ; preds = %bb.as
  %i.ga = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !11
  %i.gc = load i32, ptr %8, align 4, !tbaa !11
  %i.gd = icmp sgt i32 %i.gb, %i.gc
  br i1 %i.gd, label %.thread227, label %.lr.ph254.us.1

.lr.ph254.split.split.us.preheader.1:             ; preds = %.lr.ph254.split.split.1293, %bb.aw
  %i.ge = fpext float %i.dl to double
  %i.gf = fmul double %i.ge, 1.000000e-02
  %i.gg = fsub float %i.dr, %i.dl
  %i.gh = tail call noundef float @llvm.fabs.f32(float %i.gg)
  %i.gi = fpext float %i.gh to double
  %i.gj = fcmp ogt double %i.gf, %i.gi
  br i1 %i.gj, label %bb.au, label %.critedge221

bb.au:                                            ; preds = %.lr.ph254.split.split.us.preheader.1
  %i.gk = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !11
  %i.gm = load i32, ptr %i.fc, align 4, !tbaa !11
  %9 = icmp sle i32 %i.gl, %i.gm
  %or.cond.1 = or i1 %9, %i.fb
  br i1 %or.cond.1, label %.critedge221, label %.thread227

.lr.ph254.split.split.preheader:                  ; preds = %bb.ap
  br i1 %i.fi, label %bb.av, label %.lr.ph254.split.split.1293

bb.av:                                            ; preds = %.lr.ph254.split.split.preheader
  %i.gn = load i32, ptr %i.fc, align 4, !tbaa !11 ; 2 uses
  %i.go = load i32, ptr %8, align 4, !tbaa !11
  %i.gp = icmp sgt i32 %i.gn, %i.go
  %.not208 = icmp eq i32 %i.gn, %.sroa.7.0
  %or.cond349 = and i1 %i.gp, %.not208
  br i1 %or.cond349, label %.thread227, label %.lr.ph254.split.split.1293

.lr.ph254.split.split.1293:                       ; preds = %.lr.ph254.split.split.preheader, %bb.av
  %i.gq = fsub float %i.dr, %i.bg
  %i.gr = tail call noundef float @llvm.fabs.f32(float %i.gq)
  %i.gs = fpext float %i.gr to double
  %i.gt = fcmp ogt double %i.fe, %i.gs
  br i1 %i.gt, label %bb.aw, label %.lr.ph254.split.split.us.preheader.1

bb.aw:                                            ; preds = %.lr.ph254.split.split.1293
  %i.gu = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !11
  %i.gw = load i32, ptr %8, align 4, !tbaa !11
  %i.gx = icmp sgt i32 %i.gv, %i.gw
  br i1 %i.gx, label %.thread227, label %.lr.ph254.split.split.us.preheader.1

.critedge221:                                     ; preds = %.lr.ph254.split.split.us.preheader.1, %bb.au, %.lr.ph254.us.1, %bb.aq
  %i.gy = tail call noundef float @_Z13comm_box_fracRKN3gmx11BasicVectorIiEEfRK11gmx_ddbox_t(ptr noundef nonnull align 4 dereferenceable(12) %8, float noundef %1, ptr noundef nonnull align 4 dereferenceable(200) %3) ; 3 uses
  %i.gz = mul nsw i64 %4, 3
  %i.ha = sitofp i64 %i.gz to float               ; 4 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %5, i64 140 ; 4 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %5, i64 144
  %i.hd = getelementptr inbounds nuw i8, ptr %5, i64 152
  %i.he = getelementptr inbounds nuw i8, ptr %5, i64 148 ; 2 uses
  %i.hf = load i32, ptr %8, align 4, !tbaa !11    ; 7 uses
  %i.hg = srem i32 %i.hf, %.sroa.0.0
  %.not213 = icmp eq i32 %i.hg, 0
  br i1 %.not213, label %bb.bc, label %bb.ax

bb.ax:                                            ; preds = %.critedge221
  %i.hh = icmp sgt i32 %i.hf, %.sroa.0.0
  br i1 %i.hh, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.hi = icmp eq i32 %.sroa.0.0, 2
  %i.hj = select i1 %i.hi, double f0x3FD5555555555555, double 5.000000e-01
  br label %bb.bb

bb.az:                                            ; preds = %bb.ax
  %.0.i4.i = tail call noundef i32 @llvm.abs.i32(i32 %.sroa.0.0, i1 true) ; 2 uses
  %i.hk = icmp eq i32 %i.hf, 0
  br i1 %i.hk, label %_ZSt3gcdIiiENSt11common_typeIJT_T0_EE4typeES1_S2_.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %.0.i.i = tail call noundef i32 @llvm.abs.i32(i32 %i.hf, i1 true)
  %i.hl = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.hf, i1 true) ; 2 uses
  %i.hm = lshr exact i32 %.0.i.i, %i.hl           ; 3 uses
  %i.hn = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.0.0, i1 true) ; 2 uses
  %i.ho = lshr exact i32 %.0.i4.i, %i.hn          ; 3 uses
  %i.hp = tail call i32 @llvm.umin.i32(i32 %i.hl, i32 %i.hn)
  %spec.select34.i.i = tail call i32 @llvm.umin.i32(i32 %i.hm, i32 %i.ho) ; 2 uses
  %i.hq = icmp eq i32 %i.hm, %i.ho
  br i1 %i.hq, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.ba
  %spec.select.lcssa.i.i = phi i32 [ %spec.select34.i.i, %bb.ba ], [ %spec.select.i.i, %.lr.ph.i.i ]
  %i.hr = shl i32 %spec.select.lcssa.i.i, %i.hp
  br label %_ZSt3gcdIiiENSt11common_typeIJT_T0_EE4typeES1_S2_.exit

.lr.ph.i.i:                                       ; preds = %bb.ba, %.lr.ph.i.i
  %spec.select37.i.i = phi i32 [ %spec.select.i.i, %.lr.ph.i.i ], [ %spec.select34.i.i, %bb.ba ] ; 4 uses
  %.02736.i.i = phi i32 [ %i.hu, %.lr.ph.i.i ], [ %i.ho, %bb.ba ]
  %.02835.i.i = phi i32 [ %spec.select37.i.i, %.lr.ph.i.i ], [ %i.hm, %bb.ba ]
  %spec.select33.i.i = tail call i32 @llvm.umax.i32(i32 %.02835.i.i, i32 %.02736.i.i)
  %i.hs = sub i32 %spec.select33.i.i, %spec.select37.i.i ; 2 uses
  %i.ht = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.hs, i1 true)
  %i.hu = lshr exact i32 %i.hs, %i.ht             ; 3 uses
  %spec.select.i.i = tail call i32 @llvm.umin.i32(i32 %spec.select37.i.i, i32 %i.hu) ; 2 uses
  %i.hv = icmp eq i32 %spec.select37.i.i, %i.hu
  br i1 %i.hv, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !262

_ZSt3gcdIiiENSt11common_typeIJT_T0_EE4typeES1_S2_.exit: ; preds = %bb.az, %._crit_edge.i.i
  %.0.i5.i = phi i32 [ %i.hr, %._crit_edge.i.i ], [ %.0.i4.i, %bb.az ]
  %i.hw = sitofp i32 %.0.i5.i to double
  %i.hx = sitofp i32 %.sroa.0.0 to double
  %i.hy = fdiv double %i.hw, %i.hx
  %i.hz = fsub double 1.000000e+00, %i.hy
  br label %bb.bb

bb.bb:                                            ; preds = %_ZSt3gcdIiiENSt11common_typeIJT_T0_EE4typeES1_S2_.exit, %bb.ay
  %i.ia = phi double [ %i.hj, %bb.ay ], [ %i.hz, %_ZSt3gcdIiiENSt11common_typeIJT_T0_EE4typeES1_S2_.exit ]
  %i.ib = fptrunc double %i.ia to float
  %i.ic = tail call float @llvm.fmuladd.f32(float %i.ha, float %i.ib, float 0.000000e+00)
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %.critedge221
  %.1191 = phi float [ %i.ic, %bb.bb ], [ 0.000000e+00, %.critedge221 ] ; 2 uses
  %i.id = icmp sgt i32 %.sroa.0.0, 1
  br i1 %i.id, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.ie = uitofp nneg i32 %.sroa.0.0 to float
  %i.if = load <4 x i32>, ptr %i.hb, align 4, !tbaa !11
  %i.ig = load i32, ptr %i.hb, align 4, !tbaa !11
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
  br label %bb.be

bb.be:                                            ; preds = %bb.bc, %bb.bd
  %.2192 = phi float [ %i.iw, %bb.bd ], [ %.1191, %bb.bc ] ; 2 uses
  %i.ix = load i32, ptr %i.fc, align 4, !tbaa !11 ; 8 uses
  %i.iy = srem i32 %i.ix, %.sroa.7.0
  %.not213.1 = icmp eq i32 %i.iy, 0
  br i1 %.not213.1, label %bb.bk, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.iz = icmp sgt i32 %i.ix, %.sroa.7.0
  br i1 %i.iz, label %bb.bi, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %.0.i4.i.1 = tail call noundef i32 @llvm.abs.i32(i32 %.sroa.7.0, i1 true) ; 2 uses
  %i.ja = icmp eq i32 %i.ix, 0
  br i1 %i.ja, label %_ZSt3gcdIiiENSt11common_typeIJT_T0_EE4typeES1_S2_.exit.1, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %.0.i.i.1 = tail call noundef i32 @llvm.abs.i32(i32 %i.ix, i1 true)
  %i.jb = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.ix, i1 true) ; 2 uses
  %i.jc = lshr exact i32 %.0.i.i.1, %i.jb         ; 3 uses
  %i.jd = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.7.0, i1 true) ; 2 uses
  %i.je = lshr exact i32 %.0.i4.i.1, %i.jd        ; 3 uses
  %i.jf = tail call i32 @llvm.umin.i32(i32 %i.jb, i32 %i.jd)
  %spec.select34.i.i.1 = tail call i32 @llvm.umin.i32(i32 %i.jc, i32 %i.je) ; 2 uses
  %i.jg = icmp eq i32 %i.jc, %i.je
  br i1 %i.jg, label %._crit_edge.i.i.1, label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %bb.bh, %.lr.ph.i.i.1
  %spec.select37.i.i.1 = phi i32 [ %spec.select.i.i.1, %.lr.ph.i.i.1 ], [ %spec.select34.i.i.1, %bb.bh ] ; 4 uses
  %.02736.i.i.1 = phi i32 [ %i.jj, %.lr.ph.i.i.1 ], [ %i.je, %bb.bh ]
  %.02835.i.i.1 = phi i32 [ %spec.select37.i.i.1, %.lr.ph.i.i.1 ], [ %i.jc, %bb.bh ]
  %spec.select33.i.i.1 = tail call i32 @llvm.umax.i32(i32 %.02835.i.i.1, i32 %.02736.i.i.1)
  %i.jh = sub i32 %spec.select33.i.i.1, %spec.select37.i.i.1 ; 2 uses
  %i.ji = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.jh, i1 true)
  %i.jj = lshr exact i32 %i.jh, %i.ji             ; 3 uses
  %spec.select.i.i.1 = tail call i32 @llvm.umin.i32(i32 %spec.select37.i.i.1, i32 %i.jj) ; 2 uses
  %i.jk = icmp eq i32 %spec.select37.i.i.1, %i.jj
  br i1 %i.jk, label %._crit_edge.i.i.1, label %.lr.ph.i.i.1, !llvm.loop !262

._crit_edge.i.i.1:                                ; preds = %.lr.ph.i.i.1, %bb.bh
  %spec.select.lcssa.i.i.1 = phi i32 [ %spec.select34.i.i.1, %bb.bh ], [ %spec.select.i.i.1, %.lr.ph.i.i.1 ]
  %i.jl = shl i32 %spec.select.lcssa.i.i.1, %i.jf
  br label %_ZSt3gcdIiiENSt11common_typeIJT_T0_EE4typeES1_S2_.exit.1

_ZSt3gcdIiiENSt11common_typeIJT_T0_EE4typeES1_S2_.exit.1: ; preds = %._crit_edge.i.i.1, %bb.bg
  %.0.i5.i.1 = phi i32 [ %i.jl, %._crit_edge.i.i.1 ], [ %.0.i4.i.1, %bb.bg ]
  %i.jm = sitofp i32 %.0.i5.i.1 to double
  %i.jn = sitofp i32 %.sroa.7.0 to double
  %i.jo = fdiv double %i.jm, %i.jn
  %i.jp = fsub double 1.000000e+00, %i.jo
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bf
  %i.jq = icmp eq i32 %.sroa.7.0, 2
  %i.jr = select i1 %i.jq, double f0x3FD5555555555555, double 5.000000e-01
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %_ZSt3gcdIiiENSt11common_typeIJT_T0_EE4typeES1_S2_.exit.1
  %i.js = phi double [ %i.jr, %bb.bi ], [ %i.jp, %_ZSt3gcdIiiENSt11common_typeIJT_T0_EE4typeES1_S2_.exit.1 ]
  %i.jt = fptrunc double %i.js to float
  %i.ju = tail call float @llvm.fmuladd.f32(float %i.ha, float %i.jt, float %.2192)
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.be
  %.1191.1 = phi float [ %i.ju, %bb.bj ], [ %.2192, %bb.be ] ; 2 uses
  %i.jv = icmp sgt i32 %.sroa.7.0, 1
  %i.jw = load i32, ptr %i.hc, align 8, !tbaa !11 ; 4 uses
  br i1 %i.jv, label %bb.bl, label %._crit_edge

._crit_edge:                                      ; preds = %bb.bk
  %.pre308 = load i32, ptr %i.he, align 4, !tbaa !296 ; 2 uses
  %.pre309 = load i32, ptr %i.hb, align 4, !tbaa !170 ; 2 uses
  %.pre310 = sitofp i32 %.pre309 to float
  %.pre311 = sitofp i32 %.pre308 to float
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.jx = srem i32 %i.jw, %.sroa.7.0
  %i.jy = icmp eq i32 %i.jx, 0
  %i.jz = load i32, ptr %i.hd, align 8, !tbaa !295
  %i.ka = sext i1 %i.jy to i32
  %i.kb = add nsw i32 %i.jz, %i.ka
  %i.kc = uitofp nneg i32 %.sroa.7.0 to float
  %i.kd = sitofp i32 %i.kb to float
  %i.ke = fmul nnan float %i.kc, %i.kd
  %i.kf = load i32, ptr %i.hb, align 4, !tbaa !170 ; 2 uses
  %i.kg = sitofp i32 %i.kf to float               ; 2 uses
  %i.kh = fmul float %i.ke, %i.kg
  %i.ki = sitofp i32 %i.jw to float               ; 2 uses
  %i.kj = fmul float %i.kh, %i.ki
  %i.kk = load i32, ptr %i.he, align 4, !tbaa !296 ; 2 uses
  %i.kl = sitofp i32 %i.kk to float               ; 2 uses
  %i.km = fmul float %i.kj, %i.kl
  %i.kn = fdiv float %i.km, %i.ki
  %i.ko = fadd float %.1191.1, %i.kn
  br label %bb.bm

bb.bm:                                            ; preds = %._crit_edge, %bb.bl
  %.pre-phi312 = phi float [ %.pre311, %._crit_edge ], [ %i.kl, %bb.bl ]
  %.pre-phi = phi float [ %.pre310, %._crit_edge ], [ %i.kg, %bb.bl ]
  %i.kp = phi i32 [ %.pre309, %._crit_edge ], [ %i.kf, %bb.bl ]
  %i.kq = phi i32 [ %.pre308, %._crit_edge ], [ %i.kk, %bb.bl ]
  %.2192.1 = phi float [ %.1191.1, %._crit_edge ], [ %i.ko, %bb.bl ]
  %i.kr = add nsw i32 %.sroa.7.0, -1              ; 3 uses
  %i.ks = sitofp i32 %i.kr to float
  %i.kt = sitofp i32 %.sroa.7.0 to float
  %i.ku = fmul nnan float %i.kt, %i.ks
  %i.kv = add i32 %i.jw, %i.kr
  %i.kw = sdiv i32 %i.kv, %.sroa.7.0
  %i.kx = sitofp i32 %i.kw to float
  %i.ky = fmul float %i.ku, %i.kx
  %i.kz = add i32 %i.kq, %i.kr
  %i.la = sdiv i32 %i.kz, %.sroa.7.0
  %i.lb = sitofp i32 %i.la to float
  %i.lc = fmul float %i.ky, %i.lb
  %i.ld = fmul float %i.lc, %.pre-phi
  %i.le = fadd float %.2192.1, %i.ld
  %i.lf = add i32 %.sroa.0.0, -1                  ; 3 uses
  %i.lg = sitofp i32 %i.lf to float
  %i.lh = sitofp i32 %.sroa.0.0 to float
  %i.li = fmul nnan float %i.lh, %i.lg
  %i.lj = add i32 %i.kp, %i.lf
  %i.lk = sdiv i32 %i.lj, %.sroa.0.0
  %i.ll = sitofp i32 %i.lk to float
  %i.lm = fmul float %i.li, %i.ll
  %i.ln = add i32 %i.jw, %i.lf
  %i.lo = sdiv i32 %i.ln, %.sroa.0.0
  %i.lp = sitofp i32 %i.lo to float
  %i.lq = fmul float %i.lm, %i.lp
  %i.lr = fmul float %i.lq, %.pre-phi312
  %i.ls = fadd float %i.le, %i.lr                 ; 2 uses
  %i.lt = icmp eq i32 %i.hf, 1
  br i1 %i.lt, label %.thread229, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.lu = icmp eq i32 %i.ix, 1
  br i1 %i.lu, label %.thread342, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.lv = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.lw = load i32, ptr %i.lv, align 4, !tbaa !11
  %i.lx = icmp eq i32 %i.lw, 1
  br i1 %i.lx, label %bb.bp, label %bb.bs

bb.bp:                                            ; preds = %bb.bo
  %i.ly = load i32, ptr %i.a, align 8, !tbaa !175
  %.not209 = icmp eq i32 %i.ly, 2
  br i1 %.not209, label %bb.bs, label %bb.bq

.thread229:                                       ; preds = %bb.bm
  %i.lz = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !11
  %.not210230 = icmp eq i32 %i.ma, 0
  br i1 %.not210230, label %bb.bq, label %.thread231

bb.bq:                                            ; preds = %bb.bp, %.thread229
  %i.mb = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !11
  %.not211 = icmp ne i32 %i.mc, 0
  %i.md = icmp eq i32 %i.ix, 1
  %or.cond350 = and i1 %.not211, %i.md
  br i1 %or.cond350, label %.thread231, label %bb.br

.thread342:                                       ; preds = %bb.bn
  %i.me = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !11
  %.not211343 = icmp eq i32 %i.mf, 0
  br i1 %.not211343, label %bb.br, label %.thread231

.thread231:                                       ; preds = %bb.bq, %.thread342, %.thread229
  %i.mg = fmul float %6, 2.000000e-01
  br label %bb.bs

bb.br:                                            ; preds = %.thread342, %bb.bq
  %i.mh = fmul float %6, 1.000000e-01
  br label %bb.bs

bb.bs:                                            ; preds = %.thread231, %bb.br, %bb.bp, %bb.bo
  %.0 = phi float [ %i.mg, %.thread231 ], [ %i.mh, %bb.br ], [ 0.000000e+00, %bb.bp ], [ 0.000000e+00, %bb.bo ] ; 3 uses
  %i.mi = load ptr, ptr @debug, align 8, !tbaa !243 ; 2 uses
  %.not212 = icmp eq ptr %i.mi, null
  br i1 %.not212, label %._crit_edge313, label %bb.bt

._crit_edge313:                                   ; preds = %bb.bs
  %.pre314 = fadd float %i.gy, %.0
  br label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.mj = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.mk = load i32, ptr %i.mj, align 4, !tbaa !11
  %i.ml = fpext float %i.gy to double
  %i.mm = fpext float %.0 to double
  %i.mn = fdiv float %i.ls, %i.ha                 ; 2 uses
  %i.mo = fpext float %i.mn to double
  %i.mp = fadd float %i.gy, %.0                   ; 2 uses
  %i.mq = fadd float %i.mn, %i.mp
  %i.mr = fpext float %i.mq to double
  %i.ms = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.mi, ptr noundef nonnull @.str.33, i32 noundef %i.hf, i32 noundef %i.ix, i32 noundef %i.mk, i32 noundef %.sroa.0.0, i32 noundef %.sroa.7.0, double noundef %i.ml, double noundef %i.mm, double noundef %i.mo, double noundef %i.mr) #18 ; 0 uses
  br label %bb.bu

bb.bu:                                            ; preds = %._crit_edge313, %bb.bt
  %.pre-phi315 = phi float [ %.pre314, %._crit_edge313 ], [ %i.mp, %bb.bt ]
  %i.mt = tail call float @llvm.fmuladd.f32(float %i.ha, float %.pre-phi315, float %i.ls)
  br label %.thread227

.thread227:                                       ; preds = %bb.x, %bb.j, %bb.q, %bb.av, %bb.aa, %bb.ac, %.thread224, %.thread224.1, %bb.ae, %bb.ag, %.thread224.2, %bb.ai, %bb.ak, %bb.au, %bb.aw, %bb.at, %bb.ar, %bb.aq, %bb.b, %bb.d, %bb.c, %_ZL8usingPmeRK22CoulombInteractionType.exit.thread, %bb.bu
  %.9 = phi float [ -1.000000e+00, %bb.d ], [ -1.000000e+00, %bb.b ], [ %i.mt, %bb.bu ], [ -1.000000e+00, %bb.aa ], [ -1.000000e+00, %_ZL8usingPmeRK22CoulombInteractionType.exit.thread ], [ -1.000000e+00, %bb.au ], [ -1.000000e+00, %bb.c ], [ -1.000000e+00, %bb.at ], [ -1.000000e+00, %bb.aw ], [ -1.000000e+00, %bb.aq ], [ -1.000000e+00, %bb.ar ], [ -1.000000e+00, %bb.av ], [ -1.000000e+00, %bb.ak ], [ -1.000000e+00, %bb.ai ], [ -1.000000e+00, %.thread224.2 ], [ -1.000000e+00, %bb.ag ], [ -1.000000e+00, %bb.ae ], [ -1.000000e+00, %.thread224.1 ], [ -1.000000e+00, %.thread224 ], [ -1.000000e+00, %bb.ac ], [ -1.000000e+00, %bb.q ], [ -1.000000e+00, %bb.j ], [ -1.000000e+00, %bb.x ]
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

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"float", !7, i64 0}
!11 = !{!6, !6, i64 0}
!12 = !{!13, !14, i64 0}
!13 = !{!"_ZTSN3gmx14LogLevelHelperE", !14, i64 0}
!14 = !{!"p1 _ZTSN3gmx10ILogTargetE", !15, i64 0}
!15 = !{!"any pointer", !7, i64 0}
!16 = !{!17, !18, i64 0}
!17 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !18, i64 0}
!18 = !{!"p1 omnipotent char", !15, i64 0}
!19 = !{!20, !21, i64 8}
!20 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !17, i64 0, !21, i64 8, !7, i64 16}
!21 = !{!"long", !7, i64 0}
!22 = !{!23, !24, i64 32}
!23 = !{!"_ZTSN3gmx8LogEntryE", !20, i64 0, !24, i64 32}
!24 = !{!"bool", !7, i64 0}
!25 = !{!26, !26, i64 0}
!26 = !{!"vtable pointer", !8, i64 0}
!27 = distinct !{null}
!28 = !{!20, !18, i64 0}
!29 = !{!7, !7, i64 0}
!30 = !{!31, !47, i64 204}
!31 = !{!"_ZTS10t_inputrec", !6, i64 0, !32, i64 4, !21, i64 8, !6, i64 16, !21, i64 24, !6, i64 32, !33, i64 36, !6, i64 40, !6, i64 44, !34, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !35, i64 80, !35, i64 88, !24, i64 96, !36, i64 104, !10, i64 128, !10, i64 132, !10, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !10, i64 156, !10, i64 160, !41, i64 164, !10, i64 168, !42, i64 172, !43, i64 176, !24, i64 180, !24, i64 181, !44, i64 184, !10, i64 188, !45, i64 192, !6, i64 196, !24, i64 200, !46, i64 204, !50, i64 296, !50, i64 320, !6, i64 344, !10, i64 348, !10, i64 352, !10, i64 356, !10, i64 360, !55, i64 364, !56, i64 368, !10, i64 372, !10, i64 376, !10, i64 380, !10, i64 384, !24, i64 388, !57, i64 392, !56, i64 396, !10, i64 400, !10, i64 404, !58, i64 408, !10, i64 412, !10, i64 416, !59, i64 420, !60, i64 424, !24, i64 432, !67, i64 440, !24, i64 448, !74, i64 456, !81, i64 464, !10, i64 468, !82, i64 472, !24, i64 476, !6, i64 480, !10, i64 484, !10, i64 488, !10, i64 492, !6, i64 496, !10, i64 500, !10, i64 504, !6, i64 508, !10, i64 512, !6, i64 516, !6, i64 520, !83, i64 524, !6, i64 528, !10, i64 532, !6, i64 536, !24, i64 540, !10, i64 544, !21, i64 552, !6, i64 560, !84, i64 564, !10, i64 568, !7, i64 572, !7, i64 580, !10, i64 588, !24, i64 592, !85, i64 600, !24, i64 608, !92, i64 616, !24, i64 624, !99, i64 632, !106, i64 640, !107, i64 648, !24, i64 656, !114, i64 664, !10, i64 672, !7, i64 676, !6, i64 712, !6, i64 716, !6, i64 720, !6, i64 724, !10, i64 728, !10, i64 732, !10, i64 736, !10, i64 740, !115, i64 744, !24, i64 864, !24, i64 865, !24, i64 866, !24, i64 867, !120, i64 872, !121, i64 880}
!32 = !{!"_ZTS20IntegrationAlgorithm", !7, i64 0}
!33 = !{!"_ZTS12CutoffScheme", !7, i64 0}
!34 = !{!"_ZTS19ComRemovalAlgorithm", !7, i64 0}
!35 = !{!"double", !7, i64 0}
!36 = !{!"_ZTSSt6vectorIN3gmx8MtsLevelESaIS1_EE", !37, i64 0}
!37 = !{!"_ZTSSt12_Vector_baseIN3gmx8MtsLevelESaIS1_EE", !38, i64 0}
!38 = !{!"_ZTSNSt12_Vector_baseIN3gmx8MtsLevelESaIS1_EE12_Vector_implE", !39, i64 0}
!39 = !{!"_ZTSNSt12_Vector_baseIN3gmx8MtsLevelESaIS1_EE17_Vector_impl_dataE", !40, i64 0, !40, i64 8, !40, i64 16}
!40 = !{!"p1 _ZTSN3gmx8MtsLevelE", !15, i64 0}
!41 = !{!"_ZTS13EwaldGeometry", !7, i64 0}
!42 = !{!"_ZTS12LongRangeVdW", !7, i64 0}
!43 = !{!"_ZTS7PbcType", !7, i64 0}
!44 = !{!"_ZTS26EnsembleTemperatureSetting", !7, i64 0}
!45 = !{!"_ZTS19TemperatureCoupling", !7, i64 0}
!46 = !{!"_ZTS23PressureCouplingOptions", !47, i64 0, !48, i64 4, !6, i64 8, !10, i64 12, !7, i64 16, !7, i64 52, !49, i64 88}
!47 = !{!"_ZTS16PressureCoupling", !7, i64 0}
!48 = !{!"_ZTS20PressureCouplingType", !7, i64 0}
!49 = !{!"_ZTS15RefCoordScaling", !7, i64 0}
!50 = !{!"_ZTSSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE", !51, i64 0}
!51 = !{!"_ZTSSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE", !52, i64 0}
!52 = !{!"_ZTSNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE12_Vector_implE", !53, i64 0}
!53 = !{!"_ZTSNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE17_Vector_impl_dataE", !54, i64 0, !54, i64 8, !54, i64 16}
!54 = !{!"p1 _ZTSN3gmx11BasicVectorIfEE", !15, i64 0}
!55 = !{!"_ZTS22CoulombInteractionType", !7, i64 0}
!56 = !{!"_ZTS20InteractionModifiers", !7, i64 0}
!57 = !{!"_ZTS15VanDerWaalsType", !7, i64 0}
!58 = !{!"_ZTS24DispersionCorrectionType", !7, i64 0}
!59 = !{!"_ZTS26FreeEnergyPerturbationType", !7, i64 0}
!60 = !{!"_ZTSSt10unique_ptrI8t_lambdaSt14default_deleteIS0_EE", !61, i64 0}
!61 = !{!"_ZTSSt15__uniq_ptr_dataI8t_lambdaSt14default_deleteIS0_ELb1ELb1EE", !62, i64 0}
!62 = !{!"_ZTSSt15__uniq_ptr_implI8t_lambdaSt14default_deleteIS0_EE", !63, i64 0}
!63 = !{!"_ZTSSt5tupleIJP8t_lambdaSt14default_deleteIS0_EEE", !64, i64 0}
!64 = !{!"_ZTSSt11_Tuple_implILm0EJP8t_lambdaSt14default_deleteIS0_EEE", !65, i64 0}
!65 = !{!"_ZTSSt10_Head_baseILm0EP8t_lambdaLb0EE", !66, i64 0}
!66 = !{!"p1 _ZTS8t_lambda", !15, i64 0}
!67 = !{!"_ZTSSt10unique_ptrI9t_simtempSt14default_deleteIS0_EE", !68, i64 0}
!68 = !{!"_ZTSSt15__uniq_ptr_dataI9t_simtempSt14default_deleteIS0_ELb1ELb1EE", !69, i64 0}
!69 = !{!"_ZTSSt15__uniq_ptr_implI9t_simtempSt14default_deleteIS0_EE", !70, i64 0}
!70 = !{!"_ZTSSt5tupleIJP9t_simtempSt14default_deleteIS0_EEE", !71, i64 0}
!71 = !{!"_ZTSSt11_Tuple_implILm0EJP9t_simtempSt14default_deleteIS0_EEE", !72, i64 0}
!72 = !{!"_ZTSSt10_Head_baseILm0EP9t_simtempLb0EE", !73, i64 0}
!73 = !{!"p1 _ZTS9t_simtemp", !15, i64 0}
!74 = !{!"_ZTSSt10unique_ptrI10t_expandedSt14default_deleteIS0_EE", !75, i64 0}
!75 = !{!"_ZTSSt15__uniq_ptr_dataI10t_expandedSt14default_deleteIS0_ELb1ELb1EE", !76, i64 0}
!76 = !{!"_ZTSSt15__uniq_ptr_implI10t_expandedSt14default_deleteIS0_EE", !77, i64 0}
!77 = !{!"_ZTSSt5tupleIJP10t_expandedSt14default_deleteIS0_EEE", !78, i64 0}
!78 = !{!"_ZTSSt11_Tuple_implILm0EJP10t_expandedSt14default_deleteIS0_EEE", !79, i64 0}
!79 = !{!"_ZTSSt10_Head_baseILm0EP10t_expandedLb0EE", !80, i64 0}
!80 = !{!"p1 _ZTS10t_expanded", !15, i64 0}
!81 = !{!"_ZTS27DistanceRestraintRefinement", !7, i64 0}
!82 = !{!"_ZTS26DistanceRestraintWeighting", !7, i64 0}
!83 = !{!"_ZTS19ConstraintAlgorithm", !7, i64 0}
!84 = !{!"_ZTS8WallType", !7, i64 0}
!85 = !{!"_ZTSSt10unique_ptrI13pull_params_tSt14default_deleteIS0_EE", !86, i64 0}
!86 = !{!"_ZTSSt15__uniq_ptr_dataI13pull_params_tSt14default_deleteIS0_ELb1ELb1EE", !87, i64 0}
!87 = !{!"_ZTSSt15__uniq_ptr_implI13pull_params_tSt14default_deleteIS0_EE", !88, i64 0}
!88 = !{!"_ZTSSt5tupleIJP13pull_params_tSt14default_deleteIS0_EEE", !89, i64 0}
!89 = !{!"_ZTSSt11_Tuple_implILm0EJP13pull_params_tSt14default_deleteIS0_EEE", !90, i64 0}
!90 = !{!"_ZTSSt10_Head_baseILm0EP13pull_params_tLb0EE", !91, i64 0}
!91 = !{!"p1 _ZTS13pull_params_t", !15, i64 0}
!92 = !{!"_ZTSSt10unique_ptrIN3gmx9AwhParamsESt14default_deleteIS1_EE", !93, i64 0}
!93 = !{!"_ZTSSt15__uniq_ptr_dataIN3gmx9AwhParamsESt14default_deleteIS1_ELb1ELb1EE", !94, i64 0}
!94 = !{!"_ZTSSt15__uniq_ptr_implIN3gmx9AwhParamsESt14default_deleteIS1_EE", !95, i64 0}
!95 = !{!"_ZTSSt5tupleIJPN3gmx9AwhParamsESt14default_deleteIS1_EEE", !96, i64 0}
!96 = !{!"_ZTSSt11_Tuple_implILm0EJPN3gmx9AwhParamsESt14default_deleteIS1_EEE", !97, i64 0}
!97 = !{!"_ZTSSt10_Head_baseILm0EPN3gmx9AwhParamsELb0EE", !98, i64 0}
!98 = !{!"p1 _ZTSN3gmx9AwhParamsE", !15, i64 0}
!99 = !{!"_ZTSSt10unique_ptrI5t_rotSt14default_deleteIS0_EE", !100, i64 0}
!100 = !{!"_ZTSSt15__uniq_ptr_dataI5t_rotSt14default_deleteIS0_ELb1ELb1EE", !101, i64 0}
!101 = !{!"_ZTSSt15__uniq_ptr_implI5t_rotSt14default_deleteIS0_EE", !102, i64 0}
!102 = !{!"_ZTSSt5tupleIJP5t_rotSt14default_deleteIS0_EEE", !103, i64 0}
!103 = !{!"_ZTSSt11_Tuple_implILm0EJP5t_rotSt14default_deleteIS0_EEE", !104, i64 0}
!104 = !{!"_ZTSSt10_Head_baseILm0EP5t_rotLb0EE", !105, i64 0}
!105 = !{!"p1 _ZTS5t_rot", !15, i64 0}
!106 = !{!"_ZTS8SwapType", !7, i64 0}
!107 = !{!"_ZTSSt10unique_ptrI12t_swapcoordsSt14default_deleteIS0_EE", !108, i64 0}
!108 = !{!"_ZTSSt15__uniq_ptr_dataI12t_swapcoordsSt14default_deleteIS0_ELb1ELb1EE", !109, i64 0}
!109 = !{!"_ZTSSt15__uniq_ptr_implI12t_swapcoordsSt14default_deleteIS0_EE", !110, i64 0}
!110 = !{!"_ZTSSt5tupleIJP12t_swapcoordsSt14default_deleteIS0_EEE", !111, i64 0}
!111 = !{!"_ZTSSt11_Tuple_implILm0EJP12t_swapcoordsSt14default_deleteIS0_EEE", !112, i64 0}
!112 = !{!"_ZTSSt10_Head_baseILm0EP12t_swapcoordsLb0EE", !113, i64 0}
!113 = !{!"p1 _ZTS12t_swapcoords", !15, i64 0}
!114 = !{!"p1 _ZTS5t_IMD", !15, i64 0}
!115 = !{!"_ZTS9t_grpopts", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !116, i64 16, !116, i64 24, !15, i64 32, !117, i64 40, !118, i64 48, !118, i64 56, !116, i64 64, !50, i64 72, !117, i64 96, !117, i64 104, !6, i64 112}
!116 = !{!"p1 float", !15, i64 0}
!117 = !{!"p1 int", !15, i64 0}
!118 = !{!"p2 float", !119, i64 0}
!119 = !{!"any p2 pointer", !15, i64 0}
!120 = !{!"p1 _ZTSN3gmx18KeyValueTreeObjectE", !15, i64 0}
!121 = !{!"_ZTSSt10unique_ptrIN3gmx18KeyValueTreeObjectESt14default_deleteIS1_EE", !122, i64 0}
!122 = !{!"_ZTSSt15__uniq_ptr_dataIN3gmx18KeyValueTreeObjectESt14default_deleteIS1_ELb1ELb1EE", !123, i64 0}
!123 = !{!"_ZTSSt15__uniq_ptr_implIN3gmx18KeyValueTreeObjectESt14default_deleteIS1_EE", !124, i64 0}
!124 = !{!"_ZTSSt5tupleIJPN3gmx18KeyValueTreeObjectESt14default_deleteIS1_EEE", !125, i64 0}
!125 = !{!"_ZTSSt11_Tuple_implILm0EJPN3gmx18KeyValueTreeObjectESt14default_deleteIS1_EEE", !126, i64 0}
!126 = !{!"_ZTSSt10_Head_baseILm0EPN3gmx18KeyValueTreeObjectELb0EE", !120, i64 0}
!127 = !{!21, !21, i64 0}
!128 = !{!129, !129, i64 0}
!129 = !{!"p1 _ZTSNSt10filesystem7__cxx114path5_List5_ImplE", !15, i64 0}
!130 = !{!131, !24, i64 0}
!131 = !{!"_ZTSN3gmx25SeparatePmeRanksPermittedE", !24, i64 0, !132, i64 8}
!132 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !133, i64 0}
!133 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !134, i64 0}
end_hunk_0
