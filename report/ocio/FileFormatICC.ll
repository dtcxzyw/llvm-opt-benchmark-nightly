Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/FileFormatICC?download=true
inline.NumInlined: 1375
inline.NumDeleted: 458
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN16OpenColorIO_v2_515LocalFileFormat23ValidateParametricCurveEttPKiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.na = fptrunc double %i.mz to float           ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.nc = load i32, ptr %i.nb, align 4, !tbaa !71
  %i.nd = insertelement <2 x i32> poison, i32 %i.nc, i64 0
  %i.ne = insertelement <2 x i32> %i.nd, i32 %i.mv, i64 1
  %i.nf = sitofp <2 x i32> %i.ne to <2 x double>
  %i.ng = fmul nnan <2 x double> %i.nf, splat (double f0x3EF0000000000000)
  %i.nh = fptrunc <2 x double> %i.ng to <2 x float> ; 3 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.nj = load i32, ptr %i.ni, align 4, !tbaa !71
  %i.nk = sitofp i32 %i.nj to double
  %i.nl = fmul nnan double %i.nk, f0x3EF0000000000000
  %i.nm = fptrunc double %i.nl to float           ; 3 uses
  %i.nn = icmp eq i16 %0, 4
  br i1 %i.nn, label %bb.bq, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.no = extractelement <2 x float> %i.nh, i64 0
  %i.np = fmul float %i.no, %i.nm
  %ldexpf.i312 = call float @ldexpf(float 1.000000e+00, i32 8)
  %i.nq = extractelement <2 x float> %i.nh, i64 1
  %i.nr = call float @llvm.fmuladd.f32(float %i.nq, float %i.nm, float %i.na)
  %i.ns = fadd float %ldexpf.i312, -1.000000e+00  ; 2 uses
  %i.nt = fmul float %i.np, %i.ns
  %i.nu = call noundef i64 @lroundf(float noundef %i.nt) #30
  %i.nv = call noundef float @powf(float noundef %i.nr, float noundef %i.dk) #30
  %ldexpf.i313 = call float @ldexpf(float 1.000000e+00, i32 8)
  %i.nw = fadd float %ldexpf.i313, -1.000000e+00  ; 2 uses
  %i.nx = fmul float %i.nv, %i.nw
  %i.ny = call noundef i64 @lroundf(float noundef %i.nx) #30
  %i.nz = sitofp i64 %i.ny to float
  %i.oa = sitofp i64 %i.nu to float
  %i.ob = insertelement <2 x float> poison, float %i.oa, i64 0
  %i.oc = insertelement <2 x float> %i.ob, float %i.nz, i64 1
  %i.od = insertelement <2 x float> poison, float %i.ns, i64 0
  %i.oe = insertelement <2 x float> %i.od, float %i.nw, i64 1
  %i.of = fdiv <2 x float> %i.oc, %i.oe           ; 2 uses
  %i.og = extractelement <2 x float> %i.of, i64 0
  %i.oh = extractelement <2 x float> %i.of, i64 1
  %i.oi = fcmp une float %i.og, %i.oh
  br i1 %i.oi, label %.noexc.i315, label %.thread433

.noexc.i315:                                      ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #30
  %i.oj = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 6 uses
  store ptr %i.oj, ptr %22, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  store i64 24, ptr %i.d, align 8, !tbaa !56
  %i.ok = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc316 unwind label %bb.bo ; 2 uses

.noexc316:                                        ; preds = %.noexc.i315
  store ptr %i.ok, ptr %22, align 8, !tbaa !52
  %i.ol = load i64, ptr %i.d, align 8, !tbaa !56  ; 3 uses
  store i64 %i.ol, ptr %i.oj, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ok, ptr noundef nonnull align 1 dereferenceable(24) @.str.25, i64 24, i1 false)
  %i.om = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 %i.ol, ptr %i.om, align 8, !tbaa !47
  %i.on = load ptr, ptr %22, align 8, !tbaa !52
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 %i.ol
  store i8 0, ptr %i.oo, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  invoke fastcc void @"_ZZN16OpenColorIO_v2_515LocalFileFormat23ValidateParametricCurveEttPKiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_1clESA_"(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(32) %22)
          to label %bb.bn unwind label %bb.bp

bb.bn:                                            ; preds = %.noexc316
  %i.op = load ptr, ptr %22, align 8, !tbaa !52   ; 2 uses
  %i.oq = icmp eq ptr %i.op, %i.oj
  br i1 %i.oq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit320, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i318

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i318: ; preds = %bb.bn
  %i.or = load i64, ptr %i.oj, align 8, !tbaa !17
  %i.os = add i64 %i.or, 1
  call void @_ZdlPvm(ptr noundef %i.op, i64 noundef %i.os) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit320

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit320: ; preds = %bb.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i318
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #30
  br label %.thread433

bb.bo:                                            ; preds = %.noexc.i315
  %i.ot = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit323

bb.bp:                                            ; preds = %.noexc316
  %i.ou = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ov = load ptr, ptr %22, align 8, !tbaa !52   ; 2 uses
  %i.ow = icmp eq ptr %i.ov, %i.oj
  br i1 %i.ow, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit323, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i321

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i321: ; preds = %bb.bp
  %i.ox = load i64, ptr %i.oj, align 8, !tbaa !17
  %i.oy = add i64 %i.ox, 1
  call void @_ZdlPvm(ptr noundef %i.ov, i64 noundef %i.oy) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit323

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit323: ; preds = %bb.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i321, %bb.bo
  %.pn172 = phi { ptr, i32 } [ %i.ot, %bb.bo ], [ %i.ou, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i321 ], [ %i.ou, %bb.bp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #30
  br label %bb.cc

bb.bq:                                            ; preds = %bb.bl
  %i.oz = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.pa = load <2 x i32>, ptr %i.oz, align 4, !tbaa !71
  %i.pb = sitofp <2 x i32> %i.pa to <2 x double>
  %i.pc = fmul nnan <2 x double> %i.pb, splat (double f0x3EF0000000000000)
  %i.pd = fptrunc <2 x double> %i.pc to <2 x float> ; 2 uses
  %ldexpf.i324 = call float @ldexpf(float 1.000000e+00, i32 8)
  %i.pe = insertelement <2 x float> poison, float %i.nm, i64 0
  %i.pf = shufflevector <2 x float> %i.pe, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pg = shufflevector <2 x float> %i.pd, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ph = insertelement <2 x float> %i.pg, float %i.na, i64 1
  %i.pi = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nh, <2 x float> %i.pf, <2 x float> %i.ph) ; 2 uses
  %i.pj = fadd float %ldexpf.i324, -1.000000e+00  ; 2 uses
  %i.pk = extractelement <2 x float> %i.pi, i64 0
  %i.pl = fmul float %i.pj, %i.pk
  %i.pm = call noundef i64 @lroundf(float noundef %i.pl) #30
  %i.pn = extractelement <2 x float> %i.pi, i64 1
  %i.po = call noundef float @powf(float noundef %i.pn, float noundef %i.dk) #30
  %i.pp = extractelement <2 x float> %i.pd, i64 0
  %i.pq = fadd float %i.po, %i.pp
  %ldexpf.i325 = call float @ldexpf(float 1.000000e+00, i32 8)
  %i.pr = fadd float %ldexpf.i325, -1.000000e+00  ; 2 uses
  %i.ps = fmul float %i.pq, %i.pr
  %i.pt = call noundef i64 @lroundf(float noundef %i.ps) #30
  %i.pu = sitofp i64 %i.pt to float
  %i.pv = sitofp i64 %i.pm to float
  %i.pw = insertelement <2 x float> poison, float %i.pv, i64 0
  %i.px = insertelement <2 x float> %i.pw, float %i.pu, i64 1
  %i.py = insertelement <2 x float> poison, float %i.pj, i64 0
  %i.pz = insertelement <2 x float> %i.py, float %i.pr, i64 1
  %i.qa = fdiv <2 x float> %i.px, %i.pz           ; 2 uses
  %i.qb = extractelement <2 x float> %i.qa, i64 0
  %i.qc = extractelement <2 x float> %i.qa, i64 1
  %i.qd = fcmp une float %i.qb, %i.qc
  br i1 %i.qd, label %.noexc.i327, label %.thread433

.noexc.i327:                                      ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #30
  %i.qe = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 6 uses
  store ptr %i.qe, ptr %23, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  store i64 24, ptr %i.c, align 8, !tbaa !56
  %i.qf = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc328 unwind label %bb.bs ; 2 uses

.noexc328:                                        ; preds = %.noexc.i327
  store ptr %i.qf, ptr %23, align 8, !tbaa !52
  %i.qg = load i64, ptr %i.c, align 8, !tbaa !56  ; 3 uses
  store i64 %i.qg, ptr %i.qe, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.qf, ptr noundef nonnull align 1 dereferenceable(24) @.str.25, i64 24, i1 false)
  %i.qh = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i64 %i.qg, ptr %i.qh, align 8, !tbaa !47
  %i.qi = load ptr, ptr %23, align 8, !tbaa !52
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 %i.qg
  store i8 0, ptr %i.qj, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  invoke fastcc void @"_ZZN16OpenColorIO_v2_515LocalFileFormat23ValidateParametricCurveEttPKiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_1clESA_"(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(32) %23)
          to label %bb.br unwind label %bb.bt

bb.br:                                            ; preds = %.noexc328
  %i.qk = load ptr, ptr %23, align 8, !tbaa !52   ; 2 uses
  %i.ql = icmp eq ptr %i.qk, %i.qe
  br i1 %i.ql, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit332, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i330

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i330: ; preds = %bb.br
  %i.qm = load i64, ptr %i.qe, align 8, !tbaa !17
  %i.qn = add i64 %i.qm, 1
  call void @_ZdlPvm(ptr noundef %i.qk, i64 noundef %i.qn) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit332

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit332: ; preds = %bb.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i330
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #30
  br label %.thread433

bb.bs:                                            ; preds = %.noexc.i327
  %i.qo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit335

bb.bt:                                            ; preds = %.noexc328
  %i.qp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qq = load ptr, ptr %23, align 8, !tbaa !52   ; 2 uses
  %i.qr = icmp eq ptr %i.qq, %i.qe
  br i1 %i.qr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit335, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i333

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i333: ; preds = %bb.bt
  %i.qs = load i64, ptr %i.qe, align 8, !tbaa !17
  %i.qt = add i64 %i.qs, 1
  call void @_ZdlPvm(ptr noundef %i.qq, i64 noundef %i.qt) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit335

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit335: ; preds = %bb.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i333, %bb.bs
  %.pn170 = phi { ptr, i32 } [ %i.qo, %bb.bs ], [ %i.qp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i333 ], [ %i.qp, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #30
  br label %bb.cc

.thread428:                                       ; preds = %bb.bh, %bb.bd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308
  %i.qu = fcmp ugt double %i.dj, f0x3FF0000010000000
  br i1 %i.qu, label %.thread405, label %bb.bu

bb.bu:                                            ; preds = %.thread428
  %i.qv = load <2 x i32>, ptr %i.dx, align 4, !tbaa !71
  %i.qw = sitofp <2 x i32> %i.qv to <2 x double>
  %i.qx = fmul nnan <2 x double> %i.qw, splat (double f0x3EF0000000000000)
  %i.qy = fptrunc <2 x double> %i.qx to <2 x float> ; 2 uses
  %i.qz = extractelement <2 x float> %i.qy, i64 1
  %i.ra = fneg float %i.qz
  %i.rb = extractelement <2 x float> %i.qy, i64 0
  %i.rc = fdiv float %i.ra, %i.rb
  %i.rd = fcmp ogt float %i.rc, 0.000000e+00
  br i1 %i.rd, label %.noexc.i337, label %.thread405

.noexc.i337:                                      ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #30
  %i.re = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 6 uses
  store ptr %i.re, ptr %24, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  store i64 39, ptr %i.b, align 8, !tbaa !56
  %i.rf = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc338 unwind label %bb.bw ; 3 uses

.noexc338:                                        ; preds = %.noexc.i337
  store ptr %i.rf, ptr %24, align 8, !tbaa !52
  %i.rg = load i64, ptr %i.b, align 8, !tbaa !56  ; 3 uses
  store i64 %i.rg, ptr %i.re, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %i.rf, ptr noundef nonnull align 1 dereferenceable(39) @.str.26, i64 39, i1 false)
  %i.rh = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i64 %i.rg, ptr %i.rh, align 8, !tbaa !47
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rf, i64 %i.rg
  store i8 0, ptr %i.ri, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  invoke fastcc void @"_ZZN16OpenColorIO_v2_515LocalFileFormat23ValidateParametricCurveEttPKiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_1clESA_"(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(32) %24)
          to label %bb.bv unwind label %bb.bx

bb.bv:                                            ; preds = %.noexc338
  %i.rj = load ptr, ptr %24, align 8, !tbaa !52   ; 2 uses
  %i.rk = icmp eq ptr %i.rj, %i.re
  br i1 %i.rk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit342, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i340

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i340: ; preds = %bb.bv
  %i.rl = load i64, ptr %i.re, align 8, !tbaa !17
  %i.rm = add i64 %i.rl, 1
  call void @_ZdlPvm(ptr noundef %i.rj, i64 noundef %i.rm) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit342

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit342: ; preds = %bb.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i340
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #30
  br label %.thread405

bb.bw:                                            ; preds = %.noexc.i337
  %i.rn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345

bb.bx:                                            ; preds = %.noexc338
  %i.ro = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.rp = load ptr, ptr %24, align 8, !tbaa !52   ; 2 uses
  %i.rq = icmp eq ptr %i.rp, %i.re
  br i1 %i.rq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i343

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i343: ; preds = %bb.bx
  %i.rr = load i64, ptr %i.re, align 8, !tbaa !17
  %i.rs = add i64 %i.rr, 1
  call void @_ZdlPvm(ptr noundef %i.rp, i64 noundef %i.rs) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345: ; preds = %bb.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i343, %bb.bw
  %.pn178 = phi { ptr, i32 } [ %i.rn, %bb.bw ], [ %i.ro, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i343 ], [ %i.ro, %bb.bx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #30
  br label %bb.cc

.thread433:                                       ; preds = %bb.bq, %bb.bm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit332, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit320
  %i.rt = load <2 x i32>, ptr %i.dx, align 4, !tbaa !71
  %i.ru = sitofp <2 x i32> %i.rt to <2 x double>
  %i.rv = fmul nnan <2 x double> %i.ru, splat (double f0x3EF0000000000000) ; 2 uses
  %i.rw = extractelement <2 x double> %i.rv, i64 0
  %i.rx = fptrunc double %i.rw to float           ; 2 uses
  %i.ry = extractelement <2 x double> %i.rv, i64 1
  %i.rz = fptrunc double %i.ry to float
  %i.sa = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.sb = load <2 x i32>, ptr %i.sa, align 4, !tbaa !71
  %i.sc = sitofp <2 x i32> %i.sb to <2 x double>
  %i.sd = fmul nnan <2 x double> %i.sc, splat (double f0x3EF0000000000000)
  %i.se = fptrunc <2 x double> %i.sd to <2 x float> ; 2 uses
  %ldexpf.i346 = call float @ldexpf(float 1.000000e+00, i32 8)
  %i.sf = fmul float %i.dk, %i.rx
  %i.sg = extractelement <2 x float> %i.se, i64 1
  %i.sh = call float @llvm.fmuladd.f32(float %i.rx, float %i.sg, float %i.rz)
  %i.si = fadd float %i.dk, -1.000000e+00
  %i.sj = fadd float %ldexpf.i346, -1.000000e+00  ; 2 uses
  %i.sk = extractelement <2 x float> %i.se, i64 0
  %i.sl = fmul float %i.sj, %i.sk
  %i.sm = call noundef i64 @lroundf(float noundef %i.sl) #30
  %i.sn = call noundef float @powf(float noundef %i.sh, float noundef %i.si) #30
  %i.so = fmul float %i.sf, %i.sn
  %ldexpf.i347 = call float @ldexpf(float 1.000000e+00, i32 8)
  %i.sp = fadd float %ldexpf.i347, -1.000000e+00  ; 2 uses
  %i.sq = fmul float %i.so, %i.sp
  %i.sr = call noundef i64 @lroundf(float noundef %i.sq) #30
  %i.ss = sitofp i64 %i.sr to float
  %i.st = sitofp i64 %i.sm to float
  %i.su = insertelement <2 x float> poison, float %i.st, i64 0
  %i.sv = insertelement <2 x float> %i.su, float %i.ss, i64 1
  %i.sw = insertelement <2 x float> poison, float %i.sj, i64 0
  %i.sx = insertelement <2 x float> %i.sw, float %i.sp, i64 1
  %i.sy = fdiv <2 x float> %i.sv, %i.sx           ; 2 uses
  %i.sz = extractelement <2 x float> %i.sy, i64 0
  %i.ta = extractelement <2 x float> %i.sy, i64 1
  %i.tb = fcmp une float %i.sz, %i.ta
  br i1 %i.tb, label %.noexc.i349, label %.thread405

.noexc.i349:                                      ; preds = %.thread433
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #30
  %i.tc = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 6 uses
  store ptr %i.tc, ptr %25, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 39, ptr %i.a, align 8, !tbaa !56
  %i.td = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc350 unwind label %bb.bz ; 3 uses

.noexc350:                                        ; preds = %.noexc.i349
  store ptr %i.td, ptr %25, align 8, !tbaa !52
  %i.te = load i64, ptr %i.a, align 8, !tbaa !56  ; 3 uses
  store i64 %i.te, ptr %i.tc, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %i.td, ptr noundef nonnull align 1 dereferenceable(39) @.str.26, i64 39, i1 false)
  %i.tf = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i64 %i.te, ptr %i.tf, align 8, !tbaa !47
  %i.tg = getelementptr inbounds nuw i8, ptr %i.td, i64 %i.te
  store i8 0, ptr %i.tg, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  invoke fastcc void @"_ZZN16OpenColorIO_v2_515LocalFileFormat23ValidateParametricCurveEttPKiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_1clESA_"(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(32) %25)
          to label %bb.by unwind label %bb.ca

bb.by:                                            ; preds = %.noexc350
  %i.th = load ptr, ptr %25, align 8, !tbaa !52   ; 2 uses
  %i.ti = icmp eq ptr %i.th, %i.tc
  br i1 %i.ti, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit354, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i352

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i352: ; preds = %bb.by
  %i.tj = load i64, ptr %i.tc, align 8, !tbaa !17
  %i.tk = add i64 %i.tj, 1
  call void @_ZdlPvm(ptr noundef %i.th, i64 noundef %i.tk) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit354

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit354: ; preds = %bb.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i352
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #30
  br label %.thread405

bb.bz:                                            ; preds = %.noexc.i349
  %i.tl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit357

bb.ca:                                            ; preds = %.noexc350
  %i.tm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.tn = load ptr, ptr %25, align 8, !tbaa !52   ; 2 uses
  %i.to = icmp eq ptr %i.tn, %i.tc
  br i1 %i.to, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit357, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i355

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i355: ; preds = %bb.ca
  %i.tp = load i64, ptr %i.tc, align 8, !tbaa !17
  %i.tq = add i64 %i.tp, 1
  call void @_ZdlPvm(ptr noundef %i.tn, i64 noundef %i.tq) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit357

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit357: ; preds = %bb.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i355, %bb.bz
  %.pn175 = phi { ptr, i32 } [ %i.tl, %bb.bz ], [ %i.tm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i355 ], [ %i.tm, %bb.ca ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #30
  br label %bb.cc

.thread405:                                       ; preds = %bb.av, %bb.ad, %.thread433, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit354, %.thread428, %bb.bu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit342
  %i.tr = load ptr, ptr %i.at, align 8, !tbaa !101
  invoke void @_ZNSt8_Rb_treeItSt4pairIKttESt10_Select1stIS2_ESt4lessItESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef %i.tr)
          to label %_ZNSt3mapIttSt4lessItESaISt4pairIKttEEED2Ev.exit unwind label %bb.cb

bb.cb:                                            ; preds = %.thread405
  %i.ts = landingpad { ptr, i32 }
          catch ptr null
  %i.tt = extractvalue { ptr, i32 } %i.ts, 0
  call void @__clang_call_terminate(ptr %i.tt) #34
  unreachable

_ZNSt3mapIttSt4lessItESaISt4pairIKttEEED2Ev.exit: ; preds = %.thread405
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.tu = load ptr, ptr %5, align 8, !tbaa !52    ; 2 uses
  %i.tv = icmp eq ptr %i.tu, %i.af
  br i1 %i.tv, label %"_ZZN16OpenColorIO_v2_515LocalFileFormat23ValidateParametricCurveEttPKiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_1D2Ev.exit", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt3mapIttSt4lessItESaISt4pairIKttEEED2Ev.exit
  %i.tw = load i64, ptr %i.af, align 8, !tbaa !17
  %i.tx = add i64 %i.tw, 1
  call void @_ZdlPvm(ptr noundef %i.tu, i64 noundef %i.tx) #32
  br label %"_ZZN16OpenColorIO_v2_515LocalFileFormat23ValidateParametricCurveEttPKiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_1D2Ev.exit"

"_ZZN16OpenColorIO_v2_515LocalFileFormat23ValidateParametricCurveEttPKiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_1D2Ev.exit": ; preds = %_ZNSt3mapIttSt4lessItESaISt4pairIKttEEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
end_hunk_0
