Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/FileFormatICC?download=true
inline.NumInlined: 1375
inline.NumDeleted: 458
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN16OpenColorIO_v2_515LocalFileFormat23ValidateParametricCurveEttPKiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

bb.aa:                                            ; preds = %bb.n
  %i.dh = load i32, ptr %2, align 4, !tbaa !71
  %i.di = sitofp i32 %i.dh to double
  %i.dj = fmul nnan double %i.di, f0x3EF0000000000000 ; 3 uses
  %i.dk = fptrunc double %i.dj to float           ; 7 uses
  %i.dl = fcmp ugt double %i.dj, f0x3690000000000000
  br i1 %i.dl, label %bb.ad, label %.noexc.i218

.noexc.i218:                                      ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  %i.dm = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  store ptr %i.dm, ptr %13, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #30
  store i64 49, ptr %i.m, align 8, !tbaa !56
  %i.dn = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.m, i64 noundef 0)
          to label %.noexc219 unwind label %bb.ab ; 3 uses

.noexc219:                                        ; preds = %.noexc.i218
  store ptr %i.dn, ptr %13, align 8, !tbaa !52
  %i.do = load i64, ptr %i.m, align 8, !tbaa !56  ; 3 uses
  store i64 %i.do, ptr %i.dm, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(49) %i.dn, ptr noundef nonnull align 1 dereferenceable(49) @.str.18, i64 49, i1 false)
  %i.dp = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %i.do, ptr %i.dp, align 8, !tbaa !47
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.do
  store i8 0, ptr %i.dq, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #30
  invoke fastcc void @"_ZZN16OpenColorIO_v2_515LocalFileFormat23ValidateParametricCurveEttPKiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_0clESA_"(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %.unreachable437 unwind label %bb.ac

.unreachable437:                                  ; preds = %.noexc219
  unreachable

bb.ab:                                            ; preds = %.noexc.i218
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226

bb.ac:                                            ; preds = %.noexc219
  %i.ds = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dt = load ptr, ptr %13, align 8, !tbaa !52   ; 2 uses
  %i.du = icmp eq ptr %i.dt, %i.dm
  br i1 %i.du, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i224

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i224: ; preds = %bb.ac
  %i.dv = load i64, ptr %i.dm, align 8, !tbaa !17
  %i.dw = add i64 %i.dv, 1
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dw) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i224, %bb.ab
  %.pn146 = phi { ptr, i32 } [ %i.dr, %bb.ab ], [ %i.ds, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i224 ], [ %i.ds, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  br label %bb.cc

bb.ad:                                            ; preds = %bb.aa
  %.not148 = icmp eq i16 %0, 0
  br i1 %.not148, label %.thread405, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 6 uses
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !71
  %i.dz = sitofp i32 %i.dy to double
  %i.ea = fmul nnan double %i.dz, f0x3EF0000000000000 ; 3 uses
  %i.eb = fcmp ugt double %i.ea, f0x3690000000000000
  br i1 %i.eb, label %bb.ah, label %.noexc.i228

.noexc.i228:                                      ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #30
  %i.ec = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 4 uses
  store ptr %i.ec, ptr %14, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #30
  store i64 52, ptr %i.l, align 8, !tbaa !56
  %i.ed = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.l, i64 noundef 0)
          to label %.noexc229 unwind label %bb.af ; 3 uses

.noexc229:                                        ; preds = %.noexc.i228
  store ptr %i.ed, ptr %14, align 8, !tbaa !52
  %i.ee = load i64, ptr %i.l, align 8, !tbaa !56  ; 3 uses
  store i64 %i.ee, ptr %i.ec, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(52) %i.ed, ptr noundef nonnull align 1 dereferenceable(52) @.str.19, i64 52, i1 false)
  %i.ef = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 %i.ee, ptr %i.ef, align 8, !tbaa !47
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.ee
  store i8 0, ptr %i.eg, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #30
  invoke fastcc void @"_ZZN16OpenColorIO_v2_515LocalFileFormat23ValidateParametricCurveEttPKiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_0clESA_"(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %.unreachable438 unwind label %bb.ag

.unreachable438:                                  ; preds = %.noexc229
  unreachable

bb.af:                                            ; preds = %.noexc.i228
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236

bb.ag:                                            ; preds = %.noexc229
  %i.ei = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ej = load ptr, ptr %14, align 8, !tbaa !52   ; 2 uses
  %i.ek = icmp eq ptr %i.ej, %i.ec
  br i1 %i.ek, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234: ; preds = %bb.ag
  %i.el = load i64, ptr %i.ec, align 8, !tbaa !17
  %i.em = add i64 %i.el, 1
  call void @_ZdlPvm(ptr noundef %i.ej, i64 noundef %i.em) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234, %bb.af
  %.pn149 = phi { ptr, i32 } [ %i.eh, %bb.af ], [ %i.ei, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234 ], [ %i.ei, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  br label %bb.cc

bb.ah:                                            ; preds = %bb.ae
  %i.en = add i16 %0, -3
  %or.cond = icmp ult i16 %i.en, 2                ; 2 uses
  br i1 %or.cond, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %bb.ah
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !71
  %i.eq = sitofp i32 %i.ep to double
  %i.er = fmul nnan double %i.eq, f0x3EF0000000000000
  %i.es = fcmp olt double %i.er, f0xB690000000000000
  br i1 %i.es, label %.noexc.i238, label %bb.al

.noexc.i238:                                      ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #30
  %i.et = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  store ptr %i.et, ptr %15, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #30
  store i64 44, ptr %i.k, align 8, !tbaa !56
  %i.eu = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.k, i64 noundef 0)
          to label %.noexc239 unwind label %bb.aj ; 3 uses

.noexc239:                                        ; preds = %.noexc.i238
  store ptr %i.eu, ptr %15, align 8, !tbaa !52
  %i.ev = load i64, ptr %i.k, align 8, !tbaa !56  ; 3 uses
  store i64 %i.ev, ptr %i.et, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(44) %i.eu, ptr noundef nonnull align 1 dereferenceable(44) @.str.20, i64 44, i1 false)
  %i.ew = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %i.ev, ptr %i.ew, align 8, !tbaa !47
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.ev
  store i8 0, ptr %i.ex, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #30
  invoke fastcc void @"_ZZN16OpenColorIO_v2_515LocalFileFormat23ValidateParametricCurveEttPKiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_0clESA_"(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %.unreachable442 unwind label %bb.ak

.unreachable442:                                  ; preds = %.noexc239
  unreachable

bb.aj:                                            ; preds = %.noexc.i238
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246

bb.ak:                                            ; preds = %.noexc239
  %i.ez = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fa = load ptr, ptr %15, align 8, !tbaa !52   ; 2 uses
  %i.fb = icmp eq ptr %i.fa, %i.et
  br i1 %i.fb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i244

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i244: ; preds = %bb.ak
  %i.fc = load i64, ptr %i.et, align 8, !tbaa !17
  %i.fd = add i64 %i.fc, 1
  call void @_ZdlPvm(ptr noundef %i.fa, i64 noundef %i.fd) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i244, %bb.aj
  %.pn151 = phi { ptr, i32 } [ %i.ey, %bb.aj ], [ %i.ez, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i244 ], [ %i.ez, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  br label %bb.cc

bb.al:                                            ; preds = %bb.ai, %bb.ah
  switch i16 %0, label %bb.as [
    i16 3, label %bb.am
    i16 4, label %bb.ap
  ]

bb.am:                                            ; preds = %bb.al
  %i.fe = fptrunc double %i.ea to float
  %i.ff = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !71
  %i.fh = sitofp i32 %i.fg to double
  %i.fi = fmul nnan double %i.fh, f0x3EF0000000000000
  %i.fj = fptrunc double %i.fi to float
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.fl = load <2 x i32>, ptr %i.fk, align 4, !tbaa !71
  %i.fm = sitofp <2 x i32> %i.fl to <2 x double>
  %i.fn = fmul nnan <2 x double> %i.fm, splat (double f0x3EF0000000000000)
  %i.fo = fptrunc <2 x double> %i.fn to <2 x float> ; 2 uses
  %i.fp = extractelement <2 x float> %i.fo, i64 0
  %i.fq = extractelement <2 x float> %i.fo, i64 1 ; 2 uses
  %i.fr = fmul float %i.fp, %i.fq
  %ldexpf.i = call float @ldexpf(float 1.000000e+00, i32 10)
  %i.fs = fadd float %ldexpf.i, -1.000000e+00     ; 2 uses
  %i.ft = fmul float %i.fs, %i.fr
  %i.fu = call noundef i64 @lroundf(float noundef %i.ft) #30
  %26 = call float @llvm.fmuladd.f32(float %i.fe, float %i.fq, float %i.fj)
  %i.fv = call noundef float @powf(float noundef %26, float noundef %i.dk) #30
  %ldexpf.i247 = call float @ldexpf(float 1.000000e+00, i32 10)
  %i.fw = fadd float %ldexpf.i247, -1.000000e+00  ; 2 uses
  %i.fx = fmul float %i.fv, %i.fw
  %i.fy = call noundef i64 @lroundf(float noundef %i.fx) #30
  %27 = sitofp i64 %i.fu to float
  %i.fz = sitofp i64 %i.fy to float
  %i.ga = insertelement <2 x float> poison, float %27, i64 0
  %i.gb = insertelement <2 x float> %i.ga, float %i.fz, i64 1
  %i.gc = insertelement <2 x float> poison, float %i.fs, i64 0
  %i.gd = insertelement <2 x float> %i.gc, float %i.fw, i64 1
  %i.ge = fdiv <2 x float> %i.gb, %i.gd           ; 2 uses
  %i.gf = extractelement <2 x float> %i.ge, i64 0
  %i.gg = extractelement <2 x float> %i.ge, i64 1
  %i.gh = fcmp ogt float %i.gf, %i.gg
  br i1 %i.gh, label %.noexc.i249, label %.thread

.noexc.i249:                                      ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #30
  %i.gi = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 4 uses
  store ptr %i.gi, ptr %16, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #30
  store i64 63, ptr %i.j, align 8, !tbaa !56
  %i.gj = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.j, i64 noundef 0)
          to label %.noexc250 unwind label %bb.an ; 3 uses

.noexc250:                                        ; preds = %.noexc.i249
  store ptr %i.gj, ptr %16, align 8, !tbaa !52
  %i.gk = load i64, ptr %i.j, align 8, !tbaa !56  ; 3 uses
  store i64 %i.gk, ptr %i.gi, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %i.gj, ptr noundef nonnull align 1 dereferenceable(63) @.str.21, i64 63, i1 false)
  %i.gl = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 %i.gk, ptr %i.gl, align 8, !tbaa !47
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gj, i64 %i.gk
  store i8 0, ptr %i.gm, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #30
  invoke fastcc void @"_ZZN16OpenColorIO_v2_515LocalFileFormat23ValidateParametricCurveEttPKiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_0clESA_"(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(32) %16)
          to label %.unreachable440 unwind label %bb.ao

.unreachable440:                                  ; preds = %.noexc250
  unreachable

bb.an:                                            ; preds = %.noexc.i249
  %i.gn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257

bb.ao:                                            ; preds = %.noexc250
  %i.go = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gp = load ptr, ptr %16, align 8, !tbaa !52   ; 2 uses
  %i.gq = icmp eq ptr %i.gp, %i.gi
  br i1 %i.gq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i255

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i255: ; preds = %bb.ao
  %i.gr = load i64, ptr %i.gi, align 8, !tbaa !17
  %i.gs = add i64 %i.gr, 1
  call void @_ZdlPvm(ptr noundef %i.gp, i64 noundef %i.gs) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i255, %bb.an
  %.pn157 = phi { ptr, i32 } [ %i.gn, %bb.an ], [ %i.go, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i255 ], [ %i.go, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  br label %bb.cc

bb.ap:                                            ; preds = %bb.al
  %i.gt = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !71
  %i.gv = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !71
  %i.gx = sitofp i32 %i.gw to double
  %i.gy = fmul nnan double %i.gx, f0x3EF0000000000000
  %i.gz = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ha = load <2 x i32>, ptr %i.gz, align 4, !tbaa !71
  %i.hb = sitofp <2 x i32> %i.ha to <2 x double>
  %i.hc = fmul nnan <2 x double> %i.hb, splat (double f0x3EF0000000000000)
  %i.hd = fptrunc <2 x double> %i.hc to <2 x float> ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !71
  %ldexpf.i258 = call float @ldexpf(float 1.000000e+00, i32 10)
  %28 = fadd float %ldexpf.i258, -1.000000e+00    ; 2 uses
  %i.hg = insertelement <2 x double> poison, double %i.gy, i64 0
  %i.hh = insertelement <2 x double> %i.hg, double %i.ea, i64 1
  %i.hi = fptrunc <2 x double> %i.hh to <2 x float>
  %i.hj = insertelement <2 x i32> poison, i32 %i.hf, i64 0
  %i.hk = insertelement <2 x i32> %i.hj, i32 %i.gu, i64 1
  %i.hl = sitofp <2 x i32> %i.hk to <2 x double>
  %i.hm = fmul nnan <2 x double> %i.hl, splat (double f0x3EF0000000000000)
  %i.hn = fptrunc <2 x double> %i.hm to <2 x float>
  %i.ho = shufflevector <2 x float> %i.hd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hi, <2 x float> %i.ho, <2 x float> %i.hn) ; 2 uses
  %i.hq = extractelement <2 x float> %i.hp, i64 0
  %i.hr = fmul float %28, %i.hq
  %i.hs = call noundef i64 @lroundf(float noundef %i.hr) #30
  %i.ht = extractelement <2 x float> %i.hp, i64 1
  %i.hu = call noundef float @powf(float noundef %i.ht, float noundef %i.dk) #30
  %i.hv = extractelement <2 x float> %i.hd, i64 1
  %i.hw = fadd float %i.hu, %i.hv
  %ldexpf.i259 = call float @ldexpf(float 1.000000e+00, i32 10)
  %i.hx = fadd float %ldexpf.i259, -1.000000e+00  ; 2 uses
  %i.hy = fmul float %i.hw, %i.hx
  %i.hz = call noundef i64 @lroundf(float noundef %i.hy) #30
  %29 = sitofp i64 %i.hs to float
  %i.ia = sitofp i64 %i.hz to float
  %i.ib = insertelement <2 x float> poison, float %29, i64 0
  %i.ic = insertelement <2 x float> %i.ib, float %i.ia, i64 1
  %i.id = insertelement <2 x float> poison, float %28, i64 0
  %i.ie = insertelement <2 x float> %i.id, float %i.hx, i64 1
  %i.if = fdiv <2 x float> %i.ic, %i.ie           ; 2 uses
  %i.ig = extractelement <2 x float> %i.if, i64 0
  %i.ih = extractelement <2 x float> %i.if, i64 1
  %i.ii = fcmp ogt float %i.ig, %i.ih
  br i1 %i.ii, label %.noexc.i261, label %.thread

.noexc.i261:                                      ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #30
  %i.ij = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 4 uses
  store ptr %i.ij, ptr %17, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #30
  store i64 63, ptr %i.i, align 8, !tbaa !56
  %i.ik = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(8) %i.i, i64 noundef 0)
          to label %.noexc262 unwind label %bb.aq ; 3 uses

.noexc262:                                        ; preds = %.noexc.i261
  store ptr %i.ik, ptr %17, align 8, !tbaa !52
  %i.il = load i64, ptr %i.i, align 8, !tbaa !56  ; 3 uses
  store i64 %i.il, ptr %i.ij, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %i.ik, ptr noundef nonnull align 1 dereferenceable(63) @.str.21, i64 63, i1 false)
  %i.im = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 %i.il, ptr %i.im, align 8, !tbaa !47
  %i.in = getelementptr inbounds nuw i8, ptr %i.ik, i64 %i.il
  store i8 0, ptr %i.in, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #30
  invoke fastcc void @"_ZZN16OpenColorIO_v2_515LocalFileFormat23ValidateParametricCurveEttPKiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_0clESA_"(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %.unreachable439 unwind label %bb.ar

.unreachable439:                                  ; preds = %.noexc262
  unreachable

bb.aq:                                            ; preds = %.noexc.i261
  %i.io = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269

bb.ar:                                            ; preds = %.noexc262
  %i.ip = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.iq = load ptr, ptr %17, align 8, !tbaa !52   ; 2 uses
  %i.ir = icmp eq ptr %i.iq, %i.ij
  br i1 %i.ir, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i267

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i267: ; preds = %bb.ar
  %i.is = load i64, ptr %i.ij, align 8, !tbaa !17
  %i.it = add i64 %i.is, 1
  call void @_ZdlPvm(ptr noundef %i.iq, i64 noundef %i.it) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i267, %bb.aq
  %.pn153 = phi { ptr, i32 } [ %i.io, %bb.aq ], [ %i.ip, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i267 ], [ %i.ip, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30
  br label %bb.cc

bb.as:                                            ; preds = %bb.al
  br i1 %or.cond, label %.thread, label %bb.av

.thread:                                          ; preds = %bb.am, %bb.ap, %bb.as
  %i.iu = load i32, ptr %i.dx, align 4, !tbaa !71
  %i.iv = sitofp i32 %i.iu to double
  %i.iw = fmul nnan double %i.iv, f0x3EF0000000000000
  %i.ix = fptrunc double %i.iw to float
  %i.iy = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !71
  %i.ja = sitofp i32 %i.iz to double
  %i.jb = fmul nnan double %i.ja, f0x3EF0000000000000
  %i.jc = fptrunc double %i.jb to float
  %i.jd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !71
  %i.jf = sitofp i32 %i.je to double
  %i.jg = fmul nnan double %i.jf, f0x3EF0000000000000
  %i.jh = fptrunc double %i.jg to float
  %i.ji = call float @llvm.fmuladd.f32(float %i.ix, float %i.jh, float %i.jc)
  %i.jj = fcmp olt float %i.ji, 0.000000e+00
  br i1 %i.jj, label %.noexc.i271, label %bb.bl

.noexc.i271:                                      ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #30
  %i.jk = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 4 uses
  store ptr %i.jk, ptr %18, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #30
  store i64 49, ptr %i.h, align 8, !tbaa !56
  %i.jl = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef 0)
          to label %.noexc272 unwind label %bb.at ; 3 uses

.noexc272:                                        ; preds = %.noexc.i271
  store ptr %i.jl, ptr %18, align 8, !tbaa !52
  %i.jm = load i64, ptr %i.h, align 8, !tbaa !56  ; 3 uses
  store i64 %i.jm, ptr %i.jk, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(49) %i.jl, ptr noundef nonnull align 1 dereferenceable(49) @.str.22, i64 49, i1 false)
  %i.jn = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 %i.jm, ptr %i.jn, align 8, !tbaa !47
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jl, i64 %i.jm
  store i8 0, ptr %i.jo, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #30
  invoke fastcc void @"_ZZN16OpenColorIO_v2_515LocalFileFormat23ValidateParametricCurveEttPKiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_0clESA_"(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(32) %18)
          to label %.unreachable441 unwind label %bb.au

.unreachable441:                                  ; preds = %.noexc272
  unreachable

bb.at:                                            ; preds = %.noexc.i271
  %i.jp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit279

bb.au:                                            ; preds = %.noexc272
  %i.jq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jr = load ptr, ptr %18, align 8, !tbaa !52   ; 2 uses
  %i.js = icmp eq ptr %i.jr, %i.jk
  br i1 %i.js, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit279, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i277

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i277: ; preds = %bb.au
  %i.jt = load i64, ptr %i.jk, align 8, !tbaa !17
  %i.ju = add i64 %i.jt, 1
  call void @_ZdlPvm(ptr noundef %i.jr, i64 noundef %i.ju) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit279

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit279: ; preds = %bb.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i277, %bb.at
  %.pn161 = phi { ptr, i32 } [ %i.jp, %bb.at ], [ %i.jq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i277 ], [ %i.jq, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30
  br label %bb.cc

bb.av:                                            ; preds = %bb.as
  %or.cond8 = icmp ult i16 %0, 3
  br i1 %or.cond8, label %bb.aw, label %.thread405

bb.aw:                                            ; preds = %bb.av
  %i.jv = load <2 x i32>, ptr %i.dx, align 4, !tbaa !71
  %i.jw = sitofp <2 x i32> %i.jv to <2 x double>
  %i.jx = fmul nnan <2 x double> %i.jw, splat (double f0x3EF0000000000000) ; 2 uses
  %i.jy = fptrunc <2 x double> %i.jx to <2 x float> ; 2 uses
  %i.jz = icmp eq i16 %0, 2
  br i1 %i.jz, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.ka = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !71
  %i.kc = sitofp i32 %i.kb to double
  %i.kd = fmul nnan double %i.kc, f0x3EF0000000000000
  %i.ke = fptrunc nnan double %i.kd to float
  br label %bb.ay

bb.ay:                                            ; preds = %bb.aw, %bb.ax
  %i.kf = phi float [ %i.ke, %bb.ax ], [ 0.000000e+00, %bb.aw ]
  %i.kg = extractelement <2 x double> %i.jx, i64 1
  %i.kh = fcmp ult double %i.kg, f0xB690000000000000
  br i1 %i.kh, label %bb.bc, label %.noexc.i281

.noexc.i281:                                      ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #30
  %i.ki = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 6 uses
  store ptr %i.ki, ptr %19, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #30
  store i64 65, ptr %i.g, align 8, !tbaa !56
  %i.kj = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 0)
          to label %.noexc282 unwind label %bb.ba ; 3 uses

.noexc282:                                        ; preds = %.noexc.i281
  store ptr %i.kj, ptr %19, align 8, !tbaa !52
  %i.kk = load i64, ptr %i.g, align 8, !tbaa !56  ; 3 uses
  store i64 %i.kk, ptr %i.ki, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(65) %i.kj, ptr noundef nonnull align 1 dereferenceable(65) @.str.23, i64 65, i1 false)
  %i.kl = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 %i.kk, ptr %i.kl, align 8, !tbaa !47
  %i.km = getelementptr inbounds nuw i8, ptr %i.kj, i64 %i.kk
  store i8 0, ptr %i.km, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #30
  invoke fastcc void @"_ZZN16OpenColorIO_v2_515LocalFileFormat23ValidateParametricCurveEttPKiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_1clESA_"(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(32) %19)
          to label %bb.az unwind label %bb.bb

bb.az:                                            ; preds = %.noexc282
  %i.kn = load ptr, ptr %19, align 8, !tbaa !52   ; 2 uses
  %i.ko = icmp eq ptr %i.kn, %i.ki
  br i1 %i.ko, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit286, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i284

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i284: ; preds = %bb.az
  %i.kp = load i64, ptr %i.ki, align 8, !tbaa !17
  %i.kq = add i64 %i.kp, 1
  call void @_ZdlPvm(ptr noundef %i.kn, i64 noundef %i.kq) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit286

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit286: ; preds = %bb.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i284
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30
  br label %bb.bc

bb.ba:                                            ; preds = %.noexc.i281
  %i.kr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit289

bb.bb:                                            ; preds = %.noexc282
  %i.ks = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kt = load ptr, ptr %19, align 8, !tbaa !52   ; 2 uses
  %i.ku = icmp eq ptr %i.kt, %i.ki
  br i1 %i.ku, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit289, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i287

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i287: ; preds = %bb.bb
  %i.kv = load i64, ptr %i.ki, align 8, !tbaa !17
  %i.kw = add i64 %i.kv, 1
  call void @_ZdlPvm(ptr noundef %i.kt, i64 noundef %i.kw) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit289

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit289: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i287, %bb.ba
  %.pn163 = phi { ptr, i32 } [ %i.kr, %bb.ba ], [ %i.ks, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i287 ], [ %i.ks, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30
  br label %bb.cc

bb.bc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit286, %bb.ay
  %i.kx = icmp eq i16 %0, 1
  %shift = shufflevector <2 x float> %i.jy, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %shift, %i.jy
  %i.ky = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  br i1 %i.kx, label %bb.bd, label %bb.bh

bb.bd:                                            ; preds = %bb.bc
  %ldexpf.i290 = call float @ldexpf(float 1.000000e+00, i32 8)
  %i.kz = fadd float %ldexpf.i290, -1.000000e+00  ; 2 uses
  %i.la = fmul float %i.ky, %i.kz
  %i.lb = call noundef i64 @lroundf(float noundef %i.la) #30
  %i.lc = sitofp i64 %i.lb to float
  %i.ld = fdiv float %i.lc, %i.kz
  %i.le = fcmp une float %i.ld, 1.000000e+00
  br i1 %i.le, label %.noexc.i292, label %.thread428

.noexc.i292:                                      ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #30
  %i.lf = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 6 uses
  store ptr %i.lf, ptr %20, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #30
  store i64 38, ptr %i.f, align 8, !tbaa !56
  %i.lg = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc293 unwind label %bb.bf ; 3 uses

.noexc293:                                        ; preds = %.noexc.i292
  store ptr %i.lg, ptr %20, align 8, !tbaa !52
  %i.lh = load i64, ptr %i.f, align 8, !tbaa !56  ; 3 uses
  store i64 %i.lh, ptr %i.lf, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(38) %i.lg, ptr noundef nonnull align 1 dereferenceable(38) @.str.24, i64 38, i1 false)
  %i.li = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 %i.lh, ptr %i.li, align 8, !tbaa !47
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lg, i64 %i.lh
  store i8 0, ptr %i.lj, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  invoke fastcc void @"_ZZN16OpenColorIO_v2_515LocalFileFormat23ValidateParametricCurveEttPKiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_1clESA_"(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(32) %20)
          to label %bb.be unwind label %bb.bg

bb.be:                                            ; preds = %.noexc293
  %i.lk = load ptr, ptr %20, align 8, !tbaa !52   ; 2 uses
  %i.ll = icmp eq ptr %i.lk, %i.lf
  br i1 %i.ll, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i295

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i295: ; preds = %bb.be
  %i.lm = load i64, ptr %i.lf, align 8, !tbaa !17
  %i.ln = add i64 %i.lm, 1
  call void @_ZdlPvm(ptr noundef %i.lk, i64 noundef %i.ln) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297: ; preds = %bb.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i295
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #30
  br label %.thread428

bb.bf:                                            ; preds = %.noexc.i292
  %i.lo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300

bb.bg:                                            ; preds = %.noexc293
  %i.lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lq = load ptr, ptr %20, align 8, !tbaa !52   ; 2 uses
  %i.lr = icmp eq ptr %i.lq, %i.lf
  br i1 %i.lr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i298

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i298: ; preds = %bb.bg
  %i.ls = load i64, ptr %i.lf, align 8, !tbaa !17
  %i.lt = add i64 %i.ls, 1
  call void @_ZdlPvm(ptr noundef %i.lq, i64 noundef %i.lt) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300: ; preds = %bb.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i298, %bb.bf
  %.pn167 = phi { ptr, i32 } [ %i.lo, %bb.bf ], [ %i.lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i298 ], [ %i.lp, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #30
  br label %bb.cc

bb.bh:                                            ; preds = %bb.bc
  %i.lu = call noundef float @powf(float noundef %i.ky, float noundef %i.dk) #30
  %i.lv = fadd float %i.kf, %i.lu
  %ldexpf.i301 = call float @ldexpf(float 1.000000e+00, i32 8)
  %i.lw = fadd float %ldexpf.i301, -1.000000e+00  ; 2 uses
  %i.lx = fmul float %i.lv, %i.lw
  %i.ly = call noundef i64 @lroundf(float noundef %i.lx) #30
  %i.lz = sitofp i64 %i.ly to float
  %i.ma = fdiv float %i.lz, %i.lw
  %i.mb = fcmp une float %i.ma, 1.000000e+00
  br i1 %i.mb, label %.noexc.i303, label %.thread428

.noexc.i303:                                      ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #30
  %i.mc = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 6 uses
  store ptr %i.mc, ptr %21, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #30
  store i64 38, ptr %i.e, align 8, !tbaa !56
  %i.md = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc304 unwind label %bb.bj ; 3 uses

.noexc304:                                        ; preds = %.noexc.i303
  store ptr %i.md, ptr %21, align 8, !tbaa !52
  %i.me = load i64, ptr %i.e, align 8, !tbaa !56  ; 3 uses
  store i64 %i.me, ptr %i.mc, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(38) %i.md, ptr noundef nonnull align 1 dereferenceable(38) @.str.24, i64 38, i1 false)
  %i.mf = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i64 %i.me, ptr %i.mf, align 8, !tbaa !47
  %i.mg = getelementptr inbounds nuw i8, ptr %i.md, i64 %i.me
  store i8 0, ptr %i.mg, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  invoke fastcc void @"_ZZN16OpenColorIO_v2_515LocalFileFormat23ValidateParametricCurveEttPKiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_1clESA_"(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(32) %21)
          to label %bb.bi unwind label %bb.bk

bb.bi:                                            ; preds = %.noexc304
  %i.mh = load ptr, ptr %21, align 8, !tbaa !52   ; 2 uses
  %i.mi = icmp eq ptr %i.mh, %i.mc
  br i1 %i.mi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i306

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i306: ; preds = %bb.bi
  %i.mj = load i64, ptr %i.mc, align 8, !tbaa !17
  %i.mk = add i64 %i.mj, 1
  call void @_ZdlPvm(ptr noundef %i.mh, i64 noundef %i.mk) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308: ; preds = %bb.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i306
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #30
  br label %.thread428

bb.bj:                                            ; preds = %.noexc.i303
  %i.ml = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311

bb.bk:                                            ; preds = %.noexc304
  %i.mm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mn = load ptr, ptr %21, align 8, !tbaa !52   ; 2 uses
  %i.mo = icmp eq ptr %i.mn, %i.mc
  br i1 %i.mo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i309

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i309: ; preds = %bb.bk
  %i.mp = load i64, ptr %i.mc, align 8, !tbaa !17
  %i.mq = add i64 %i.mp, 1
  call void @_ZdlPvm(ptr noundef %i.mn, i64 noundef %i.mq) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311: ; preds = %bb.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i309, %bb.bj
  %.pn165 = phi { ptr, i32 } [ %i.ml, %bb.bj ], [ %i.mm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i309 ], [ %i.mm, %bb.bk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #30
  br label %bb.cc

bb.bl:                                            ; preds = %.thread
  %i.mr = load i32, ptr %i.dx, align 4, !tbaa !71
  %i.ms = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !71
  %i.mu = sitofp i32 %i.mt to double
  %i.mv = fmul nnan double %i.mu, f0x3EF0000000000000
  %i.mw = fptrunc double %i.mv to float           ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.my = load i32, ptr %i.mx, align 4, !tbaa !71
  %i.mz = insertelement <2 x i32> poison, i32 %i.my, i64 0
  %i.na = insertelement <2 x i32> %i.mz, i32 %i.mr, i64 1
  %i.nb = sitofp <2 x i32> %i.na to <2 x double>
  %i.nc = fmul nnan <2 x double> %i.nb, splat (double f0x3EF0000000000000)
  %i.nd = fptrunc <2 x double> %i.nc to <2 x float> ; 3 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.nf = load i32, ptr %i.ne, align 4, !tbaa !71
  %i.ng = sitofp i32 %i.nf to double
  %i.nh = fmul nnan double %i.ng, f0x3EF0000000000000
  %i.ni = fptrunc double %i.nh to float           ; 3 uses
  %i.nj = icmp eq i16 %0, 4
  br i1 %i.nj, label %bb.bq, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.nk = extractelement <2 x float> %i.nd, i64 0
  %i.nl = fmul float %i.nk, %i.ni
  %ldexpf.i312 = call float @ldexpf(float 1.000000e+00, i32 8)
  %i.nm = fadd float %ldexpf.i312, -1.000000e+00  ; 2 uses
  %i.nn = fmul float %i.nl, %i.nm
  %i.no = call noundef i64 @lroundf(float noundef %i.nn) #30
  %30 = extractelement <2 x float> %i.nd, i64 1
  %31 = call float @llvm.fmuladd.f32(float %30, float %i.ni, float %i.mw)
  %i.np = call noundef float @powf(float noundef %31, float noundef %i.dk) #30
  %ldexpf.i313 = call float @ldexpf(float 1.000000e+00, i32 8)
  %i.nq = fadd float %ldexpf.i313, -1.000000e+00  ; 2 uses
  %i.nr = fmul float %i.np, %i.nq
  %i.ns = call noundef i64 @lroundf(float noundef %i.nr) #30
  %32 = sitofp i64 %i.no to float
  %i.nt = sitofp i64 %i.ns to float
  %i.nu = insertelement <2 x float> poison, float %32, i64 0
  %i.nv = insertelement <2 x float> %i.nu, float %i.nt, i64 1
  %i.nw = insertelement <2 x float> poison, float %i.nm, i64 0
  %i.nx = insertelement <2 x float> %i.nw, float %i.nq, i64 1
  %i.ny = fdiv <2 x float> %i.nv, %i.nx           ; 2 uses
  %i.nz = extractelement <2 x float> %i.ny, i64 0
  %i.oa = extractelement <2 x float> %i.ny, i64 1
  %i.ob = fcmp une float %i.nz, %i.oa
  br i1 %i.ob, label %.noexc.i315, label %.thread433

.noexc.i315:                                      ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #30
  %i.oc = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 6 uses
  store ptr %i.oc, ptr %22, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  store i64 24, ptr %i.d, align 8, !tbaa !56
  %i.od = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc316 unwind label %bb.bo ; 2 uses

.noexc316:                                        ; preds = %.noexc.i315
  store ptr %i.od, ptr %22, align 8, !tbaa !52
  %i.oe = load i64, ptr %i.d, align 8, !tbaa !56  ; 3 uses
  store i64 %i.oe, ptr %i.oc, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.od, ptr noundef nonnull align 1 dereferenceable(24) @.str.25, i64 24, i1 false)
  %i.of = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 %i.oe, ptr %i.of, align 8, !tbaa !47
  %i.og = load ptr, ptr %22, align 8, !tbaa !52
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 %i.oe
  store i8 0, ptr %i.oh, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  invoke fastcc void @"_ZZN16OpenColorIO_v2_515LocalFileFormat23ValidateParametricCurveEttPKiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_1clESA_"(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(32) %22)
          to label %bb.bn unwind label %bb.bp

bb.bn:                                            ; preds = %.noexc316
  %i.oi = load ptr, ptr %22, align 8, !tbaa !52   ; 2 uses
  %i.oj = icmp eq ptr %i.oi, %i.oc
  br i1 %i.oj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit320, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i318

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i318: ; preds = %bb.bn
  %i.ok = load i64, ptr %i.oc, align 8, !tbaa !17
  %i.ol = add i64 %i.ok, 1
  call void @_ZdlPvm(ptr noundef %i.oi, i64 noundef %i.ol) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit320

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit320: ; preds = %bb.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i318
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #30
  br label %.thread433

bb.bo:                                            ; preds = %.noexc.i315
  %i.om = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit323

bb.bp:                                            ; preds = %.noexc316
  %i.on = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.oo = load ptr, ptr %22, align 8, !tbaa !52   ; 2 uses
  %i.op = icmp eq ptr %i.oo, %i.oc
  br i1 %i.op, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit323, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i321

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i321: ; preds = %bb.bp
  %i.oq = load i64, ptr %i.oc, align 8, !tbaa !17
  %i.or = add i64 %i.oq, 1
  call void @_ZdlPvm(ptr noundef %i.oo, i64 noundef %i.or) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit323

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit323: ; preds = %bb.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i321, %bb.bo
  %.pn172 = phi { ptr, i32 } [ %i.om, %bb.bo ], [ %i.on, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i321 ], [ %i.on, %bb.bp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #30
  br label %bb.cc

bb.bq:                                            ; preds = %bb.bl
  %i.os = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ot = load <2 x i32>, ptr %i.os, align 4, !tbaa !71
  %i.ou = sitofp <2 x i32> %i.ot to <2 x double>
  %i.ov = fmul nnan <2 x double> %i.ou, splat (double f0x3EF0000000000000)
  %i.ow = fptrunc <2 x double> %i.ov to <2 x float> ; 2 uses
  %ldexpf.i324 = call float @ldexpf(float 1.000000e+00, i32 8)
  %33 = fadd float %ldexpf.i324, -1.000000e+00    ; 2 uses
  %i.ox = insertelement <2 x float> poison, float %i.ni, i64 0
  %i.oy = shufflevector <2 x float> %i.ox, <2 x float> poison, <2 x i32> zeroinitializer
  %i.oz = shufflevector <2 x float> %i.ow, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.pa = insertelement <2 x float> %i.oz, float %i.mw, i64 1
  %i.pb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nd, <2 x float> %i.oy, <2 x float> %i.pa) ; 2 uses
  %i.pc = extractelement <2 x float> %i.pb, i64 0
  %i.pd = fmul float %33, %i.pc
  %i.pe = call noundef i64 @lroundf(float noundef %i.pd) #30
  %i.pf = extractelement <2 x float> %i.pb, i64 1
  %i.pg = call noundef float @powf(float noundef %i.pf, float noundef %i.dk) #30
  %i.ph = extractelement <2 x float> %i.ow, i64 0
  %i.pi = fadd float %i.pg, %i.ph
  %ldexpf.i325 = call float @ldexpf(float 1.000000e+00, i32 8)
  %i.pj = fadd float %ldexpf.i325, -1.000000e+00  ; 2 uses
  %i.pk = fmul float %i.pi, %i.pj
  %i.pl = call noundef i64 @lroundf(float noundef %i.pk) #30
  %34 = sitofp i64 %i.pe to float
  %i.pm = sitofp i64 %i.pl to float
  %i.pn = insertelement <2 x float> poison, float %34, i64 0
  %i.po = insertelement <2 x float> %i.pn, float %i.pm, i64 1
  %i.pp = insertelement <2 x float> poison, float %33, i64 0
  %i.pq = insertelement <2 x float> %i.pp, float %i.pj, i64 1
  %i.pr = fdiv <2 x float> %i.po, %i.pq           ; 2 uses
  %i.ps = extractelement <2 x float> %i.pr, i64 0
  %i.pt = extractelement <2 x float> %i.pr, i64 1
  %i.pu = fcmp une float %i.ps, %i.pt
  br i1 %i.pu, label %.noexc.i327, label %.thread433

.noexc.i327:                                      ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #30
  %i.pv = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 6 uses
  store ptr %i.pv, ptr %23, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  store i64 24, ptr %i.c, align 8, !tbaa !56
  %i.pw = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc328 unwind label %bb.bs ; 2 uses

.noexc328:                                        ; preds = %.noexc.i327
  store ptr %i.pw, ptr %23, align 8, !tbaa !52
  %i.px = load i64, ptr %i.c, align 8, !tbaa !56  ; 3 uses
  store i64 %i.px, ptr %i.pv, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.pw, ptr noundef nonnull align 1 dereferenceable(24) @.str.25, i64 24, i1 false)
  %i.py = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i64 %i.px, ptr %i.py, align 8, !tbaa !47
  %i.pz = load ptr, ptr %23, align 8, !tbaa !52
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 %i.px
  store i8 0, ptr %i.qa, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  invoke fastcc void @"_ZZN16OpenColorIO_v2_515LocalFileFormat23ValidateParametricCurveEttPKiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_1clESA_"(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(32) %23)
          to label %bb.br unwind label %bb.bt

bb.br:                                            ; preds = %.noexc328
  %i.qb = load ptr, ptr %23, align 8, !tbaa !52   ; 2 uses
  %i.qc = icmp eq ptr %i.qb, %i.pv
  br i1 %i.qc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit332, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i330

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i330: ; preds = %bb.br
  %i.qd = load i64, ptr %i.pv, align 8, !tbaa !17
  %i.qe = add i64 %i.qd, 1
  call void @_ZdlPvm(ptr noundef %i.qb, i64 noundef %i.qe) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit332

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit332: ; preds = %bb.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i330
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #30
  br label %.thread433

bb.bs:                                            ; preds = %.noexc.i327
  %i.qf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit335

bb.bt:                                            ; preds = %.noexc328
  %i.qg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qh = load ptr, ptr %23, align 8, !tbaa !52   ; 2 uses
  %i.qi = icmp eq ptr %i.qh, %i.pv
  br i1 %i.qi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit335, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i333

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i333: ; preds = %bb.bt
  %i.qj = load i64, ptr %i.pv, align 8, !tbaa !17
  %i.qk = add i64 %i.qj, 1
  call void @_ZdlPvm(ptr noundef %i.qh, i64 noundef %i.qk) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit335

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit335: ; preds = %bb.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i333, %bb.bs
  %.pn170 = phi { ptr, i32 } [ %i.qf, %bb.bs ], [ %i.qg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i333 ], [ %i.qg, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #30
  br label %bb.cc

.thread428:                                       ; preds = %bb.bh, %bb.bd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308
  %i.ql = fcmp ugt double %i.dj, f0x3FF0000010000000
  br i1 %i.ql, label %.thread405, label %bb.bu

bb.bu:                                            ; preds = %.thread428
  %i.qm = load <2 x i32>, ptr %i.dx, align 4, !tbaa !71
  %i.qn = sitofp <2 x i32> %i.qm to <2 x double>
  %i.qo = fmul nnan <2 x double> %i.qn, splat (double f0x3EF0000000000000)
  %i.qp = fptrunc <2 x double> %i.qo to <2 x float> ; 2 uses
  %i.qq = extractelement <2 x float> %i.qp, i64 1
  %i.qr = fneg float %i.qq
  %i.qs = extractelement <2 x float> %i.qp, i64 0
  %i.qt = fdiv float %i.qr, %i.qs
  %i.qu = fcmp ogt float %i.qt, 0.000000e+00
  br i1 %i.qu, label %.noexc.i337, label %.thread405

.noexc.i337:                                      ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #30
  %i.qv = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 6 uses
  store ptr %i.qv, ptr %24, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  store i64 39, ptr %i.b, align 8, !tbaa !56
  %i.qw = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc338 unwind label %bb.bw ; 3 uses

.noexc338:                                        ; preds = %.noexc.i337
  store ptr %i.qw, ptr %24, align 8, !tbaa !52
  %i.qx = load i64, ptr %i.b, align 8, !tbaa !56  ; 3 uses
  store i64 %i.qx, ptr %i.qv, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %i.qw, ptr noundef nonnull align 1 dereferenceable(39) @.str.26, i64 39, i1 false)
  %i.qy = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i64 %i.qx, ptr %i.qy, align 8, !tbaa !47
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qw, i64 %i.qx
  store i8 0, ptr %i.qz, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  invoke fastcc void @"_ZZN16OpenColorIO_v2_515LocalFileFormat23ValidateParametricCurveEttPKiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_1clESA_"(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(32) %24)
          to label %bb.bv unwind label %bb.bx

bb.bv:                                            ; preds = %.noexc338
  %i.ra = load ptr, ptr %24, align 8, !tbaa !52   ; 2 uses
  %i.rb = icmp eq ptr %i.ra, %i.qv
  br i1 %i.rb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit342, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i340

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i340: ; preds = %bb.bv
  %i.rc = load i64, ptr %i.qv, align 8, !tbaa !17
  %i.rd = add i64 %i.rc, 1
  call void @_ZdlPvm(ptr noundef %i.ra, i64 noundef %i.rd) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit342

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit342: ; preds = %bb.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i340
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #30
  br label %.thread405

bb.bw:                                            ; preds = %.noexc.i337
  %i.re = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345

bb.bx:                                            ; preds = %.noexc338
  %i.rf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.rg = load ptr, ptr %24, align 8, !tbaa !52   ; 2 uses
  %i.rh = icmp eq ptr %i.rg, %i.qv
  br i1 %i.rh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i343

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i343: ; preds = %bb.bx
  %i.ri = load i64, ptr %i.qv, align 8, !tbaa !17
  %i.rj = add i64 %i.ri, 1
  call void @_ZdlPvm(ptr noundef %i.rg, i64 noundef %i.rj) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345: ; preds = %bb.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i343, %bb.bw
  %.pn178 = phi { ptr, i32 } [ %i.re, %bb.bw ], [ %i.rf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i343 ], [ %i.rf, %bb.bx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #30
  br label %bb.cc

.thread433:                                       ; preds = %bb.bq, %bb.bm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit332, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit320
  %i.rk = load <2 x i32>, ptr %i.dx, align 4, !tbaa !71
  %i.rl = sitofp <2 x i32> %i.rk to <2 x double>
  %i.rm = fmul nnan <2 x double> %i.rl, splat (double f0x3EF0000000000000) ; 2 uses
  %i.rn = extractelement <2 x double> %i.rm, i64 0
  %i.ro = fptrunc double %i.rn to float           ; 2 uses
  %i.rp = extractelement <2 x double> %i.rm, i64 1
  %i.rq = fptrunc double %i.rp to float
  %i.rr = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.rs = load <2 x i32>, ptr %i.rr, align 4, !tbaa !71
  %i.rt = sitofp <2 x i32> %i.rs to <2 x double>
  %i.ru = fmul nnan <2 x double> %i.rt, splat (double f0x3EF0000000000000)
  %i.rv = fptrunc <2 x double> %i.ru to <2 x float> ; 2 uses
  %ldexpf.i346 = call float @ldexpf(float 1.000000e+00, i32 8)
  %35 = fadd float %ldexpf.i346, -1.000000e+00    ; 2 uses
  %i.rw = extractelement <2 x float> %i.rv, i64 0
  %36 = fmul float %35, %i.rw
  %37 = call noundef i64 @lroundf(float noundef %36) #30
  %38 = fmul float %i.dk, %i.ro
  %i.rx = extractelement <2 x float> %i.rv, i64 1
  %39 = call float @llvm.fmuladd.f32(float %i.ro, float %i.rx, float %i.rq)
  %40 = fadd float %i.dk, -1.000000e+00
  %i.ry = call noundef float @powf(float noundef %39, float noundef %40) #30
  %i.rz = fmul float %38, %i.ry
  %ldexpf.i347 = call float @ldexpf(float 1.000000e+00, i32 8)
  %i.sa = fadd float %ldexpf.i347, -1.000000e+00  ; 2 uses
  %i.sb = fmul float %i.rz, %i.sa
  %i.sc = call noundef i64 @lroundf(float noundef %i.sb) #30
  %41 = sitofp i64 %37 to float
  %i.sd = sitofp i64 %i.sc to float
  %i.se = insertelement <2 x float> poison, float %41, i64 0
  %i.sf = insertelement <2 x float> %i.se, float %i.sd, i64 1
  %i.sg = insertelement <2 x float> poison, float %35, i64 0
  %i.sh = insertelement <2 x float> %i.sg, float %i.sa, i64 1
  %i.si = fdiv <2 x float> %i.sf, %i.sh           ; 2 uses
  %i.sj = extractelement <2 x float> %i.si, i64 0
  %i.sk = extractelement <2 x float> %i.si, i64 1
  %i.sl = fcmp une float %i.sj, %i.sk
  br i1 %i.sl, label %.noexc.i349, label %.thread405

.noexc.i349:                                      ; preds = %.thread433
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #30
  %i.sm = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 6 uses
  store ptr %i.sm, ptr %25, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 39, ptr %i.a, align 8, !tbaa !56
  %i.sn = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc350 unwind label %bb.bz ; 3 uses

.noexc350:                                        ; preds = %.noexc.i349
  store ptr %i.sn, ptr %25, align 8, !tbaa !52
  %i.so = load i64, ptr %i.a, align 8, !tbaa !56  ; 3 uses
  store i64 %i.so, ptr %i.sm, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %i.sn, ptr noundef nonnull align 1 dereferenceable(39) @.str.26, i64 39, i1 false)
  %i.sp = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i64 %i.so, ptr %i.sp, align 8, !tbaa !47
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sn, i64 %i.so
  store i8 0, ptr %i.sq, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  invoke fastcc void @"_ZZN16OpenColorIO_v2_515LocalFileFormat23ValidateParametricCurveEttPKiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_1clESA_"(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(32) %25)
          to label %bb.by unwind label %bb.ca

bb.by:                                            ; preds = %.noexc350
  %i.sr = load ptr, ptr %25, align 8, !tbaa !52   ; 2 uses
  %i.ss = icmp eq ptr %i.sr, %i.sm
  br i1 %i.ss, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit354, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i352

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i352: ; preds = %bb.by
  %i.st = load i64, ptr %i.sm, align 8, !tbaa !17
  %i.su = add i64 %i.st, 1
  call void @_ZdlPvm(ptr noundef %i.sr, i64 noundef %i.su) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit354

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit354: ; preds = %bb.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i352
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #30
  br label %.thread405

bb.bz:                                            ; preds = %.noexc.i349
  %i.sv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit357

bb.ca:                                            ; preds = %.noexc350
  %i.sw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.sx = load ptr, ptr %25, align 8, !tbaa !52   ; 2 uses
  %i.sy = icmp eq ptr %i.sx, %i.sm
  br i1 %i.sy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit357, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i355

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i355: ; preds = %bb.ca
  %i.sz = load i64, ptr %i.sm, align 8, !tbaa !17
  %i.ta = add i64 %i.sz, 1
  call void @_ZdlPvm(ptr noundef %i.sx, i64 noundef %i.ta) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit357

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit357: ; preds = %bb.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i355, %bb.bz
  %.pn175 = phi { ptr, i32 } [ %i.sv, %bb.bz ], [ %i.sw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i355 ], [ %i.sw, %bb.ca ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #30
  br label %bb.cc

.thread405:                                       ; preds = %bb.av, %bb.ad, %.thread433, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit354, %.thread428, %bb.bu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit342
  %i.tb = load ptr, ptr %i.at, align 8, !tbaa !101
  invoke void @_ZNSt8_Rb_treeItSt4pairIKttESt10_Select1stIS2_ESt4lessItESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef %i.tb)
          to label %_ZNSt3mapIttSt4lessItESaISt4pairIKttEEED2Ev.exit unwind label %bb.cb

bb.cb:                                            ; preds = %.thread405
  %i.tc = landingpad { ptr, i32 }
          catch ptr null
  %i.td = extractvalue { ptr, i32 } %i.tc, 0
  call void @__clang_call_terminate(ptr %i.td) #34
  unreachable

_ZNSt3mapIttSt4lessItESaISt4pairIKttEEED2Ev.exit: ; preds = %.thread405
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.te = load ptr, ptr %5, align 8, !tbaa !52    ; 2 uses
  %i.tf = icmp eq ptr %i.te, %i.af
  br i1 %i.tf, label %"_ZZN16OpenColorIO_v2_515LocalFileFormat23ValidateParametricCurveEttPKiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_1D2Ev.exit", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt3mapIttSt4lessItESaISt4pairIKttEEED2Ev.exit
  %i.tg = load i64, ptr %i.af, align 8, !tbaa !17
  %i.th = add i64 %i.tg, 1
  call void @_ZdlPvm(ptr noundef %i.te, i64 noundef %i.th) #32
  br label %"_ZZN16OpenColorIO_v2_515LocalFileFormat23ValidateParametricCurveEttPKiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_1D2Ev.exit"

"_ZZN16OpenColorIO_v2_515LocalFileFormat23ValidateParametricCurveEttPKiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_1D2Ev.exit": ; preds = %_ZNSt3mapIttSt4lessItESaISt4pairIKttEEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.ti = load ptr, ptr %i.r, align 8, !tbaa !52  ; 2 uses
  %i.tj = icmp eq ptr %i.ti, %i.s
  br i1 %i.tj, label %"_ZZN16OpenColorIO_v2_515LocalFileFormat23ValidateParametricCurveEttPKiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i358

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i358: ; preds = %"_ZZN16OpenColorIO_v2_515LocalFileFormat23ValidateParametricCurveEttPKiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_1D2Ev.exit"
  %i.tk = load i64, ptr %i.s, align 8, !tbaa !17
  %i.tl = add i64 %i.tk, 1
  call void @_ZdlPvm(ptr noundef %i.ti, i64 noundef %i.tl) #32
  br label %"_ZZN16OpenColorIO_v2_515LocalFileFormat23ValidateParametricCurveEttPKiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit"

"_ZZN16OpenColorIO_v2_515LocalFileFormat23ValidateParametricCurveEttPKiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit": ; preds = %"_ZZN16OpenColorIO_v2_515LocalFileFormat23ValidateParametricCurveEttPKiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_1D2Ev.exit", %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i358
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret void

bb.cc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit279, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit289, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit335, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit323, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit357, %bb.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192, %bb.j
  %.pn178.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192 ], [ %.pn142.pn.pn, %bb.z ], [ %i.bj, %bb.j ], [ %.pn178, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345 ], [ %.pn165, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311 ], [ %.pn163, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit289 ], [ %.pn172, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit323 ], [ %.pn161, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit279 ], [ %.pn146, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226 ], [ %.pn175, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit357 ], [ %.pn151, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246 ], [ %.pn149, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236 ], [ %.pn167, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300 ], [ %.pn157, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257 ], [ %.pn170, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit335 ], [ %.pn153, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269 ]
  call void @_ZNSt3mapIttSt4lessItESaISt4pairIKttEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %6) #30
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.i
  %.pn178.pn.pn.pn = phi { ptr, i32 } [ %.pn178.pn.pn, %bb.cc ], [ %i.bi, %bb.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.tm = load ptr, ptr %5, align 8, !tbaa !52    ; 2 uses
  %i.tn = icmp eq ptr %i.tm, %i.af
  br i1 %i.tn, label %"_ZZN16OpenColorIO_v2_515LocalFileFormat23ValidateParametricCurveEttPKiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_1D2Ev.exit362", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i360

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i360: ; preds = %bb.cd
  %i.to = load i64, ptr %i.af, align 8, !tbaa !17
  %i.tp = add i64 %i.to, 1
  call void @_ZdlPvm(ptr noundef %i.tm, i64 noundef %i.tp) #32
  br label %"_ZZN16OpenColorIO_v2_515LocalFileFormat23ValidateParametricCurveEttPKiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_1D2Ev.exit362"

"_ZZN16OpenColorIO_v2_515LocalFileFormat23ValidateParametricCurveEttPKiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_1D2Ev.exit362": ; preds = %bb.cd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i360, %bb.h
  %.pn178.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bh, %bb.h ], [ %.pn178.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i360 ], [ %.pn178.pn.pn.pn, %bb.cd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.tq = load ptr, ptr %i.r, align 8, !tbaa !52  ; 2 uses
  %i.tr = icmp eq ptr %i.tq, %i.s
  br i1 %i.tr, label %"_ZZN16OpenColorIO_v2_515LocalFileFormat23ValidateParametricCurveEttPKiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit365", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i363

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i363: ; preds = %"_ZZN16OpenColorIO_v2_515LocalFileFormat23ValidateParametricCurveEttPKiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_1D2Ev.exit362"
  %i.ts = load i64, ptr %i.s, align 8, !tbaa !17
  %i.tt = add i64 %i.ts, 1
  call void @_ZdlPvm(ptr noundef %i.tq, i64 noundef %i.tt) #32
  br label %"_ZZN16OpenColorIO_v2_515LocalFileFormat23ValidateParametricCurveEttPKiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit365"

"_ZZN16OpenColorIO_v2_515LocalFileFormat23ValidateParametricCurveEttPKiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit365": ; preds = %"_ZZN16OpenColorIO_v2_515LocalFileFormat23ValidateParametricCurveEttPKiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_1D2Ev.exit362", %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i363
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  resume { ptr, i32 } %.pn178.pn.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt3mapIttSt4lessItESaISt4pairIKttEEEC2ESt16initializer_listIS4_ERKS1_RKS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  store i32 0, ptr %i.a, align 8, !tbaa !176
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !101
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.a, ptr %i.c, align 8, !tbaa !177
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.a, ptr %i.d, align 8, !tbaa !178
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store i64 0, ptr %i.e, align 8, !tbaa !179
  %.idx = shl nuw nsw i64 %2, 2
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %.not7.i = icmp eq i64 %2, 0
  br i1 %.not7.i, label %_ZNSt8_Rb_treeItSt4pairIKttESt10_Select1stIS2_ESt4lessItESaIS2_EE22_M_insert_range_uniqueIPKS2_EENSt9enable_ifIXsr17__same_value_typeIT_EE5valueEvE4typeESD_SD_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZNSt8_Rb_treeItSt4pairIKttESt10_Select1stIS2_ESt4lessItESaIS2_EE17_M_insert_unique_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EOT_RT0_.exit.i
  %.pr20 = phi i64 [ %.pr, %_ZNSt8_Rb_treeItSt4pairIKttESt10_Select1stIS2_ESt4lessItESaIS2_EE17_M_insert_unique_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EOT_RT0_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %.08.i = phi ptr [ %i.ag, %_ZNSt8_Rb_treeItSt4pairIKttESt10_Select1stIS2_ESt4lessItESaIS2_EE17_M_insert_unique_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EOT_RT0_.exit.i ], [ %1, %bb.a ] ; 6 uses
  %.not.i7 = icmp eq i64 %.pr20, 0
  br i1 %.not.i7, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !102  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i16, ptr %i.h, align 2, !tbaa !34
  %i.j = load i16, ptr %.08.i, align 2, !tbaa !34
  %i.k = icmp ult i16 %i.i, %i.j
  br i1 %i.k, label %select.unfold, label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %.02022.i.i = load ptr, ptr %i.b, align 8, !tbaa !102 ; 2 uses
  %.not23.i.i = icmp eq ptr %.02022.i.i, null
  br i1 %.not23.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.l = load i16, ptr %.08.i, align 2, !tbaa !34 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i
  %.02024.i.i = phi ptr [ %.02022.i.i, %.lr.ph.i.i ], [ %.020.i.i, %bb.d ] ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.02024.i.i, i64 32
  %i.n = load i16, ptr %i.m, align 2, !tbaa !34   ; 2 uses
  %i.o = icmp ult i16 %i.l, %i.n                  ; 2 uses
  %.in.v.i.i = select i1 %i.o, i64 16, i64 24
  %.in.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i, i64 %.in.v.i.i
  %.020.i.i = load ptr, ptr %.in.i.i, align 8, !tbaa !102 ; 2 uses
  %.not.i.i8 = icmp eq ptr %.020.i.i, null
  br i1 %.not.i.i8, label %._crit_edge.i.i, label %bb.d, !llvm.loop !174

._crit_edge.i.i:                                  ; preds = %bb.d
  br i1 %i.o, label %._crit_edge.thread.i.i, label %bb.f
end_hunk_0
