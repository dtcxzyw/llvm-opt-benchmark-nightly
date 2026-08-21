inline.NumInlined: 1901
inline.NumDeleted: 586
loop-unroll.NumCompletelyUnrolled: 57
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 62
begin_hunk_0_@_ZN2cv19calcRgbdLsmMatricesERKNS_3MatES2_S2_S2_S2_S2_ddddRS0_S3_NS_21OdometryTransformTypeE:bb.a
bb.r:                                             ; preds = %.lr.ph.split, %bb.x
  %indvars.iv147 = phi i64 [ 0, %.lr.ph.split ], [ %indvars.iv.next148, %bb.x ] ; 3 uses
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %indvars.iv147 ; 4 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !19
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !19
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !19
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !19
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv147
  %i.by = load float, ptr %i.bx, align 4, !tbaa !21 ; 2 uses
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
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !21
  %i.cm = fpext float %i.cl to double
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  %i.co = load <2 x float>, ptr %i.cn, align 4, !tbaa !21
  %i.cp = fpext <2 x float> %i.co to <2 x double> ; 2 uses
  %i.cq = load <12 x double>, ptr %23, align 8, !tbaa !83, !noalias !174 ; 8 uses
  %i.cr = shufflevector <12 x double> %i.cq, <12 x double> poison, <2 x i32> <i32 5, i32 9>
  %i.cs = shufflevector <2 x double> %i.cp, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ct = fmul <2 x double> %i.cr, %i.cs
  %i.cu = shufflevector <12 x double> %i.cq, <12 x double> poison, <2 x i32> <i32 9, i32 1>
  %i.cv = fmul <2 x double> %i.cu, %i.cs
  %i.cw = shufflevector <12 x double> %i.cq, <12 x double> poison, <2 x i32> <i32 4, i32 8>
  %i.cx = insertelement <2 x double> poison, double %i.cm, i64 0
  %i.cy = shufflevector <2 x double> %i.cx, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cw, <2 x double> %i.cy, <2 x double> %i.ct)
  %i.da = shufflevector <12 x double> %i.cq, <12 x double> poison, <2 x i32> <i32 8, i32 0>
  %i.db = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.da, <2 x double> %i.cy, <2 x double> %i.cv)
  %i.dc = shufflevector <12 x double> %i.cq, <12 x double> poison, <2 x i32> <i32 10, i32 2>
  %i.dd = shufflevector <2 x double> %i.cp, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.de = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dc, <2 x double> %i.dd, <2 x double> %i.db)
  %i.df = shufflevector <12 x double> %i.cq, <12 x double> poison, <2 x i32> <i32 6, i32 10>
  %i.dg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.df, <2 x double> %i.dd, <2 x double> %i.cz)
  %i.dh = shufflevector <12 x double> %i.cq, <12 x double> poison, <2 x i32> <i32 7, i32 11>
  %i.di = shufflevector <12 x double> %i.cq, <12 x double> poison, <2 x i32> <i32 11, i32 3>
  %i.dj = fadd <2 x double> %i.dh, %i.dg          ; 7 uses
  %i.dk = fadd <2 x double> %i.di, %i.de          ; 4 uses
  %i.dl = load i64, ptr %i.as, align 8
  %i.dm = sext i32 %i.bw to i64                   ; 2 uses
  %i.dn = mul i64 %i.dl, %i.dm
  %.sink.idx.i105 = select i1 %i.ap, i64 0, i64 %i.dn
  %.sink.i106 = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sink.idx.i105
  %i.do = sext i32 %i.bu to i64                   ; 2 uses
  %i.dp = getelementptr inbounds [2 x i8], ptr %.sink.i106, i64 %i.do
  %i.dq = load i16, ptr %i.dp, align 2, !tbaa !64
  %i.dr = load i64, ptr %i.ay, align 8
  %i.ds = mul i64 %i.dr, %i.dm
  %.sink.idx.i107 = select i1 %i.av, i64 0, i64 %i.ds
  %.sink.i108 = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.sink.idx.i107
  %i.dt = getelementptr inbounds [2 x i8], ptr %.sink.i108, i64 %i.do
  %i.du = load i16, ptr %i.dt, align 2, !tbaa !64
  %i.dv = insertelement <2 x i16> poison, i16 %i.dq, i64 0
  %i.dw = insertelement <2 x i16> %i.dv, i16 %i.du, i64 1
  %i.dx = sitofp <2 x i16> %i.dw to <2 x double>
  %i.dy = insertelement <2 x double> poison, double %i.cf, i64 0
  %i.dz = shufflevector <2 x double> %i.dy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ea = fmul <2 x double> %i.dz, %i.dx          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  br i1 %cond, label %_ZN2cvL15getTransformDimENS_21OdometryTransformTypeE.exit.thread.i, label %_ZN2cvL15getTransformDimENS_21OdometryTransformTypeE.exit.i

_ZN2cvL15getTransformDimENS_21OdometryTransformTypeE.exit.thread.i: ; preds = %bb.r
  %i.eb = extractelement <2 x double> %i.dj, i64 1
  %i.ec = fdiv double 1.000000e+00, %i.eb         ; 2 uses
  %i.ed = fmul <2 x double> %i.bh, %i.ea
  %i.ee = insertelement <2 x double> poison, double %i.ec, i64 0
  %i.ef = shufflevector <2 x double> %i.ee, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eg = fmul <2 x double> %i.ef, %i.ed          ; 7 uses
  %i.eh = extractelement <2 x double> %i.eg, i64 0
  %i.ei = shufflevector <2 x double> %i.dj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ej = shufflevector <2 x double> %i.eg, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ek = fneg <2 x double> %i.eg
  %i.el = shufflevector <2 x double> %i.eg, <2 x double> %i.ek, <2 x i32> <i32 1, i32 2>
  %i.em = fmul <2 x double> %i.ei, %i.el
  %i.en = shufflevector <2 x double> %i.dk, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.eo = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eg, <2 x double> %i.en, <2 x double> %i.em) ; 2 uses
  %i.ep = extractelement <2 x double> %i.eo, i64 0
  %i.eq = fneg double %i.ep
  %i.er = fmul double %i.ec, %i.eq                ; 3 uses
  %i.es = insertelement <2 x double> %i.ej, double %i.er, i64 1
  %i.et = fneg <2 x double> %i.es
  %i.eu = fmul <2 x double> %i.dk, %i.et
  %i.ev = insertelement <2 x double> poison, double %i.er, i64 0
  %i.ew = shufflevector <2 x double> %i.ev, <2 x double> %i.eg, <2 x i32> <i32 0, i32 2>
  %i.ex = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dj, <2 x double> %i.ew, <2 x double> %i.eu)
  store <2 x double> %i.ex, ptr %.sroa.0.i, align 16
  %i.ey = extractelement <2 x double> %i.eo, i64 1
  store double %i.ey, ptr %.sroa.0.i.16.i.16.i.16..sroa_idx209, align 16
  store double %i.eh, ptr %.sroa.0.i.24.i.24.i.24..sroa_idx, align 8
  %i.ez = extractelement <2 x double> %i.eg, i64 1
  store double %i.ez, ptr %.sroa.0.i.32.i.32.i.32..sroa_idx, align 16
  store double %i.er, ptr %.sroa.0.i.40.i.40.i.40..sroa_idx, align 8
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
  %i.fa = landingpad { ptr, i32 }
          cleanup
  %i.fb = load ptr, ptr %13, align 8, !tbaa !50   ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.fd = icmp eq ptr %i.fb, %i.fc
  br i1 %i.fd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.u
  %i.fe = load i64, ptr %i.fc, align 8, !tbaa !18
  %i.ff = add i64 %i.fe, 1
  call void @_ZdlPvm(ptr noundef %i.fb, i64 noundef %i.ff) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit115

_ZN2cvL15getTransformDimENS_21OdometryTransformTypeE.exit.i: ; preds = %bb.r
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.0.i, i8 0, i64 48, i1 false), !tbaa !83
  %i.fg = extractelement <2 x double> %i.dj, i64 1
  %i.fh = fdiv double 1.000000e+00, %i.fg         ; 3 uses
  %i.fi = fmul <2 x double> %i.bh, %i.ea          ; 2 uses
  %i.fj = extractelement <2 x double> %i.dj, i64 0 ; 2 uses
  %i.fk = extractelement <2 x double> %i.dk, i64 1 ; 2 uses
  %i.fl = extractelement <2 x double> %i.fi, i64 0
  %i.fm = fmul double %i.fh, %i.fl                ; 4 uses
  %i.fn = extractelement <2 x double> %i.fi, i64 1
  %i.fo = fmul double %i.fh, %i.fn                ; 4 uses
  %i.fp = fmul double %i.fj, %i.fo
  %i.fq = call double @llvm.fmuladd.f64(double %i.fm, double %i.fk, double %i.fp)
  %i.fr = fneg double %i.fq
  %i.fs = fmul double %i.fh, %i.fr                ; 3 uses
  br i1 %i.az, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZN2cvL15getTransformDimENS_21OdometryTransformTypeE.exit.i
  %i.ft = insertelement <2 x double> poison, double %i.fo, i64 0
  %i.fu = insertelement <2 x double> %i.ft, double %i.fs, i64 1
  %i.fv = fneg <2 x double> %i.fu
  %i.fw = fneg double %i.fm
  %i.fx = fmul double %i.fj, %i.fw
  %i.fy = call double @llvm.fmuladd.f64(double %i.fk, double %i.fo, double %i.fx)
  %i.fz = shufflevector <2 x double> %i.dj, <2 x double> %i.dk, <2 x i32> <i32 1, i32 3>
  %i.ga = fmul <2 x double> %i.fz, %i.fv
  %i.gb = insertelement <2 x double> poison, double %i.fs, i64 0
  %i.gc = insertelement <2 x double> %i.gb, double %i.fm, i64 1
  %i.gd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dj, <2 x double> %i.gc, <2 x double> %i.ga)
  store <2 x double> %i.gd, ptr %.sroa.0.i, align 16
  store double %i.fy, ptr %.sroa.0.i.16.i.16.i.16..sroa_idx, align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.24.i.24.i.24..sroa_idx210, i8 0, i64 24, i1 false)
  br label %_ZN2cvL14rgbdCoeffsFuncENS_21OdometryTransformTypeEPdddRKNS_7Point3_IdEEdd.exit

bb.w:                                             ; preds = %_ZN2cvL15getTransformDimENS_21OdometryTransformTypeE.exit.i
  store double %i.fm, ptr %.sroa.0.i, align 16
  store double %i.fo, ptr %.sroa.0.i.8.i.8.i.8..sroa_idx, align 8
  store double %i.fs, ptr %.sroa.0.i.16.i.16.i.16..sroa_idx208, align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.24.i.24.i.24..sroa_idx211, i8 0, i64 24, i1 false)
  br label %_ZN2cvL14rgbdCoeffsFuncENS_21OdometryTransformTypeEPdddRKNS_7Point3_IdEEdd.exit

_ZN2cvL14rgbdCoeffsFuncENS_21OdometryTransformTypeEPdddRKNS_7Point3_IdEEdd.exit: ; preds = %_ZN2cvL15getTransformDimENS_21OdometryTransformTypeE.exit.thread.i, %bb.v, %bb.w
  %.04.i46.i = phi i64 [ 24, %bb.w ], [ 24, %bb.v ], [ 48, %_ZN2cvL15getTransformDimENS_21OdometryTransformTypeE.exit.thread.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ac, ptr noundef nonnull align 16 dereferenceable(1) %.sroa.0.i, i64 %.04.i46.i, i1 false), !tbaa !83
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  %i.ge = fpext float %i.by to double
  br label %bb.z

bb.x:                                             ; preds = %.loopexit203
  %indvars.iv.next148 = add nuw nsw i64 %indvars.iv147, 1 ; 2 uses
  %exitcond151.not = icmp eq i64 %indvars.iv.next148, %wide.trip.count150
  br i1 %exitcond151.not, label %.preheader, label %bb.r, !llvm.loop !177

bb.y:                                             ; preds = %bb.s
  %i.gf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit115

bb.z:                                             ; preds = %_ZN2cvL14rgbdCoeffsFuncENS_21OdometryTransformTypeEPdddRKNS_7Point3_IdEEdd.exit, %.loopexit203
  %indvars.iv = phi i64 [ 0, %_ZN2cvL14rgbdCoeffsFuncENS_21OdometryTransformTypeEPdddRKNS_7Point3_IdEEdd.exit ], [ %indvars.iv.next, %.loopexit203 ] ; 11 uses
  %25 = sub nsw i64 %i.aa, %indvars.iv            ; 3 uses
  %i.gg = mul i64 %i.bd, %indvars.iv
  %i.gh = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.gg ; 4 uses
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv ; 6 uses
  %min.iters.check = icmp ult i64 %25, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.z
  %i.gj = mul i64 %i.bd, %indvars.iv
  %scevgep184 = getelementptr i8, ptr %i.bi, i64 %i.gj ; 2 uses
  %i.gk = mul i64 %i.be, %indvars.iv
  %scevgep = getelementptr i8, ptr %i.bc, i64 %i.gk ; 2 uses
  %bound0 = icmp ult ptr %scevgep, %scevgep185
  %bound1 = icmp ult ptr %i.gi, %scevgep184
  %found.conflict = and i1 %bound0, %bound1
  %bound0186 = icmp ult ptr %scevgep, %scevgep185
  %bound1187 = icmp ult ptr %i.ac, %scevgep184
  %found.conflict188 = and i1 %bound0186, %bound1187
  %conflict.rdx = or i1 %found.conflict, %found.conflict188
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %25, -4                        ; 3 uses
  %i.gl = add i64 %indvars.iv, %n.vec
  %i.gm = load double, ptr %i.gi, align 8, !tbaa !83, !alias.scope !178
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.gm, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gn = add nuw i64 %indvars.iv, %index         ; 2 uses
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.gn ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 16
  %wide.load = load <2 x double>, ptr %i.go, align 8, !tbaa !83, !alias.scope !181
  %wide.load189 = load <2 x double>, ptr %i.gp, align 8, !tbaa !83, !alias.scope !181
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %i.gn ; 3 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 16 ; 2 uses
  %wide.load190 = load <2 x double>, ptr %i.gq, align 8, !tbaa !83, !alias.scope !183, !noalias !185
  %wide.load191 = load <2 x double>, ptr %i.gr, align 8, !tbaa !83, !alias.scope !183, !noalias !185
  %i.gs = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %wide.load190)
  %i.gt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load189, <2 x double> %wide.load191)
  store <2 x double> %i.gs, ptr %i.gq, align 8, !tbaa !83, !alias.scope !183, !noalias !185
  store <2 x double> %i.gt, ptr %i.gr, align 8, !tbaa !83, !alias.scope !183, !noalias !185
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gu = icmp eq i64 %index.next, %n.vec
  br i1 %i.gu, label %middle.block, label %vector.body, !llvm.loop !186

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %25, %n.vec
  br i1 %cmp.n, label %.loopexit203, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.z, %middle.block
  %indvars.iv141.ph = phi i64 [ %indvars.iv, %vector.memcheck ], [ %indvars.iv, %bb.z ], [ %i.gl, %middle.block ] ; 6 uses
  %i.gv = sub i64 %i.aa, %indvars.iv141.ph
  %xtraiter = and i64 %i.gv, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.gw = load double, ptr %i.gi, align 8, !tbaa !83
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv141.ph
  %i.gy = load double, ptr %i.gx, align 8, !tbaa !83
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %indvars.iv141.ph ; 2 uses
  %i.ha = load double, ptr %i.gz, align 8, !tbaa !83
  %i.hb = call double @llvm.fmuladd.f64(double %i.gw, double %i.gy, double %i.ha)
  store double %i.hb, ptr %i.gz, align 8, !tbaa !83
  %indvars.iv.next142.prol = add nuw nsw i64 %indvars.iv141.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv141.unr = phi i64 [ %indvars.iv141.ph, %scalar.ph.preheader ], [ %indvars.iv.next142.prol, %scalar.ph.prol ]
  %i.hc = icmp eq i64 %indvars.iv141.ph, %i.bj
  br i1 %i.hc, label %.loopexit203, label %scalar.ph

.loopexit203:                                     ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.hd = load double, ptr %i.gi, align 8, !tbaa !83
  %i.he = fmul double %i.ce, %i.hd
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv ; 2 uses
  %i.hg = load double, ptr %i.hf, align 8, !tbaa !83
  %i.hh = call double @llvm.fmuladd.f64(double %i.he, double %i.ge, double %i.hg)
  store double %i.hh, ptr %i.hf, align 8, !tbaa !83
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond146.not = icmp eq i64 %indvars.iv.next, %i.aa
  br i1 %exitcond146.not, label %bb.x, label %bb.z, !llvm.loop !187

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv141 = phi i64 [ %indvars.iv.next142.1, %scalar.ph ], [ %indvars.iv141.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.hi = load double, ptr %i.gi, align 8, !tbaa !83
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv141
  %i.hk = load double, ptr %i.hj, align 8, !tbaa !83
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %indvars.iv141 ; 2 uses
  %i.hm = load double, ptr %i.hl, align 8, !tbaa !83
  %i.hn = call double @llvm.fmuladd.f64(double %i.hi, double %i.hk, double %i.hm)
  store double %i.hn, ptr %i.hl, align 8, !tbaa !83
  %indvars.iv.next142 = add nuw nsw i64 %indvars.iv141, 1 ; 2 uses
  %i.ho = load double, ptr %i.gi, align 8, !tbaa !83
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.next142
  %i.hq = load double, ptr %i.hp, align 8, !tbaa !83
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %indvars.iv.next142 ; 2 uses
  %i.hs = load double, ptr %i.hr, align 8, !tbaa !83
  %i.ht = call double @llvm.fmuladd.f64(double %i.ho, double %i.hq, double %i.hs)
  store double %i.ht, ptr %i.hr, align 8, !tbaa !83
  %indvars.iv.next142.1 = add nuw nsw i64 %indvars.iv141, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next142.1, %i.aa
  br i1 %exitcond.not.1, label %.loopexit203, label %scalar.ph, !llvm.loop !188

.loopexit:                                        ; preds = %.lr.ph137.split.prol.loopexit, %.lr.ph137.split, %.lr.ph137.split.us, %middle.block200, %bb.aa
  %indvars.iv.next153 = add nuw nsw i64 %indvars.iv152, 1
  %exitcond168.not = icmp eq i64 %indvars.iv.next165, %i.aa
  br i1 %exitcond168.not, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.aa, !llvm.loop !189

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %.loopexit
  call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ab) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  ret void

bb.aa:                                            ; preds = %.preheader, %.loopexit
  %indvars.iv164 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next165, %.loopexit ] ; 8 uses
  %indvars.iv152 = phi i64 [ 1, %.preheader ], [ %indvars.iv.next153, %.loopexit ] ; 8 uses
  %i.hu = xor i64 %indvars.iv164, -1
  %i.hv = add nsw i64 %i.hu, %i.aa                ; 3 uses
  %indvars.iv.next165 = add nuw nsw i64 %indvars.iv164, 1 ; 3 uses
  %i.hw = icmp samesign ult i64 %indvars.iv.next165, %i.aa
  br i1 %i.hw, label %.lr.ph137, label %.loopexit

.lr.ph137:                                        ; preds = %bb.aa
  %i.hx = load i32, ptr %i.bk, align 4, !tbaa !170
  %.fr139 = freeze i32 %i.hx
  %i.hy = icmp slt i32 %.fr139, 2
  %i.hz = load ptr, ptr %i.bl, align 8, !tbaa !60 ; 6 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.hz, i64 %indvars.iv164 ; 5 uses
  br i1 %i.hy, label %.lr.ph137.split.us.preheader, label %.lr.ph137.split.preheader

.lr.ph137.split.preheader:                        ; preds = %.lr.ph137
  %i.ia = sub nsw i64 %indvars.iv164, %i.aa
  %i.ib = and i64 %i.ia, 1
  %lcmp.mod207.not.not = icmp eq i64 %i.ib, 0
  br i1 %lcmp.mod207.not.not, label %.lr.ph137.split.prol, label %.lr.ph137.split.prol.loopexit

.lr.ph137.split.prol:                             ; preds = %.lr.ph137.split.preheader
  %i.ic = load i64, ptr %i.bm, align 8            ; 2 uses
  %i.id = mul i64 %i.ic, %indvars.iv164
  %.sink.i111.prol = getelementptr inbounds nuw i8, ptr %i.hz, i64 %i.id
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %.sink.i111.prol, i64 %indvars.iv152
  %i.if = load double, ptr %i.ie, align 8, !tbaa !83
  %i.ig = mul i64 %i.ic, %indvars.iv152
  %gep.prol = getelementptr i8, ptr %invariant.gep, i64 %i.ig
  store double %i.if, ptr %gep.prol, align 8, !tbaa !83
  %indvars.iv.next155.prol = add nuw nsw i64 %indvars.iv152, 1
  br label %.lr.ph137.split.prol.loopexit

.lr.ph137.split.prol.loopexit:                    ; preds = %.lr.ph137.split.prol, %.lr.ph137.split.preheader
  %indvars.iv154.unr = phi i64 [ %indvars.iv152, %.lr.ph137.split.preheader ], [ %indvars.iv.next155.prol, %.lr.ph137.split.prol ]
  %i.ih = icmp eq i64 %i.bn, %indvars.iv164
  br i1 %i.ih, label %.loopexit, label %.lr.ph137.split

.lr.ph137.split.us.preheader:                     ; preds = %.lr.ph137
  %min.iters.check193 = icmp ult i64 %i.hv, 4
  br i1 %min.iters.check193, label %.lr.ph137.split.us.preheader204, label %vector.ph194

vector.ph194:                                     ; preds = %.lr.ph137.split.us.preheader
  %n.vec195 = and i64 %i.hv, -4                   ; 3 uses
  %i.ii = add i64 %indvars.iv152, %n.vec195
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.hz, i64 %indvars.iv152
  br label %vector.body196

vector.body196:                                   ; preds = %vector.body196, %vector.ph194
  %index197 = phi i64 [ 0, %vector.ph194 ], [ %index.next199, %vector.body196 ] ; 2 uses
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %index197
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 24
  %i.im = load double, ptr %i.il, align 8, !tbaa !83
  store double %i.im, ptr %invariant.gep, align 8, !tbaa !83
  %index.next199 = add nuw i64 %index197, 4       ; 2 uses
  %i.in = icmp eq i64 %index.next199, %n.vec195
  br i1 %i.in, label %middle.block200, label %vector.body196, !llvm.loop !190

middle.block200:                                  ; preds = %vector.body196
  %cmp.n201 = icmp eq i64 %i.hv, %n.vec195
  br i1 %cmp.n201, label %.loopexit, label %.lr.ph137.split.us.preheader204

.lr.ph137.split.us.preheader204:                  ; preds = %.lr.ph137.split.us.preheader, %middle.block200
  %indvars.iv159.ph = phi i64 [ %indvars.iv152, %.lr.ph137.split.us.preheader ], [ %i.ii, %middle.block200 ]
  br label %.lr.ph137.split.us

.lr.ph137.split.us:                               ; preds = %.lr.ph137.split.us.preheader204, %.lr.ph137.split.us
  %indvars.iv159 = phi i64 [ %indvars.iv.next160, %.lr.ph137.split.us ], [ %indvars.iv159.ph, %.lr.ph137.split.us.preheader204 ] ; 2 uses
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.hz, i64 %indvars.iv159
  %i.ip = load double, ptr %i.io, align 8, !tbaa !83
  store double %i.ip, ptr %invariant.gep, align 8, !tbaa !83
  %indvars.iv.next160 = add nuw nsw i64 %indvars.iv159, 1 ; 2 uses
  %exitcond163.not = icmp eq i64 %indvars.iv.next160, %i.aa
  br i1 %exitcond163.not, label %.loopexit, label %.lr.ph137.split.us, !llvm.loop !191

.lr.ph137.split:                                  ; preds = %.lr.ph137.split.prol.loopexit, %.lr.ph137.split
  %indvars.iv154 = phi i64 [ %indvars.iv.next155.1, %.lr.ph137.split ], [ %indvars.iv154.unr, %.lr.ph137.split.prol.loopexit ] ; 4 uses
  %i.iq = load i64, ptr %i.bm, align 8            ; 2 uses
  %i.ir = mul i64 %i.iq, %indvars.iv164
  %.sink.i111 = getelementptr inbounds nuw i8, ptr %i.hz, i64 %i.ir
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %.sink.i111, i64 %indvars.iv154
  %i.it = load double, ptr %i.is, align 8, !tbaa !83
  %i.iu = mul i64 %i.iq, %indvars.iv154
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.iu
  store double %i.it, ptr %gep, align 8, !tbaa !83
end_hunk_0
begin_hunk_1_@_ZN2cv18calcICPLsmMatricesERKNS_3MatES2_S2_S2_S2_RS0_S3_NS_21OdometryTransformTypeE:bb.a
_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit:               ; preds = %._crit_edge
  store double 0.000000e+00, ptr %i.ch, align 8, !tbaa !83
  %i.et = getelementptr i8, ptr %i.ch, i64 8
  %i.eu = shl nuw nsw i64 %i.cf, 3
  %.idx.i.i.i.i.i.i.i = add nsw i64 %i.eu, -8
  call void @llvm.memset.p0.i64(ptr align 8 %i.et, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !83
  br i1 %i.aw, label %.lr.ph238, label %.preheader

.lr.ph238:                                        ; preds = %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit
  %i.ev = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !170
  %i.ex = icmp slt i32 %i.ew, 2
  %i.ey = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !60
  %i.fa = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.fb = icmp eq i32 %7, 2
  switch i32 %7, label %bb.u [
    i32 4, label %.lr.ph238.split
    i32 1, label %.lr.ph238.split
    i32 2, label %.lr.ph238.split
  ]

.lr.ph238.split:                                  ; preds = %.lr.ph238, %.lr.ph238, %.lr.ph238
  %i.fc = getelementptr inbounds nuw i8, ptr %5, i64 128
  %i.fd = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !60 ; 3 uses
  %i.ff = load i64, ptr %i.fc, align 8, !tbaa !61 ; 3 uses
  %wide.trip.count259 = zext nneg i32 %i.l to i64
  %cond = icmp eq i32 %7, 4
  %i.fg = add i64 %i.ff, 8
  %i.fh = shl nuw nsw i64 %i.cf, 3                ; 2 uses
  %scevgep307 = getelementptr i8, ptr %i.ch, i64 %i.fh ; 2 uses
  %.sroa.0.i.16.i.16.i.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 16
  %.sroa.0.i.24.i.24.i.24..sroa_idx332 = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 24
  %.sroa.0.i.16.i.16.i.16..sroa_idx330 = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 16
  %.sroa.0.i.24.i.24.i.24..sroa_idx333 = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 24
  %.sroa.0.i.16.i.16.i.16..sroa_idx331 = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 16
  %.sroa.0.i.24.i.24.i.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 24
  %.sroa.0.i.32.i.32.i.32..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 32
  %.sroa.0.i.40.i.40.i.40..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 40
  %i.fi = getelementptr i8, ptr %i.fe, i64 %i.fh
  %i.fj = add nsw i64 %i.cf, -1
  br label %bb.t

.preheader:                                       ; preds = %bb.aa, %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit
  %i.fk = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.fl = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.fm = getelementptr inbounds nuw i8, ptr %5, i64 128 ; 3 uses
  %i.fn = add nsw i64 %i.cf, -2
  br label %bb.af

bb.s:                                             ; preds = %._crit_edge
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.t:                                             ; preds = %.lr.ph238.split, %bb.aa
  %indvars.iv256 = phi i64 [ 0, %.lr.ph238.split ], [ %indvars.iv.next257, %bb.aa ] ; 4 uses
  %i.fp = getelementptr inbounds nuw [16 x i8], ptr %i.av, i64 %indvars.iv256 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !19
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 12
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !19
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv256
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !21 ; 2 uses
  %i.fw = call noundef float @llvm.fabs.f32(float %i.fv)
  %i.fx = fpext float %i.fw to double
  %i.fy = fadd double %i.ce, %i.fx                ; 2 uses
  %i.fz = fcmp ogt double %i.fy, f0x3CB0000000000000
  %i.ga = fdiv double 1.000000e+00, %i.fy
  %i.gb = select i1 %i.fz, double %i.ga, double 1.000000e+00 ; 2 uses
  %i.gc = load i64, ptr %i.fa, align 8
  %i.gd = sext i32 %i.ft to i64
  %i.ge = mul i64 %i.gc, %i.gd
  %.sink.idx.i167 = select i1 %i.ex, i64 0, i64 %i.ge
  %.sink.i168 = getelementptr inbounds nuw i8, ptr %i.ez, i64 %.sink.idx.i167
  %i.gf = sext i32 %i.fr to i64
  %i.gg = getelementptr inbounds [16 x i8], ptr %.sink.i168, i64 %i.gf ; 2 uses
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !21
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gg, i64 4
  %i.gj = getelementptr inbounds nuw [12 x i8], ptr %i.at, i64 %indvars.iv256 ; 2 uses
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !198, !noalias !200
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gj, i64 4
  %i.gm = load <2 x float>, ptr %i.gi, align 4, !tbaa !21 ; 2 uses
  %i.gn = load <2 x float>, ptr %i.gl, align 4, !tbaa !21, !noalias !200 ; 2 uses
  %i.go = shufflevector <2 x float> %i.gn, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.gp = insertelement <2 x float> %i.go, float %i.gk, i64 1
  %i.gq = fpext <2 x float> %i.gn to <2 x double> ; 5 uses
  %i.gr = fpext <2 x float> %i.gp to <2 x double> ; 4 uses
  %i.gs = shufflevector <2 x float> %i.gm, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.gt = insertelement <2 x float> %i.gs, float %i.gh, i64 1
  %i.gu = fpext <2 x float> %i.gt to <2 x double>
  %i.gv = fpext <2 x float> %i.gm to <2 x double>
  %i.gw = insertelement <2 x double> poison, double %i.gb, i64 0
  %i.gx = shufflevector <2 x double> %i.gw, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gy = fmul <2 x double> %i.gx, %i.gu          ; 8 uses
  %i.gz = fmul <2 x double> %i.gx, %i.gv          ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  br i1 %cond, label %_ZN2cvL15getTransformDimENS_21OdometryTransformTypeE.exit.thread.i, label %_ZN2cvL15getTransformDimENS_21OdometryTransformTypeE.exit.i

_ZN2cvL15getTransformDimENS_21OdometryTransformTypeE.exit.thread.i: ; preds = %bb.t
  %i.ha = fneg <2 x double> %i.gz
  %i.hb = extractelement <2 x double> %i.gy, i64 1 ; 2 uses
  %i.hc = fneg double %i.hb
  %i.hd = extractelement <2 x double> %i.gq, i64 0
  %i.he = fmul double %i.hd, %i.hc
  %i.hf = extractelement <2 x double> %i.gz, i64 0 ; 2 uses
  %i.hg = extractelement <2 x double> %i.gr, i64 1
  %i.hh = call double @llvm.fmuladd.f64(double %i.hg, double %i.hf, double %i.he)
  %i.hi = fmul <2 x double> %i.ha, %i.gr
  %i.hj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gq, <2 x double> %i.gy, <2 x double> %i.hi)
  store <2 x double> %i.hj, ptr %.sroa.0.i, align 16
  store double %i.hh, ptr %.sroa.0.i.16.i.16.i.16..sroa_idx331, align 16
  store double %i.hb, ptr %.sroa.0.i.24.i.24.i.24..sroa_idx, align 8
  store double %i.hf, ptr %.sroa.0.i.32.i.32.i.32..sroa_idx, align 16
  %i.hk = extractelement <2 x double> %i.gy, i64 0
  store double %i.hk, ptr %.sroa.0.i.40.i.40.i.40..sroa_idx, align 8
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
  %i.hl = landingpad { ptr, i32 }
          cleanup
  %i.hm = load ptr, ptr %8, align 8, !tbaa !50    ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ho = icmp eq ptr %i.hm, %i.hn
  br i1 %i.ho, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.w
  %i.hp = load i64, ptr %i.hn, align 8, !tbaa !18
  %i.hq = add i64 %i.hp, 1
  call void @_ZdlPvm(ptr noundef %i.hm, i64 noundef %i.hq) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit180

_ZN2cvL15getTransformDimENS_21OdometryTransformTypeE.exit.i: ; preds = %bb.t
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.0.i, i8 0, i64 48, i1 false), !tbaa !83
  br i1 %i.fb, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN2cvL15getTransformDimENS_21OdometryTransformTypeE.exit.i
  %i.hr = extractelement <2 x double> %i.gz, i64 0
  %i.hs = extractelement <2 x double> %i.gq, i64 0
  %i.ht = extractelement <2 x double> %i.gr, i64 1
  %i.hu = extractelement <2 x double> %i.gy, i64 1
  %i.hv = fneg double %i.hu
  %i.hw = fmul double %i.hs, %i.hv
  %i.hx = call double @llvm.fmuladd.f64(double %i.ht, double %i.hr, double %i.hw)
  %i.hy = shufflevector <2 x double> %i.gz, <2 x double> %i.gy, <2 x i32> <i32 0, i32 2>
  %i.hz = fneg <2 x double> %i.hy
  %i.ia = shufflevector <2 x double> %i.gq, <2 x double> %i.gr, <2 x i32> <i32 1, i32 3>
  %i.ib = fmul <2 x double> %i.ia, %i.hz
  %i.ic = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gq, <2 x double> %i.gy, <2 x double> %i.ib)
  store <2 x double> %i.ic, ptr %.sroa.0.i, align 16
  store double %i.hx, ptr %.sroa.0.i.16.i.16.i.16..sroa_idx, align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.24.i.24.i.24..sroa_idx332, i8 0, i64 24, i1 false)
  br label %bb.z

bb.y:                                             ; preds = %_ZN2cvL15getTransformDimENS_21OdometryTransformTypeE.exit.i
  %i.id = shufflevector <2 x double> %i.gy, <2 x double> %i.gz, <2 x i32> <i32 1, i32 2>
  store <2 x double> %i.id, ptr %.sroa.0.i, align 16
  %i.ie = extractelement <2 x double> %i.gy, i64 0
  store double %i.ie, ptr %.sroa.0.i.16.i.16.i.16..sroa_idx330, align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.24.i.24.i.24..sroa_idx333, i8 0, i64 24, i1 false)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %_ZN2cvL15getTransformDimENS_21OdometryTransformTypeE.exit.thread.i
  %.04.i20.i = phi i64 [ 24, %bb.y ], [ 24, %bb.x ], [ 48, %_ZN2cvL15getTransformDimENS_21OdometryTransformTypeE.exit.thread.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ch, ptr noundef nonnull align 16 dereferenceable(1) %.sroa.0.i, i64 %.04.i20.i, i1 false), !tbaa !83
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  %i.if = fpext float %i.fv to double
  br label %bb.ac

bb.aa:                                            ; preds = %.loopexit325
  %indvars.iv.next257 = add nuw nsw i64 %indvars.iv256, 1 ; 2 uses
  %exitcond260.not = icmp eq i64 %indvars.iv.next257, %wide.trip.count259
  br i1 %exitcond260.not, label %.preheader, label %bb.t, !llvm.loop !203

bb.ab:                                            ; preds = %bb.u
  %i.ig = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit180

bb.ac:                                            ; preds = %bb.z, %.loopexit325
  %indvars.iv246 = phi i64 [ 0, %bb.z ], [ %indvars.iv.next247, %.loopexit325 ] ; 11 uses
  %20 = sub nsw i64 %i.cf, %indvars.iv246         ; 3 uses
  %i.ih = mul i64 %i.ff, %indvars.iv246
  %i.ii = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.ih ; 4 uses
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %indvars.iv246 ; 6 uses
  %min.iters.check = icmp ult i64 %20, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.ac
  %i.ik = mul i64 %i.ff, %indvars.iv246
  %scevgep306 = getelementptr i8, ptr %i.fi, i64 %i.ik ; 2 uses
  %i.il = mul i64 %i.fg, %indvars.iv246
  %scevgep = getelementptr i8, ptr %i.fe, i64 %i.il ; 2 uses
  %bound0 = icmp ult ptr %scevgep, %scevgep307
  %bound1 = icmp ult ptr %i.ij, %scevgep306
  %found.conflict = and i1 %bound0, %bound1
  %bound0308 = icmp ult ptr %scevgep, %scevgep307
  %bound1309 = icmp ult ptr %i.ch, %scevgep306
  %found.conflict310 = and i1 %bound0308, %bound1309
  %conflict.rdx = or i1 %found.conflict, %found.conflict310
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %20, -4                        ; 3 uses
  %i.im = add i64 %indvars.iv246, %n.vec
  %i.in = load double, ptr %i.ij, align 8, !tbaa !83, !alias.scope !204
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.in, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.io = add nuw i64 %indvars.iv246, %index      ; 2 uses
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.io ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 16
  %wide.load = load <2 x double>, ptr %i.ip, align 8, !tbaa !83, !alias.scope !207
  %wide.load311 = load <2 x double>, ptr %i.iq, align 8, !tbaa !83, !alias.scope !207
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %i.io ; 3 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 16 ; 2 uses
  %wide.load312 = load <2 x double>, ptr %i.ir, align 8, !tbaa !83, !alias.scope !209, !noalias !211
  %wide.load313 = load <2 x double>, ptr %i.is, align 8, !tbaa !83, !alias.scope !209, !noalias !211
  %i.it = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %wide.load312)
  %i.iu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load311, <2 x double> %wide.load313)
  store <2 x double> %i.it, ptr %i.ir, align 8, !tbaa !83, !alias.scope !209, !noalias !211
  store <2 x double> %i.iu, ptr %i.is, align 8, !tbaa !83, !alias.scope !209, !noalias !211
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.iv = icmp eq i64 %index.next, %n.vec
  br i1 %i.iv, label %middle.block, label %vector.body, !llvm.loop !212

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %20, %n.vec
  br i1 %cmp.n, label %.loopexit325, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.ac, %middle.block
  %indvars.iv248.ph = phi i64 [ %indvars.iv246, %vector.memcheck ], [ %indvars.iv246, %bb.ac ], [ %i.im, %middle.block ] ; 6 uses
  %i.iw = sub i64 %i.cf, %indvars.iv248.ph
  %xtraiter = and i64 %i.iw, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ix = load double, ptr %i.ij, align 8, !tbaa !83
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %indvars.iv248.ph
  %i.iz = load double, ptr %i.iy, align 8, !tbaa !83
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %indvars.iv248.ph ; 2 uses
  %i.jb = load double, ptr %i.ja, align 8, !tbaa !83
  %i.jc = call double @llvm.fmuladd.f64(double %i.ix, double %i.iz, double %i.jb)
  store double %i.jc, ptr %i.ja, align 8, !tbaa !83
  %indvars.iv.next249.prol = add nuw nsw i64 %indvars.iv248.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv248.unr = phi i64 [ %indvars.iv248.ph, %scalar.ph.preheader ], [ %indvars.iv.next249.prol, %scalar.ph.prol ]
  %i.jd = icmp eq i64 %indvars.iv248.ph, %i.fj
  br i1 %i.jd, label %.loopexit325, label %scalar.ph

.loopexit325:                                     ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.je = load double, ptr %i.ij, align 8, !tbaa !83
  %i.jf = fmul double %i.gb, %i.je
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv246 ; 2 uses
  %i.jh = load double, ptr %i.jg, align 8, !tbaa !83
  %i.ji = call double @llvm.fmuladd.f64(double %i.jf, double %i.if, double %i.jh)
  store double %i.ji, ptr %i.jg, align 8, !tbaa !83
  %indvars.iv.next247 = add nuw nsw i64 %indvars.iv246, 1 ; 2 uses
  %exitcond255.not = icmp eq i64 %indvars.iv.next247, %i.cf
  br i1 %exitcond255.not, label %bb.aa, label %bb.ac, !llvm.loop !213

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv248 = phi i64 [ %indvars.iv.next249.1, %scalar.ph ], [ %indvars.iv248.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.jj = load double, ptr %i.ij, align 8, !tbaa !83
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %indvars.iv248
  %i.jl = load double, ptr %i.jk, align 8, !tbaa !83
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %indvars.iv248 ; 2 uses
  %i.jn = load double, ptr %i.jm, align 8, !tbaa !83
  %i.jo = call double @llvm.fmuladd.f64(double %i.jj, double %i.jl, double %i.jn)
  store double %i.jo, ptr %i.jm, align 8, !tbaa !83
  %indvars.iv.next249 = add nuw nsw i64 %indvars.iv248, 1 ; 2 uses
  %i.jp = load double, ptr %i.ij, align 8, !tbaa !83
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %indvars.iv.next249
  %i.jr = load double, ptr %i.jq, align 8, !tbaa !83
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %indvars.iv.next249 ; 2 uses
  %i.jt = load double, ptr %i.js, align 8, !tbaa !83
  %i.ju = call double @llvm.fmuladd.f64(double %i.jp, double %i.jr, double %i.jt)
  store double %i.ju, ptr %i.js, align 8, !tbaa !83
  %indvars.iv.next249.1 = add nuw nsw i64 %indvars.iv248, 2 ; 2 uses
  %exitcond252.not.1 = icmp eq i64 %indvars.iv.next249.1, %i.cf
  br i1 %exitcond252.not.1, label %.loopexit325, label %scalar.ph, !llvm.loop !214

.loopexit:                                        ; preds = %.lr.ph241.split.prol.loopexit, %.lr.ph241.split, %.lr.ph241.split.us, %middle.block322, %bb.af
  %indvars.iv.next262 = add nuw nsw i64 %indvars.iv261, 1
  %exitcond277.not = icmp eq i64 %indvars.iv.next274, %i.cf
  br i1 %exitcond277.not, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.af, !llvm.loop !215

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %.loopexit
  call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef %i.cg) #25
  %i.jv = load ptr, ptr %19, align 8, !tbaa !196  ; 3 uses
  %.not.i.i172 = icmp eq ptr %i.jv, %scevgep.i302
  %i.jw = icmp eq ptr %i.jv, null
  %or.cond.i = or i1 %.not.i.i172, %i.jw
  br i1 %or.cond.i, label %_ZN2cv10AutoBufferINS_7Point3_IfEELm93EED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit
  call void @_ZdaPv(ptr noundef nonnull %i.jv) #25
  br label %_ZN2cv10AutoBufferINS_7Point3_IfEELm93EED2Ev.exit

_ZN2cv10AutoBufferINS_7Point3_IfEELm93EED2Ev.exit: ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  %i.jx = load ptr, ptr %18, align 8, !tbaa !157  ; 3 uses
  %.not.i.i173 = icmp eq ptr %i.jx, %i.ab
  %i.jy = icmp eq ptr %i.jx, null
  %or.cond.i174 = or i1 %.not.i.i173, %i.jy
  br i1 %or.cond.i174, label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZN2cv10AutoBufferINS_7Point3_IfEELm93EED2Ev.exit
  call void @_ZdaPv(ptr noundef nonnull %i.jx) #25
  br label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit

_ZN2cv10AutoBufferIfLm264EED2Ev.exit:             ; preds = %_ZN2cv10AutoBufferINS_7Point3_IfEELm93EED2Ev.exit, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  ret void

bb.af:                                            ; preds = %.preheader, %.loopexit
  %indvars.iv273 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next274, %.loopexit ] ; 8 uses
  %indvars.iv261 = phi i64 [ 1, %.preheader ], [ %indvars.iv.next262, %.loopexit ] ; 8 uses
  %i.jz = xor i64 %indvars.iv273, -1
  %i.ka = add nsw i64 %i.jz, %i.cf                ; 3 uses
  %indvars.iv.next274 = add nuw nsw i64 %indvars.iv273, 1 ; 3 uses
  %i.kb = icmp samesign ult i64 %indvars.iv.next274, %i.cf
  br i1 %i.kb, label %.lr.ph241, label %.loopexit

.lr.ph241:                                        ; preds = %bb.af
  %i.kc = load i32, ptr %i.fk, align 4, !tbaa !170
  %.fr243 = freeze i32 %i.kc
  %i.kd = icmp slt i32 %.fr243, 2
  %i.ke = load ptr, ptr %i.fl, align 8, !tbaa !60 ; 6 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.ke, i64 %indvars.iv273 ; 5 uses
  br i1 %i.kd, label %.lr.ph241.split.us.preheader, label %.lr.ph241.split.preheader

.lr.ph241.split.preheader:                        ; preds = %.lr.ph241
  %i.kf = sub nsw i64 %indvars.iv273, %i.cf
  %i.kg = and i64 %i.kf, 1
  %lcmp.mod329.not.not = icmp eq i64 %i.kg, 0
  br i1 %lcmp.mod329.not.not, label %.lr.ph241.split.prol, label %.lr.ph241.split.prol.loopexit

.lr.ph241.split.prol:                             ; preds = %.lr.ph241.split.preheader
  %i.kh = load i64, ptr %i.fm, align 8            ; 2 uses
  %i.ki = mul i64 %i.kh, %indvars.iv273
  %.sink.i176.prol = getelementptr inbounds nuw i8, ptr %i.ke, i64 %i.ki
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %.sink.i176.prol, i64 %indvars.iv261
  %i.kk = load double, ptr %i.kj, align 8, !tbaa !83
  %i.kl = mul i64 %i.kh, %indvars.iv261
  %gep.prol = getelementptr i8, ptr %invariant.gep, i64 %i.kl
  store double %i.kk, ptr %gep.prol, align 8, !tbaa !83
  %indvars.iv.next264.prol = add nuw nsw i64 %indvars.iv261, 1
  br label %.lr.ph241.split.prol.loopexit

.lr.ph241.split.prol.loopexit:                    ; preds = %.lr.ph241.split.prol, %.lr.ph241.split.preheader
  %indvars.iv263.unr = phi i64 [ %indvars.iv261, %.lr.ph241.split.preheader ], [ %indvars.iv.next264.prol, %.lr.ph241.split.prol ]
  %i.km = icmp eq i64 %i.fn, %indvars.iv273
  br i1 %i.km, label %.loopexit, label %.lr.ph241.split

.lr.ph241.split.us.preheader:                     ; preds = %.lr.ph241
  %min.iters.check315 = icmp ult i64 %i.ka, 4
  br i1 %min.iters.check315, label %.lr.ph241.split.us.preheader326, label %vector.ph316

vector.ph316:                                     ; preds = %.lr.ph241.split.us.preheader
  %n.vec317 = and i64 %i.ka, -4                   ; 3 uses
  %i.kn = add i64 %indvars.iv261, %n.vec317
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %i.ke, i64 %indvars.iv261
  br label %vector.body318

vector.body318:                                   ; preds = %vector.body318, %vector.ph316
  %index319 = phi i64 [ 0, %vector.ph316 ], [ %index.next321, %vector.body318 ] ; 2 uses
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %i.ko, i64 %index319
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 24
  %i.kr = load double, ptr %i.kq, align 8, !tbaa !83
  store double %i.kr, ptr %invariant.gep, align 8, !tbaa !83
  %index.next321 = add nuw i64 %index319, 4       ; 2 uses
  %i.ks = icmp eq i64 %index.next321, %n.vec317
  br i1 %i.ks, label %middle.block322, label %vector.body318, !llvm.loop !216

middle.block322:                                  ; preds = %vector.body318
  %cmp.n323 = icmp eq i64 %i.ka, %n.vec317
  br i1 %cmp.n323, label %.loopexit, label %.lr.ph241.split.us.preheader326

end_hunk_1
