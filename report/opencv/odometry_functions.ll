Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/odometry_functions?download=true
inline.NumInlined: 1901
inline.NumDeleted: 589
loop-unroll.NumCompletelyUnrolled: 57
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 62
begin_hunk_0_@_ZN2cv19calcRgbdLsmMatricesERKNS_3MatES2_S2_S2_S2_S2_ddddRS0_S3_NS_21OdometryTransformTypeE:bb.a
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !20
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv147
  %i.by = load float, ptr %i.bx, align 4, !tbaa !23 ; 2 uses
  %i.bz = call noundef float @llvm.fabs.f32(float %i.by)
  %i.ca = fpext float %i.bz to double
  %i.cb = fadd double %6, %i.ca                   ; 2 uses
  %i.cc = fcmp ogt double %i.cb, f0x3CB0000000000000
  %i.cd = fdiv double 1.000000e+00, %i.cb
  %i.ce = select i1 %i.cc, double %i.cd, double 1.000000e+00 ; 2 uses
  %i.cf = fmul double %9, %i.ce
  %i.cg = load i64, ptr %i.am, align 8
  %i.ch = sext i32 %i.bs to i64
  %i.ci = mul i64 %i.cg, %i.ch
  %.sink.idx.i = select i1 %i.aj, i64 0, i64 %i.ci
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.al, i64 %.sink.idx.i
  %i.cj = sext i32 %i.bq to i64
  %i.ck = getelementptr inbounds [16 x i8], ptr %.sink.i, i64 %i.cj ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  %i.cm = load i64, ptr %i.as, align 8
  %i.cn = sext i32 %i.bw to i64                   ; 2 uses
  %i.co = mul i64 %i.cm, %i.cn
  %.sink.idx.i105 = select i1 %i.ap, i64 0, i64 %i.co
  %.sink.i106 = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sink.idx.i105
  %i.cp = sext i32 %i.bu to i64                   ; 2 uses
  %i.cq = getelementptr inbounds [2 x i8], ptr %.sink.i106, i64 %i.cp
  %i.cr = load i16, ptr %i.cq, align 2, !tbaa !60
  %i.cs = load i64, ptr %i.ay, align 8
  %i.ct = mul i64 %i.cs, %i.cn
  %.sink.idx.i107 = select i1 %i.av, i64 0, i64 %i.ct
  %.sink.i108 = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.sink.idx.i107
  %i.cu = getelementptr inbounds [2 x i8], ptr %.sink.i108, i64 %i.cp
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !60
  %i.cw = load float, ptr %i.ck, align 4, !tbaa !23
  %i.cx = fpext float %i.cw to double
  %i.cy = load <2 x float>, ptr %i.cl, align 4, !tbaa !23
  %i.cz = fpext <2 x float> %i.cy to <2 x double> ; 2 uses
  %i.da = load <12 x double>, ptr %23, align 8, !tbaa !71, !noalias !204 ; 8 uses
  %i.db = shufflevector <12 x double> %i.da, <12 x double> poison, <2 x i32> <i32 1, i32 5>
  %i.dc = shufflevector <2 x double> %i.cz, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dd = fmul <2 x double> %i.db, %i.dc
  %i.de = shufflevector <12 x double> %i.da, <12 x double> poison, <2 x i32> <i32 9, i32 1>
  %i.df = fmul <2 x double> %i.de, %i.dc
  %i.dg = shufflevector <12 x double> %i.da, <12 x double> poison, <2 x i32> <i32 0, i32 4>
  %i.dh = insertelement <2 x double> poison, double %i.cx, i64 0
  %i.di = shufflevector <2 x double> %i.dh, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dg, <2 x double> %i.di, <2 x double> %i.dd)
  %i.dk = shufflevector <12 x double> %i.da, <12 x double> poison, <2 x i32> <i32 8, i32 0>
  %i.dl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dk, <2 x double> %i.di, <2 x double> %i.df)
  %i.dm = shufflevector <12 x double> %i.da, <12 x double> poison, <2 x i32> <i32 2, i32 6>
  %i.dn = shufflevector <2 x double> %i.cz, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.do = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dm, <2 x double> %i.dn, <2 x double> %i.dj)
  %i.dp = shufflevector <12 x double> %i.da, <12 x double> poison, <2 x i32> <i32 10, i32 2>
  %i.dq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dp, <2 x double> %i.dn, <2 x double> %i.dl)
  %i.dr = shufflevector <12 x double> %i.da, <12 x double> poison, <2 x i32> <i32 3, i32 7>
  %i.ds = fadd <2 x double> %i.dr, %i.do          ; 4 uses
  %i.dt = shufflevector <12 x double> %i.da, <12 x double> poison, <2 x i32> <i32 11, i32 3>
  %i.du = fadd <2 x double> %i.dt, %i.dq          ; 7 uses
  %i.dv = insertelement <2 x i16> poison, i16 %i.cr, i64 0
  %i.dw = insertelement <2 x i16> %i.dv, i16 %i.cv, i64 1
  %i.dx = sitofp <2 x i16> %i.dw to <2 x double>
  %i.dy = insertelement <2 x double> poison, double %i.cf, i64 0
  %i.dz = shufflevector <2 x double> %i.dy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ea = fmul <2 x double> %i.dz, %i.dx          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  br i1 %cond, label %_ZN2cvL15getTransformDimENS_21OdometryTransformTypeE.exit.thread.i, label %_ZN2cvL15getTransformDimENS_21OdometryTransformTypeE.exit.i

_ZN2cvL15getTransformDimENS_21OdometryTransformTypeE.exit.thread.i: ; preds = %bb.r
  %i.eb = extractelement <2 x double> %i.du, i64 0 ; 2 uses
  %i.ec = fdiv double 1.000000e+00, %i.eb         ; 2 uses
  %i.ed = fmul <2 x double> %i.bh, %i.ea
  %i.ee = insertelement <2 x double> poison, double %i.ec, i64 0
  %i.ef = shufflevector <2 x double> %i.ee, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eg = fmul <2 x double> %i.ef, %i.ed          ; 5 uses
  %i.eh = extractelement <2 x double> %i.eg, i64 1 ; 2 uses
  %i.ei = extractelement <2 x double> %i.ds, i64 1 ; 2 uses
  %i.ej = fmul double %i.ei, %i.eh
  %i.ek = extractelement <2 x double> %i.du, i64 1
  %i.el = extractelement <2 x double> %i.eg, i64 0
  %i.em = call double @llvm.fmuladd.f64(double %i.el, double %i.ek, double %i.ej)
  %i.en = fneg double %i.em
  %i.eo = fmul double %i.ec, %i.en                ; 3 uses
  %i.ep = fneg double %i.eh
  %i.eq = fmul double %i.eb, %i.ep
  %i.er = call double @llvm.fmuladd.f64(double %i.ei, double %i.eo, double %i.eq)
  %i.es = shufflevector <2 x double> %i.eg, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.et = insertelement <2 x double> %i.es, double %i.eo, i64 0
  %i.eu = fneg <2 x double> %i.et
  %i.ev = fmul <2 x double> %i.ds, %i.eu
  %i.ew = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.du, <2 x double> %i.eg, <2 x double> %i.ev)
  store double %i.er, ptr %.sroa.0.i, align 16
  store <2 x double> %i.ew, ptr %.sroa.0.i.8.i.8.i.8..sroa_idx, align 8
  store <2 x double> %i.eg, ptr %.sroa.0.i.24.i.24.i.24..sroa_idx, align 8
  store double %i.eo, ptr %.sroa.0.i.40.i.40.i.40..sroa_idx, align 8
  br label %_ZN2cvL14rgbdCoeffsFuncENS_21OdometryTransformTypeEPdddRKNS_7Point3_IdEEdd.exit

bb.s:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.17, ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %.noexc109 unwind label %bb.y

.noexc109:                                        ; preds = %bb.s
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -5, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @__func__._ZN2cvL15getTransformDimENS_21OdometryTransformTypeE, ptr noundef nonnull @.str.18, i32 noundef 29) #23
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %.noexc109
  unreachable

bb.u:                                             ; preds = %.noexc109
  %i.ex = landingpad { ptr, i32 }
          cleanup
  %i.ey = load ptr, ptr %13, align 8, !tbaa !49   ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.fa = icmp eq ptr %i.ey, %i.ez
  br i1 %i.fa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.u
  %i.fb = load i64, ptr %i.ez, align 8, !tbaa !19
  %i.fc = add i64 %i.fb, 1
  call void @_ZdlPvm(ptr noundef %i.ey, i64 noundef %i.fc) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit115

_ZN2cvL15getTransformDimENS_21OdometryTransformTypeE.exit.i: ; preds = %bb.r
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.0.i, i8 0, i64 48, i1 false), !tbaa !71
  %i.fd = extractelement <2 x double> %i.du, i64 0
  %i.fe = fdiv double 1.000000e+00, %i.fd         ; 3 uses
  %i.ff = fmul <2 x double> %i.bh, %i.ea          ; 2 uses
  %i.fg = extractelement <2 x double> %i.ds, i64 1 ; 2 uses
  %i.fh = extractelement <2 x double> %i.du, i64 1 ; 2 uses
  %i.fi = extractelement <2 x double> %i.ff, i64 0
  %i.fj = fmul double %i.fe, %i.fi                ; 4 uses
  %i.fk = extractelement <2 x double> %i.ff, i64 1
  %i.fl = fmul double %i.fe, %i.fk                ; 4 uses
  %i.fm = fmul double %i.fg, %i.fl
  %i.fn = call double @llvm.fmuladd.f64(double %i.fj, double %i.fh, double %i.fm)
  %i.fo = fneg double %i.fn
  %i.fp = fmul double %i.fe, %i.fo                ; 3 uses
  br i1 %i.az, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZN2cvL15getTransformDimENS_21OdometryTransformTypeE.exit.i
  %i.fq = insertelement <2 x double> poison, double %i.fl, i64 0
  %i.fr = insertelement <2 x double> %i.fq, double %i.fp, i64 1
  %i.fs = fneg <2 x double> %i.fr
  %i.ft = fneg double %i.fj
  %i.fu = fmul double %i.fg, %i.ft
  %i.fv = call double @llvm.fmuladd.f64(double %i.fh, double %i.fl, double %i.fu)
  %i.fw = fmul <2 x double> %i.du, %i.fs
  %i.fx = shufflevector <2 x double> %i.ds, <2 x double> %i.du, <2 x i32> <i32 1, i32 2>
  %i.fy = insertelement <2 x double> poison, double %i.fp, i64 0
  %i.fz = insertelement <2 x double> %i.fy, double %i.fj, i64 1
  %i.ga = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fx, <2 x double> %i.fz, <2 x double> %i.fw)
  store <2 x double> %i.ga, ptr %.sroa.0.i, align 16
  store double %i.fv, ptr %.sroa.0.i.16.i.16.i.16..sroa_idx, align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.24.i.24.i.24..sroa_idx213, i8 0, i64 24, i1 false)
  br label %_ZN2cvL14rgbdCoeffsFuncENS_21OdometryTransformTypeEPdddRKNS_7Point3_IdEEdd.exit

bb.w:                                             ; preds = %_ZN2cvL15getTransformDimENS_21OdometryTransformTypeE.exit.i
  store double %i.fj, ptr %.sroa.0.i, align 16
  store double %i.fl, ptr %.sroa.0.i.8.i.8.i.8..sroa_idx211, align 8
  store double %i.fp, ptr %.sroa.0.i.16.i.16.i.16..sroa_idx212, align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.24.i.24.i.24..sroa_idx214, i8 0, i64 24, i1 false)
  br label %_ZN2cvL14rgbdCoeffsFuncENS_21OdometryTransformTypeEPdddRKNS_7Point3_IdEEdd.exit

_ZN2cvL14rgbdCoeffsFuncENS_21OdometryTransformTypeEPdddRKNS_7Point3_IdEEdd.exit: ; preds = %_ZN2cvL15getTransformDimENS_21OdometryTransformTypeE.exit.thread.i, %bb.v, %bb.w
  %.04.i46.i = phi i64 [ 24, %bb.w ], [ 24, %bb.v ], [ 48, %_ZN2cvL15getTransformDimENS_21OdometryTransformTypeE.exit.thread.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ac, ptr noundef nonnull align 16 dereferenceable(1) %.sroa.0.i, i64 range(i64 0, 49) %.04.i46.i, i1 false), !tbaa !71
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  %i.gb = fpext float %i.by to double
  br label %bb.z

bb.x:                                             ; preds = %.loopexit205
  %indvars.iv.next148 = add nuw nsw i64 %indvars.iv147, 1 ; 2 uses
  %exitcond151.not = icmp eq i64 %indvars.iv.next148, %wide.trip.count150
  br i1 %exitcond151.not, label %.preheader, label %bb.r, !llvm.loop !192

bb.y:                                             ; preds = %bb.s
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit115

bb.z:                                             ; preds = %_ZN2cvL14rgbdCoeffsFuncENS_21OdometryTransformTypeEPdddRKNS_7Point3_IdEEdd.exit, %.loopexit205
  %indvars.iv = phi i64 [ 0, %_ZN2cvL14rgbdCoeffsFuncENS_21OdometryTransformTypeEPdddRKNS_7Point3_IdEEdd.exit ], [ %indvars.iv.next, %.loopexit205 ] ; 10 uses
  %i.gd = mul i64 %i.bd, %indvars.iv              ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.gd ; 4 uses
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv ; 6 uses
  %i.gg = sub nsw i64 %i.aa, %indvars.iv          ; 3 uses
  %min.iters.check = icmp ult i64 %i.gg, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.z
  %i.gh = mul i64 %indvars.iv, %i.bf
  %i.gi = getelementptr i8, ptr %i.bc, i64 %i.gh
  %i.gj = getelementptr i8, ptr %i.bi, i64 %i.gd  ; 2 uses
  %bound0 = icmp ult ptr %i.gi, %scevgep
  %bound1 = icmp ult ptr %i.ac, %i.gj
  %bound1189 = icmp ult ptr %i.gf, %i.gj
  %found.conflict190206 = or i1 %bound1, %bound1189
  %conflict.rdx = and i1 %bound0, %found.conflict190206
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.gg, -4                      ; 3 uses
  %i.gk = add i64 %indvars.iv, %n.vec
  %i.gl = load double, ptr %i.gf, align 8, !tbaa !71, !alias.scope !205
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.gl, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gm = add nuw i64 %indvars.iv, %index         ; 2 uses
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.gm ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  %wide.load = load <2 x double>, ptr %i.gn, align 8, !tbaa !71, !alias.scope !206
  %wide.load191 = load <2 x double>, ptr %i.go, align 8, !tbaa !71, !alias.scope !206
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %i.gm ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 16 ; 2 uses
  %wide.load192 = load <2 x double>, ptr %i.gp, align 8, !tbaa !71, !alias.scope !207, !noalias !208
  %wide.load193 = load <2 x double>, ptr %i.gq, align 8, !tbaa !71, !alias.scope !207, !noalias !208
  %i.gr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %wide.load192)
  %i.gs = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load191, <2 x double> %wide.load193)
  store <2 x double> %i.gr, ptr %i.gp, align 8, !tbaa !71, !alias.scope !207, !noalias !208
  store <2 x double> %i.gs, ptr %i.gq, align 8, !tbaa !71, !alias.scope !207, !noalias !208
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gt = icmp eq i64 %index.next, %n.vec
  br i1 %i.gt, label %middle.block, label %vector.body, !llvm.loop !197

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gg, %n.vec
  br i1 %cmp.n, label %.loopexit205, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.z, %middle.block
  %indvars.iv141.ph = phi i64 [ %indvars.iv, %vector.memcheck ], [ %indvars.iv, %bb.z ], [ %i.gk, %middle.block ] ; 6 uses
  %i.gu = sub i64 %i.aa, %indvars.iv141.ph
  %xtraiter = and i64 %i.gu, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.gv = load double, ptr %i.gf, align 8, !tbaa !71
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv141.ph
  %i.gx = load double, ptr %i.gw, align 8, !tbaa !71
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %indvars.iv141.ph ; 2 uses
  %i.gz = load double, ptr %i.gy, align 8, !tbaa !71
  %i.ha = call double @llvm.fmuladd.f64(double %i.gv, double %i.gx, double %i.gz)
  store double %i.ha, ptr %i.gy, align 8, !tbaa !71
  %indvars.iv.next142.prol = add nuw nsw i64 %indvars.iv141.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv141.unr = phi i64 [ %indvars.iv141.ph, %scalar.ph.preheader ], [ %indvars.iv.next142.prol, %scalar.ph.prol ]
  %i.hb = icmp eq i64 %indvars.iv141.ph, %i.bj
  br i1 %i.hb, label %.loopexit205, label %scalar.ph

.loopexit205:                                     ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.hc = load double, ptr %i.gf, align 8, !tbaa !71
  %i.hd = fmul double %i.ce, %i.hc
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv ; 2 uses
  %i.hf = load double, ptr %i.he, align 8, !tbaa !71
  %i.hg = call double @llvm.fmuladd.f64(double %i.hd, double %i.gb, double %i.hf)
  store double %i.hg, ptr %i.he, align 8, !tbaa !71
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond146.not = icmp eq i64 %indvars.iv.next, %i.aa
  br i1 %exitcond146.not, label %bb.x, label %bb.z, !llvm.loop !198

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv141 = phi i64 [ %indvars.iv.next142.1, %scalar.ph ], [ %indvars.iv141.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.hh = load double, ptr %i.gf, align 8, !tbaa !71
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv141
  %i.hj = load double, ptr %i.hi, align 8, !tbaa !71
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %indvars.iv141 ; 2 uses
  %i.hl = load double, ptr %i.hk, align 8, !tbaa !71
  %i.hm = call double @llvm.fmuladd.f64(double %i.hh, double %i.hj, double %i.hl)
  store double %i.hm, ptr %i.hk, align 8, !tbaa !71
  %indvars.iv.next142 = add nuw nsw i64 %indvars.iv141, 1 ; 2 uses
  %i.hn = load double, ptr %i.gf, align 8, !tbaa !71
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.next142
  %i.hp = load double, ptr %i.ho, align 8, !tbaa !71
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %indvars.iv.next142 ; 2 uses
  %i.hr = load double, ptr %i.hq, align 8, !tbaa !71
  %i.hs = call double @llvm.fmuladd.f64(double %i.hn, double %i.hp, double %i.hr)
  store double %i.hs, ptr %i.hq, align 8, !tbaa !71
  %indvars.iv.next142.1 = add nuw nsw i64 %indvars.iv141, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next142.1, %i.aa
  br i1 %exitcond.not.1, label %.loopexit205, label %scalar.ph, !llvm.loop !199

.loopexit:                                        ; preds = %.lr.ph137.split.prol.loopexit, %.lr.ph137.split, %.lr.ph137.split.us, %middle.block202, %bb.aa
  %indvars.iv.next153 = add nuw nsw i64 %indvars.iv152, 1
  %exitcond168.not = icmp eq i64 %indvars.iv.next165, %i.aa
  br i1 %exitcond168.not, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.aa, !llvm.loop !200

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %.loopexit
  call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ab) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  ret void

bb.aa:                                            ; preds = %.preheader, %.loopexit
  %indvars.iv164 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next165, %.loopexit ] ; 8 uses
  %indvars.iv152 = phi i64 [ 1, %.preheader ], [ %indvars.iv.next153, %.loopexit ] ; 8 uses
  %indvars.iv.next165 = add nuw nsw i64 %indvars.iv164, 1 ; 3 uses
  %i.ht = icmp samesign ult i64 %indvars.iv.next165, %i.aa
  br i1 %i.ht, label %.lr.ph137, label %.loopexit

.lr.ph137:                                        ; preds = %bb.aa
  %i.hu = load i32, ptr %i.bk, align 4, !tbaa !96
  %.fr139 = freeze i32 %i.hu
  %i.hv = icmp slt i32 %.fr139, 2
  %i.hw = load ptr, ptr %i.bl, align 8, !tbaa !56 ; 6 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.hw, i64 %indvars.iv164 ; 5 uses
  br i1 %i.hv, label %.lr.ph137.split.us.preheader, label %.lr.ph137.split.preheader

.lr.ph137.split.preheader:                        ; preds = %.lr.ph137
  %i.hx = sub nsw i64 %indvars.iv164, %i.aa
  %i.hy = and i64 %i.hx, 1
  %lcmp.mod210.not.not = icmp eq i64 %i.hy, 0
  br i1 %lcmp.mod210.not.not, label %.lr.ph137.split.prol, label %.lr.ph137.split.prol.loopexit

.lr.ph137.split.prol:                             ; preds = %.lr.ph137.split.preheader
  %i.hz = load i64, ptr %i.bm, align 8            ; 2 uses
  %i.ia = mul i64 %i.hz, %indvars.iv164
  %.sink.i111.prol = getelementptr inbounds nuw i8, ptr %i.hw, i64 %i.ia
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %.sink.i111.prol, i64 %indvars.iv152
  %i.ic = load double, ptr %i.ib, align 8, !tbaa !71
  %i.id = mul i64 %i.hz, %indvars.iv152
  %gep.prol = getelementptr i8, ptr %invariant.gep, i64 %i.id
  store double %i.ic, ptr %gep.prol, align 8, !tbaa !71
  %indvars.iv.next155.prol = add nuw nsw i64 %indvars.iv152, 1
  br label %.lr.ph137.split.prol.loopexit

.lr.ph137.split.prol.loopexit:                    ; preds = %.lr.ph137.split.prol, %.lr.ph137.split.preheader
  %indvars.iv154.unr = phi i64 [ %indvars.iv152, %.lr.ph137.split.preheader ], [ %indvars.iv.next155.prol, %.lr.ph137.split.prol ]
  %i.ie = icmp eq i64 %i.bn, %indvars.iv164
  br i1 %i.ie, label %.loopexit, label %.lr.ph137.split

.lr.ph137.split.us.preheader:                     ; preds = %.lr.ph137
  %i.if = xor i64 %indvars.iv164, -1
  %i.ig = add nsw i64 %i.if, %i.aa                ; 3 uses
  %min.iters.check195 = icmp ult i64 %i.ig, 4
  br i1 %min.iters.check195, label %.lr.ph137.split.us.preheader207, label %vector.ph196

vector.ph196:                                     ; preds = %.lr.ph137.split.us.preheader
  %n.vec197 = and i64 %i.ig, -4                   ; 3 uses
  %i.ih = add i64 %indvars.iv152, %n.vec197
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.hw, i64 %indvars.iv152
  br label %vector.body198

vector.body198:                                   ; preds = %vector.body198, %vector.ph196
  %index199 = phi i64 [ 0, %vector.ph196 ], [ %index.next201, %vector.body198 ] ; 2 uses
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %index199
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 24
  %i.il = load double, ptr %i.ik, align 8, !tbaa !71
  store double %i.il, ptr %invariant.gep, align 8, !tbaa !71
  %index.next201 = add nuw i64 %index199, 4       ; 2 uses
  %i.im = icmp eq i64 %index.next201, %n.vec197
  br i1 %i.im, label %middle.block202, label %vector.body198, !llvm.loop !201

middle.block202:                                  ; preds = %vector.body198
  %cmp.n203 = icmp eq i64 %i.ig, %n.vec197
  br i1 %cmp.n203, label %.loopexit, label %.lr.ph137.split.us.preheader207

.lr.ph137.split.us.preheader207:                  ; preds = %.lr.ph137.split.us.preheader, %middle.block202
  %indvars.iv159.ph = phi i64 [ %indvars.iv152, %.lr.ph137.split.us.preheader ], [ %i.ih, %middle.block202 ]
  br label %.lr.ph137.split.us

.lr.ph137.split.us:                               ; preds = %.lr.ph137.split.us.preheader207, %.lr.ph137.split.us
  %indvars.iv159 = phi i64 [ %indvars.iv.next160, %.lr.ph137.split.us ], [ %indvars.iv159.ph, %.lr.ph137.split.us.preheader207 ] ; 2 uses
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.hw, i64 %indvars.iv159
  %i.io = load double, ptr %i.in, align 8, !tbaa !71
  store double %i.io, ptr %invariant.gep, align 8, !tbaa !71
  %indvars.iv.next160 = add nuw nsw i64 %indvars.iv159, 1 ; 2 uses
  %exitcond163.not = icmp eq i64 %indvars.iv.next160, %i.aa
  br i1 %exitcond163.not, label %.loopexit, label %.lr.ph137.split.us, !llvm.loop !202

.lr.ph137.split:                                  ; preds = %.lr.ph137.split.prol.loopexit, %.lr.ph137.split
  %indvars.iv154 = phi i64 [ %indvars.iv.next155.1, %.lr.ph137.split ], [ %indvars.iv154.unr, %.lr.ph137.split.prol.loopexit ] ; 4 uses
  %i.ip = load i64, ptr %i.bm, align 8            ; 2 uses
  %i.iq = mul i64 %i.ip, %indvars.iv164
  %.sink.i111 = getelementptr inbounds nuw i8, ptr %i.hw, i64 %i.iq
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %.sink.i111, i64 %indvars.iv154
  %i.is = load double, ptr %i.ir, align 8, !tbaa !71
  %i.it = mul i64 %i.ip, %indvars.iv154
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.it
  store double %i.is, ptr %gep, align 8, !tbaa !71
  %indvars.iv.next155 = add nuw nsw i64 %indvars.iv154, 1 ; 2 uses
  %i.iu = load i64, ptr %i.bm, align 8            ; 2 uses
  %i.iv = mul i64 %i.iu, %indvars.iv164
  %.sink.i111.1 = getelementptr inbounds nuw i8, ptr %i.hw, i64 %i.iv
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %.sink.i111.1, i64 %indvars.iv.next155
  %i.ix = load double, ptr %i.iw, align 8, !tbaa !71
  %i.iy = mul i64 %i.iu, %indvars.iv.next155
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %i.iy
  store double %i.ix, ptr %gep.1, align 8, !tbaa !71
  %indvars.iv.next155.1 = add nuw nsw i64 %indvars.iv154, 2 ; 2 uses
  %exitcond158.not.1 = icmp eq i64 %indvars.iv.next155.1, %i.aa
  br i1 %exitcond158.not.1, label %.loopexit, label %.lr.ph137.split, !llvm.loop !203

end_hunk_0
begin_hunk_1_@_ZN2cv18calcICPLsmMatricesERKNS_3MatES2_S2_S2_S2_RS0_S3_NS_21OdometryTransformTypeE:bb.a
  %i.fe = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !56
  %i.fg = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.fh = icmp eq i32 %7, 2
  switch i32 %7, label %bb.u [
    i32 4, label %.lr.ph238.split
    i32 1, label %.lr.ph238.split
    i32 2, label %.lr.ph238.split
  ]

.lr.ph238.split:                                  ; preds = %.lr.ph238, %.lr.ph238, %.lr.ph238
  %i.fi = getelementptr inbounds nuw i8, ptr %5, i64 128
  %i.fj = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !56 ; 3 uses
  %i.fl = load i64, ptr %i.fi, align 8, !tbaa !57 ; 2 uses
  %wide.trip.count259 = zext nneg i32 %i.ez to i64
  %cond = icmp eq i32 %7, 4
  %i.fm = shl nuw nsw i64 %i.cg, 3                ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ci, i64 %i.fm
  %i.fn = add i64 %i.fl, 8
  %.sroa.0.i.16.i.16.i.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 16
  %.sroa.0.i.24.i.24.i.24..sroa_idx335 = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 24
  %.sroa.0.i.16.i.16.i.16..sroa_idx333 = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 16
  %.sroa.0.i.24.i.24.i.24..sroa_idx336 = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 24
  %.sroa.0.i.16.i.16.i.16..sroa_idx334 = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 16
  %.sroa.0.i.24.i.24.i.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 24
  %.sroa.0.i.32.i.32.i.32..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 32
  %.sroa.0.i.40.i.40.i.40..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 40
  %i.fo = getelementptr i8, ptr %i.fk, i64 %i.fm
  %i.fp = add nsw i64 %i.cg, -1
  br label %bb.t

.preheader:                                       ; preds = %bb.aa, %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit
  %i.fq = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.fr = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.fs = getelementptr inbounds nuw i8, ptr %5, i64 128 ; 3 uses
  %i.ft = add nsw i64 %i.cg, -2
  br label %bb.af

bb.s:                                             ; preds = %._crit_edge
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.t:                                             ; preds = %.lr.ph238.split, %bb.aa
  %indvars.iv256 = phi i64 [ 0, %.lr.ph238.split ], [ %indvars.iv.next257, %bb.aa ] ; 4 uses
  %i.fv = getelementptr inbounds nuw [16 x i8], ptr %i.av, i64 %indvars.iv256 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !20
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fv, i64 12
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !20
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv256
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !23 ; 2 uses
  %i.gc = call noundef float @llvm.fabs.f32(float %i.gb)
  %i.gd = fpext float %i.gc to double
  %i.ge = fadd double %i.cf, %i.gd                ; 2 uses
  %i.gf = fcmp ogt double %i.ge, f0x3CB0000000000000
  %i.gg = fdiv double 1.000000e+00, %i.ge
  %i.gh = select i1 %i.gf, double %i.gg, double 1.000000e+00 ; 2 uses
  %i.gi = load i64, ptr %i.fg, align 8
  %i.gj = sext i32 %i.fz to i64
  %i.gk = mul i64 %i.gi, %i.gj
  %.sink.idx.i167 = select i1 %i.fd, i64 0, i64 %i.gk
  %.sink.i168 = getelementptr inbounds nuw i8, ptr %i.ff, i64 %.sink.idx.i167
  %i.gl = sext i32 %i.fx to i64
  %i.gm = getelementptr inbounds [16 x i8], ptr %.sink.i168, i64 %i.gl ; 2 uses
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !23
  %i.go = getelementptr inbounds nuw i8, ptr %i.gm, i64 4
  %i.gp = getelementptr inbounds nuw [12 x i8], ptr %i.at, i64 %indvars.iv256 ; 2 uses
  %i.gq = load float, ptr %i.gp, align 4, !tbaa !229, !noalias !230
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gp, i64 4
  %i.gs = load <2 x float>, ptr %i.go, align 4, !tbaa !23 ; 2 uses
  %i.gt = load <2 x float>, ptr %i.gr, align 4, !tbaa !23, !noalias !230 ; 2 uses
  %i.gu = shufflevector <2 x float> %i.gt, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.gv = insertelement <2 x float> %i.gu, float %i.gq, i64 1
  %i.gw = fpext <2 x float> %i.gt to <2 x double> ; 5 uses
  %i.gx = fpext <2 x float> %i.gv to <2 x double> ; 4 uses
  %i.gy = shufflevector <2 x float> %i.gs, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.gz = insertelement <2 x float> %i.gy, float %i.gn, i64 1
  %i.ha = fpext <2 x float> %i.gz to <2 x double>
  %i.hb = fpext <2 x float> %i.gs to <2 x double>
  %i.hc = insertelement <2 x double> poison, double %i.gh, i64 0
  %i.hd = shufflevector <2 x double> %i.hc, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.he = fmul <2 x double> %i.hd, %i.ha          ; 8 uses
  %i.hf = fmul <2 x double> %i.hd, %i.hb          ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  br i1 %cond, label %_ZN2cvL15getTransformDimENS_21OdometryTransformTypeE.exit.thread.i, label %_ZN2cvL15getTransformDimENS_21OdometryTransformTypeE.exit.i

_ZN2cvL15getTransformDimENS_21OdometryTransformTypeE.exit.thread.i: ; preds = %bb.t
  %i.hg = fneg <2 x double> %i.hf
  %i.hh = extractelement <2 x double> %i.he, i64 1 ; 2 uses
  %i.hi = fneg double %i.hh
  %i.hj = extractelement <2 x double> %i.gw, i64 0
  %i.hk = fmul double %i.hj, %i.hi
  %i.hl = extractelement <2 x double> %i.hf, i64 0 ; 2 uses
  %i.hm = extractelement <2 x double> %i.gx, i64 1
  %i.hn = call double @llvm.fmuladd.f64(double %i.hm, double %i.hl, double %i.hk)
  %i.ho = fmul <2 x double> %i.hg, %i.gx
  %i.hp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gw, <2 x double> %i.he, <2 x double> %i.ho)
  store <2 x double> %i.hp, ptr %.sroa.0.i, align 16
  store double %i.hn, ptr %.sroa.0.i.16.i.16.i.16..sroa_idx334, align 16
  store double %i.hh, ptr %.sroa.0.i.24.i.24.i.24..sroa_idx, align 8
  store double %i.hl, ptr %.sroa.0.i.32.i.32.i.32..sroa_idx, align 16
  %i.hq = extractelement <2 x double> %i.he, i64 0
  store double %i.hq, ptr %.sroa.0.i.40.i.40.i.40..sroa_idx, align 8
  br label %bb.z

bb.u:                                             ; preds = %.lr.ph238
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.17, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %.noexc171 unwind label %bb.ab

.noexc171:                                        ; preds = %bb.u
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -5, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__func__._ZN2cvL15getTransformDimENS_21OdometryTransformTypeE, ptr noundef nonnull @.str.18, i32 noundef 29) #23
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %.noexc171
  unreachable

bb.w:                                             ; preds = %.noexc171
  %i.hr = landingpad { ptr, i32 }
          cleanup
  %i.hs = load ptr, ptr %8, align 8, !tbaa !49    ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.hu = icmp eq ptr %i.hs, %i.ht
  br i1 %i.hu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.w
  %i.hv = load i64, ptr %i.ht, align 8, !tbaa !19
  %i.hw = add i64 %i.hv, 1
  call void @_ZdlPvm(ptr noundef %i.hs, i64 noundef %i.hw) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit180

_ZN2cvL15getTransformDimENS_21OdometryTransformTypeE.exit.i: ; preds = %bb.t
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.0.i, i8 0, i64 48, i1 false), !tbaa !71
  br i1 %i.fh, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN2cvL15getTransformDimENS_21OdometryTransformTypeE.exit.i
  %i.hx = extractelement <2 x double> %i.hf, i64 0
  %i.hy = extractelement <2 x double> %i.gw, i64 0
  %i.hz = extractelement <2 x double> %i.gx, i64 1
  %i.ia = extractelement <2 x double> %i.he, i64 1
  %i.ib = fneg double %i.ia
  %i.ic = fmul double %i.hy, %i.ib
  %i.id = call double @llvm.fmuladd.f64(double %i.hz, double %i.hx, double %i.ic)
  %i.ie = shufflevector <2 x double> %i.hf, <2 x double> %i.he, <2 x i32> <i32 0, i32 2>
  %i.if = fneg <2 x double> %i.ie
  %i.ig = shufflevector <2 x double> %i.gw, <2 x double> %i.gx, <2 x i32> <i32 1, i32 3>
  %i.ih = fmul <2 x double> %i.ig, %i.if
  %i.ii = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gw, <2 x double> %i.he, <2 x double> %i.ih)
  store <2 x double> %i.ii, ptr %.sroa.0.i, align 16
  store double %i.id, ptr %.sroa.0.i.16.i.16.i.16..sroa_idx, align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.24.i.24.i.24..sroa_idx335, i8 0, i64 24, i1 false)
  br label %bb.z

bb.y:                                             ; preds = %_ZN2cvL15getTransformDimENS_21OdometryTransformTypeE.exit.i
  %i.ij = shufflevector <2 x double> %i.he, <2 x double> %i.hf, <2 x i32> <i32 1, i32 2>
  store <2 x double> %i.ij, ptr %.sroa.0.i, align 16
  %i.ik = extractelement <2 x double> %i.he, i64 0
  store double %i.ik, ptr %.sroa.0.i.16.i.16.i.16..sroa_idx333, align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.24.i.24.i.24..sroa_idx336, i8 0, i64 24, i1 false)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %_ZN2cvL15getTransformDimENS_21OdometryTransformTypeE.exit.thread.i
  %.04.i20.i = phi i64 [ 24, %bb.y ], [ 24, %bb.x ], [ 48, %_ZN2cvL15getTransformDimENS_21OdometryTransformTypeE.exit.thread.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ci, ptr noundef nonnull align 16 dereferenceable(1) %.sroa.0.i, i64 range(i64 0, 49) %.04.i20.i, i1 false), !tbaa !71
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  %i.il = fpext float %i.gb to double
  br label %bb.ac

bb.aa:                                            ; preds = %.loopexit327
  %indvars.iv.next257 = add nuw nsw i64 %indvars.iv256, 1 ; 2 uses
  %exitcond260.not = icmp eq i64 %indvars.iv.next257, %wide.trip.count259
  br i1 %exitcond260.not, label %.preheader, label %bb.t, !llvm.loop !212

bb.ab:                                            ; preds = %bb.u
  %i.im = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit180

bb.ac:                                            ; preds = %bb.z, %.loopexit327
  %indvars.iv246 = phi i64 [ 0, %bb.z ], [ %indvars.iv.next247, %.loopexit327 ] ; 10 uses
  %i.in = mul i64 %i.fl, %indvars.iv246           ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.in ; 4 uses
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv246 ; 6 uses
  %i.iq = sub nsw i64 %i.cg, %indvars.iv246       ; 3 uses
  %min.iters.check = icmp ult i64 %i.iq, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.ac
  %i.ir = mul i64 %indvars.iv246, %i.fn
  %i.is = getelementptr i8, ptr %i.fk, i64 %i.ir
  %i.it = getelementptr i8, ptr %i.fo, i64 %i.in  ; 2 uses
  %bound0 = icmp ult ptr %i.is, %scevgep
  %bound1 = icmp ult ptr %i.ci, %i.it
  %bound1311 = icmp ult ptr %i.ip, %i.it
  %found.conflict312328 = or i1 %bound1, %bound1311
  %conflict.rdx = and i1 %bound0, %found.conflict312328
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.iq, -4                      ; 3 uses
  %i.iu = add i64 %indvars.iv246, %n.vec
  %i.iv = load double, ptr %i.ip, align 8, !tbaa !71, !alias.scope !231
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.iv, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.iw = add nuw i64 %indvars.iv246, %index      ; 2 uses
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.iw ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 16
  %wide.load = load <2 x double>, ptr %i.ix, align 8, !tbaa !71, !alias.scope !232
  %wide.load313 = load <2 x double>, ptr %i.iy, align 8, !tbaa !71, !alias.scope !232
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.io, i64 %i.iw ; 3 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 16 ; 2 uses
  %wide.load314 = load <2 x double>, ptr %i.iz, align 8, !tbaa !71, !alias.scope !233, !noalias !234
  %wide.load315 = load <2 x double>, ptr %i.ja, align 8, !tbaa !71, !alias.scope !233, !noalias !234
  %i.jb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %wide.load314)
  %i.jc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load313, <2 x double> %wide.load315)
  store <2 x double> %i.jb, ptr %i.iz, align 8, !tbaa !71, !alias.scope !233, !noalias !234
  store <2 x double> %i.jc, ptr %i.ja, align 8, !tbaa !71, !alias.scope !233, !noalias !234
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.jd = icmp eq i64 %index.next, %n.vec
  br i1 %i.jd, label %middle.block, label %vector.body, !llvm.loop !217

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.iq, %n.vec
  br i1 %cmp.n, label %.loopexit327, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.ac, %middle.block
  %indvars.iv248.ph = phi i64 [ %indvars.iv246, %vector.memcheck ], [ %indvars.iv246, %bb.ac ], [ %i.iu, %middle.block ] ; 6 uses
  %i.je = sub i64 %i.cg, %indvars.iv248.ph
  %xtraiter = and i64 %i.je, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.jf = load double, ptr %i.ip, align 8, !tbaa !71
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv248.ph
  %i.jh = load double, ptr %i.jg, align 8, !tbaa !71
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %i.io, i64 %indvars.iv248.ph ; 2 uses
  %i.jj = load double, ptr %i.ji, align 8, !tbaa !71
  %i.jk = call double @llvm.fmuladd.f64(double %i.jf, double %i.jh, double %i.jj)
  store double %i.jk, ptr %i.ji, align 8, !tbaa !71
  %indvars.iv.next249.prol = add nuw nsw i64 %indvars.iv248.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv248.unr = phi i64 [ %indvars.iv248.ph, %scalar.ph.preheader ], [ %indvars.iv.next249.prol, %scalar.ph.prol ]
  %i.jl = icmp eq i64 %indvars.iv248.ph, %i.fp
  br i1 %i.jl, label %.loopexit327, label %scalar.ph

.loopexit327:                                     ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.jm = load double, ptr %i.ip, align 8, !tbaa !71
  %i.jn = fmul double %i.gh, %i.jm
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv246 ; 2 uses
  %i.jp = load double, ptr %i.jo, align 8, !tbaa !71
  %i.jq = call double @llvm.fmuladd.f64(double %i.jn, double %i.il, double %i.jp)
  store double %i.jq, ptr %i.jo, align 8, !tbaa !71
  %indvars.iv.next247 = add nuw nsw i64 %indvars.iv246, 1 ; 2 uses
  %exitcond255.not = icmp eq i64 %indvars.iv.next247, %i.cg
  br i1 %exitcond255.not, label %bb.aa, label %bb.ac, !llvm.loop !218

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv248 = phi i64 [ %indvars.iv.next249.1, %scalar.ph ], [ %indvars.iv248.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.jr = load double, ptr %i.ip, align 8, !tbaa !71
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv248
  %i.jt = load double, ptr %i.js, align 8, !tbaa !71
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.io, i64 %indvars.iv248 ; 2 uses
  %i.jv = load double, ptr %i.ju, align 8, !tbaa !71
  %i.jw = call double @llvm.fmuladd.f64(double %i.jr, double %i.jt, double %i.jv)
  store double %i.jw, ptr %i.ju, align 8, !tbaa !71
  %indvars.iv.next249 = add nuw nsw i64 %indvars.iv248, 1 ; 2 uses
  %i.jx = load double, ptr %i.ip, align 8, !tbaa !71
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv.next249
  %i.jz = load double, ptr %i.jy, align 8, !tbaa !71
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.io, i64 %indvars.iv.next249 ; 2 uses
  %i.kb = load double, ptr %i.ka, align 8, !tbaa !71
  %i.kc = call double @llvm.fmuladd.f64(double %i.jx, double %i.jz, double %i.kb)
  store double %i.kc, ptr %i.ka, align 8, !tbaa !71
  %indvars.iv.next249.1 = add nuw nsw i64 %indvars.iv248, 2 ; 2 uses
  %exitcond252.not.1 = icmp eq i64 %indvars.iv.next249.1, %i.cg
  br i1 %exitcond252.not.1, label %.loopexit327, label %scalar.ph, !llvm.loop !219

.loopexit:                                        ; preds = %.lr.ph241.split.prol.loopexit, %.lr.ph241.split, %.lr.ph241.split.us, %middle.block324, %bb.af
  %indvars.iv.next262 = add nuw nsw i64 %indvars.iv261, 1
  %exitcond277.not = icmp eq i64 %indvars.iv.next274, %i.cg
  br i1 %exitcond277.not, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.af, !llvm.loop !220

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %.loopexit
  call void @_ZdlPvm(ptr noundef nonnull %i.ci, i64 noundef %i.ch) #25
  %i.kd = load ptr, ptr %19, align 8, !tbaa !226  ; 3 uses
  %.not.i.i172 = icmp eq ptr %i.kd, %scevgep.i302
  %i.ke = icmp eq ptr %i.kd, null
  %or.cond.i = or i1 %.not.i.i172, %i.ke
  br i1 %or.cond.i, label %_ZN2cv10AutoBufferINS_7Point3_IfEELm93EED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit
  call void @_ZdaPv(ptr noundef nonnull %i.kd) #25
  br label %_ZN2cv10AutoBufferINS_7Point3_IfEELm93EED2Ev.exit

_ZN2cv10AutoBufferINS_7Point3_IfEELm93EED2Ev.exit: ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  %i.kf = load ptr, ptr %18, align 8, !tbaa !92   ; 3 uses
  %.not.i.i173 = icmp eq ptr %i.kf, %i.ab
  %i.kg = icmp eq ptr %i.kf, null
  %or.cond.i174 = or i1 %.not.i.i173, %i.kg
  br i1 %or.cond.i174, label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZN2cv10AutoBufferINS_7Point3_IfEELm93EED2Ev.exit
  call void @_ZdaPv(ptr noundef nonnull %i.kf) #25
  br label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit

_ZN2cv10AutoBufferIfLm264EED2Ev.exit:             ; preds = %_ZN2cv10AutoBufferINS_7Point3_IfEELm93EED2Ev.exit, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  ret void

bb.af:                                            ; preds = %.preheader, %.loopexit
  %indvars.iv273 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next274, %.loopexit ] ; 8 uses
  %indvars.iv261 = phi i64 [ 1, %.preheader ], [ %indvars.iv.next262, %.loopexit ] ; 8 uses
  %indvars.iv.next274 = add nuw nsw i64 %indvars.iv273, 1 ; 3 uses
  %i.kh = icmp samesign ult i64 %indvars.iv.next274, %i.cg
  br i1 %i.kh, label %.lr.ph241, label %.loopexit

.lr.ph241:                                        ; preds = %bb.af
  %i.ki = load i32, ptr %i.fq, align 4, !tbaa !96
  %.fr243 = freeze i32 %i.ki
  %i.kj = icmp slt i32 %.fr243, 2
  %i.kk = load ptr, ptr %i.fr, align 8, !tbaa !56 ; 6 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.kk, i64 %indvars.iv273 ; 5 uses
  br i1 %i.kj, label %.lr.ph241.split.us.preheader, label %.lr.ph241.split.preheader

.lr.ph241.split.preheader:                        ; preds = %.lr.ph241
  %i.kl = sub nsw i64 %indvars.iv273, %i.cg
  %i.km = and i64 %i.kl, 1
  %lcmp.mod332.not.not = icmp eq i64 %i.km, 0
  br i1 %lcmp.mod332.not.not, label %.lr.ph241.split.prol, label %.lr.ph241.split.prol.loopexit

.lr.ph241.split.prol:                             ; preds = %.lr.ph241.split.preheader
  %i.kn = load i64, ptr %i.fs, align 8            ; 2 uses
  %i.ko = mul i64 %i.kn, %indvars.iv273
  %.sink.i176.prol = getelementptr inbounds nuw i8, ptr %i.kk, i64 %i.ko
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %.sink.i176.prol, i64 %indvars.iv261
  %i.kq = load double, ptr %i.kp, align 8, !tbaa !71
  %i.kr = mul i64 %i.kn, %indvars.iv261
  %gep.prol = getelementptr i8, ptr %invariant.gep, i64 %i.kr
  store double %i.kq, ptr %gep.prol, align 8, !tbaa !71
  %indvars.iv.next264.prol = add nuw nsw i64 %indvars.iv261, 1
  br label %.lr.ph241.split.prol.loopexit

.lr.ph241.split.prol.loopexit:                    ; preds = %.lr.ph241.split.prol, %.lr.ph241.split.preheader
  %indvars.iv263.unr = phi i64 [ %indvars.iv261, %.lr.ph241.split.preheader ], [ %indvars.iv.next264.prol, %.lr.ph241.split.prol ]
  %i.ks = icmp eq i64 %i.ft, %indvars.iv273
  br i1 %i.ks, label %.loopexit, label %.lr.ph241.split

.lr.ph241.split.us.preheader:                     ; preds = %.lr.ph241
  %i.kt = xor i64 %indvars.iv273, -1
  %i.ku = add nsw i64 %i.kt, %i.cg                ; 3 uses
  %min.iters.check317 = icmp ult i64 %i.ku, 4
  br i1 %min.iters.check317, label %.lr.ph241.split.us.preheader329, label %vector.ph318

vector.ph318:                                     ; preds = %.lr.ph241.split.us.preheader
  %n.vec319 = and i64 %i.ku, -4                   ; 3 uses
  %i.kv = add i64 %indvars.iv261, %n.vec319
  %i.kw = getelementptr inbounds nuw [8 x i8], ptr %i.kk, i64 %indvars.iv261
  br label %vector.body320

vector.body320:                                   ; preds = %vector.body320, %vector.ph318
  %index321 = phi i64 [ 0, %vector.ph318 ], [ %index.next323, %vector.body320 ] ; 2 uses
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %i.kw, i64 %index321
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 24
  %i.kz = load double, ptr %i.ky, align 8, !tbaa !71
  store double %i.kz, ptr %invariant.gep, align 8, !tbaa !71
  %index.next323 = add nuw i64 %index321, 4       ; 2 uses
  %i.la = icmp eq i64 %index.next323, %n.vec319
  br i1 %i.la, label %middle.block324, label %vector.body320, !llvm.loop !221

middle.block324:                                  ; preds = %vector.body320
  %cmp.n325 = icmp eq i64 %i.ku, %n.vec319
  br i1 %cmp.n325, label %.loopexit, label %.lr.ph241.split.us.preheader329

.lr.ph241.split.us.preheader329:                  ; preds = %.lr.ph241.split.us.preheader, %middle.block324
  %indvars.iv268.ph = phi i64 [ %indvars.iv261, %.lr.ph241.split.us.preheader ], [ %i.kv, %middle.block324 ]
  br label %.lr.ph241.split.us

.lr.ph241.split.us:                               ; preds = %.lr.ph241.split.us.preheader329, %.lr.ph241.split.us
  %indvars.iv268 = phi i64 [ %indvars.iv.next269, %.lr.ph241.split.us ], [ %indvars.iv268.ph, %.lr.ph241.split.us.preheader329 ] ; 2 uses
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %i.kk, i64 %indvars.iv268
  %i.lc = load double, ptr %i.lb, align 8, !tbaa !71
  store double %i.lc, ptr %invariant.gep, align 8, !tbaa !71
  %indvars.iv.next269 = add nuw nsw i64 %indvars.iv268, 1 ; 2 uses
  %exitcond272.not = icmp eq i64 %indvars.iv.next269, %i.cg
  br i1 %exitcond272.not, label %.loopexit, label %.lr.ph241.split.us, !llvm.loop !222

end_hunk_1
begin_hunk_2_@llvm.fmuladd.v4f32
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !10, i64 0}
!12 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !11, i64 0}
!13 = !{!12, !11, i64 0}
!14 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !7, i64 8, !7, i64 12}
!15 = !{!14, !7, i64 8}
!16 = !{!14, !7, i64 12}
!17 = !{!"vtable pointer", !5, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!6, !6, i64 0}
!20 = !{!7, !7, i64 0}
!21 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!22 = !{!"float", !6, i64 0}
!23 = !{!22, !22, i64 0}
!24 = !{!"_ZTSN2cv5Size_IiEE", !7, i64 0, !7, i64 4}
!25 = !{!"_ZTSN2cv11_InputArrayE", !7, i64 0, !10, i64 8, !24, i64 16}
!26 = !{!25, !7, i64 0}
!27 = !{!25, !10, i64 8}
!28 = !{!"p1 _ZTSN2cv13OdometryFrame4ImplE", !10, i64 0}
!29 = !{!"_ZTSSt12__shared_ptrIN2cv13OdometryFrame4ImplELN9__gnu_cxx12_Lock_policyE2EE", !28, i64 0, !12, i64 8}
!30 = !{!29, !28, i64 0}
!31 = !{!"p1 _ZTSSt6vectorIN2cv4UMatESaIS1_EE", !10, i64 0}
!32 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN2cv4UMatESaIS2_EESaIS4_EE17_Vector_impl_dataE", !31, i64 0, !31, i64 8, !31, i64 16}
!33 = !{!32, !31, i64 0}
!34 = !{!"p1 _ZTSN2cv4UMatE", !10, i64 0}
!35 = !{!"_ZTSNSt12_Vector_baseIN2cv4UMatESaIS1_EE17_Vector_impl_dataE", !34, i64 0, !34, i64 8, !34, i64 16}
!36 = !{!35, !34, i64 8}
!37 = !{!35, !34, i64 0}
!38 = !{!"llvm.loop.mustprogress"}
!39 = !{!"p1 float", !10, i64 0}
!40 = !{!24, !7, i64 0}
!41 = !{!24, !7, i64 4}
!42 = !{!"_ZTSN2cv10DataLayoutE", !6, i64 0}
!43 = !{!"_ZTSN2cv8MatShapeE", !7, i64 0, !42, i64 4, !7, i64 8, !6, i64 12}
!44 = !{!43, !7, i64 0}
!45 = !{!"p1 omnipotent char", !10, i64 0}
!46 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !45, i64 0}
!47 = !{!"long", !6, i64 0}
!48 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !46, i64 0, !47, i64 8, !6, i64 16}
!49 = !{!48, !45, i64 0}
!50 = !{!"p1 _ZTSN2cv12MatAllocatorE", !10, i64 0}
!51 = !{!"p1 _ZTSN2cv8UMatDataE", !10, i64 0}
!52 = !{!"_ZTSN2cv7MatStepE", !6, i64 0}
!53 = !{!"_ZTSN2cv3MatE", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !45, i64 24, !45, i64 32, !45, i64 40, !45, i64 48, !50, i64 56, !51, i64 64, !43, i64 72, !52, i64 128}
!54 = !{!53, !7, i64 8}
!55 = !{!53, !7, i64 12}
!56 = !{!53, !45, i64 24}
!57 = !{!47, !47, i64 0}
!58 = !{!"llvm.loop.unswitch.partial.disable"}
!59 = !{!"short", !6, i64 0}
!60 = !{!59, !59, i64 0}
!61 = !{!"p1 _ZTSN2cv5MatOpE", !10, i64 0}
!62 = !{!"double", !6, i64 0}
!63 = !{!"_ZTSN2cv4MatxIdLi4ELi1EEE", !6, i64 0}
!64 = !{!"_ZTSN2cv3VecIdLi4EEE", !63, i64 0}
!65 = !{!"_ZTSN2cv7Scalar_IdEE", !64, i64 0}
!66 = !{!"_ZTSN2cv7MatExprE", !61, i64 0, !7, i64 8, !53, i64 16, !53, i64 224, !53, i64 432, !62, i64 640, !62, i64 648, !65, i64 656}
!67 = !{!66, !61, i64 0}
!68 = !{!"_ZTSN2cv14UMatUsageFlagsE", !6, i64 0}
!69 = !{!"_ZTSN2cv4UMatE", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !50, i64 16, !68, i64 24, !51, i64 32, !47, i64 40, !43, i64 48, !52, i64 104}
!70 = !{!69, !7, i64 0}
!71 = !{!62, !62, i64 0}
!72 = !{!"p1 int", !10, i64 0}
!73 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !72, i64 0, !72, i64 8, !72, i64 16}
!74 = !{!73, !72, i64 8}
!75 = !{!73, !72, i64 0}
!76 = !{!34, !34, i64 0}
!77 = !{!35, !34, i64 16}
!78 = !{!73, !72, i64 16}
!79 = !{!69, !7, i64 8}
!80 = !{!53, !7, i64 0}
!81 = !{!"p1 _ZTSN2cv4MatxIfLi3ELi3EEE", !10, i64 0}
!82 = !{!"_ZTSNSt12_Vector_baseIN2cv4MatxIfLi3ELi3EEESaIS2_EE17_Vector_impl_dataE", !81, i64 0, !81, i64 8, !81, i64 16}
!83 = !{!82, !81, i64 0}
!84 = !{i64 0, i64 36, !19}
!85 = !{!53, !7, i64 16}
!86 = !{!"_ZTSN2cv5RangeE", !7, i64 0, !7, i64 4}
!87 = !{!86, !7, i64 0}
!88 = !{!86, !7, i64 4}
!89 = !{!82, !81, i64 16}
!90 = !{!82, !81, i64 8}
!91 = !{!"_ZTSN2cv10AutoBufferIfLm264EEE", !39, i64 0, !47, i64 8, !6, i64 16}
!92 = !{!91, !39, i64 0}
!93 = !{!91, !47, i64 8}
!94 = !{!"llvm.loop.isvectorized", i32 1}
!95 = !{!"llvm.loop.unroll.runtime.disable"}
!96 = !{!53, !7, i64 4}
!97 = !{!"p1 _ZTSN2cv4MatxIfLi6ELi7EEE", !10, i64 0}
!98 = !{!"p1 _ZTSSt15recursive_mutex", !10, i64 0}
!99 = !{!"p1 _ZTSN2cv4Mat_INS_3VecIfLi4EEEEE", !10, i64 0}
!100 = !{!"_ZTSN2cv16ParallelLoopBodyE"}
!101 = !{!"_ZTSN2cv4MatxIfLi4ELi4EEE", !6, i64 0}
!102 = !{!"_ZTSN2cv7Affine3IfEE", !101, i64 0}
!103 = !{!"_ZTSN2cv4Intr9ProjectorE", !22, i64 0, !22, i64 4, !22, i64 8, !22, i64 12}
!104 = !{!"_ZTSN2cv12GetAbInvokerE", !100, i64 0, !97, i64 8, !98, i64 16, !99, i64 24, !99, i64 32, !99, i64 40, !99, i64 48, !102, i64 56, !103, i64 120, !22, i64 136, !22, i64 140}
!105 = !{!104, !22, i64 136}
!106 = !{!104, !22, i64 140}
!107 = !{!"_ZTSN2cv8DualQuatIdEE", !62, i64 0, !62, i64 8, !62, i64 16, !62, i64 24, !62, i64 32, !62, i64 40, !62, i64 48, !62, i64 56}
!108 = !{!107, !62, i64 56}
!109 = !{!"_ZTSN2cv4QuatIdEE", !62, i64 0, !62, i64 8, !62, i64 16, !62, i64 24}
!110 = !{!109, !62, i64 0}
!111 = !{!109, !62, i64 24}
!112 = distinct !{!112, !38}
!113 = distinct !{!113, !38, !58}
!114 = distinct !{!114, !38}
!115 = distinct !{!115, i1 true, !"_ZNK2cv7MatExprcvNS_3MatEEv"}
!116 = distinct !{!116, !115, !"_ZNK2cv7MatExprcvNS_3MatEEv: argument 0"}
!117 = distinct !{!117, !38}
!118 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataE", !39, i64 0, !39, i64 8, !39, i64 16}
!119 = !{!118, !39, i64 8}
!120 = !{!118, !39, i64 0}
!121 = !{!39, !39, i64 0}
!122 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!123 = !{!116}
!124 = !{!118, !39, i64 16}
!125 = distinct !{null, null, null}
!126 = distinct !{null, null, null, null, null}
!127 = distinct !{null, null, null}
!128 = distinct !{!128, !38}
!129 = distinct !{!129, !38, !58}
!130 = distinct !{!130, !38}
!131 = distinct !{!131, !38}
!132 = distinct !{!132, !38, !58}
!133 = distinct !{!133, !38}
!134 = distinct !{!134, !38}
!135 = !{!"p1 _ZTSN2cv11RgbdNormalsE", !10, i64 0}
!136 = !{!"_ZTSSt12__shared_ptrIN2cv11RgbdNormalsELN9__gnu_cxx12_Lock_policyE2EE", !135, i64 0, !12, i64 8}
!137 = !{!136, !135, i64 0}
!138 = !{!69, !7, i64 12}
!139 = distinct !{!139, i1 true, !"_ZNK2cv7MatExprcvNS_3MatEEv"}
!140 = distinct !{!140, !139, !"_ZNK2cv7MatExprcvNS_3MatEEv: argument 0"}
!141 = distinct !{!141, !38}
!142 = distinct !{!142, i1 true, !"_ZNK2cv7MatExprcvNS_3MatEEv"}
!143 = distinct !{!143, !142, !"_ZNK2cv7MatExprcvNS_3MatEEv: argument 0"}
!144 = distinct !{!144, i1 true, !"_ZNK2cv3Mat8rowRangeEii"}
!145 = distinct !{!145, !144, !"_ZNK2cv3Mat8rowRangeEii: argument 0"}
!146 = distinct !{!146, i1 true, !"_ZNK2cv3Mat8rowRangeEii"}
!147 = distinct !{!147, !146, !"_ZNK2cv3Mat8rowRangeEii: argument 0"}
!148 = distinct !{null}
!149 = distinct !{!149, !38}
!150 = distinct !{!150, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!151 = distinct !{!151, !150, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!152 = !{!140}
!153 = !{!143}
!154 = !{!145}
!155 = !{!147}
!156 = !{!151}
!157 = !{!46, !45, i64 0}
!158 = !{!48, !47, i64 8}
!159 = distinct !{!159, i1 true, !"_ZN2cvmlIfLi3ELi3EEENS_4MatxIT_XT0_EXT1_EEEfRKS3_"}
!160 = distinct !{!160, !159, !"_ZN2cvmlIfLi3ELi3EEENS_4MatxIT_XT0_EXT1_EEEfRKS3_: argument 0"}
!161 = distinct !{!161, !38, !163}
!162 = !{!160}
!163 = !{!"llvm.loop.peeled.count", i32 1}
!164 = distinct !{!164, i1 true, !"_ZNK2cv7MatExprcvNS_3MatEEv"}
!165 = distinct !{!165, !164, !"_ZNK2cv7MatExprcvNS_3MatEEv: argument 0"}
!166 = distinct !{!166, i1 true, !"_ZN2cv7Scalar_IdE3allEd"}
!167 = distinct !{!167, !166, !"_ZN2cv7Scalar_IdE3allEd: argument 0"}
!168 = distinct !{!168, i1 true, !"_ZN2cv7Scalar_IdE3allEd"}
!169 = distinct !{!169, !168, !"_ZN2cv7Scalar_IdE3allEd: argument 0"}
!170 = distinct !{!170, i1 true, !"_ZNK2cv4MatxIfLi3ELi3EEcvNS0_IT_Li3ELi3EEEIdEEv"}
!171 = distinct !{!171, !170, !"_ZNK2cv4MatxIfLi3ELi3EEcvNS0_IT_Li3ELi3EEEIdEEv: argument 0"}
!172 = distinct !{!172, i1 true, !"_ZNK2cv4MatxIdLi4ELi4EE9get_minorILi3ELi1EEENS0_IdXT_EXT0_EEEii"}
!173 = distinct !{!173, !172, !"_ZNK2cv4MatxIdLi4ELi4EE9get_minorILi3ELi1EEENS0_IdXT_EXT0_EEEii: argument 0"}
!174 = distinct !{!174, i1 true, !"_ZNK2cv4MatxIdLi4ELi4EE9get_minorILi3ELi3EEENS0_IdXT_EXT0_EEEii"}
!175 = distinct !{!175, !174, !"_ZNK2cv4MatxIdLi4ELi4EE9get_minorILi3ELi3EEENS0_IdXT_EXT0_EEEii: argument 0"}
!176 = distinct !{!176, !38, !94, !95}
!177 = distinct !{!177, !38, !94, !95}
!178 = distinct !{!178, !38, !94}
!179 = distinct !{!179, !38, !94}
!180 = distinct !{!180, !38, !58}
!181 = distinct !{!181, !38}
!182 = distinct !{!182, !38}
!183 = distinct !{!183, !38, !58}
!184 = !{!165}
!185 = !{!167}
!186 = !{!169}
!187 = !{!171}
!188 = !{!173}
!189 = !{!175}
!190 = distinct !{!190, i1 true, !"_ZN2cvmlIdNS_7Point3_IdEEEET0_RKNS_7Affine3IT_EERKS3_"}
!191 = distinct !{!191, !190, !"_ZN2cvmlIdNS_7Point3_IdEEEET0_RKNS_7Affine3IT_EERKS3_: argument 0"}
!192 = distinct !{!192, !38}
!193 = distinct !{!193, i1 false, !"LVerDomain"}
!194 = distinct !{!194, !193}
!195 = distinct !{!195, !193}
!196 = distinct !{!196, !193}
!197 = distinct !{!197, !38, !94, !95}
!198 = distinct !{!198, !38}
!199 = distinct !{!199, !38, !94}
!200 = distinct !{!200, !38}
!201 = distinct !{!201, !38, !94, !95}
!202 = distinct !{!202, !38, !95, !94}
!203 = distinct !{!203, !38}
!204 = !{!191}
!205 = !{!194}
!206 = !{!195}
!207 = !{!196}
!208 = !{!194, !195}
!209 = distinct !{!209, !38}
!210 = distinct !{!210, i1 true, !"_ZNK2cv7Point3_IfEcvNS0_IT_EEIdEEv"}
!211 = distinct !{!211, !210, !"_ZNK2cv7Point3_IfEcvNS0_IT_EEIdEEv: argument 0"}
!212 = distinct !{!212, !38}
!213 = distinct !{!213, i1 false, !"LVerDomain"}
!214 = distinct !{!214, !213}
!215 = distinct !{!215, !213}
!216 = distinct !{!216, !213}
!217 = distinct !{!217, !38, !94, !95}
!218 = distinct !{!218, !38}
!219 = distinct !{!219, !38, !94}
!220 = distinct !{!220, !38}
!221 = distinct !{!221, !38, !94, !95}
!222 = distinct !{!222, !38, !95, !94}
!223 = distinct !{!223, !38}
!224 = !{!"p1 _ZTSN2cv7Point3_IfEE", !10, i64 0}
!225 = !{!"_ZTSN2cv10AutoBufferINS_7Point3_IfEELm93EEE", !224, i64 0, !47, i64 8, !6, i64 16}
!226 = !{!225, !224, i64 0}
!227 = !{!225, !47, i64 8}
!228 = !{!"_ZTSN2cv7Point3_IfEE", !22, i64 0, !22, i64 4, !22, i64 8}
!229 = !{!228, !22, i64 0}
!230 = !{!211}
!231 = !{!214}
!232 = !{!215}
!233 = !{!216}
!234 = !{!214, !215}
!235 = distinct !{!235, i1 true, !"_ZN2cv4MatxIfLi6ELi7EE5zerosEv"}
!236 = distinct !{!236, !235, !"_ZN2cv4MatxIfLi6ELi7EE5zerosEv: argument 0"}
!237 = !{!236}
!238 = !{!"p1 _ZTS23__pthread_internal_list", !10, i64 0}
!239 = !{!"_ZTS23__pthread_internal_list", !238, i64 0, !238, i64 8}
!240 = !{!"_ZTS17__pthread_mutex_s", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !59, i64 20, !59, i64 22, !239, i64 24}
!241 = !{!240, !7, i64 16}
!242 = !{!97, !97, i64 0}
!243 = !{!98, !98, i64 0}
!244 = !{!99, !99, i64 0}
!245 = distinct !{!245, i1 true, !"_ZN2cvmlIdEENS_8DualQuatIT_EERKS3_S2_"}
!246 = distinct !{!246, !245, !"_ZN2cvmlIdEENS_8DualQuatIT_EERKS3_S2_: argument 0"}
!247 = distinct !{!247, i1 true, !"_ZNK2cv8DualQuatIdE5toMatENS_14QuatAssumeTypeE"}
!248 = distinct !{!248, !247, !"_ZNK2cv8DualQuatIdE5toMatENS_14QuatAssumeTypeE: argument 0"}
!249 = distinct !{!249, i1 true, !"_ZNK2cv8DualQuatIdE11getRotationENS_14QuatAssumeTypeE"}
!250 = distinct !{!250, !249, !"_ZNK2cv8DualQuatIdE11getRotationENS_14QuatAssumeTypeE: argument 0"}
!251 = distinct !{!251, i1 true, !"_ZNK2cv8DualQuatIdE14getTranslationENS_14QuatAssumeTypeE"}
!252 = distinct !{!252, !251, !"_ZNK2cv8DualQuatIdE14getTranslationENS_14QuatAssumeTypeE: argument 0"}
!253 = distinct !{!253, i1 true, !"_ZNK2cv8DualQuatIdE11getDualPartEv"}
!254 = distinct !{!254, !253, !"_ZNK2cv8DualQuatIdE11getDualPartEv: argument 0"}
!255 = distinct !{!255, i1 true, !"_ZNK2cv8DualQuatIdE11getRealPartEv"}
!256 = distinct !{!256, !255, !"_ZNK2cv8DualQuatIdE11getRealPartEv: argument 0"}
!257 = !{!246}
!258 = !{!248}
!259 = !{!250}
!260 = !{!250, !248}
!261 = !{!107, !62, i64 32}
!262 = !{!254, !252}
!263 = !{!107, !62, i64 40}
!264 = !{!107, !62, i64 48}
!265 = !{!256, !252}
!266 = distinct !{!266, i1 true, !"_ZNK2cv8DualQuatIdE11getRealPartEv"}
!267 = distinct !{!267, !266, !"_ZNK2cv8DualQuatIdE11getRealPartEv: argument 0"}
!268 = distinct !{!268, i1 true, !"_ZNK2cv4QuatIdE3expEv"}
!269 = distinct !{!269, !268, !"_ZNK2cv4QuatIdE3expEv: argument 0"}
!270 = distinct !{!270, i1 true, !"_ZN2cv8DualQuatIdE14createFromQuatERKNS_4QuatIdEES5_"}
!271 = distinct !{!271, !270, !"_ZN2cv8DualQuatIdE14createFromQuatERKNS_4QuatIdEES5_: argument 0"}
!272 = distinct !{!272, i1 true, !"_ZNK2cv8DualQuatIdE11getDualPartEv"}
!273 = distinct !{!273, !272, !"_ZNK2cv8DualQuatIdE11getDualPartEv: argument 0"}
!274 = distinct !{!274, i1 true, !"_ZN2cvmlIdLi4ELi4EEENS_3VecIT_XT0_EEERKNS_4MatxIS2_XT0_EXT1_EEERKNS1_IS2_XT1_EEE"}
!275 = distinct !{!275, !274, !"_ZN2cvmlIdLi4ELi4EEENS_3VecIT_XT0_EEERKNS_4MatxIS2_XT0_EXT1_EEERKNS1_IS2_XT1_EEE: argument 0"}
!276 = !{!267}
!277 = !{!107, !62, i64 0}
!278 = !{!109, !62, i64 8}
!279 = !{!269}
!280 = !{!271}
!281 = !{!273}
!282 = !{!275}
!283 = distinct !{!283, !38}
!284 = distinct !{!284, !38}
!285 = distinct !{null}
!286 = distinct !{!286, !38}
!287 = distinct !{!287, !38}
!288 = distinct !{!288, !38}
!289 = distinct !{!289, !38}
!290 = distinct !{!290, !38}
!291 = distinct !{!291, !38}
!292 = !{!"_ZTSNSt6vectorIN2cv4UMatESaIS1_EE16_Temporary_valueE", !31, i64 0, !6, i64 8}
!293 = !{!292, !31, i64 0}
!294 = distinct !{!294, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!295 = distinct !{!295, !294, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!296 = distinct !{!296, !38}
!297 = !{!295}
!298 = distinct !{!298, i1 true, !"_ZSt19__relocate_object_aIN2cv4MatxIfLi3ELi3EEES2_SaIS2_EEvPT_PT0_RT1_"}
!299 = distinct !{!299, !298, !"_ZSt19__relocate_object_aIN2cv4MatxIfLi3ELi3EEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!300 = distinct !{!300, !298, !"_ZSt19__relocate_object_aIN2cv4MatxIfLi3ELi3EEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!301 = distinct !{!301, !38}
!302 = !{!300, !299}
!303 = distinct !{!303, !38}
!304 = distinct !{!304, i1 true, !"_ZN2cv9fromPtypeERKNS_3VecIfLi4EEE"}
!305 = distinct !{!305, !304, !"_ZN2cv9fromPtypeERKNS_3VecIfLi4EEE: argument 0"}
!306 = distinct !{!306, i1 true, !"_ZN2cv9fromPtypeERKNS_3VecIfLi4EEE"}
!307 = distinct !{!307, !306, !"_ZN2cv9fromPtypeERKNS_3VecIfLi4EEE: argument 0"}
!308 = distinct !{!308, i1 true, !"_ZN2cv9fromPtypeERKNS_3VecIfLi4EEE"}
!309 = distinct !{!309, !308, !"_ZN2cv9fromPtypeERKNS_3VecIfLi4EEE: argument 0"}
!310 = distinct !{!310, i1 true, !"_ZN2cv9fromPtypeERKNS_3VecIfLi4EEE"}
!311 = distinct !{!311, !310, !"_ZN2cv9fromPtypeERKNS_3VecIfLi4EEE: argument 0"}
!312 = distinct !{!312, i1 true, !"_ZN2cv9fromPtypeERKNS_3VecIfLi4EEE"}
!313 = distinct !{!313, !312, !"_ZN2cv9fromPtypeERKNS_3VecIfLi4EEE: argument 0"}
!314 = distinct !{!314, i1 true, !"_ZN2cv9fromPtypeERKNS_3VecIfLi4EEE"}
!315 = distinct !{!315, !314, !"_ZN2cv9fromPtypeERKNS_3VecIfLi4EEE: argument 0"}
!316 = distinct !{!316, i1 true, !"_ZN2cv9fromPtypeERKNS_3VecIfLi4EEE"}
!317 = distinct !{!317, !316, !"_ZN2cv9fromPtypeERKNS_3VecIfLi4EEE: argument 0"}
!318 = distinct !{!318, i1 true, !"_ZN2cv9fromPtypeERKNS_3VecIfLi4EEE"}
!319 = distinct !{!319, !318, !"_ZN2cv9fromPtypeERKNS_3VecIfLi4EEE: argument 0"}
!320 = distinct !{!320, i1 true, !"_ZN2cv9fromPtypeERKNS_3VecIfLi4EEE"}
!321 = distinct !{!321, !320, !"_ZN2cv9fromPtypeERKNS_3VecIfLi4EEE: argument 0"}
!322 = distinct !{!322, i1 true, !"_ZN2cv9fromPtypeERKNS_3VecIfLi4EEE"}
!323 = distinct !{!323, !322, !"_ZN2cv9fromPtypeERKNS_3VecIfLi4EEE: argument 0"}
!324 = distinct !{!324, !38}
!325 = !{!104, !99, i64 40}
!326 = !{}
!327 = !{i64 8}
!328 = !{!104, !99, i64 48}
!329 = !{!104, !98, i64 16}
!330 = !{!305}
!331 = !{!307}
!332 = !{!104, !99, i64 24}
!333 = !{!309}
!334 = !{!311}
!335 = !{!313}
!336 = !{!315}
!337 = !{!104, !99, i64 32}
!338 = !{!317}
!339 = !{!319}
!340 = !{!321}
!341 = !{!323}
!342 = !{!104, !97, i64 8}
!343 = !{i64 4}
!344 = distinct !{!344, i1 true, !"_ZN2cvmlIdLi4ELi4EEENS_4MatxIT_XT0_EXT1_EEEdRKS3_"}
!345 = distinct !{!345, !344, !"_ZN2cvmlIdLi4ELi4EEENS_4MatxIT_XT0_EXT1_EEEdRKS3_: argument 0"}
!346 = !{!345}
!347 = distinct !{!347, i1 true, !"_ZNK2cv4QuatIdE9normalizeEv"}
!348 = distinct !{!348, !347, !"_ZNK2cv4QuatIdE9normalizeEv: argument 0"}
!349 = !{!348}
end_hunk_2
