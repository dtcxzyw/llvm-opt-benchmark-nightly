Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/tiling?download=true
inline.NumInlined: 48
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 24
begin_hunk_0_@default_process_tiling:bb.a
  %i.nt = sub i32 %i.du, %i.ns
  %i.nu = add i32 %i.nt, %i.nr
  %i.nv = load i32, ptr %i.z, align 4, !tbaa !44
  %i.nw = sub i32 %i.nh, %spec.select540.i
  %i.nx = add i32 %i.nw, %i.nv
  %i.ny = call i32 @llvm.smin.i32(i32 %i.nu, i32 %i.nx) ; 3 uses
  %i.nz = sub nsw i32 %i.mz, %i.no
  %i.oa = add i32 %i.nb, %i.jr
  %i.ob = add nsw i32 %i.oa, %i.nz                ; 2 uses
  %i.oc = srem i32 %i.ob, %i.du
  %i.od = sub i32 %i.du, %i.oc
  %i.oe = add i32 %i.od, %i.ob
  %i.of = load i32, ptr %i.am, align 4, !tbaa !46
  %i.og = sub i32 %i.nn, %i.no
  %i.oh = add i32 %i.og, %i.of
  %i.oi = call i32 @llvm.smin.i32(i32 %i.oe, i32 %i.oh) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #11
  store i32 %spec.select540.i, ptr %31, align 16, !tbaa !116
  store i32 %i.no, ptr %i.jt, align 4, !tbaa !117
  store i32 %i.ny, ptr %i.ju, align 8, !tbaa !44
  store i32 %i.oi, ptr %i.jv, align 4, !tbaa !46
  %i.oj = load float, ptr %i.jk, align 8, !tbaa !45 ; 2 uses
  store float %i.oj, ptr %i.jw, align 16, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %32, ptr noundef nonnull align 8 dereferenceable(20) %30, i64 20, i1 false), !tbaa.struct !118
  %i.ok = and i32 %i.mx, 25165824
  %or.cond.not.i515.i = icmp eq i32 %i.ok, 25165824
  br i1 %or.cond.not.i515.i, label %bb.am, label %_print_roi.exit516.i

bb.am:                                            ; preds = %_print_roi.exit511.i
  %i.ol = add nsw i32 %i.ny, %spec.select540.i
  %i.om = add nsw i32 %i.oi, %i.no
  %i.on = fpext reassoc nsz arcp contract afn float %i.oj to double
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.23, i32 noundef %spec.select540.i, i32 noundef %i.no, i32 noundef %i.ol, i32 noundef %i.om, i32 noundef %i.ny, i32 noundef %i.oi, double noundef %i.on, ptr noundef nonnull @.str.9) #11
  %.pre599.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !56
  br label %_print_roi.exit516.i

_print_roi.exit516.i:                             ; preds = %bb.am, %_print_roi.exit511.i
  %i.oo = phi i32 [ %i.mx, %_print_roi.exit511.i ], [ %.pre599.i, %bb.am ]
  %i.op = and i32 %i.oo, 25165824
  %or.cond.not.i517.i = icmp eq i32 %i.op, 25165824
  br i1 %or.cond.not.i517.i, label %bb.an, label %_print_roi.exit518.i

bb.an:                                            ; preds = %_print_roi.exit516.i
  %i.oq = load i32, ptr %32, align 16, !tbaa !116 ; 2 uses
  %i.or = load i32, ptr %i.jx, align 4, !tbaa !117 ; 2 uses
  %i.os = load i32, ptr %i.jy, align 8, !tbaa !44 ; 2 uses
  %i.ot = add nsw i32 %i.os, %i.oq
  %i.ou = load i32, ptr %i.jz, align 4, !tbaa !46 ; 2 uses
  %i.ov = add nsw i32 %i.ou, %i.or
  %i.ow = load float, ptr %i.ka, align 16, !tbaa !45
  %i.ox = fpext reassoc nsz arcp contract afn float %i.ow to double
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.23, i32 noundef %i.oq, i32 noundef %i.or, i32 noundef %i.ot, i32 noundef %i.ov, i32 noundef %i.os, i32 noundef %i.ou, double noundef %i.ox, ptr noundef nonnull @.str.10) #11
  br label %_print_roi.exit518.i

_print_roi.exit518.i:                             ; preds = %bb.an, %_print_roi.exit516.i
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %25, ptr noundef nonnull readonly align 16 dereferenceable(20) %31, i64 20, i1 false), !tbaa.struct !118
  call void @llvm.lifetime.start.p0(ptr nonnull %26)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %26, ptr noundef nonnull align 16 dereferenceable(20) %32, i64 20, i1 false), !tbaa.struct !118
  %i.oy = load ptr, ptr %i.jq, align 8, !tbaa !115
  call void %i.oy(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %32, ptr noundef nonnull %25) #11, !inline_history !119
  br label %bb.ao

bb.ao:                                            ; preds = %_print_roi.exit52.i.i, %_print_roi.exit518.i
  %.0.i.i = phi i32 [ 10, %_print_roi.exit518.i ], [ %i.rn, %_print_roi.exit52.i.i ] ; 3 uses
  %i.oz = load i32, ptr %25, align 16, !tbaa !116 ; 3 uses
  %i.pa = load i32, ptr %31, align 16, !tbaa !116
  %i.pb = sub nsw i32 %i.oz, %i.pa
  %i.pc = call i32 @llvm.abs.i32(i32 %i.pb, i1 true)
  %i.pd = icmp sgt i32 %i.pc, %i.az
  br i1 %i.pd, label %bb.as, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.pe = load i32, ptr %i.kb, align 4, !tbaa !117
  %i.pf = load i32, ptr %i.jt, align 4, !tbaa !117
  %i.pg = sub nsw i32 %i.pe, %i.pf
  %i.ph = call i32 @llvm.abs.i32(i32 %i.pg, i1 true)
  %i.pi = icmp samesign ugt i32 %i.ph, %i.az
  br i1 %i.pi, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.pj = load i32, ptr %i.kc, align 8, !tbaa !44
  %i.pk = load i32, ptr %i.ju, align 8, !tbaa !44
  %i.pl = sub nsw i32 %i.pj, %i.pk
  %i.pm = call i32 @llvm.abs.i32(i32 %i.pl, i1 true)
  %i.pn = icmp samesign ugt i32 %i.pm, %i.az
  br i1 %i.pn, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.po = load i32, ptr %i.kd, align 4, !tbaa !46
  %i.pp = load i32, ptr %i.jv, align 4, !tbaa !46
  %i.pq = sub nsw i32 %i.po, %i.pp
  %i.pr = call i32 @llvm.abs.i32(i32 %i.pq, i1 true)
  %i.ps = icmp samesign ugt i32 %i.pr, %i.az
  %i.pt = icmp sgt i32 %.0.i.i, 0                 ; 2 uses
  %or.cond.i.i = select i1 %i.ps, i1 %i.pt, i1 false
  br i1 %or.cond.i.i, label %bb.at, label %.critedge.i.i

bb.as:                                            ; preds = %bb.aq, %bb.ap, %bb.ao
  %.old1.i.i = icmp sgt i32 %.0.i.i, 0
  br i1 %.old1.i.i, label %bb.at, label %.critedge.thread.i.i

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.pu = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !56 ; 2 uses
  %i.pv = and i32 %i.pu, 25165824
  %or.cond.not.i.i.i = icmp eq i32 %i.pv, 25165824
  br i1 %or.cond.not.i.i.i, label %bb.au, label %_print_roi.exit.i.i

bb.au:                                            ; preds = %bb.at
  %i.pw = load i32, ptr %i.kb, align 4, !tbaa !117 ; 2 uses
  %i.px = load i32, ptr %i.kc, align 8, !tbaa !44 ; 2 uses
  %i.py = add nsw i32 %i.px, %i.oz
  %i.pz = load i32, ptr %i.kd, align 4, !tbaa !46 ; 2 uses
  %i.qa = add nsw i32 %i.pz, %i.pw
  %i.qb = load float, ptr %i.ke, align 16, !tbaa !45
  %i.qc = fpext reassoc nsz arcp contract afn float %i.qb to double
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.23, i32 noundef %i.oz, i32 noundef %i.pw, i32 noundef %i.py, i32 noundef %i.qa, i32 noundef %i.px, i32 noundef %i.pz, double noundef %i.qc, ptr noundef nonnull @.str.24) #11
  %.pre.i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !56
  br label %_print_roi.exit.i.i

_print_roi.exit.i.i:                              ; preds = %bb.au, %bb.at
  %i.qd = phi i32 [ %i.pu, %bb.at ], [ %.pre.i.i, %bb.au ] ; 2 uses
  %i.qe = and i32 %i.qd, 25165824
  %or.cond.not.i49.i.i = icmp eq i32 %i.qe, 25165824
  br i1 %or.cond.not.i49.i.i, label %bb.av, label %_print_roi.exit50.i.i

bb.av:                                            ; preds = %_print_roi.exit.i.i
  %i.qf = load i32, ptr %32, align 16, !tbaa !116 ; 2 uses
  %i.qg = load i32, ptr %i.jx, align 4, !tbaa !117 ; 2 uses
  %i.qh = load i32, ptr %i.jy, align 8, !tbaa !44 ; 2 uses
  %i.qi = add nsw i32 %i.qh, %i.qf
  %i.qj = load i32, ptr %i.jz, align 4, !tbaa !46 ; 2 uses
  %i.qk = add nsw i32 %i.qj, %i.qg
  %i.ql = load float, ptr %i.ka, align 16, !tbaa !45
  %i.qm = fpext reassoc nsz arcp contract afn float %i.ql to double
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.23, i32 noundef %i.qf, i32 noundef %i.qg, i32 noundef %i.qi, i32 noundef %i.qk, i32 noundef %i.qh, i32 noundef %i.qj, double noundef %i.qm, ptr noundef nonnull @.str.25) #11
  %.pre56.i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !56
  br label %_print_roi.exit50.i.i

_print_roi.exit50.i.i:                            ; preds = %bb.av, %_print_roi.exit.i.i
  %i.qn = phi i32 [ %i.qd, %_print_roi.exit.i.i ], [ %.pre56.i.i, %bb.av ]
  %i.qo = load float, ptr %i.ka, align 16, !tbaa !45 ; 2 uses
  %i.qp = load float, ptr %i.jw, align 16, !tbaa !45
  %i.qq = load <4 x i32>, ptr %31, align 16, !tbaa !55
  %i.qr = load <4 x i32>, ptr %25, align 16, !tbaa !55
  %i.qs = sub nsw <4 x i32> %i.qq, %i.qr
  %i.qt = sitofp <4 x i32> %i.qs to <4 x float>
  %i.qu = insertelement <4 x float> poison, float %i.qo, i64 0
  %i.qv = shufflevector <4 x float> %i.qu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.qw = fmul reassoc nsz arcp contract afn <4 x float> %i.qv, %i.qt
  %i.qx = insertelement <4 x float> poison, float %i.qp, i64 0
  %i.qy = shufflevector <4 x float> %i.qx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.qz = fdiv reassoc nsz arcp contract afn <4 x float> %i.qw, %i.qy
  %i.ra = load <4 x i32>, ptr %32, align 16, !tbaa !55
  %i.rb = sitofp <4 x i32> %i.ra to <4 x float>
  %i.rc = fadd reassoc nsz arcp contract afn <4 x float> %i.qz, %i.rb
  %i.rd = fptosi <4 x float> %i.rc to <4 x i32>   ; 4 uses
  %i.re = extractelement <4 x i32> %i.rd, i64 0   ; 3 uses
  store i32 %i.re, ptr %32, align 16, !tbaa !116
  %i.rf = extractelement <4 x i32> %i.rd, i64 1   ; 3 uses
  store i32 %i.rf, ptr %i.jx, align 4, !tbaa !117
  %i.rg = extractelement <4 x i32> %i.rd, i64 2   ; 3 uses
  store i32 %i.rg, ptr %i.jy, align 8, !tbaa !44
  %i.rh = extractelement <4 x i32> %i.rd, i64 3   ; 3 uses
  store i32 %i.rh, ptr %i.jz, align 4, !tbaa !46
  %i.ri = and i32 %i.qn, 25165824
  %or.cond.not.i51.i.i = icmp eq i32 %i.ri, 25165824
  br i1 %or.cond.not.i51.i.i, label %bb.aw, label %_print_roi.exit52.i.i

bb.aw:                                            ; preds = %_print_roi.exit50.i.i
  %i.rj = add nsw i32 %i.rg, %i.re
  %i.rk = add nsw i32 %i.rh, %i.rf
  %i.rl = fpext reassoc nsz arcp contract afn float %i.qo to double
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.23, i32 noundef %i.re, i32 noundef %i.rf, i32 noundef %i.rj, i32 noundef %i.rk, i32 noundef %i.rg, i32 noundef %i.rh, double noundef %i.rl, ptr noundef nonnull @.str.26) #11
  br label %_print_roi.exit52.i.i

_print_roi.exit52.i.i:                            ; preds = %bb.aw, %_print_roi.exit50.i.i
  %i.rm = load ptr, ptr %i.jq, align 8, !tbaa !115
  call void %i.rm(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %32, ptr noundef nonnull %25) #11, !inline_history !119
  %i.rn = add nsw i32 %.0.i.i, -1
  br label %bb.ao

.critedge.i.i:                                    ; preds = %bb.ar
  br i1 %i.pt, label %_fit_output_to_input_roi.exit.thread.i, label %.critedge.thread.i.i

_fit_output_to_input_roi.exit.thread.i:           ; preds = %.critedge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %26)
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #11
  %.pre600.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !56
  br label %bb.cz

.critedge.thread.i.i:                             ; preds = %bb.as, %.critedge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %32, ptr noundef nonnull align 4 dereferenceable(20) %26, i64 20, i1 false), !tbaa.struct !118
  %i.ro = load <2 x i32>, ptr %i.kf, align 4, !tbaa !55 ; 3 uses
  %i.rp = shufflevector <2 x i32> %i.ro, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.rq = sitofp <4 x i32> %i.rp to <4 x float>
  %i.rr = load <4 x i32>, ptr %32, align 16, !tbaa !55
  %i.rs = sitofp <4 x i32> %i.rr to <4 x float>
  %i.rt = fdiv reassoc nsz arcp contract afn <4 x float> %i.rs, %i.rq
  %i.ru = fpext <4 x float> %i.rt to <4 x double> ; 6 uses
  %i.rv = call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #12 ; 20 uses
  %i.rw = call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #12 ; 18 uses
  %i.rx = call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #12 ; 4 uses
  %i.ry = call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #12 ; 3 uses
  %i.rz = call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #12 ; 4 uses
  %i.sa = call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #12 ; 2 uses
  store ptr %i.sa, ptr %i.rv, align 8, !tbaa !120
  %i.sb = call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #12 ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %i.rv, i64 8 ; 8 uses
  store ptr %i.sb, ptr %i.sc, align 8, !tbaa !120
  %i.sd = call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #12 ; 2 uses
  %i.se = getelementptr inbounds nuw i8, ptr %i.rv, i64 16 ; 7 uses
  store ptr %i.sd, ptr %i.se, align 8, !tbaa !120
  %i.sf = call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #12 ; 2 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %i.rv, i64 24 ; 7 uses
  store ptr %i.sf, ptr %i.sg, align 8, !tbaa !120
  %i.sh = call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #12 ; 3 uses
  %i.si = getelementptr inbounds nuw i8, ptr %i.rv, i64 32 ; 7 uses
  store ptr %i.sh, ptr %i.si, align 8, !tbaa !120
  store <4 x double> %i.ru, ptr %i.sa, align 8, !tbaa !122
  %i.sj = fadd reassoc nsz arcp contract afn <4 x double> %i.ru, <double f0x3FED9EA2EA4C9A82, double f0x3FCBF8120F357AD9, double f0x3FCBF8120F357AD9, double f0x3FCBF8120F357AD9> ; 4 uses
  store <4 x double> %i.sj, ptr %i.sb, align 8, !tbaa !122
  %i.sk = shufflevector <4 x double> %i.ru, <4 x double> %i.sj, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.sl = fadd reassoc nsz arcp contract afn <4 x double> %i.sk, <double f0x3FCBF8120F357AD9, double f0x3FED9EA2EA4C9A82, double -0.000000e+00, double -0.000000e+00> ; 3 uses
  store <4 x double> %i.sl, ptr %i.sd, align 8, !tbaa !122
  %33 = shufflevector <4 x double> %i.sl, <4 x double> %i.ru, <4 x i32> <i32 0, i32 5, i32 6, i32 poison>
  %34 = shufflevector <4 x double> %33, <4 x double> %i.sj, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %35 = fadd reassoc nsz arcp contract afn <4 x double> %34, <double -0.000000e+00, double f0x3FCBF8120F357AD9, double f0x3FED9EA2EA4C9A82, double -0.000000e+00> ; 2 uses
  store <4 x double> %35, ptr %i.sf, align 8, !tbaa !122
  %36 = shufflevector <4 x double> %i.sl, <4 x double> %35, <2 x i32> <i32 0, i32 5>
  store <2 x double> %36, ptr %i.sh, align 8, !tbaa !122
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sh, i64 16
  %37 = shufflevector <4 x double> %i.sj, <4 x double> %i.ru, <2 x i32> <i32 2, i32 7>
  %38 = fadd reassoc nsz arcp contract afn <2 x double> %37, <double -0.000000e+00, double f0x3FED9EA2EA4C9A82>
  store <2 x double> %38, ptr %i.sm, align 8, !tbaa !122
  %i.sn = load ptr, ptr %i.rv, align 8, !tbaa !120
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %23, ptr noundef nonnull align 16 dereferenceable(20) %32, i64 20, i1 false), !tbaa.struct !118
  %i.so = load <2 x i32>, ptr %i.kf, align 4, !tbaa !55
  %i.sp = shufflevector <2 x i32> %i.so, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.sq = sitofp <4 x i32> %i.sp to <4 x double>
  %i.sr = load <4 x double>, ptr %i.sn, align 8, !tbaa !122
  %i.ss = fmul reassoc nsz arcp contract afn <4 x double> %i.sr, %i.sq
  %i.st = fptosi <4 x double> %i.ss to <4 x i32>
  store <4 x i32> %i.st, ptr %23, align 16, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %24, ptr noundef nonnull readonly align 16 dereferenceable(20) %31, i64 20, i1 false), !tbaa.struct !118
  %i.su = load ptr, ptr %i.jq, align 8, !tbaa !115
  call void %i.su(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %23, ptr noundef nonnull %24) #11, !inline_history !123
  %i.sv = load <4 x i32>, ptr %24, align 16, !tbaa !55
  %i.sw = load <4 x i32>, ptr %31, align 16, !tbaa !55
  %i.sx = sub nsw <4 x i32> %i.sv, %i.sw
  %i.sy = sitofp <4 x i32> %i.sx to <4 x double>  ; 2 uses
  %i.sz = fmul reassoc nnan nsz arcp contract afn <4 x double> %i.sy, %i.sy
  %i.ta = call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.sz)
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #11
  store double %i.ta, ptr %i.rw, align 8, !tbaa !122
  %i.tb = getelementptr inbounds nuw i8, ptr %i.rv, i64 8
  %i.tc = load ptr, ptr %i.tb, align 8, !tbaa !120
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %23, ptr noundef nonnull align 16 dereferenceable(20) %32, i64 20, i1 false), !tbaa.struct !118
  %i.td = load <2 x i32>, ptr %i.kf, align 4, !tbaa !55
  %i.te = shufflevector <2 x i32> %i.td, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.tf = sitofp <4 x i32> %i.te to <4 x double>
  %i.tg = load <4 x double>, ptr %i.tc, align 8, !tbaa !122
  %i.th = fmul reassoc nsz arcp contract afn <4 x double> %i.tg, %i.tf
  %i.ti = fptosi <4 x double> %i.th to <4 x i32>
  store <4 x i32> %i.ti, ptr %23, align 16, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %24, ptr noundef nonnull readonly align 16 dereferenceable(20) %31, i64 20, i1 false), !tbaa.struct !118
  %i.tj = load ptr, ptr %i.jq, align 8, !tbaa !115
  call void %i.tj(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %23, ptr noundef nonnull %24) #11, !inline_history !123
  %i.tk = load <4 x i32>, ptr %24, align 16, !tbaa !55
  %i.tl = load <4 x i32>, ptr %31, align 16, !tbaa !55
  %i.tm = sub nsw <4 x i32> %i.tk, %i.tl
  %i.tn = sitofp <4 x i32> %i.tm to <4 x double>  ; 2 uses
  %i.to = fmul reassoc nnan nsz arcp contract afn <4 x double> %i.tn, %i.tn
  %i.tp = call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.to)
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #11
  %i.tq = getelementptr inbounds nuw i8, ptr %i.rw, i64 8
  store double %i.tp, ptr %i.tq, align 8, !tbaa !122
  %i.tr = getelementptr inbounds nuw i8, ptr %i.rv, i64 16
  %i.ts = load ptr, ptr %i.tr, align 8, !tbaa !120
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %23, ptr noundef nonnull align 16 dereferenceable(20) %32, i64 20, i1 false), !tbaa.struct !118
  %i.tt = load <2 x i32>, ptr %i.kf, align 4, !tbaa !55
  %i.tu = shufflevector <2 x i32> %i.tt, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.tv = sitofp <4 x i32> %i.tu to <4 x double>
  %i.tw = load <4 x double>, ptr %i.ts, align 8, !tbaa !122
  %i.tx = fmul reassoc nsz arcp contract afn <4 x double> %i.tw, %i.tv
  %i.ty = fptosi <4 x double> %i.tx to <4 x i32>
  store <4 x i32> %i.ty, ptr %23, align 16, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %24, ptr noundef nonnull readonly align 16 dereferenceable(20) %31, i64 20, i1 false), !tbaa.struct !118
  %i.tz = load ptr, ptr %i.jq, align 8, !tbaa !115
  call void %i.tz(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %23, ptr noundef nonnull %24) #11, !inline_history !123
  %i.ua = load <4 x i32>, ptr %24, align 16, !tbaa !55
  %i.ub = load <4 x i32>, ptr %31, align 16, !tbaa !55
  %i.uc = sub nsw <4 x i32> %i.ua, %i.ub
  %i.ud = sitofp <4 x i32> %i.uc to <4 x double>  ; 2 uses
  %i.ue = fmul reassoc nnan nsz arcp contract afn <4 x double> %i.ud, %i.ud
  %i.uf = call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.ue)
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #11
  %i.ug = getelementptr inbounds nuw i8, ptr %i.rw, i64 16
  store double %i.uf, ptr %i.ug, align 8, !tbaa !122
  %i.uh = getelementptr inbounds nuw i8, ptr %i.rv, i64 24
  %i.ui = load ptr, ptr %i.uh, align 8, !tbaa !120
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %23, ptr noundef nonnull align 16 dereferenceable(20) %32, i64 20, i1 false), !tbaa.struct !118
  %i.uj = load <2 x i32>, ptr %i.kf, align 4, !tbaa !55
  %i.uk = shufflevector <2 x i32> %i.uj, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ul = sitofp <4 x i32> %i.uk to <4 x double>
  %i.um = load <4 x double>, ptr %i.ui, align 8, !tbaa !122
  %i.un = fmul reassoc nsz arcp contract afn <4 x double> %i.um, %i.ul
  %i.uo = fptosi <4 x double> %i.un to <4 x i32>
  store <4 x i32> %i.uo, ptr %23, align 16, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %24, ptr noundef nonnull readonly align 16 dereferenceable(20) %31, i64 20, i1 false), !tbaa.struct !118
  %i.up = load ptr, ptr %i.jq, align 8, !tbaa !115
  call void %i.up(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %23, ptr noundef nonnull %24) #11, !inline_history !123
  %i.uq = load <4 x i32>, ptr %24, align 16, !tbaa !55
  %i.ur = load <4 x i32>, ptr %31, align 16, !tbaa !55
  %i.us = sub nsw <4 x i32> %i.uq, %i.ur
  %i.ut = sitofp <4 x i32> %i.us to <4 x double>  ; 2 uses
  %i.uu = fmul reassoc nnan nsz arcp contract afn <4 x double> %i.ut, %i.ut
  %i.uv = call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.uu)
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #11
  %i.uw = getelementptr inbounds nuw i8, ptr %i.rw, i64 24
  store double %i.uv, ptr %i.uw, align 8, !tbaa !122
  %i.ux = getelementptr inbounds nuw i8, ptr %i.rv, i64 32
  %i.uy = load ptr, ptr %i.ux, align 8, !tbaa !120
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %23, ptr noundef nonnull align 16 dereferenceable(20) %32, i64 20, i1 false), !tbaa.struct !118
  %i.uz = load <2 x i32>, ptr %i.kf, align 4, !tbaa !55
  %i.va = shufflevector <2 x i32> %i.uz, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.vb = sitofp <4 x i32> %i.va to <4 x double>
  %i.vc = load <4 x double>, ptr %i.uy, align 8, !tbaa !122
  %i.vd = fmul reassoc nsz arcp contract afn <4 x double> %i.vc, %i.vb
  %i.ve = fptosi <4 x double> %i.vd to <4 x i32>
  store <4 x i32> %i.ve, ptr %23, align 16, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %24, ptr noundef nonnull readonly align 16 dereferenceable(20) %31, i64 20, i1 false), !tbaa.struct !118
  %i.vf = load ptr, ptr %i.jq, align 8, !tbaa !115
  call void %i.vf(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %23, ptr noundef nonnull %24) #11, !inline_history !123
  %i.vg = load <4 x i32>, ptr %24, align 16, !tbaa !55
  %i.vh = load <4 x i32>, ptr %31, align 16, !tbaa !55
  %i.vi = sub nsw <4 x i32> %i.vg, %i.vh
  %i.vj = sitofp <4 x i32> %i.vi to <4 x double>  ; 2 uses
  %i.vk = fmul reassoc nnan nsz arcp contract afn <4 x double> %i.vj, %i.vj
  %i.vl = call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.vk)
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #11
  %i.vm = getelementptr inbounds nuw i8, ptr %i.rw, i64 32
  store double %i.vl, ptr %i.vm, align 8, !tbaa !122
  %i.vn = extractelement <2 x i32> %i.ro, i64 0
  %i.vo = extractelement <2 x i32> %i.ro, i64 1
  %..i.i.i = call i32 @llvm.smin.i32(i32 %i.vn, i32 %i.vo)
  %i.vp = sitofp reassoc nsz arcp contract afn i32 %..i.i.i to double
  %i.vq = fdiv reassoc nsz arcp contract afn double %i.kg, %i.vp ; 2 uses
  %i.vr = load <4 x double>, ptr %i.rw, align 8, !tbaa !122
  %.phi.trans.insert141.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.rw, i64 32 ; 2 uses
  %.pre142.i.i.i.i = load double, ptr %.phi.trans.insert141.i.i.i.i, align 8, !tbaa !122
  br label %.preheader14.i.i.i.i

.preheader14.i.i.i.i:                             ; preds = %bb.cw, %.critedge.thread.i.i
  %i.vs = phi double [ %.pre142.i.i.i.i, %.critedge.thread.i.i ], [ %i.alq, %bb.cw ] ; 4 uses
  %.033248.i.i.i.i = phi i32 [ 1, %.critedge.thread.i.i ], [ %i.amc, %bb.cw ] ; 2 uses
  %i.vt = phi <4 x double> [ %i.vr, %.critedge.thread.i.i ], [ %i.alr, %bb.cw ] ; 4 uses
  %i.vu = extractelement <4 x double> %i.vt, i64 0 ; 5 uses
  %i.vv = extractelement <4 x double> %i.vt, i64 1 ; 5 uses
  %i.vw = fcmp reassoc nsz arcp contract afn ogt double %i.vv, %i.vu
  %i.vx = zext i1 %i.vw to i64                    ; 2 uses
  %i.vy = getelementptr inbounds nuw [8 x i8], ptr %i.rw, i64 %i.vx
  %i.vz = load double, ptr %i.vy, align 8, !tbaa !122
  %i.wa = extractelement <4 x double> %i.vt, i64 2 ; 5 uses
  %i.wb = fcmp reassoc nsz arcp contract afn ogt double %i.wa, %i.vz
  %i.wc = select i1 %i.wb, i64 2, i64 %i.vx       ; 2 uses
  %i.wd = getelementptr inbounds nuw [8 x i8], ptr %i.rw, i64 %i.wc
  %i.we = load double, ptr %i.wd, align 8, !tbaa !122
  %i.wf = extractelement <4 x double> %i.vt, i64 3 ; 5 uses
  %i.wg = fcmp reassoc nsz arcp contract afn ogt double %i.wf, %i.we ; 2 uses
  %i.wh = select i1 %i.wg, i64 3, i64 %i.wc       ; 2 uses
  %i.wi = getelementptr inbounds nuw [8 x i8], ptr %i.rw, i64 %i.wh
  %i.wj = load double, ptr %i.wi, align 8, !tbaa !122
  %i.wk = fcmp reassoc nsz arcp contract afn olt double %i.vv, %i.vu ; 2 uses
  %.1346.1.i.i.i.i = zext i1 %i.wk to i32
  %i.wl = zext i1 %i.wk to i64
  %i.wm = getelementptr inbounds nuw [8 x i8], ptr %i.rw, i64 %i.wl
  %i.wn = load double, ptr %i.wm, align 8, !tbaa !122
  %i.wo = fcmp reassoc nsz arcp contract afn olt double %i.wa, %i.wn
  %.1346.2.i.i.i.i = select i1 %i.wo, i32 2, i32 %.1346.1.i.i.i.i ; 2 uses
  %i.wp = zext nneg i32 %.1346.2.i.i.i.i to i64
  %i.wq = getelementptr inbounds nuw [8 x i8], ptr %i.rw, i64 %i.wp
  %i.wr = load double, ptr %i.wq, align 8, !tbaa !122
  %i.ws = fcmp reassoc nsz arcp contract afn olt double %i.wf, %i.wr ; 2 uses
  %.1346.3.i.i.i.i = select i1 %i.ws, i32 3, i32 %.1346.2.i.i.i.i ; 2 uses
  %i.wt = zext nneg i32 %.1346.3.i.i.i.i to i64
  %i.wu = getelementptr inbounds nuw [8 x i8], ptr %i.rw, i64 %i.wt
  %i.wv = load double, ptr %i.wu, align 8, !tbaa !122
  %i.ww = fcmp reassoc nsz arcp contract afn uge double %i.vs, %i.wv ; 3 uses
  %.1346.4.i.i.i.i = select i1 %i.ww, i32 %.1346.3.i.i.i.i, i32 4 ; 6 uses
  %i.wx = fcmp reassoc nsz arcp contract afn ule double %i.vs, %i.wj ; 6 uses
  %i.wy = select i1 %i.wx, i64 %i.wh, i64 4       ; 5 uses
  %i.wz = getelementptr inbounds nuw [8 x i8], ptr %i.rw, i64 %i.wy ; 10 uses
  %i.xa = zext nneg i32 %.1346.4.i.i.i.i to i64   ; 2 uses
  %i.xb = getelementptr inbounds nuw [8 x i8], ptr %i.rw, i64 %i.xa ; 2 uses
  %i.xc = load double, ptr %i.xb, align 8, !tbaa !122 ; 5 uses
  %i.xd = fcmp reassoc nsz arcp contract afn ogt double %i.vu, %i.xc
  br i1 %i.xd, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %.preheader14.i.i.i.i
  %i.xe = load double, ptr %i.wz, align 8, !tbaa !122
  %i.xf = fcmp reassoc nsz arcp contract afn olt double %i.vu, %i.xe
  br i1 %i.xf, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax, %.preheader14.i.i.i.i
  %i.xg = phi double [ %i.vu, %bb.ay ], [ %i.xc, %bb.ax ], [ %i.xc, %.preheader14.i.i.i.i ] ; 3 uses
  %.1344.i.i.i.i = phi i32 [ 0, %bb.ay ], [ %.1346.4.i.i.i.i, %bb.ax ], [ %.1346.4.i.i.i.i, %.preheader14.i.i.i.i ] ; 2 uses
  %i.xh = fcmp reassoc nsz arcp contract afn ogt double %i.vv, %i.xg
  br i1 %i.xh, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %bb.az
  %i.xi = load double, ptr %i.wz, align 8, !tbaa !122
  %i.xj = fcmp reassoc nsz arcp contract afn olt double %i.vv, %i.xi
  br i1 %i.xj, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba, %bb.az
  %i.xk = phi double [ %i.vv, %bb.bb ], [ %i.xg, %bb.ba ], [ %i.xg, %bb.az ] ; 3 uses
  %.1344.1.i.i.i.i = phi i32 [ 1, %bb.bb ], [ %.1344.i.i.i.i, %bb.ba ], [ %.1344.i.i.i.i, %bb.az ] ; 2 uses
  %i.xl = fcmp reassoc nsz arcp contract afn ogt double %i.wa, %i.xk
  br i1 %i.xl, label %bb.bd, label %bb.bf

bb.bd:                                            ; preds = %bb.bc
  %i.xm = load double, ptr %i.wz, align 8, !tbaa !122
  %i.xn = fcmp reassoc nsz arcp contract afn olt double %i.wa, %i.xm
  br i1 %i.xn, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd, %bb.bc
  %i.xo = phi double [ %i.wa, %bb.be ], [ %i.xk, %bb.bd ], [ %i.xk, %bb.bc ] ; 3 uses
  %.1344.2.i.i.i.i = phi i32 [ 2, %bb.be ], [ %.1344.1.i.i.i.i, %bb.bd ], [ %.1344.1.i.i.i.i, %bb.bc ] ; 2 uses
  %i.xp = fcmp reassoc nsz arcp contract afn ogt double %i.wf, %i.xo
  br i1 %i.xp, label %bb.bg, label %bb.bi

bb.bg:                                            ; preds = %bb.bf
  %i.xq = load double, ptr %i.wz, align 8, !tbaa !122
  %i.xr = fcmp reassoc nsz arcp contract afn olt double %i.wf, %i.xq
  br i1 %i.xr, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg, %bb.bf
  %i.xs = phi double [ %i.wf, %bb.bh ], [ %i.xo, %bb.bg ], [ %i.xo, %bb.bf ]
  %.1344.3.i.i.i.i = phi i32 [ 3, %bb.bh ], [ %.1344.2.i.i.i.i, %bb.bg ], [ %.1344.2.i.i.i.i, %bb.bf ] ; 2 uses
  %i.xt = fcmp reassoc nsz arcp contract afn ogt double %i.vs, %i.xs
  br i1 %i.xt, label %bb.bj, label %.preheader11.i.i.i.i

bb.bj:                                            ; preds = %bb.bi
  %i.xu = load double, ptr %i.wz, align 8, !tbaa !122
  %i.xv = fcmp reassoc nsz arcp contract afn olt double %i.vs, %i.xu
  br i1 %i.xv, label %bb.bk, label %.preheader11.i.i.i.i

bb.bk:                                            ; preds = %bb.bj
  br label %.preheader11.i.i.i.i

.preheader11.i.i.i.i:                             ; preds = %bb.bk, %bb.bj, %bb.bi
  %.1344.4.i.i.i.i = phi i32 [ 4, %bb.bk ], [ %.1344.3.i.i.i.i, %bb.bj ], [ %.1344.3.i.i.i.i, %bb.bi ]
  %.not363.i.i.i.i = icmp eq i64 %i.wy, 0         ; 4 uses
  br i1 %.not363.i.i.i.i, label %.thread177.i.i.i.i, label %bb.bl

.thread177.i.i.i.i:                               ; preds = %.preheader11.i.i.i.i
  %i.xw = load ptr, ptr %i.sc, align 8, !tbaa !120
  %i.xx = load double, ptr %i.xw, align 8, !tbaa !122
  br label %.thread168.i.i.i.i

bb.bl:                                            ; preds = %.preheader11.i.i.i.i
  %i.xy = load ptr, ptr %i.rv, align 8, !tbaa !120
  %i.xz = load double, ptr %i.xy, align 8, !tbaa !122 ; 2 uses
  %.not363.1.i.i.i.i = icmp eq i64 %i.wy, 1
  br i1 %.not363.1.i.i.i.i, label %.thread168.i.i.i.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ya = load ptr, ptr %i.sc, align 8, !tbaa !120
  %i.yb = load double, ptr %i.ya, align 8, !tbaa !122
  %i.yc = fadd reassoc nsz arcp contract afn double %i.yb, %i.xz ; 2 uses
  %.not363.2.i.i.i.i = icmp eq i64 %i.wy, 2
  br i1 %.not363.2.i.i.i.i, label %bb.bn, label %.thread168.i.i.i.i

.thread168.i.i.i.i:                               ; preds = %bb.bm, %bb.bl, %.thread177.i.i.i.i
  %.1.1174.i.i.i.i = phi double [ %i.xx, %.thread177.i.i.i.i ], [ %i.yc, %bb.bm ], [ %i.xz, %bb.bl ]
  %.not363.1167172.i.i.i.i = phi i1 [ false, %.thread177.i.i.i.i ], [ false, %bb.bm ], [ true, %bb.bl ]
  %i.yd = load ptr, ptr %i.se, align 8, !tbaa !120
  %i.ye = load double, ptr %i.yd, align 8, !tbaa !122
  %i.yf = fadd reassoc nsz arcp contract afn double %i.ye, %.1.1174.i.i.i.i
  br label %bb.bn

bb.bn:                                            ; preds = %.thread168.i.i.i.i, %bb.bm
  %.not363.2176.i.i.i.i = phi i1 [ false, %.thread168.i.i.i.i ], [ true, %bb.bm ] ; 3 uses
  %.not363.1167173.i.i.i.i = phi i1 [ %.not363.1167172.i.i.i.i, %.thread168.i.i.i.i ], [ false, %bb.bm ] ; 3 uses
  %.1.2.i.i.i.i = phi nsz double [ %i.yf, %.thread168.i.i.i.i ], [ %i.yc, %bb.bm ] ; 2 uses
  %.not363.3.i.i.i.i = and i1 %i.wg, %i.wx        ; 4 uses
  br i1 %.not363.3.i.i.i.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.yg = load ptr, ptr %i.sg, align 8, !tbaa !120
  %i.yh = load double, ptr %i.yg, align 8, !tbaa !122
  %i.yi = fadd reassoc nsz arcp contract afn double %i.yh, %.1.2.i.i.i.i
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %.1.3.i.i.i.i = phi nsz double [ %i.yi, %bb.bo ], [ %.1.2.i.i.i.i, %bb.bn ] ; 2 uses
  br i1 %i.wx, label %bb.bq, label %.preheader1.1.i.i.i.i

bb.bq:                                            ; preds = %bb.bp
  %i.yj = load ptr, ptr %i.si, align 8, !tbaa !120
  %i.yk = load double, ptr %i.yj, align 8, !tbaa !122
  %i.yl = fadd reassoc nsz arcp contract afn double %i.yk, %.1.3.i.i.i.i
  br label %.preheader1.1.i.i.i.i

.preheader1.1.i.i.i.i:                            ; preds = %bb.bq, %bb.bp
  %.1.4.i.i.i.i = phi nsz double [ %i.yl, %bb.bq ], [ %.1.3.i.i.i.i, %bb.bp ] ; 2 uses
  %i.ym = fmul reassoc nsz arcp contract afn double %.1.4.i.i.i.i, 2.500000e-01 ; 3 uses
  br i1 %.not363.i.i.i.i, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %.preheader1.1.i.i.i.i
  %i.yn = load ptr, ptr %i.rv, align 8, !tbaa !120
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yn, i64 8
  %i.yp = load double, ptr %i.yo, align 8, !tbaa !122
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %.preheader1.1.i.i.i.i
  %.1.179.i.i.i.i = phi nsz double [ %i.yp, %bb.br ], [ 0.000000e+00, %.preheader1.1.i.i.i.i ] ; 2 uses
  br i1 %.not363.1167173.i.i.i.i, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.yq = load ptr, ptr %i.sc, align 8, !tbaa !120
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yq, i64 8
  %i.ys = load double, ptr %i.yr, align 8, !tbaa !122
  %i.yt = fadd reassoc nsz arcp contract afn double %i.ys, %.1.179.i.i.i.i
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %.1.1.1.i.i.i.i = phi nsz double [ %i.yt, %bb.bt ], [ %.1.179.i.i.i.i, %bb.bs ] ; 2 uses
  br i1 %.not363.2176.i.i.i.i, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.yu = load ptr, ptr %i.se, align 8, !tbaa !120
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yu, i64 8
  %i.yw = load double, ptr %i.yv, align 8, !tbaa !122
  %i.yx = fadd reassoc nsz arcp contract afn double %i.yw, %.1.1.1.i.i.i.i
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %.1.2.1.i.i.i.i = phi nsz double [ %i.yx, %bb.bv ], [ %.1.1.1.i.i.i.i, %bb.bu ] ; 2 uses
  br i1 %.not363.3.i.i.i.i, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.yy = load ptr, ptr %i.sg, align 8, !tbaa !120
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yy, i64 8
  %i.za = load double, ptr %i.yz, align 8, !tbaa !122
  %i.zb = fadd reassoc nsz arcp contract afn double %i.za, %.1.2.1.i.i.i.i
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %.1.3.1.i.i.i.i = phi nsz double [ %i.zb, %bb.bx ], [ %.1.2.1.i.i.i.i, %bb.bw ] ; 2 uses
  br i1 %i.wx, label %bb.bz, label %.preheader1.2.i.i.i.i

bb.bz:                                            ; preds = %bb.by
  %i.zc = load ptr, ptr %i.si, align 8, !tbaa !120
  %i.zd = getelementptr inbounds nuw i8, ptr %i.zc, i64 8
  %i.ze = load double, ptr %i.zd, align 8, !tbaa !122
  %i.zf = fadd reassoc nsz arcp contract afn double %i.ze, %.1.3.1.i.i.i.i
  br label %.preheader1.2.i.i.i.i

.preheader1.2.i.i.i.i:                            ; preds = %bb.bz, %bb.by
  %.1.4.1.i.i.i.i = phi nsz double [ %i.zf, %bb.bz ], [ %.1.3.1.i.i.i.i, %bb.by ] ; 2 uses
  %i.zg = fmul reassoc nsz arcp contract afn double %.1.4.1.i.i.i.i, 2.500000e-01 ; 3 uses
  br i1 %.not363.i.i.i.i, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %.preheader1.2.i.i.i.i
  %i.zh = load ptr, ptr %i.rv, align 8, !tbaa !120
  %i.zi = getelementptr inbounds nuw i8, ptr %i.zh, i64 16
  %i.zj = load double, ptr %i.zi, align 8, !tbaa !122
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %.preheader1.2.i.i.i.i
  %.1.281.i.i.i.i = phi nsz double [ %i.zj, %bb.ca ], [ 0.000000e+00, %.preheader1.2.i.i.i.i ] ; 2 uses
  br i1 %.not363.1167173.i.i.i.i, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.zk = load ptr, ptr %i.sc, align 8, !tbaa !120
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zk, i64 16
  %i.zm = load double, ptr %i.zl, align 8, !tbaa !122
  %i.zn = fadd reassoc nsz arcp contract afn double %i.zm, %.1.281.i.i.i.i
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.1.1.2.i.i.i.i = phi nsz double [ %i.zn, %bb.cc ], [ %.1.281.i.i.i.i, %bb.cb ] ; 2 uses
  br i1 %.not363.2176.i.i.i.i, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.zo = load ptr, ptr %i.se, align 8, !tbaa !120
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zo, i64 16
  %i.zq = load double, ptr %i.zp, align 8, !tbaa !122
  %i.zr = fadd reassoc nsz arcp contract afn double %i.zq, %.1.1.2.i.i.i.i
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %.1.2.2.i.i.i.i = phi nsz double [ %i.zr, %bb.ce ], [ %.1.1.2.i.i.i.i, %bb.cd ] ; 2 uses
  br i1 %.not363.3.i.i.i.i, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.zs = load ptr, ptr %i.sg, align 8, !tbaa !120
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zs, i64 16
  %i.zu = load double, ptr %i.zt, align 8, !tbaa !122
  %i.zv = fadd reassoc nsz arcp contract afn double %i.zu, %.1.2.2.i.i.i.i
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %.1.3.2.i.i.i.i = phi nsz double [ %i.zv, %bb.cg ], [ %.1.2.2.i.i.i.i, %bb.cf ] ; 2 uses
  br i1 %i.wx, label %bb.ci, label %.preheader1.3.i.i.i.i

bb.ci:                                            ; preds = %bb.ch
  %i.zw = load ptr, ptr %i.si, align 8, !tbaa !120
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zw, i64 16
  %i.zy = load double, ptr %i.zx, align 8, !tbaa !122
  %i.zz = fadd reassoc nsz arcp contract afn double %i.zy, %.1.3.2.i.i.i.i
  br label %.preheader1.3.i.i.i.i

.preheader1.3.i.i.i.i:                            ; preds = %bb.ci, %bb.ch
  %.1.4.2.i.i.i.i = phi nsz double [ %i.zz, %bb.ci ], [ %.1.3.2.i.i.i.i, %bb.ch ] ; 2 uses
  %i.aaa = fmul reassoc nsz arcp contract afn double %.1.4.2.i.i.i.i, 2.500000e-01 ; 3 uses
  br i1 %.not363.i.i.i.i, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %.preheader1.3.i.i.i.i
  %i.aab = load ptr, ptr %i.rv, align 8, !tbaa !120
  %i.aac = getelementptr inbounds nuw i8, ptr %i.aab, i64 24
  %i.aad = load double, ptr %i.aac, align 8, !tbaa !122
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %.preheader1.3.i.i.i.i
  %.1.383.i.i.i.i = phi nsz double [ %i.aad, %bb.cj ], [ 0.000000e+00, %.preheader1.3.i.i.i.i ] ; 2 uses
  br i1 %.not363.1167173.i.i.i.i, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.aae = load ptr, ptr %i.sc, align 8, !tbaa !120
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aae, i64 24
  %i.aag = load double, ptr %i.aaf, align 8, !tbaa !122
  %i.aah = fadd reassoc nsz arcp contract afn double %i.aag, %.1.383.i.i.i.i
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %.1.1.3.i.i.i.i = phi nsz double [ %i.aah, %bb.cl ], [ %.1.383.i.i.i.i, %bb.ck ] ; 2 uses
  br i1 %.not363.2176.i.i.i.i, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.aai = load ptr, ptr %i.se, align 8, !tbaa !120
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aai, i64 24
  %i.aak = load double, ptr %i.aaj, align 8, !tbaa !122
  %i.aal = fadd reassoc nsz arcp contract afn double %i.aak, %.1.1.3.i.i.i.i
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %.1.2.3.i.i.i.i = phi nsz double [ %i.aal, %bb.cn ], [ %.1.1.3.i.i.i.i, %bb.cm ] ; 2 uses
  br i1 %.not363.3.i.i.i.i, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.aam = load ptr, ptr %i.sg, align 8, !tbaa !120
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aam, i64 24
  %i.aao = load double, ptr %i.aan, align 8, !tbaa !122
  %i.aap = fadd reassoc nsz arcp contract afn double %i.aao, %.1.2.3.i.i.i.i
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %.1.3.3.i.i.i.i = phi nsz double [ %i.aap, %bb.cp ], [ %.1.2.3.i.i.i.i, %bb.co ] ; 2 uses
  br i1 %i.wx, label %bb.cr, label %.preheader10.i.i.i.i

bb.cr:                                            ; preds = %bb.cq
  %i.aaq = load ptr, ptr %i.si, align 8, !tbaa !120
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aaq, i64 24
  %i.aas = load double, ptr %i.aar, align 8, !tbaa !122
  %i.aat = fadd reassoc nsz arcp contract afn double %i.aas, %.1.3.3.i.i.i.i
  br label %.preheader10.i.i.i.i

.preheader10.i.i.i.i:                             ; preds = %bb.cr, %bb.cq
  %.1.4.3.i.i.i.i = phi nsz double [ %i.aat, %bb.cr ], [ %.1.3.3.i.i.i.i, %bb.cq ] ; 2 uses
  %i.aau = fmul reassoc nsz arcp contract afn double %.1.4.3.i.i.i.i, 2.500000e-01 ; 3 uses
  %i.aav = getelementptr inbounds nuw [8 x i8], ptr %i.rv, i64 %i.wy
  %i.aaw = load ptr, ptr %i.aav, align 8, !tbaa !120 ; 6 uses
  %i.aax = insertelement <4 x double> poison, double %.1.4.i.i.i.i, i64 0
  %i.aay = insertelement <4 x double> %i.aax, double %.1.4.1.i.i.i.i, i64 1
  %i.aaz = insertelement <4 x double> %i.aay, double %.1.4.2.i.i.i.i, i64 2
  %i.aba = insertelement <4 x double> %i.aaz, double %.1.4.3.i.i.i.i, i64 3
  %i.abb = fmul reassoc nsz arcp contract afn <4 x double> %i.aba, splat (double 5.000000e-01)
  %i.abc = load <4 x double>, ptr %i.aaw, align 8, !tbaa !122
  %i.abd = fsub reassoc nsz arcp contract afn <4 x double> %i.abb, %i.abc ; 4 uses
  store <4 x double> %i.abd, ptr %i.rx, align 8, !tbaa !122
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %21, ptr noundef nonnull align 16 dereferenceable(20) %32, i64 20, i1 false), !tbaa.struct !118
  %i.abe = load <2 x i32>, ptr %i.kf, align 4, !tbaa !55
  %i.abf = shufflevector <2 x i32> %i.abe, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.abg = sitofp <4 x i32> %i.abf to <4 x double>
  %i.abh = fmul reassoc nsz arcp contract afn <4 x double> %i.abd, %i.abg
  %i.abi = fptosi <4 x double> %i.abh to <4 x i32>
  store <4 x i32> %i.abi, ptr %21, align 16, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %22, ptr noundef nonnull readonly align 16 dereferenceable(20) %31, i64 20, i1 false), !tbaa.struct !118
  %i.abj = load ptr, ptr %i.jq, align 8, !tbaa !115
  call void %i.abj(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %21, ptr noundef nonnull %22) #11, !inline_history !123
  %i.abk = load <4 x i32>, ptr %22, align 16, !tbaa !55
  %i.abl = load <4 x i32>, ptr %31, align 16, !tbaa !55
  %i.abm = sub nsw <4 x i32> %i.abk, %i.abl
  %i.abn = sitofp <4 x i32> %i.abm to <4 x double> ; 2 uses
  %i.abo = fmul reassoc nnan nsz arcp contract afn <4 x double> %i.abn, %i.abn
  %i.abp = call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.abo) ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #11
  %i.abq = zext nneg i32 %.1344.4.i.i.i.i to i64  ; 2 uses
  %i.abr = getelementptr inbounds nuw [8 x i8], ptr %i.rw, i64 %i.abq ; 3 uses
  %i.abs = load double, ptr %i.abr, align 8, !tbaa !122
  %i.abt = fcmp reassoc nsz arcp contract afn uge double %i.abp, %i.abs
  %i.abu = fcmp reassoc nsz arcp contract afn ult double %i.abp, %i.xc
  %or.cond.i.i.i.i = or i1 %i.abt, %i.abu
  br i1 %or.cond.i.i.i.i, label %.preheader10._crit_edge.i.i.i.i, label %.preheader9.i.i.i.i

.preheader9.i.i.i.i:                              ; preds = %.preheader10.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aaw, ptr noundef nonnull align 8 dereferenceable(32) %i.rx, i64 32, i1 false), !tbaa !122
  store double %i.abp, ptr %i.wz, align 8, !tbaa !122
  %.pre149.i.i.i.i = load double, ptr %i.xb, align 8, !tbaa !122
  br label %.preheader10._crit_edge.i.i.i.i

.preheader10._crit_edge.i.i.i.i:                  ; preds = %.preheader9.i.i.i.i, %.preheader10.i.i.i.i
  %i.abv = phi double [ %i.xc, %.preheader10.i.i.i.i ], [ %.pre149.i.i.i.i, %.preheader9.i.i.i.i ]
  %i.abw = fcmp reassoc nsz arcp contract afn olt double %i.abp, %i.abv
  br i1 %i.abw, label %.preheader8.preheader.i.i.i.i, label %bb.cs

.preheader8.preheader.i.i.i.i:                    ; preds = %.preheader10._crit_edge.i.i.i.i
  %i.abx = insertelement <4 x double> poison, double %i.ym, i64 0
  %i.aby = insertelement <4 x double> %i.abx, double %i.zg, i64 1
  %i.abz = insertelement <4 x double> %i.aby, double %i.aaa, i64 2
  %i.aca = insertelement <4 x double> %i.abz, double %i.aau, i64 3 ; 2 uses
  %i.acb = fsub reassoc nsz arcp contract afn <4 x double> %i.abd, %i.aca
  %i.acc = fmul reassoc nsz arcp contract afn <4 x double> %i.acb, splat (double 2.000000e+00)
  %i.acd = fadd reassoc nsz arcp contract afn <4 x double> %i.acc, %i.aca ; 2 uses
  store <4 x double> %i.acd, ptr %i.ry, align 8, !tbaa !122
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %19, ptr noundef nonnull align 16 dereferenceable(20) %32, i64 20, i1 false), !tbaa.struct !118
  %i.ace = load <2 x i32>, ptr %i.kf, align 4, !tbaa !55
  %i.acf = shufflevector <2 x i32> %i.ace, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.acg = sitofp <4 x i32> %i.acf to <4 x double>
  %i.ach = fmul reassoc nsz arcp contract afn <4 x double> %i.acd, %i.acg
  %i.aci = fptosi <4 x double> %i.ach to <4 x i32>
  store <4 x i32> %i.aci, ptr %19, align 16, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %20, ptr noundef nonnull readonly align 16 dereferenceable(20) %31, i64 20, i1 false), !tbaa.struct !118
  %i.acj = load ptr, ptr %i.jq, align 8, !tbaa !115
  call void %i.acj(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %19, ptr noundef nonnull %20) #11, !inline_history !123
  %i.ack = load <4 x i32>, ptr %20, align 16, !tbaa !55
  %i.acl = load <4 x i32>, ptr %31, align 16, !tbaa !55
  %i.acm = sub nsw <4 x i32> %i.ack, %i.acl
  %i.acn = sitofp <4 x i32> %i.acm to <4 x double> ; 2 uses
  %i.aco = fmul reassoc nnan nsz arcp contract afn <4 x double> %i.acn, %i.acn
  %i.acp = call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.aco) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #11
  %i.acq = fcmp reassoc nsz arcp contract afn olt double %i.acp, %i.abp ; 2 uses
  %..i.i.i.i = select i1 %i.acq, ptr %i.ry, ptr %i.rx
  %.185.i.i.i.i = select i1 %i.acq, double %i.acp, double %i.abp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aaw, ptr noundef nonnull align 8 dereferenceable(32) %..i.i.i.i, i64 32, i1 false), !tbaa !122
  store double %.185.i.i.i.i, ptr %i.wz, align 8, !tbaa !122
  br label %bb.cs

bb.cs:                                            ; preds = %.preheader8.preheader.i.i.i.i, %.preheader10._crit_edge.i.i.i.i
  %i.acr = load double, ptr %i.abr, align 8, !tbaa !122
  %i.acs = fcmp reassoc nsz arcp contract afn ult double %i.abp, %i.acr
  br i1 %i.acs, label %bb.cv, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.act = load double, ptr %i.wz, align 8, !tbaa !122 ; 2 uses
  %i.acu = fcmp reassoc nsz arcp contract afn olt double %i.abp, %i.act
  br i1 %i.acu, label %.preheader4.preheader.i.i.i.i, label %.preheader5.i.i.i.i

.preheader4.preheader.i.i.i.i:                    ; preds = %bb.ct
  %i.acv = insertelement <4 x double> poison, double %i.ym, i64 0
  %i.acw = insertelement <4 x double> %i.acv, double %i.zg, i64 1
  %i.acx = insertelement <4 x double> %i.acw, double %i.aaa, i64 2
  %i.acy = insertelement <4 x double> %i.acx, double %i.aau, i64 3 ; 2 uses
  %i.acz = fsub reassoc nsz arcp contract afn <4 x double> %i.abd, %i.acy
  %i.ada = fmul reassoc nsz arcp contract afn <4 x double> %i.acz, splat (double 5.000000e-01)
  %i.adb = fadd reassoc nsz arcp contract afn <4 x double> %i.ada, %i.acy ; 2 uses
  store <4 x double> %i.adb, ptr %i.rz, align 8, !tbaa !122
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %17, ptr noundef nonnull align 16 dereferenceable(20) %32, i64 20, i1 false), !tbaa.struct !118
  %i.adc = load <2 x i32>, ptr %i.kf, align 4, !tbaa !55
  %i.add = shufflevector <2 x i32> %i.adc, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ade = sitofp <4 x i32> %i.add to <4 x double>
  %i.adf = fmul reassoc nsz arcp contract afn <4 x double> %i.adb, %i.ade
  %i.adg = fptosi <4 x double> %i.adf to <4 x i32>
  store <4 x i32> %i.adg, ptr %17, align 16, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %18, ptr noundef nonnull readonly align 16 dereferenceable(20) %31, i64 20, i1 false), !tbaa.struct !118
  %i.adh = load ptr, ptr %i.jq, align 8, !tbaa !115
  call void %i.adh(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %17, ptr noundef nonnull %18) #11, !inline_history !123
  %i.adi = load <4 x i32>, ptr %18, align 16, !tbaa !55
  %i.adj = load <4 x i32>, ptr %31, align 16, !tbaa !55
  %i.adk = sub nsw <4 x i32> %i.adi, %i.adj
  %i.adl = sitofp <4 x i32> %i.adk to <4 x double> ; 2 uses
  %i.adm = fmul reassoc nnan nsz arcp contract afn <4 x double> %i.adl, %i.adl
  %i.adn = call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.adm)
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #11
  br label %bb.cu

.preheader5.i.i.i.i:                              ; preds = %bb.ct
  %i.ado = load <4 x double>, ptr %i.aaw, align 8, !tbaa !122
  %i.adp = insertelement <4 x double> poison, double %i.ym, i64 0
  %i.adq = insertelement <4 x double> %i.adp, double %i.zg, i64 1
  %i.adr = insertelement <4 x double> %i.adq, double %i.aaa, i64 2
  %i.ads = insertelement <4 x double> %i.adr, double %i.aau, i64 3 ; 2 uses
  %i.adt = fsub reassoc nsz arcp contract afn <4 x double> %i.ads, %i.ado
  %i.adu = fmul reassoc nsz arcp contract afn <4 x double> %i.adt, splat (double 5.000000e-01)
  %i.adv = fsub reassoc nsz arcp contract afn <4 x double> %i.ads, %i.adu ; 2 uses
  store <4 x double> %i.adv, ptr %i.rz, align 8, !tbaa !122
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %15, ptr noundef nonnull align 16 dereferenceable(20) %32, i64 20, i1 false), !tbaa.struct !118
  %i.adw = load <2 x i32>, ptr %i.kf, align 4, !tbaa !55
  %i.adx = shufflevector <2 x i32> %i.adw, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ady = sitofp <4 x i32> %i.adx to <4 x double>
  %i.adz = fmul reassoc nsz arcp contract afn <4 x double> %i.adv, %i.ady
  %i.aea = fptosi <4 x double> %i.adz to <4 x i32>
  store <4 x i32> %i.aea, ptr %15, align 16, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %16, ptr noundef nonnull readonly align 16 dereferenceable(20) %31, i64 20, i1 false), !tbaa.struct !118
  %i.aeb = load ptr, ptr %i.jq, align 8, !tbaa !115
  call void %i.aeb(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %15, ptr noundef nonnull %16) #11, !inline_history !123
  %i.aec = load <4 x i32>, ptr %16, align 16, !tbaa !55
  %i.aed = load <4 x i32>, ptr %31, align 16, !tbaa !55
  %i.aee = sub nsw <4 x i32> %i.aec, %i.aed
  %i.aef = sitofp <4 x i32> %i.aee to <4 x double> ; 2 uses
  %i.aeg = fmul reassoc nnan nsz arcp contract afn <4 x double> %i.aef, %i.aef
  %i.aeh = call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.aeg)
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  br label %bb.cu

bb.cu:                                            ; preds = %.preheader5.i.i.i.i, %.preheader4.preheader.i.i.i.i
  %.0331.i.i.i.i = phi nsz double [ %i.adn, %.preheader4.preheader.i.i.i.i ], [ %i.aeh, %.preheader5.i.i.i.i ] ; 2 uses
  %i.aei = fcmp reassoc nsz arcp contract afn olt double %.0331.i.i.i.i, %i.act
  br i1 %i.aei, label %.preheader2.i.i.i.i, label %.preheader3.i.i.i.i

.preheader3.i.i.i.i:                              ; preds = %bb.cu
  %i.aej = getelementptr inbounds nuw [8 x i8], ptr %i.rv, i64 %i.xa
  %.not.i.i.i.i = icmp eq i32 %.1346.4.i.i.i.i, 0
  %.pre.i.i.i = load ptr, ptr %i.aej, align 8, !tbaa !120 ; 20 uses
  br i1 %.not.i.i.i.i, label %.loopexit.1.i.i.i.i, label %.loopexit.i.i.i.i

.preheader2.i.i.i.i:                              ; preds = %bb.cu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aaw, ptr noundef nonnull align 8 dereferenceable(32) %i.rz, i64 32, i1 false), !tbaa !122
  store double %.0331.i.i.i.i, ptr %i.wz, align 8, !tbaa !122
  br label %bb.cv

.loopexit.i.i.i.i:                                ; preds = %.preheader3.i.i.i.i
  %i.aek = load ptr, ptr %i.rv, align 8, !tbaa !120 ; 5 uses
  %i.ael = load double, ptr %.pre.i.i.i, align 8, !tbaa !122 ; 2 uses
  %i.aem = load double, ptr %i.aek, align 8, !tbaa !122
  %i.aen = fsub reassoc nsz arcp contract afn double %i.aem, %i.ael
  %i.aeo = fmul reassoc nsz arcp contract afn double %i.aen, 5.000000e-01
  %i.aep = fadd reassoc nsz arcp contract afn double %i.aeo, %i.ael
  store double %i.aep, ptr %i.aek, align 8, !tbaa !122
  %i.aeq = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 8
  %i.aer = load double, ptr %i.aeq, align 8, !tbaa !122 ; 2 uses
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aek, i64 8 ; 2 uses
  %i.aet = load double, ptr %i.aes, align 8, !tbaa !122
  %i.aeu = fsub reassoc nsz arcp contract afn double %i.aet, %i.aer
  %i.aev = fmul reassoc nsz arcp contract afn double %i.aeu, 5.000000e-01
  %i.aew = fadd reassoc nsz arcp contract afn double %i.aev, %i.aer
  store double %i.aew, ptr %i.aes, align 8, !tbaa !122
  %i.aex = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 16
  %i.aey = load double, ptr %i.aex, align 8, !tbaa !122 ; 2 uses
  %i.aez = getelementptr inbounds nuw i8, ptr %i.aek, i64 16 ; 2 uses
  %i.afa = load double, ptr %i.aez, align 8, !tbaa !122
  %i.afb = fsub reassoc nsz arcp contract afn double %i.afa, %i.aey
  %i.afc = fmul reassoc nsz arcp contract afn double %i.afb, 5.000000e-01
  %i.afd = fadd reassoc nsz arcp contract afn double %i.afc, %i.aey
  store double %i.afd, ptr %i.aez, align 8, !tbaa !122
  %i.afe = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 24
  %i.aff = load double, ptr %i.afe, align 8, !tbaa !122 ; 2 uses
  %i.afg = getelementptr inbounds nuw i8, ptr %i.aek, i64 24 ; 2 uses
  %i.afh = load double, ptr %i.afg, align 8, !tbaa !122
  %i.afi = fsub reassoc nsz arcp contract afn double %i.afh, %i.aff
  %i.afj = fmul reassoc nsz arcp contract afn double %i.afi, 5.000000e-01
  %i.afk = fadd reassoc nsz arcp contract afn double %i.afj, %i.aff
  store double %i.afk, ptr %i.afg, align 8, !tbaa !122
  %.not.1.i.i.i.i = icmp eq i32 %.1346.4.i.i.i.i, 1
  br i1 %.not.1.i.i.i.i, label %.loopexit.2.i.i.i.i, label %.loopexit.1.i.i.i.i

.loopexit.1.i.i.i.i:                              ; preds = %.loopexit.i.i.i.i, %.preheader3.i.i.i.i
  %i.afl = load ptr, ptr %i.sc, align 8, !tbaa !120 ; 5 uses
  %i.afm = load double, ptr %.pre.i.i.i, align 8, !tbaa !122 ; 2 uses
  %i.afn = load double, ptr %i.afl, align 8, !tbaa !122
  %i.afo = fsub reassoc nsz arcp contract afn double %i.afn, %i.afm
  %i.afp = fmul reassoc nsz arcp contract afn double %i.afo, 5.000000e-01
  %i.afq = fadd reassoc nsz arcp contract afn double %i.afp, %i.afm
  store double %i.afq, ptr %i.afl, align 8, !tbaa !122
  %i.afr = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 8
  %i.afs = load double, ptr %i.afr, align 8, !tbaa !122 ; 2 uses
  %i.aft = getelementptr inbounds nuw i8, ptr %i.afl, i64 8 ; 2 uses
  %i.afu = load double, ptr %i.aft, align 8, !tbaa !122
  %i.afv = fsub reassoc nsz arcp contract afn double %i.afu, %i.afs
  %i.afw = fmul reassoc nsz arcp contract afn double %i.afv, 5.000000e-01
  %i.afx = fadd reassoc nsz arcp contract afn double %i.afw, %i.afs
  store double %i.afx, ptr %i.aft, align 8, !tbaa !122
  %i.afy = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 16
  %i.afz = load double, ptr %i.afy, align 8, !tbaa !122 ; 2 uses
  %i.aga = getelementptr inbounds nuw i8, ptr %i.afl, i64 16 ; 2 uses
  %i.agb = load double, ptr %i.aga, align 8, !tbaa !122
  %i.agc = fsub reassoc nsz arcp contract afn double %i.agb, %i.afz
  %i.agd = fmul reassoc nsz arcp contract afn double %i.agc, 5.000000e-01
  %i.age = fadd reassoc nsz arcp contract afn double %i.agd, %i.afz
  store double %i.age, ptr %i.aga, align 8, !tbaa !122
  %i.agf = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 24
  %i.agg = load double, ptr %i.agf, align 8, !tbaa !122 ; 2 uses
  %i.agh = getelementptr inbounds nuw i8, ptr %i.afl, i64 24 ; 2 uses
  %i.agi = load double, ptr %i.agh, align 8, !tbaa !122
  %i.agj = fsub reassoc nsz arcp contract afn double %i.agi, %i.agg
  %i.agk = fmul reassoc nsz arcp contract afn double %i.agj, 5.000000e-01
  %i.agl = fadd reassoc nsz arcp contract afn double %i.agk, %i.agg
  store double %i.agl, ptr %i.agh, align 8, !tbaa !122
  %.not.2.i.i.i.i = icmp eq i32 %.1346.4.i.i.i.i, 2
  br i1 %.not.2.i.i.i.i, label %.preheader.3.i.i.i.i, label %.loopexit.2.i.i.i.i

.loopexit.2.i.i.i.i:                              ; preds = %.loopexit.1.i.i.i.i, %.loopexit.i.i.i.i
  %i.agm = load ptr, ptr %i.se, align 8, !tbaa !120 ; 5 uses
  %i.agn = load double, ptr %.pre.i.i.i, align 8, !tbaa !122 ; 2 uses
  %i.ago = load double, ptr %i.agm, align 8, !tbaa !122
  %i.agp = fsub reassoc nsz arcp contract afn double %i.ago, %i.agn
  %i.agq = fmul reassoc nsz arcp contract afn double %i.agp, 5.000000e-01
  %i.agr = fadd reassoc nsz arcp contract afn double %i.agq, %i.agn
  store double %i.agr, ptr %i.agm, align 8, !tbaa !122
  %i.ags = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 8
  %i.agt = load double, ptr %i.ags, align 8, !tbaa !122 ; 2 uses
  %i.agu = getelementptr inbounds nuw i8, ptr %i.agm, i64 8 ; 2 uses
  %i.agv = load double, ptr %i.agu, align 8, !tbaa !122
  %i.agw = fsub reassoc nsz arcp contract afn double %i.agv, %i.agt
  %i.agx = fmul reassoc nsz arcp contract afn double %i.agw, 5.000000e-01
  %i.agy = fadd reassoc nsz arcp contract afn double %i.agx, %i.agt
  store double %i.agy, ptr %i.agu, align 8, !tbaa !122
  %i.agz = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 16
  %i.aha = load double, ptr %i.agz, align 8, !tbaa !122 ; 2 uses
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.agm, i64 16 ; 2 uses
  %i.ahc = load double, ptr %i.ahb, align 8, !tbaa !122
  %i.ahd = fsub reassoc nsz arcp contract afn double %i.ahc, %i.aha
  %i.ahe = fmul reassoc nsz arcp contract afn double %i.ahd, 5.000000e-01
  %i.ahf = fadd reassoc nsz arcp contract afn double %i.ahe, %i.aha
  store double %i.ahf, ptr %i.ahb, align 8, !tbaa !122
  %i.ahg = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 24
  %i.ahh = load double, ptr %i.ahg, align 8, !tbaa !122 ; 2 uses
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.agm, i64 24 ; 2 uses
  %i.ahj = load double, ptr %i.ahi, align 8, !tbaa !122
  %i.ahk = fsub reassoc nsz arcp contract afn double %i.ahj, %i.ahh
  %i.ahl = fmul reassoc nsz arcp contract afn double %i.ahk, 5.000000e-01
  %i.ahm = fadd reassoc nsz arcp contract afn double %i.ahl, %i.ahh
  store double %i.ahm, ptr %i.ahi, align 8, !tbaa !122
  %.not.3.i.i.i.i = and i1 %i.ws, %i.ww
  br i1 %.not.3.i.i.i.i, label %.loopexit.3.i.i.i.i, label %.preheader.3.i.i.i.i

.preheader.3.i.i.i.i:                             ; preds = %.loopexit.2.i.i.i.i, %.loopexit.1.i.i.i.i
  %i.ahn = load ptr, ptr %i.sg, align 8, !tbaa !120 ; 5 uses
  %i.aho = load double, ptr %.pre.i.i.i, align 8, !tbaa !122 ; 2 uses
  %i.ahp = load double, ptr %i.ahn, align 8, !tbaa !122
  %i.ahq = fsub reassoc nsz arcp contract afn double %i.ahp, %i.aho
  %i.ahr = fmul reassoc nsz arcp contract afn double %i.ahq, 5.000000e-01
  %i.ahs = fadd reassoc nsz arcp contract afn double %i.ahr, %i.aho
  store double %i.ahs, ptr %i.ahn, align 8, !tbaa !122
  %i.aht = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 8
  %i.ahu = load double, ptr %i.aht, align 8, !tbaa !122 ; 2 uses
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.ahn, i64 8 ; 2 uses
  %i.ahw = load double, ptr %i.ahv, align 8, !tbaa !122
  %i.ahx = fsub reassoc nsz arcp contract afn double %i.ahw, %i.ahu
  %i.ahy = fmul reassoc nsz arcp contract afn double %i.ahx, 5.000000e-01
  %i.ahz = fadd reassoc nsz arcp contract afn double %i.ahy, %i.ahu
  store double %i.ahz, ptr %i.ahv, align 8, !tbaa !122
  %i.aia = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 16
  %i.aib = load double, ptr %i.aia, align 8, !tbaa !122 ; 2 uses
  %i.aic = getelementptr inbounds nuw i8, ptr %i.ahn, i64 16 ; 2 uses
  %i.aid = load double, ptr %i.aic, align 8, !tbaa !122
  %i.aie = fsub reassoc nsz arcp contract afn double %i.aid, %i.aib
  %i.aif = fmul reassoc nsz arcp contract afn double %i.aie, 5.000000e-01
  %i.aig = fadd reassoc nsz arcp contract afn double %i.aif, %i.aib
  store double %i.aig, ptr %i.aic, align 8, !tbaa !122
  %i.aih = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 24
  %i.aii = load double, ptr %i.aih, align 8, !tbaa !122 ; 2 uses
  %i.aij = getelementptr inbounds nuw i8, ptr %i.ahn, i64 24 ; 2 uses
  %i.aik = load double, ptr %i.aij, align 8, !tbaa !122
  %i.ail = fsub reassoc nsz arcp contract afn double %i.aik, %i.aii
  %i.aim = fmul reassoc nsz arcp contract afn double %i.ail, 5.000000e-01
  %i.ain = fadd reassoc nsz arcp contract afn double %i.aim, %i.aii
  store double %i.ain, ptr %i.aij, align 8, !tbaa !122
  br label %.loopexit.3.i.i.i.i

.loopexit.3.i.i.i.i:                              ; preds = %.preheader.3.i.i.i.i, %.loopexit.2.i.i.i.i
  br i1 %i.ww, label %.preheader.4.i.i.i.i, label %.loopexit.4.i.i.i.i

.preheader.4.i.i.i.i:                             ; preds = %.loopexit.3.i.i.i.i
  %i.aio = load ptr, ptr %i.si, align 8, !tbaa !120 ; 5 uses
  %i.aip = load double, ptr %.pre.i.i.i, align 8, !tbaa !122 ; 2 uses
  %i.aiq = load double, ptr %i.aio, align 8, !tbaa !122
  %i.air = fsub reassoc nsz arcp contract afn double %i.aiq, %i.aip
  %i.ais = fmul reassoc nsz arcp contract afn double %i.air, 5.000000e-01
  %i.ait = fadd reassoc nsz arcp contract afn double %i.ais, %i.aip
  store double %i.ait, ptr %i.aio, align 8, !tbaa !122
  %i.aiu = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 8
  %i.aiv = load double, ptr %i.aiu, align 8, !tbaa !122 ; 2 uses
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.aio, i64 8 ; 2 uses
  %i.aix = load double, ptr %i.aiw, align 8, !tbaa !122
  %i.aiy = fsub reassoc nsz arcp contract afn double %i.aix, %i.aiv
  %i.aiz = fmul reassoc nsz arcp contract afn double %i.aiy, 5.000000e-01
  %i.aja = fadd reassoc nsz arcp contract afn double %i.aiz, %i.aiv
  store double %i.aja, ptr %i.aiw, align 8, !tbaa !122
  %i.ajb = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 16
  %i.ajc = load double, ptr %i.ajb, align 8, !tbaa !122 ; 2 uses
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.aio, i64 16 ; 2 uses
  %i.aje = load double, ptr %i.ajd, align 8, !tbaa !122
  %i.ajf = fsub reassoc nsz arcp contract afn double %i.aje, %i.ajc
  %i.ajg = fmul reassoc nsz arcp contract afn double %i.ajf, 5.000000e-01
  %i.ajh = fadd reassoc nsz arcp contract afn double %i.ajg, %i.ajc
  store double %i.ajh, ptr %i.ajd, align 8, !tbaa !122
  %i.aji = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 24
  %i.ajj = load double, ptr %i.aji, align 8, !tbaa !122 ; 2 uses
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.aio, i64 24 ; 2 uses
  %i.ajl = load double, ptr %i.ajk, align 8, !tbaa !122
  %i.ajm = fsub reassoc nsz arcp contract afn double %i.ajl, %i.ajj
  %i.ajn = fmul reassoc nsz arcp contract afn double %i.ajm, 5.000000e-01
  %i.ajo = fadd reassoc nsz arcp contract afn double %i.ajn, %i.ajj
  store double %i.ajo, ptr %i.ajk, align 8, !tbaa !122
  br label %.loopexit.4.i.i.i.i

.loopexit.4.i.i.i.i:                              ; preds = %.preheader.4.i.i.i.i, %.loopexit.3.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %13, ptr noundef nonnull align 16 dereferenceable(20) %32, i64 20, i1 false), !tbaa.struct !118
  %i.ajp = load <2 x i32>, ptr %i.kf, align 4, !tbaa !55
  %i.ajq = shufflevector <2 x i32> %i.ajp, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ajr = sitofp <4 x i32> %i.ajq to <4 x double>
  %i.ajs = load <4 x double>, ptr %i.aaw, align 8, !tbaa !122
  %i.ajt = fmul reassoc nsz arcp contract afn <4 x double> %i.ajs, %i.ajr
  %i.aju = fptosi <4 x double> %i.ajt to <4 x i32>
  store <4 x i32> %i.aju, ptr %13, align 16, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %14, ptr noundef nonnull readonly align 16 dereferenceable(20) %31, i64 20, i1 false), !tbaa.struct !118
  %i.ajv = load ptr, ptr %i.jq, align 8, !tbaa !115
  call void %i.ajv(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %13, ptr noundef nonnull %14) #11, !inline_history !123
  %i.ajw = getelementptr inbounds nuw [8 x i8], ptr %i.rv, i64 %i.abq
  %i.ajx = load <2 x i32>, ptr %14, align 8, !tbaa !55 ; 2 uses
  %i.ajy = load <2 x i32>, ptr %31, align 16, !tbaa !55 ; 2 uses
  %i.ajz = load <2 x i32>, ptr %i.kh, align 8, !tbaa !55 ; 2 uses
  %i.aka = load <2 x i32>, ptr %i.ju, align 8, !tbaa !55 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #11
  %i.akb = load ptr, ptr %i.ajw, align 8, !tbaa !120
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %11, ptr noundef nonnull align 16 dereferenceable(20) %32, i64 20, i1 false), !tbaa.struct !118
  %i.akc = load <2 x i32>, ptr %i.kf, align 4, !tbaa !55
  %i.akd = shufflevector <2 x i32> %i.akc, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ake = sitofp <4 x i32> %i.akd to <4 x double>
  %i.akf = load <4 x double>, ptr %i.akb, align 8, !tbaa !122
  %i.akg = fmul reassoc nsz arcp contract afn <4 x double> %i.akf, %i.ake
  %i.akh = fptosi <4 x double> %i.akg to <4 x i32>
  store <4 x i32> %i.akh, ptr %11, align 16, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %12, ptr noundef nonnull readonly align 16 dereferenceable(20) %31, i64 20, i1 false), !tbaa.struct !118
  %i.aki = load ptr, ptr %i.jq, align 8, !tbaa !115
  call void %i.aki(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %11, ptr noundef nonnull %12) #11, !inline_history !123
  %i.akj = load i32, ptr %31, align 16, !tbaa !116
  %i.akk = load <2 x i32>, ptr %12, align 8, !tbaa !55 ; 2 uses
  %i.akl = shufflevector <2 x i32> %i.ajx, <2 x i32> %i.akk, <2 x i32> <i32 0, i32 2>
  %i.akm = insertelement <2 x i32> %i.ajy, i32 %i.akj, i64 1
  %i.akn = sub nsw <2 x i32> %i.akl, %i.akm
  %i.ako = sitofp <2 x i32> %i.akn to <2 x double> ; 2 uses
  %i.akp = fmul reassoc nnan nsz arcp contract afn <2 x double> %i.ako, %i.ako
  %i.akq = load i32, ptr %i.jt, align 4, !tbaa !117
  %i.akr = shufflevector <2 x i32> %i.ajx, <2 x i32> %i.akk, <2 x i32> <i32 1, i32 3>
  %i.aks = shufflevector <2 x i32> %i.ajy, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %i.akt = insertelement <2 x i32> %i.aks, i32 %i.akq, i64 1
  %i.aku = sub nsw <2 x i32> %i.akr, %i.akt
  %i.akv = sitofp <2 x i32> %i.aku to <2 x double> ; 2 uses
  %i.akw = fmul reassoc nnan nsz arcp contract afn <2 x double> %i.akv, %i.akv
  %i.akx = fadd reassoc nsz arcp contract afn <2 x double> %i.akp, %i.akw
  %i.aky = load i32, ptr %i.ju, align 8, !tbaa !44
  %i.akz = load <2 x i32>, ptr %i.ki, align 8, !tbaa !55 ; 2 uses
  %i.ala = shufflevector <2 x i32> %i.ajz, <2 x i32> %i.akz, <2 x i32> <i32 0, i32 2>
  %i.alb = insertelement <2 x i32> %i.aka, i32 %i.aky, i64 1
  %i.alc = sub nsw <2 x i32> %i.ala, %i.alb
  %i.ald = sitofp <2 x i32> %i.alc to <2 x double> ; 2 uses
  %i.ale = fmul reassoc nnan nsz arcp contract afn <2 x double> %i.ald, %i.ald
  %i.alf = fadd reassoc nsz arcp contract afn <2 x double> %i.akx, %i.ale
  %i.alg = load i32, ptr %i.jv, align 4, !tbaa !46
  %i.alh = shufflevector <2 x i32> %i.ajz, <2 x i32> %i.akz, <2 x i32> <i32 1, i32 3>
  %i.ali = shufflevector <2 x i32> %i.aka, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %i.alj = insertelement <2 x i32> %i.ali, i32 %i.alg, i64 1
  %i.alk = sub nsw <2 x i32> %i.alh, %i.alj
  %i.all = sitofp <2 x i32> %i.alk to <2 x double> ; 2 uses
  %i.alm = fmul reassoc nnan nsz arcp contract afn <2 x double> %i.all, %i.all
  %i.aln = fadd reassoc nsz arcp contract afn <2 x double> %i.alm, %i.alf ; 2 uses
  %i.alo = extractelement <2 x double> %i.aln, i64 0
  store double %i.alo, ptr %i.wz, align 8, !tbaa !122
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  %i.alp = extractelement <2 x double> %i.aln, i64 1
  store double %i.alp, ptr %i.abr, align 8, !tbaa !122
  br label %bb.cv

bb.cv:                                            ; preds = %.loopexit.4.i.i.i.i, %.preheader2.i.i.i.i, %bb.cs
  %i.alq = load double, ptr %.phi.trans.insert141.i.i.i.i, align 8, !tbaa !122 ; 3 uses
  %i.alr = load <4 x double>, ptr %i.rw, align 8, !tbaa !122 ; 3 uses
  %op.rdx121 = call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double %i.alq, <4 x double> %i.alr)
  %i.als = fmul reassoc nsz arcp contract afn double %op.rdx121, 2.000000e-01 ; 2 uses
  %i.alt = insertelement <4 x double> poison, double %i.als, i64 0
  %i.alu = shufflevector <4 x double> %i.alt, <4 x double> poison, <4 x i32> zeroinitializer
  %i.alv = fsub reassoc nsz arcp contract afn <4 x double> %i.alr, %i.alu ; 2 uses
  %i.alw = fmul reassoc nsz arcp contract afn <4 x double> %i.alv, %i.alv
  %i.alx = fsub reassoc nsz arcp contract afn double %i.alq, %i.als ; 2 uses
  %i.aly = fmul reassoc nsz arcp contract afn double %i.alx, %i.alx
  %op.rdx = call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double %i.aly, <4 x double> %i.alw)
  %i.alz = fmul reassoc nsz arcp contract afn double %op.rdx, 2.500000e-01
  %i.ama = call reassoc nsz arcp contract afn double @llvm.sqrt.f64(double %i.alz)
  %i.amb = fcmp reassoc nsz arcp contract afn olt double %i.ama, %i.vq
  br i1 %i.amb, label %_simplex.exit.i.i.i, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.amc = add nuw nsw i32 %.033248.i.i.i.i, 1    ; 2 uses
  %exitcond128.not.i.i.i.i = icmp eq i32 %i.amc, 1001
  br i1 %exitcond128.not.i.i.i.i, label %_simplex.exit.i.i.i, label %.preheader14.i.i.i.i

_simplex.exit.i.i.i:                              ; preds = %bb.cw, %bb.cv
  %.0332.lcssa.i.i.i.i = phi i32 [ %.033248.i.i.i.i, %bb.cv ], [ 1001, %bb.cw ] ; 2 uses
  call void @free(ptr noundef nonnull %i.rw) #11
  call void @free(ptr noundef nonnull %i.rx) #11
  call void @free(ptr noundef %i.ry) #11
  call void @free(ptr noundef %i.rz) #11
  %i.amd = load ptr, ptr %i.rv, align 8, !tbaa !120
  call void @free(ptr noundef %i.amd) #11
  %i.ame = load ptr, ptr %i.sc, align 8, !tbaa !120
  call void @free(ptr noundef %i.ame) #11
  %i.amf = load ptr, ptr %i.se, align 8, !tbaa !120
  call void @free(ptr noundef %i.amf) #11
  %i.amg = load ptr, ptr %i.sg, align 8, !tbaa !120
  call void @free(ptr noundef %i.amg) #11
  %i.amh = load ptr, ptr %i.si, align 8, !tbaa !120
  call void @free(ptr noundef %i.amh) #11
  call void @free(ptr noundef nonnull %i.rv) #11
  %i.ami = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !56 ; 2 uses
  %i.amj = and i32 %i.ami, 25165824
  %or.cond.not.i53.i.i = icmp eq i32 %i.amj, 25165824
  br i1 %or.cond.not.i53.i.i, label %bb.cx, label %_fit_output_to_input_roi.exit.i

bb.cx:                                            ; preds = %_simplex.exit.i.i.i
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.27, i32 noundef %.0332.lcssa.i.i.i.i, i32 noundef %i.az, double noundef %i.vq) #11
  %.pre601.pre.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !56
  br label %_fit_output_to_input_roi.exit.i

_fit_output_to_input_roi.exit.i:                  ; preds = %bb.cx, %_simplex.exit.i.i.i
  %.pre601.i = phi i32 [ %i.ami, %_simplex.exit.i.i.i ], [ %.pre601.pre.i, %bb.cx ] ; 2 uses
  %i.amk = load <2 x i32>, ptr %i.kf, align 4, !tbaa !55
  %i.aml = shufflevector <2 x i32> %i.amk, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.amm = sitofp <4 x i32> %i.aml to <4 x double>
  %i.amn = fmul reassoc nsz arcp contract afn <4 x double> %i.amm, %i.ru
  %i.amo = fptosi <4 x double> %i.amn to <4 x i32>
  store <4 x i32> %i.amo, ptr %32, align 16, !tbaa !55
  %i.amp = icmp samesign ugt i32 %.0332.lcssa.i.i.i.i, 1000
  call void @llvm.lifetime.end.p0(ptr nonnull %26)
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #11
  br i1 %i.amp, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %_fit_output_to_input_roi.exit.i
  %i.amq = and i32 %.pre601.i, 8388608
  %.not496.i = icmp eq i32 %i.amq, 0
  br i1 %.not496.i, label %.thread537.i, label %.thread537.sink.split.i

bb.cz:                                            ; preds = %_fit_output_to_input_roi.exit.i, %_fit_output_to_input_roi.exit.thread.i
  %i.amr = phi i32 [ %.pre600.i, %_fit_output_to_input_roi.exit.thread.i ], [ %.pre601.i, %_fit_output_to_input_roi.exit.i ] ; 2 uses
  %i.ams = and i32 %i.amr, 25165824
  %or.cond.not.i519.i = icmp eq i32 %i.ams, 25165824
  br i1 %or.cond.not.i519.i, label %bb.da, label %_print_roi.exit520.i

bb.da:                                            ; preds = %bb.cz
  %i.amt = load i32, ptr %31, align 16, !tbaa !116 ; 2 uses
  %i.amu = load i32, ptr %i.jt, align 4, !tbaa !117 ; 2 uses
  %i.amv = load i32, ptr %i.ju, align 8, !tbaa !44 ; 2 uses
  %i.amw = add nsw i32 %i.amv, %i.amt
  %i.amx = load i32, ptr %i.jv, align 4, !tbaa !46 ; 2 uses
  %i.amy = add nsw i32 %i.amx, %i.amu
  %i.amz = load float, ptr %i.jw, align 16, !tbaa !45
  %i.ana = fpext reassoc nsz arcp contract afn float %i.amz to double
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.23, i32 noundef %i.amt, i32 noundef %i.amu, i32 noundef %i.amw, i32 noundef %i.amy, i32 noundef %i.amv, i32 noundef %i.amx, double noundef %i.ana, ptr noundef nonnull @.str.12) #11
  %.pre602.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !56
  br label %_print_roi.exit520.i

_print_roi.exit520.i:                             ; preds = %bb.da, %bb.cz
  %i.anb = phi i32 [ %i.amr, %bb.cz ], [ %.pre602.i, %bb.da ]
  %i.anc = and i32 %i.anb, 25165824
  %or.cond.not.i521.i = icmp eq i32 %i.anc, 25165824
  %i.and = load <2 x i32>, ptr %32, align 16, !tbaa !55 ; 3 uses
  %i.ane = load <2 x i32>, ptr %i.jy, align 8, !tbaa !55 ; 3 uses
  br i1 %or.cond.not.i521.i, label %bb.db, label %_print_roi.exit522.i

bb.db:                                            ; preds = %_print_roi.exit520.i
  %i.anf = extractelement <2 x i32> %i.ane, i64 0 ; 2 uses
  %i.ang = extractelement <2 x i32> %i.and, i64 0 ; 2 uses
  %i.anh = add nsw i32 %i.anf, %i.ang
  %i.ani = extractelement <2 x i32> %i.ane, i64 1 ; 2 uses
  %i.anj = extractelement <2 x i32> %i.and, i64 1 ; 2 uses
  %i.ank = add nsw i32 %i.ani, %i.anj
  %i.anl = load float, ptr %i.ka, align 16, !tbaa !45
  %i.anm = fpext reassoc nsz arcp contract afn float %i.anl to double
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.23, i32 noundef %i.ang, i32 noundef %i.anj, i32 noundef %i.anh, i32 noundef %i.ank, i32 noundef %i.anf, i32 noundef %i.ani, double noundef %i.anm, ptr noundef nonnull @.str.13) #11
  %i.ann = load <2 x i32>, ptr %32, align 16, !tbaa !55
  %i.ano = load <2 x i32>, ptr %i.jy, align 8, !tbaa !55
  br label %_print_roi.exit522.i

_print_roi.exit522.i:                             ; preds = %bb.db, %_print_roi.exit520.i
  %i.anp = phi <2 x i32> [ %i.ane, %_print_roi.exit520.i ], [ %i.ano, %bb.db ]
  %i.anq = phi <2 x i32> [ %i.and, %_print_roi.exit520.i ], [ %i.ann, %bb.db ]
  %i.anr = load <2 x i32>, ptr %30, align 8, !tbaa !55 ; 2 uses
  %i.ans = call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.anq, <2 x i32> %i.anr) ; 2 uses
  %i.ant = load <2 x i32>, ptr %i.jn, align 8, !tbaa !55
  %i.anu = sub <2 x i32> %i.anr, %i.ans
  %i.anv = add <2 x i32> %i.anu, %i.ant
  %i.anw = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.anp, <2 x i32> %i.anv)
  %i.anx = load <2 x i32>, ptr %5, align 4, !tbaa !55 ; 2 uses
  %i.any = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.ans, <2 x i32> %i.anx) ; 3 uses
  %i.anz = extractelement <2 x i32> %i.any, i64 0
  store i32 %i.anz, ptr %32, align 16, !tbaa !116
  %i.aoa = extractelement <2 x i32> %i.any, i64 1
  store i32 %i.aoa, ptr %i.jx, align 4, !tbaa !117
  %i.aob = load <2 x i32>, ptr %i.ac, align 4, !tbaa !55
  %i.aoc = sub <2 x i32> %i.anx, %i.any
  %i.aod = add <2 x i32> %i.aoc, %i.aob
  %i.aoe = call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.anw, <2 x i32> %i.aod)
  store <2 x i32> %i.aoe, ptr %i.jy, align 8, !tbaa !55
  %i.aof = load ptr, ptr %i.jq, align 8, !tbaa !115
  call void %i.aof(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %32, ptr noundef nonnull %31) #11, !inline_history !43
  %i.aog = load <2 x i32>, ptr %31, align 16, !tbaa !55
  %i.aoh = load <2 x i32>, ptr %4, align 4, !tbaa !55 ; 2 uses
  %i.aoi = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.aog, <2 x i32> %i.aoh) ; 3 uses
  %i.aoj = extractelement <2 x i32> %i.aoi, i64 0 ; 3 uses
  store i32 %i.aoj, ptr %31, align 16, !tbaa !116
  %i.aok = extractelement <2 x i32> %i.aoi, i64 1 ; 3 uses
  store i32 %i.aok, ptr %i.jt, align 4, !tbaa !117
  %i.aol = load <2 x i32>, ptr %i.ju, align 8, !tbaa !55
  %i.aom = load <2 x i32>, ptr %i.z, align 4, !tbaa !55
  %i.aon = sub <2 x i32> %i.aoh, %i.aoi
  %i.aoo = add <2 x i32> %i.aon, %i.aom
  %i.aop = call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.aol, <2 x i32> %i.aoo) ; 3 uses
  store <2 x i32> %i.aop, ptr %i.ju, align 8, !tbaa !55
  %i.aoq = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !56 ; 2 uses
  %i.aor = and i32 %i.aoq, 25165824
  %or.cond.not.i523.i = icmp eq i32 %i.aor, 25165824
  br i1 %or.cond.not.i523.i, label %bb.dc, label %_print_roi.exit524.i

bb.dc:                                            ; preds = %_print_roi.exit522.i
  %i.aos = extractelement <2 x i32> %i.aop, i64 0 ; 2 uses
  %i.aot = add nsw i32 %i.aos, %i.aoj
  %i.aou = extractelement <2 x i32> %i.aop, i64 1 ; 2 uses
  %i.aov = add nsw i32 %i.aou, %i.aok
  %i.aow = load float, ptr %i.jw, align 16, !tbaa !45
  %i.aox = fpext reassoc nsz arcp contract afn float %i.aow to double
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.23, i32 noundef %i.aoj, i32 noundef %i.aok, i32 noundef %i.aot, i32 noundef %i.aov, i32 noundef %i.aos, i32 noundef %i.aou, double noundef %i.aox, ptr noundef nonnull @.str.14) #11
  %.pre611.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !56
  br label %_print_roi.exit524.i

_print_roi.exit524.i:                             ; preds = %bb.dc, %_print_roi.exit522.i
  %i.aoy = phi i32 [ %i.aoq, %_print_roi.exit522.i ], [ %.pre611.i, %bb.dc ] ; 2 uses
  %i.aoz = and i32 %i.aoy, 25165824
  %or.cond.not.i525.i = icmp eq i32 %i.aoz, 25165824
  br i1 %or.cond.not.i525.i, label %bb.dd, label %_print_roi.exit526.i

bb.dd:                                            ; preds = %_print_roi.exit524.i
  %i.apa = load i32, ptr %32, align 16, !tbaa !116 ; 2 uses
  %i.apb = load i32, ptr %i.jx, align 4, !tbaa !117 ; 2 uses
  %i.apc = load i32, ptr %i.jy, align 8, !tbaa !44 ; 2 uses
  %i.apd = add nsw i32 %i.apc, %i.apa
  %i.ape = load i32, ptr %i.jz, align 4, !tbaa !46 ; 2 uses
  %i.apf = add nsw i32 %i.ape, %i.apb
  %i.apg = load float, ptr %i.ka, align 16, !tbaa !45
  %i.aph = fpext reassoc nsz arcp contract afn float %i.apg to double
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.23, i32 noundef %i.apa, i32 noundef %i.apb, i32 noundef %i.apd, i32 noundef %i.apf, i32 noundef %i.apc, i32 noundef %i.ape, double noundef %i.aph, ptr noundef nonnull @.str.15) #11
  %.pre612.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !56
  br label %_print_roi.exit526.i

_print_roi.exit526.i:                             ; preds = %bb.dd, %_print_roi.exit524.i
  %i.api = phi i32 [ %i.aoy, %_print_roi.exit524.i ], [ %.pre612.i, %bb.dd ]
  %i.apj = load i32, ptr %i.jt, align 4, !tbaa !117
  %i.apk = sext i32 %i.apj to i64
  %i.apl = load i32, ptr %i.jh, align 4, !tbaa !117
  %i.apm = sext i32 %i.apl to i64
  %i.apn = sub nsw i64 %i.apk, %i.apm
  %i.apo = mul nsw i64 %i.apn, %i.kj
  %i.app = load i32, ptr %31, align 16, !tbaa !116
  %i.apq = sext i32 %i.app to i64
  %i.apr = load i32, ptr %4, align 4, !tbaa !116
  %i.aps = sext i32 %i.apr to i64
  %i.apt = sub nsw i64 %i.apq, %i.aps
  %i.apu = mul nsw i64 %i.apt, %i.kk
  %i.apv = load i32, ptr %i.jl, align 4, !tbaa !117
  %i.apw = sext i32 %i.apv to i64
  %i.apx = load i32, ptr %i.jm, align 4, !tbaa !117
  %i.apy = sext i32 %i.apx to i64
  %i.apz = sub nsw i64 %i.apw, %i.apy
  %i.aqa = mul nsw i64 %i.apz, %i.kl
  %i.aqb = load i32, ptr %30, align 8, !tbaa !116
  %i.aqc = sext i32 %i.aqb to i64
  %i.aqd = load i32, ptr %5, align 4, !tbaa !116
  %i.aqe = sext i32 %i.aqd to i64
  %i.aqf = sub nsw i64 %i.aqc, %i.aqe
  %i.aqg = mul nsw i64 %i.aqf, %i.km
  %i.aqh = and i32 %i.api, 8388608
  %.not497.i = icmp eq i32 %i.aqh, 0
  br i1 %.not497.i, label %bb.df, label %bb.de

bb.de:                                            ; preds = %_print_roi.exit526.i
  %i.aqi = load ptr, ptr %i.v, align 8, !tbaa !30
  %i.aqj = load ptr, ptr %1, align 16, !tbaa !113
  call void (ptr, ptr, ptr, i32, ptr, ptr, ptr, ...) @dt_print_pipe_ext(ptr noundef nonnull @.str.16, ptr noundef %i.aqi, ptr noundef %i.aqj, i32 noundef -1, ptr noundef nonnull %31, ptr noundef nonnull %32, ptr noundef nonnull @.str.17, i64 noundef %.0414581.i, i64 noundef %.0412580.i) #11
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %_print_roi.exit526.i
  %i.aqk = load i32, ptr %i.ju, align 8, !tbaa !44
  %i.aql = sext i32 %i.aqk to i64
  %i.aqm = load i32, ptr %i.jv, align 4, !tbaa !46
  %i.aqn = sext i32 %i.aqm to i64
  %i.aqo = mul nsw i64 %i.aql, %i.kk
  %i.aqp = mul i64 %i.aqo, %i.aqn
  %i.aqq = call ptr @dt_alloc_aligned(i64 noundef %i.aqp) #11 ; 6 uses
  %i.aqr = icmp eq ptr %i.aqq, null
  br i1 %i.aqr, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  %i.aqs = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !56
  %i.aqt = and i32 %i.aqs, 8388608
  %.not501.i = icmp eq i32 %i.aqt, 0
  br i1 %.not501.i, label %.thread537.i, label %.thread537.sink.split.i

bb.dh:                                            ; preds = %bb.df
  %i.aqu = load i32, ptr %i.jy, align 8, !tbaa !44
  %i.aqv = sext i32 %i.aqu to i64
  %i.aqw = load i32, ptr %i.jz, align 4, !tbaa !46
  %i.aqx = sext i32 %i.aqw to i64
  %i.aqy = mul nsw i64 %i.km, %i.aqv
end_hunk_0
