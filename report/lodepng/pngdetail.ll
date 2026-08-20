inline.NumInlined: 2280
inline.NumDeleted: 605
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_Z7rescaleRKSt6vectorIhSaIhEEiiiib:bb.a
  %i.aa = uitofp nneg i32 %5 to double
  %i.ab = icmp slt i32 %4, 1
  %i.ac = sitofp i32 %2 to double
  %i.ad = sitofp i32 %4 to double
  %i.ae = icmp slt i32 %i.j, 1
  %brmerge = or i1 %i.ab, %i.ae
  br i1 %brmerge, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %.lr.ph195.preheader

.lr.ph195.preheader:                              ; preds = %.lr.ph198
  %i.af = and i64 %i.i, 2147483647                ; 6 uses
  %i.ag = zext nneg i32 %4 to i64                 ; 2 uses
  %wide.trip.count242 = zext nneg i32 %5 to i64
  %umax = tail call i64 @llvm.umax.i64(i64 %i.af, i64 1) ; 3 uses
  %min.iters.check = icmp samesign ult i64 %i.af, 4
  %min.iters.check313 = icmp samesign ult i64 %i.af, 32
  %i.ah = and i64 %umax, 28
  %n.vec = and i64 %umax, 2147483616              ; 4 uses
  %cmp.n = icmp eq i64 %i.af, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.ah, 0
  %n.vec315 = and i64 %umax, 2147483644           ; 3 uses
  %cmp.n319 = icmp eq i64 %i.af, %n.vec315
  br label %.lr.ph195

bb.d:                                             ; preds = %bb.c
  %i.ai = mul i32 %i.k, %3                        ; 3 uses
  %i.aj = sext i32 %i.ai to i64                   ; 3 uses
  %i.ak = icmp slt i32 %i.ai, 0
  br i1 %i.ak, label %bb.e, label %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i176

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.245) #25
          to label %.noexc180 unwind label %bb.i

.noexc180:                                        ; preds = %bb.e
  unreachable

_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i176: ; preds = %bb.d
  %.not.i.i.i.i177 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i.i177, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit182, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i176
  %i.al = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aj) #29
          to label %.noexc181 unwind label %bb.i  ; 5 uses

.noexc181:                                        ; preds = %bb.f
  %i.am = getelementptr i8, ptr %i.al, i64 %i.aj  ; 2 uses
  store i8 0, ptr %i.al, align 1, !tbaa !34
  %i.an = add nsw i64 %i.aj, -1                   ; 2 uses
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit182, label %bb.g

bb.g:                                             ; preds = %.noexc181
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ap, i8 0, i64 %i.an, i1 false)
  br label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit182

_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit182:            ; preds = %bb.g, %.noexc181, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i176
  %.sroa.10.0 = phi ptr [ %i.am, %bb.g ], [ %i.am, %.noexc181 ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i176 ]
  %.sroa.0185.0 = phi ptr [ %i.al, %bb.g ], [ %i.al, %.noexc181 ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i176 ] ; 9 uses
  %i.aq = icmp sgt i32 %i.j, 0
  br i1 %i.aq, label %.preheader190.lr.ph, label %._crit_edge224

.preheader190.lr.ph:                              ; preds = %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit182
  %i.ar = icmp slt i32 %4, 1                      ; 2 uses
  %i.as = sitofp i32 %2 to double
  %i.at = sitofp i32 %4 to double
  %i.au = icmp slt i32 %3, 1
  %i.av = icmp slt i32 %5, 1
  %i.aw = sitofp i32 %3 to double
  %i.ax = sitofp i32 %5 to double
  %i.ay = sext i32 %2 to i64                      ; 2 uses
  %i.az = sext i32 %3 to i64                      ; 2 uses
  %i.ba = zext i32 %4 to i64                      ; 4 uses
  %brmerge228 = or i1 %i.ar, %i.au
  %wide.trip.count247 = zext i32 %3 to i64        ; 2 uses
  %wide.trip.count257 = zext nneg i32 %3 to i64
  %brmerge231 = or i1 %i.av, %i.ar
  %wide.trip.count281 = zext nneg i32 %5 to i64
  %i.bb = insertelement <2 x double> poison, double %i.as, i64 0
  %i.bc = shufflevector <2 x double> %i.bb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bd = insertelement <2 x double> poison, double %i.at, i64 0
  %i.be = shufflevector <2 x double> %i.bd, <2 x double> poison, <2 x i32> zeroinitializer
  %xtraiter = and i64 %wide.trip.count247, 1
  %i.bf = icmp eq i32 %3, 1
  %unroll_iter = and i64 %wide.trip.count247, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod324 = trunc i32 %3 to i1
  %i.bg = insertelement <2 x double> poison, double %i.aw, i64 0
  %i.bh = shufflevector <2 x double> %i.bg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bi = insertelement <2 x double> poison, double %i.ax, i64 0
  %i.bj = shufflevector <2 x double> %i.bi, <2 x double> poison, <2 x i32> zeroinitializer
  %xtraiter325 = and i64 %i.ba, 1
  %i.bk = icmp eq i32 %4, 1
  %unroll_iter328 = and i64 %i.ba, 2147483646
  %lcmp.mod326.not = icmp eq i64 %xtraiter325, 0
  %lcmp.mod327 = trunc i32 %4 to i1
  br label %.preheader190

.preheader190:                                    ; preds = %.preheader190.lr.ph, %._crit_edge221.split
  %.0163222 = phi i32 [ 0, %.preheader190.lr.ph ], [ %i.fj, %._crit_edge221.split ] ; 13 uses
  br i1 %brmerge228, label %.preheader, label %.lr.ph207

._crit_edge224:                                   ; preds = %._crit_edge221.split, %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit182
  %.not.i.i.i = icmp eq ptr %.sroa.0185.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge224
  %i.bl = ptrtoint ptr %.sroa.10.0 to i64
  %i.bm = ptrtoint ptr %.sroa.0185.0 to i64
  %i.bn = sub i64 %i.bl, %i.bm
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0185.0, i64 noundef %i.bn) #27
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

bb.i:                                             ; preds = %bb.f, %bb.e
  %i.bo = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i183 = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i183, label %_ZNSt6vectorIhSaIhEED2Ev.exit184, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bp = ptrtoint ptr %i.u to i64
  %i.bq = ptrtoint ptr %i.v to i64
  %i.br = sub i64 %i.bp, %i.bq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.br) #27
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit184

..loopexit189_crit_edge.loopexit321.unr-lcssa:    ; preds = %.lr.ph207.split
  br i1 %lcmp.mod.not, label %..loopexit189_crit_edge, label %.lr.ph207.split.epil.preheader

.lr.ph207.split.epil.preheader:                   ; preds = %..loopexit189_crit_edge.loopexit321.unr-lcssa, %.lr.ph207.split.preheader
  %indvars.iv244.epil.init = phi i64 [ 0, %.lr.ph207.split.preheader ], [ %indvars.iv.next245.1, %..loopexit189_crit_edge.loopexit321.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod324)
  %i.bs = trunc i64 %indvars.iv244.epil.init to i32
  %i.bt = mul i32 %4, %i.bs
  %i.bu = add nuw i32 %i.bt, %.0162208
  %i.bv = mul i32 %i.bu, %i.j
  %i.bw = add nsw i32 %i.bv, %.0163222
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0185.0, i64 %i.bx
  store i8 0, ptr %i.by, align 1, !tbaa !34
  br label %..loopexit189_crit_edge

..loopexit189_crit_edge:                          ; preds = %.lr.ph207.split.epil.preheader, %..loopexit189_crit_edge.loopexit321.unr-lcssa, %._crit_edge204.us
  %exitcond259.not = icmp eq i32 %i.bz, %4
  br i1 %exitcond259.not, label %.preheader, label %.lr.ph207, !llvm.loop !129

.preheader:                                       ; preds = %..loopexit189_crit_edge, %.preheader190
  br i1 %brmerge231, label %._crit_edge221.split, label %.lr.ph217

.lr.ph207:                                        ; preds = %.preheader190, %..loopexit189_crit_edge
  %.0162208 = phi i32 [ %i.bz, %..loopexit189_crit_edge ], [ 0, %.preheader190 ] ; 6 uses
  %i.bz = add nuw nsw i32 %.0162208, 1            ; 3 uses
  %i.ca = uitofp nneg i32 %i.bz to double
  %i.cb = uitofp nneg i32 %.0162208 to double
  %i.cc = insertelement <2 x double> poison, double %i.cb, i64 0
  %i.cd = insertelement <2 x double> %i.cc, double %i.ca, i64 1
  %i.ce = fmul nnan <2 x double> %i.bc, %i.cd
  %i.cf = fdiv <2 x double> %i.ce, %i.be
  %i.cg = fptrunc <2 x double> %i.cf to <2 x float> ; 3 uses
  %i.ch = fptosi <2 x float> %i.cg to <2 x i32>   ; 2 uses
  %i.ci = extractelement <2 x float> %i.cg, i64 0 ; 3 uses
  %i.cj = extractelement <2 x float> %i.cg, i64 1 ; 3 uses
  %i.ck = fsub float %i.cj, %i.ci
  %i.cl = fpext float %i.ck to double
  %i.cm = fdiv double 1.000000e+00, %i.cl
  %i.cn = extractelement <2 x i32> %i.ch, i64 0   ; 6 uses
  %i.co = extractelement <2 x i32> %i.ch, i64 1   ; 4 uses
  %i.cp = icmp sle i32 %i.cn, %i.co
  %i.cq = icmp sgt i32 %2, %i.cn
  %i.cr = and i1 %i.cp, %i.cq
  br i1 %i.cr, label %.lr.ph207.split.us, label %.lr.ph207.split.preheader

.lr.ph207.split.preheader:                        ; preds = %.lr.ph207
  br i1 %i.bf, label %.lr.ph207.split.epil.preheader, label %.lr.ph207.split

.lr.ph207.split.us:                               ; preds = %.lr.ph207
  %i.cs = tail call noundef float @llvm.floor.f32(float %i.cj)
  %i.ct = fsub float %i.cs, %i.cj
  %i.cu = fadd float %i.ct, 1.000000e+00
  %i.cv = fpext float %i.cu to double             ; 2 uses
  %i.cw = tail call noundef float @llvm.floor.f32(float %i.ci)
  %i.cx = fsub float %i.ci, %i.cw
  %i.cy = fpext float %i.cx to double
  %i.cz = fsub double 1.000000e+00, %i.cy         ; 2 uses
  %i.da = sext i32 %i.cn to i64
  %i.db = sext i32 %i.co to i64                   ; 2 uses
  %i.dc = icmp eq i32 %i.cn, %i.co
  %i.dd = fsub double %i.cz, %i.cv
  %.1158.us.peel = select i1 %i.dc, double %i.dd, double %i.cz
  %indvars.iv.next250.peel = add nsw i64 %i.da, 1 ; 2 uses
  %i.de = icmp slt i32 %i.cn, %i.co
  %i.df = icmp slt i64 %indvars.iv.next250.peel, %i.ay
  %i.dg = and i1 %i.de, %i.df
  %i.dh = fsub double 1.000000e+00, %i.cv
  br label %.lr.ph203.us

.lr.ph203.us:                                     ; preds = %._crit_edge204.us, %.lr.ph207.split.us
  %indvars.iv254 = phi i64 [ %indvars.iv.next255, %._crit_edge204.us ], [ 0, %.lr.ph207.split.us ] ; 3 uses
  %i.di = trunc i64 %indvars.iv254 to i32
  %i.dj = mul i32 %2, %i.di                       ; 2 uses
  %i.dk = add i32 %i.dj, %i.cn
  %i.dl = mul i32 %i.dk, %i.j
  %i.dm = add nsw i32 %i.dl, %.0163222
  %i.dn = sext i32 %i.dm to i64
  %i.do = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.dn
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !34
  %i.dq = uitofp i8 %i.dp to double
  %i.dr = tail call double @llvm.fmuladd.f64(double %.1158.us.peel, double %i.dq, double 0.000000e+00) ; 2 uses
  br i1 %i.dg, label %.peel.next, label %._crit_edge204.us

.peel.next:                                       ; preds = %.lr.ph203.us, %.peel.next
  %indvars.iv249 = phi i64 [ %indvars.iv.next250, %.peel.next ], [ %indvars.iv.next250.peel, %.lr.ph203.us ] ; 4 uses
  %.0160200.us = phi double [ %i.eb, %.peel.next ], [ %i.dr, %.lr.ph203.us ]
  %i.ds = trunc nsw i64 %indvars.iv249 to i32
  %i.dt = add i32 %i.dj, %i.ds
  %i.du = mul i32 %i.dt, %i.j
  %i.dv = icmp eq i64 %indvars.iv249, %i.db
  %.1158.us = select i1 %i.dv, double %i.dh, double 1.000000e+00
  %i.dw = add nsw i32 %i.du, %.0163222
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.dx
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !34
  %i.ea = uitofp i8 %i.dz to double
  %i.eb = tail call double @llvm.fmuladd.f64(double %.1158.us, double %i.ea, double %.0160200.us) ; 2 uses
  %indvars.iv.next250 = add nsw i64 %indvars.iv249, 1 ; 2 uses
  %i.ec = icmp slt i64 %indvars.iv249, %i.db
  %i.ed = icmp slt i64 %indvars.iv.next250, %i.ay
  %i.ee = and i1 %i.ec, %i.ed
  br i1 %i.ee, label %.peel.next, label %._crit_edge204.us, !llvm.loop !130

._crit_edge204.us:                                ; preds = %.peel.next, %.lr.ph203.us
  %.lcssa = phi double [ %i.dr, %.lr.ph203.us ], [ %i.eb, %.peel.next ]
  %i.ef = trunc i64 %indvars.iv254 to i32
  %i.eg = mul i32 %4, %i.ef
  %i.eh = add nuw i32 %i.eg, %.0162208
  %i.ei = mul i32 %i.eh, %i.j
  %i.ej = fmul double %i.cm, %.lcssa
  %i.ek = fptoui double %i.ej to i8
  %i.el = add nsw i32 %i.ei, %.0163222
  %i.em = sext i32 %i.el to i64
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.0185.0, i64 %i.em
  store i8 %i.ek, ptr %i.en, align 1, !tbaa !34
  %indvars.iv.next255 = add nuw nsw i64 %indvars.iv254, 1 ; 2 uses
  %exitcond258.not = icmp eq i64 %indvars.iv.next255, %wide.trip.count257
  br i1 %exitcond258.not, label %..loopexit189_crit_edge, label %.lr.ph203.us, !llvm.loop !132

.lr.ph207.split:                                  ; preds = %.lr.ph207.split.preheader, %.lr.ph207.split
  %indvars.iv244 = phi i64 [ %indvars.iv.next245.1, %.lr.ph207.split ], [ 0, %.lr.ph207.split.preheader ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph207.split ], [ 0, %.lr.ph207.split.preheader ]
  %i.eo = trunc i64 %indvars.iv244 to i32
  %i.ep = mul i32 %4, %i.eo
  %i.eq = add nuw i32 %i.ep, %.0162208
  %i.er = mul i32 %i.eq, %i.j
  %i.es = add nsw i32 %i.er, %.0163222
  %i.et = sext i32 %i.es to i64
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.0185.0, i64 %i.et
  store i8 0, ptr %i.eu, align 1, !tbaa !34
  %i.ev = trunc i64 %indvars.iv244 to i32
  %i.ew = or disjoint i32 %i.ev, 1
  %i.ex = mul i32 %4, %i.ew
  %i.ey = add nuw i32 %i.ex, %.0162208
  %i.ez = mul i32 %i.ey, %i.j
  %i.fa = add nsw i32 %i.ez, %.0163222
  %i.fb = sext i32 %i.fa to i64
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.0185.0, i64 %i.fb
  store i8 0, ptr %i.fc, align 1, !tbaa !34
  %indvars.iv.next245.1 = add nuw nsw i64 %indvars.iv244, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %..loopexit189_crit_edge.loopexit321.unr-lcssa, label %.lr.ph207.split, !llvm.loop !132

..loopexit_crit_edge.loopexit320.unr-lcssa:       ; preds = %.lr.ph217.split
  br i1 %lcmp.mod326.not, label %..loopexit_crit_edge, label %.lr.ph217.split.epil.preheader

.lr.ph217.split.epil.preheader:                   ; preds = %..loopexit_crit_edge.loopexit320.unr-lcssa, %.lr.ph217.split.preheader
  %indvars.iv260.epil.init = phi i64 [ 0, %.lr.ph217.split.preheader ], [ %indvars.iv.next261.1, %..loopexit_crit_edge.loopexit320.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod327)
  %i.fd = add nuw nsw i64 %indvars.iv260.epil.init, %i.ga
  %i.fe = trunc nuw i64 %i.fd to i32
  %i.ff = mul i32 %i.fe, %i.j
  %i.fg = add nsw i32 %i.ff, %.0163222
  %i.fh = sext i32 %i.fg to i64
  %i.fi = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.fh
  store i8 0, ptr %i.fi, align 1, !tbaa !34
  br label %..loopexit_crit_edge

..loopexit_crit_edge:                             ; preds = %.lr.ph217.split.epil.preheader, %..loopexit_crit_edge.loopexit320.unr-lcssa, %._crit_edge214.us
  %exitcond282.not = icmp eq i64 %indvars.iv.next279, %wide.trip.count281
  br i1 %exitcond282.not, label %._crit_edge221.split, label %.lr.ph217, !llvm.loop !133

._crit_edge221.split:                             ; preds = %..loopexit_crit_edge, %.preheader
  %i.fj = add nuw nsw i32 %.0163222, 1            ; 2 uses
  %i.fk = icmp slt i32 %i.fj, %i.j
  br i1 %i.fk, label %.preheader190, label %._crit_edge224, !llvm.loop !134

.lr.ph217:                                        ; preds = %.preheader, %..loopexit_crit_edge
  %indvars.iv278 = phi i64 [ %indvars.iv.next279, %..loopexit_crit_edge ], [ 0, %.preheader ] ; 3 uses
  %indvars.iv.next279 = add nuw nsw i64 %indvars.iv278, 1 ; 3 uses
  %i.fl = trunc nuw nsw i64 %indvars.iv.next279 to i32
  %i.fm = trunc nuw nsw i64 %indvars.iv278 to i32
  %i.fn = uitofp nneg i32 %i.fl to double
  %i.fo = uitofp nneg i32 %i.fm to double
  %i.fp = insertelement <2 x double> poison, double %i.fo, i64 0
  %i.fq = insertelement <2 x double> %i.fp, double %i.fn, i64 1
  %i.fr = fmul nnan <2 x double> %i.bh, %i.fq
  %i.fs = fdiv <2 x double> %i.fr, %i.bj
  %i.ft = fptrunc <2 x double> %i.fs to <2 x float> ; 3 uses
  %i.fu = fptosi <2 x float> %i.ft to <2 x i32>   ; 2 uses
  %i.fv = extractelement <2 x float> %i.ft, i64 0 ; 3 uses
  %i.fw = extractelement <2 x float> %i.ft, i64 1 ; 3 uses
  %i.fx = fsub float %i.fw, %i.fv
  %i.fy = fpext float %i.fx to double
  %i.fz = fdiv double 1.000000e+00, %i.fy
  %i.ga = mul nuw nsw i64 %indvars.iv278, %i.ba   ; 4 uses
  %i.gb = extractelement <2 x i32> %i.fu, i64 0   ; 6 uses
  %i.gc = extractelement <2 x i32> %i.fu, i64 1   ; 4 uses
  %i.gd = icmp sle i32 %i.gb, %i.gc
  %i.ge = icmp sgt i32 %3, %i.gb
  %i.gf = and i1 %i.gd, %i.ge
  br i1 %i.gf, label %.lr.ph213.us.preheader, label %.lr.ph217.split.preheader

.lr.ph217.split.preheader:                        ; preds = %.lr.ph217
  br i1 %i.bk, label %.lr.ph217.split.epil.preheader, label %.lr.ph217.split

.lr.ph213.us.preheader:                           ; preds = %.lr.ph217
  %i.gg = tail call noundef float @llvm.floor.f32(float %i.fw)
  %i.gh = fsub float %i.gg, %i.fw
  %i.gi = fadd float %i.gh, 1.000000e+00
  %i.gj = fpext float %i.gi to double             ; 2 uses
  %i.gk = tail call noundef float @llvm.floor.f32(float %i.fv)
  %i.gl = fsub float %i.fv, %i.gk
  %i.gm = fpext float %i.gl to double
  %i.gn = fsub double 1.000000e+00, %i.gm         ; 2 uses
  %i.go = sext i32 %i.gb to i64
  %i.gp = sext i32 %i.gc to i64                   ; 2 uses
  %i.gq = mul i32 %4, %i.gb
  %i.gr = icmp eq i32 %i.gb, %i.gc
  %i.gs = fsub double %i.gn, %i.gj
  %.1.us.peel = select i1 %i.gr, double %i.gs, double %i.gn
  %indvars.iv.next266.peel = add nsw i64 %i.go, 1 ; 2 uses
  %i.gt = icmp slt i32 %i.gb, %i.gc
  %i.gu = icmp slt i64 %indvars.iv.next266.peel, %i.az
  %i.gv = and i1 %i.gt, %i.gu
  %i.gw = fsub double 1.000000e+00, %i.gj
  br label %.lr.ph213.us

.lr.ph213.us:                                     ; preds = %.lr.ph213.us.preheader, %._crit_edge214.us
  %indvars.iv273 = phi i64 [ 0, %.lr.ph213.us.preheader ], [ %indvars.iv.next274, %._crit_edge214.us ] ; 3 uses
  %i.gx = trunc nuw nsw i64 %indvars.iv273 to i32 ; 2 uses
  %i.gy = add i32 %i.gq, %i.gx
  %i.gz = mul i32 %i.gy, %i.j
  %i.ha = add nsw i32 %i.gz, %.0163222
  %i.hb = sext i32 %i.ha to i64
  %i.hc = getelementptr inbounds nuw i8, ptr %.sroa.0185.0, i64 %i.hb
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !34
  %i.he = uitofp i8 %i.hd to double
  %i.hf = tail call double @llvm.fmuladd.f64(double %.1.us.peel, double %i.he, double 0.000000e+00) ; 2 uses
  br i1 %i.gv, label %.peel.next271.a, label %._crit_edge214.us

.peel.next271.a:                                  ; preds = %.lr.ph213.us, %.peel.next271.a
  %indvars.iv265 = phi i64 [ %indvars.iv.next266, %.peel.next271.a ], [ %indvars.iv.next266.peel, %.lr.ph213.us ] ; 4 uses
  %.0154210.us = phi double [ %i.hq, %.peel.next271.a ], [ %i.hf, %.lr.ph213.us ]
  %i.hg = trunc i64 %indvars.iv265 to i32
  %i.hh = mul i32 %4, %i.hg
  %i.hi = add i32 %i.hh, %i.gx
  %i.hj = mul i32 %i.hi, %i.j
  %i.hk = icmp eq i64 %indvars.iv265, %i.gp
  %.1.us = select i1 %i.hk, double %i.gw, double 1.000000e+00
  %i.hl = add nsw i32 %i.hj, %.0163222
  %i.hm = sext i32 %i.hl to i64
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.0185.0, i64 %i.hm
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !34
  %i.hp = uitofp i8 %i.ho to double
  %i.hq = tail call double @llvm.fmuladd.f64(double %.1.us, double %i.hp, double %.0154210.us) ; 2 uses
  %indvars.iv.next266 = add nsw i64 %indvars.iv265, 1 ; 2 uses
  %i.hr = icmp slt i64 %indvars.iv265, %i.gp
  %i.hs = icmp slt i64 %indvars.iv.next266, %i.az
  %i.ht = and i1 %i.hr, %i.hs
  br i1 %i.ht, label %.peel.next271.a, label %._crit_edge214.us, !llvm.loop !135

._crit_edge214.us:                                ; preds = %.peel.next271.a, %.lr.ph213.us
  %.lcssa234 = phi double [ %i.hf, %.lr.ph213.us ], [ %i.hq, %.peel.next271.a ]
  %i.hu = add nuw nsw i64 %indvars.iv273, %i.ga
  %i.hv = trunc nuw i64 %i.hu to i32
  %i.hw = mul i32 %i.hv, %i.j
  %i.hx = fmul double %i.fz, %.lcssa234
  %i.hy = fptoui double %i.hx to i8
  %i.hz = add nsw i32 %i.hw, %.0163222
  %i.ia = sext i32 %i.hz to i64
  %i.ib = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ia
  store i8 %i.hy, ptr %i.ib, align 1, !tbaa !34
  %indvars.iv.next274 = add nuw nsw i64 %indvars.iv273, 1 ; 2 uses
  %exitcond277.not = icmp eq i64 %indvars.iv.next274, %i.ba
  br i1 %exitcond277.not, label %..loopexit_crit_edge, label %.lr.ph213.us, !llvm.loop !136

.lr.ph217.split:                                  ; preds = %.lr.ph217.split.preheader, %.lr.ph217.split
  %indvars.iv260 = phi i64 [ %indvars.iv.next261.1, %.lr.ph217.split ], [ 0, %.lr.ph217.split.preheader ] ; 3 uses
  %niter329 = phi i64 [ %niter329.next.1, %.lr.ph217.split ], [ 0, %.lr.ph217.split.preheader ]
  %i.ic = add nuw nsw i64 %indvars.iv260, %i.ga
  %i.id = trunc nuw i64 %i.ic to i32
  %i.ie = mul i32 %i.id, %i.j
  %i.if = add nsw i32 %i.ie, %.0163222
  %i.ig = sext i32 %i.if to i64
  %i.ih = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ig
  store i8 0, ptr %i.ih, align 1, !tbaa !34
  %indvars.iv.next261 = or disjoint i64 %indvars.iv260, 1
  %i.ii = add nuw nsw i64 %indvars.iv.next261, %i.ga
  %i.ij = trunc nuw i64 %i.ii to i32
  %i.ik = mul i32 %i.ij, %i.j
  %i.il = add nsw i32 %i.ik, %.0163222
  %i.im = sext i32 %i.il to i64
  %i.in = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.im
  store i8 0, ptr %i.in, align 1, !tbaa !34
  %indvars.iv.next261.1 = add nuw nsw i64 %indvars.iv260, 2 ; 2 uses
  %niter329.next.1 = add i64 %niter329, 2         ; 2 uses
  %niter329.ncmp.1 = icmp eq i64 %niter329.next.1, %unroll_iter328
  br i1 %niter329.ncmp.1, label %..loopexit_crit_edge.loopexit320.unr-lcssa, label %.lr.ph217.split, !llvm.loop !136

.lr.ph195:                                        ; preds = %.lr.ph195.preheader, %._crit_edge196
  %indvars.iv239 = phi i64 [ 0, %.lr.ph195.preheader ], [ %indvars.iv.next240, %._crit_edge196 ] ; 3 uses
  %i.io = trunc nuw nsw i64 %indvars.iv239 to i32
  %i.ip = uitofp nneg i32 %i.io to double
  %i.iq = fadd nnan double %i.ip, 5.000000e-01
  %i.ir = fmul double %i.iq, %i.z
  %i.is = fdiv double %i.ir, %i.aa
  %i.it = fadd double %i.is, -5.000000e-01
  %i.iu = fptosi double %i.it to i32
  %i.iv = mul nsw i32 %2, %i.iu
  %i.iw = mul nuw nsw i64 %indvars.iv239, %i.ag
  br label %iter.check

._crit_edge196:                                   ; preds = %._crit_edge
  %indvars.iv.next240 = add nuw nsw i64 %indvars.iv239, 1 ; 2 uses
  %exitcond243.not = icmp eq i64 %indvars.iv.next240, %wide.trip.count242
  br i1 %exitcond243.not, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %.lr.ph195, !llvm.loop !137

iter.check:                                       ; preds = %.lr.ph195, %._crit_edge
  %indvars.iv236 = phi i64 [ 0, %.lr.ph195 ], [ %indvars.iv.next237, %._crit_edge ] ; 3 uses
  %i.ix = trunc nuw nsw i64 %indvars.iv236 to i32
  %i.iy = uitofp nneg i32 %i.ix to double
  %i.iz = fadd nnan double %i.iy, 5.000000e-01
  %i.ja = fmul double %i.iz, %i.ac
  %i.jb = fdiv double %i.ja, %i.ad
  %i.jc = fadd double %i.jb, -5.000000e-01
  %i.jd = fptosi double %i.jc to i32
  %i.je = add i32 %i.iv, %i.jd
  %i.jf = mul i32 %i.je, %i.j
  %i.jg = add nuw nsw i64 %indvars.iv236, %i.iw
  %i.jh = mul i64 %i.jg, %i.i
  %i.ji = sext i32 %i.jf to i64                   ; 2 uses
  %sext = shl i64 %i.jh, 32
  %i.jj = ashr exact i64 %sext, 32                ; 2 uses
  %invariant.gep = getelementptr i8, ptr %i.c, i64 %i.ji ; 3 uses
  %invariant.gep307 = getelementptr i8, ptr %i.v, i64 %i.jj ; 3 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.jk = add i64 %i.jj, %i.w
  %i.jl = add i64 %i.e, %i.ji
  %i.jm = sub i64 %i.jl, %i.jk
  %diff.check = icmp ugt i64 %i.jm, -32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check313, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.jn = getelementptr i8, ptr %invariant.gep, i64 %index ; 2 uses
  %i.jo = getelementptr i8, ptr %i.jn, i64 16
  %wide.load = load <16 x i8>, ptr %i.jn, align 1, !tbaa !34
  %wide.load314 = load <16 x i8>, ptr %i.jo, align 1, !tbaa !34
  %i.jp = getelementptr i8, ptr %invariant.gep307, i64 %index ; 2 uses
  %i.jq = getelementptr i8, ptr %i.jp, i64 16
  store <16 x i8> %wide.load, ptr %i.jp, align 1, !tbaa !34
  store <16 x i8> %wide.load314, ptr %i.jq, align 1, !tbaa !34
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.jr = icmp eq i64 %index.next, %n.vec
  br i1 %i.jr, label %middle.block, label %vector.body, !llvm.loop !138

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !141

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index316 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next318, %vec.epilog.vector.body ] ; 3 uses
  %i.js = getelementptr i8, ptr %invariant.gep, i64 %index316
  %wide.load317 = load <4 x i8>, ptr %i.js, align 1, !tbaa !34
  %i.jt = getelementptr i8, ptr %invariant.gep307, i64 %index316
  store <4 x i8> %wide.load317, ptr %i.jt, align 1, !tbaa !34
  %index.next318 = add nuw i64 %index316, 4       ; 2 uses
  %i.ju = icmp eq i64 %index.next318, %n.vec315
  br i1 %i.ju, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !142

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n319, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec315, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next237 = add nuw nsw i64 %indvars.iv236, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next237, %i.ag
  br i1 %exitcond.not, label %._crit_edge196, label %iter.check, !llvm.loop !143

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv
  %i.jv = load i8, ptr %gep, align 1, !tbaa !34
  %gep308 = getelementptr i8, ptr %invariant.gep307, i64 %indvars.iv
  store i8 %i.jv, ptr %gep308, align 1, !tbaa !34
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.jw = icmp samesign ult i64 %indvars.iv.next, %i.af
  br i1 %i.jw, label %vec.epilog.scalar.ph, label %._crit_edge, !llvm.loop !144

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %._crit_edge196, %.lr.ph198, %.preheader191, %bb.h, %._crit_edge224
  ret void

_ZNSt6vectorIhSaIhEED2Ev.exit184:                 ; preds = %bb.j, %bb.i
  resume { ptr, i32 } %i.bo
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #7

; Function Attrs: mustprogress uwtable
define void @_Z15displayAsciiArtRKSt6vectorIhSaIhEEjjj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = alloca i8, align 1                       ; 4 uses
  %i.g = alloca i8, align 1                       ; 4 uses
  %.sroa.0 = alloca ptr, align 8                  ; 6 uses
  %4 = alloca %"class.std::vector", align 8       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  store ptr null, ptr %.sroa.0, align 8
  %i.h = icmp ult i32 %3, %1
  br i1 %i.h, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.b

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.a
  %i.i = mul i32 %3, %2
  %i.j = udiv i32 %i.i, %1                        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @_Z7rescaleRKSt6vectorIhSaIhEEiiiib(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %i.j, i1 noundef zeroext true)
  %i.k = load ptr, ptr %4, align 8, !tbaa !117    ; 2 uses
  store ptr %i.k, ptr %.sroa.0, align 8, !tbaa !117
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !128
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.n = ptrtoint ptr %i.m to i64
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %bb.a
  %.sroa.0.0..sroa.0.0..sroa.0.0.163 = phi ptr [ %i.k, %_ZNSt6vectorIhSaIhEED2Ev.exit ], [ null, %bb.a ] ; 6 uses
  %.sroa.10.0 = phi i64 [ %i.n, %_ZNSt6vectorIhSaIhEED2Ev.exit ], [ 0, %bb.a ] ; 2 uses
  %.067 = phi i32 [ %i.j, %_ZNSt6vectorIhSaIhEED2Ev.exit ], [ %2, %bb.a ] ; 3 uses
  %.066 = phi i32 [ %3, %_ZNSt6vectorIhSaIhEED2Ev.exit ], [ %1, %bb.a ] ; 5 uses
  %.065 = phi ptr [ %.sroa.0, %_ZNSt6vectorIhSaIhEED2Ev.exit ], [ %0, %bb.a ]
  %i.o = icmp ne i32 %.066, 0
  %i.p = icmp ne i32 %.067, 0
  %or.cond = and i1 %i.p, %i.o
  br i1 %or.cond, label %bb.c, label %_ZNSolsEPFRSoS_E.exit119

bb.c:                                             ; preds = %bb.b
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.24, i64 noundef 19)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.l ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.c
  %i.r = load ptr, ptr @_ZSt4cout, align 8, !tbaa !8
  %i.s = getelementptr i8, ptr %i.r, i64 -24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 240
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !10   ; 6 uses
  %.not.i.i.i124 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i124, label %bb.d, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  invoke void @_ZSt16__throw_bad_castv() #25
          to label %.noexc125 unwind label %bb.l

.noexc125:                                        ; preds = %bb.d
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %i.y = load i8, ptr %i.x, align 8, !tbaa !28
  %.not.i1.i.i = icmp eq i8 %i.y, 0
  br i1 %.not.i1.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 67
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !34
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.f:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.w)
          to label %.noexc126 unwind label %bb.l

.noexc126:                                        ; preds = %bb.f
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = invoke noundef signext i8 %i.ad(ptr noundef nonnull align 8 dereferenceable(570) %i.w, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %bb.l, !inline_history !89

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc126, %bb.e
  %.0.i.i.i = phi i8 [ %i.aa, %bb.e ], [ %i.ae, %.noexc126 ]
  %i.af = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i)
          to label %.noexc128 unwind label %bb.l

.noexc128:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.ag = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.af)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.l ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc128
  %i.ah = shl i32 %.067, 2
  %i.ai = add i32 %i.ah, -4
  %i.aj = udiv i32 %i.ai, 7                       ; 2 uses
  %i.ak = add nuw nsw i32 %i.aj, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i8 43, ptr %i.g, align 1, !tbaa !34
  %i.al = load ptr, ptr @_ZSt4cout, align 8, !tbaa !8
  %i.am = getelementptr i8, ptr %i.al, i64 -24
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !145
  %.not.i = icmp eq i64 %i.aq, 0
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNSolsEPFRSoS_E.exit
  %i.ar = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %i.g, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit unwind label %bb.m ; 0 uses

bb.h:                                             ; preds = %_ZNSolsEPFRSoS_E.exit
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 43)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.n

bb.i:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i8 43, ptr %i.f, align 1, !tbaa !34
  %i.at = load ptr, ptr @_ZSt4cout, align 8, !tbaa !8
  %i.au = getelementptr i8, ptr %i.at, i64 -24
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !145
  %.not.i78 = icmp eq i64 %i.ay, 0
  br i1 %.not.i78, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.az = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %i.f, i64 noundef 1)
          to label %bb.s unwind label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.ba = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 43)
          to label %bb.s unwind label %bb.m       ; 0 uses

bb.l:                                             ; preds = %.noexc128, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc126, %bb.f, %bb.d, %bb.c
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.m:                                             ; preds = %.invoke, %.noexc160, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i155, %.noexc158, %bb.bt, %.noexc138, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i133, %.noexc136, %bb.u, %bb.bl, %bb.bk, %bb.x, %bb.w, %bb.k, %bb.j, %bb.h, %bb.g
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.n:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %bb.q
  %.059167 = phi i32 [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ], [ %i.bl, %bb.q ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 45, ptr %i.e, align 1, !tbaa !34
  %i.bd = load ptr, ptr @_ZSt4cout, align 8, !tbaa !8
  %i.be = getelementptr i8, ptr %i.bd, i64 -24
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !145
  %.not.i83 = icmp eq i64 %i.bi, 0
  br i1 %.not.i83, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %i.e, i64 noundef 1)
          to label %bb.q unwind label %bb.r       ; 0 uses

bb.p:                                             ; preds = %bb.n
  %i.bk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 45)
          to label %bb.q unwind label %bb.r       ; 0 uses

bb.q:                                             ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.bl = add nuw i32 %.059167, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.bl, %.066
  br i1 %exitcond.not, label %bb.i, label %bb.n, !llvm.loop !146

bb.r:                                             ; preds = %bb.p, %bb.o
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.s:                                             ; preds = %bb.j, %bb.k
  %.0.i79 = phi ptr [ %i.az, %bb.j ], [ @_ZSt4cout, %bb.k ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.bn = load ptr, ptr %.0.i79, align 8, !tbaa !8
  %i.bo = getelementptr i8, ptr %i.bn, i64 -24
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds i8, ptr %.0.i79, i64 %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 240
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !10 ; 6 uses
  %.not.i.i.i130 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i130, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i131

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i131: ; preds = %bb.s
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 56
  %i.bu = load i8, ptr %i.bt, align 8, !tbaa !28
  %.not.i1.i.i132 = icmp eq i8 %i.bu, 0
  br i1 %.not.i1.i.i132, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i131
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 67
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !34
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i133

bb.u:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i131
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bs)
          to label %.noexc136 unwind label %bb.m

.noexc136:                                        ; preds = %bb.u
  %i.bx = load ptr, ptr %i.bs, align 8, !tbaa !8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 48
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = invoke noundef signext i8 %i.bz(ptr noundef nonnull align 8 dereferenceable(570) %i.bs, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i133 unwind label %bb.m, !inline_history !89

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i133: ; preds = %.noexc136, %bb.t
  %.0.i.i.i134 = phi i8 [ %i.bw, %bb.t ], [ %i.ca, %.noexc136 ]
  %i.cb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i79, i8 noundef signext %.0.i.i.i134)
          to label %.noexc138 unwind label %bb.m

.noexc138:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i133
  %i.cc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cb)
          to label %_ZNSolsEPFRSoS_E.exit89.preheader.preheader unwind label %bb.m ; 0 uses

_ZNSolsEPFRSoS_E.exit89.preheader.preheader:      ; preds = %.noexc138
  %wide.trip.count = zext i32 %.066 to i64
  br label %_ZNSolsEPFRSoS_E.exit89.preheader

bb.v:                                             ; preds = %_ZNSolsEPFRSoS_E.exit107
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 43, ptr %i.d, align 1, !tbaa !34
  %i.cd = load ptr, ptr @_ZSt4cout, align 8, !tbaa !8
  %i.ce = getelementptr i8, ptr %i.cd, i64 -24
  %i.cf = load i64, ptr %i.ce, align 8
  %i.cg = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !145
  %.not.i90 = icmp eq i64 %i.ci, 0
  br i1 %.not.i90, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %i.d, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit94 unwind label %bb.m ; 0 uses

bb.x:                                             ; preds = %bb.v
  %i.ck = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 43)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit94 unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit94: ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.bm

_ZNSolsEPFRSoS_E.exit89.preheader:                ; preds = %_ZNSolsEPFRSoS_E.exit89.preheader.preheader, %_ZNSolsEPFRSoS_E.exit107
  %.058169 = phi i32 [ %i.hv, %_ZNSolsEPFRSoS_E.exit107 ], [ 0, %_ZNSolsEPFRSoS_E.exit89.preheader.preheader ] ; 4 uses
  %i.cl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.25, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit96 unwind label %bb.z ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit96: ; preds = %_ZNSolsEPFRSoS_E.exit89.preheader
  %i.cm = mul i32 %.058169, %.067
  %i.cn = udiv i32 %i.cm, %i.ak
  %i.co = mul i32 %i.cn, %.066
  %i.cp = shl nuw i32 %.058169, 2
  %i.cq = and i32 %i.cp, 12
  br label %bb.aa

bb.y:                                             ; preds = %bb.be
  %i.cr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.25, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit98 unwind label %.loopexit ; 0 uses

bb.z:                                             ; preds = %_ZNSolsEPFRSoS_E.exit89.preheader
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.aa:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit96, %bb.be
  %indvars.iv = phi i64 [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit96 ], [ %indvars.iv.next, %bb.be ] ; 2 uses
  %i.ct = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  %i.cu = add i32 %i.co, %i.ct
  %i.cv = shl i32 %i.cu, 3                        ; 4 uses
  %i.cw = zext i32 %i.cv to i64
  %i.cx = load ptr, ptr %.065, align 8, !tbaa !117 ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cw
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !34  ; 2 uses
  %i.da = or disjoint i32 %i.cv, 2
  %i.db = zext i32 %i.da to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !34  ; 2 uses
  %i.de = or disjoint i32 %i.cv, 4
  %i.df = zext i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.df
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !34  ; 2 uses
  %i.di = or disjoint i32 %i.cv, 6
  %i.dj = zext i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.dj
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !34  ; 2 uses
  %.not.i99 = icmp eq i8 %i.dl, -1
  br i1 %.not.i99, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dm = zext i8 %i.dl to i32                    ; 3 uses
  %i.dn = zext i8 %i.cz to i32
  %i.do = mul nuw nsw i32 %i.dm, %i.dn
  %.lhs.trunc.i = trunc nuw i32 %i.do to i16
  %i.dp = udiv i16 %.lhs.trunc.i, 255
  %i.dq = trunc nuw i16 %i.dp to i8
  %i.dr = zext i8 %i.dd to i32
  %i.ds = mul nuw nsw i32 %i.dm, %i.dr
  %.lhs.trunc102.i = trunc nuw i32 %i.ds to i16
  %i.dt = udiv i16 %.lhs.trunc102.i, 255
  %i.du = trunc nuw i16 %i.dt to i8
  %i.dv = zext i8 %i.dh to i32
  %i.dw = mul nuw nsw i32 %i.dm, %i.dv
  %.lhs.trunc104.i = trunc nuw i32 %i.dw to i16
  %i.dx = udiv i16 %.lhs.trunc104.i, 255
  %i.dy = trunc nuw i16 %i.dx to i8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.0101.i = phi i8 [ %i.cz, %bb.aa ], [ %i.dq, %bb.ab ] ; 6 uses
  %.0100.i = phi i8 [ %i.dd, %bb.aa ], [ %i.du, %bb.ab ] ; 6 uses
  %.099.i = phi i8 [ %i.dh, %bb.aa ], [ %i.dy, %bb.ab ] ; 5 uses
  %i.dz = zext i8 %.0101.i to i32                 ; 2 uses
  %i.ea = zext i8 %.0100.i to i32                 ; 2 uses
  %i.eb = zext i8 %.099.i to i32                  ; 2 uses
  %i.ec = call i8 @llvm.umax.i8(i8 %.0100.i, i8 %.099.i) ; 2 uses
  %i.ed = call i8 @llvm.umax.i8(i8 %.0101.i, i8 %i.ec) ; 3 uses
  %.sroa.speculated29.i.i = zext i8 %i.ed to i32
  %i.ee = call i8 @llvm.umin.i8(i8 %.099.i, i8 %.0100.i)
  %i.ef = call i8 @llvm.umin.i8(i8 %i.ee, i8 %.0101.i) ; 2 uses
  %.sroa.speculated.i.i = zext i8 %i.ef to i32
  %i.eg = icmp eq i8 %i.ef, %i.ed
  %.pre.i.i = sub nsw i32 %.sroa.speculated29.i.i, %.sroa.speculated.i.i ; 4 uses
  br i1 %i.eg, label %_Z8RGBtoHSLhhhPhS_S_.exit.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.not.i.i.i100 = icmp ult i8 %.0101.i, %i.ec
  br i1 %.not.i.i.i100, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.eh = sub nsw i32 %i.ea, %i.eb
  %i.ei = mul nsw i32 %i.eh, 255
  %i.ej = sdiv i32 %i.ei, %.pre.i.i
  br label %bb.ai

bb.af:                                            ; preds = %bb.ad
  %i.ek = icmp eq i8 %i.ed, %.0100.i
  br i1 %i.ek, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.el = sub nsw i32 %i.eb, %i.dz
  %i.em = mul nsw i32 %i.el, 255
  %i.en = sdiv i32 %i.em, %.pre.i.i
  %i.eo = add nsw i32 %i.en, 512
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.ep = sub nsw i32 %i.dz, %i.ea
  %i.eq = mul nsw i32 %i.ep, 255
  %i.er = sdiv i32 %i.eq, %.pre.i.i
  %i.es = add nsw i32 %i.er, 1024
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.ae
  %i.et = phi i32 [ %i.ej, %bb.ae ], [ %i.eo, %bb.ag ], [ %i.es, %bb.ah ]
  %i.eu = sdiv i32 %i.et, 6
  br label %_Z8RGBtoHSLhhhPhS_S_.exit.i.i

_Z8RGBtoHSLhhhPhS_S_.exit.i.i:                    ; preds = %bb.ai, %bb.ac
  %.098.i = phi i32 [ %i.eu, %bb.ai ], [ 0, %bb.ac ]
  %.sroa.speculated75.i = call i8 @llvm.umax.i8(i8 %.0101.i, i8 %.0100.i)
  %.sroa.speculated60.i = call i8 @llvm.umax.i8(i8 %.sroa.speculated75.i, i8 %.099.i)
  %i.ev = zext i8 %.sroa.speculated60.i to i32
  %.sroa.speculated72.i = call i8 @llvm.umin.i8(i8 %.0100.i, i8 %.0101.i)
  %.sroa.speculated.i = call i8 @llvm.umin.i8(i8 %.099.i, i8 %.sroa.speculated72.i)
  %i.ew = zext i8 %.sroa.speculated.i to i32
  %i.ex = add nuw nsw i32 %i.ev, %i.ew
  %i.ey = lshr i32 %i.ex, 1                       ; 2 uses
  %i.ez = and i32 %.pre.i.i, 255
  %i.fa = and i32 %i.ct, 3
  %i.fb = or disjoint i32 %i.fa, %i.cq            ; 2 uses
  %i.fc = zext nneg i32 %i.fb to i64
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr @_ZZL11applyDitheriiiibE7pattern, i64 %i.fc
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !127
  %i.ff = mul nsw i32 %i.fe, 17
  %i.fg = add nsw i32 %i.ff, -128                 ; 3 uses
  %i.fh = mul nsw i32 %i.fg, 127
  %i.fi = sdiv i32 %i.fh, 128
  %i.fj = add nsw i32 %i.fi, %i.ez
  %i.fk = icmp sgt i32 %i.fj, 127
  br i1 %i.fk, label %bb.aj, label %bb.au

bb.aj:                                            ; preds = %_Z8RGBtoHSLhhhPhS_S_.exit.i.i
  %i.fl = mul nsw i32 %i.fg, 21
  %i.fm = sdiv i32 %i.fl, 256
  %i.fn = add nsw i32 %i.fm, %.098.i
  %i.fo = and i32 %i.fn, 255                      ; 11 uses
  %i.fp = add nsw i32 %i.fo, -244
  %or.cond.i.i = icmp ult i32 %i.fp, -233
  br i1 %or.cond.i.i, label %_Z11HueToLetteri.exit.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fq = icmp samesign ult i32 %i.fo, 32
  br i1 %i.fq, label %_Z11HueToLetteri.exit.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fr = icmp samesign ult i32 %i.fo, 53
  br i1 %i.fr, label %_Z11HueToLetteri.exit.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fs = icmp samesign ult i32 %i.fo, 74
  br i1 %i.fs, label %_Z11HueToLetteri.exit.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ft = icmp samesign ult i32 %i.fo, 96
  br i1 %i.ft, label %_Z11HueToLetteri.exit.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fu = icmp samesign ult i32 %i.fo, 117
  br i1 %i.fu, label %_Z11HueToLetteri.exit.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fv = icmp samesign ult i32 %i.fo, 138
  br i1 %i.fv, label %_Z11HueToLetteri.exit.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fw = icmp samesign ult i32 %i.fo, 159
  br i1 %i.fw, label %_Z11HueToLetteri.exit.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fx = icmp samesign ult i32 %i.fo, 181
  br i1 %i.fx, label %_Z11HueToLetteri.exit.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fy = icmp samesign ult i32 %i.fo, 202
  br i1 %i.fy, label %_Z11HueToLetteri.exit.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fz = icmp samesign ult i32 %i.fo, 223
  %spec.select.i.i = select i1 %i.fz, i8 77, i8 70
  br label %_Z11HueToLetteri.exit.i

_Z11HueToLetteri.exit.i:                          ; preds = %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj
  %.0.i.i = phi i8 [ %spec.select.i.i, %bb.at ], [ 82, %bb.aj ], [ 79, %bb.ak ], [ 89, %bb.al ], [ 76, %bb.am ], [ 71, %bb.an ], [ 84, %bb.ao ], [ 67, %bb.ap ], [ 65, %bb.aq ], [ 66, %bb.ar ], [ 86, %bb.as ]
  %i.ga = xor i32 %i.fb, 10
  %i.gb = zext nneg i32 %i.ga to i64
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr @_ZZL11applyDitheriiiibE7pattern, i64 %i.gb
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !127
  %i.ge = mul i32 %i.gd, 1088
  %i.gf = add i32 %i.ge, -8192
  %i.gg = sdiv i32 %i.gf, 256
  %i.gh = add nsw i32 %i.gg, %i.ey
  %i.gi = icmp slt i32 %i.gh, 80
  %i.gj = select i1 %i.gi, i8 32, i8 0
  %i.gk = or disjoint i8 %i.gj, %.0.i.i
  br label %_Z11RGBtoLetterhhhhjjbb.exit

bb.au:                                            ; preds = %_Z8RGBtoHSLhhhPhS_S_.exit.i.i
  %i.gl = mul nsw i32 %i.fg, 31
  %i.gm = sdiv i32 %i.gl, 256
  %i.gn = add nsw i32 %i.gm, %i.ey                ; 8 uses
  %i.go = icmp slt i32 %i.gn, 16
  br i1 %i.go, label %_Z11RGBtoLetterhhhhjjbb.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.gp = icmp samesign ult i32 %i.gn, 48
  br i1 %i.gp, label %_Z11RGBtoLetterhhhhjjbb.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gq = icmp samesign ult i32 %i.gn, 80
  br i1 %i.gq, label %_Z11RGBtoLetterhhhhjjbb.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gr = icmp samesign ult i32 %i.gn, 112
  br i1 %i.gr, label %_Z11RGBtoLetterhhhhjjbb.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gs = icmp samesign ult i32 %i.gn, 144
  br i1 %i.gs, label %_Z11RGBtoLetterhhhhjjbb.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gt = icmp samesign ult i32 %i.gn, 176
  br i1 %i.gt, label %_Z11RGBtoLetterhhhhjjbb.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gu = icmp samesign ult i32 %i.gn, 208
  br i1 %i.gu, label %_Z11RGBtoLetterhhhhjjbb.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gv = icmp samesign ult i32 %i.gn, 240
  %..i38.i = select i1 %i.gv, i8 61, i8 35
  br label %_Z11RGBtoLetterhhhhjjbb.exit

_Z11RGBtoLetterhhhhjjbb.exit:                     ; preds = %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %_Z11HueToLetteri.exit.i
  %.1.i = phi i8 [ %..i38.i, %bb.bb ], [ %i.gk, %_Z11HueToLetteri.exit.i ], [ 43, %bb.ba ], [ 32, %bb.au ], [ 46, %bb.av ], [ 58, %bb.aw ], [ 45, %bb.ax ], [ 33, %bb.ay ], [ 42, %bb.az ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 %.1.i, ptr %i.c, align 1, !tbaa !34
  %i.gw = load ptr, ptr @_ZSt4cout, align 8, !tbaa !8
  %i.gx = getelementptr i8, ptr %i.gw, i64 -24
  %i.gy = load i64, ptr %i.gx, align 8
  %i.gz = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.gy
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !145
  %.not.i101 = icmp eq i64 %i.hb, 0
  br i1 %.not.i101, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %_Z11RGBtoLetterhhhhjjbb.exit
  %i.hc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %i.c, i64 noundef 1)
          to label %bb.be unwind label %bb.bf     ; 0 uses

bb.bd:                                            ; preds = %_Z11RGBtoLetterhhhhjjbb.exit
  %i.hd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.1.i)
          to label %bb.be unwind label %bb.bf     ; 0 uses

bb.be:                                            ; preds = %bb.bc, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond173.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond173.not, label %bb.y, label %bb.aa, !llvm.loop !147

bb.bf:                                            ; preds = %bb.bd, %bb.bc
  %i.he = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit98: ; preds = %bb.y
  %i.hf = load ptr, ptr @_ZSt4cout, align 8, !tbaa !8
  %i.hg = getelementptr i8, ptr %i.hf, i64 -24
  %i.hh = load i64, ptr %i.hg, align 8
  %i.hi = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.hh
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 240
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !10 ; 6 uses
  %.not.i.i.i141 = icmp eq ptr %i.hk, null
  br i1 %.not.i.i.i141, label %bb.bg, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i142

bb.bg:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit98
  invoke void @_ZSt16__throw_bad_castv() #25
          to label %.noexc146 unwind label %.loopexit.split-lp

.noexc146:                                        ; preds = %bb.bg
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i142: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit98
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 56
  %i.hm = load i8, ptr %i.hl, align 8, !tbaa !28
  %.not.i1.i.i143 = icmp eq i8 %i.hm, 0
  br i1 %.not.i1.i.i143, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i142
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hk, i64 67
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !34
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i144

bb.bi:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i142
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.hk)
          to label %.noexc147 unwind label %.loopexit

.noexc147:                                        ; preds = %bb.bi
  %i.hp = load ptr, ptr %i.hk, align 8, !tbaa !8
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 48
  %i.hr = load ptr, ptr %i.hq, align 8
  %i.hs = invoke noundef signext i8 %i.hr(ptr noundef nonnull align 8 dereferenceable(570) %i.hk, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i144 unwind label %.loopexit, !inline_history !89

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i144: ; preds = %.noexc147, %bb.bh
  %.0.i.i.i145 = phi i8 [ %i.ho, %bb.bh ], [ %i.hs, %.noexc147 ]
  %i.ht = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i145)
          to label %.noexc149 unwind label %.loopexit

.noexc149:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i144
  %i.hu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ht)
          to label %_ZNSolsEPFRSoS_E.exit107 unwind label %.loopexit ; 0 uses

_ZNSolsEPFRSoS_E.exit107:                         ; preds = %.noexc149
  %i.hv = add nuw nsw i32 %.058169, 1
  %exitcond174.not = icmp eq i32 %.058169, %i.aj
  br i1 %exitcond174.not, label %bb.v, label %_ZNSolsEPFRSoS_E.exit89.preheader, !llvm.loop !148

.loopexit:                                        ; preds = %bb.y, %bb.bi, %.noexc147, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i144, %.noexc149
  %lpad.loopexit = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_Z15displayAsciiArtRKSt6vectorIhSaIhEEjjj:bb.a
  %i.ik = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %bb.bp unwind label %bb.bq     ; 0 uses

bb.bo:                                            ; preds = %bb.bm
  %i.il = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 45)
          to label %bb.bp unwind label %bb.bq     ; 0 uses

bb.bp:                                            ; preds = %bb.bn, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.im = add nuw i32 %.0170, 1                   ; 2 uses
  %exitcond175.not = icmp eq i32 %i.im, %.066
  br i1 %exitcond175.not, label %bb.bj, label %bb.bm, !llvm.loop !149

bb.bq:                                            ; preds = %bb.bo, %bb.bn
  %i.in = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.br:                                            ; preds = %bb.bk, %bb.bl
  %.0.i109 = phi ptr [ %i.ic, %bb.bk ], [ @_ZSt4cout, %bb.bl ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.io = load ptr, ptr %.0.i109, align 8, !tbaa !8
  %i.ip = getelementptr i8, ptr %i.io, i64 -24
  %i.iq = load i64, ptr %i.ip, align 8
  %i.ir = getelementptr inbounds i8, ptr %.0.i109, i64 %i.iq
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 240
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !10 ; 6 uses
  %.not.i.i.i152 = icmp eq ptr %i.it, null
  br i1 %.not.i.i.i152, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i153

.invoke:                                          ; preds = %bb.br, %bb.s
  invoke void @_ZSt16__throw_bad_castv() #25
          to label %.cont unwind label %bb.m

.cont:                                            ; preds = %.invoke
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i153: ; preds = %bb.br
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 56
  %i.iv = load i8, ptr %i.iu, align 8, !tbaa !28
  %.not.i1.i.i154 = icmp eq i8 %i.iv, 0
  br i1 %.not.i1.i.i154, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i153
  %i.iw = getelementptr inbounds nuw i8, ptr %i.it, i64 67
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !34
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i155

bb.bt:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i153
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.it)
          to label %.noexc158 unwind label %bb.m

.noexc158:                                        ; preds = %bb.bt
  %i.iy = load ptr, ptr %i.it, align 8, !tbaa !8
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 48
  %i.ja = load ptr, ptr %i.iz, align 8
  %i.jb = invoke noundef signext i8 %i.ja(ptr noundef nonnull align 8 dereferenceable(570) %i.it, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i155 unwind label %bb.m, !inline_history !89

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i155: ; preds = %.noexc158, %bb.bs
  %.0.i.i.i156 = phi i8 [ %i.ix, %bb.bs ], [ %i.jb, %.noexc158 ]
  %i.jc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i109, i8 noundef signext %.0.i.i.i156)
          to label %.noexc160 unwind label %bb.m

.noexc160:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i155
  %i.jd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.jc)
          to label %_ZNSolsEPFRSoS_E.exit119 unwind label %bb.m ; 0 uses

_ZNSolsEPFRSoS_E.exit119:                         ; preds = %.noexc160, %bb.b
  %.not.i.i.i120 = icmp eq ptr %.sroa.0.0..sroa.0.0..sroa.0.0.163, null
  br i1 %.not.i.i.i120, label %_ZNSt6vectorIhSaIhEED2Ev.exit121, label %bb.bu

bb.bu:                                            ; preds = %_ZNSolsEPFRSoS_E.exit119
  %i.je = ptrtoint ptr %.sroa.0.0..sroa.0.0..sroa.0.0.163 to i64
  %i.jf = sub i64 %.sroa.10.0, %i.je
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0..sroa.0.0..sroa.0.0.163, i64 noundef %i.jf) #27
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit121

_ZNSt6vectorIhSaIhEED2Ev.exit121:                 ; preds = %_ZNSolsEPFRSoS_E.exit119, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  ret void

bb.bv:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.m, %bb.r, %bb.bq, %bb.bf, %bb.z, %bb.l
  %.pn74.pn = phi { ptr, i32 } [ %i.bb, %bb.l ], [ %i.bm, %bb.r ], [ %i.bc, %bb.m ], [ %i.in, %bb.bq ], [ %i.he, %bb.bf ], [ %lpad.loopexit, %.loopexit ], [ %i.cs, %bb.z ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i122 = icmp eq ptr %.sroa.0.0..sroa.0.0..sroa.0.0.163, null
  br i1 %.not.i.i.i122, label %_ZNSt6vectorIhSaIhEED2Ev.exit123, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.jg = ptrtoint ptr %.sroa.0.0..sroa.0.0..sroa.0.0.163 to i64
  %i.jh = sub i64 %.sroa.10.0, %i.jg
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0..sroa.0.0..sroa.0.0.163, i64 noundef %i.jh) #27
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit123

_ZNSt6vectorIhSaIhEED2Ev.exit123:                 ; preds = %bb.bv, %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  resume { ptr, i32 } %.pn74.pn
}

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_Z16displayColorsHexRKSt6vectorIhSaIhEEjjb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @_ZSt4cout, align 8, !tbaa !8
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !120  ; 3 uses
  %i.g = icmp ne i32 %1, 0
  %i.h = icmp ne i32 %2, 0
  %or.cond = and i1 %i.g, %i.h
  br i1 %or.cond, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.26, i64 noundef 29) ; 0 uses
  %i.j = load ptr, ptr @_ZSt4cout, align 8, !tbaa !8
  %i.k = getelementptr i8, ptr %i.j, i64 -24
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 240
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !10   ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %bb.c, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt16__throw_bad_castv() #25
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.q = load i8, ptr %i.p, align 8, !tbaa !28
  %.not.i1.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i1.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 67
  %i.s = load i8, ptr %i.r, align 1, !tbaa !34
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.e:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.o)
  %i.t = load ptr, ptr %i.o, align 8, !tbaa !8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call noundef signext i8 %i.v(ptr noundef nonnull align 8 dereferenceable(570) %i.o, i8 noundef signext 10), !inline_history !35
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.d, %bb.e
  %.0.i.i.i = phi i8 [ %i.s, %bb.d ], [ %i.w, %bb.e ]
  %i.x = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i)
  %i.y = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.x) ; 0 uses
  %wide.trip.count96 = zext i32 %2 to i64         ; 2 uses
  %wide.trip.count90 = zext i32 %1 to i64         ; 2 uses
  br i1 %3, label %.split.us.us, label %.split

.split.us.us:                                     ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit68.us
  %indvars.iv92 = phi i64 [ %indvars.iv.next93, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit68.us ], [ 0, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ] ; 3 uses
  %i.z = load ptr, ptr @_ZSt4cout, align 8, !tbaa !8
  %i.aa = getelementptr i8, ptr %i.z, i64 -24
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store i32 %i.f, ptr %i.ad, align 8, !tbaa !120
  %i.ae = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i64 noundef %indvars.iv92)
  %i.af = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull @.str.27, i64 noundef 1) ; 0 uses
  %i.ag = trunc nuw i64 %indvars.iv92 to i32
  %i.ah = mul i32 %1, %i.ag
  br label %bb.h

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i65.us: ; preds = %.split73.us.us
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ed, i64 56
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !28
  %.not.i1.i.i66.us = icmp eq i8 %i.aj, 0
  br i1 %.not.i1.i.i66.us, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i65.us
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ed, i64 67
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !34
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit68.us

bb.g:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i65.us
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ed)
  %i.am = load ptr, ptr %i.ed, align 8, !tbaa !8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = tail call noundef signext i8 %i.ao(ptr noundef nonnull align 8 dereferenceable(570) %i.ed, i8 noundef signext 10), !inline_history !35
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit68.us

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit68.us: ; preds = %bb.g, %bb.f
  %.0.i.i.i67.us = phi i8 [ %i.al, %bb.f ], [ %i.ap, %bb.g ]
  %i.aq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i67.us)
  %i.ar = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aq) ; 0 uses
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92, 1 ; 2 uses
  %exitcond97.not = icmp eq i64 %indvars.iv.next93, %wide.trip.count96
  br i1 %exitcond97.not, label %.loopexit, label %.split.us.us, !llvm.loop !150

bb.h:                                             ; preds = %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_SetfillIS3_E.exit.us.us, %.split.us.us
  %indvars.iv86 = phi i64 [ %indvars.iv.next87, %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_SetfillIS3_E.exit.us.us ], [ 0, %.split.us.us ] ; 2 uses
  %i.as = trunc nuw i64 %indvars.iv86 to i32
  %i.at = add i32 %i.ah, %i.as
  %i.au = shl i32 %i.at, 3
  %i.av = zext i32 %i.au to i64
  %i.aw = load ptr, ptr %0, align 8, !tbaa !117
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.av ; 8 uses
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !34
  %i.az = zext i8 %i.ay to i32
  %i.ba = shl nuw nsw i32 %i.az, 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 1
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !34
  %i.bd = zext i8 %i.bc to i32
  %i.be = or disjoint i32 %i.ba, %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 2
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !34
  %i.bh = zext i8 %i.bg to i32
  %i.bi = shl nuw nsw i32 %i.bh, 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ax, i64 3
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !34
  %i.bl = zext i8 %i.bk to i32
  %i.bm = or disjoint i32 %i.bi, %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !34
  %i.bp = zext i8 %i.bo to i32
  %i.bq = shl nuw nsw i32 %i.bp, 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.ax, i64 5
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !34
  %i.bt = zext i8 %i.bs to i32
  %i.bu = or disjoint i32 %i.bq, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ax, i64 6
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !34
  %i.bx = zext i8 %i.bw to i32
  %i.by = shl nuw nsw i32 %i.bx, 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ax, i64 7
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !34
  %i.cb = zext i8 %i.ca to i32
  %i.cc = or disjoint i32 %i.by, %i.cb
  %i.cd = load ptr, ptr @_ZSt4cout, align 8, !tbaa !8
  %i.ce = getelementptr i8, ptr %i.cd, i64 -24    ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8
  %i.cg = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 24 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !120
  %i.cj = and i32 %i.ci, -75
  %i.ck = or disjoint i32 %i.cj, 8
  store i32 %i.ck, ptr %i.ch, align 8, !tbaa !121
  %i.cl = load i64, ptr %i.ce, align 8
  %i.cm = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.cl ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 225 ; 2 uses
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !151, !range !75, !noundef !76
  %i.cp = trunc nuw i8 %i.co to i1
  br i1 %i.cp, label %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_SetfillIS3_E.exit.us.us, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 240
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !10 ; 5 uses
  %.not.i.i.i.i.i.us.us = icmp eq ptr %i.cr, null
  br i1 %.not.i.i.i.i.i.us.us, label %.split71.us, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i.us.us

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i.us.us: ; preds = %bb.i
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 56
  %i.ct = load i8, ptr %i.cs, align 8, !tbaa !28
  %.not.i1.i.i.i.i.us.us = icmp eq i8 %i.ct, 0
  br i1 %.not.i1.i.i.i.i.us.us, label %bb.j, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i.us.us

bb.j:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i.us.us
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.cr)
  %i.cu = load ptr, ptr %i.cr, align 8, !tbaa !8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 48
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = tail call noundef signext i8 %i.cw(ptr noundef nonnull align 8 dereferenceable(570) %i.cr, i8 noundef signext 32), !inline_history !152 ; 0 uses
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i.us.us

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i.us.us: ; preds = %bb.j, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i.us.us
  store i8 1, ptr %i.cn, align 1, !tbaa !151
  br label %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_SetfillIS3_E.exit.us.us

_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_SetfillIS3_E.exit.us.us: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i.us.us, %bb.h
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cm, i64 224
  store i8 48, ptr %i.cy, align 8, !tbaa !153
  %i.cz = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.28, i64 noundef 2) ; 0 uses
  %i.da = load ptr, ptr @_ZSt4cout, align 8, !tbaa !8
  %i.db = getelementptr i8, ptr %i.da, i64 -24
  %i.dc = load i64, ptr %i.db, align 8
  %i.dd = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  store i64 4, ptr %i.de, align 8, !tbaa !145
  %i.df = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %i.be) ; 3 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !8
  %i.dh = getelementptr i8, ptr %i.dg, i64 -24
  %i.di = load i64, ptr %i.dh, align 8
  %i.dj = getelementptr inbounds i8, ptr %i.df, i64 %i.di
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  store i64 4, ptr %i.dk, align 8, !tbaa !145
  %i.dl = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.df, i32 noundef %i.bm) ; 3 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !8
  %i.dn = getelementptr i8, ptr %i.dm, i64 -24
  %i.do = load i64, ptr %i.dn, align 8
  %i.dp = getelementptr inbounds i8, ptr %i.dl, i64 %i.do
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  store i64 4, ptr %i.dq, align 8, !tbaa !145
  %i.dr = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.dl, i32 noundef %i.bu) ; 3 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !8
  %i.dt = getelementptr i8, ptr %i.ds, i64 -24
  %i.du = load i64, ptr %i.dt, align 8
  %i.dv = getelementptr inbounds i8, ptr %i.dr, i64 %i.du
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  store i64 4, ptr %i.dw, align 8, !tbaa !145
  %i.dx = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.dr, i32 noundef %i.cc) ; 0 uses
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1 ; 2 uses
  %exitcond91.not = icmp eq i64 %indvars.iv.next87, %wide.trip.count90
  br i1 %exitcond91.not, label %.split73.us.us, label %bb.h, !llvm.loop !154

.split73.us.us:                                   ; preds = %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_SetfillIS3_E.exit.us.us
  %i.dy = load ptr, ptr @_ZSt4cout, align 8, !tbaa !8
  %i.dz = getelementptr i8, ptr %i.dy, i64 -24
  %i.ea = load i64, ptr %i.dz, align 8
  %i.eb = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 240
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !10 ; 6 uses
  %.not.i.i.i64.us = icmp eq ptr %i.ed, null
  br i1 %.not.i.i.i64.us, label %.split76.us, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i65.us

.split:                                           ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit68
  %indvars.iv80 = phi i64 [ %indvars.iv.next81, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit68 ], [ 0, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ] ; 3 uses
  %i.ee = load ptr, ptr @_ZSt4cout, align 8, !tbaa !8
  %i.ef = getelementptr i8, ptr %i.ee, i64 -24
  %i.eg = load i64, ptr %i.ef, align 8
  %i.eh = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.eg
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 24
  store i32 %i.f, ptr %i.ei, align 8, !tbaa !120
  %i.ej = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i64 noundef %indvars.iv80)
  %i.ek = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ej, ptr noundef nonnull @.str.27, i64 noundef 1) ; 0 uses
  %i.el = trunc nuw i64 %indvars.iv80 to i32
  %i.em = mul i32 %1, %i.el
  br label %bb.m

.split73:                                         ; preds = %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_SetfillIS3_E.exit63
  %i.en = load ptr, ptr @_ZSt4cout, align 8, !tbaa !8
  %i.eo = getelementptr i8, ptr %i.en, i64 -24
  %i.ep = load i64, ptr %i.eo, align 8
  %i.eq = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.ep
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 240
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !10 ; 6 uses
  %.not.i.i.i64 = icmp eq ptr %i.es, null
  br i1 %.not.i.i.i64, label %.split76.us, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i65

.split76.us:                                      ; preds = %.split73, %.split73.us.us
  tail call void @_ZSt16__throw_bad_castv() #25
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i65: ; preds = %.split73
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 56
  %i.eu = load i8, ptr %i.et, align 8, !tbaa !28
  %.not.i1.i.i66 = icmp eq i8 %i.eu, 0
  br i1 %.not.i1.i.i66, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i65
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 67
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !34
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit68

bb.l:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i65
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.es)
  %i.ex = load ptr, ptr %i.es, align 8, !tbaa !8
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 48
  %i.ez = load ptr, ptr %i.ey, align 8
  %i.fa = tail call noundef signext i8 %i.ez(ptr noundef nonnull align 8 dereferenceable(570) %i.es, i8 noundef signext 10), !inline_history !35
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit68

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit68: ; preds = %bb.k, %bb.l
  %.0.i.i.i67 = phi i8 [ %i.ew, %bb.k ], [ %i.fa, %bb.l ]
  %i.fb = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i67)
  %i.fc = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fb) ; 0 uses
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1 ; 2 uses
  %exitcond85.not = icmp eq i64 %indvars.iv.next81, %wide.trip.count96
  br i1 %exitcond85.not, label %.loopexit, label %.split, !llvm.loop !150

bb.m:                                             ; preds = %.split, %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_SetfillIS3_E.exit63
  %indvars.iv = phi i64 [ 0, %.split ], [ %indvars.iv.next, %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_SetfillIS3_E.exit63 ] ; 2 uses
  %i.fd = trunc nuw i64 %indvars.iv to i32
  %i.fe = add i32 %i.em, %i.fd
  %i.ff = shl i32 %i.fe, 3
  %i.fg = zext i32 %i.ff to i64
  %i.fh = load ptr, ptr %0, align 8, !tbaa !117
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.fg ; 4 uses
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !34
  %i.fk = zext i8 %i.fj to i32
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fi, i64 2
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !34
  %i.fn = zext i8 %i.fm to i32
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fi, i64 4
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !34
  %i.fq = zext i8 %i.fp to i32
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fi, i64 6
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !34
  %i.ft = zext i8 %i.fs to i32
  %i.fu = load ptr, ptr @_ZSt4cout, align 8, !tbaa !8
  %i.fv = getelementptr i8, ptr %i.fu, i64 -24    ; 2 uses
  %i.fw = load i64, ptr %i.fv, align 8
  %i.fx = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.fw
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 24 ; 2 uses
  %i.fz = load i32, ptr %i.fy, align 8, !tbaa !120
  %i.ga = and i32 %i.fz, -75
  %i.gb = or disjoint i32 %i.ga, 8
  store i32 %i.gb, ptr %i.fy, align 8, !tbaa !121
  %i.gc = load i64, ptr %i.fv, align 8
  %i.gd = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.gc ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 225 ; 2 uses
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !151, !range !75, !noundef !76
  %i.gg = trunc nuw i8 %i.gf to i1
  br i1 %i.gg, label %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_SetfillIS3_E.exit63, label %bb.n

.split71.us:                                      ; preds = %bb.i
  tail call void @_ZSt16__throw_bad_castv() #25
  unreachable

bb.n:                                             ; preds = %bb.m
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gd, i64 240
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !10 ; 5 uses
  %.not.i.i.i.i.i59 = icmp eq ptr %i.gi, null
  br i1 %.not.i.i.i.i.i59, label %bb.o, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i60

bb.o:                                             ; preds = %bb.n
  tail call void @_ZSt16__throw_bad_castv() #25
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i60: ; preds = %bb.n
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 56
  %i.gk = load i8, ptr %i.gj, align 8, !tbaa !28
  %.not.i1.i.i.i.i61 = icmp eq i8 %i.gk, 0
  br i1 %.not.i1.i.i.i.i61, label %bb.p, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i62

bb.p:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i60
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.gi)
  %i.gl = load ptr, ptr %i.gi, align 8, !tbaa !8
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 48
  %i.gn = load ptr, ptr %i.gm, align 8
  %i.go = tail call noundef signext i8 %i.gn(ptr noundef nonnull align 8 dereferenceable(570) %i.gi, i8 noundef signext 32), !inline_history !152 ; 0 uses
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i62

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i62: ; preds = %bb.p, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i60
  store i8 1, ptr %i.ge, align 1, !tbaa !151
  br label %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_SetfillIS3_E.exit63

_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_SetfillIS3_E.exit63: ; preds = %bb.m, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i62
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gd, i64 224
  store i8 48, ptr %i.gp, align 8, !tbaa !153
  %i.gq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.28, i64 noundef 2) ; 0 uses
  %i.gr = load ptr, ptr @_ZSt4cout, align 8, !tbaa !8
  %i.gs = getelementptr i8, ptr %i.gr, i64 -24
  %i.gt = load i64, ptr %i.gs, align 8
  %i.gu = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.gt
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 16
  store i64 2, ptr %i.gv, align 8, !tbaa !145
  %i.gw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %i.fk) ; 3 uses
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !8
  %i.gy = getelementptr i8, ptr %i.gx, i64 -24
  %i.gz = load i64, ptr %i.gy, align 8
  %i.ha = getelementptr inbounds i8, ptr %i.gw, i64 %i.gz
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  store i64 2, ptr %i.hb, align 8, !tbaa !145
  %i.hc = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.gw, i32 noundef %i.fn) ; 3 uses
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !8
  %i.he = getelementptr i8, ptr %i.hd, i64 -24
  %i.hf = load i64, ptr %i.he, align 8
  %i.hg = getelementptr inbounds i8, ptr %i.hc, i64 %i.hf
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  store i64 2, ptr %i.hh, align 8, !tbaa !145
  %i.hi = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.hc, i32 noundef %i.fq) ; 3 uses
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !8
  %i.hk = getelementptr i8, ptr %i.hj, i64 -24
  %i.hl = load i64, ptr %i.hk, align 8
  %i.hm = getelementptr inbounds i8, ptr %i.hi, i64 %i.hl
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 16
  store i64 2, ptr %i.hn, align 8, !tbaa !145
  %i.ho = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.hi, i32 noundef %i.ft) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count90
  br i1 %exitcond.not, label %.split73, label %bb.m, !llvm.loop !154

.loopexit:                                        ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit68, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit68.us, %bb.a
  %i.hp = load ptr, ptr @_ZSt4cout, align 8, !tbaa !8
  %i.hq = getelementptr i8, ptr %i.hp, i64 -24
  %i.hr = load i64, ptr %i.hq, align 8
  %i.hs = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.hr
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 24
  store i32 %i.f, ptr %i.ht, align 8, !tbaa !120
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z18displayFilterTypesR4DataRK7Options(ptr noundef nonnull align 8 dereferenceable(736) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(37) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.16", align 8    ; 16 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.b = load i8, ptr %i.a, align 4, !tbaa !78, !range !75, !noundef !76
  %i.c = trunc nuw i8 %i.b to i1
  %_ZSt3hexRSt8ios_base._ZSt3decRSt8ios_base = select i1 %i.c, ptr @_ZSt3hexRSt8ios_base, ptr @_ZSt3decRSt8ios_base
  %i.d = load ptr, ptr @_ZSt4cout, align 8, !tbaa !8
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.f
  %i.h = tail call noundef nonnull align 8 dereferenceable(216) ptr %_ZSt3hexRSt8ios_base._ZSt3decRSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.g), !inline_history !82 ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !36
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !36
  %i.m = icmp eq ptr %i.j, %i.l
  br i1 %i.m, label %_ZN4Data8loadFileEv.exit, label %_ZN4Data8loadFileEv.exit.thread

_ZN4Data8loadFileEv.exit.thread:                  ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 728
  store i32 0, ptr %i.n, align 8, !tbaa !77
  br label %bb.b

_ZN4Data8loadFileEv.exit:                         ; preds = %bb.a
  %i.o = tail call noundef i32 @_ZN7lodepng9load_fileERSt6vectorIhSaIhEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(736) %0) ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 728
  store i32 %i.o, ptr %i.p, align 8, !tbaa !77
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.b, label %bb.u

bb.b:                                             ; preds = %_ZN4Data8loadFileEv.exit.thread, %_ZN4Data8loadFileEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.q = invoke noundef i32 @_ZN7lodepng24getFilterTypesInterlacedERSt6vectorIS0_IhSaIhEESaIS2_EERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %.not23 = icmp eq i32 %i.q, 0
  br i1 %.not23, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.29, i64 noundef 26)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.d
  %i.s = load ptr, ptr @_ZSt4cout, align 8, !tbaa !8
  %i.t = getelementptr i8, ptr %i.s, i64 -24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 240
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !10   ; 5 uses
  %.not.i.i.i34 = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i34, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %i.z = load i8, ptr %i.y, align 8, !tbaa !28
  %.not.i1.i.i = icmp eq i8 %i.z, 0
  br i1 %.not.i1.i.i, label %bb.e, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i64.invoke.sink.split

bb.e:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.x)
          to label %.noexc67.invoke unwind label %bb.f

bb.f:                                             ; preds = %.noexc67.invoke, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i64.invoke, %.invoke, %.noexc69.invoke, %bb.q, %.noexc47, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i42, %.noexc45, %bb.j, %bb.e, %bb.p, %bb.h, %bb.d, %bb.b
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.g:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !155
  %i.ad = load ptr, ptr %2, align 8, !tbaa !158
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = icmp eq i64 %i.ag, 168
  br i1 %i.ah, label %bb.h, label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.ai = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.30, i64 noundef 32)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit27 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit27: ; preds = %bb.h
  %i.aj = load ptr, ptr @_ZSt4cout, align 8, !tbaa !8
  %i.ak = getelementptr i8, ptr %i.aj, i64 -24
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.al
end_hunk_1
begin_hunk_2_@_Z14showColorStatsR4DataRK7Options:bb.a
  br i1 %i.g, label %bb.b, label %_ZN4Data10loadPixelsEv.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.i = load i8, ptr %i.h, align 4, !tbaa !78, !range !75, !noundef !76
  %i.j = trunc nuw i8 %i.i to i1
  %_ZSt3hexRSt8ios_base._ZSt3decRSt8ios_base = select i1 %i.j, ptr @_ZSt3hexRSt8ios_base, ptr @_ZSt3decRSt8ios_base
  %i.k = load ptr, ptr @_ZSt4cout, align 8, !tbaa !8
  %i.l = getelementptr i8, ptr %i.k, i64 -24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.m
  %i.o = tail call noundef nonnull align 8 dereferenceable(216) ptr %_ZSt3hexRSt8ios_base._ZSt3decRSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.n), !inline_history !82 ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 4 uses
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !36
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !36
  %i.v = icmp eq ptr %i.s, %i.u
  br i1 %i.v, label %bb.c, label %._ZN4Data10loadPixelsEv.exit_crit_edge

._ZN4Data10loadPixelsEv.exit_crit_edge:           ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 728
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !77
  br label %_ZN4Data10loadPixelsEv.exit

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !36
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !36
  %i.aa = icmp eq ptr %i.x, %i.z
  br i1 %i.aa, label %_ZN4Data8loadFileEv.exit.i.i, label %.thread.i

.thread.i:                                        ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 728 ; 2 uses
  store i32 0, ptr %i.ab, align 8, !tbaa !77
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 732
  store i8 1, ptr %i.ac, align 4, !tbaa !115
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i32 6, ptr %i.ad, align 8, !tbaa !186
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 260
  store i32 16, ptr %i.ae, align 4, !tbaa !170
  br label %_ZNSt6vectorIhSaIhEE5clearEv.exit.i.i

_ZN4Data8loadFileEv.exit.i.i:                     ; preds = %bb.c
  %i.af = tail call noundef i32 @_ZN7lodepng9load_fileERSt6vectorIhSaIhEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(736) %0) ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 728 ; 3 uses
  store i32 %i.af, ptr %i.ag, align 8, !tbaa !77
  %.not.i.i = icmp eq i32 %i.af, 0
  br i1 %.not.i.i, label %bb.d, label %_ZN4Data10loadPixelsEv.exit.thread

bb.d:                                             ; preds = %_ZN4Data8loadFileEv.exit.i.i
  %.pre.i = load ptr, ptr %i.p, align 8, !tbaa !117 ; 2 uses
  %.pre1.i = load ptr, ptr %i.t, align 8, !tbaa !116
  %i.ah = icmp eq ptr %.pre1.i, %.pre.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 732
  store i8 1, ptr %i.ai, align 4, !tbaa !115
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i32 6, ptr %i.aj, align 8, !tbaa !186
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 260
  store i32 16, ptr %i.ak, align 4, !tbaa !170
  br i1 %i.ah, label %_ZNSt6vectorIhSaIhEE5clearEv.exit.i.i, label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i.i:    ; preds = %bb.d
  store ptr %.pre.i, ptr %i.t, align 8, !tbaa !116
  br label %_ZNSt6vectorIhSaIhEE5clearEv.exit.i.i

_ZNSt6vectorIhSaIhEE5clearEv.exit.i.i:            ; preds = %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i.i, %bb.d, %.thread.i
  %i.al = phi ptr [ %i.ab, %.thread.i ], [ %i.ag, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i.i ], [ %i.ag, %bb.d ]
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.an = tail call noundef i32 @_ZN7lodepng6decodeERSt6vectorIhSaIhEERjS4_RNS_5StateERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 4 dereferenceable(4) %i.q, ptr noundef nonnull align 4 dereferenceable(4) %i.r, ptr noundef nonnull align 8 dereferenceable(640) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %i.w) ; 2 uses
  store i32 %i.an, ptr %i.al, align 8, !tbaa !77
  br label %_ZN4Data10loadPixelsEv.exit

_ZN4Data10loadPixelsEv.exit:                      ; preds = %._ZN4Data10loadPixelsEv.exit_crit_edge, %_ZNSt6vectorIhSaIhEE5clearEv.exit.i.i
  %i.ao = phi i32 [ %.pre, %._ZN4Data10loadPixelsEv.exit_crit_edge ], [ %i.an, %_ZNSt6vectorIhSaIhEE5clearEv.exit.i.i ]
  %.not = icmp eq i32 %i.ao, 0
  br i1 %.not, label %bb.e, label %_ZN4Data10loadPixelsEv.exit.thread

bb.e:                                             ; preds = %_ZN4Data10loadPixelsEv.exit
  %i.ap = load i8, ptr %1, align 4, !tbaa !237, !range !75, !noundef !76
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.ar = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.168, i64 noundef 12) ; 0 uses
  %i.as = load i32, ptr %i.q, align 8, !tbaa !127
  %i.at = load i32, ptr %i.r, align 4, !tbaa !127
  %i.au = mul i32 %i.at, %i.as
  %i.av = zext i32 %i.au to i64
  %i.aw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i64 noundef %i.av) ; 3 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !8
  %i.ay = getelementptr i8, ptr %i.ax, i64 -24
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds i8, ptr %i.aw, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 240
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !10 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i, label %bb.g, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt16__throw_bad_castv() #25
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.f
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 56
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !28
  %.not.i1.i.i = icmp eq i8 %i.be, 0
  br i1 %.not.i1.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 67
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !34
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.i:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bc)
  %i.bh = load ptr, ptr %i.bc, align 8, !tbaa !8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = tail call noundef signext i8 %i.bj(ptr noundef nonnull align 8 dereferenceable(570) %i.bc, i8 noundef signext 10), !inline_history !35
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.h, %bb.i
  %.0.i.i.i = phi i8 [ %i.bg, %bb.h ], [ %i.bk, %bb.i ]
  %i.bl = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, i8 noundef signext %.0.i.i.i)
  %i.bm = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bl) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  %i.bn = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.169, i64 noundef 19) ; 0 uses
  %i.bo = load i32, ptr %i.q, align 8, !tbaa !127
  %i.bp = load i32, ptr %i.r, align 4, !tbaa !127
  %i.bq = call noundef i64 @_Z11countColorsRKSt6vectorIhSaIhEEjjPmS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i32 noundef %i.bo, i32 noundef %i.bp, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d)
  %i.br = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i64 noundef %i.bq) ; 0 uses
  %i.bs = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.170, i64 noundef 5) ; 0 uses
  %i.bt = load i64, ptr %i.a, align 8, !tbaa !87
  %i.bu = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i64 noundef %i.bt) ; 2 uses
  %i.bv = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bu, ptr noundef nonnull @.str.143, i64 noundef 5) ; 0 uses
  %i.bw = load i64, ptr %i.b, align 8, !tbaa !87
  %i.bx = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bu, i64 noundef %i.bw) ; 2 uses
  %i.by = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bx, ptr noundef nonnull @.str.144, i64 noundef 5) ; 0 uses
  %i.bz = load i64, ptr %i.c, align 8, !tbaa !87
  %i.ca = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bx, i64 noundef %i.bz) ; 2 uses
  %i.cb = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ca, ptr noundef nonnull @.str.171, i64 noundef 5) ; 0 uses
  %i.cc = load i64, ptr %i.d, align 8, !tbaa !87
  %i.cd = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ca, i64 noundef %i.cc)
  %i.ce = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cd, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %i.cf = load ptr, ptr @_ZSt4cout, align 8, !tbaa !8
  %i.cg = getelementptr i8, ptr %i.cf, i64 -24
  %i.ch = load i64, ptr %i.cg, align 8
  %i.ci = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 240
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !10 ; 6 uses
  %.not.i.i.i52 = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i52, label %bb.k, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i53

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt16__throw_bad_castv() #25
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i53: ; preds = %bb.j
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 56
  %i.cm = load i8, ptr %i.cl, align 8, !tbaa !28
  %.not.i1.i.i54 = icmp eq i8 %i.cm, 0
  br i1 %.not.i1.i.i54, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i53
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 67
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !34
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit56

bb.m:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i53
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ck)
  %i.cp = load ptr, ptr %i.ck, align 8, !tbaa !8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 48
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = tail call noundef signext i8 %i.cr(ptr noundef nonnull align 8 dereferenceable(570) %i.ck, i8 noundef signext 10), !inline_history !35
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit56

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit56: ; preds = %bb.l, %bb.m
  %.0.i.i.i55 = phi i8 [ %i.co, %bb.l ], [ %i.cs, %bb.m ]
  %i.ct = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i55)
  %i.cu = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ct) ; 0 uses
  %i.cv = load i32, ptr %i.q, align 8, !tbaa !127 ; 4 uses
  %.not49 = icmp eq i32 %i.cv, 0
  br i1 %.not49, label %bb.ab, label %bb.n

bb.n:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit56
  %i.cw = load i32, ptr %i.r, align 4, !tbaa !127 ; 3 uses
  %.not50 = icmp eq i32 %i.cw, 0
  br i1 %.not50, label %bb.ab, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cx = load ptr, ptr %i.p, align 8, !tbaa !117 ; 8 uses
  %wide.trip.count = zext i32 %i.cv to i64
  br label %.preheader77

.preheader77:                                     ; preds = %bb.o, %bb.p
  %.sroa.13103.1 = phi double [ 9.999990e+05, %bb.o ], [ %.sroa.speculated75.2, %bb.p ]
  %.sroa.097.1 = phi double [ 9.999990e+05, %bb.o ], [ %.sroa.speculated75, %bb.p ]
  %.sroa.0.1 = phi double [ 0.000000e+00, %bb.o ], [ %.sroa.speculated, %bb.p ]
  %.sroa.13.1 = phi double [ 0.000000e+00, %bb.o ], [ %.sroa.speculated.2, %bb.p ]
  %.04880 = phi i32 [ 0, %bb.o ], [ %2, %bb.p ]   ; 2 uses
  %i.cy = phi <2 x double> [ <double 9.999990e+05, double 0.000000e+00>, %bb.o ], [ %i.fx, %bb.p ]
  %i.cz = phi <2 x double> [ <double 9.999990e+05, double 0.000000e+00>, %bb.o ], [ %i.gj, %bb.p ]
  %i.da = phi <4 x double> [ zeroinitializer, %bb.o ], [ %i.ge, %bb.p ]
  %i.db = mul i32 %.04880, %i.cv
  br label %.preheader76

.preheader:                                       ; preds = %bb.p
  %i.dc = mul i32 %i.cw, %i.cv
  %i.dd = uitofp i32 %i.dc to double
  %i.de = fmul nnan double %i.dd, 2.570000e+02    ; 4 uses
  %i.df = extractelement <4 x double> %i.ge, i64 0
  %i.dg = fdiv double %i.df, %i.de
  %i.dh = fdiv double %.sroa.speculated75, 2.570000e+02
  %i.di = fdiv double %.sroa.speculated, 2.570000e+02
  %i.dj = extractelement <4 x double> %i.ge, i64 1
  %i.dk = fdiv double %i.dj, %i.de
  %i.dl = fdiv <2 x double> %i.fx, splat (double 2.570000e+02) ; 2 uses
  %i.dm = extractelement <4 x double> %i.ge, i64 2
  %i.dn = fdiv double %i.dm, %i.de
  %i.do = fdiv double %.sroa.speculated75.2, 2.570000e+02
  %i.dp = fdiv double %.sroa.speculated.2, 2.570000e+02
  %i.dq = extractelement <4 x double> %i.ge, i64 3
  %i.dr = fdiv double %i.dq, %i.de
  %i.ds = fdiv <2 x double> %i.gj, splat (double 2.570000e+02) ; 2 uses
  %i.dt = load i8, ptr %1, align 4, !tbaa !237, !range !75, !noundef !76
  %i.du = trunc nuw i8 %i.dt to i1
  br i1 %i.du, label %bb.q, label %bb.u

.preheader76:                                     ; preds = %.preheader77, %.preheader76
  %.sroa.13103.0 = phi double [ %.sroa.13103.1, %.preheader77 ], [ %.sroa.speculated75.2, %.preheader76 ] ; 2 uses
  %.sroa.097.0 = phi double [ %.sroa.097.1, %.preheader77 ], [ %.sroa.speculated75, %.preheader76 ] ; 2 uses
  %.sroa.0.0 = phi double [ %.sroa.0.1, %.preheader77 ], [ %.sroa.speculated, %.preheader76 ] ; 2 uses
  %.sroa.13.0 = phi double [ %.sroa.13.1, %.preheader77 ], [ %.sroa.speculated.2, %.preheader76 ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.preheader77 ], [ %indvars.iv.next, %.preheader76 ] ; 2 uses
  %i.dv = phi <2 x double> [ %i.cy, %.preheader77 ], [ %i.fx, %.preheader76 ] ; 3 uses
  %i.dw = phi <2 x double> [ %i.cz, %.preheader77 ], [ %i.gj, %.preheader76 ] ; 3 uses
  %i.dx = phi <4 x double> [ %i.da, %.preheader77 ], [ %i.ge, %.preheader76 ]
  %i.dy = trunc nuw i64 %indvars.iv to i32
  %reass.add = add i32 %i.db, %i.dy
  %reass.mul = shl i32 %reass.add, 3
  %i.dz = zext i32 %reass.mul to i64              ; 8 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.dz
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.dz
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 1
  %i.ed = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.dz
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 2
  %i.ef = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.dz
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 3
  %i.eh = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.dz
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 4
  %i.ej = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.dz
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 5
  %i.el = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.dz
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 6
  %i.en = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.dz
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 7
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !34
  %i.eq = load i8, ptr %i.em, align 1, !tbaa !34
  %i.er = load i8, ptr %i.ek, align 1, !tbaa !34
  %i.es = load i8, ptr %i.ei, align 1, !tbaa !34
  %i.et = load i8, ptr %i.eg, align 1, !tbaa !34
  %i.eu = load i8, ptr %i.ee, align 1, !tbaa !34
  %i.ev = load i8, ptr %i.ec, align 1, !tbaa !34
  %i.ew = load i8, ptr %i.ea, align 1, !tbaa !34
  %i.ex = zext i8 %i.eq to i32
  %i.ey = zext i8 %i.es to i32
  %i.ez = zext i8 %i.eu to i32
  %i.fa = zext i8 %i.ew to i32
  %i.fb = shl nuw nsw i32 %i.ex, 8
  %i.fc = shl nuw nsw i32 %i.ey, 8
  %i.fd = shl nuw nsw i32 %i.ez, 8
  %i.fe = shl nuw nsw i32 %i.fa, 8
  %i.ff = zext i8 %i.ep to i32
  %i.fg = zext i8 %i.er to i32
  %i.fh = zext i8 %i.et to i32
  %i.fi = zext i8 %i.ev to i32
  %i.fj = or disjoint i32 %i.fb, %i.ff
  %i.fk = or disjoint i32 %i.fc, %i.fg
  %i.fl = or disjoint i32 %i.fd, %i.fh
  %i.fm = or disjoint i32 %i.fe, %i.fi
  %i.fn = uitofp nneg i32 %i.fj to double         ; 3 uses
  %i.fo = uitofp nneg i32 %i.fk to double         ; 5 uses
  %i.fp = uitofp nneg i32 %i.fl to double         ; 3 uses
  %i.fq = uitofp nneg i32 %i.fm to double         ; 5 uses
  %i.fr = fcmp ogt double %.sroa.097.0, %i.fq
  %.sroa.speculated75 = select i1 %i.fr, double %i.fq, double %.sroa.097.0 ; 3 uses
  %i.fs = fcmp olt double %.sroa.0.0, %i.fq
  %.sroa.speculated = select i1 %i.fs, double %i.fq, double %.sroa.0.0 ; 3 uses
  %i.ft = insertelement <2 x double> %i.dv, double %i.fp, i64 1 ; 2 uses
  %i.fu = insertelement <2 x double> %i.dv, double %i.fp, i64 0
  %i.fv = fcmp ogt <2 x double> %i.ft, %i.fu
  %i.fw = shufflevector <2 x double> %i.ft, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.fx = select <2 x i1> %i.fv, <2 x double> %i.fw, <2 x double> %i.dv ; 3 uses
  %i.fy = fcmp ogt double %.sroa.13103.0, %i.fo
  %.sroa.speculated75.2 = select i1 %i.fy, double %i.fo, double %.sroa.13103.0 ; 3 uses
  %i.fz = fcmp olt double %.sroa.13.0, %i.fo
  %.sroa.speculated.2 = select i1 %i.fz, double %i.fo, double %.sroa.13.0 ; 3 uses
  %i.ga = insertelement <4 x double> poison, double %i.fq, i64 0
  %i.gb = insertelement <4 x double> %i.ga, double %i.fp, i64 1
  %i.gc = insertelement <4 x double> %i.gb, double %i.fo, i64 2
  %i.gd = insertelement <4 x double> %i.gc, double %i.fn, i64 3
  %i.ge = fadd <4 x double> %i.dx, %i.gd          ; 6 uses
  %i.gf = insertelement <2 x double> %i.dw, double %i.fn, i64 1 ; 2 uses
  %i.gg = insertelement <2 x double> %i.dw, double %i.fn, i64 0
  %i.gh = fcmp ogt <2 x double> %i.gf, %i.gg
  %i.gi = shufflevector <2 x double> %i.gf, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.gj = select <2 x i1> %i.gh, <2 x double> %i.gi, <2 x double> %i.dw ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.p, label %.preheader76, !llvm.loop !310

bb.p:                                             ; preds = %.preheader76
  %2 = add nuw i32 %.04880, 1                     ; 2 uses
  %exitcond84.not = icmp eq i32 %2, %i.cw
  br i1 %exitcond84.not, label %.preheader, label %.preheader77, !llvm.loop !311

bb.q:                                             ; preds = %.preheader
  %i.gk = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.172, i64 noundef 48) ; 0 uses
  %i.gl = load ptr, ptr @_ZSt4cout, align 8, !tbaa !8
  %i.gm = getelementptr i8, ptr %i.gl, i64 -24
  %i.gn = load i64, ptr %i.gm, align 8
  %i.go = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.gn
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 240
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !10 ; 6 uses
  %.not.i.i.i57 = icmp eq ptr %i.gq, null
  br i1 %.not.i.i.i57, label %bb.r, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i58

bb.r:                                             ; preds = %bb.q
  tail call void @_ZSt16__throw_bad_castv() #25
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i58: ; preds = %bb.q
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 56
  %i.gs = load i8, ptr %i.gr, align 8, !tbaa !28
  %.not.i1.i.i59 = icmp eq i8 %i.gs, 0
  br i1 %.not.i1.i.i59, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i58
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gq, i64 67
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !34
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit61

bb.t:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i58
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.gq)
  %i.gv = load ptr, ptr %i.gq, align 8, !tbaa !8
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 48
  %i.gx = load ptr, ptr %i.gw, align 8
  %i.gy = tail call noundef signext i8 %i.gx(ptr noundef nonnull align 8 dereferenceable(570) %i.gq, i8 noundef signext 10), !inline_history !35
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit61

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit61: ; preds = %bb.s, %bb.t
  %.0.i.i.i60 = phi i8 [ %i.gu, %bb.s ], [ %i.gy, %bb.t ]
  %i.gz = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i60)
  %i.ha = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.gz) ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit61, %.preheader
  %i.hb = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.173, i64 noundef 15) ; 0 uses
  %i.hc = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, double noundef %i.dg) ; 2 uses
  %i.hd = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hc, ptr noundef nonnull @.str.39, i64 noundef 2) ; 0 uses
  %i.he = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.hc, double noundef %i.dk) ; 2 uses
  %i.hf = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.he, ptr noundef nonnull @.str.39, i64 noundef 2) ; 0 uses
  %i.hg = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.he, double noundef %i.dn) ; 2 uses
  %i.hh = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hg, ptr noundef nonnull @.str.39, i64 noundef 2) ; 0 uses
  %i.hi = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.hg, double noundef %i.dr) ; 3 uses
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !8
  %i.hk = getelementptr i8, ptr %i.hj, i64 -24
  %i.hl = load i64, ptr %i.hk, align 8
  %i.hm = getelementptr inbounds i8, ptr %i.hi, i64 %i.hl
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 240
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !10 ; 6 uses
  %.not.i.i.i62 = icmp eq ptr %i.ho, null
  br i1 %.not.i.i.i62, label %bb.v, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i63

bb.v:                                             ; preds = %bb.u
  tail call void @_ZSt16__throw_bad_castv() #25
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i63: ; preds = %bb.u
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 56
  %i.hq = load i8, ptr %i.hp, align 8, !tbaa !28
  %.not.i1.i.i64 = icmp eq i8 %i.hq, 0
  br i1 %.not.i1.i.i64, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i63
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ho, i64 67
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !34
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit66

bb.x:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i63
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ho)
  %i.ht = load ptr, ptr %i.ho, align 8, !tbaa !8
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 48
  %i.hv = load ptr, ptr %i.hu, align 8
  %i.hw = tail call noundef signext i8 %i.hv(ptr noundef nonnull align 8 dereferenceable(570) %i.ho, i8 noundef signext 10), !inline_history !35
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit66

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit66: ; preds = %bb.w, %bb.x
  %.0.i.i.i65 = phi i8 [ %i.hs, %bb.w ], [ %i.hw, %bb.x ]
  %i.hx = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.hi, i8 noundef signext %.0.i.i.i65)
  %i.hy = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.hx) ; 0 uses
  %i.hz = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.174, i64 noundef 14) ; 0 uses
  %i.ia = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, double noundef %i.dh) ; 2 uses
  %i.ib = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ia, ptr noundef nonnull @.str.175, i64 noundef 1) ; 0 uses
  %i.ic = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ia, double noundef %i.di) ; 2 uses
  %i.id = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ic, ptr noundef nonnull @.str.39, i64 noundef 2) ; 0 uses
  %i.ie = extractelement <2 x double> %i.dl, i64 0
  %i.if = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ic, double noundef %i.ie) ; 2 uses
  %i.ig = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.if, ptr noundef nonnull @.str.175, i64 noundef 1) ; 0 uses
  %i.ih = extractelement <2 x double> %i.dl, i64 1
  %i.ii = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.if, double noundef %i.ih) ; 2 uses
  %i.ij = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ii, ptr noundef nonnull @.str.39, i64 noundef 2) ; 0 uses
  %i.ik = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ii, double noundef %i.do) ; 2 uses
  %i.il = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ik, ptr noundef nonnull @.str.175, i64 noundef 1) ; 0 uses
  %i.im = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ik, double noundef %i.dp) ; 2 uses
  %i.in = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.im, ptr noundef nonnull @.str.39, i64 noundef 2) ; 0 uses
  %i.io = extractelement <2 x double> %i.ds, i64 0
  %i.ip = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.im, double noundef %i.io) ; 2 uses
  %i.iq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ip, ptr noundef nonnull @.str.175, i64 noundef 1) ; 0 uses
  %i.ir = extractelement <2 x double> %i.ds, i64 1
  %i.is = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ip, double noundef %i.ir) ; 3 uses
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !8
  %i.iu = getelementptr i8, ptr %i.it, i64 -24
  %i.iv = load i64, ptr %i.iu, align 8
  %i.iw = getelementptr inbounds i8, ptr %i.is, i64 %i.iv
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 240
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !10 ; 6 uses
  %.not.i.i.i67 = icmp eq ptr %i.iy, null
  br i1 %.not.i.i.i67, label %bb.y, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i68

bb.y:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit66
  tail call void @_ZSt16__throw_bad_castv() #25
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i68: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit66
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 56
  %i.ja = load i8, ptr %i.iz, align 8, !tbaa !28
  %.not.i1.i.i69 = icmp eq i8 %i.ja, 0
  br i1 %.not.i1.i.i69, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i68
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iy, i64 67
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !34
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit71

bb.aa:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i68
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.iy)
  %i.jd = load ptr, ptr %i.iy, align 8, !tbaa !8
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 48
  %i.jf = load ptr, ptr %i.je, align 8
  %i.jg = tail call noundef signext i8 %i.jf(ptr noundef nonnull align 8 dereferenceable(570) %i.iy, i8 noundef signext 10), !inline_history !35
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit71

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit71: ; preds = %bb.z, %bb.aa
  %.0.i.i.i70 = phi i8 [ %i.jc, %bb.z ], [ %i.jg, %bb.aa ]
  %i.jh = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.is, i8 noundef signext %.0.i.i.i70)
  %i.ji = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.jh) ; 0 uses
  br label %bb.ab

bb.ab:                                            ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit71, %bb.n, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %_ZN4Data10loadPixelsEv.exit.thread

_ZN4Data10loadPixelsEv.exit.thread:               ; preds = %_ZN4Data8loadFileEv.exit.i.i, %bb.ab, %_ZN4Data10loadPixelsEv.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress uwtable
define void @_Z10showErrorsRK4DataRK7Options(ptr noundef nonnull align 8 dereferenceable(736) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(37) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %struct.Data, align 8               ; 13 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.176, i64 noundef 14) ; 0 uses
  %i.b = load ptr, ptr @_ZSt4cout, align 8, !tbaa !8
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 240
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !10   ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %bb.b, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt16__throw_bad_castv() #25
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.i = load i8, ptr %i.h, align 8, !tbaa !28
  %.not.i1.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i1.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 67
  %i.k = load i8, ptr %i.j, align 1, !tbaa !34
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.g)
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef signext i8 %i.n(ptr noundef nonnull align 8 dereferenceable(570) %i.g, i8 noundef signext 10), !inline_history !35
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.c, %bb.d
end_hunk_2
