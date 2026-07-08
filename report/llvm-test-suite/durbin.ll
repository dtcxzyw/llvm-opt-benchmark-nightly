inline.NumInlined: 13
inline.NumDeleted: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@main:bb.a
  %i.ci = xor i64 %index78, -1
  %i.cj = getelementptr [8 x i8], ptr %i.cf, i64 %i.ci ; 2 uses
  %i.ck = getelementptr i8, ptr %i.cj, i64 -8
  %i.cl = getelementptr i8, ptr %i.cj, i64 -24
  %wide.load80 = load <2 x double>, ptr %i.ck, align 8, !tbaa !8
  %wide.load81 = load <2 x double>, ptr %i.cl, align 8, !tbaa !8
  %reverse = shufflevector <2 x double> %wide.load80, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %reverse82 = shufflevector <2 x double> %wide.load81, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.cm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %reverse, <2 x double> %wide.load)
  %i.cn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %reverse82, <2 x double> %wide.load79)
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index78 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  store <2 x double> %i.cm, ptr %i.co, align 16, !tbaa !8
  store <2 x double> %i.cn, ptr %i.cp, align 16, !tbaa !8
  %index.next83 = add nuw i64 %index78, 4         ; 2 uses
  %i.cq = icmp eq i64 %index.next83, %n.vec
  br i1 %i.cq, label %middle.block84, label %vector.body77, !llvm.loop !21

middle.block84:                                   ; preds = %vector.body77
  %cmp.n = icmp eq i64 %indvars.iv60.i, %n.vec
  br i1 %cmp.n, label %.preheader.preheader.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.epilog-lcssa, %middle.block84
  %indvars.iv52.i.ph = phi i64 [ 0, %.epilog-lcssa ], [ %n.vec, %middle.block84 ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv52.i = phi i64 [ %indvars.iv.next53.i, %scalar.ph ], [ %indvars.iv52.i.ph, %scalar.ph.preheader ] ; 4 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv52.i
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !8
  %i.ct = xor i64 %indvars.iv52.i, -1
  %i.cu = getelementptr [8 x i8], ptr %i.cf, i64 %i.ct
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !8
  %i.cw = call double @llvm.fmuladd.f64(double %i.ce, double %i.cv, double %i.cs)
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv52.i
  store double %i.cw, ptr %i.cx, align 8, !tbaa !8
  %indvars.iv.next53.i = add nuw nsw i64 %indvars.iv52.i, 1 ; 2 uses
  %exitcond56.not.i = icmp eq i64 %indvars.iv.next53.i, %indvars.iv60.i
  br i1 %exitcond56.not.i, label %.preheader.preheader.i, label %scalar.ph, !llvm.loop !22

.preheader.preheader.i:                           ; preds = %scalar.ph, %middle.block84
  %i.cy = shl nuw nsw i64 %indvar.i, 3
  %i.cz = add nuw nsw i64 %i.cy, 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.m, ptr noundef nonnull align 16 dereferenceable(1) %i.b, i64 %i.cz, i1 false), !tbaa !8
  store double %i.ce, ptr %i.cf, align 8, !tbaa !8
  %indvars.iv.next61.i = add nuw nsw i64 %indvars.iv60.i, 1
  %indvar.next.i = add nuw nsw i64 %indvar.i, 1   ; 2 uses
  %exitcond63.not.i = icmp eq i64 %indvar.next.i, 1999
  br i1 %exitcond63.not.i, label %kernel_durbin.exit, label %bb.e, !llvm.loop !23

kernel_durbin.exit:                               ; preds = %.preheader.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %vector.body87

vector.body87:                                    ; preds = %vector.body87, %kernel_durbin.exit
  %index88 = phi i64 [ 0, %kernel_durbin.exit ], [ %index.next91.1, %vector.body87 ] ; 3 uses
  %vec.ind89 = phi <2 x i32> [ <i32 0, i32 1>, %kernel_durbin.exit ], [ %vec.ind.next92.1, %vector.body87 ] ; 5 uses
  %i.da = sub <2 x i32> splat (i32 2001), %vec.ind89
  %i.db = sub <2 x i32> splat (i32 1999), %vec.ind89
  %i.dc = uitofp nneg <2 x i32> %i.da to <2 x double>
  %i.dd = uitofp nneg <2 x i32> %i.db to <2 x double>
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %index88 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  store <2 x double> %i.dc, ptr %i.de, align 8, !tbaa !8
  store <2 x double> %i.dd, ptr %i.df, align 8, !tbaa !8
  %i.dg = sub <2 x i32> splat (i32 1997), %vec.ind89
  %i.dh = sub <2 x i32> splat (i32 1995), %vec.ind89
  %i.di = uitofp nneg <2 x i32> %i.dg to <2 x double>
  %i.dj = uitofp nneg <2 x i32> %i.dh to <2 x double>
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %index88 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 32
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 48
  store <2 x double> %i.di, ptr %i.dl, align 8, !tbaa !8
  store <2 x double> %i.dj, ptr %i.dm, align 8, !tbaa !8
  %index.next91.1 = add nuw nsw i64 %index88, 8   ; 2 uses
  %vec.ind.next92.1 = add <2 x i32> %vec.ind89, splat (i32 8)
  %i.dn = icmp eq i64 %index.next91.1, 2000
  br i1 %i.dn, label %init_array.exit28, label %vector.body87, !llvm.loop !24

init_array.exit28:                                ; preds = %vector.body87
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.do = load double, ptr %i.g, align 8, !tbaa !8
  %i.dp = fneg double %i.do
  store double %i.dp, ptr %i.s, align 8, !tbaa !8
  %i.dq = load double, ptr %i.g, align 8, !tbaa !8
  %i.dr = fneg double %i.dq
  br label %bb.h

bb.h:                                             ; preds = %.preheader.preheader.i40, %init_array.exit28
  %indvars.iv60.i29 = phi i64 [ 1, %init_array.exit28 ], [ %indvars.iv.next61.i41, %.preheader.preheader.i40 ] ; 9 uses
  %indvar.i30 = phi i64 [ 0, %init_array.exit28 ], [ %indvar.next.i42, %.preheader.preheader.i40 ] ; 3 uses
  %.04249.i31 = phi double [ 1.000000e+00, %init_array.exit28 ], [ %i.fi, %.preheader.preheader.i40 ]
  %.04348.i32 = phi double [ %i.dr, %init_array.exit28 ], [ %i.fm, %.preheader.preheader.i40 ] ; 2 uses
  %i.ds = getelementptr [8 x i8], ptr %i.g, i64 %indvars.iv60.i29 ; 6 uses
  %xtraiter124 = and i64 %indvars.iv60.i29, 3     ; 3 uses
  %i.dt = icmp samesign ult i64 %indvar.i30, 3
  br i1 %i.dt, label %.epil.preheader123, label %.new121

.new121:                                          ; preds = %bb.h
  %unroll_iter130 = and i64 %indvars.iv60.i29, 9223372036854775804
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.new121
  %indvars.iv.i33 = phi i64 [ 0, %.new121 ], [ %indvars.iv.next.i35.3, %bb.i ] ; 9 uses
  %.04144.i34 = phi double [ 0.000000e+00, %.new121 ], [ %i.ey, %bb.i ]
  %niter131 = phi i64 [ 0, %.new121 ], [ %niter131.next.3, %bb.i ]
  %i.du = xor i64 %indvars.iv.i33, -1
  %i.dv = getelementptr [8 x i8], ptr %i.ds, i64 %i.du
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !8
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.i33
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !8
  %i.dz = fmul double %i.dw, %i.dy
  %i.ea = fadd double %.04144.i34, %i.dz
  %i.eb = xor i64 %indvars.iv.i33, -2
  %i.ec = getelementptr [8 x i8], ptr %i.ds, i64 %i.eb
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !8
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.i33
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !8
  %i.eh = fmul double %i.ed, %i.eg
  %i.ei = fadd double %i.ea, %i.eh
  %i.ej = xor i64 %indvars.iv.i33, -3
  %i.ek = getelementptr [8 x i8], ptr %i.ds, i64 %i.ej
  %i.el = load double, ptr %i.ek, align 8, !tbaa !8
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.i33
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %i.eo = load double, ptr %i.en, align 8, !tbaa !8
  %i.ep = fmul double %i.el, %i.eo
  %i.eq = fadd double %i.ei, %i.ep
  %i.er = xor i64 %indvars.iv.i33, -4
  %i.es = getelementptr [8 x i8], ptr %i.ds, i64 %i.er
  %i.et = load double, ptr %i.es, align 8, !tbaa !8
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.i33
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 24
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !8
  %i.ex = fmul double %i.et, %i.ew
  %i.ey = fadd double %i.eq, %i.ex                ; 3 uses
  %indvars.iv.next.i35.3 = add nuw nsw i64 %indvars.iv.i33, 4 ; 2 uses
  %niter131.next.3 = add i64 %niter131, 4         ; 2 uses
  %niter131.ncmp.3 = icmp eq i64 %niter131.next.3, %unroll_iter130
  br i1 %niter131.ncmp.3, label %.unr-lcssa122, label %bb.i, !llvm.loop !25

.unr-lcssa122:                                    ; preds = %bb.i
  %lcmp.mod126.not = icmp eq i64 %xtraiter124, 0
  br i1 %lcmp.mod126.not, label %.epilog-lcssa127, label %.epil.preheader123

.epil.preheader123:                               ; preds = %.unr-lcssa122, %bb.h
  %indvars.iv.i33.epil.init = phi i64 [ 0, %bb.h ], [ %indvars.iv.next.i35.3, %.unr-lcssa122 ]
  %.04144.i34.epil.init = phi double [ 0.000000e+00, %bb.h ], [ %i.ey, %.unr-lcssa122 ]
  %lcmp.mod129 = icmp ne i64 %xtraiter124, 0
  call void @llvm.assume(i1 %lcmp.mod129)
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.epil.preheader123
  %indvars.iv.i33.epil = phi i64 [ %indvars.iv.i33.epil.init, %.epil.preheader123 ], [ %indvars.iv.next.i35.epil, %bb.j ] ; 3 uses
  %.04144.i34.epil = phi double [ %.04144.i34.epil.init, %.epil.preheader123 ], [ %i.ff, %bb.j ]
  %epil.iter125 = phi i64 [ 0, %.epil.preheader123 ], [ %epil.iter125.next, %bb.j ]
  %i.ez = xor i64 %indvars.iv.i33.epil, -1
  %i.fa = getelementptr [8 x i8], ptr %i.ds, i64 %i.ez
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !8
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.i33.epil
  %i.fd = load double, ptr %i.fc, align 8, !tbaa !8
  %i.fe = fmul double %i.fb, %i.fd
  %i.ff = fadd double %.04144.i34.epil, %i.fe     ; 2 uses
  %indvars.iv.next.i35.epil = add nuw nsw i64 %indvars.iv.i33.epil, 1
  %epil.iter125.next = add i64 %epil.iter125, 1   ; 2 uses
  %epil.iter125.cmp.not = icmp eq i64 %epil.iter125.next, %xtraiter124
  br i1 %epil.iter125.cmp.not, label %.epilog-lcssa127, label %bb.j, !llvm.loop !26

.epilog-lcssa127:                                 ; preds = %bb.j, %.unr-lcssa122
  %.lcssa117 = phi double [ %i.ey, %.unr-lcssa122 ], [ %i.ff, %bb.j ]
  %i.fg = fmul double %.04348.i32, %.04348.i32
  %i.fh = fsub double 1.000000e+00, %i.fg
  %i.fi = fmul double %.04249.i31, %i.fh          ; 2 uses
  %i.fj = load double, ptr %i.ds, align 8, !tbaa !8
  %i.fk = fadd double %.lcssa117, %i.fj
  %i.fl = fneg double %i.fk
  %i.fm = fdiv double %i.fl, %i.fi                ; 4 uses
  %i.fn = getelementptr [8 x i8], ptr %i.s, i64 %indvars.iv60.i29 ; 3 uses
  %min.iters.check95 = icmp samesign ult i64 %indvars.iv60.i29, 4
  br i1 %min.iters.check95, label %scalar.ph94.preheader, label %vector.ph96

vector.ph96:                                      ; preds = %.epilog-lcssa127
  %n.vec98 = and i64 %indvars.iv60.i29, 9223372036854775804 ; 3 uses
  %broadcast.splatinsert99 = insertelement <2 x double> poison, double %i.fm, i64 0
  %broadcast.splat100 = shufflevector <2 x double> %broadcast.splatinsert99, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body101

vector.body101:                                   ; preds = %vector.body101, %vector.ph96
  %index102 = phi i64 [ 0, %vector.ph96 ], [ %index.next109, %vector.body101 ] ; 4 uses
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %index102 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %wide.load103 = load <2 x double>, ptr %i.fo, align 8, !tbaa !8
  %wide.load104 = load <2 x double>, ptr %i.fp, align 8, !tbaa !8
  %i.fq = xor i64 %index102, -1
  %i.fr = getelementptr [8 x i8], ptr %i.fn, i64 %i.fq ; 2 uses
  %i.fs = getelementptr i8, ptr %i.fr, i64 -8
  %i.ft = getelementptr i8, ptr %i.fr, i64 -24
  %wide.load105 = load <2 x double>, ptr %i.fs, align 8, !tbaa !8
  %wide.load106 = load <2 x double>, ptr %i.ft, align 8, !tbaa !8
  %reverse107 = shufflevector <2 x double> %wide.load105, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %reverse108 = shufflevector <2 x double> %wide.load106, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %2 = fmul <2 x double> %broadcast.splat100, %reverse107
  %3 = fmul <2 x double> %broadcast.splat100, %reverse108
  %i.fu = fadd <2 x double> %wide.load103, %2
  %i.fv = fadd <2 x double> %wide.load104, %3
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index102 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  store <2 x double> %i.fu, ptr %i.fw, align 16, !tbaa !8
  store <2 x double> %i.fv, ptr %i.fx, align 16, !tbaa !8
  %index.next109 = add nuw i64 %index102, 4       ; 2 uses
  %i.fy = icmp eq i64 %index.next109, %n.vec98
  br i1 %i.fy, label %middle.block110, label %vector.body101, !llvm.loop !27

middle.block110:                                  ; preds = %vector.body101
  %cmp.n111 = icmp eq i64 %indvars.iv60.i29, %n.vec98
  br i1 %cmp.n111, label %.preheader.preheader.i40, label %scalar.ph94.preheader

scalar.ph94.preheader:                            ; preds = %.epilog-lcssa127, %middle.block110
  %indvars.iv52.i37.ph = phi i64 [ 0, %.epilog-lcssa127 ], [ %n.vec98, %middle.block110 ]
  br label %scalar.ph94

scalar.ph94:                                      ; preds = %scalar.ph94.preheader, %scalar.ph94
  %indvars.iv52.i37 = phi i64 [ %indvars.iv.next53.i38, %scalar.ph94 ], [ %indvars.iv52.i37.ph, %scalar.ph94.preheader ] ; 4 uses
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv52.i37
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !8
  %i.gb = xor i64 %indvars.iv52.i37, -1
  %i.gc = getelementptr [8 x i8], ptr %i.fn, i64 %i.gb
  %i.gd = load double, ptr %i.gc, align 8, !tbaa !8
  %i.ge = fmul double %i.fm, %i.gd
  %i.gf = fadd double %i.ga, %i.ge
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv52.i37
  store double %i.gf, ptr %i.gg, align 8, !tbaa !8
  %indvars.iv.next53.i38 = add nuw nsw i64 %indvars.iv52.i37, 1 ; 2 uses
  %exitcond56.not.i39 = icmp eq i64 %indvars.iv.next53.i38, %indvars.iv60.i29
  br i1 %exitcond56.not.i39, label %.preheader.preheader.i40, label %scalar.ph94, !llvm.loop !28

.preheader.preheader.i40:                         ; preds = %scalar.ph94, %middle.block110
  %i.gh = shl nuw nsw i64 %indvar.i30, 3
  %i.gi = add nuw nsw i64 %i.gh, 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.s, ptr noundef nonnull align 16 dereferenceable(1) %i.a, i64 %i.gi, i1 false), !tbaa !8
  store double %i.fm, ptr %i.fn, align 8, !tbaa !8
  %indvars.iv.next61.i41 = add nuw nsw i64 %indvars.iv60.i29, 1
  %indvar.next.i42 = add nuw nsw i64 %indvar.i30, 1 ; 2 uses
  %exitcond63.not.i43 = icmp eq i64 %indvar.next.i42, 1999
  br i1 %exitcond63.not.i43, label %kernel_durbin_StrictFP.exit, label %bb.h, !llvm.loop !29

kernel_durbin_StrictFP.exit:                      ; preds = %.preheader.preheader.i40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.k

bb.k:                                             ; preds = %.critedge.i.1, %kernel_durbin_StrictFP.exit
  %indvars.iv.i44 = phi i64 [ 0, %kernel_durbin_StrictFP.exit ], [ %indvars.iv.next.i45.1, %.critedge.i.1 ] ; 5 uses
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.i44
  %i.gk = load double, ptr %i.gj, align 8, !tbaa !8 ; 2 uses
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.i44
  %i.gm = load double, ptr %i.gl, align 8, !tbaa !8 ; 2 uses
  %i.gn = fsub double %i.gk, %i.gm
  %i.go = call double @llvm.fabs.f64(double %i.gn)
  %i.gp = fcmp ule double %i.go, 1.000000e-05
  br i1 %i.gp, label %.critedge.i, label %check_FP.exit.thread

check_FP.exit.thread:                             ; preds = %.critedge.i, %bb.k
  %indvars.iv.i44.lcssa = phi i64 [ %indvars.iv.i44, %bb.k ], [ %indvars.iv.next.i45, %.critedge.i ]
  %.lcssa114 = phi double [ %i.gk, %bb.k ], [ %i.gu, %.critedge.i ]
  %.lcssa = phi double [ %i.gm, %bb.k ], [ %i.gw, %.critedge.i ]
  %i.gq = trunc nuw nsw i64 %indvars.iv.i44.lcssa to i32 ; 2 uses
  %i.gr = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.gs = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gr, ptr noundef nonnull @.str.2, i32 noundef %i.gq, double noundef %.lcssa114, i32 noundef %i.gq, double noundef %.lcssa, double noundef 1.000000e-05) #16 ; 0 uses
  br label %bb.l

.critedge.i:                                      ; preds = %bb.k
  %indvars.iv.next.i45 = or disjoint i64 %indvars.iv.i44, 1 ; 3 uses
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next.i45
  %i.gu = load double, ptr %i.gt, align 8, !tbaa !8 ; 2 uses
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next.i45
  %i.gw = load double, ptr %i.gv, align 8, !tbaa !8 ; 2 uses
  %i.gx = fsub double %i.gu, %i.gw
  %i.gy = call double @llvm.fabs.f64(double %i.gx)
  %i.gz = fcmp ule double %i.gy, 1.000000e-05
  br i1 %i.gz, label %.critedge.i.1, label %check_FP.exit.thread

.critedge.i.1:                                    ; preds = %.critedge.i
  %indvars.iv.next.i45.1 = add nuw nsw i64 %indvars.iv.i44, 2 ; 2 uses
  %exitcond.not.i46.1 = icmp eq i64 %indvars.iv.next.i45.1, 2000
  br i1 %exitcond.not.i46.1, label %check_FP.exit, label %bb.k, !llvm.loop !30

check_FP.exit:                                    ; preds = %.critedge.i.1
  call fastcc void @print_array(ptr noundef %i.s)
  call void @free(ptr noundef %i.g) #13
  call void @free(ptr noundef nonnull %i.m) #13
  call void @free(ptr noundef nonnull %i.s) #13
  br label %bb.l

bb.l:                                             ; preds = %check_FP.exit.thread, %check_FP.exit
  %.0 = phi i32 [ 0, %check_FP.exit ], [ 1, %check_FP.exit.thread ]
  ret i32 %.0
}

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @print_array(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.b = tail call i64 @fwrite(ptr nonnull @.str.3, i64 22, i64 1, ptr %i.a) #14 ; 0 uses
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.d = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #16 ; 0 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.d
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %.lhs.trunc = trunc i64 %indvars.iv to i16
  %i.e = urem i16 %.lhs.trunc, 20
  %i.f = icmp eq i16 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr @stderr, align 8, !tbaa !12
  %fputc = tail call i32 @fputc(i32 10, ptr %i.g) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.j = load double, ptr %i.i, align 8, !tbaa !8
  %i.k = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.h, ptr noundef nonnull @.str.7, double noundef %i.j) #16 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 2000
  br i1 %exitcond.not, label %bb.e, label %bb.b, !llvm.loop !31

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.m = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.5) #16 ; 0 uses
  %i.n = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.o = tail call i64 @fwrite(ptr nonnull @.str.9, i64 22, i64 1, ptr %i.n) #14 ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @posix_memalign(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #10

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nofree nounwind }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind }
attributes #14 = { cold }
attributes #15 = { cold noreturn nounwind }
attributes #16 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"p1 _ZTS8_IO_FILE", !11, i64 0}
!14 = distinct !{!14, !15, !16, !17}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"llvm.loop.isvectorized", i32 1}
end_hunk_0
