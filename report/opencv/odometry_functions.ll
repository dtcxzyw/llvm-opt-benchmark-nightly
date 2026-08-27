Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/odometry_functions?download=true
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
  %i.cq = load <12 x double>, ptr %23, align 8, !tbaa !84, !noalias !175 ; 8 uses
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
  %i.dq = load i16, ptr %i.dp, align 2, !tbaa !65
  %i.dr = load i64, ptr %i.ay, align 8
  %i.ds = mul i64 %i.dr, %i.dm
  %.sink.idx.i107 = select i1 %i.av, i64 0, i64 %i.ds
  %.sink.i108 = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.sink.idx.i107
  %i.dt = getelementptr inbounds [2 x i8], ptr %.sink.i108, i64 %i.do
  %i.du = load i16, ptr %i.dt, align 2, !tbaa !65
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
  %i.fb = load ptr, ptr %13, align 8, !tbaa !51   ; 2 uses
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
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.0.i, i8 0, i64 48, i1 false), !tbaa !84
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ac, ptr noundef nonnull align 16 dereferenceable(1) %.sroa.0.i, i64 %.04.i46.i, i1 false), !tbaa !84
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  %i.ge = fpext float %i.by to double
  br label %bb.z

bb.x:                                             ; preds = %.loopexit203
  %indvars.iv.next148 = add nuw nsw i64 %indvars.iv147, 1 ; 2 uses
  %exitcond151.not = icmp eq i64 %indvars.iv.next148, %wide.trip.count150
  br i1 %exitcond151.not, label %.preheader, label %bb.r, !llvm.loop !178

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
  %i.gm = load double, ptr %i.gi, align 8, !tbaa !84, !alias.scope !179
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.gm, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gn = add nuw i64 %indvars.iv, %index         ; 2 uses
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.gn ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 16
  %wide.load = load <2 x double>, ptr %i.go, align 8, !tbaa !84, !alias.scope !182
  %wide.load189 = load <2 x double>, ptr %i.gp, align 8, !tbaa !84, !alias.scope !182
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %i.gn ; 3 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 16 ; 2 uses
  %wide.load190 = load <2 x double>, ptr %i.gq, align 8, !tbaa !84, !alias.scope !184, !noalias !186
  %wide.load191 = load <2 x double>, ptr %i.gr, align 8, !tbaa !84, !alias.scope !184, !noalias !186
  %i.gs = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %wide.load190)
  %i.gt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load189, <2 x double> %wide.load191)
  store <2 x double> %i.gs, ptr %i.gq, align 8, !tbaa !84, !alias.scope !184, !noalias !186
  store <2 x double> %i.gt, ptr %i.gr, align 8, !tbaa !84, !alias.scope !184, !noalias !186
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gu = icmp eq i64 %index.next, %n.vec
  br i1 %i.gu, label %middle.block, label %vector.body, !llvm.loop !187

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
  %i.gw = load double, ptr %i.gi, align 8, !tbaa !84
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv141.ph
  %i.gy = load double, ptr %i.gx, align 8, !tbaa !84
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %indvars.iv141.ph ; 2 uses
  %i.ha = load double, ptr %i.gz, align 8, !tbaa !84
  %i.hb = call double @llvm.fmuladd.f64(double %i.gw, double %i.gy, double %i.ha)
  store double %i.hb, ptr %i.gz, align 8, !tbaa !84
  %indvars.iv.next142.prol = add nuw nsw i64 %indvars.iv141.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv141.unr = phi i64 [ %indvars.iv141.ph, %scalar.ph.preheader ], [ %indvars.iv.next142.prol, %scalar.ph.prol ]
  %i.hc = icmp eq i64 %indvars.iv141.ph, %i.bj
  br i1 %i.hc, label %.loopexit203, label %scalar.ph

.loopexit203:                                     ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.hd = load double, ptr %i.gi, align 8, !tbaa !84
  %i.he = fmul double %i.ce, %i.hd
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv ; 2 uses
  %i.hg = load double, ptr %i.hf, align 8, !tbaa !84
  %i.hh = call double @llvm.fmuladd.f64(double %i.he, double %i.ge, double %i.hg)
  store double %i.hh, ptr %i.hf, align 8, !tbaa !84
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond146.not = icmp eq i64 %indvars.iv.next, %i.aa
  br i1 %exitcond146.not, label %bb.x, label %bb.z, !llvm.loop !188

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv141 = phi i64 [ %indvars.iv.next142.1, %scalar.ph ], [ %indvars.iv141.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.hi = load double, ptr %i.gi, align 8, !tbaa !84
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv141
  %i.hk = load double, ptr %i.hj, align 8, !tbaa !84
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %indvars.iv141 ; 2 uses
  %i.hm = load double, ptr %i.hl, align 8, !tbaa !84
  %i.hn = call double @llvm.fmuladd.f64(double %i.hi, double %i.hk, double %i.hm)
  store double %i.hn, ptr %i.hl, align 8, !tbaa !84
  %indvars.iv.next142 = add nuw nsw i64 %indvars.iv141, 1 ; 2 uses
  %i.ho = load double, ptr %i.gi, align 8, !tbaa !84
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.next142
  %i.hq = load double, ptr %i.hp, align 8, !tbaa !84
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %indvars.iv.next142 ; 2 uses
  %i.hs = load double, ptr %i.hr, align 8, !tbaa !84
  %i.ht = call double @llvm.fmuladd.f64(double %i.ho, double %i.hq, double %i.hs)
  store double %i.ht, ptr %i.hr, align 8, !tbaa !84
  %indvars.iv.next142.1 = add nuw nsw i64 %indvars.iv141, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next142.1, %i.aa
  br i1 %exitcond.not.1, label %.loopexit203, label %scalar.ph, !llvm.loop !189

.loopexit:                                        ; preds = %.lr.ph137.split.prol.loopexit, %.lr.ph137.split, %.lr.ph137.split.us, %middle.block200, %bb.aa
  %indvars.iv.next153 = add nuw nsw i64 %indvars.iv152, 1
  %exitcond168.not = icmp eq i64 %indvars.iv.next165, %i.aa
  br i1 %exitcond168.not, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.aa, !llvm.loop !190

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
  %i.hx = load i32, ptr %i.bk, align 4, !tbaa !171
  %.fr139 = freeze i32 %i.hx
  %i.hy = icmp slt i32 %.fr139, 2
  %i.hz = load ptr, ptr %i.bl, align 8, !tbaa !61 ; 6 uses
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
  %i.if = load double, ptr %i.ie, align 8, !tbaa !84
  %i.ig = mul i64 %i.ic, %indvars.iv152
  %gep.prol = getelementptr i8, ptr %invariant.gep, i64 %i.ig
  store double %i.if, ptr %gep.prol, align 8, !tbaa !84
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
  %i.im = load double, ptr %i.il, align 8, !tbaa !84
  store double %i.im, ptr %invariant.gep, align 8, !tbaa !84
  %index.next199 = add nuw i64 %index197, 4       ; 2 uses
  %i.in = icmp eq i64 %index.next199, %n.vec195
  br i1 %i.in, label %middle.block200, label %vector.body196, !llvm.loop !191

middle.block200:                                  ; preds = %vector.body196
  %cmp.n201 = icmp eq i64 %i.hv, %n.vec195
  br i1 %cmp.n201, label %.loopexit, label %.lr.ph137.split.us.preheader204

.lr.ph137.split.us.preheader204:                  ; preds = %.lr.ph137.split.us.preheader, %middle.block200
  %indvars.iv159.ph = phi i64 [ %indvars.iv152, %.lr.ph137.split.us.preheader ], [ %i.ii, %middle.block200 ]
  br label %.lr.ph137.split.us

.lr.ph137.split.us:                               ; preds = %.lr.ph137.split.us.preheader204, %.lr.ph137.split.us
  %indvars.iv159 = phi i64 [ %indvars.iv.next160, %.lr.ph137.split.us ], [ %indvars.iv159.ph, %.lr.ph137.split.us.preheader204 ] ; 2 uses
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.hz, i64 %indvars.iv159
  %i.ip = load double, ptr %i.io, align 8, !tbaa !84
  store double %i.ip, ptr %invariant.gep, align 8, !tbaa !84
  %indvars.iv.next160 = add nuw nsw i64 %indvars.iv159, 1 ; 2 uses
  %exitcond163.not = icmp eq i64 %indvars.iv.next160, %i.aa
  br i1 %exitcond163.not, label %.loopexit, label %.lr.ph137.split.us, !llvm.loop !192

.lr.ph137.split:                                  ; preds = %.lr.ph137.split.prol.loopexit, %.lr.ph137.split
  %indvars.iv154 = phi i64 [ %indvars.iv.next155.1, %.lr.ph137.split ], [ %indvars.iv154.unr, %.lr.ph137.split.prol.loopexit ] ; 4 uses
  %i.iq = load i64, ptr %i.bm, align 8            ; 2 uses
  %i.ir = mul i64 %i.iq, %indvars.iv164
  %.sink.i111 = getelementptr inbounds nuw i8, ptr %i.hz, i64 %i.ir
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %.sink.i111, i64 %indvars.iv154
  %i.it = load double, ptr %i.is, align 8, !tbaa !84
  %i.iu = mul i64 %i.iq, %indvars.iv154
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.iu
  store double %i.it, ptr %gep, align 8, !tbaa !84
end_hunk_0
begin_hunk_1_@_ZN2cv18calcICPLsmMatricesERKNS_3MatES2_S2_S2_S2_RS0_S3_NS_21OdometryTransformTypeE:bb.a
  %i.eu = getelementptr i8, ptr %i.ci, i64 8
  %i.ev = shl nuw nsw i64 %i.cg, 3
  %.idx.i.i.i.i.i.i.i = add nsw i64 %i.ev, -8
  call void @llvm.memset.p0.i64(ptr align 8 %i.eu, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !84
  %i.ew = load i32, ptr %i.k, align 8, !tbaa !56  ; 2 uses
  %i.ex = icmp sgt i32 %i.ew, 0
  br i1 %i.ex, label %.lr.ph238, label %.preheader

.lr.ph238:                                        ; preds = %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit
  %i.ey = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !171
  %i.fa = icmp slt i32 %i.ez, 2
  %i.fb = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !61
  %i.fd = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.fe = icmp eq i32 %7, 2
  switch i32 %7, label %bb.u [
    i32 4, label %.lr.ph238.split
    i32 1, label %.lr.ph238.split
    i32 2, label %.lr.ph238.split
  ]

.lr.ph238.split:                                  ; preds = %.lr.ph238, %.lr.ph238, %.lr.ph238
  %i.ff = getelementptr inbounds nuw i8, ptr %5, i64 128
  %i.fg = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !61 ; 3 uses
  %i.fi = load i64, ptr %i.ff, align 8, !tbaa !62 ; 3 uses
  %wide.trip.count259 = zext nneg i32 %i.ew to i64
  %cond = icmp eq i32 %7, 4
  %i.fj = add i64 %i.fi, 8
  %i.fk = shl nuw nsw i64 %i.cg, 3                ; 2 uses
  %scevgep307 = getelementptr i8, ptr %i.ci, i64 %i.fk ; 2 uses
  %.sroa.0.i.16.i.16.i.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 16
  %.sroa.0.i.24.i.24.i.24..sroa_idx332 = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 24
  %.sroa.0.i.16.i.16.i.16..sroa_idx330 = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 16
  %.sroa.0.i.24.i.24.i.24..sroa_idx333 = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 24
  %.sroa.0.i.16.i.16.i.16..sroa_idx331 = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 16
  %.sroa.0.i.24.i.24.i.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 24
  %.sroa.0.i.32.i.32.i.32..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 32
  %.sroa.0.i.40.i.40.i.40..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 40
  %i.fl = getelementptr i8, ptr %i.fh, i64 %i.fk
  %i.fm = add nsw i64 %i.cg, -1
  br label %bb.t

.preheader:                                       ; preds = %bb.aa, %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit
  %i.fn = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.fo = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.fp = getelementptr inbounds nuw i8, ptr %5, i64 128 ; 3 uses
  %i.fq = add nsw i64 %i.cg, -2
  br label %bb.af

bb.s:                                             ; preds = %._crit_edge
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.t:                                             ; preds = %.lr.ph238.split, %bb.aa
  %indvars.iv256 = phi i64 [ 0, %.lr.ph238.split ], [ %indvars.iv.next257, %bb.aa ] ; 4 uses
  %i.fs = getelementptr inbounds nuw [16 x i8], ptr %i.av, i64 %indvars.iv256 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !19
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fs, i64 12
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !19
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv256
  %i.fy = load float, ptr %i.fx, align 4, !tbaa !21 ; 2 uses
  %i.fz = call noundef float @llvm.fabs.f32(float %i.fy)
  %i.ga = fpext float %i.fz to double
  %i.gb = fadd double %i.cf, %i.ga                ; 2 uses
  %i.gc = fcmp ogt double %i.gb, f0x3CB0000000000000
  %i.gd = fdiv double 1.000000e+00, %i.gb
  %i.ge = select i1 %i.gc, double %i.gd, double 1.000000e+00 ; 2 uses
  %i.gf = load i64, ptr %i.fd, align 8
  %i.gg = sext i32 %i.fw to i64
  %i.gh = mul i64 %i.gf, %i.gg
  %.sink.idx.i167 = select i1 %i.fa, i64 0, i64 %i.gh
  %.sink.i168 = getelementptr inbounds nuw i8, ptr %i.fc, i64 %.sink.idx.i167
  %i.gi = sext i32 %i.fu to i64
  %i.gj = getelementptr inbounds [16 x i8], ptr %.sink.i168, i64 %i.gi ; 2 uses
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !21
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gj, i64 4
  %i.gm = getelementptr inbounds nuw [12 x i8], ptr %i.at, i64 %indvars.iv256 ; 2 uses
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !199, !noalias !201
  %i.go = getelementptr inbounds nuw i8, ptr %i.gm, i64 4
  %i.gp = load <2 x float>, ptr %i.gl, align 4, !tbaa !21 ; 2 uses
  %i.gq = load <2 x float>, ptr %i.go, align 4, !tbaa !21, !noalias !201 ; 2 uses
  %i.gr = shufflevector <2 x float> %i.gq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.gs = insertelement <2 x float> %i.gr, float %i.gn, i64 1
  %i.gt = fpext <2 x float> %i.gq to <2 x double> ; 5 uses
  %i.gu = fpext <2 x float> %i.gs to <2 x double> ; 4 uses
  %i.gv = shufflevector <2 x float> %i.gp, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.gw = insertelement <2 x float> %i.gv, float %i.gk, i64 1
  %i.gx = fpext <2 x float> %i.gw to <2 x double>
  %i.gy = fpext <2 x float> %i.gp to <2 x double>
  %i.gz = insertelement <2 x double> poison, double %i.ge, i64 0
  %i.ha = shufflevector <2 x double> %i.gz, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hb = fmul <2 x double> %i.ha, %i.gx          ; 8 uses
  %i.hc = fmul <2 x double> %i.ha, %i.gy          ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  br i1 %cond, label %_ZN2cvL15getTransformDimENS_21OdometryTransformTypeE.exit.thread.i, label %_ZN2cvL15getTransformDimENS_21OdometryTransformTypeE.exit.i

_ZN2cvL15getTransformDimENS_21OdometryTransformTypeE.exit.thread.i: ; preds = %bb.t
  %i.hd = fneg <2 x double> %i.hc
  %i.he = extractelement <2 x double> %i.hb, i64 1 ; 2 uses
  %i.hf = fneg double %i.he
  %i.hg = extractelement <2 x double> %i.gt, i64 0
  %i.hh = fmul double %i.hg, %i.hf
  %i.hi = extractelement <2 x double> %i.hc, i64 0 ; 2 uses
  %i.hj = extractelement <2 x double> %i.gu, i64 1
  %i.hk = call double @llvm.fmuladd.f64(double %i.hj, double %i.hi, double %i.hh)
  %i.hl = fmul <2 x double> %i.hd, %i.gu
  %i.hm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gt, <2 x double> %i.hb, <2 x double> %i.hl)
  store <2 x double> %i.hm, ptr %.sroa.0.i, align 16
  store double %i.hk, ptr %.sroa.0.i.16.i.16.i.16..sroa_idx331, align 16
  store double %i.he, ptr %.sroa.0.i.24.i.24.i.24..sroa_idx, align 8
  store double %i.hi, ptr %.sroa.0.i.32.i.32.i.32..sroa_idx, align 16
  %i.hn = extractelement <2 x double> %i.hb, i64 0
  store double %i.hn, ptr %.sroa.0.i.40.i.40.i.40..sroa_idx, align 8
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
  %i.ho = landingpad { ptr, i32 }
          cleanup
  %i.hp = load ptr, ptr %8, align 8, !tbaa !51    ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.hr = icmp eq ptr %i.hp, %i.hq
  br i1 %i.hr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.w
  %i.hs = load i64, ptr %i.hq, align 8, !tbaa !18
  %i.ht = add i64 %i.hs, 1
  call void @_ZdlPvm(ptr noundef %i.hp, i64 noundef %i.ht) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit180

_ZN2cvL15getTransformDimENS_21OdometryTransformTypeE.exit.i: ; preds = %bb.t
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.0.i, i8 0, i64 48, i1 false), !tbaa !84
  br i1 %i.fe, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN2cvL15getTransformDimENS_21OdometryTransformTypeE.exit.i
  %i.hu = extractelement <2 x double> %i.hc, i64 0
  %i.hv = extractelement <2 x double> %i.gt, i64 0
  %i.hw = extractelement <2 x double> %i.gu, i64 1
  %i.hx = extractelement <2 x double> %i.hb, i64 1
  %i.hy = fneg double %i.hx
  %i.hz = fmul double %i.hv, %i.hy
  %i.ia = call double @llvm.fmuladd.f64(double %i.hw, double %i.hu, double %i.hz)
  %i.ib = shufflevector <2 x double> %i.hc, <2 x double> %i.hb, <2 x i32> <i32 0, i32 2>
  %i.ic = fneg <2 x double> %i.ib
  %i.id = shufflevector <2 x double> %i.gt, <2 x double> %i.gu, <2 x i32> <i32 1, i32 3>
  %i.ie = fmul <2 x double> %i.id, %i.ic
  %i.if = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gt, <2 x double> %i.hb, <2 x double> %i.ie)
  store <2 x double> %i.if, ptr %.sroa.0.i, align 16
  store double %i.ia, ptr %.sroa.0.i.16.i.16.i.16..sroa_idx, align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.24.i.24.i.24..sroa_idx332, i8 0, i64 24, i1 false)
  br label %bb.z

bb.y:                                             ; preds = %_ZN2cvL15getTransformDimENS_21OdometryTransformTypeE.exit.i
  %i.ig = shufflevector <2 x double> %i.hb, <2 x double> %i.hc, <2 x i32> <i32 1, i32 2>
  store <2 x double> %i.ig, ptr %.sroa.0.i, align 16
  %i.ih = extractelement <2 x double> %i.hb, i64 0
  store double %i.ih, ptr %.sroa.0.i.16.i.16.i.16..sroa_idx330, align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.24.i.24.i.24..sroa_idx333, i8 0, i64 24, i1 false)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %_ZN2cvL15getTransformDimENS_21OdometryTransformTypeE.exit.thread.i
  %.04.i20.i = phi i64 [ 24, %bb.y ], [ 24, %bb.x ], [ 48, %_ZN2cvL15getTransformDimENS_21OdometryTransformTypeE.exit.thread.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ci, ptr noundef nonnull align 16 dereferenceable(1) %.sroa.0.i, i64 %.04.i20.i, i1 false), !tbaa !84
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  %i.ii = fpext float %i.fy to double
  br label %bb.ac

bb.aa:                                            ; preds = %.loopexit325
  %indvars.iv.next257 = add nuw nsw i64 %indvars.iv256, 1 ; 2 uses
  %exitcond260.not = icmp eq i64 %indvars.iv.next257, %wide.trip.count259
  br i1 %exitcond260.not, label %.preheader, label %bb.t, !llvm.loop !204

bb.ab:                                            ; preds = %bb.u
  %i.ij = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit180

bb.ac:                                            ; preds = %bb.z, %.loopexit325
  %indvars.iv246 = phi i64 [ 0, %bb.z ], [ %indvars.iv.next247, %.loopexit325 ] ; 11 uses
  %20 = sub nsw i64 %i.cg, %indvars.iv246         ; 3 uses
  %i.ik = mul i64 %i.fi, %indvars.iv246
  %i.il = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.ik ; 4 uses
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv246 ; 6 uses
  %min.iters.check = icmp ult i64 %20, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.ac
  %i.in = mul i64 %i.fi, %indvars.iv246
  %scevgep306 = getelementptr i8, ptr %i.fl, i64 %i.in ; 2 uses
  %i.io = mul i64 %i.fj, %indvars.iv246
  %scevgep = getelementptr i8, ptr %i.fh, i64 %i.io ; 2 uses
  %bound0 = icmp ult ptr %scevgep, %scevgep307
  %bound1 = icmp ult ptr %i.im, %scevgep306
  %found.conflict = and i1 %bound0, %bound1
  %bound0308 = icmp ult ptr %scevgep, %scevgep307
  %bound1309 = icmp ult ptr %i.ci, %scevgep306
  %found.conflict310 = and i1 %bound0308, %bound1309
  %conflict.rdx = or i1 %found.conflict, %found.conflict310
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %20, -4                        ; 3 uses
  %i.ip = add i64 %indvars.iv246, %n.vec
  %i.iq = load double, ptr %i.im, align 8, !tbaa !84, !alias.scope !205
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.iq, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ir = add nuw i64 %indvars.iv246, %index      ; 2 uses
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.ir ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 16
  %wide.load = load <2 x double>, ptr %i.is, align 8, !tbaa !84, !alias.scope !208
  %wide.load311 = load <2 x double>, ptr %i.it, align 8, !tbaa !84, !alias.scope !208
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %i.ir ; 3 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 16 ; 2 uses
  %wide.load312 = load <2 x double>, ptr %i.iu, align 8, !tbaa !84, !alias.scope !210, !noalias !212
  %wide.load313 = load <2 x double>, ptr %i.iv, align 8, !tbaa !84, !alias.scope !210, !noalias !212
  %i.iw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %wide.load312)
  %i.ix = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load311, <2 x double> %wide.load313)
  store <2 x double> %i.iw, ptr %i.iu, align 8, !tbaa !84, !alias.scope !210, !noalias !212
  store <2 x double> %i.ix, ptr %i.iv, align 8, !tbaa !84, !alias.scope !210, !noalias !212
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.iy = icmp eq i64 %index.next, %n.vec
  br i1 %i.iy, label %middle.block, label %vector.body, !llvm.loop !213

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %20, %n.vec
  br i1 %cmp.n, label %.loopexit325, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.ac, %middle.block
  %indvars.iv248.ph = phi i64 [ %indvars.iv246, %vector.memcheck ], [ %indvars.iv246, %bb.ac ], [ %i.ip, %middle.block ] ; 6 uses
  %i.iz = sub i64 %i.cg, %indvars.iv248.ph
  %xtraiter = and i64 %i.iz, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ja = load double, ptr %i.im, align 8, !tbaa !84
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv248.ph
  %i.jc = load double, ptr %i.jb, align 8, !tbaa !84
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %indvars.iv248.ph ; 2 uses
  %i.je = load double, ptr %i.jd, align 8, !tbaa !84
  %i.jf = call double @llvm.fmuladd.f64(double %i.ja, double %i.jc, double %i.je)
  store double %i.jf, ptr %i.jd, align 8, !tbaa !84
  %indvars.iv.next249.prol = add nuw nsw i64 %indvars.iv248.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv248.unr = phi i64 [ %indvars.iv248.ph, %scalar.ph.preheader ], [ %indvars.iv.next249.prol, %scalar.ph.prol ]
  %i.jg = icmp eq i64 %indvars.iv248.ph, %i.fm
  br i1 %i.jg, label %.loopexit325, label %scalar.ph

.loopexit325:                                     ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.jh = load double, ptr %i.im, align 8, !tbaa !84
  %i.ji = fmul double %i.ge, %i.jh
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv246 ; 2 uses
  %i.jk = load double, ptr %i.jj, align 8, !tbaa !84
  %i.jl = call double @llvm.fmuladd.f64(double %i.ji, double %i.ii, double %i.jk)
  store double %i.jl, ptr %i.jj, align 8, !tbaa !84
  %indvars.iv.next247 = add nuw nsw i64 %indvars.iv246, 1 ; 2 uses
  %exitcond255.not = icmp eq i64 %indvars.iv.next247, %i.cg
  br i1 %exitcond255.not, label %bb.aa, label %bb.ac, !llvm.loop !214

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv248 = phi i64 [ %indvars.iv.next249.1, %scalar.ph ], [ %indvars.iv248.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.jm = load double, ptr %i.im, align 8, !tbaa !84
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv248
  %i.jo = load double, ptr %i.jn, align 8, !tbaa !84
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %indvars.iv248 ; 2 uses
  %i.jq = load double, ptr %i.jp, align 8, !tbaa !84
  %i.jr = call double @llvm.fmuladd.f64(double %i.jm, double %i.jo, double %i.jq)
  store double %i.jr, ptr %i.jp, align 8, !tbaa !84
  %indvars.iv.next249 = add nuw nsw i64 %indvars.iv248, 1 ; 2 uses
  %i.js = load double, ptr %i.im, align 8, !tbaa !84
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv.next249
  %i.ju = load double, ptr %i.jt, align 8, !tbaa !84
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %indvars.iv.next249 ; 2 uses
  %i.jw = load double, ptr %i.jv, align 8, !tbaa !84
  %i.jx = call double @llvm.fmuladd.f64(double %i.js, double %i.ju, double %i.jw)
  store double %i.jx, ptr %i.jv, align 8, !tbaa !84
  %indvars.iv.next249.1 = add nuw nsw i64 %indvars.iv248, 2 ; 2 uses
  %exitcond252.not.1 = icmp eq i64 %indvars.iv.next249.1, %i.cg
  br i1 %exitcond252.not.1, label %.loopexit325, label %scalar.ph, !llvm.loop !215

.loopexit:                                        ; preds = %.lr.ph241.split.prol.loopexit, %.lr.ph241.split, %.lr.ph241.split.us, %middle.block322, %bb.af
  %indvars.iv.next262 = add nuw nsw i64 %indvars.iv261, 1
  %exitcond277.not = icmp eq i64 %indvars.iv.next274, %i.cg
  br i1 %exitcond277.not, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.af, !llvm.loop !216

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %.loopexit
  call void @_ZdlPvm(ptr noundef nonnull %i.ci, i64 noundef %i.ch) #25
  %i.jy = load ptr, ptr %19, align 8, !tbaa !194  ; 3 uses
  %.not.i.i172 = icmp eq ptr %i.jy, %scevgep.i302
  %i.jz = icmp eq ptr %i.jy, null
  %or.cond.i = or i1 %.not.i.i172, %i.jz
  br i1 %or.cond.i, label %_ZN2cv10AutoBufferINS_7Point3_IfEELm93EED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit
  call void @_ZdaPv(ptr noundef nonnull %i.jy) #25
  br label %_ZN2cv10AutoBufferINS_7Point3_IfEELm93EED2Ev.exit

_ZN2cv10AutoBufferINS_7Point3_IfEELm93EED2Ev.exit: ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  %i.ka = load ptr, ptr %18, align 8, !tbaa !158  ; 3 uses
  %.not.i.i173 = icmp eq ptr %i.ka, %i.ab
  %i.kb = icmp eq ptr %i.ka, null
  %or.cond.i174 = or i1 %.not.i.i173, %i.kb
  br i1 %or.cond.i174, label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZN2cv10AutoBufferINS_7Point3_IfEELm93EED2Ev.exit
  call void @_ZdaPv(ptr noundef nonnull %i.ka) #25
  br label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit

_ZN2cv10AutoBufferIfLm264EED2Ev.exit:             ; preds = %_ZN2cv10AutoBufferINS_7Point3_IfEELm93EED2Ev.exit, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  ret void

bb.af:                                            ; preds = %.preheader, %.loopexit
  %indvars.iv273 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next274, %.loopexit ] ; 8 uses
  %indvars.iv261 = phi i64 [ 1, %.preheader ], [ %indvars.iv.next262, %.loopexit ] ; 8 uses
  %i.kc = xor i64 %indvars.iv273, -1
  %i.kd = add nsw i64 %i.kc, %i.cg                ; 3 uses
  %indvars.iv.next274 = add nuw nsw i64 %indvars.iv273, 1 ; 3 uses
  %i.ke = icmp samesign ult i64 %indvars.iv.next274, %i.cg
  br i1 %i.ke, label %.lr.ph241, label %.loopexit

.lr.ph241:                                        ; preds = %bb.af
  %i.kf = load i32, ptr %i.fn, align 4, !tbaa !171
  %.fr243 = freeze i32 %i.kf
  %i.kg = icmp slt i32 %.fr243, 2
  %i.kh = load ptr, ptr %i.fo, align 8, !tbaa !61 ; 6 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.kh, i64 %indvars.iv273 ; 5 uses
  br i1 %i.kg, label %.lr.ph241.split.us.preheader, label %.lr.ph241.split.preheader

.lr.ph241.split.preheader:                        ; preds = %.lr.ph241
  %i.ki = sub nsw i64 %indvars.iv273, %i.cg
  %i.kj = and i64 %i.ki, 1
  %lcmp.mod329.not.not = icmp eq i64 %i.kj, 0
  br i1 %lcmp.mod329.not.not, label %.lr.ph241.split.prol, label %.lr.ph241.split.prol.loopexit

.lr.ph241.split.prol:                             ; preds = %.lr.ph241.split.preheader
  %i.kk = load i64, ptr %i.fp, align 8            ; 2 uses
  %i.kl = mul i64 %i.kk, %indvars.iv273
  %.sink.i176.prol = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.kl
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %.sink.i176.prol, i64 %indvars.iv261
  %i.kn = load double, ptr %i.km, align 8, !tbaa !84
  %i.ko = mul i64 %i.kk, %indvars.iv261
  %gep.prol = getelementptr i8, ptr %invariant.gep, i64 %i.ko
  store double %i.kn, ptr %gep.prol, align 8, !tbaa !84
  %indvars.iv.next264.prol = add nuw nsw i64 %indvars.iv261, 1
  br label %.lr.ph241.split.prol.loopexit

.lr.ph241.split.prol.loopexit:                    ; preds = %.lr.ph241.split.prol, %.lr.ph241.split.preheader
  %indvars.iv263.unr = phi i64 [ %indvars.iv261, %.lr.ph241.split.preheader ], [ %indvars.iv.next264.prol, %.lr.ph241.split.prol ]
  %i.kp = icmp eq i64 %i.fq, %indvars.iv273
  br i1 %i.kp, label %.loopexit, label %.lr.ph241.split

.lr.ph241.split.us.preheader:                     ; preds = %.lr.ph241
  %min.iters.check315 = icmp ult i64 %i.kd, 4
  br i1 %min.iters.check315, label %.lr.ph241.split.us.preheader326, label %vector.ph316

vector.ph316:                                     ; preds = %.lr.ph241.split.us.preheader
  %n.vec317 = and i64 %i.kd, -4                   ; 3 uses
  %i.kq = add i64 %indvars.iv261, %n.vec317
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.kh, i64 %indvars.iv261
  br label %vector.body318

vector.body318:                                   ; preds = %vector.body318, %vector.ph316
  %index319 = phi i64 [ 0, %vector.ph316 ], [ %index.next321, %vector.body318 ] ; 2 uses
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.kr, i64 %index319
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 24
  %i.ku = load double, ptr %i.kt, align 8, !tbaa !84
  store double %i.ku, ptr %invariant.gep, align 8, !tbaa !84
  %index.next321 = add nuw i64 %index319, 4       ; 2 uses
  %i.kv = icmp eq i64 %index.next321, %n.vec317
  br i1 %i.kv, label %middle.block322, label %vector.body318, !llvm.loop !217

middle.block322:                                  ; preds = %vector.body318
  %cmp.n323 = icmp eq i64 %i.kd, %n.vec317
  br i1 %cmp.n323, label %.loopexit, label %.lr.ph241.split.us.preheader326

end_hunk_1
