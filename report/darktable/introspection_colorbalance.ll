Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_colorbalance?download=true
inline.NumInlined: 167
inline.NumDeleted: 59
loop-unroll.NumCompletelyUnrolled: 41
loop-unroll.NumUnrolled: 41
begin_hunk_0_@color_picker_apply:bb.a
  %i.kr = atomicrmw add ptr %i.kq, i32 1 seq_cst, align 4 ; 0 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.hv, i64 184
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !103
  %i.ku = load float, ptr %i.iw, align 4, !tbaa !12
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.kt, float noundef %i.ku) #23
  %i.kv = getelementptr inbounds nuw i8, ptr %i.hv, i64 192
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !104
  %i.kx = load float, ptr %i.ix, align 4, !tbaa !12
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.kw, float noundef %i.kx) #23
  %i.ky = getelementptr inbounds nuw i8, ptr %i.hv, i64 200
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !105
  %i.la = load float, ptr %i.ko, align 4, !tbaa !12
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.kz, float noundef %i.la) #23
  %i.lb = getelementptr inbounds nuw i8, ptr %i.hv, i64 88
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !102
  %i.ld = getelementptr inbounds nuw i8, ptr %i.hv, i64 112
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !106
  tail call fastcc void @set_HSL_sliders(ptr noundef %i.lc, ptr noundef %i.le, ptr noundef nonnull %i.ir)
  %i.lf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !90
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 104
  %i.lh = atomicrmw sub ptr %i.lg, i32 1 seq_cst, align 4 ; 0 uses
  %i.li = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !96
  tail call void @dt_dev_add_history_item(ptr noundef %i.li, ptr noundef nonnull %0, i32 noundef 1) #23
  br label %apply_lift_neutralize.exit

bb.j:                                             ; preds = %bb.g
  %i.lj = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !107
  %i.ll = icmp eq ptr %1, %i.lk
  br i1 %i.ll, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.lm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !90
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 104
  %i.lo = load atomic i32, ptr %i.ln seq_cst, align 4
  %.not.i35 = icmp eq i32 %i.lo, 0
  br i1 %.not.i35, label %bb.l, label %apply_lift_neutralize.exit

bb.l:                                             ; preds = %bb.k
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !91 ; 2 uses
  %i.lr = load ptr, ptr %i.a, align 16, !tbaa !47 ; 3 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.lt = load float, ptr %i.ls, align 16, !tbaa !12
  %i.lu = fmul reassoc nsz arcp contract afn float %i.lt, 8.620690e-03
  %i.lv = fadd reassoc nsz arcp contract afn float %i.lu, f0x3E0D3DCB ; 5 uses
  %i.lw = fcmp reassoc nsz arcp contract afn ogt float %i.lv, f0x3E53DCB1
  %i.lx = fmul reassoc nsz arcp contract afn float %i.lv, %i.lv
  %i.ly = fmul reassoc nsz arcp contract afn float %i.lx, %i.lv
  %i.lz = fmul reassoc nsz arcp contract afn float %i.lv, f0x3E038026
  %i.ma = fadd reassoc nsz arcp contract afn float %i.lz, f0xBC911AA6
  %i.mb = select reassoc nsz arcp contract afn i1 %i.lw, float %i.ly, float %i.ma ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lr, i64 312
  store float %i.mb, ptr %i.mc, align 8, !tbaa !12
  %i.md = getelementptr inbounds nuw i8, ptr %i.lr, i64 324
  store i32 1, ptr %i.md, align 4, !tbaa !15
  %i.me = getelementptr inbounds nuw i8, ptr %i.lq, i64 36
  %i.mf = load float, ptr %i.me, align 4, !tbaa !12
  %i.mg = fmul reassoc nsz arcp contract afn float %i.mb, %i.mf
  %i.mh = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.mg
  %i.mi = getelementptr inbounds nuw i8, ptr %i.lq, i64 4 ; 2 uses
  store float %i.mh, ptr %i.mi, align 4, !tbaa !12
  %i.mj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !90
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 104
  %i.ml = atomicrmw add ptr %i.mk, i32 1 seq_cst, align 4 ; 0 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.lr, i64 144
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !107
  %i.mo = load float, ptr %i.mi, align 4, !tbaa !12
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.mn, float noundef %i.mo) #23
  %i.mp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !90
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 104
  %i.mr = atomicrmw sub ptr %i.mq, i32 1 seq_cst, align 4 ; 0 uses
  %i.ms = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !96
  tail call void @dt_dev_add_history_item(ptr noundef %i.ms, ptr noundef nonnull %0, i32 noundef 1) #23
  br label %apply_lift_neutralize.exit

bb.m:                                             ; preds = %bb.j
  %i.mt = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !108
  %i.mv = icmp eq ptr %1, %i.mu
  br i1 %i.mv, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.mw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !90
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 104
  %i.my = load atomic i32, ptr %i.mx seq_cst, align 4
  %.not.i36 = icmp eq i32 %i.my, 0
  br i1 %.not.i36, label %bb.o, label %apply_lift_neutralize.exit

bb.o:                                             ; preds = %bb.n
  %i.mz = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !91 ; 3 uses
  %i.nb = load ptr, ptr %i.a, align 16, !tbaa !47 ; 3 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.nd = load float, ptr %i.nc, align 16, !tbaa !12
  %i.ne = fmul reassoc nsz arcp contract afn float %i.nd, 8.620690e-03
  %i.nf = fadd reassoc nsz arcp contract afn float %i.ne, f0x3E0D3DCB ; 5 uses
  %i.ng = fcmp reassoc nsz arcp contract afn ogt float %i.nf, f0x3E53DCB1
  %i.nh = fmul reassoc nsz arcp contract afn float %i.nf, %i.nf
  %i.ni = fmul reassoc nsz arcp contract afn float %i.nh, %i.nf
  %i.nj = fmul reassoc nsz arcp contract afn float %i.nf, f0x3E038026
  %i.nk = fadd reassoc nsz arcp contract afn float %i.nj, f0xBC911AA6
  %i.nl = select reassoc nsz arcp contract afn i1 %i.ng, float %i.ni, float %i.nk ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nb, i64 316
  store float %i.nl, ptr %i.nm, align 4, !tbaa !12
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nb, i64 328
  store i32 1, ptr %i.nn, align 4, !tbaa !15
  %i.no = getelementptr inbounds nuw i8, ptr %i.na, i64 36
  %i.np = load float, ptr %i.no, align 4, !tbaa !12
  %i.nq = fmul reassoc nsz arcp contract afn float %i.nl, %i.np
  %i.nr = getelementptr inbounds nuw i8, ptr %i.na, i64 4
  %i.ns = load float, ptr %i.nr, align 4, !tbaa !12
  %i.nt = fadd reassoc nsz arcp contract afn float %i.ns, %i.nq
  %i.nu = fadd reassoc nsz arcp contract afn float %i.nt, -1.000000e+00 ; 2 uses
  %i.nv = fcmp reassoc nsz arcp contract afn ogt float %i.nu, f0x358637BD
  %i.nw = tail call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.nu)
  %i.nx = fdiv reassoc nsz arcp contract afn float f0x3FD88AB6, %i.nw
  %i.ny = fadd reassoc nsz arcp contract afn float %i.nx, 2.000000e+00
  %i.nz = select i1 %i.nv, float %i.ny, float f0x3FF05380
  %i.oa = getelementptr inbounds nuw i8, ptr %i.na, i64 20 ; 2 uses
  store float %i.nz, ptr %i.oa, align 4, !tbaa !12
  %i.ob = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !90
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 104
  %i.od = atomicrmw add ptr %i.oc, i32 1 seq_cst, align 4 ; 0 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.nb, i64 176
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !108
  %i.og = load float, ptr %i.oa, align 4, !tbaa !12
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.of, float noundef %i.og) #23
  %i.oh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !90
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 104
  %i.oj = atomicrmw sub ptr %i.oi, i32 1 seq_cst, align 4 ; 0 uses
  %i.ok = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !96
  tail call void @dt_dev_add_history_item(ptr noundef %i.ok, ptr noundef nonnull %0, i32 noundef 1) #23
  br label %apply_lift_neutralize.exit

bb.p:                                             ; preds = %bb.m
  %i.ol = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !109
  %i.on = icmp eq ptr %1, %i.om
  br i1 %i.on, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.oo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !90
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 104
  %i.oq = load atomic i32, ptr %i.op seq_cst, align 4
  %.not.i37 = icmp eq i32 %i.oq, 0
  br i1 %.not.i37, label %bb.r, label %apply_lift_neutralize.exit

bb.r:                                             ; preds = %bb.q
  %i.or = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.os = load ptr, ptr %i.or, align 8, !tbaa !91 ; 2 uses
  %i.ot = load ptr, ptr %i.a, align 16, !tbaa !47 ; 3 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.ov = load float, ptr %i.ou, align 16, !tbaa !12
  %i.ow = fmul reassoc nsz arcp contract afn float %i.ov, 8.620690e-03
  %i.ox = fadd reassoc nsz arcp contract afn float %i.ow, f0x3E0D3DCB ; 5 uses
  %i.oy = fcmp reassoc nsz arcp contract afn ogt float %i.ox, f0x3E53DCB1
  %i.oz = fmul reassoc nsz arcp contract afn float %i.ox, %i.ox
  %i.pa = fmul reassoc nsz arcp contract afn float %i.oz, %i.ox
  %i.pb = fmul reassoc nsz arcp contract afn float %i.ox, f0x3E038026
  %i.pc = fadd reassoc nsz arcp contract afn float %i.pb, f0xBC911AA6
  %i.pd = select reassoc nsz arcp contract afn i1 %i.oy, float %i.pa, float %i.pc ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %i.ot, i64 320
  store float %i.pd, ptr %i.pe, align 8, !tbaa !12
  %i.pf = getelementptr inbounds nuw i8, ptr %i.ot, i64 332
  store i32 1, ptr %i.pf, align 4, !tbaa !15
  %i.pg = getelementptr inbounds nuw i8, ptr %i.os, i64 4
  %i.ph = load float, ptr %i.pg, align 4, !tbaa !12
  %i.pi = fdiv reassoc nsz arcp contract afn float %i.ph, %i.pd
  %i.pj = getelementptr inbounds nuw i8, ptr %i.os, i64 36 ; 2 uses
  store float %i.pi, ptr %i.pj, align 4, !tbaa !12
  %i.pk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !90
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 104
  %i.pm = atomicrmw add ptr %i.pl, i32 1 seq_cst, align 4 ; 0 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %i.ot, i64 208
  %i.po = load ptr, ptr %i.pn, align 8, !tbaa !109
  %i.pp = load float, ptr %i.pj, align 4, !tbaa !12
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.po, float noundef %i.pp) #23
  %i.pq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !90
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 104
  %i.ps = atomicrmw sub ptr %i.pr, i32 1 seq_cst, align 4 ; 0 uses
  %i.pt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !96
  tail call void @dt_dev_add_history_item(ptr noundef %i.pt, ptr noundef nonnull %0, i32 noundef 1) #23
  br label %apply_lift_neutralize.exit

bb.s:                                             ; preds = %bb.p
  %i.pu = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  %i.pv = load ptr, ptr %i.pu, align 8, !tbaa !110
  %i.pw = icmp eq ptr %1, %i.pv
  br i1 %i.pw, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.px = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !90
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 104
  %i.pz = load atomic i32, ptr %i.py seq_cst, align 4
  %.not.i38 = icmp eq i32 %i.pz, 0
  br i1 %.not.i38, label %bb.u, label %apply_lift_neutralize.exit

bb.u:                                             ; preds = %bb.t
  %i.qa = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.qb = load ptr, ptr %i.qa, align 8, !tbaa !91 ; 9 uses
  %i.qc = load ptr, ptr %i.a, align 16, !tbaa !47
  %i.qd = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.qe = getelementptr inbounds nuw i8, ptr %0, i64 516
  %i.qf = load float, ptr %i.qe, align 4, !tbaa !12
  %i.qg = load float, ptr %i.qd, align 16, !tbaa !12
  %i.qh = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.qi = load float, ptr %i.qh, align 8, !tbaa !12
  %i.qj = fmul reassoc nsz arcp contract afn float %i.qf, 2.000000e-03
  %i.qk = fmul reassoc nsz arcp contract afn float %i.qg, 8.620690e-03
  %i.ql = fadd reassoc nsz arcp contract afn float %i.qk, f0x3E0D3DCB ; 7 uses
  %i.qm = fmul reassoc nsz arcp contract afn float %i.qi, 5.000000e-03
  %i.qn = fadd reassoc nsz arcp contract afn float %i.ql, %i.qj ; 5 uses
  %i.qo = fsub reassoc nsz arcp contract afn float %i.ql, %i.qm ; 5 uses
  %i.qp = fcmp reassoc nsz arcp contract afn ogt float %i.qo, f0x3E53DCB1
  %i.qq = fmul reassoc nsz arcp contract afn float %i.qo, %i.qo
  %i.qr = fmul reassoc nsz arcp contract afn float %i.qq, %i.qo
  %i.qs = fmul reassoc nsz arcp contract afn float %i.qo, f0x3E038026
  %i.qt = fadd reassoc nsz arcp contract afn float %i.qs, f0xBC911AA6
  %i.qu = select reassoc nsz arcp contract afn i1 %i.qp, float %i.qr, float %i.qt ; 3 uses
  %3 = fmul reassoc nsz arcp contract afn float %i.qu, f0x3F532CA5
  %4 = fmul reassoc nsz arcp contract afn float %i.qu, f0xBD2CB230
  %5 = getelementptr inbounds nuw i8, ptr %i.qb, i64 4
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qb, i64 8
  %6 = load float, ptr %i.qv, align 4, !tbaa !12
  %7 = load float, ptr %5, align 4, !tbaa !12
  %8 = fadd reassoc nsz arcp contract afn float %7, -2.000000e+00 ; 2 uses
  %9 = fadd reassoc nsz arcp contract afn float %8, %6
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qb, i64 12
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qb, i64 20
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qb, i64 28
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qb, i64 36
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qb, i64 40
  %10 = load float, ptr %i.ra, align 4, !tbaa !12
  %11 = load float, ptr %i.qz, align 4, !tbaa !12 ; 2 uses
  %12 = getelementptr inbounds nuw i8, ptr %i.qb, i64 44
  %13 = fcmp reassoc nsz arcp contract afn ogt float %i.qn, f0x3E53DCB1
  %14 = fmul reassoc nsz arcp contract afn float %i.qn, %i.qn
  %15 = fmul reassoc nsz arcp contract afn float %14, %i.qn
  %16 = fmul reassoc nsz arcp contract afn float %i.qn, f0x3E038026
  %17 = fadd reassoc nsz arcp contract afn float %16, f0xBC911AA6
  %18 = select reassoc nsz arcp contract afn i1 %13, float %15, float %17 ; 3 uses
  %19 = fcmp reassoc nsz arcp contract afn ogt float %i.ql, f0x3E53DCB1
  %i.rb = fmul reassoc nsz arcp contract afn float %i.ql, %i.ql
  %20 = fmul reassoc nsz arcp contract afn float %i.rb, %i.ql
  %21 = fmul reassoc nsz arcp contract afn float %i.ql, f0x3E038026
  %22 = fadd reassoc nsz arcp contract afn float %21, f0xBC911AA6
  %23 = select reassoc nsz arcp contract afn i1 %19, float %20, float %22 ; 3 uses
  %24 = fmul reassoc nsz arcp contract afn float %18, 9.642000e-01
  %25 = fmul reassoc nsz arcp contract afn float %18, f0x3FA61CF4
  %.neg = fmul reassoc nsz arcp contract afn float %23, f0xBE82DEFC
  %26 = fadd reassoc nsz arcp contract afn float %25, %.neg
  %27 = fadd reassoc nsz arcp contract afn float %26, %4
  %28 = fmul reassoc nsz arcp contract afn float %23, f0x3FC10BA0
  %.neg42 = fmul reassoc nsz arcp contract afn float %18, f0xBF066D1A
  %29 = fadd reassoc nsz arcp contract afn float %.neg42, %28
  %30 = fadd reassoc nsz arcp contract afn float %24, %23 ; 2 uses
  %31 = fmul reassoc nsz arcp contract afn float %30, 0.000000e+00
  %32 = insertelement <2 x float> poison, float %i.qu, i64 0
  %33 = shufflevector <2 x float> %32, <2 x float> poison, <2 x i32> zeroinitializer
  %34 = fmul reassoc nsz arcp contract afn <2 x float> %33, <float f0x3C8AC481, float f0x3F7FE762>
  %35 = insertelement <2 x float> poison, float %29, i64 0
  %36 = insertelement <2 x float> %35, float %31, i64 1
  %37 = fadd reassoc nsz arcp contract afn <2 x float> %36, %34
  %38 = fadd reassoc nsz arcp contract afn float %30, %3
  %39 = load <2 x float>, ptr %i.qw, align 4, !tbaa !12
  %40 = insertelement <2 x float> poison, float %8, i64 0
  %41 = shufflevector <2 x float> %40, <2 x float> poison, <2 x i32> zeroinitializer
  %42 = fadd reassoc nsz arcp contract afn <2 x float> %41, %39
  %i.rc = load <2 x float>, ptr %12, align 4, !tbaa !12
  %43 = fmul reassoc nsz arcp contract afn float %10, %27
  %44 = fmul reassoc nsz arcp contract afn float %43, %11
  %45 = fadd reassoc nsz arcp contract afn float %9, %44
  %.sroa.0.0.vec.insert.i.i = insertelement <4 x float> poison, float %45, i64 0
  %46 = insertelement <2 x float> poison, float %11, i64 0
  %47 = shufflevector <2 x float> %46, <2 x float> poison, <2 x i32> zeroinitializer
  %48 = fmul reassoc nsz arcp contract afn <2 x float> %47, %37
  %49 = fmul reassoc nsz arcp contract afn <2 x float> %48, %i.rc
  %50 = fadd reassoc nsz arcp contract afn <2 x float> %42, %49
  %51 = shufflevector <2 x float> %50, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %.sroa.0.8.vec.insert.i.i49 = shufflevector <4 x float> %.sroa.0.0.vec.insert.i.i, <4 x float> %51, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %52 = fmul reassoc nsz arcp contract afn float %38, 0.000000e+00
  %.sroa.0.12.vec.insert.i.i = insertelement <4 x float> %.sroa.0.8.vec.insert.i.i49, float %52, i64 3
  %i.rd = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.0.12.vec.insert.i.i, <4 x float> zeroinitializer)
  %bc.i.i = bitcast <4 x float> %i.rd to <4 x i32> ; 2 uses
  %i.re = load <2 x float>, ptr %i.qx, align 4, !tbaa !12 ; 3 uses
  %i.rf = load <2 x float>, ptr %i.qy, align 4, !tbaa !12
  %i.rg = shufflevector <2 x float> %i.re, <2 x float> %i.rf, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.rh = insertelement <4 x float> %i.rg, float 0.000000e+00, i64 3
  %i.ri = shufflevector <2 x float> %i.re, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.rj = shufflevector <2 x float> %i.re, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.rk = shufflevector <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x float> %i.rj, <4 x i32> <i32 poison, i32 poison, i32 4, i32 3>
  %i.rl = shufflevector <4 x float> %i.ri, <4 x float> %i.rk, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.rm = fmul reassoc nsz arcp contract afn <4 x float> %i.rh, %i.rl
  %i.rn = fsub reassoc nsz arcp contract afn <4 x float> <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 0.000000e+00>, %i.rm
  %i.ro = and <4 x i32> %bc.i.i, splat (i32 8388607)
  %i.rp = or disjoint <4 x i32> %i.ro, splat (i32 1065353216)
  %i.rq = bitcast <4 x i32> %i.rp to <4 x float>  ; 5 uses
  %i.rr = lshr <4 x i32> %bc.i.i, splat (i32 23)
  %i.rs = and <4 x i32> %i.rr, splat (i32 255)
  %i.rt = add nsw <4 x i32> %i.rs, splat (i32 -127)
  %i.ru = sitofp <4 x i32> %i.rt to <4 x float>
  %i.rv = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.rq, splat (float f0x3D74552F)
  %i.rw = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.rv, splat (float f0xBEEE7397)
  %i.rx = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.rw, %i.rq
  %i.ry = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.rx, splat (float f0x3FBD96DD)
  %i.rz = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.ry, %i.rq
  %i.sa = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.rz, splat (float f0xC02153F6)
  %i.sb = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.sa, %i.rq
  %i.sc = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.sb, splat (float f0x4038D96C)
  %i.sd = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.rq, splat (float -1.000000e+00)
  %i.se = fmul reassoc nsz arcp contract afn <4 x float> %i.sc, %i.sd
  %i.sf = fadd reassoc nsz arcp contract afn <4 x float> %i.se, %i.ru
  %i.sg = fmul reassoc nsz arcp contract afn <4 x float> %i.sf, %i.rn
  %i.sh = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.sg, <4 x float> splat (float 1.290000e+02))
  %i.si = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.sh, <4 x float> splat (float f0xC2FDFFFF)) ; 3 uses
  %i.sj = fadd reassoc nsz arcp contract afn <4 x float> %i.si, splat (float -5.000000e-01)
  %i.sk = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.sj)
  %i.sl = sitofp reassoc nsz arcp contract afn <4 x i32> %i.sk to <4 x float> ; 3 uses
  %.sroa.014.8.vec.extract.i.i.i.i = extractelement <4 x float> %i.sl, i64 2
  %foldExtExtBinop = fsub reassoc nsz arcp contract afn <4 x float> %i.si, %i.sl
  %i.sm = extractelement <4 x float> %foldExtExtBinop, i64 2 ; 4 uses
  %i.sn = fptosi float %.sroa.014.8.vec.extract.i.i.i.i to i32
  %i.so = shl i32 %i.sn, 23
  %i.sp = add i32 %i.so, 1065353216
  %i.sq = fmul reassoc nsz arcp contract afn float %i.sm, f0x3C5DBE69
  %i.sr = fadd reassoc nsz arcp contract afn float %i.sq, f0x3D5509F9
  %i.ss = fmul reassoc nsz arcp contract afn float %i.sr, %i.sm
  %i.st = fadd reassoc nsz arcp contract afn float %i.ss, f0x3E773CC5
  %i.su = fmul reassoc nsz arcp contract afn float %i.st, %i.sm
  %i.sv = fadd reassoc nsz arcp contract afn float %i.su, f0x3F3168B3
  %i.sw = fmul reassoc nsz arcp contract afn float %i.sv, %i.sm
  %i.sx = fadd reassoc nsz arcp contract afn float %i.sw, f0x3F800016
  %i.sy = bitcast i32 %i.sp to float
  %i.sz = fmul reassoc nsz arcp contract afn float %i.sx, %i.sy ; 3 uses
  %i.ta = fcmp reassoc nsz arcp contract afn ogt float %i.sz, 1.000000e+00
  %i.tb = fcmp reassoc nsz arcp contract afn olt float %i.sz, 0.000000e+00
  %spec.select.2.i41 = select reassoc nsz arcp contract afn i1 %i.tb, float 0.000000e+00, float %i.sz
  %i.tc = shufflevector <4 x float> %i.si, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.td = shufflevector <4 x float> %i.sl, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.te = fsub reassoc nsz arcp contract afn <2 x float> %i.tc, %i.td ; 4 uses
  %i.tf = fptosi <2 x float> %i.td to <2 x i32>
  %i.tg = shl <2 x i32> %i.tf, splat (i32 23)
  %i.th = add <2 x i32> %i.tg, splat (i32 1065353216)
  %i.ti = fmul reassoc nsz arcp contract afn <2 x float> %i.te, splat (float f0x3C5DBE69)
  %i.tj = fadd reassoc nsz arcp contract afn <2 x float> %i.ti, splat (float f0x3D5509F9)
  %i.tk = fmul reassoc nsz arcp contract afn <2 x float> %i.tj, %i.te
  %i.tl = fadd reassoc nsz arcp contract afn <2 x float> %i.tk, splat (float f0x3E773CC5)
  %i.tm = fmul reassoc nsz arcp contract afn <2 x float> %i.tl, %i.te
  %i.tn = fadd reassoc nsz arcp contract afn <2 x float> %i.tm, splat (float f0x3F3168B3)
  %i.to = fmul reassoc nsz arcp contract afn <2 x float> %i.tn, %i.te
  %i.tp = fadd reassoc nsz arcp contract afn <2 x float> %i.to, splat (float f0x3F800016)
  %i.tq = bitcast <2 x i32> %i.th to <2 x float>
  %i.tr = fmul reassoc nsz arcp contract afn <2 x float> %i.tp, %i.tq ; 3 uses
  %i.ts = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.tr, splat (float 1.000000e+00)
  %i.tt = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.tr, zeroinitializer
  %i.tu = select <2 x i1> %i.tt, <2 x float> zeroinitializer, <2 x float> %i.tr
  %i.tv = fmul reassoc nsz arcp contract afn <2 x float> %i.tu, <float f0x3E937A01, float f0x3F363D62>
  %i.tw = select <2 x i1> %i.ts, <2 x float> <float f0x3E937A01, float f0x3F363D62>, <2 x float> %i.tv
  %i.tx = fmul reassoc nsz arcp contract afn float %spec.select.2.i41, f0x38B3B9D6
  %i.ty = select i1 %i.ta, float f0x38B3B9D6, float %i.tx
  %i.tz = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v2f32(float %i.ty, <2 x float> %i.tw)
  %i.ua = fmul reassoc nsz arcp contract afn float %i.tz, 1.000000e+02
  %i.ub = getelementptr inbounds nuw i8, ptr %i.qb, i64 60 ; 2 uses
  store float %i.ua, ptr %i.ub, align 4, !tbaa !144
  %i.uc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !90
  %i.ud = getelementptr inbounds nuw i8, ptr %i.uc, i64 104
  %i.ue = atomicrmw add ptr %i.ud, i32 1 seq_cst, align 4 ; 0 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %i.qc, i64 232
  %i.ug = load ptr, ptr %i.uf, align 8, !tbaa !110
  %i.uh = load float, ptr %i.ub, align 4, !tbaa !144
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.ug, float noundef %i.uh) #23
  %i.ui = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !90
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ui, i64 104
  %i.uk = atomicrmw sub ptr %i.uj, i32 1 seq_cst, align 4 ; 0 uses
  %i.ul = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !96
  tail call void @dt_dev_add_history_item(ptr noundef %i.ul, ptr noundef nonnull %0, i32 noundef 1) #23
  br label %apply_lift_neutralize.exit

bb.v:                                             ; preds = %bb.s
  %i.um = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.un = load ptr, ptr %i.um, align 8, !tbaa !112
  %i.uo = icmp eq ptr %1, %i.un
  br i1 %i.uo, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  tail call fastcc void @apply_autoluma(ptr noundef nonnull %0)
  br label %apply_lift_neutralize.exit

bb.x:                                             ; preds = %bb.v
  %i.up = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.uq = load ptr, ptr %i.up, align 8, !tbaa !113
  %i.ur = icmp eq ptr %1, %i.uq
  br i1 %i.ur, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  tail call fastcc void @apply_autocolor(ptr noundef nonnull %0)
  br label %apply_lift_neutralize.exit

bb.z:                                             ; preds = %bb.x
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.22) #23
  br label %apply_lift_neutralize.exit

apply_lift_neutralize.exit:                       ; preds = %bb.u, %bb.t, %bb.r, %bb.q, %bb.o, %bb.n, %bb.l, %bb.k, %bb.i, %bb.h, %bb.f, %bb.e, %bb.c, %bb.b, %bb.w, %bb.z, %bb.y
  %.val = load ptr, ptr %i.a, align 16, !tbaa !47 ; 8 uses
  %i.us = getelementptr inbounds nuw i8, ptr %.val, i64 324
  %i.ut = getelementptr inbounds nuw i8, ptr %.val, i64 332
  %i.uu = load i32, ptr %i.ut, align 4, !tbaa !15
  %i.uv = icmp eq i32 %i.uu, 1
  br i1 %i.uv, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %apply_lift_neutralize.exit
  %i.uw = getelementptr inbounds nuw i8, ptr %.val, i64 328
  %i.ux = load i32, ptr %i.uw, align 4, !tbaa !15
  %i.uy = icmp eq i32 %i.ux, 1
  br i1 %i.uy, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.uz = load i32, ptr %i.us, align 4, !tbaa !15
  %i.va = icmp eq i32 %i.uz, 1
  br i1 %i.va, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %apply_lift_neutralize.exit
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.str.75.sink.i = phi ptr [ @.str.75, %bb.ac ], [ @.str.93, %bb.ab ]
  %i.vb = getelementptr inbounds nuw i8, ptr %.val, i64 248
  %i.vc = load ptr, ptr %i.vb, align 8, !tbaa !112
  %i.vd = tail call ptr @dt_bauhaus_widget_set_label(ptr noundef %i.vc, ptr noundef null, ptr noundef nonnull %.str.75.sink.i) #23 ; 0 uses
  %i.ve = getelementptr inbounds nuw i8, ptr %.val, i64 300
  %i.vf = getelementptr inbounds nuw i8, ptr %.val, i64 308
  %i.vg = load i32, ptr %i.vf, align 4, !tbaa !15
  %i.vh = icmp eq i32 %i.vg, 1
  br i1 %i.vh, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.vi = getelementptr inbounds nuw i8, ptr %.val, i64 304
  %i.vj = load i32, ptr %i.vi, align 8, !tbaa !15
  %i.vk = icmp eq i32 %i.vj, 1
  br i1 %i.vk, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.vl = load i32, ptr %i.ve, align 4, !tbaa !15
  %i.vm = icmp eq i32 %i.vl, 1
  br i1 %i.vm, label %_check_tuner_picker_labels.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  br label %_check_tuner_picker_labels.exit

_check_tuner_picker_labels.exit:                  ; preds = %bb.af, %bb.ag
  %.str.77.sink.i = phi ptr [ @.str.77, %bb.ag ], [ @.str.94, %bb.af ]
  %i.vn = getelementptr inbounds nuw i8, ptr %.val, i64 256
  %i.vo = load ptr, ptr %i.vn, align 8, !tbaa !113
  %i.vp = tail call ptr @dt_bauhaus_widget_set_label(ptr noundef %i.vo, ptr noundef null, ptr noundef nonnull %.str.77.sink.i) #23 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @apply_autoluma(ptr noundef %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !91   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !47  ; 12 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 324 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !15
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.i = load float, ptr %i.h, align 16, !tbaa !12
  %i.j = fmul reassoc nsz arcp contract afn float %i.i, 8.620690e-03
  %i.k = fadd reassoc nsz arcp contract afn float %i.j, f0x3E0D3DCB ; 5 uses
  %i.l = fcmp reassoc nsz arcp contract afn ogt float %i.k, f0x3E53DCB1
  %i.m = fmul reassoc nsz arcp contract afn float %i.k, %i.k
  %i.n = fmul reassoc nsz arcp contract afn float %i.m, %i.k
  %i.o = fmul reassoc nsz arcp contract afn float %i.k, f0x3E038026
  %i.p = fadd reassoc nsz arcp contract afn float %i.o, f0xBC911AA6
  %i.q = select reassoc nsz arcp contract afn i1 %i.l, float %i.n, float %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 312
  store float %i.q, ptr %i.r, align 8, !tbaa !12
  store i32 2, ptr %i.e, align 4, !tbaa !15
end_hunk_0
begin_hunk_1_@g_object_ref
declare ptr @g_object_ref(ptr noundef) local_unnamed_addr #3

declare void @gtk_container_remove(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gtk_widget_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

declare ptr @dt_conf_get_string(ptr noundef) local_unnamed_addr #3

declare void @gtk_label_set_text(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gtk_widget_show(ptr noundef) local_unnamed_addr #3

declare ptr @gtk_label_new(ptr noundef) local_unnamed_addr #3

declare void @gtk_label_set_ellipsize(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @gtk_widget_set_hexpand(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gtk_grid_new() local_unnamed_addr #3

declare void @gtk_grid_set_column_homogeneous(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @gtk_grid_set_column_spacing(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @dt_gui_add_class(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gtk_grid_attach_next_to(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gtk_notebook_new() local_unnamed_addr #3

declare i32 @gtk_notebook_append_page(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @g_object_unref(ptr noundef) local_unnamed_addr #3

declare ptr @dt_alloc_aligned(i64 noundef) local_unnamed_addr #3

declare void @gtk_widget_set_halign(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @gtk_label_set_xalign(ptr noundef, float noundef) local_unnamed_addr #3

declare float @dt_bauhaus_slider_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @set_RGB_sliders(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef nonnull readonly captures(none) %3, ptr nofree noundef captures(none) %4) unnamed_addr #14 {
bb.a:
  %i.a = load float, ptr %3, align 4, !tbaa !12   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.c = load float, ptr %i.b, align 4, !tbaa !12 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = load float, ptr %i.d, align 4, !tbaa !12 ; 7 uses
  %i.f = fcmp reassoc nsz arcp contract afn oeq float %i.c, 0.000000e+00
  br i1 %i.f, label %hsl2rgb.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = fpext reassoc nsz arcp contract afn float %i.e to double ; 2 uses
  %i.h = fcmp reassoc nsz arcp contract afn olt float %i.e, 5.000000e-01
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = fpext reassoc nsz arcp contract afn float %i.c to double
  %i.j = fadd reassoc nsz arcp contract afn double %i.i, 1.000000e+00
  %i.k = fmul reassoc nsz arcp contract afn double %i.j, %i.g
  %i.l = fptrunc reassoc nsz arcp contract afn double %i.k to float
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.m = fadd reassoc nsz arcp contract afn float %i.e, %i.c
  %i.n = fmul reassoc nsz arcp contract afn float %i.c, %i.e
  %i.o = fsub reassoc nsz arcp contract afn float %i.m, %i.n
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = phi float [ %i.l, %bb.c ], [ %i.o, %bb.d ] ; 10 uses
  %i.q = fmul reassoc nsz arcp contract afn double %i.g, 2.000000e+00
  %i.r = fpext reassoc nsz arcp contract afn float %i.p to double
  %i.s = fsub reassoc nsz arcp contract afn double %i.q, %i.r
  %i.t = fptrunc reassoc nsz arcp contract afn double %i.s to float ; 15 uses
  %i.u = fmul reassoc nsz arcp contract afn float %i.a, 6.000000e+00 ; 8 uses
  %i.v = fcmp reassoc nsz arcp contract afn olt float %i.u, 4.000000e+00 ; 2 uses
  %.v.i = select i1 %i.v, float 2.000000e+00, float -4.000000e+00
  %i.w = fadd reassoc nsz arcp contract afn float %.v.i, %i.u ; 5 uses
  %i.x = fcmp reassoc nsz arcp contract afn olt float %i.w, 1.000000e+00
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.y = fsub reassoc nsz arcp contract afn float %i.p, %i.t
  %i.z = fmul reassoc nsz arcp contract afn float %i.y, %i.w
  %i.aa = fadd reassoc nsz arcp contract afn float %i.z, %i.t
  br label %hue2rgb.exit.i

bb.g:                                             ; preds = %bb.e
  %i.ab = fcmp reassoc nsz arcp contract afn olt float %i.w, 3.000000e+00
  br i1 %i.ab, label %hue2rgb.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = fcmp reassoc nsz arcp contract afn olt float %i.w, 4.000000e+00
  %i.ad = fsub reassoc nsz arcp contract afn float %i.p, %i.t
  %i.ae = fsub reassoc nnan nsz arcp contract afn float 4.000000e+00, %i.w
  %i.af = fmul reassoc nsz arcp contract afn float %i.ad, %i.ae
  %i.ag = fadd reassoc nsz arcp contract afn float %i.af, %i.t
  %i.ah = select reassoc nsz arcp contract afn i1 %i.ac, float %i.ag, float %i.t
  br label %hue2rgb.exit.i

hue2rgb.exit.i:                                   ; preds = %bb.h, %bb.g, %bb.f
  %.0.i.i = phi nsz float [ %i.aa, %bb.f ], [ %i.ah, %bb.h ], [ %i.p, %bb.g ] ; 3 uses
  %i.ai = fcmp reassoc nsz arcp contract afn olt float %i.u, 1.000000e+00
  br i1 %i.ai, label %bb.i, label %bb.j

bb.i:                                             ; preds = %hue2rgb.exit.i
  %i.aj = fsub reassoc nsz arcp contract afn float %i.p, %i.t
  %i.ak = fmul reassoc nsz arcp contract afn float %i.aj, %i.u
  %i.al = fadd reassoc nsz arcp contract afn float %i.ak, %i.t
  br label %hue2rgb.exit36.i

bb.j:                                             ; preds = %hue2rgb.exit.i
  %i.am = fcmp reassoc nsz arcp contract afn olt float %i.u, 3.000000e+00
  br i1 %i.am, label %hue2rgb.exit36.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = fsub reassoc nsz arcp contract afn float %i.p, %i.t
  %i.ao = fsub reassoc nnan nsz arcp contract afn float 4.000000e+00, %i.u
  %i.ap = fmul reassoc nsz arcp contract afn float %i.an, %i.ao
  %i.aq = fadd reassoc nsz arcp contract afn float %i.ap, %i.t
  %i.ar = select reassoc nsz arcp contract afn i1 %i.v, float %i.aq, float %i.t
  br label %hue2rgb.exit36.i

hue2rgb.exit36.i:                                 ; preds = %bb.k, %bb.j, %bb.i
  %.0.i35.i = phi nsz float [ %i.al, %bb.i ], [ %i.ar, %bb.k ], [ %i.p, %bb.j ] ; 3 uses
  %i.as = fcmp reassoc nsz arcp contract afn ogt float %i.u, 2.000000e+00
  %.v34.i = select i1 %i.as, float -2.000000e+00, float 4.000000e+00
  %i.at = fadd reassoc nsz arcp contract afn float %.v34.i, %i.u ; 5 uses
  %i.au = fcmp reassoc nsz arcp contract afn olt float %i.at, 1.000000e+00
  br i1 %i.au, label %bb.l, label %bb.m

bb.l:                                             ; preds = %hue2rgb.exit36.i
  %i.av = fsub reassoc nsz arcp contract afn float %i.p, %i.t
  %i.aw = fmul reassoc nsz arcp contract afn float %i.av, %i.at
  %i.ax = fadd reassoc nsz arcp contract afn float %i.aw, %i.t
  br label %hsl2rgb.exit

bb.m:                                             ; preds = %hue2rgb.exit36.i
  %i.ay = fcmp reassoc nsz arcp contract afn olt float %i.at, 3.000000e+00
  br i1 %i.ay, label %hsl2rgb.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.az = fcmp reassoc nsz arcp contract afn olt float %i.at, 4.000000e+00
  %i.ba = fsub reassoc nsz arcp contract afn float %i.p, %i.t
  %i.bb = fsub reassoc nnan nsz arcp contract afn float 4.000000e+00, %i.at
  %i.bc = fmul reassoc nsz arcp contract afn float %i.ba, %i.bb
  %i.bd = fadd reassoc nsz arcp contract afn float %i.bc, %i.t
  %i.be = select reassoc nsz arcp contract afn i1 %i.az, float %i.bd, float %i.t
  br label %hsl2rgb.exit

hsl2rgb.exit:                                     ; preds = %bb.l, %bb.m, %bb.n, %bb.a
  %.sroa.0.0 = phi nsz float [ %i.e, %bb.a ], [ %.0.i.i, %bb.n ], [ %.0.i.i, %bb.m ], [ %.0.i.i, %bb.l ]
  %.sroa.6.0 = phi nsz float [ %i.e, %bb.a ], [ %.0.i35.i, %bb.n ], [ %.0.i35.i, %bb.m ], [ %.0.i35.i, %bb.l ]
  %.sroa.9.0 = phi nsz float [ %i.e, %bb.a ], [ %i.be, %bb.n ], [ %i.p, %bb.m ], [ %i.ax, %bb.l ]
  %i.bf = fcmp reassoc nsz arcp contract afn une float %i.a, -1.000000e+00
  br i1 %i.bf, label %bb.o, label %bb.p

bb.o:                                             ; preds = %hsl2rgb.exit
  %i.bg = insertelement <2 x float> poison, float %.sroa.0.0, i64 0
  %i.bh = insertelement <2 x float> %i.bg, float %.sroa.6.0, i64 1
  %i.bi = fmul reassoc nsz arcp contract afn <2 x float> %i.bh, splat (float 2.000000e+00)
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 8
  store <2 x float> %i.bi, ptr %i.bj, align 4, !tbaa !12
  %i.bl = fmul reassoc nsz arcp contract afn float %.sroa.9.0, 2.000000e+00
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  store float %i.bl, ptr %i.bm, align 4, !tbaa !12
  %i.bn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !90
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 104
  %i.bp = atomicrmw add ptr %i.bo, i32 1 seq_cst, align 4 ; 0 uses
  %i.bq = load float, ptr %i.bj, align 4, !tbaa !12
  tail call void @dt_bauhaus_slider_set(ptr noundef %0, float noundef %i.bq) #23
  %i.br = load float, ptr %i.bk, align 4, !tbaa !12
  tail call void @dt_bauhaus_slider_set(ptr noundef %1, float noundef %i.br) #23
  %i.bs = load float, ptr %i.bm, align 4, !tbaa !12
  tail call void @dt_bauhaus_slider_set(ptr noundef %2, float noundef %i.bs) #23
  %i.bt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !90
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 104
  %i.bv = atomicrmw sub ptr %i.bu, i32 1 seq_cst, align 4 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %hsl2rgb.exit
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.pow.v2f32(<2 x float>, <2 x float>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.log.v2f32(<2 x float>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <4 x ptr> @llvm.masked.load.v4p0.p0(ptr captures(none), <4 x i1>, <4 x ptr>) #24

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { nounwind uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { mustprogress nofree nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #15 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #18 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #21 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nounwind }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #25 = { nounwind allocsize(0) }
attributes #26 = { nounwind willreturn memory(read) }
attributes #27 = { nounwind willreturn memory(none) }
attributes #28 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"float", !7, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!8, !8, i64 0}
!16 = !{!"p1 _ZTS15dt_iop_module_t", !13, i64 0}
!17 = !{!"p1 _ZTS18dt_dev_pixelpipe_t", !13, i64 0}
!18 = !{!"p1 _ZTS18dt_histogram_roi_t", !13, i64 0}
!19 = !{!"dt_dev_histogram_collection_params_t", !18, i64 0, !8, i64 8}
!20 = !{!"p1 int", !13, i64 0}
!21 = !{!"long", !7, i64 0}
!22 = !{!"dt_dev_histogram_stats_t", !8, i64 0, !21, i64 8, !8, i64 16, !8, i64 20}
!23 = !{!"dt_iop_roi_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !11, i64 16}
!24 = !{!"short", !7, i64 0}
!25 = !{!"", !24, i64 0, !24, i64 2}
!26 = !{!"", !8, i64 0, !7, i64 16}
!27 = !{!"dt_iop_buffer_dsc_t", !8, i64 0, !8, i64 4, !8, i64 8, !7, i64 12, !25, i64 48, !26, i64 64, !7, i64 96, !8, i64 112}
!28 = !{!"p1 _ZTS11_GHashTable", !13, i64 0}
!29 = !{!"p1 float", !13, i64 0}
!30 = !{!"dt_dev_distorted_mask_cache_t", !29, i64 0, !23, i64 8, !21, i64 32, !21, i64 40}
!31 = !{!"dt_dev_pixelpipe_iop_t", !16, i64 0, !17, i64 8, !13, i64 16, !13, i64 24, !8, i64 32, !8, i64 36, !19, i64 40, !20, i64 56, !22, i64 64, !7, i64 88, !11, i64 104, !8, i64 108, !8, i64 112, !21, i64 120, !8, i64 128, !8, i64 132, !23, i64 136, !23, i64 156, !23, i64 176, !23, i64 196, !8, i64 216, !8, i64 220, !27, i64 224, !27, i64 352, !7, i64 480, !8, i64 516, !28, i64 520, !30, i64 528, !30, i64 576}
!32 = !{!31, !13, i64 16}
!33 = !{!"dt_iop_colorbalance_data_t", !8, i64 0, !7, i64 4, !7, i64 20, !7, i64 36, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64}
!34 = !{!33, !8, i64 0}
!35 = !{!7, !7, i64 0}
!36 = !{!"p1 _ZTS8_GModule", !13, i64 0}
!37 = !{!"p1 _ZTS12dt_develop_t", !13, i64 0}
!38 = !{!"dt_pthread_mutex_t", !7, i64 0}
!39 = !{!"p1 _ZTS25dt_develop_blend_params_t", !13, i64 0}
!40 = !{!"", !28, i64 0, !28, i64 8}
!41 = !{!"", !16, i64 0, !8, i64 8}
!42 = !{!"", !40, i64 0, !41, i64 16}
!43 = !{!"p1 _ZTS10_GtkWidget", !13, i64 0}
!44 = !{!"p1 _ZTS7_GSList", !13, i64 0}
!45 = !{!"p1 _ZTS18dt_iop_module_so_t", !13, i64 0}
!46 = !{!"dt_iop_module_t", !8, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152, !13, i64 160, !13, i64 168, !13, i64 176, !13, i64 184, !13, i64 192, !13, i64 200, !13, i64 208, !13, i64 216, !13, i64 224, !13, i64 232, !13, i64 240, !13, i64 248, !13, i64 256, !13, i64 264, !13, i64 272, !13, i64 280, !13, i64 288, !13, i64 296, !13, i64 304, !13, i64 312, !13, i64 320, !13, i64 328, !13, i64 336, !13, i64 344, !13, i64 352, !13, i64 360, !13, i64 368, !13, i64 376, !13, i64 384, !13, i64 392, !13, i64 400, !13, i64 408, !13, i64 416, !13, i64 424, !13, i64 432, !13, i64 440, !36, i64 448, !7, i64 456, !8, i64 476, !8, i64 480, !8, i64 484, !8, i64 488, !8, i64 492, !8, i64 496, !8, i64 500, !8, i64 504, !7, i64 512, !7, i64 528, !7, i64 544, !7, i64 560, !7, i64 576, !7, i64 592, !20, i64 608, !22, i64 616, !7, i64 640, !8, i64 656, !8, i64 660, !37, i64 664, !8, i64 672, !8, i64 676, !13, i64 680, !13, i64 688, !8, i64 696, !13, i64 704, !38, i64 712, !13, i64 752, !13, i64 760, !39, i64 768, !39, i64 776, !13, i64 784, !42, i64 792, !43, i64 824, !43, i64 832, !43, i64 840, !43, i64 848, !43, i64 856, !43, i64 864, !43, i64 872, !8, i64 880, !43, i64 888, !43, i64 896, !43, i64 904, !44, i64 912, !44, i64 920, !43, i64 928, !43, i64 936, !8, i64 944, !45, i64 952, !8, i64 960, !7, i64 964, !8, i64 1092, !43, i64 1096, !13, i64 1104, !8, i64 1112}
!47 = !{!46, !13, i64 704}
!48 = !{!"dt_iop_colorbalance_gui_data_t", !43, i64 0, !43, i64 8, !43, i64 16, !7, i64 24, !43, i64 48, !43, i64 56, !43, i64 64, !43, i64 72, !43, i64 80, !43, i64 88, !43, i64 96, !43, i64 104, !43, i64 112, !43, i64 120, !43, i64 128, !43, i64 136, !43, i64 144, !43, i64 152, !43, i64 160, !43, i64 168, !43, i64 176, !43, i64 184, !43, i64 192, !43, i64 200, !43, i64 208, !43, i64 216, !43, i64 224, !43, i64 232, !43, i64 240, !43, i64 248, !43, i64 256, !7, i64 264, !7, i64 276, !7, i64 288, !7, i64 300, !7, i64 312, !7, i64 324}
!49 = !{!48, !43, i64 72}
!50 = !{!"dt_codepath_t", !8, i64 0}
!51 = !{!"p1 _ZTS6_GList", !13, i64 0}
!52 = !{!"p1 _ZTS11_JsonParser", !13, i64 0}
!53 = !{!"p1 _ZTS9dt_conf_t", !13, i64 0}
!54 = !{!"p1 _ZTS8dt_lib_t", !13, i64 0}
!55 = !{!"p1 _ZTS17dt_view_manager_t", !13, i64 0}
!56 = !{!"p1 _ZTS12dt_control_t", !13, i64 0}
!57 = !{!"p1 _ZTS19dt_control_signal_t", !13, i64 0}
!58 = !{!"p1 _ZTS12dt_gui_gtk_t", !13, i64 0}
!59 = !{!"p1 _ZTS17dt_mipmap_cache_t", !13, i64 0}
!60 = !{!"p1 _ZTS16dt_image_cache_t", !13, i64 0}
!61 = !{!"p1 _ZTS12dt_bauhaus_t", !13, i64 0}
!62 = !{!"p1 _ZTS13dt_database_t", !13, i64 0}
!63 = !{!"p1 _ZTS14dt_pwstorage_t", !13, i64 0}
!64 = !{!"p1 _ZTS11dt_camctl_t", !13, i64 0}
!65 = !{!"p1 _ZTS15dt_collection_t", !13, i64 0}
!66 = !{!"p1 _ZTS14dt_selection_t", !13, i64 0}
!67 = !{!"p1 _ZTS11dt_points_t", !13, i64 0}
!68 = !{!"p1 _ZTS12dt_imageio_t", !13, i64 0}
!69 = !{!"p1 _ZTS11dt_opencl_t", !13, i64 0}
!70 = !{!"p1 _ZTS9dt_dbus_t", !13, i64 0}
!71 = !{!"p1 _ZTS9dt_undo_t", !13, i64 0}
!72 = !{!"p1 _ZTS16dt_colorspaces_t", !13, i64 0}
!73 = !{!"p1 _ZTS9dt_l10n_t", !13, i64 0}
!74 = !{!"p1 omnipotent char", !13, i64 0}
!75 = !{!"p1 _ZTS9lua_State", !13, i64 0}
!76 = !{!"_Bool", !7, i64 0}
!77 = !{!"p1 _ZTS10_GMainLoop", !13, i64 0}
!78 = !{!"p1 _ZTS13_GMainContext", !13, i64 0}
!79 = !{!"p1 _ZTS12_GThreadPool", !13, i64 0}
!80 = !{!"p1 _ZTS12_GAsyncQueue", !13, i64 0}
!81 = !{!"", !75, i64 0, !38, i64 8, !7, i64 48, !76, i64 96, !76, i64 97, !77, i64 104, !78, i64 112, !79, i64 120, !80, i64 128, !80, i64 136, !80, i64 144}
!82 = !{!"double", !7, i64 0}
!83 = !{!"p1 _ZTS10_GTimeZone", !13, i64 0}
!84 = !{!"p1 _ZTS10_GDateTime", !13, i64 0}
!85 = !{!"dt_sys_resources_t", !21, i64 0, !21, i64 8, !20, i64 16, !20, i64 24, !8, i64 32}
!86 = !{!"dt_backthumb_t", !82, i64 0, !82, i64 8, !8, i64 16, !8, i64 20}
!87 = !{!"dt_gimp_t", !8, i64 0, !74, i64 8, !74, i64 16, !8, i64 24, !8, i64 28}
!88 = !{!"dt_splash_t", !43, i64 0, !43, i64 8, !43, i64 16, !43, i64 24, !8, i64 32}
!89 = !{!"darktable_t", !50, i64 0, !8, i64 4, !8, i64 8, !51, i64 16, !51, i64 24, !51, i64 32, !51, i64 40, !52, i64 48, !53, i64 56, !37, i64 64, !54, i64 72, !55, i64 80, !56, i64 88, !57, i64 96, !58, i64 104, !59, i64 112, !60, i64 120, !61, i64 128, !62, i64 136, !63, i64 144, !64, i64 152, !65, i64 160, !66, i64 168, !67, i64 176, !68, i64 184, !69, i64 192, !70, i64 200, !71, i64 208, !72, i64 216, !73, i64 224, !7, i64 232, !38, i64 2792, !38, i64 2832, !38, i64 2872, !38, i64 2912, !38, i64 2952, !38, i64 2992, !74, i64 3032, !74, i64 3040, !74, i64 3048, !74, i64 3056, !74, i64 3064, !74, i64 3072, !74, i64 3080, !74, i64 3088, !74, i64 3096, !74, i64 3104, !74, i64 3112, !74, i64 3120, !74, i64 3128, !81, i64 3136, !51, i64 3288, !82, i64 3296, !51, i64 3304, !8, i64 3312, !7, i64 3316, !8, i64 3512, !8, i64 3516, !83, i64 3520, !84, i64 3528, !85, i64 3536, !86, i64 3576, !87, i64 3600, !88, i64 3632, !8, i64 3672}
!90 = !{!89, !58, i64 104}
!91 = !{!46, !13, i64 680}
!92 = !{!48, !43, i64 120}
!93 = !{!48, !43, i64 128}
!94 = !{!48, !43, i64 136}
!95 = !{!48, !43, i64 96}
!96 = !{!89, !37, i64 64}
!97 = !{!48, !43, i64 80}
!98 = !{!48, !43, i64 152}
!99 = !{!48, !43, i64 160}
!100 = !{!48, !43, i64 168}
!101 = !{!48, !43, i64 104}
!102 = !{!48, !43, i64 88}
!103 = !{!48, !43, i64 184}
!104 = !{!48, !43, i64 192}
!105 = !{!48, !43, i64 200}
!106 = !{!48, !43, i64 112}
!107 = !{!48, !43, i64 144}
!108 = !{!48, !43, i64 176}
!109 = !{!48, !43, i64 208}
!110 = !{!48, !43, i64 232}
!111 = !{!"dt_iop_colorbalance_params_t", !8, i64 0, !7, i64 4, !7, i64 20, !7, i64 36, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64}
!112 = !{!48, !43, i64 248}
!113 = !{!48, !43, i64 256}
!114 = !{!"p1 _ZTS11dt_action_t", !13, i64 0}
!115 = !{!"dt_action_t", !8, i64 0, !74, i64 8, !74, i64 16, !13, i64 24, !114, i64 32, !114, i64 40}
!116 = !{!"dt_iop_module_so_t", !115, i64 0, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152, !13, i64 160, !13, i64 168, !13, i64 176, !13, i64 184, !13, i64 192, !13, i64 200, !13, i64 208, !13, i64 216, !13, i64 224, !13, i64 232, !13, i64 240, !13, i64 248, !13, i64 256, !13, i64 264, !13, i64 272, !13, i64 280, !13, i64 288, !13, i64 296, !13, i64 304, !13, i64 312, !13, i64 320, !13, i64 328, !13, i64 336, !13, i64 344, !13, i64 352, !13, i64 360, !13, i64 368, !13, i64 376, !13, i64 384, !13, i64 392, !13, i64 400, !13, i64 408, !13, i64 416, !13, i64 424, !13, i64 432, !13, i64 440, !13, i64 448, !13, i64 456, !13, i64 464, !13, i64 472, !13, i64 480, !36, i64 488, !7, i64 496, !13, i64 520, !8, i64 528, !13, i64 536, !8, i64 544, !8, i64 548}
!117 = !{!116, !13, i64 520}
!118 = !{!111, !8, i64 0}
!119 = !{!48, !43, i64 56}
!120 = !{!48, !43, i64 64}
!121 = !{!48, !43, i64 0}
!122 = !{!48, !43, i64 48}
!123 = !{!48, !43, i64 16}
!124 = !{!43, !43, i64 0}
!125 = !{!48, !43, i64 8}
!126 = !{!"dt_iop_colorbalance_params_v3_t", !8, i64 0, !7, i64 4, !7, i64 20, !7, i64 36, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64}
!127 = !{!126, !8, i64 0}
!128 = !{!"dt_iop_colorbalance_params_v2_t", !8, i64 0, !7, i64 4, !7, i64 20, !7, i64 36, !11, i64 52, !11, i64 56, !11, i64 60}
!129 = !{!128, !8, i64 0}
!130 = !{!128, !11, i64 60}
!131 = !{!126, !11, i64 60}
!132 = !{!126, !11, i64 64}
!133 = distinct !{!133, i1 false, !"copy_pixel_nontemporal"}
!134 = distinct !{!134, !133, !"copy_pixel_nontemporal: argument 0"}
!135 = !{!31, !8, i64 132}
!136 = !{!33, !11, i64 56}
!137 = !{!23, !8, i64 8}
!138 = !{!23, !8, i64 12}
!139 = !{!33, !11, i64 64}
!140 = !{!33, !11, i64 52}
!141 = !{!33, !11, i64 60}
!142 = !{!134}
!143 = !{i32 1}
!144 = !{!111, !11, i64 60}
!145 = !{!"dt_iop_colorbalance_global_data_t", !8, i64 0, !8, i64 4, !8, i64 8}
!146 = !{!145, !8, i64 0}
!147 = !{!145, !8, i64 8}
!148 = !{!145, !8, i64 4}
!149 = !{!46, !43, i64 824}
!150 = !{!48, !43, i64 216}
!151 = !{!48, !43, i64 240}
!152 = !{!48, !43, i64 224}
!153 = !{!89, !8, i64 3312}
!154 = !{!89, !8, i64 8}
!155 = !{!89, !57, i64 96}
!156 = !{!"p1 _ZTS24dt_introspection_field_t", !13, i64 0}
!157 = !{!"dt_introspection_t", !8, i64 0, !8, i64 4, !74, i64 8, !21, i64 16, !156, i64 24, !21, i64 32, !21, i64 40}
!158 = !{!157, !8, i64 0}
end_hunk_1
