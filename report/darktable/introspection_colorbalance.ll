Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_colorbalance?download=true
inline.NumInlined: 167
inline.NumDeleted: 59
loop-unroll.NumCompletelyUnrolled: 41
loop-unroll.NumUnrolled: 41
begin_hunk_0_@color_picker_apply:bb.a
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 104
  %i.lq = atomicrmw sub ptr %i.lp, i32 1 seq_cst, align 4 ; 0 uses
  %i.lr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !114
  tail call void @dt_dev_add_history_item(ptr noundef %i.lr, ptr noundef nonnull %0, i32 noundef 1) #23
  br label %apply_lift_neutralize.exit

bb.j:                                             ; preds = %bb.g
  %i.ls = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !125
  %i.lu = icmp eq ptr %1, %i.lt
  br i1 %i.lu, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.lv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !68
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 104
  %i.lx = load atomic i32, ptr %i.lw seq_cst, align 4
  %.not.i35 = icmp eq i32 %i.lx, 0
  br i1 %.not.i35, label %bb.l, label %apply_lift_neutralize.exit

bb.l:                                             ; preds = %bb.k
  %i.ly = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !109 ; 2 uses
  %i.ma = load ptr, ptr %i.a, align 16, !tbaa !54 ; 3 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.mc = load float, ptr %i.mb, align 16, !tbaa !11
  %i.md = fmul reassoc nsz arcp contract afn float %i.mc, 8.620690e-03
  %i.me = fadd reassoc nsz arcp contract afn float %i.md, f0x3E0D3DCB ; 5 uses
  %i.mf = fcmp reassoc nsz arcp contract afn ogt float %i.me, f0x3E53DCB1
  %i.mg = fmul reassoc nsz arcp contract afn float %i.me, %i.me
  %i.mh = fmul reassoc nsz arcp contract afn float %i.mg, %i.me
  %i.mi = fmul reassoc nsz arcp contract afn float %i.me, f0x3E038026
  %i.mj = fadd reassoc nsz arcp contract afn float %i.mi, f0xBC911AA6
  %i.mk = select reassoc nsz arcp contract afn i1 %i.mf, float %i.mh, float %i.mj ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.ma, i64 312
  store float %i.mk, ptr %i.ml, align 8, !tbaa !11
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ma, i64 324
  store i32 1, ptr %i.mm, align 4, !tbaa !22
  %i.mn = getelementptr inbounds nuw i8, ptr %i.lz, i64 36
  %i.mo = load float, ptr %i.mn, align 4, !tbaa !11
  %i.mp = fmul reassoc nsz arcp contract afn float %i.mk, %i.mo
  %i.mq = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.mp
  %i.mr = getelementptr inbounds nuw i8, ptr %i.lz, i64 4 ; 2 uses
  store float %i.mq, ptr %i.mr, align 4, !tbaa !11
  %i.ms = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !68
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 104
  %i.mu = atomicrmw add ptr %i.mt, i32 1 seq_cst, align 4 ; 0 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.ma, i64 144
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !125
  %i.mx = load float, ptr %i.mr, align 4, !tbaa !11
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.mw, float noundef %i.mx) #23
  %i.my = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !68
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 104
  %i.na = atomicrmw sub ptr %i.mz, i32 1 seq_cst, align 4 ; 0 uses
  %i.nb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !114
  tail call void @dt_dev_add_history_item(ptr noundef %i.nb, ptr noundef nonnull %0, i32 noundef 1) #23
  br label %apply_lift_neutralize.exit

bb.m:                                             ; preds = %bb.j
  %i.nc = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !126
  %i.ne = icmp eq ptr %1, %i.nd
  br i1 %i.ne, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.nf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !68
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 104
  %i.nh = load atomic i32, ptr %i.ng seq_cst, align 4
  %.not.i36 = icmp eq i32 %i.nh, 0
  br i1 %.not.i36, label %bb.o, label %apply_lift_neutralize.exit

bb.o:                                             ; preds = %bb.n
  %i.ni = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !109 ; 3 uses
  %i.nk = load ptr, ptr %i.a, align 16, !tbaa !54 ; 3 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.nm = load float, ptr %i.nl, align 16, !tbaa !11
  %i.nn = fmul reassoc nsz arcp contract afn float %i.nm, 8.620690e-03
  %i.no = fadd reassoc nsz arcp contract afn float %i.nn, f0x3E0D3DCB ; 5 uses
  %i.np = fcmp reassoc nsz arcp contract afn ogt float %i.no, f0x3E53DCB1
  %i.nq = fmul reassoc nsz arcp contract afn float %i.no, %i.no
  %i.nr = fmul reassoc nsz arcp contract afn float %i.nq, %i.no
  %i.ns = fmul reassoc nsz arcp contract afn float %i.no, f0x3E038026
  %i.nt = fadd reassoc nsz arcp contract afn float %i.ns, f0xBC911AA6
  %i.nu = select reassoc nsz arcp contract afn i1 %i.np, float %i.nr, float %i.nt ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nk, i64 316
  store float %i.nu, ptr %i.nv, align 4, !tbaa !11
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nk, i64 328
  store i32 1, ptr %i.nw, align 4, !tbaa !22
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nj, i64 36
  %i.ny = load float, ptr %i.nx, align 4, !tbaa !11
  %i.nz = fmul reassoc nsz arcp contract afn float %i.nu, %i.ny
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nj, i64 4
  %i.ob = load float, ptr %i.oa, align 4, !tbaa !11
  %i.oc = fadd reassoc nsz arcp contract afn float %i.ob, %i.nz
  %i.od = fadd reassoc nsz arcp contract afn float %i.oc, -1.000000e+00 ; 2 uses
  %i.oe = fcmp reassoc nsz arcp contract afn ogt float %i.od, f0x358637BD
  %i.of = tail call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.od)
  %i.og = fdiv reassoc nsz arcp contract afn float f0x3FD88AB6, %i.of
  %i.oh = fadd reassoc nsz arcp contract afn float %i.og, 2.000000e+00
  %i.oi = select i1 %i.oe, float %i.oh, float f0x3FF05380
  %i.oj = getelementptr inbounds nuw i8, ptr %i.nj, i64 20 ; 2 uses
  store float %i.oi, ptr %i.oj, align 4, !tbaa !11
  %i.ok = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !68
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 104
  %i.om = atomicrmw add ptr %i.ol, i32 1 seq_cst, align 4 ; 0 uses
  %i.on = getelementptr inbounds nuw i8, ptr %i.nk, i64 176
  %i.oo = load ptr, ptr %i.on, align 8, !tbaa !126
  %i.op = load float, ptr %i.oj, align 4, !tbaa !11
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.oo, float noundef %i.op) #23
  %i.oq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !68
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 104
  %i.os = atomicrmw sub ptr %i.or, i32 1 seq_cst, align 4 ; 0 uses
  %i.ot = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !114
  tail call void @dt_dev_add_history_item(ptr noundef %i.ot, ptr noundef nonnull %0, i32 noundef 1) #23
  br label %apply_lift_neutralize.exit

bb.p:                                             ; preds = %bb.m
  %i.ou = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !127
  %i.ow = icmp eq ptr %1, %i.ov
  br i1 %i.ow, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.ox = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !68
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 104
  %i.oz = load atomic i32, ptr %i.oy seq_cst, align 4
  %.not.i37 = icmp eq i32 %i.oz, 0
  br i1 %.not.i37, label %bb.r, label %apply_lift_neutralize.exit

bb.r:                                             ; preds = %bb.q
  %i.pa = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.pb = load ptr, ptr %i.pa, align 8, !tbaa !109 ; 2 uses
  %i.pc = load ptr, ptr %i.a, align 16, !tbaa !54 ; 3 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.pe = load float, ptr %i.pd, align 16, !tbaa !11
  %i.pf = fmul reassoc nsz arcp contract afn float %i.pe, 8.620690e-03
  %i.pg = fadd reassoc nsz arcp contract afn float %i.pf, f0x3E0D3DCB ; 5 uses
  %i.ph = fcmp reassoc nsz arcp contract afn ogt float %i.pg, f0x3E53DCB1
  %i.pi = fmul reassoc nsz arcp contract afn float %i.pg, %i.pg
  %i.pj = fmul reassoc nsz arcp contract afn float %i.pi, %i.pg
  %i.pk = fmul reassoc nsz arcp contract afn float %i.pg, f0x3E038026
  %i.pl = fadd reassoc nsz arcp contract afn float %i.pk, f0xBC911AA6
  %i.pm = select reassoc nsz arcp contract afn i1 %i.ph, float %i.pj, float %i.pl ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pc, i64 320
  store float %i.pm, ptr %i.pn, align 8, !tbaa !11
  %i.po = getelementptr inbounds nuw i8, ptr %i.pc, i64 332
  store i32 1, ptr %i.po, align 4, !tbaa !22
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pb, i64 4
  %i.pq = load float, ptr %i.pp, align 4, !tbaa !11
  %i.pr = fdiv reassoc nsz arcp contract afn float %i.pq, %i.pm
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pb, i64 36 ; 2 uses
  store float %i.pr, ptr %i.ps, align 4, !tbaa !11
  %i.pt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !68
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 104
  %i.pv = atomicrmw add ptr %i.pu, i32 1 seq_cst, align 4 ; 0 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pc, i64 208
  %i.px = load ptr, ptr %i.pw, align 8, !tbaa !127
  %i.py = load float, ptr %i.ps, align 4, !tbaa !11
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.px, float noundef %i.py) #23
  %i.pz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !68
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 104
  %i.qb = atomicrmw sub ptr %i.qa, i32 1 seq_cst, align 4 ; 0 uses
  %i.qc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !114
  tail call void @dt_dev_add_history_item(ptr noundef %i.qc, ptr noundef nonnull %0, i32 noundef 1) #23
  br label %apply_lift_neutralize.exit

bb.s:                                             ; preds = %bb.p
  %i.qd = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  %i.qe = load ptr, ptr %i.qd, align 8, !tbaa !128
  %i.qf = icmp eq ptr %1, %i.qe
  br i1 %i.qf, label %bb.t, label %bb.ae

bb.t:                                             ; preds = %bb.s
  %i.qg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !68
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 104
  %i.qi = load atomic i32, ptr %i.qh seq_cst, align 4
  %.not.i38 = icmp eq i32 %i.qi, 0
  br i1 %.not.i38, label %bb.u, label %apply_lift_neutralize.exit

bb.u:                                             ; preds = %bb.t
  %i.qj = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.qk = load ptr, ptr %i.qj, align 8, !tbaa !109 ; 6 uses
  %i.ql = load ptr, ptr %i.a, align 16, !tbaa !54
  %i.qm = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.qn = getelementptr inbounds nuw i8, ptr %0, i64 516
  %i.qo = load float, ptr %i.qn, align 4, !tbaa !11
  %i.qp = load float, ptr %i.qm, align 16, !tbaa !11
  %i.qq = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.qr = load float, ptr %i.qq, align 8, !tbaa !11
  %i.qs = fmul reassoc nsz arcp contract afn float %i.qo, 2.000000e-03
  %i.qt = fmul reassoc nsz arcp contract afn float %i.qp, 8.620690e-03
  %i.qu = fadd reassoc nsz arcp contract afn float %i.qt, f0x3E0D3DCB ; 3 uses
  %i.qv = fmul reassoc nsz arcp contract afn float %i.qr, 5.000000e-03
  %i.qw = fadd reassoc nsz arcp contract afn float %i.qu, %i.qs
  %i.qx = fsub reassoc nsz arcp contract afn float %i.qu, %i.qv ; 5 uses
  %i.qy = fcmp reassoc nsz arcp contract afn ogt float %i.qx, f0x3E53DCB1
  %i.qz = fmul reassoc nsz arcp contract afn float %i.qx, %i.qx
  %i.ra = fmul reassoc nsz arcp contract afn float %i.qz, %i.qx
  %i.rb = fmul reassoc nsz arcp contract afn float %i.qx, f0x3E038026
  %i.rc = fadd reassoc nsz arcp contract afn float %i.rb, f0xBC911AA6
  %i.rd = select reassoc nsz arcp contract afn i1 %i.qy, float %i.ra, float %i.rc
  %i.re = getelementptr inbounds nuw i8, ptr %i.qk, i64 4
  %i.rf = getelementptr inbounds nuw i8, ptr %i.qk, i64 8
  %i.rg = getelementptr inbounds nuw i8, ptr %i.qk, i64 20
  %i.rh = getelementptr inbounds nuw i8, ptr %i.qk, i64 28
  %i.ri = getelementptr inbounds nuw i8, ptr %i.qk, i64 36
  %i.rj = insertelement <2 x float> poison, float %i.qu, i64 0
  %i.rk = insertelement <2 x float> %i.rj, float %i.qw, i64 1 ; 5 uses
  %i.rl = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.rk, splat (float f0x3E53DCB1)
  %i.rm = fmul reassoc nsz arcp contract afn <2 x float> %i.rk, %i.rk
  %i.rn = fmul reassoc nsz arcp contract afn <2 x float> %i.rm, %i.rk
  %i.ro = fmul reassoc nsz arcp contract afn <2 x float> %i.rk, splat (float f0x3E038026)
  %i.rp = fadd reassoc nsz arcp contract afn <2 x float> %i.ro, splat (float f0xBC911AA6)
  %i.rq = select <2 x i1> %i.rl, <2 x float> %i.rn, <2 x float> %i.rp ; 4 uses
  %i.rr = extractelement <2 x float> %i.rq, i64 1
  %i.rs = fmul reassoc nsz arcp contract afn float %i.rr, 9.642000e-01
  %i.rt = fmul reassoc nsz arcp contract afn <2 x float> %i.rq, <float f0x3FC10BA0, float f0x3FA61CF4>
  %i.ru = shufflevector <2 x float> %i.rt, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.rv = fmul reassoc nsz arcp contract afn <2 x float> %i.rq, <float f0xBE82DEFC, float f0xBF066D1A>
  %i.rw = fadd reassoc nsz arcp contract afn <2 x float> %i.rv, %i.ru
  %i.rx = extractelement <2 x float> %i.rq, i64 0
  %i.ry = fadd reassoc nsz arcp contract afn float %i.rs, %i.rx ; 2 uses
  %i.rz = fmul reassoc nsz arcp contract afn float %i.ry, 0.000000e+00
  %i.sa = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.rd, i64 0 ; 2 uses
  %i.sb = shufflevector <4 x float> %i.sa, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.sc = fmul reassoc nsz arcp contract afn <4 x float> %i.sb, <float f0xBD2CB230, float f0x3C8AC481, float f0x3F7FE762, float -0.000000e+00>
  %i.sd = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.rz, i64 2
  %i.se = shufflevector <2 x float> %i.rw, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.sf = shufflevector <4 x float> %i.se, <4 x float> %i.sd, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.sg = fadd reassoc nsz arcp contract afn <4 x float> %i.sf, %i.sc
  %i.sh = tail call <12 x float> @llvm.masked.load.v12f32.p0(ptr nonnull align 4 %i.re, <12 x i1> <i1 true, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 true, i1 true>, <12 x float> poison), !tbaa !11 ; 3 uses
  %3 = shufflevector <4 x float> %i.sa, <4 x float> poison, <12 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %4 = shufflevector <12 x float> %i.sh, <12 x float> %3, <4 x i32> <i32 0, i32 0, i32 0, i32 12>
  %5 = fmul reassoc nsz arcp contract afn <4 x float> %4, <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float f0x3F532CA5>
  %6 = fadd reassoc nsz arcp contract afn <4 x float> %5, <float -2.000000e+00, float -2.000000e+00, float -2.000000e+00, float -0.000000e+00>
  %i.si = load <2 x float>, ptr %i.rf, align 4, !tbaa !11
  %i.sj = shufflevector <12 x float> %i.sh, <12 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 3, i32 poison>
  %i.sk = insertelement <4 x float> %i.sj, float %i.ry, i64 3
  %i.sl = shufflevector <2 x float> %i.si, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.sm = shufflevector <4 x float> %i.sl, <4 x float> %i.sk, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.sn = fadd reassoc nsz arcp contract afn <4 x float> %i.sm, %6 ; 2 uses
  %i.so = load <2 x float>, ptr %i.ri, align 4, !tbaa !11 ; 3 uses
  %i.sp = shufflevector <2 x float> %i.so, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.sq = shufflevector <2 x float> %i.so, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.sr = shufflevector <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x float> %i.sq, <4 x i32> <i32 poison, i32 poison, i32 4, i32 3>
  %i.ss = shufflevector <4 x float> %i.sp, <4 x float> %i.sr, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.st = fmul reassoc nsz arcp contract afn <4 x float> %i.ss, %i.sg
  %i.su = shufflevector <2 x float> %i.so, <2 x float> poison, <12 x i32> <i32 poison, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.sv = shufflevector <12 x float> %i.su, <12 x float> %i.sh, <4 x i32> <i32 1, i32 22, i32 23, i32 poison>
  %i.sw = insertelement <4 x float> %i.sv, float 0.000000e+00, i64 3
  %i.sx = fmul reassoc nsz arcp contract afn <4 x float> %i.sw, %i.st ; 2 uses
  %i.sy = fadd reassoc nsz arcp contract afn <4 x float> %i.sn, %i.sx
  %i.sz = fmul reassoc nsz arcp contract afn <4 x float> %i.sn, %i.sx
  %i.ta = shufflevector <4 x float> %i.sy, <4 x float> %i.sz, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.tb = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ta, <4 x float> zeroinitializer)
  %bc.i.i = bitcast <4 x float> %i.tb to <4 x i32> ; 2 uses
  %i.tc = load <2 x float>, ptr %i.rg, align 4, !tbaa !11 ; 3 uses
  %i.td = load <2 x float>, ptr %i.rh, align 4, !tbaa !11
  %i.te = shufflevector <2 x float> %i.tc, <2 x float> %i.td, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.tf = insertelement <4 x float> %i.te, float 0.000000e+00, i64 3
  %i.tg = shufflevector <2 x float> %i.tc, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.th = shufflevector <2 x float> %i.tc, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ti = shufflevector <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x float> %i.th, <4 x i32> <i32 poison, i32 poison, i32 4, i32 3>
  %i.tj = shufflevector <4 x float> %i.tg, <4 x float> %i.ti, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.tk = fmul reassoc nsz arcp contract afn <4 x float> %i.tf, %i.tj
  %i.tl = fsub reassoc nsz arcp contract afn <4 x float> <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 0.000000e+00>, %i.tk
  %i.tm = and <4 x i32> %bc.i.i, splat (i32 8388607)
  %i.tn = or disjoint <4 x i32> %i.tm, splat (i32 1065353216)
  %i.to = bitcast <4 x i32> %i.tn to <4 x float>  ; 5 uses
  %i.tp = lshr <4 x i32> %bc.i.i, splat (i32 23)
  %i.tq = and <4 x i32> %i.tp, splat (i32 255)
  %i.tr = add nsw <4 x i32> %i.tq, splat (i32 -127)
  %i.ts = sitofp <4 x i32> %i.tr to <4 x float>
  %i.tt = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.to, splat (float f0x3D74552F)
  %i.tu = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.tt, splat (float f0xBEEE7397)
  %i.tv = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.tu, %i.to
  %i.tw = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.tv, splat (float f0x3FBD96DD)
  %i.tx = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.tw, %i.to
  %i.ty = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.tx, splat (float f0xC02153F6)
  %i.tz = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.ty, %i.to
  %i.ua = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.tz, splat (float f0x4038D96C)
  %i.ub = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.to, splat (float -1.000000e+00)
  %i.uc = fmul reassoc nsz arcp contract afn <4 x float> %i.ua, %i.ub
  %i.ud = fadd reassoc nsz arcp contract afn <4 x float> %i.uc, %i.ts
  %i.ue = fmul reassoc nsz arcp contract afn <4 x float> %i.ud, %i.tl
  %i.uf = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ue, <4 x float> splat (float 1.290000e+02))
  %i.ug = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.uf, <4 x float> splat (float f0xC2FDFFFF)) ; 4 uses
  %i.uh = fadd reassoc nsz arcp contract afn <4 x float> %i.ug, splat (float -5.000000e-01)
  %i.ui = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.uh)
  %i.uj = sitofp reassoc nsz arcp contract afn <4 x i32> %i.ui to <4 x float> ; 5 uses
  %.sroa.014.0.vec.extract.i.i.i.i = extractelement <4 x float> %i.uj, i64 0
  %foldExtExtBinop = fsub reassoc nsz arcp contract afn <4 x float> %i.ug, %i.uj
  %i.uk = extractelement <4 x float> %foldExtExtBinop, i64 0 ; 4 uses
  %foldExtExtBinop50 = fsub reassoc nsz arcp contract afn <4 x float> %i.ug, %i.uj
  %i.ul = extractelement <4 x float> %foldExtExtBinop50, i64 1 ; 4 uses
  %foldExtExtBinop52 = fsub reassoc nsz arcp contract afn <4 x float> %i.ug, %i.uj
  %i.um = extractelement <4 x float> %foldExtExtBinop52, i64 2 ; 4 uses
  %i.un = fptosi float %.sroa.014.0.vec.extract.i.i.i.i to i32
  %i.uo = shl i32 %i.un, 23
  %i.up = add i32 %i.uo, 1065353216
  %i.uq = fmul reassoc nsz arcp contract afn float %i.uk, f0x3C5DBE69
  %i.ur = fadd reassoc nsz arcp contract afn float %i.uq, f0x3D5509F9
  %i.us = fmul reassoc nsz arcp contract afn float %i.ur, %i.uk
  %i.ut = fadd reassoc nsz arcp contract afn float %i.us, f0x3E773CC5
  %i.uu = fmul reassoc nsz arcp contract afn float %i.ut, %i.uk
  %i.uv = fadd reassoc nsz arcp contract afn float %i.uu, f0x3F3168B3
  %i.uw = fmul reassoc nsz arcp contract afn float %i.uv, %i.uk
  %i.ux = fadd reassoc nsz arcp contract afn float %i.uw, f0x3F800016
  %i.uy = fmul reassoc nsz arcp contract afn float %i.ul, f0x3C5DBE69
  %i.uz = fadd reassoc nsz arcp contract afn float %i.uy, f0x3D5509F9
  %i.va = fmul reassoc nsz arcp contract afn float %i.uz, %i.ul
  %i.vb = fadd reassoc nsz arcp contract afn float %i.va, f0x3E773CC5
  %i.vc = fmul reassoc nsz arcp contract afn float %i.vb, %i.ul
  %i.vd = fadd reassoc nsz arcp contract afn float %i.vc, f0x3F3168B3
  %i.ve = fmul reassoc nsz arcp contract afn float %i.vd, %i.ul
  %i.vf = fadd reassoc nsz arcp contract afn float %i.ve, f0x3F800016
  %i.vg = fmul reassoc nsz arcp contract afn float %i.um, f0x3C5DBE69
  %i.vh = fadd reassoc nsz arcp contract afn float %i.vg, f0x3D5509F9
  %i.vi = fmul reassoc nsz arcp contract afn float %i.vh, %i.um
  %i.vj = fadd reassoc nsz arcp contract afn float %i.vi, f0x3E773CC5
  %i.vk = fmul reassoc nsz arcp contract afn float %i.vj, %i.um
  %i.vl = fadd reassoc nsz arcp contract afn float %i.vk, f0x3F3168B3
  %i.vm = fmul reassoc nsz arcp contract afn float %i.vl, %i.um
  %i.vn = fadd reassoc nsz arcp contract afn float %i.vm, f0x3F800016
  %i.vo = bitcast i32 %i.up to float
  %i.vp = fmul reassoc nsz arcp contract afn float %i.ux, %i.vo ; 3 uses
  %i.vq = shufflevector <4 x float> %i.uj, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.vr = fptosi <2 x float> %i.vq to <2 x i32>
  %i.vs = shl <2 x i32> %i.vr, splat (i32 23)
  %i.vt = add <2 x i32> %i.vs, splat (i32 1065353216)
  %i.vu = bitcast <2 x i32> %i.vt to <2 x float>  ; 2 uses
  %i.vv = extractelement <2 x float> %i.vu, i64 0
  %i.vw = fmul reassoc nsz arcp contract afn float %i.vf, %i.vv ; 3 uses
  %i.vx = extractelement <2 x float> %i.vu, i64 1
  %i.vy = fmul reassoc nsz arcp contract afn float %i.vn, %i.vx ; 3 uses
  %i.vz = fcmp reassoc nsz arcp contract afn ogt float %i.vp, 1.000000e+00
  br i1 %i.vz, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.wa = fcmp reassoc nsz arcp contract afn olt float %i.vp, 0.000000e+00
  br i1 %i.wa, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.wb = fmul reassoc nsz arcp contract afn float %i.vp, f0x3E937A01
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %i.wc = phi float [ f0x3E937A01, %bb.u ], [ %i.wb, %bb.w ], [ 0.000000e+00, %bb.v ]
  %i.wd = fcmp reassoc nsz arcp contract afn ogt float %i.vw, 1.000000e+00
  br i1 %i.wd, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.we = fcmp reassoc nsz arcp contract afn olt float %i.vw, 0.000000e+00
  br i1 %i.we, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.wf = fmul reassoc nsz arcp contract afn float %i.vw, f0x3F363D62
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %i.wg = phi float [ f0x3F363D62, %bb.x ], [ %i.wf, %bb.z ], [ 0.000000e+00, %bb.y ]
  %i.wh = fcmp reassoc nsz arcp contract afn ogt float %i.vy, 1.000000e+00
  br i1 %i.wh, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.wi = fcmp reassoc nsz arcp contract afn olt float %i.vy, 0.000000e+00
  br i1 %i.wi, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.wj = fmul reassoc nsz arcp contract afn float %i.vy, f0x38B3B9D6
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa
  %i.wk = phi float [ f0x38B3B9D6, %bb.aa ], [ %i.wj, %bb.ac ], [ 0.000000e+00, %bb.ab ]
  %i.wl = fadd reassoc nsz arcp contract afn float %i.wg, %i.wc
  %i.wm = fadd reassoc nsz arcp contract afn float %i.wl, %i.wk
  %i.wn = fmul reassoc nsz arcp contract afn float %i.wm, 1.000000e+02
  %i.wo = getelementptr inbounds nuw i8, ptr %i.qk, i64 60 ; 2 uses
  store float %i.wn, ptr %i.wo, align 4, !tbaa !129
  %i.wp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !68
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wp, i64 104
  %i.wr = atomicrmw add ptr %i.wq, i32 1 seq_cst, align 4 ; 0 uses
  %i.ws = getelementptr inbounds nuw i8, ptr %i.ql, i64 232
  %i.wt = load ptr, ptr %i.ws, align 8, !tbaa !128
  %i.wu = load float, ptr %i.wo, align 4, !tbaa !129
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.wt, float noundef %i.wu) #23
  %i.wv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !68
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wv, i64 104
  %i.wx = atomicrmw sub ptr %i.ww, i32 1 seq_cst, align 4 ; 0 uses
  %i.wy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !114
  tail call void @dt_dev_add_history_item(ptr noundef %i.wy, ptr noundef nonnull %0, i32 noundef 1) #23
  br label %apply_lift_neutralize.exit

bb.ae:                                            ; preds = %bb.s
  %i.wz = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.xa = load ptr, ptr %i.wz, align 8, !tbaa !131
  %i.xb = icmp eq ptr %1, %i.xa
  br i1 %i.xb, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  tail call fastcc void @apply_autoluma(ptr noundef nonnull %0)
  br label %apply_lift_neutralize.exit

bb.ag:                                            ; preds = %bb.ae
  %i.xc = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.xd = load ptr, ptr %i.xc, align 8, !tbaa !132
  %i.xe = icmp eq ptr %1, %i.xd
  br i1 %i.xe, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  tail call fastcc void @apply_autocolor(ptr noundef nonnull %0)
  br label %apply_lift_neutralize.exit

bb.ai:                                            ; preds = %bb.ag
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.22) #23
  br label %apply_lift_neutralize.exit

apply_lift_neutralize.exit:                       ; preds = %bb.ad, %bb.t, %bb.r, %bb.q, %bb.o, %bb.n, %bb.l, %bb.k, %bb.i, %bb.h, %bb.f, %bb.e, %bb.c, %bb.b, %bb.af, %bb.ai, %bb.ah
  %.val = load ptr, ptr %i.a, align 16, !tbaa !54 ; 8 uses
  %i.xf = getelementptr inbounds nuw i8, ptr %.val, i64 324
  %i.xg = getelementptr inbounds nuw i8, ptr %.val, i64 332
  %i.xh = load i32, ptr %i.xg, align 4, !tbaa !22
  %i.xi = icmp eq i32 %i.xh, 1
  br i1 %i.xi, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %apply_lift_neutralize.exit
  %i.xj = getelementptr inbounds nuw i8, ptr %.val, i64 328
  %i.xk = load i32, ptr %i.xj, align 4, !tbaa !22
  %i.xl = icmp eq i32 %i.xk, 1
  br i1 %i.xl, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.xm = load i32, ptr %i.xf, align 4, !tbaa !22
  %i.xn = icmp eq i32 %i.xm, 1
  br i1 %i.xn, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %apply_lift_neutralize.exit
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.str.75.sink.i = phi ptr [ @.str.75, %bb.al ], [ @.str.93, %bb.ak ]
end_hunk_0
begin_hunk_1_@_configure_slider_blocks:bb.a
bb.f:                                             ; preds = %bb.c
  %i.ba = icmp eq i32 %i.ag, 1                    ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !148
  %i.bd = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.106, i32 noundef 5) #23
  tail call void @gtk_label_set_text(ptr noundef %i.bc, ptr noundef %i.bd) #23
  %.sroa.speculated108 = select i1 %i.ba, ptr %i.aa, ptr %i.ad
  %i.be = tail call ptr @dcgettext(ptr noundef null, ptr noundef %.sroa.speculated108, i32 noundef 5) #23
  %i.bf = tail call ptr @gtk_label_new(ptr noundef %i.be) #23 ; 9 uses
  %i.bg = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.101, i32 noundef 5) #23
  tail call void @gtk_widget_set_tooltip_text(ptr noundef %i.bf, ptr noundef %i.bg) #23
  tail call void @gtk_label_set_ellipsize(ptr noundef %i.bf, i32 noundef 3) #23
  tail call void @gtk_widget_set_hexpand(ptr noundef %i.bf, i32 noundef 1) #23
  %.sroa.speculated105 = select i1 %i.ba, ptr %i.ab, ptr %i.ae
  %i.bh = tail call ptr @dcgettext(ptr noundef null, ptr noundef %.sroa.speculated105, i32 noundef 5) #23
  %i.bi = tail call ptr @gtk_label_new(ptr noundef %i.bh) #23 ; 10 uses
  %i.bj = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.102, i32 noundef 5) #23
  tail call void @gtk_widget_set_tooltip_text(ptr noundef %i.bi, ptr noundef %i.bj) #23
  tail call void @gtk_label_set_ellipsize(ptr noundef %i.bi, i32 noundef 3) #23
  tail call void @gtk_widget_set_hexpand(ptr noundef %i.bi, i32 noundef 1) #23
  %.sroa.speculated = select i1 %i.ba, ptr %i.ac, ptr %i.af
  %i.bk = tail call ptr @dcgettext(ptr noundef null, ptr noundef %.sroa.speculated, i32 noundef 5) #23
  %i.bl = tail call ptr @gtk_label_new(ptr noundef %i.bk) #23 ; 8 uses
  %i.bm = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.103, i32 noundef 5) #23
  tail call void @gtk_widget_set_tooltip_text(ptr noundef %i.bl, ptr noundef %i.bm) #23
  tail call void @gtk_label_set_ellipsize(ptr noundef %i.bl, i32 noundef 3) #23
  tail call void @gtk_widget_set_hexpand(ptr noundef %i.bl, i32 noundef 1) #23
  %i.bn = tail call i32 @g_strcmp0(ptr noundef %i.ah, ptr noundef nonnull @.str.107) #23
  %.not74 = icmp eq i32 %i.bn, 0
  br i1 %.not74, label %bb.g, label %.loopexit76.loopexit86

bb.g:                                             ; preds = %bb.f
  %i.bo = tail call ptr @gtk_grid_new() #23       ; 11 uses
  tail call void @gtk_grid_set_column_homogeneous(ptr noundef %i.bo, i32 noundef 1) #23
  tail call void @gtk_grid_set_column_spacing(ptr noundef %i.bo, i32 noundef 8) #23
  tail call void @dt_gui_add_class(ptr noundef %i.bf, ptr noundef nonnull @.str.108) #23
  tail call void @gtk_container_add(ptr noundef %i.bo, ptr noundef %i.bf) #23
  br i1 %.not75, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @gtk_widget_show(ptr noundef %i.bf) #23
  %i.bp = load ptr, ptr %i.i, align 8, !tbaa !147
  tail call void @gtk_grid_attach_next_to(ptr noundef %i.bo, ptr noundef %i.bp, ptr noundef %i.bf, i32 noundef 3, i32 noundef 1, i32 noundef 1) #23
  tail call void @dt_gui_add_class(ptr noundef %i.bi, ptr noundef nonnull @.str.108) #23
  tail call void @gtk_container_add(ptr noundef %i.bo, ptr noundef %i.bi) #23
  tail call void @gtk_widget_show(ptr noundef %i.bi) #23
  br label %bb.i

.critedge:                                        ; preds = %bb.g
  %i.bq = load ptr, ptr %i.i, align 8, !tbaa !147
  tail call void @gtk_grid_attach_next_to(ptr noundef %i.bo, ptr noundef %i.bq, ptr noundef %i.bf, i32 noundef 3, i32 noundef 1, i32 noundef 1) #23
  tail call void @dt_gui_add_class(ptr noundef %i.bi, ptr noundef nonnull @.str.108) #23
  tail call void @gtk_container_add(ptr noundef %i.bo, ptr noundef %i.bi) #23
  br label %bb.i

bb.i:                                             ; preds = %.critedge, %bb.h
  %i.br = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !147
  tail call void @gtk_grid_attach_next_to(ptr noundef %i.bo, ptr noundef %i.bs, ptr noundef %i.bi, i32 noundef 3, i32 noundef 1, i32 noundef 1) #23
  tail call void @dt_gui_add_class(ptr noundef %i.bl, ptr noundef nonnull @.str.108) #23
  tail call void @gtk_container_add(ptr noundef %i.bo, ptr noundef %i.bl) #23
  br i1 %.not75, label %.loopexit76.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @gtk_widget_show(ptr noundef %i.bl) #23
  br label %.loopexit76.loopexit

.loopexit76.loopexit:                             ; preds = %bb.j, %bb.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !147
  tail call void @gtk_grid_attach_next_to(ptr noundef %i.bo, ptr noundef %i.bu, ptr noundef %i.bl, i32 noundef 3, i32 noundef 1, i32 noundef 1) #23
  br label %.loopexit

.loopexit76.loopexit86:                           ; preds = %bb.f
  %i.bv = tail call ptr @gtk_notebook_new() #23   ; 4 uses
  %i.bw = load ptr, ptr %i.i, align 8, !tbaa !147
  %i.bx = tail call i32 @gtk_notebook_append_page(ptr noundef %i.bv, ptr noundef %i.bw, ptr noundef %i.bf) #23 ; 0 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !147
  %i.ca = tail call i32 @gtk_notebook_append_page(ptr noundef %i.bv, ptr noundef %i.bz, ptr noundef %i.bi) #23 ; 0 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !147
  %i.cd = tail call i32 @gtk_notebook_append_page(ptr noundef %i.bv, ptr noundef %i.cc, ptr noundef %i.bl) #23 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit76.loopexit, %.loopexit76.loopexit86, %.loopexit.loopexit
  %.1 = phi ptr [ %i.ak, %.loopexit.loopexit ], [ %i.bo, %.loopexit76.loopexit ], [ %i.bv, %.loopexit76.loopexit86 ] ; 2 uses
  call void @g_free(ptr noundef %i.ah) #23
  %i.ce = load ptr, ptr %i.i, align 8, !tbaa !147
  call void @g_object_unref(ptr noundef %i.ce) #23
  %i.cf = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !147
  call void @g_object_unref(ptr noundef %i.cg) #23
  %i.ch = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !147
  call void @g_object_unref(ptr noundef %i.ci) #23
  %i.cj = load ptr, ptr %i.f, align 8, !tbaa !146
  call void @gtk_container_add(ptr noundef %i.cj, ptr noundef %.1) #23
  br i1 %.not75, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.loopexit
  call void @gtk_widget_show(ptr noundef %.1) #23
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.loopexit
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @set_HSL_sliders(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.b = load float, ptr %i.a, align 4, !tbaa !11
  %i.c = fmul reassoc nsz arcp contract afn float %i.b, 5.000000e-01 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load float, ptr %i.d, align 4, !tbaa !11
  %i.f = fmul reassoc nsz arcp contract afn float %i.e, 5.000000e-01 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.h = load float, ptr %i.g, align 4, !tbaa !11
  %i.i = fmul reassoc nsz arcp contract afn float %i.h, 5.000000e-01 ; 5 uses
  %i.j = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.c, float %i.f)
  %i.k = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.j, float %i.i) ; 6 uses
  %i.l = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.c, float %i.f)
  %i.m = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.l, float %i.i) ; 3 uses
  %i.n = fsub reassoc nsz arcp contract afn float %i.k, %i.m ; 5 uses
  %i.o = fcmp reassoc nsz arcp contract afn une float %i.n, 0.000000e+00
  br i1 %i.o, label %bb.b, label %rgb2hsl.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.p = fadd reassoc nsz arcp contract afn float %i.m, %i.k ; 2 uses
  %i.q = fmul reassoc nsz arcp contract afn float %i.p, 5.000000e-01
  %i.r = fcmp reassoc nsz arcp contract afn olt float %i.q, 5.000000e-01
  br i1 %i.r, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = fpext reassoc nsz arcp contract afn float %i.k to double
  %i.t = fpext reassoc nsz arcp contract afn float %i.m to double
  %i.u = fadd reassoc nsz arcp contract afn double %i.s, %i.t
  %i.v = fsub reassoc nsz arcp contract afn double 2.000000e+00, %i.u
  %i.w = fptrunc reassoc nsz arcp contract afn double %i.v to float
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink.i = phi float [ %i.w, %bb.c ], [ %i.p, %bb.b ]
  %i.x = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %.sink.i, float f0x37800000)
  %i.y = fdiv reassoc nsz arcp contract afn float %i.n, %i.x
  %i.z = fcmp reassoc nsz arcp contract afn oeq float %i.k, %i.c
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aa = fsub reassoc nsz arcp contract afn float %i.f, %i.i
  %i.ab = fdiv reassoc nsz arcp contract afn float %i.aa, %i.n
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.ac = fcmp reassoc nsz arcp contract afn oeq float %i.k, %i.f
  br i1 %i.ac, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ad = fsub reassoc nsz arcp contract afn float %i.i, %i.c
  %i.ae = fdiv reassoc nsz arcp contract afn float %i.ad, %i.n
  %i.af = fadd reassoc nsz arcp contract afn float %i.ae, 2.000000e+00
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.ag = fcmp reassoc nsz arcp contract afn oeq float %i.k, %i.i
  br i1 %i.ag, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ah = fsub reassoc nsz arcp contract afn float %i.c, %i.f
  %i.ai = fdiv reassoc nsz arcp contract afn float %i.ah, %i.n
  %i.aj = fadd reassoc nsz arcp contract afn float %i.ai, 4.000000e+00
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.e
  %.043.i = phi nsz float [ %i.ab, %bb.e ], [ %i.af, %bb.g ], [ %i.aj, %bb.i ], [ 0.000000e+00, %bb.h ]
  %i.ak = fpext reassoc nsz arcp contract afn float %.043.i to double
  %i.al = fmul reassoc nsz arcp contract afn double %i.ak, f0x3FC5555555555555 ; 3 uses
  %i.am = fptrunc reassoc nsz arcp contract afn double %i.al to float ; 3 uses
  %i.an = fcmp reassoc nsz arcp contract afn olt double %i.al, f0xB690000000000000
  br i1 %i.an, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ao = fadd reassoc nsz arcp contract afn float %i.am, 1.000000e+00
  br label %rgb2hsl.exit

bb.l:                                             ; preds = %bb.j
  %i.ap = fcmp reassoc nsz arcp contract afn ogt double %i.al, f0x3FF0000010000000
  br i1 %i.ap, label %bb.m, label %rgb2hsl.exit

bb.m:                                             ; preds = %bb.l
  %i.aq = fadd reassoc nsz arcp contract afn float %i.am, -1.000000e+00
  br label %rgb2hsl.exit

rgb2hsl.exit:                                     ; preds = %bb.k, %bb.l, %bb.m
  %.1.i = phi nsz float [ %i.ao, %bb.k ], [ %i.aq, %bb.m ], [ %i.am, %bb.l ] ; 2 uses
  %i.ar = fcmp reassoc nsz arcp contract afn une float %.1.i, -1.000000e+00
  br i1 %i.ar, label %rgb2hsl.exit.thread, label %bb.t

rgb2hsl.exit.thread:                              ; preds = %bb.a, %rgb2hsl.exit
  %.0.i17 = phi float [ %.1.i, %rgb2hsl.exit ], [ 0.000000e+00, %bb.a ] ; 2 uses
  %.1.i16 = phi float [ %i.y, %rgb2hsl.exit ], [ 0.000000e+00, %bb.a ]
  %i.as = fmul reassoc nsz arcp contract afn float %.0.i17, 3.600000e+02
  tail call void @dt_bauhaus_slider_set(ptr noundef %0, float noundef %i.as) #23
  %i.at = fmul reassoc nsz arcp contract afn float %.1.i16, 1.000000e+02
  tail call void @dt_bauhaus_slider_set(ptr noundef %1, float noundef %i.at) #23
  %i.au = fmul reassoc nsz arcp contract afn float %.0.i17, 6.000000e+00 ; 8 uses
  %i.av = fcmp reassoc nsz arcp contract afn olt float %i.au, 4.000000e+00 ; 2 uses
  %.v.i.i = select i1 %i.av, float 2.000000e+00, float -4.000000e+00
  %i.aw = fadd reassoc nsz arcp contract afn float %.v.i.i, %i.au ; 5 uses
  %i.ax = fcmp reassoc nsz arcp contract afn olt float %i.aw, 1.000000e+00
  br i1 %i.ax, label %hue2rgb.exit.i.i, label %bb.n

bb.n:                                             ; preds = %rgb2hsl.exit.thread
  %i.ay = fcmp reassoc nsz arcp contract afn olt float %i.aw, 3.000000e+00
  br i1 %i.ay, label %hue2rgb.exit.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.az = fcmp reassoc nsz arcp contract afn olt float %i.aw, 4.000000e+00
  %i.ba = fsub reassoc nnan nsz arcp contract afn float 4.000000e+00, %i.aw
  %i.bb = select reassoc nsz arcp contract afn i1 %i.az, float %i.ba, float 0.000000e+00
  br label %hue2rgb.exit.i.i

hue2rgb.exit.i.i:                                 ; preds = %bb.o, %bb.n, %rgb2hsl.exit.thread
  %.0.i.i.i = phi nsz float [ 1.000000e+00, %bb.n ], [ %i.bb, %bb.o ], [ %i.aw, %rgb2hsl.exit.thread ]
  %i.bc = fcmp reassoc nsz arcp contract afn olt float %i.au, 1.000000e+00
  br i1 %i.bc, label %hue2rgb.exit36.i.i, label %bb.p

bb.p:                                             ; preds = %hue2rgb.exit.i.i
  %i.bd = fcmp reassoc nsz arcp contract afn olt float %i.au, 3.000000e+00
  br i1 %i.bd, label %hue2rgb.exit36.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.be = fsub reassoc nnan nsz arcp contract afn float 4.000000e+00, %i.au
  %i.bf = select reassoc nsz arcp contract afn i1 %i.av, float %i.be, float 0.000000e+00
  br label %hue2rgb.exit36.i.i

hue2rgb.exit36.i.i:                               ; preds = %bb.q, %bb.p, %hue2rgb.exit.i.i
  %.0.i35.i.i = phi nsz float [ 1.000000e+00, %bb.p ], [ %i.bf, %bb.q ], [ %i.au, %hue2rgb.exit.i.i ]
  %i.bg = fcmp reassoc nsz arcp contract afn ogt float %i.au, 2.000000e+00
  %.v34.i.i = select i1 %i.bg, float -2.000000e+00, float 4.000000e+00
  %i.bh = fadd reassoc nsz arcp contract afn float %.v34.i.i, %i.au ; 5 uses
  %i.bi = fcmp reassoc nsz arcp contract afn olt float %i.bh, 1.000000e+00
  br i1 %i.bi, label %update_saturation_slider_color.exit, label %bb.r

bb.r:                                             ; preds = %hue2rgb.exit36.i.i
  %i.bj = fcmp reassoc nsz arcp contract afn olt float %i.bh, 3.000000e+00
  br i1 %i.bj, label %update_saturation_slider_color.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bk = fcmp reassoc nsz arcp contract afn olt float %i.bh, 4.000000e+00
  %i.bl = fsub reassoc nnan nsz arcp contract afn float 4.000000e+00, %i.bh
  %i.bm = select reassoc nsz arcp contract afn i1 %i.bk, float %i.bl, float 0.000000e+00
  br label %update_saturation_slider_color.exit

update_saturation_slider_color.exit:              ; preds = %hue2rgb.exit36.i.i, %bb.r, %bb.s
  %.0.i37.i.i = phi nsz float [ 1.000000e+00, %bb.r ], [ %i.bm, %bb.s ], [ %i.bh, %hue2rgb.exit36.i.i ]
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %1, float noundef 1.000000e+00, float noundef %.0.i.i.i, float noundef %.0.i35.i.i, float noundef %.0.i37.i.i) #23
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %1, float noundef 0.000000e+00, float noundef 5.000000e-01, float noundef 5.000000e-01, float noundef 5.000000e-01) #23
  tail call void @gtk_widget_queue_draw(ptr noundef %1) #23
  br label %bb.u

bb.t:                                             ; preds = %rgb2hsl.exit
  tail call void @dt_bauhaus_slider_set(ptr noundef %0, float noundef -1.000000e+00) #23
  tail call void @dt_bauhaus_slider_set(ptr noundef %1, float noundef 0.000000e+00) #23
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %update_saturation_slider_color.exit
  tail call void @gtk_widget_queue_draw(ptr noundef %1) #23
  ret void
}

; Function Attrs: nounwind uwtable
define void @gui_init(ptr noundef initializes((704, 712), (824, 832)) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [1 x ptr], align 8                ; 2 uses
  %i.b = alloca [2 x ptr], align 8                ; 3 uses
  %i.c = alloca [2 x ptr], align 8                ; 3 uses
  %i.d = alloca [10 x i8], align 1                ; 26 uses
  %i.e = alloca [1 x ptr], align 8                ; 2 uses
  %i.f = alloca [3 x ptr], align 16               ; 3 uses
  %i.g = alloca [1 x ptr], align 8                ; 2 uses
  %i.h = alloca [3 x ptr], align 16               ; 3 uses
  %i.i = alloca [1 x ptr], align 8                ; 2 uses
  %i.j = alloca [3 x ptr], align 16               ; 3 uses
  %i.k = alloca [4 x ptr], align 8                ; 4 uses
  %i.l = alloca [6 x ptr], align 8                ; 7 uses
  %i.m = tail call ptr @dt_alloc_aligned(i64 noundef 336) #23 ; 39 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %_iop_gui_alloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(336) %i.m, i8 0, i64 324, i1 false)
  br label %_iop_gui_alloc.exit

_iop_gui_alloc.exit:                              ; preds = %bb.a, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 704
  store ptr %i.m, ptr %i.n, align 16, !tbaa !54
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 56 ; 2 uses
  store ptr null, ptr %i.o, align 8, !tbaa !142
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 300
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 324
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.p, i8 0, i64 12, i1 false), !tbaa !22
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.q, i8 0, i64 12, i1 false), !tbaa !22
  %i.r = tail call ptr @gtk_box_new(i32 noundef 1, i32 noundef 0) #23
  store ptr inttoptr (i64 -1 to ptr), ptr %i.a, align 8, !tbaa !20
  %i.s = call ptr @dt_gui_box_add(ptr noundef nonnull @.str.30, i32 noundef 1850, ptr noundef nonnull @__FUNCTION__.gui_init, ptr noundef %i.r, ptr noundef nonnull %i.a) #23 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 824 ; 10 uses
  store ptr %i.s, ptr %i.t, align 8, !tbaa !149
  %i.u = call ptr @dt_bauhaus_combobox_from_params(ptr noundef %0, ptr noundef nonnull @.str.31) #23 ; 2 uses
  store ptr %i.u, ptr %i.o, align 8, !tbaa !142
  %i.v = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.32, i32 noundef 5) #23
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.u, ptr noundef %i.v) #23
  %i.w = call ptr @dt_bauhaus_combobox_new(ptr noundef %0) #23 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 64 ; 8 uses
  store ptr %i.w, ptr %i.x, align 8, !tbaa !143
  %i.y = call ptr @dt_bauhaus_widget_set_label(ptr noundef %i.w, ptr noundef null, ptr noundef nonnull @.str.33) #23 ; 0 uses
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !143
  %i.aa = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.29, i32 noundef 5) #23
  call void @dt_bauhaus_combobox_add(ptr noundef %i.z, ptr noundef %i.aa) #23
  %i.ab = load ptr, ptr %i.x, align 8, !tbaa !143
  %i.ac = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.27, i32 noundef 5) #23
  call void @dt_bauhaus_combobox_add(ptr noundef %i.ab, ptr noundef %i.ac) #23
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !143
  %i.ae = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.34, i32 noundef 5) #23
  call void @dt_bauhaus_combobox_add(ptr noundef %i.ad, ptr noundef %i.ae) #23
  %i.af = load ptr, ptr %i.t, align 8, !tbaa !149
  %i.ag = load ptr, ptr %i.x, align 8, !tbaa !143
  store ptr %i.ag, ptr %i.b, align 8, !tbaa !20
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 -1 to ptr), ptr %i.ah, align 8, !tbaa !20
  %i.ai = call ptr @dt_gui_box_add(ptr noundef nonnull @.str.30, i32 noundef 1862, ptr noundef nonnull @__FUNCTION__.gui_init, ptr noundef %i.af, ptr noundef nonnull %i.b) #23 ; 0 uses
  %i.aj = load ptr, ptr %i.x, align 8, !tbaa !143
  %i.ak = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.32, i32 noundef 5) #23
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.aj, ptr noundef %i.ak) #23
  %i.al = load ptr, ptr %i.x, align 8, !tbaa !143
  %i.am = call i64 @g_signal_connect_data(ptr noundef %i.al, ptr noundef nonnull @.str.35, ptr noundef nonnull @controls_callback, ptr noundef %0, ptr noundef null, i32 noundef 0) #23 ; 0 uses
  %i.an = call ptr @dt_conf_get_string_const(ptr noundef nonnull @.str.26) #23 ; 2 uses
  %i.ao = load ptr, ptr %i.x, align 8, !tbaa !143
  %i.ap = call i32 @g_strcmp0(ptr noundef %i.an, ptr noundef nonnull @.str.27) #23
  %.not = icmp eq i32 %i.ap, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_iop_gui_alloc.exit
  %i.aq = call i32 @g_strcmp0(ptr noundef %i.an, ptr noundef nonnull @.str.28) #23
  %.not309 = icmp eq i32 %i.aq, 0
  %i.ar = select i1 %.not309, i32 2, i32 0
  br label %bb.d

bb.d:                                             ; preds = %_iop_gui_alloc.exit, %bb.c
  %i.as = phi i32 [ %i.ar, %bb.c ], [ 1, %_iop_gui_alloc.exit ]
  call void @dt_bauhaus_combobox_set(ptr noundef %i.ao, i32 noundef %i.as) #23
  %i.at = call ptr @gtk_box_new(i32 noundef 1, i32 noundef 0) #23
  %i.au = call ptr @g_dpgettext(ptr noundef null, ptr noundef nonnull @.str.36, i64 noundef 8) #23
  %i.av = call ptr @gtk_label_new(ptr noundef %i.au) #23 ; 5 uses
  call void @gtk_widget_set_halign(ptr noundef %i.av, i32 noundef 0) #23
  call void @gtk_label_set_xalign(ptr noundef %i.av, float noundef 5.000000e-01) #23
  call void @gtk_label_set_ellipsize(ptr noundef %i.av, i32 noundef 3) #23
  call void @dt_gui_add_class(ptr noundef %i.av, ptr noundef nonnull @.str.108) #23
  store ptr %i.av, ptr %i.c, align 8, !tbaa !20
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 -1 to ptr), ptr %i.aw, align 8, !tbaa !20
  %i.ax = call ptr @dt_gui_box_add(ptr noundef nonnull @.str.30, i32 noundef 1870, ptr noundef nonnull @__FUNCTION__.gui_init, ptr noundef %i.at, ptr noundef nonnull %i.c) #23 ; 2 uses
  store ptr %i.ax, ptr %i.t, align 8, !tbaa !149
  store ptr %i.ax, ptr %i.m, align 8, !tbaa !144
  %i.ay = call ptr @dt_bauhaus_slider_from_params(ptr noundef nonnull %0, ptr noundef nonnull @.str.37) #23 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.m, i64 216 ; 4 uses
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !150
  call void @dt_bauhaus_slider_set_soft_range(ptr noundef %i.ay, float noundef 5.000000e-01, float noundef 1.500000e+00) #23
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !150
  call void @dt_bauhaus_slider_set_digits(ptr noundef %i.ba, i32 noundef 4) #23
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !150
  call void @dt_bauhaus_slider_set_format(ptr noundef %i.bb, ptr noundef nonnull @.str.38) #23
  %i.bc = load ptr, ptr %i.az, align 8, !tbaa !150
  %i.bd = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.39, i32 noundef 5) #23
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.bc, ptr noundef %i.bd) #23
  %i.be = call ptr @dt_bauhaus_slider_from_params(ptr noundef nonnull %0, ptr noundef nonnull @.str.40) #23 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.m, i64 240 ; 4 uses
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !151
  call void @dt_bauhaus_slider_set_soft_range(ptr noundef %i.be, float noundef 5.000000e-01, float noundef 1.500000e+00) #23
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !151
  call void @dt_bauhaus_slider_set_digits(ptr noundef %i.bg, i32 noundef 4) #23
  %i.bh = load ptr, ptr %i.bf, align 8, !tbaa !151
  call void @dt_bauhaus_slider_set_format(ptr noundef %i.bh, ptr noundef nonnull @.str.38) #23
  %i.bi = load ptr, ptr %i.bf, align 8, !tbaa !151
  %i.bj = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.41, i32 noundef 5) #23
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.bi, ptr noundef %i.bj) #23
  %i.bk = call ptr @dt_bauhaus_slider_from_params(ptr noundef nonnull %0, ptr noundef nonnull @.str.42) #23
  %i.bl = call ptr @dt_color_picker_new(ptr noundef nonnull %0, i32 noundef 2, ptr noundef %i.bk) #23 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.m, i64 232 ; 2 uses
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !128
  call void @dt_bauhaus_slider_set_format(ptr noundef %i.bl, ptr noundef nonnull @.str.38) #23
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !128
  %i.bo = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.43, i32 noundef 5) #23
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.bn, ptr noundef %i.bo) #23
  %i.bp = call ptr @dt_bauhaus_slider_from_params(ptr noundef nonnull %0, ptr noundef nonnull @.str.44) #23 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.m, i64 224 ; 6 uses
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !152
  call void @dt_bauhaus_slider_set_soft_range(ptr noundef %i.bp, float noundef 5.000000e-01, float noundef 1.500000e+00) #23
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !152
  call void @dt_bauhaus_slider_set_digits(ptr noundef %i.br, i32 noundef 4) #23
  %i.bs = load ptr, ptr %i.bq, align 8, !tbaa !152
  call void @dt_bauhaus_slider_set_factor(ptr noundef %i.bs, float noundef -1.000000e+02) #23
  %i.bt = load ptr, ptr %i.bq, align 8, !tbaa !152
  call void @dt_bauhaus_slider_set_offset(ptr noundef %i.bt, float noundef 1.000000e+02) #23
  %i.bu = load ptr, ptr %i.bq, align 8, !tbaa !152
  call void @dt_bauhaus_slider_set_format(ptr noundef %i.bu, ptr noundef nonnull @.str.38) #23
end_hunk_1
