Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/tiling?download=true
inline.NumInlined: 48
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 24
begin_hunk_0_@default_process_tiling:bb.a
  %i.ob = extractelement <2 x i32> %i.oa, i64 0   ; 2 uses
  store i32 %i.ob, ptr %i.kc, align 8, !tbaa !42
  %i.oc = extractelement <2 x i32> %i.oa, i64 1   ; 2 uses
  store i32 %i.oc, ptr %i.kd, align 4, !tbaa !44
  %i.od = load float, ptr %i.js, align 8, !tbaa !43 ; 2 uses
  store float %i.od, ptr %i.ke, align 16, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %32, ptr noundef nonnull align 8 dereferenceable(20) %30, i64 20, i1 false), !tbaa.struct !124
  %i.oe = and i32 %i.ng, 25165824
  %or.cond.not.i515.i = icmp eq i32 %i.oe, 25165824
  br i1 %or.cond.not.i515.i, label %bb.am, label %_print_roi.exit516.i

bb.am:                                            ; preds = %_print_roi.exit511.i
  %i.of = add nsw <2 x i32> %i.oa, %i.np          ; 2 uses
  %i.og = fpext reassoc nsz arcp contract afn float %i.od to double
  %i.oh = extractelement <2 x i32> %i.of, i64 0
  %i.oi = extractelement <2 x i32> %i.of, i64 1
  %i.oj = extractelement <2 x i32> %i.np, i64 0
  %i.ok = extractelement <2 x i32> %i.np, i64 1
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.23, i32 noundef %i.oj, i32 noundef %i.ok, i32 noundef %i.oh, i32 noundef %i.oi, i32 noundef %i.ob, i32 noundef %i.oc, double noundef %i.og, ptr noundef nonnull @.str.9) #11
  %.pre600.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !91
  br label %_print_roi.exit516.i

_print_roi.exit516.i:                             ; preds = %bb.am, %_print_roi.exit511.i
  %i.ol = phi i32 [ %i.ng, %_print_roi.exit511.i ], [ %.pre600.i, %bb.am ]
  %i.om = and i32 %i.ol, 25165824
  %or.cond.not.i517.i = icmp eq i32 %i.om, 25165824
  br i1 %or.cond.not.i517.i, label %bb.an, label %_print_roi.exit518.i

bb.an:                                            ; preds = %_print_roi.exit516.i
  %i.on = load i32, ptr %32, align 16, !tbaa !122 ; 2 uses
  %i.oo = load i32, ptr %i.kf, align 4, !tbaa !123 ; 2 uses
  %i.op = load i32, ptr %i.kg, align 8, !tbaa !42 ; 2 uses
  %i.oq = add nsw i32 %i.op, %i.on
  %i.or = load i32, ptr %i.kh, align 4, !tbaa !44 ; 2 uses
  %i.os = add nsw i32 %i.or, %i.oo
  %i.ot = load float, ptr %i.ki, align 16, !tbaa !43
  %i.ou = fpext reassoc nsz arcp contract afn float %i.ot to double
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.23, i32 noundef %i.on, i32 noundef %i.oo, i32 noundef %i.oq, i32 noundef %i.os, i32 noundef %i.op, i32 noundef %i.or, double noundef %i.ou, ptr noundef nonnull @.str.10) #11
  br label %_print_roi.exit518.i

_print_roi.exit518.i:                             ; preds = %bb.an, %_print_roi.exit516.i
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %25, ptr noundef nonnull readonly align 16 dereferenceable(20) %31, i64 20, i1 false), !tbaa.struct !124
  call void @llvm.lifetime.start.p0(ptr nonnull %26)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %26, ptr noundef nonnull align 16 dereferenceable(20) %32, i64 20, i1 false), !tbaa.struct !124
  %i.ov = load ptr, ptr %i.jy, align 8, !tbaa !121
  call void %i.ov(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %32, ptr noundef nonnull %25) #11, !inline_history !95
  br label %bb.ao

bb.ao:                                            ; preds = %_print_roi.exit52.i.i, %_print_roi.exit518.i
  %.0.i.i = phi i32 [ 10, %_print_roi.exit518.i ], [ %i.rk, %_print_roi.exit52.i.i ] ; 3 uses
  %i.ow = load i32, ptr %25, align 16, !tbaa !122 ; 3 uses
  %i.ox = load i32, ptr %31, align 16, !tbaa !122
  %i.oy = sub nsw i32 %i.ow, %i.ox
  %i.oz = call i32 @llvm.abs.i32(i32 %i.oy, i1 true)
  %i.pa = icmp sgt i32 %i.oz, %i.az
  br i1 %i.pa, label %bb.as, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.pb = load i32, ptr %i.kj, align 4, !tbaa !123
  %i.pc = load i32, ptr %i.kb, align 4, !tbaa !123
  %i.pd = sub nsw i32 %i.pb, %i.pc
  %i.pe = call i32 @llvm.abs.i32(i32 %i.pd, i1 true)
  %i.pf = icmp samesign ugt i32 %i.pe, %i.az
  br i1 %i.pf, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.pg = load i32, ptr %i.kk, align 8, !tbaa !42
  %i.ph = load i32, ptr %i.kc, align 8, !tbaa !42
  %i.pi = sub nsw i32 %i.pg, %i.ph
  %i.pj = call i32 @llvm.abs.i32(i32 %i.pi, i1 true)
  %i.pk = icmp samesign ugt i32 %i.pj, %i.az
  br i1 %i.pk, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.pl = load i32, ptr %i.kl, align 4, !tbaa !44
  %i.pm = load i32, ptr %i.kd, align 4, !tbaa !44
  %i.pn = sub nsw i32 %i.pl, %i.pm
  %i.po = call i32 @llvm.abs.i32(i32 %i.pn, i1 true)
  %i.pp = icmp samesign ugt i32 %i.po, %i.az
  %i.pq = icmp sgt i32 %.0.i.i, 0                 ; 2 uses
  %or.cond.i.i = select i1 %i.pp, i1 %i.pq, i1 false
  br i1 %or.cond.i.i, label %bb.at, label %.critedge.i.i

bb.as:                                            ; preds = %bb.aq, %bb.ap, %bb.ao
  %.old1.i.i = icmp sgt i32 %.0.i.i, 0
  br i1 %.old1.i.i, label %bb.at, label %.critedge.thread.i.i

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.pr = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !91 ; 2 uses
  %i.ps = and i32 %i.pr, 25165824
  %or.cond.not.i.i.i = icmp eq i32 %i.ps, 25165824
  br i1 %or.cond.not.i.i.i, label %bb.au, label %_print_roi.exit.i.i

bb.au:                                            ; preds = %bb.at
  %i.pt = load i32, ptr %i.kj, align 4, !tbaa !123 ; 2 uses
  %i.pu = load i32, ptr %i.kk, align 8, !tbaa !42 ; 2 uses
  %i.pv = add nsw i32 %i.pu, %i.ow
  %i.pw = load i32, ptr %i.kl, align 4, !tbaa !44 ; 2 uses
  %i.px = add nsw i32 %i.pw, %i.pt
  %i.py = load float, ptr %i.km, align 16, !tbaa !43
  %i.pz = fpext reassoc nsz arcp contract afn float %i.py to double
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.23, i32 noundef %i.ow, i32 noundef %i.pt, i32 noundef %i.pv, i32 noundef %i.px, i32 noundef %i.pu, i32 noundef %i.pw, double noundef %i.pz, ptr noundef nonnull @.str.24) #11
  %.pre.i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !91
  br label %_print_roi.exit.i.i

_print_roi.exit.i.i:                              ; preds = %bb.au, %bb.at
  %i.qa = phi i32 [ %i.pr, %bb.at ], [ %.pre.i.i, %bb.au ] ; 2 uses
  %i.qb = and i32 %i.qa, 25165824
  %or.cond.not.i49.i.i = icmp eq i32 %i.qb, 25165824
  br i1 %or.cond.not.i49.i.i, label %bb.av, label %_print_roi.exit50.i.i

bb.av:                                            ; preds = %_print_roi.exit.i.i
  %i.qc = load i32, ptr %32, align 16, !tbaa !122 ; 2 uses
  %i.qd = load i32, ptr %i.kf, align 4, !tbaa !123 ; 2 uses
  %i.qe = load i32, ptr %i.kg, align 8, !tbaa !42 ; 2 uses
  %i.qf = add nsw i32 %i.qe, %i.qc
  %i.qg = load i32, ptr %i.kh, align 4, !tbaa !44 ; 2 uses
  %i.qh = add nsw i32 %i.qg, %i.qd
  %i.qi = load float, ptr %i.ki, align 16, !tbaa !43
  %i.qj = fpext reassoc nsz arcp contract afn float %i.qi to double
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.23, i32 noundef %i.qc, i32 noundef %i.qd, i32 noundef %i.qf, i32 noundef %i.qh, i32 noundef %i.qe, i32 noundef %i.qg, double noundef %i.qj, ptr noundef nonnull @.str.25) #11
  %.pre56.i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !91
  br label %_print_roi.exit50.i.i

_print_roi.exit50.i.i:                            ; preds = %bb.av, %_print_roi.exit.i.i
  %i.qk = phi i32 [ %i.qa, %_print_roi.exit.i.i ], [ %.pre56.i.i, %bb.av ]
  %i.ql = load float, ptr %i.ki, align 16, !tbaa !43 ; 2 uses
  %i.qm = load float, ptr %i.ke, align 16, !tbaa !43
  %i.qn = load <4 x i32>, ptr %31, align 16, !tbaa !50
  %i.qo = load <4 x i32>, ptr %25, align 16, !tbaa !50
  %i.qp = sub nsw <4 x i32> %i.qn, %i.qo
  %i.qq = sitofp reassoc nsz arcp contract afn <4 x i32> %i.qp to <4 x float>
  %i.qr = insertelement <4 x float> poison, float %i.ql, i64 0
  %i.qs = shufflevector <4 x float> %i.qr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.qt = fmul reassoc nsz arcp contract afn <4 x float> %i.qs, %i.qq
  %i.qu = insertelement <4 x float> poison, float %i.qm, i64 0
  %i.qv = shufflevector <4 x float> %i.qu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.qw = fdiv reassoc nsz arcp contract afn <4 x float> %i.qt, %i.qv
  %i.qx = load <4 x i32>, ptr %32, align 16, !tbaa !50
  %i.qy = sitofp reassoc nsz arcp contract afn <4 x i32> %i.qx to <4 x float>
  %i.qz = fadd reassoc nsz arcp contract afn <4 x float> %i.qw, %i.qy
  %i.ra = fptosi <4 x float> %i.qz to <4 x i32>   ; 4 uses
  %i.rb = extractelement <4 x i32> %i.ra, i64 0   ; 3 uses
  store i32 %i.rb, ptr %32, align 16, !tbaa !122
  %i.rc = extractelement <4 x i32> %i.ra, i64 1   ; 3 uses
  store i32 %i.rc, ptr %i.kf, align 4, !tbaa !123
  %i.rd = extractelement <4 x i32> %i.ra, i64 2   ; 3 uses
  store i32 %i.rd, ptr %i.kg, align 8, !tbaa !42
  %i.re = extractelement <4 x i32> %i.ra, i64 3   ; 3 uses
  store i32 %i.re, ptr %i.kh, align 4, !tbaa !44
  %i.rf = and i32 %i.qk, 25165824
  %or.cond.not.i51.i.i = icmp eq i32 %i.rf, 25165824
  br i1 %or.cond.not.i51.i.i, label %bb.aw, label %_print_roi.exit52.i.i

bb.aw:                                            ; preds = %_print_roi.exit50.i.i
  %i.rg = add nsw i32 %i.rd, %i.rb
  %i.rh = add nsw i32 %i.re, %i.rc
  %i.ri = fpext reassoc nsz arcp contract afn float %i.ql to double
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.23, i32 noundef %i.rb, i32 noundef %i.rc, i32 noundef %i.rg, i32 noundef %i.rh, i32 noundef %i.rd, i32 noundef %i.re, double noundef %i.ri, ptr noundef nonnull @.str.26) #11
  br label %_print_roi.exit52.i.i

_print_roi.exit52.i.i:                            ; preds = %bb.aw, %_print_roi.exit50.i.i
  %i.rj = load ptr, ptr %i.jy, align 8, !tbaa !121
  call void %i.rj(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %32, ptr noundef nonnull %25) #11, !inline_history !95
  %i.rk = add nsw i32 %.0.i.i, -1
  br label %bb.ao

.critedge.i.i:                                    ; preds = %bb.ar
  br i1 %i.pq, label %_fit_output_to_input_roi.exit.thread.i, label %.critedge.thread.i.i

_fit_output_to_input_roi.exit.thread.i:           ; preds = %.critedge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %26)
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #11
  %.pre601.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !91
  br label %bb.cu

.critedge.thread.i.i:                             ; preds = %bb.as, %.critedge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %32, ptr noundef nonnull align 4 dereferenceable(20) %26, i64 20, i1 false), !tbaa.struct !124
  %i.rl = load <2 x i32>, ptr %i.kn, align 4, !tbaa !50 ; 3 uses
  %i.rm = shufflevector <2 x i32> %i.rl, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.rn = sitofp reassoc nsz arcp contract afn <4 x i32> %i.rm to <4 x float>
  %i.ro = load <4 x i32>, ptr %32, align 16, !tbaa !50
  %i.rp = sitofp reassoc nsz arcp contract afn <4 x i32> %i.ro to <4 x float>
  %i.rq = fdiv reassoc nsz arcp contract afn <4 x float> %i.rp, %i.rn
  %i.rr = fpext reassoc nsz arcp contract afn <4 x float> %i.rq to <4 x double> ; 6 uses
  %i.rs = call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #12 ; 20 uses
  %i.rt = call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #12 ; 22 uses
  %i.ru = call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #12 ; 4 uses
  %i.rv = call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #12 ; 3 uses
  %i.rw = call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #12 ; 4 uses
  %i.rx = call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #12 ; 2 uses
  store ptr %i.rx, ptr %i.rs, align 8, !tbaa !126
  %i.ry = call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #12 ; 2 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rs, i64 8 ; 8 uses
  store ptr %i.ry, ptr %i.rz, align 8, !tbaa !126
  %i.sa = call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #12 ; 2 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %i.rs, i64 16 ; 7 uses
  store ptr %i.sa, ptr %i.sb, align 8, !tbaa !126
  %i.sc = call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #12 ; 2 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %i.rs, i64 24 ; 7 uses
  store ptr %i.sc, ptr %i.sd, align 8, !tbaa !126
  %i.se = call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #12 ; 3 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %i.rs, i64 32 ; 7 uses
  store ptr %i.se, ptr %i.sf, align 8, !tbaa !126
  store <4 x double> %i.rr, ptr %i.rx, align 8, !tbaa !127
  %i.sg = fadd reassoc nsz arcp contract afn <4 x double> %i.rr, <double f0x3FED9EA2EA4C9A82, double f0x3FCBF8120F357AD9, double f0x3FCBF8120F357AD9, double f0x3FCBF8120F357AD9> ; 4 uses
  store <4 x double> %i.sg, ptr %i.ry, align 8, !tbaa !127
  %33 = shufflevector <4 x double> %i.rr, <4 x double> %i.sg, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.sh = fadd reassoc arcp contract afn <4 x double> %33, <double f0x3FCBF8120F357AD9, double f0x3FED9EA2EA4C9A82, double -0.000000e+00, double -0.000000e+00> ; 3 uses
  store <4 x double> %i.sh, ptr %i.sa, align 8, !tbaa !127
  %34 = shufflevector <4 x double> %i.sh, <4 x double> %i.rr, <4 x i32> <i32 0, i32 5, i32 6, i32 poison>
  %35 = shufflevector <4 x double> %34, <4 x double> %i.sg, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %36 = fadd reassoc arcp contract afn <4 x double> %35, <double -0.000000e+00, double f0x3FCBF8120F357AD9, double f0x3FED9EA2EA4C9A82, double -0.000000e+00> ; 2 uses
  store <4 x double> %36, ptr %i.sc, align 8, !tbaa !127
  %37 = shufflevector <4 x double> %i.sh, <4 x double> %36, <2 x i32> <i32 0, i32 5>
  store <2 x double> %37, ptr %i.se, align 8, !tbaa !127
  %i.si = getelementptr inbounds nuw i8, ptr %i.se, i64 16
  %38 = shufflevector <4 x double> %i.sg, <4 x double> %i.rr, <2 x i32> <i32 2, i32 7>
  %39 = fadd reassoc arcp contract afn <2 x double> %38, <double -0.000000e+00, double f0x3FED9EA2EA4C9A82>
  store <2 x double> %39, ptr %i.si, align 8, !tbaa !127
  %i.sj = load ptr, ptr %i.rs, align 8, !tbaa !126
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %23, ptr noundef nonnull align 16 dereferenceable(20) %32, i64 20, i1 false), !tbaa.struct !124
  %i.sk = load <2 x i32>, ptr %i.kn, align 4, !tbaa !50
  %i.sl = shufflevector <2 x i32> %i.sk, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.sm = sitofp reassoc nsz arcp contract afn <4 x i32> %i.sl to <4 x double>
  %i.sn = load <4 x double>, ptr %i.sj, align 8, !tbaa !127
  %i.so = fmul reassoc nsz arcp contract afn <4 x double> %i.sn, %i.sm
  %i.sp = fptosi <4 x double> %i.so to <4 x i32>
  store <4 x i32> %i.sp, ptr %23, align 16, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %24, ptr noundef nonnull readonly align 16 dereferenceable(20) %31, i64 20, i1 false), !tbaa.struct !124
  %i.sq = load ptr, ptr %i.jy, align 8, !tbaa !121
  call void %i.sq(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %23, ptr noundef nonnull %24) #11, !inline_history !96
  %i.sr = load <4 x i32>, ptr %24, align 16, !tbaa !50
  %i.ss = load <4 x i32>, ptr %31, align 16, !tbaa !50
  %i.st = sub nsw <4 x i32> %i.sr, %i.ss
  %i.su = sitofp reassoc nsz arcp contract afn <4 x i32> %i.st to <4 x double> ; 2 uses
  %i.sv = fmul reassoc nnan nsz arcp contract afn <4 x double> %i.su, %i.su
  %i.sw = call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.sv)
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #11
  store double %i.sw, ptr %i.rt, align 8, !tbaa !127
  %i.sx = getelementptr inbounds nuw i8, ptr %i.rs, i64 8
  %i.sy = load ptr, ptr %i.sx, align 8, !tbaa !126
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %23, ptr noundef nonnull align 16 dereferenceable(20) %32, i64 20, i1 false), !tbaa.struct !124
  %i.sz = load <2 x i32>, ptr %i.kn, align 4, !tbaa !50
  %i.ta = shufflevector <2 x i32> %i.sz, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.tb = sitofp reassoc nsz arcp contract afn <4 x i32> %i.ta to <4 x double>
  %i.tc = load <4 x double>, ptr %i.sy, align 8, !tbaa !127
  %i.td = fmul reassoc nsz arcp contract afn <4 x double> %i.tc, %i.tb
  %i.te = fptosi <4 x double> %i.td to <4 x i32>
  store <4 x i32> %i.te, ptr %23, align 16, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %24, ptr noundef nonnull readonly align 16 dereferenceable(20) %31, i64 20, i1 false), !tbaa.struct !124
  %i.tf = load ptr, ptr %i.jy, align 8, !tbaa !121
  call void %i.tf(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %23, ptr noundef nonnull %24) #11, !inline_history !96
  %i.tg = load <4 x i32>, ptr %24, align 16, !tbaa !50
  %i.th = load <4 x i32>, ptr %31, align 16, !tbaa !50
  %i.ti = sub nsw <4 x i32> %i.tg, %i.th
  %i.tj = sitofp reassoc nsz arcp contract afn <4 x i32> %i.ti to <4 x double> ; 2 uses
  %i.tk = fmul reassoc nnan nsz arcp contract afn <4 x double> %i.tj, %i.tj
  %i.tl = call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.tk)
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #11
  %i.tm = getelementptr inbounds nuw i8, ptr %i.rt, i64 8
  store double %i.tl, ptr %i.tm, align 8, !tbaa !127
  %i.tn = getelementptr inbounds nuw i8, ptr %i.rs, i64 16
  %i.to = load ptr, ptr %i.tn, align 8, !tbaa !126
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %23, ptr noundef nonnull align 16 dereferenceable(20) %32, i64 20, i1 false), !tbaa.struct !124
  %i.tp = load <2 x i32>, ptr %i.kn, align 4, !tbaa !50
  %i.tq = shufflevector <2 x i32> %i.tp, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.tr = sitofp reassoc nsz arcp contract afn <4 x i32> %i.tq to <4 x double>
  %i.ts = load <4 x double>, ptr %i.to, align 8, !tbaa !127
  %i.tt = fmul reassoc nsz arcp contract afn <4 x double> %i.ts, %i.tr
  %i.tu = fptosi <4 x double> %i.tt to <4 x i32>
  store <4 x i32> %i.tu, ptr %23, align 16, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %24, ptr noundef nonnull readonly align 16 dereferenceable(20) %31, i64 20, i1 false), !tbaa.struct !124
  %i.tv = load ptr, ptr %i.jy, align 8, !tbaa !121
  call void %i.tv(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %23, ptr noundef nonnull %24) #11, !inline_history !96
  %i.tw = load <4 x i32>, ptr %24, align 16, !tbaa !50
  %i.tx = load <4 x i32>, ptr %31, align 16, !tbaa !50
  %i.ty = sub nsw <4 x i32> %i.tw, %i.tx
  %i.tz = sitofp reassoc nsz arcp contract afn <4 x i32> %i.ty to <4 x double> ; 2 uses
  %i.ua = fmul reassoc nnan nsz arcp contract afn <4 x double> %i.tz, %i.tz
  %i.ub = call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.ua)
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #11
  %i.uc = getelementptr inbounds nuw i8, ptr %i.rt, i64 16
  store double %i.ub, ptr %i.uc, align 8, !tbaa !127
  %i.ud = getelementptr inbounds nuw i8, ptr %i.rs, i64 24
  %i.ue = load ptr, ptr %i.ud, align 8, !tbaa !126
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %23, ptr noundef nonnull align 16 dereferenceable(20) %32, i64 20, i1 false), !tbaa.struct !124
  %i.uf = load <2 x i32>, ptr %i.kn, align 4, !tbaa !50
  %i.ug = shufflevector <2 x i32> %i.uf, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.uh = sitofp reassoc nsz arcp contract afn <4 x i32> %i.ug to <4 x double>
  %i.ui = load <4 x double>, ptr %i.ue, align 8, !tbaa !127
  %i.uj = fmul reassoc nsz arcp contract afn <4 x double> %i.ui, %i.uh
  %i.uk = fptosi <4 x double> %i.uj to <4 x i32>
  store <4 x i32> %i.uk, ptr %23, align 16, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %24, ptr noundef nonnull readonly align 16 dereferenceable(20) %31, i64 20, i1 false), !tbaa.struct !124
  %i.ul = load ptr, ptr %i.jy, align 8, !tbaa !121
  call void %i.ul(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %23, ptr noundef nonnull %24) #11, !inline_history !96
  %i.um = load <4 x i32>, ptr %24, align 16, !tbaa !50
  %i.un = load <4 x i32>, ptr %31, align 16, !tbaa !50
  %i.uo = sub nsw <4 x i32> %i.um, %i.un
  %i.up = sitofp reassoc nsz arcp contract afn <4 x i32> %i.uo to <4 x double> ; 2 uses
  %i.uq = fmul reassoc nnan nsz arcp contract afn <4 x double> %i.up, %i.up
  %i.ur = call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.uq)
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #11
  %i.us = getelementptr inbounds nuw i8, ptr %i.rt, i64 24
  store double %i.ur, ptr %i.us, align 8, !tbaa !127
  %i.ut = getelementptr inbounds nuw i8, ptr %i.rs, i64 32
  %i.uu = load ptr, ptr %i.ut, align 8, !tbaa !126
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %23, ptr noundef nonnull align 16 dereferenceable(20) %32, i64 20, i1 false), !tbaa.struct !124
  %i.uv = load <2 x i32>, ptr %i.kn, align 4, !tbaa !50
  %i.uw = shufflevector <2 x i32> %i.uv, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ux = sitofp reassoc nsz arcp contract afn <4 x i32> %i.uw to <4 x double>
  %i.uy = load <4 x double>, ptr %i.uu, align 8, !tbaa !127
  %i.uz = fmul reassoc nsz arcp contract afn <4 x double> %i.uy, %i.ux
  %i.va = fptosi <4 x double> %i.uz to <4 x i32>
  store <4 x i32> %i.va, ptr %23, align 16, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %24, ptr noundef nonnull readonly align 16 dereferenceable(20) %31, i64 20, i1 false), !tbaa.struct !124
  %i.vb = load ptr, ptr %i.jy, align 8, !tbaa !121
  call void %i.vb(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %23, ptr noundef nonnull %24) #11, !inline_history !96
  %i.vc = load <4 x i32>, ptr %24, align 16, !tbaa !50
  %i.vd = load <4 x i32>, ptr %31, align 16, !tbaa !50
  %i.ve = sub nsw <4 x i32> %i.vc, %i.vd
  %i.vf = sitofp reassoc nsz arcp contract afn <4 x i32> %i.ve to <4 x double> ; 2 uses
  %i.vg = fmul reassoc nnan nsz arcp contract afn <4 x double> %i.vf, %i.vf
  %i.vh = call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.vg)
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #11
  %i.vi = getelementptr inbounds nuw i8, ptr %i.rt, i64 32
  store double %i.vh, ptr %i.vi, align 8, !tbaa !127
  %i.vj = extractelement <2 x i32> %i.rl, i64 0
  %i.vk = extractelement <2 x i32> %i.rl, i64 1
  %..i.i.i = call i32 @llvm.smin.i32(i32 %i.vj, i32 %i.vk)
  %i.vl = sitofp reassoc nsz arcp contract afn i32 %..i.i.i to double
  %i.vm = fdiv reassoc nsz arcp contract afn double %i.ko, %i.vl ; 2 uses
  %i.vn = load <4 x double>, ptr %i.rt, align 8, !tbaa !127
  %.phi.trans.insert141.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.rt, i64 32 ; 2 uses
  %.pre142.i.i.i.i = load double, ptr %.phi.trans.insert141.i.i.i.i, align 8, !tbaa !127
  br label %.preheader14.i.i.i.i

.preheader14.i.i.i.i:                             ; preds = %bb.cr, %.critedge.thread.i.i
  %i.vo = phi double [ %.pre142.i.i.i.i, %.critedge.thread.i.i ], [ %i.alm, %bb.cr ] ; 4 uses
  %.033248.i.i.i.i = phi i32 [ 1, %.critedge.thread.i.i ], [ %i.aly, %bb.cr ] ; 2 uses
  %i.vp = phi <4 x double> [ %i.vn, %.critedge.thread.i.i ], [ %i.aln, %bb.cr ] ; 4 uses
  %i.vq = extractelement <4 x double> %i.vp, i64 0 ; 4 uses
  %i.vr = extractelement <4 x double> %i.vp, i64 1 ; 4 uses
  %i.vs = fcmp reassoc nsz arcp contract afn ogt double %i.vr, %i.vq
  %i.vt = zext i1 %i.vs to i64                    ; 2 uses
  %i.vu = getelementptr inbounds nuw [8 x i8], ptr %i.rt, i64 %i.vt
  %i.vv = load double, ptr %i.vu, align 8, !tbaa !127
  %i.vw = extractelement <4 x double> %i.vp, i64 2 ; 4 uses
  %i.vx = fcmp reassoc nsz arcp contract afn ogt double %i.vw, %i.vv
  %i.vy = select i1 %i.vx, i64 2, i64 %i.vt       ; 2 uses
  %i.vz = getelementptr inbounds nuw [8 x i8], ptr %i.rt, i64 %i.vy
  %i.wa = load double, ptr %i.vz, align 8, !tbaa !127
  %i.wb = extractelement <4 x double> %i.vp, i64 3 ; 4 uses
  %i.wc = fcmp reassoc nsz arcp contract afn ogt double %i.wb, %i.wa ; 2 uses
  %i.wd = select i1 %i.wc, i64 3, i64 %i.vy       ; 2 uses
  %i.we = getelementptr inbounds nuw [8 x i8], ptr %i.rt, i64 %i.wd
  %i.wf = load double, ptr %i.we, align 8, !tbaa !127
  %i.wg = fcmp reassoc nsz arcp contract afn olt double %i.vr, %i.vq ; 2 uses
  %spec.select364.1.i.i.i.i = zext i1 %i.wg to i32
  %i.wh = zext i1 %i.wg to i64
  %i.wi = getelementptr inbounds nuw [8 x i8], ptr %i.rt, i64 %i.wh
  %i.wj = load double, ptr %i.wi, align 8, !tbaa !127
  %i.wk = fcmp reassoc nsz arcp contract afn olt double %i.vw, %i.wj
  %spec.select364.2.i.i.i.i = select i1 %i.wk, i32 2, i32 %spec.select364.1.i.i.i.i ; 2 uses
  %i.wl = zext nneg i32 %spec.select364.2.i.i.i.i to i64
  %i.wm = getelementptr inbounds nuw [8 x i8], ptr %i.rt, i64 %i.wl
  %i.wn = load double, ptr %i.wm, align 8, !tbaa !127
  %i.wo = fcmp reassoc nsz arcp contract afn olt double %i.wb, %i.wn ; 2 uses
  %spec.select364.3.i.i.i.i = select i1 %i.wo, i32 3, i32 %spec.select364.2.i.i.i.i ; 2 uses
  %i.wp = zext nneg i32 %spec.select364.3.i.i.i.i to i64
  %i.wq = getelementptr inbounds nuw [8 x i8], ptr %i.rt, i64 %i.wp
  %i.wr = load double, ptr %i.wq, align 8, !tbaa !127
  %i.ws = fcmp reassoc nsz arcp contract afn uge double %i.vo, %i.wr ; 3 uses
  %spec.select364.4.i.i.i.i = select i1 %i.ws, i32 %spec.select364.3.i.i.i.i, i32 4 ; 6 uses
  %i.wt = fcmp reassoc nsz arcp contract afn ule double %i.vo, %i.wf ; 6 uses
  %i.wu = select i1 %i.wt, i64 %i.wd, i64 4       ; 5 uses
  %i.wv = getelementptr inbounds nuw [8 x i8], ptr %i.rt, i64 %i.wu ; 10 uses
  %i.ww = zext nneg i32 %spec.select364.4.i.i.i.i to i64 ; 2 uses
  %i.wx = getelementptr inbounds nuw [8 x i8], ptr %i.rt, i64 %i.ww ; 2 uses
  %i.wy = load double, ptr %i.wx, align 8, !tbaa !127 ; 4 uses
  %i.wz = fcmp reassoc nsz arcp contract afn ogt double %i.vq, %i.wy
  br i1 %i.wz, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %.preheader14.i.i.i.i
  %i.xa = load double, ptr %i.wv, align 8, !tbaa !127
  %i.xb = fcmp reassoc nsz arcp contract afn olt double %i.vq, %i.xa
  %spec.select365.i.i.i.i = select i1 %i.xb, i32 0, i32 %spec.select364.4.i.i.i.i ; 2 uses
  %.pre143.i.i.i.i = zext nneg i32 %spec.select365.i.i.i.i to i64
  %.phi.trans.insert144.i.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.rt, i64 %.pre143.i.i.i.i
  %.pre145.i.i.i.i = load double, ptr %.phi.trans.insert144.i.i.i.i, align 8, !tbaa !127
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %.preheader14.i.i.i.i
  %i.xc = phi double [ %.pre145.i.i.i.i, %bb.ax ], [ %i.wy, %.preheader14.i.i.i.i ] ; 2 uses
  %.1344.i.i.i.i = phi i32 [ %spec.select365.i.i.i.i, %bb.ax ], [ %spec.select364.4.i.i.i.i, %.preheader14.i.i.i.i ] ; 2 uses
  %i.xd = fcmp reassoc nsz arcp contract afn ogt double %i.vr, %i.xc
  br i1 %i.xd, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.xe = load double, ptr %i.wv, align 8, !tbaa !127
  %i.xf = fcmp reassoc nsz arcp contract afn olt double %i.vr, %i.xe
  %spec.select365.1.i.i.i.i = select i1 %i.xf, i32 1, i32 %.1344.i.i.i.i ; 2 uses
  %.pre146.i.i.i.i = zext nneg i32 %spec.select365.1.i.i.i.i to i64
  %.phi.trans.insert155.i.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.rt, i64 %.pre146.i.i.i.i
end_hunk_0
