Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_colorbalance?download=true
inline.NumInlined: 167
inline.NumDeleted: 59
loop-unroll.NumCompletelyUnrolled: 41
loop-unroll.NumUnrolled: 41
begin_hunk_0_@add_preset:bb.a
  call void @free(ptr noundef %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: nounwind uwtable
define void @process(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.b = load i32, ptr %i.a, align 4, !tbaa !23
  %i.c = tail call i32 @dt_iop_have_required_input_format(i32 noundef 4, ptr noundef %0, i32 noundef %i.b, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #23
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.x, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !40  ; 13 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.g = load float, ptr %i.f, align 4, !tbaa !41 ; 2 uses
  %i.h = fcmp reassoc nsz arcp contract afn une float %i.g, 0.000000e+00
  %i.i = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.g
  %i.j = select reassoc nsz arcp contract afn i1 %i.h, float %i.i, float 1.000000e+06 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.l = load i32, ptr %i.k, align 4, !tbaa !43
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.o = load i32, ptr %i.n, align 4, !tbaa !44
  %i.p = sext i32 %i.o to i64
  %i.q = mul nsw i64 %i.p, %i.m                   ; 9 uses
  %.sroa.0136.0.vec.insert = insertelement <4 x float> poison, float %i.j, i64 0
  %.sroa.0136.12.vec.insert = shufflevector <4 x float> %.sroa.0136.0.vec.insert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.w = load float, ptr %i.v, align 4, !tbaa !11 ; 2 uses
  %i.x = load float, ptr %i.u, align 4, !tbaa !11 ; 3 uses
  %i.y = fmul reassoc nsz arcp contract afn float %i.x, %i.w ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %i.aa = fsub reassoc nsz arcp contract afn float 2.000000e+00, %i.w
  %i.ab = fsub reassoc nsz arcp contract afn float 2.000000e+00, %i.x ; 2 uses
  %i.ac = fmul reassoc nsz arcp contract afn float %i.ab, %i.aa
  %i.ad = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.ac, i64 0
  %i.ae = fcmp reassoc nsz arcp contract afn une float %i.y, 0.000000e+00
  %i.af = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.y
  %i.ag = select reassoc nsz arcp contract afn i1 %i.ae, float %i.af, float 1.000000e+06 ; 2 uses
  %i.ah = load <2 x float>, ptr %i.z, align 4, !tbaa !11 ; 2 uses
  %i.ai = insertelement <2 x float> poison, float %i.x, i64 0
  %i.aj = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ak = fmul reassoc nsz arcp contract afn <2 x float> %i.ah, %i.aj ; 2 uses
  %i.al = insertelement <2 x float> poison, float %i.ab, i64 0
  %i.am = fsub reassoc nsz arcp contract afn <2 x float> splat (float 2.000000e+00), %i.ah
  %i.an = shufflevector <2 x float> %i.am, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ao = shufflevector <2 x float> %i.al, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.ap = fmul reassoc nsz arcp contract afn <4 x float> %i.an, %i.ao
  %.sroa.0126.12.vec.insert173 = shufflevector <4 x float> %i.ad, <4 x float> %i.ap, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.aq = fcmp reassoc nsz arcp contract afn une <2 x float> %i.ak, zeroinitializer
  %i.ar = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.ak
  %i.as = select <2 x i1> %i.aq, <2 x float> %i.ar, <2 x float> splat (float 1.000000e+06) ; 2 uses
  %i.at = fmul reassoc nsz arcp contract afn float %i.ag, 2.200000e+00
  %i.au = fmul reassoc nsz arcp contract afn <2 x float> %i.as, splat (float 2.200000e+00)
  %i.av = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.at, i64 0
  %i.aw = shufflevector <2 x float> %i.au, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %.sroa.0123.12.vec.insert172 = shufflevector <4 x float> %i.av, <4 x float> %i.aw, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.ax = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  %i.ay = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  %i.az = load <4 x float>, ptr %i.r, align 4, !tbaa !11 ; 3 uses
  %i.ba = load float, ptr %i.s, align 4, !tbaa !11
  %i.bb = shufflevector <4 x float> %i.az, <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 0, i32 2, i32 3, i32 7>
  %i.bc = shufflevector <4 x float> %i.az, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 1, i32 0, i32 0, i32 7>
  %i.bd = fmul reassoc nsz arcp contract afn <4 x float> %i.bb, %i.bc
  %i.be = fsub reassoc nsz arcp contract afn <4 x float> <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 0.000000e+00>, %i.bd ; 2 uses
  %i.bf = insertelement <4 x float> %i.be, float 0.000000e+00, i64 3
  %i.bg = extractelement <4 x float> %i.az, i64 0
  %i.bh = fadd reassoc nsz arcp contract afn float %i.bg, -2.000000e+00 ; 2 uses
  %i.bi = fadd reassoc nsz arcp contract afn float %i.bh, %i.ba
  %i.bj = load <2 x float>, ptr %i.t, align 4, !tbaa !11
  %i.bk = insertelement <2 x float> poison, float %i.bh, i64 0
  %i.bl = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.bi, i64 0
  %i.bm = shufflevector <2 x float> %i.bk, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.bn = shufflevector <2 x float> %i.bj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bo = fadd reassoc nsz arcp contract afn <4 x float> %i.bm, %i.bn
  %.sroa.0128.12.vec.insert171 = shufflevector <4 x float> %i.bl, <4 x float> %i.bo, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.bp = load <2 x float>, ptr %i.ax, align 4, !tbaa !11 ; 3 uses
  %i.bq = load <2 x float>, ptr %i.ay, align 4, !tbaa !11
  %i.br = shufflevector <2 x float> %i.bp, <2 x float> %i.bq, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.bs = insertelement <4 x float> %i.br, float 1.000000e+00, i64 3
  %i.bt = shufflevector <2 x float> %i.bp, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.bu = shufflevector <2 x float> %i.bp, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.bv = shufflevector <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x float> %i.bu, <4 x i32> <i32 poison, i32 poison, i32 4, i32 3>
  %i.bw = shufflevector <4 x float> %i.bt, <4 x float> %i.bv, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bx = fmul reassoc nsz arcp contract afn <4 x float> %i.bs, %i.bw ; 2 uses
  %i.by = insertelement <4 x float> %i.bx, float 1.000000e+00, i64 3 ; 2 uses
  %i.bz = add nsw i64 %i.q, 3
  %i.ca = and i64 %i.bz, -4                       ; 4 uses
  %.not149 = icmp eq i64 %i.q, 0
  br i1 %.not149, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.cb = load i32, ptr %i.e, align 4, !tbaa !45
  %i.cc = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !46 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.e, i64 52
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !47 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.e, i64 60
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !48
  %i.ci = fmul reassoc nsz arcp contract afn float %i.ch, f0x3C23D70A
  %i.cj = fadd reassoc nsz arcp contract afn float %i.cf, -1.000000e+00
  %i.ck = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.cj)
  %i.cl = fpext reassoc nsz arcp contract afn float %i.ck to double
  %i.cm = fcmp reassoc nsz arcp contract afn ogt double %i.cl, f0x3EB0C6F7A0B5ED8D ; 2 uses
  %i.cn = fadd reassoc nsz arcp contract afn float %i.cd, -1.000000e+00
  %i.co = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.cn)
  %i.cp = fpext reassoc nsz arcp contract afn float %i.co to double
  %i.cq = fcmp reassoc nsz arcp contract afn ogt double %i.cp, f0x3EB0C6F7A0B5ED8D ; 2 uses
  %i.cr = fadd reassoc nsz arcp contract afn float %i.j, -1.000000e+00
  %i.cs = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.cr)
  %i.ct = fpext reassoc nsz arcp contract afn float %i.cs to double
  %i.cu = fcmp reassoc nsz arcp contract afn ogt double %i.ct, f0x3EB0C6F7A0B5ED8D ; 2 uses
  %i.cv = insertelement <4 x float> poison, float %i.cf, i64 0
  %i.cw = shufflevector <4 x float> %i.cv, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.cx = insertelement <4 x float> poison, float %i.cd, i64 0
  %i.cy = shufflevector <4 x float> %i.cx, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.cz = insertelement <4 x float> poison, float %i.ci, i64 0
  %i.da = shufflevector <4 x float> %i.cz, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  switch i32 %i.cb, label %_process_legacy.exit [
    i32 2, label %.lr.ph.split.us.preheader
    i32 0, label %.lr.ph.split.us143.preheader
    i32 1, label %.lr.ph.split.us146.preheader
  ]

.lr.ph.split.us146.preheader:                     ; preds = %.lr.ph
  %i.db = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.da
  br label %.lr.ph.split.us146

.lr.ph.split.us143.preheader:                     ; preds = %.lr.ph
  %i.dc = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.da
  br label %.lr.ph.split.us143

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.dd = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.ag, i64 0
  %i.de = shufflevector <2 x float> %i.as, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.df = shufflevector <4 x float> %i.dd, <4 x float> %i.de, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %_process_legacy.exit.us
  %.0142.us = phi i64 [ %i.dg, %_process_legacy.exit.us ], [ 0, %.lr.ph.split.us.preheader ] ; 4 uses
  %i.dg = add i64 %.0142.us, %i.ca                ; 3 uses
  %i.dh = tail call i64 @llvm.umin.i64(i64 %i.dg, i64 %i.q) ; 2 uses
  %i.di = shl i64 %.0142.us, 2                    ; 2 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.di
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.di
  %i.dl = sub i64 %i.dh, %.0142.us
  %.not.i.us = icmp eq i64 %i.dh, %.0142.us
  br i1 %.not.i.us, label %_process_legacy.exit.us, label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.split.us, %dt_XYZ_to_Lab.exit.i.us
  %.01725.i.us = phi i64 [ %i.py, %dt_XYZ_to_Lab.exit.i.us ], [ 0, %.lr.ph.split.us ] ; 2 uses
  %i.dm = shl i64 %.01725.i.us, 2                 ; 2 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.dm ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  %i.dp = load float, ptr %i.dn, align 4, !tbaa !11
  %i.dq = fmul reassoc nsz arcp contract afn float %i.dp, 8.620690e-03
  %i.dr = fadd reassoc nsz arcp contract afn float %i.dq, f0x3E0D3DCB ; 6 uses
  %i.ds = fcmp reassoc nsz arcp contract afn ogt float %i.dr, f0x3E53DCB1
  %i.dt = fmul reassoc nsz arcp contract afn float %i.dr, %i.dr
  %i.du = fmul reassoc nsz arcp contract afn float %i.dt, %i.dr
  %i.dv = fmul reassoc nsz arcp contract afn float %i.dr, f0x3E038026
  %i.dw = fadd reassoc nsz arcp contract afn float %i.dv, f0xBC911AA6
  %i.dx = select reassoc nsz arcp contract afn i1 %i.ds, float %i.du, float %i.dw ; 3 uses
  %i.dy = fmul reassoc nsz arcp contract afn float %i.dx, f0x3FCEF57D
  %i.dz = fmul reassoc nsz arcp contract afn float %i.dx, f0x3FF54420
  %i.ea = load <2 x float>, ptr %i.do, align 4, !tbaa !11
  %i.eb = fmul reassoc nsz arcp contract afn <2 x float> %i.ea, <float 2.000000e-03, float 5.000000e-03> ; 2 uses
  %i.ec = insertelement <2 x float> poison, float %i.dr, i64 0
  %i.ed = shufflevector <2 x float> %i.ec, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ee = fadd reassoc nsz arcp contract afn <2 x float> %i.ed, %i.eb
  %i.ef = fsub reassoc nsz arcp contract afn <2 x float> %i.ed, %i.eb
  %i.eg = shufflevector <2 x float> %i.ee, <2 x float> %i.ef, <2 x i32> <i32 0, i32 3> ; 5 uses
  %i.eh = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.eg, splat (float f0x3E53DCB1)
  %i.ei = fmul reassoc nsz arcp contract afn <2 x float> %i.eg, %i.eg
  %i.ej = fmul reassoc nsz arcp contract afn <2 x float> %i.ei, %i.eg
  %i.ek = fmul reassoc nsz arcp contract afn <2 x float> %i.eg, splat (float f0x3E038026)
  %i.el = fadd reassoc nsz arcp contract afn <2 x float> %i.ek, splat (float f0xBC911AA6)
  %i.em = select <2 x i1> %i.eh, <2 x float> %i.ej, <2 x float> %i.el ; 3 uses
  %i.en = extractelement <2 x float> %i.em, i64 0 ; 3 uses
  %i.eo = fmul reassoc nsz arcp contract afn float %i.en, 9.642000e-01
  %i.ep = fmul reassoc nsz arcp contract afn float %i.en, f0x404162F2
  %i.eq = fsub reassoc nsz arcp contract afn float %i.ep, %i.dy
  %i.er = extractelement <2 x float> %i.em, i64 1 ; 3 uses
  %i.es = fmul reassoc nsz arcp contract afn float %i.er, f0xBECF35E2
  %i.et = fadd reassoc nsz arcp contract afn float %i.eq, %i.es ; 3 uses
  %i.eu = fmul reassoc nsz arcp contract afn float %i.en, f0x3F719831
  %i.ev = fsub reassoc nsz arcp contract afn float %i.dz, %i.eu
  %i.ew = fmul reassoc nsz arcp contract afn float %i.er, f0x3CE2116F
  %i.ex = fadd reassoc nsz arcp contract afn float %i.ev, %i.ew ; 3 uses
  %i.ey = fmul reassoc nsz arcp contract afn <2 x float> %i.em, <float f0x3D8E11AE, float f0x3F532CA5> ; 2 uses
  %i.ez = fmul reassoc nsz arcp contract afn float %i.er, f0x3F94602A
  %i.fa = insertelement <2 x float> poison, float %i.dx, i64 0
  %6 = shufflevector <2 x float> %i.fa, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %7 = insertelement <2 x float> <float f0x3E6A7CB9, float poison>, float %i.eo, i64 1 ; 2 uses
  %i.fb = fmul reassoc nsz arcp contract afn <2 x float> %6, %7
  %i.fc = fadd reassoc nsz arcp contract afn <2 x float> %6, %7
  %i.fd = shufflevector <2 x float> %i.fb, <2 x float> %i.fc, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.fe = fsub reassoc nsz arcp contract afn <2 x float> %i.ey, %i.fd
  %i.ff = fadd reassoc nsz arcp contract afn <2 x float> %i.ey, %i.fd
  %i.fg = shufflevector <2 x float> %i.fe, <2 x float> %i.ff, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.fh = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ez, i64 0 ; 2 uses
  %i.fi = fadd reassoc nsz arcp contract afn <2 x float> %i.fg, %i.fh ; 2 uses
  %i.fj = fmul reassoc nsz arcp contract afn <2 x float> %i.fg, %i.fh ; 2 uses
  %i.fk = shufflevector <2 x float> %i.fi, <2 x float> %i.fj, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.fl = shufflevector <2 x float> %i.fi, <2 x float> %i.fj, <4 x i32> <i32 poison, i32 poison, i32 0, i32 3>
  %i.fm = insertelement <4 x float> %i.fl, float %i.et, i64 0
  %i.fn = insertelement <4 x float> %i.fm, float %i.ex, i64 1
  %i.fo = bitcast <4 x float> %i.fn to <4 x i32>  ; 2 uses
  %i.fp = and <4 x i32> %i.fo, splat (i32 8388607)
  %i.fq = or disjoint <4 x i32> %i.fp, splat (i32 1065353216)
  %i.fr = bitcast <4 x i32> %i.fq to <4 x float>  ; 5 uses
  %i.fs = lshr <4 x i32> %i.fo, splat (i32 23)
  %i.ft = and <4 x i32> %i.fs, splat (i32 255)
  %i.fu = add nsw <4 x i32> %i.ft, splat (i32 -127)
  %i.fv = sitofp <4 x i32> %i.fu to <4 x float>
  %i.fw = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.fr, splat (float f0x3D74552F)
  %i.fx = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.fw, splat (float f0xBEEE7397)
  %i.fy = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.fx, %i.fr
  %i.fz = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.fy, splat (float f0x3FBD96DD)
  %i.ga = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.fz, %i.fr
  %i.gb = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.ga, splat (float f0xC02153F6)
  %i.gc = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.gb, %i.fr
  %i.gd = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.gc, splat (float f0x4038D96C)
  %i.ge = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.fr, splat (float -1.000000e+00)
  %i.gf = fmul reassoc nsz arcp contract afn <4 x float> %i.gd, %i.ge
  %i.gg = fadd reassoc nsz arcp contract afn <4 x float> %i.gf, %i.fv
  %i.gh = fmul reassoc nsz arcp contract afn <4 x float> %i.gg, splat (float f0x3ED55555)
  %i.gi = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.gh, <4 x float> splat (float 1.290000e+02))
  %i.gj = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.gi, <4 x float> splat (float f0xC2FDFFFF)) ; 4 uses
  %i.gk = fadd reassoc nsz arcp contract afn <4 x float> %i.gj, splat (float -5.000000e-01)
  %i.gl = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.gk)
  %i.gm = sitofp reassoc nsz arcp contract afn <4 x i32> %i.gl to <4 x float> ; 5 uses
  %i.gn = fcmp reassoc nsz arcp contract afn ugt float %i.et, 3.130800e-03
  br i1 %i.gn, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.us
  %i.go = fmul reassoc nnan nsz arcp contract afn float %i.et, 1.292000e+01
  br label %dt_XYZ_to_sRGB.exit.i.us

bb.d:                                             ; preds = %.lr.ph.i.us
  %.sroa.014.0.vec.extract.i.i.i.i.us = extractelement <4 x float> %i.gm, i64 0
  %foldExtExtBinop = fsub reassoc nsz arcp contract afn <4 x float> %i.gj, %i.gm
  %i.gp = extractelement <4 x float> %foldExtExtBinop, i64 0 ; 4 uses
  %i.gq = fmul reassoc nsz arcp contract afn float %i.gp, f0x3C5DBE69
  %i.gr = fadd reassoc nsz arcp contract afn float %i.gq, f0x3D5509F9
  %i.gs = fmul reassoc nsz arcp contract afn float %i.gr, %i.gp
  %i.gt = fadd reassoc nsz arcp contract afn float %i.gs, f0x3E773CC5
  %i.gu = fmul reassoc nsz arcp contract afn float %i.gt, %i.gp
  %i.gv = fadd reassoc nsz arcp contract afn float %i.gu, f0x3F3168B3
  %i.gw = fmul reassoc nsz arcp contract afn float %i.gv, %i.gp
  %i.gx = fadd reassoc nsz arcp contract afn float %i.gw, f0x3F800016
  %i.gy = fptosi float %.sroa.014.0.vec.extract.i.i.i.i.us to i32
  %i.gz = shl i32 %i.gy, 23
  %i.ha = add i32 %i.gz, 1065353216
  %i.hb = bitcast i32 %i.ha to float
  %i.hc = fmul reassoc nnan nsz arcp contract afn float %i.hb, 1.055000e+00
  %i.hd = fmul reassoc nsz arcp contract afn float %i.hc, %i.gx
  %i.he = fadd reassoc nsz arcp contract afn float %i.hd, -5.500000e-02
  br label %dt_XYZ_to_sRGB.exit.i.us

dt_XYZ_to_sRGB.exit.i.us:                         ; preds = %bb.d, %bb.c
  %i.hf = phi reassoc nsz arcp contract afn float [ %i.go, %bb.c ], [ %i.he, %bb.d ]
  %.sroa.014.4.vec.extract.i.i.i.i.us = extractelement <4 x float> %i.gm, i64 1
  %foldExtExtBinop175 = fsub reassoc nsz arcp contract afn <4 x float> %i.gj, %i.gm
  %i.hg = extractelement <4 x float> %foldExtExtBinop175, i64 1 ; 4 uses
  %i.hh = fmul reassoc nsz arcp contract afn float %i.hg, f0x3C5DBE69
  %i.hi = fadd reassoc nsz arcp contract afn float %i.hh, f0x3D5509F9
  %i.hj = fmul reassoc nsz arcp contract afn float %i.hi, %i.hg
  %i.hk = fadd reassoc nsz arcp contract afn float %i.hj, f0x3E773CC5
  %i.hl = fmul reassoc nsz arcp contract afn float %i.hk, %i.hg
  %i.hm = fadd reassoc nsz arcp contract afn float %i.hl, f0x3F3168B3
  %i.hn = fmul reassoc nsz arcp contract afn float %i.hm, %i.hg
  %i.ho = fadd reassoc nsz arcp contract afn float %i.hn, f0x3F800016
  %i.hp = fptosi float %.sroa.014.4.vec.extract.i.i.i.i.us to i32
  %i.hq = shl i32 %i.hp, 23
  %i.hr = add i32 %i.hq, 1065353216
  %i.hs = bitcast i32 %i.hr to float
  %i.ht = fmul reassoc nsz arcp contract afn float %i.ex, 1.292000e+01
  %i.hu = fcmp reassoc nsz arcp contract afn ugt float %i.ex, 3.130800e-03
  %i.hv = fmul reassoc nnan nsz arcp contract afn float %i.hs, 1.055000e+00
  %i.hw = fmul reassoc nsz arcp contract afn float %i.hv, %i.ho
  %i.hx = fadd reassoc nsz arcp contract afn float %i.hw, -5.500000e-02
  %i.hy = select reassoc nsz arcp contract afn i1 %i.hu, float %i.hx, float %i.ht
  %i.hz = fcmp reassoc nsz arcp contract afn ugt <2 x float> %i.fk, splat (float 3.130800e-03)
  %i.ia = shufflevector <4 x float> %i.gj, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.ib = shufflevector <4 x float> %i.gm, <4 x float> poison, <2 x i32> <i32 2, i32 3> ; 2 uses
  %i.ic = fsub reassoc nsz arcp contract afn <2 x float> %i.ia, %i.ib ; 4 uses
  %i.id = fmul reassoc nsz arcp contract afn <2 x float> %i.ic, splat (float f0x3C5DBE69)
  %i.ie = fadd reassoc nsz arcp contract afn <2 x float> %i.id, splat (float f0x3D5509F9)
  %i.if = fmul reassoc nsz arcp contract afn <2 x float> %i.ie, %i.ic
  %i.ig = fadd reassoc nsz arcp contract afn <2 x float> %i.if, splat (float f0x3E773CC5)
  %i.ih = fmul reassoc nsz arcp contract afn <2 x float> %i.ig, %i.ic
  %i.ii = fadd reassoc nsz arcp contract afn <2 x float> %i.ih, splat (float f0x3F3168B3)
  %i.ij = fmul reassoc nsz arcp contract afn <2 x float> %i.ii, %i.ic
  %i.ik = fadd reassoc nsz arcp contract afn <2 x float> %i.ij, splat (float f0x3F800016)
  %i.il = fptosi <2 x float> %i.ib to <2 x i32>
  %i.im = shl <2 x i32> %i.il, splat (i32 23)
  %i.in = add <2 x i32> %i.im, splat (i32 1065353216)
  %i.io = bitcast <2 x i32> %i.in to <2 x float>
  %i.ip = fmul reassoc nsz arcp contract afn <2 x float> %i.fk, <float 1.292000e+01, float 1.000000e+00>
  %i.iq = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.io, splat (float 1.055000e+00)
  %i.ir = fmul reassoc nsz arcp contract afn <2 x float> %i.iq, %i.ik
  %i.is = fadd reassoc nsz arcp contract afn <2 x float> %i.ir, splat (float -5.500000e-02)
  %i.it = select <2 x i1> %i.hz, <2 x float> %i.is, <2 x float> %i.ip
  %i.iu = insertelement <4 x float> poison, float %i.hf, i64 0
  %i.iv = insertelement <4 x float> %i.iu, float %i.hy, i64 1
  %i.iw = shufflevector <2 x float> %i.it, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ix = shufflevector <4 x float> %i.iv, <4 x float> %i.iw, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.iy = fadd reassoc nsz arcp contract afn <4 x float> %i.ix, splat (float -1.000000e+00)
  %i.iz = fmul reassoc nsz arcp contract afn <4 x float> %i.iy, %i.be
  %i.ja = fadd reassoc nsz arcp contract afn <4 x float> %i.iz, splat (float 1.000000e+00)
  %i.jb = fmul reassoc nsz arcp contract afn <4 x float> %i.ja, %i.bx
  %i.jc = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.jb, <4 x float> zeroinitializer)
  %bc.i.us = bitcast <4 x float> %i.jc to <4 x i32> ; 2 uses
  %i.jd = and <4 x i32> %bc.i.us, splat (i32 8388607)
  %i.je = or disjoint <4 x i32> %i.jd, splat (i32 1065353216)
  %i.jf = bitcast <4 x i32> %i.je to <4 x float>  ; 5 uses
  %i.jg = lshr <4 x i32> %bc.i.us, splat (i32 23)
  %i.jh = and <4 x i32> %i.jg, splat (i32 255)
  %i.ji = add nsw <4 x i32> %i.jh, splat (i32 -127)
  %i.jj = sitofp <4 x i32> %i.ji to <4 x float>
  %i.jk = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.jf, splat (float f0x3D74552F)
  %i.jl = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.jk, splat (float f0xBEEE7397)
  %i.jm = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.jl, %i.jf
  %i.jn = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.jm, splat (float f0x3FBD96DD)
  %i.jo = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.jn, %i.jf
  %i.jp = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.jo, splat (float f0xC02153F6)
  %i.jq = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.jp, %i.jf
  %i.jr = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.jq, splat (float f0x4038D96C)
  %i.js = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.jf, splat (float -1.000000e+00)
  %i.jt = fmul reassoc nsz arcp contract afn <4 x float> %i.jr, %i.js
  %i.ju = fadd reassoc nsz arcp contract afn <4 x float> %i.jt, %i.jj
  %i.jv = fmul reassoc nsz arcp contract afn <4 x float> %i.ju, %i.df
  %i.jw = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.jv, <4 x float> splat (float 1.290000e+02))
  %i.jx = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.jw, <4 x float> splat (float f0xC2FDFFFF)) ; 3 uses
  %i.jy = fadd reassoc nsz arcp contract afn <4 x float> %i.jx, splat (float -5.000000e-01)
  %i.jz = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.jy)
  %i.ka = sitofp reassoc nsz arcp contract afn <4 x i32> %i.jz to <4 x float> ; 3 uses
  %i.kb = insertelement <4 x float> %i.jx, float 1.000000e+00, i64 3
  %i.kc = insertelement <4 x float> %i.ka, float 0.000000e+00, i64 3
  %i.kd = fsub reassoc nsz arcp contract afn <4 x float> %i.kb, %i.kc ; 5 uses
  %i.ke = shufflevector <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, <4 x float> %i.jx, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.kf = shufflevector <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>, <4 x float> %i.ka, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.kg = fsub reassoc nsz arcp contract afn <4 x float> %i.ke, %i.kf ; 3 uses
  %i.kh = fptosi <4 x float> %i.ka to <4 x i32>
  %i.ki = shl <4 x i32> %i.kh, splat (i32 23)
  %i.kj = add <4 x i32> %i.ki, splat (i32 1065353216)
  %i.kk = extractelement <4 x float> %i.kd, i64 2 ; 3 uses
  %i.kl = fmul reassoc nsz arcp contract afn float %i.kk, f0x3C5DBE69
  %i.km = fadd reassoc nsz arcp contract afn float %i.kl, f0x3D5509F9
  %i.kn = fmul reassoc nsz arcp contract afn float %i.km, %i.kk
  %i.ko = fadd reassoc nsz arcp contract afn float %i.kn, f0x3E773CC5
  %i.kp = fmul reassoc nsz arcp contract afn float %i.ko, %i.kk
  %i.kq = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %i.kp, i64 2
  %i.kr = fmul reassoc nsz arcp contract afn <4 x float> %i.kd, <float f0x3C5DBE69, float f0x3C5DBE69, float poison, float poison>
  %i.ks = fadd reassoc nsz arcp contract afn <4 x float> %i.kr, <float f0x3D5509F9, float f0x3D5509F9, float poison, float poison>
  %i.kt = fmul reassoc nsz arcp contract afn <4 x float> %i.ks, %i.kd
  %i.ku = fadd reassoc nsz arcp contract afn <4 x float> %i.kt, <float f0x3E773CC5, float f0x3E773CC5, float poison, float poison>
  %i.kv = fmul reassoc nsz arcp contract afn <4 x float> %i.ku, %i.kd
  %i.kw = shufflevector <4 x float> %i.kv, <4 x float> %i.kq, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.kx = fadd reassoc nsz arcp contract afn <4 x float> %i.kw, <float f0x3F3168B3, float f0x3F3168B3, float f0x3F3168B3, float -0.000000e+00>
  %i.ky = fmul reassoc nsz arcp contract afn <4 x float> %i.kx, %i.kd
  %i.kz = fadd reassoc nsz arcp contract afn <4 x float> %i.ky, <float f0x3F800016, float f0x3F800016, float f0x3F800016, float f0x3F72A76F>
  %i.la = extractelement <4 x float> %i.kg, i64 3 ; 2 uses
  %i.lb = fmul reassoc nsz arcp contract afn float %i.la, f0x3C5DBE69
  %i.lc = fadd reassoc nsz arcp contract afn float %i.lb, f0x3D5509F9
  %i.ld = fmul reassoc nsz arcp contract afn float %i.lc, %i.la
  %i.le = fadd reassoc nsz arcp contract afn float %i.ld, f0x3E773CC5
  %i.lf = insertelement <4 x float> <float f0x3F72A76F, float -0.000000e+00, float f0x3F72A76F, float poison>, float %i.le, i64 3
  %i.lg = fmul reassoc nsz arcp contract afn <4 x float> %i.lf, %i.kg
  %i.lh = fadd reassoc nsz arcp contract afn <4 x float> %i.lg, <float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float f0x3F3168B3>
  %i.li = fmul reassoc nsz arcp contract afn <4 x float> %i.lh, %i.kg
  %i.lj = fadd reassoc nsz arcp contract afn <4 x float> %i.li, <float -0.000000e+00, float f0x3F72A76F, float -0.000000e+00, float f0x3F800016>
  %i.lk = bitcast <4 x i32> %i.kj to <4 x float>
  %i.ll = fmul reassoc nsz arcp contract afn <4 x float> %i.kz, %i.lk ; 3 uses
  %i.lm = extractelement <4 x float> %i.ll, i64 0 ; 2 uses
  %i.ln = fmul reassoc nsz arcp contract afn float %i.lm, f0x3D9E8391
  %i.lo = fmul reassoc nsz arcp contract afn <4 x float> %i.ll, %i.lj
  %i.lp = fadd reassoc nsz arcp contract afn <4 x float> %i.lo, splat (float f0x3D55891A)
  %i.lq = bitcast <4 x float> %i.lp to <4 x i32>  ; 2 uses
  %i.lr = and <4 x i32> %i.lq, splat (i32 8388607)
  %i.ls = or disjoint <4 x i32> %i.lr, splat (i32 1065353216)
  %i.lt = bitcast <4 x i32> %i.ls to <4 x float>  ; 5 uses
  %i.lu = lshr <4 x i32> %i.lq, splat (i32 23)
  %i.lv = and <4 x i32> %i.lu, splat (i32 255)
  %i.lw = add nsw <4 x i32> %i.lv, splat (i32 -127)
  %i.lx = sitofp <4 x i32> %i.lw to <4 x float>
  %i.ly = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.lt, splat (float f0x3D74552F)
  %i.lz = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.ly, splat (float f0xBEEE7397)
  %i.ma = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.lz, %i.lt
  %i.mb = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.ma, splat (float f0x3FBD96DD)
  %i.mc = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.mb, %i.lt
  %i.md = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.mc, splat (float f0xC02153F6)
  %i.me = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.md, %i.lt
  %i.mf = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.me, splat (float f0x4038D96C)
  %i.mg = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.lt, splat (float -1.000000e+00)
end_hunk_0
begin_hunk_1_@process:bb.a
  %i.add = bitcast <4 x i32> %i.adc to <4 x float> ; 4 uses
  %i.ade = fmul reassoc nsz arcp contract afn <4 x float> %i.add, %i.add
  %i.adf = fmul reassoc nsz arcp contract afn <4 x float> %i.ade, %i.add ; 2 uses
  %factor.i.i.i114.us = fmul reassoc nsz arcp contract afn <4 x float> %i.acv, <float f0x4004C0A6, float 2.000000e+00, float f0x401B2B9B, float 2.000000e+00>
  %i.adg = fadd reassoc nsz arcp contract afn <4 x float> %i.adf, %factor.i.i.i114.us
  %i.adh = fmul reassoc nsz arcp contract afn <4 x float> %i.adg, %i.add
  %factor19.i.i.i115.us = fmul reassoc nsz arcp contract afn <4 x float> %i.adf, splat (float 2.000000e+00)
  %i.adi = fadd reassoc nsz arcp contract afn <4 x float> %factor19.i.i.i115.us, %i.acx
  %i.adj = fdiv reassoc nsz arcp contract afn <4 x float> %i.adh, %i.adi
  %i.adk = fmul reassoc nsz arcp contract afn <4 x float> %i.acv, <float f0x410137F7, float f0x40F92F69, float f0x41170A26, float f0x40F92F69>
  %i.adl = fadd reassoc nsz arcp contract afn <4 x float> %i.adk, splat (float f0x3E0D3DCB)
  %i.adm = fcmp reassoc nsz arcp contract afn ule <4 x float> %i.acx, splat (float f0x3C111AA7)
  %.v.i.i44.i.us = select <4 x i1> %i.adm, <4 x float> %i.adl, <4 x float> %i.adj ; 2 uses
  %i.adn = shufflevector <4 x float> %.v.i.i44.i.us, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 3>
  %i.ado = shufflevector <4 x float> %.v.i.i44.i.us, <4 x float> poison, <4 x i32> <i32 3, i32 1, i32 2, i32 3>
  %i.adp = fsub reassoc nsz arcp contract afn <4 x float> %i.adn, %i.ado
  %i.adq = fmul reassoc nsz arcp contract afn <4 x float> %i.adp, <float 1.160000e+02, float 5.000000e+02, float 2.000000e+02, float 0.000000e+00>
  store <4 x float> %i.adq, ptr %i.acw, align 16, !tbaa !49, !nontemporal !53
  %i.adr = add nuw i64 %.0437.i.us, 1             ; 2 uses
  %exitcond.not.i116.us = icmp eq i64 %i.adr, %i.xw
  br i1 %exitcond.not.i116.us, label %_process_legacy.exit.us148, label %.lr.ph.i109.us

_process_legacy.exit.us148:                       ; preds = %bb.w, %.lr.ph.split.us146
  %i.ads = icmp ult i64 %i.xr, %i.q
  br i1 %i.ads, label %.lr.ph.split.us146, label %._crit_edge

._crit_edge:                                      ; preds = %_process_legacy.exit.us148, %_process_legacy.exit.us145, %_process_legacy.exit.us, %_process_legacy.exit, %bb.b
  tail call void @llvm.x86.sse.sfence()
  br label %bb.x

_process_legacy.exit:                             ; preds = %.lr.ph, %_process_legacy.exit
  %.0142 = phi i64 [ %i.adt, %_process_legacy.exit ], [ 0, %.lr.ph ]
  %i.adt = add i64 %.0142, %i.ca                  ; 2 uses
  %i.adu = icmp ult i64 %i.adt, %i.q
  br i1 %i.adu, label %_process_legacy.exit, label %._crit_edge

bb.x:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

declare i32 @dt_iop_have_required_input_format(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @color_picker_apply(ptr noundef %0, ptr nofree noundef readnone captures(address) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 9 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !54  ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !66
  %i.e = icmp eq ptr %1, %i.d
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !68
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.h = load atomic i32, ptr %i.g seq_cst, align 4
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %bb.c, label %apply_lift_neutralize.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !109  ; 8 uses
  %i.k = load ptr, ptr %i.a, align 16, !tbaa !54  ; 9 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 516
  %i.n = load float, ptr %i.m, align 4, !tbaa !11
  %i.o = load float, ptr %i.l, align 16, !tbaa !11
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.q = load float, ptr %i.p, align 8, !tbaa !11
  %i.r = fmul reassoc nsz arcp contract afn float %i.n, 2.000000e-03
  %i.s = fmul reassoc nsz arcp contract afn float %i.o, 8.620690e-03
  %i.t = fadd reassoc nsz arcp contract afn float %i.s, f0x3E0D3DCB ; 7 uses
  %i.u = fmul reassoc nsz arcp contract afn float %i.q, 5.000000e-03
  %i.v = fadd reassoc nsz arcp contract afn float %i.t, %i.r ; 5 uses
  %i.w = fcmp reassoc nsz arcp contract afn ogt float %i.v, f0x3E53DCB1
  %i.x = fmul reassoc nsz arcp contract afn float %i.v, %i.v
  %i.y = fmul reassoc nsz arcp contract afn float %i.x, %i.v
  %i.z = fmul reassoc nsz arcp contract afn float %i.v, f0x3E038026
  %i.aa = fadd reassoc nsz arcp contract afn float %i.z, f0xBC911AA6
  %i.ab = select reassoc nsz arcp contract afn i1 %i.w, float %i.y, float %i.aa ; 3 uses
  %i.ac = fcmp reassoc nsz arcp contract afn ogt float %i.t, f0x3E53DCB1
  %i.ad = fmul reassoc nsz arcp contract afn float %i.t, %i.t
  %i.ae = fmul reassoc nsz arcp contract afn float %i.ad, %i.t
  %i.af = fmul reassoc nsz arcp contract afn float %i.t, f0x3E038026
  %i.ag = fadd reassoc nsz arcp contract afn float %i.af, f0xBC911AA6
  %i.ah = select reassoc nsz arcp contract afn i1 %i.ac, float %i.ae, float %i.ag ; 5 uses
  %i.ai = fsub reassoc nsz arcp contract afn float %i.t, %i.u ; 5 uses
  %i.aj = fcmp reassoc nsz arcp contract afn ogt float %i.ai, f0x3E53DCB1
  %i.ak = fmul reassoc nsz arcp contract afn float %i.ai, %i.ai
  %i.al = fmul reassoc nsz arcp contract afn float %i.ak, %i.ai
  %i.am = fmul reassoc nsz arcp contract afn float %i.ai, f0x3E038026
  %i.an = fadd reassoc nsz arcp contract afn float %i.am, f0xBC911AA6
  %i.ao = select reassoc nsz arcp contract afn i1 %i.aj, float %i.al, float %i.an ; 2 uses
  %i.ap = fmul reassoc nsz arcp contract afn float %i.ab, 9.642000e-01
  %i.aq = fmul reassoc nsz arcp contract afn float %i.ab, f0x3FA61CF4
  %i.ar = fmul reassoc nsz arcp contract afn float %i.ah, f0x3E82DEFC
  %i.as = fsub reassoc nsz arcp contract afn float %i.aq, %i.ar
  %i.at = fmul reassoc nsz arcp contract afn float %i.ao, f0xBD2CB230
  %i.au = fadd reassoc nsz arcp contract afn float %i.as, %i.at ; 2 uses
  %i.av = fmul reassoc nsz arcp contract afn float %i.ab, f0x3F066D1A
  %i.aw = getelementptr inbounds nuw i8, ptr %i.k, i64 264
  store float %i.au, ptr %i.aw, align 4, !tbaa !11
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 268
  %.sroa.18.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 272
  %i.ax = getelementptr inbounds nuw i8, ptr %i.k, i64 300
  store i32 1, ptr %i.ax, align 4, !tbaa !22
  %i.ay = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.az = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.ba = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.bb = getelementptr inbounds nuw i8, ptr %i.j, i64 28
  %i.bc = getelementptr inbounds nuw i8, ptr %i.j, i64 44
  %i.bd = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.j, i64 12 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.bg = fadd reassoc nsz arcp contract afn float %i.ap, %i.ah
  %i.bh = fmul reassoc nsz arcp contract afn float %i.ah, f0x3FC10BA0
  %i.bi = fmul reassoc nsz arcp contract afn float %i.bg, 0.000000e+00
  %i.bj = fsub reassoc nsz arcp contract afn float %i.bh, %i.av
  %i.bk = insertelement <2 x float> poison, float %i.ao, i64 0
  %i.bl = shufflevector <2 x float> %i.bk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bm = fmul reassoc nsz arcp contract afn <2 x float> %i.bl, <float f0x3C8AC481, float f0x3F7FE762>
  %i.bn = insertelement <2 x float> poison, float %i.bj, i64 0
  %i.bo = insertelement <2 x float> %i.bn, float %i.bi, i64 1
  %i.bp = fadd reassoc nsz arcp contract afn <2 x float> %i.bo, %i.bm ; 3 uses
  %i.bq = extractelement <2 x float> %i.bp, i64 0
  store float %i.bq, ptr %.sroa.11.0..sroa_idx.i, align 4, !tbaa !11
  %i.br = extractelement <2 x float> %i.bp, i64 1
  store float %i.br, ptr %.sroa.18.0..sroa_idx.i, align 4, !tbaa !11
  %i.bs = load float, ptr %i.az, align 4, !tbaa !11
  %i.bt = fsub reassoc nsz arcp contract afn float 2.000000e+00, %i.bs
  %i.bu = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.bt
  %i.bv = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ah, float %i.bu)
  %i.bw = load float, ptr %i.ba, align 4, !tbaa !11
  %i.bx = load <2 x float>, ptr %i.bb, align 4, !tbaa !11
  %i.by = fsub reassoc nsz arcp contract afn <2 x float> splat (float 2.000000e+00), %i.bx
  %i.bz = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.by
  %i.ca = insertelement <2 x float> poison, float %i.ah, i64 0
  %i.cb = shufflevector <2 x float> %i.ca, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cc = tail call reassoc nsz arcp contract afn <2 x float> @llvm.pow.v2f32(<2 x float> %i.cb, <2 x float> %i.bz)
  %i.cd = load <2 x float>, ptr %i.bc, align 4, !tbaa !11
  %i.ce = fadd reassoc nsz arcp contract afn float %i.bv, 1.000000e+00
  %i.cf = fmul reassoc nsz arcp contract afn float %i.bw, %i.au
  %i.cg = fsub reassoc nsz arcp contract afn float %i.ce, %i.cf
  store float %i.cg, ptr %i.bd, align 4, !tbaa !11
  %i.ch = fmul reassoc nsz arcp contract afn <2 x float> %i.bp, %i.cd
  %i.ci = fsub reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.ch
  %i.cj = fadd reassoc nsz arcp contract afn <2 x float> %i.ci, %i.cc
  store <2 x float> %i.cj, ptr %i.be, align 4, !tbaa !11
  %i.ck = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !68
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 104
  %i.cm = atomicrmw add ptr %i.cl, i32 1 seq_cst, align 4 ; 0 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.k, i64 120
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !110
  %i.cp = load float, ptr %i.bd, align 4, !tbaa !11
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.co, float noundef %i.cp) #23
  %i.cq = getelementptr inbounds nuw i8, ptr %i.k, i64 128
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !111
  %i.cs = load float, ptr %i.be, align 4, !tbaa !11
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.cr, float noundef %i.cs) #23
  %i.ct = getelementptr inbounds nuw i8, ptr %i.k, i64 136
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !112
  %i.cv = load float, ptr %i.bf, align 4, !tbaa !11
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.cu, float noundef %i.cv) #23
  %i.cw = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !66
  %i.cy = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !113
  tail call fastcc void @set_HSL_sliders(ptr noundef %i.cx, ptr noundef %i.cz, ptr noundef nonnull %i.ay)
  %i.da = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !68
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 104
  %i.dc = atomicrmw sub ptr %i.db, i32 1 seq_cst, align 4 ; 0 uses
  %i.dd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !114
  tail call void @dt_dev_add_history_item(ptr noundef %i.dd, ptr noundef nonnull %0, i32 noundef 1) #23
  br label %apply_lift_neutralize.exit

bb.d:                                             ; preds = %bb.a
  %i.de = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !115
  %i.dg = icmp eq ptr %1, %i.df
  br i1 %i.dg, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.dh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !68
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 104
  %i.dj = load atomic i32, ptr %i.di seq_cst, align 4
  %.not.i29 = icmp eq i32 %i.dj, 0
  br i1 %.not.i29, label %bb.f, label %apply_lift_neutralize.exit

bb.f:                                             ; preds = %bb.e
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !109 ; 8 uses
  %i.dm = load ptr, ptr %i.a, align 16, !tbaa !54 ; 9 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 516
  %i.dp = load float, ptr %i.do, align 4, !tbaa !11
  %i.dq = load float, ptr %i.dn, align 16, !tbaa !11
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.ds = load float, ptr %i.dr, align 8, !tbaa !11
  %i.dt = fmul reassoc nsz arcp contract afn float %i.dp, 2.000000e-03
  %i.du = fmul reassoc nsz arcp contract afn float %i.dq, 8.620690e-03
  %i.dv = fadd reassoc nsz arcp contract afn float %i.du, f0x3E0D3DCB ; 7 uses
  %i.dw = fmul reassoc nsz arcp contract afn float %i.ds, 5.000000e-03
  %i.dx = fadd reassoc nsz arcp contract afn float %i.dv, %i.dt ; 5 uses
  %3 = fcmp reassoc nsz arcp contract afn ogt float %i.dx, f0x3E53DCB1
  %4 = fmul reassoc nsz arcp contract afn float %i.dx, %i.dx
  %5 = fmul reassoc nsz arcp contract afn float %4, %i.dx
  %i.dy = fmul reassoc nsz arcp contract afn float %i.dx, f0x3E038026
  %6 = fadd reassoc nsz arcp contract afn float %i.dy, f0xBC911AA6
  %7 = fcmp reassoc nsz arcp contract afn ogt float %i.dv, f0x3E53DCB1
  %i.dz = fmul reassoc nsz arcp contract afn float %i.dv, %i.dv
  %8 = fmul reassoc nsz arcp contract afn float %i.dz, %i.dv
  %9 = fmul reassoc nsz arcp contract afn float %i.dv, f0x3E038026
  %10 = fadd reassoc nsz arcp contract afn float %9, f0xBC911AA6
  %i.ea = fsub reassoc nsz arcp contract afn float %i.dv, %i.dw ; 5 uses
  %i.eb = fcmp reassoc nsz arcp contract afn ogt float %i.ea, f0x3E53DCB1
  %i.ec = fmul reassoc nsz arcp contract afn float %i.ea, %i.ea
  %i.ed = fmul reassoc nsz arcp contract afn float %i.ec, %i.ea
  %i.ee = fmul reassoc nsz arcp contract afn float %i.ea, f0x3E038026
  %i.ef = fadd reassoc nsz arcp contract afn float %i.ee, f0xBC911AA6
  %i.eg = select reassoc nsz arcp contract afn i1 %i.eb, float %i.ed, float %i.ef ; 2 uses
  %i.eh = fmul reassoc nsz arcp contract afn float %i.eg, f0x3F7FE762
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dm, i64 276
  %.sroa.11.0..sroa_idx.i30 = getelementptr inbounds nuw i8, ptr %i.dm, i64 280
  %.sroa.18.0..sroa_idx.i31 = getelementptr inbounds nuw i8, ptr %i.dm, i64 284
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dm, i64 304
  store i32 1, ptr %i.ej, align 4, !tbaa !22
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dl, i64 20
  %i.el = getelementptr inbounds nuw i8, ptr %i.dl, i64 40
  %i.em = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.dl, i64 48
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dl, i64 24 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dl, i64 28
  %11 = select reassoc nsz arcp contract afn i1 %7, float %8, float %10 ; 4 uses
  %12 = select reassoc nsz arcp contract afn i1 %3, float %5, float %6 ; 3 uses
  %13 = fmul reassoc nsz arcp contract afn float %12, 9.642000e-01
  %14 = insertelement <2 x float> poison, float %11, i64 0
  %15 = insertelement <2 x float> %14, float %12, i64 1
  %16 = fmul reassoc nsz arcp contract afn <2 x float> %15, <float f0x3E82DEFC, float f0x3F066D1A>
  %i.er = fmul reassoc nsz arcp contract afn float %11, f0x3FC10BA0
  %17 = fmul reassoc nsz arcp contract afn float %12, f0x3FA61CF4
  %18 = insertelement <2 x float> poison, float %17, i64 0
  %19 = insertelement <2 x float> %18, float %i.er, i64 1
  %i.es = fsub reassoc nsz arcp contract afn <2 x float> %19, %16
  %i.et = insertelement <2 x float> poison, float %i.eg, i64 0
  %i.eu = shufflevector <2 x float> %i.et, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ev = fmul reassoc nsz arcp contract afn <2 x float> %i.eu, <float f0xBD2CB230, float f0x3C8AC481>
  %i.ew = fadd reassoc nsz arcp contract afn <2 x float> %i.es, %i.ev ; 3 uses
  %i.ex = fadd reassoc nsz arcp contract afn float %13, %11
  %i.ey = fmul reassoc nsz arcp contract afn float %i.ex, 0.000000e+00
  %i.ez = fadd reassoc nsz arcp contract afn float %i.ey, %i.eh ; 2 uses
  %i.fa = extractelement <2 x float> %i.ew, i64 0
  store float %i.fa, ptr %i.ei, align 4, !tbaa !11
  %i.fb = extractelement <2 x float> %i.ew, i64 1
  store float %i.fb, ptr %.sroa.11.0..sroa_idx.i30, align 4, !tbaa !11
  store float %i.ez, ptr %.sroa.18.0..sroa_idx.i31, align 4, !tbaa !11
  %i.fc = tail call reassoc nsz arcp contract afn float @llvm.log.f32(float %11) ; 2 uses
  %i.fd = load <2 x float>, ptr %i.el, align 4, !tbaa !11
  %i.fe = fmul reassoc nsz arcp contract afn <2 x float> %i.ew, %i.fd
  %i.ff = load <2 x float>, ptr %i.em, align 4, !tbaa !11
  %i.fg = fadd reassoc nsz arcp contract afn <2 x float> %i.ff, %i.fe
  %i.fh = fadd reassoc nsz arcp contract afn <2 x float> %i.fg, splat (float -1.000000e+00)
  %i.fi = tail call reassoc nsz arcp contract afn <2 x float> @llvm.log.v2f32(<2 x float> %i.fh)
  %i.fj = insertelement <2 x float> poison, float %i.fc, i64 0
  %i.fk = shufflevector <2 x float> %i.fj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fl = fdiv reassoc nsz arcp contract afn <2 x float> %i.fk, %i.fi
  %i.fm = load float, ptr %i.en, align 4, !tbaa !11
  %i.fn = fmul reassoc nsz arcp contract afn float %i.fm, %i.ez
  %i.fo = load float, ptr %i.eo, align 4, !tbaa !11
  %i.fp = fadd reassoc nsz arcp contract afn float %i.fn, %i.fo
  %i.fq = fadd reassoc nsz arcp contract afn float %i.fp, -1.000000e+00
  %i.fr = tail call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.fq)
  %i.fs = fdiv reassoc nsz arcp contract afn float %i.fc, %i.fr
  %i.ft = fpext <2 x float> %i.fl to <2 x double>
  %i.fu = fsub reassoc nsz arcp contract afn <2 x double> splat (double 2.000000e+00), %i.ft ; 3 uses
  %i.fv = fcmp reassoc nsz arcp contract afn ogt <2 x double> %i.fu, splat (double 2.000000e+00)
  %i.fw = fcmp reassoc nsz arcp contract afn olt <2 x double> %i.fu, splat (double f0x3F1A36E2E0000000)
  %i.fx = select <2 x i1> %i.fw, <2 x double> splat (double f0x3F1A36E2E0000000), <2 x double> %i.fu
  %i.fy = fptrunc <2 x double> %i.fx to <2 x float>
  %i.fz = select <2 x i1> %i.fv, <2 x float> splat (float 2.000000e+00), <2 x float> %i.fy
  store <2 x float> %i.fz, ptr %i.ep, align 4, !tbaa !11
  %i.ga = fpext reassoc nsz arcp contract afn float %i.fs to double
  %i.gb = fsub reassoc nsz arcp contract afn double 2.000000e+00, %i.ga ; 3 uses
  %i.gc = fcmp reassoc nsz arcp contract afn ogt double %i.gb, 2.000000e+00
  %i.gd = fcmp reassoc nsz arcp contract afn olt double %i.gb, f0x3F1A36E2E0000000
  %i.ge = select reassoc nsz arcp contract afn i1 %i.gd, double f0x3F1A36E2E0000000, double %i.gb
  %i.gf = fptrunc reassoc nsz arcp contract afn double %i.ge to float
  %i.gg = select i1 %i.gc, float 2.000000e+00, float %i.gf
  %i.gh = getelementptr inbounds nuw i8, ptr %i.dl, i64 32 ; 2 uses
  store float %i.gg, ptr %i.gh, align 4, !tbaa !11
  %i.gi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !68
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 104
  %i.gk = atomicrmw add ptr %i.gj, i32 1 seq_cst, align 4 ; 0 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.dm, i64 152
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !116
  %i.gn = load float, ptr %i.ep, align 4, !tbaa !11
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.gm, float noundef %i.gn) #23
  %i.go = getelementptr inbounds nuw i8, ptr %i.dm, i64 160
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !117
  %i.gq = load float, ptr %i.eq, align 4, !tbaa !11
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.gp, float noundef %i.gq) #23
  %i.gr = getelementptr inbounds nuw i8, ptr %i.dm, i64 168
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !118
  %i.gt = load float, ptr %i.gh, align 4, !tbaa !11
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.gs, float noundef %i.gt) #23
  %i.gu = getelementptr inbounds nuw i8, ptr %i.dm, i64 80
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !115
  %i.gw = getelementptr inbounds nuw i8, ptr %i.dm, i64 104
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !119
  tail call fastcc void @set_HSL_sliders(ptr noundef %i.gv, ptr noundef %i.gx, ptr noundef nonnull %i.ek)
  %i.gy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !68
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 104
  %i.ha = atomicrmw sub ptr %i.gz, i32 1 seq_cst, align 4 ; 0 uses
  %i.hb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !114
  tail call void @dt_dev_add_history_item(ptr noundef %i.hb, ptr noundef nonnull %0, i32 noundef 1) #23
  br label %apply_lift_neutralize.exit

bb.g:                                             ; preds = %bb.d
  %i.hc = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !120
  %i.he = icmp eq ptr %1, %i.hd
  br i1 %i.he, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.hf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !68
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 104
  %i.hh = load atomic i32, ptr %i.hg seq_cst, align 4
  %.not.i32 = icmp eq i32 %i.hh, 0
  br i1 %.not.i32, label %bb.i, label %apply_lift_neutralize.exit

bb.i:                                             ; preds = %bb.h
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !109 ; 8 uses
  %i.hk = load ptr, ptr %i.a, align 16, !tbaa !54 ; 9 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 516
  %i.hn = load float, ptr %i.hm, align 4, !tbaa !11
  %i.ho = load float, ptr %i.hl, align 16, !tbaa !11
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.hq = load float, ptr %i.hp, align 8, !tbaa !11
  %i.hr = fmul reassoc nsz arcp contract afn float %i.hn, 2.000000e-03
  %i.hs = fmul reassoc nsz arcp contract afn float %i.ho, 8.620690e-03
  %i.ht = fadd reassoc nsz arcp contract afn float %i.hs, f0x3E0D3DCB ; 3 uses
  %i.hu = fmul reassoc nsz arcp contract afn float %i.hq, 5.000000e-03
  %i.hv = fadd reassoc nsz arcp contract afn float %i.ht, %i.hr
  %i.hw = fsub reassoc nsz arcp contract afn float %i.ht, %i.hu ; 5 uses
  %i.hx = fcmp reassoc nsz arcp contract afn ogt float %i.hw, f0x3E53DCB1
  %i.hy = fmul reassoc nsz arcp contract afn float %i.hw, %i.hw
  %i.hz = fmul reassoc nsz arcp contract afn float %i.hy, %i.hw
  %i.ia = fmul reassoc nsz arcp contract afn float %i.hw, f0x3E038026
  %i.ib = fadd reassoc nsz arcp contract afn float %i.ia, f0xBC911AA6
  %i.ic = select reassoc nsz arcp contract afn i1 %i.hx, float %i.hz, float %i.ib ; 2 uses
  %i.id = fmul reassoc nsz arcp contract afn float %i.ic, f0x3F7FE762
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hk, i64 288
  %.sroa.11.0..sroa_idx.i33 = getelementptr inbounds nuw i8, ptr %i.hk, i64 292
  %.sroa.18.0..sroa_idx.i34 = getelementptr inbounds nuw i8, ptr %i.hk, i64 296
  %i.if = getelementptr inbounds nuw i8, ptr %i.hk, i64 308
  store i32 1, ptr %i.if, align 4, !tbaa !22
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hj, i64 36
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hj, i64 24
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hj, i64 32
  %i.ik = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  %i.il = getelementptr inbounds nuw i8, ptr %i.hj, i64 40 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.hj, i64 44
  %i.in = insertelement <2 x float> poison, float %i.hv, i64 0
  %i.io = insertelement <2 x float> %i.in, float %i.ht, i64 1 ; 5 uses
  %i.ip = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.io, splat (float f0x3E53DCB1)
  %i.iq = fmul reassoc nsz arcp contract afn <2 x float> %i.io, %i.io
  %i.ir = fmul reassoc nsz arcp contract afn <2 x float> %i.iq, %i.io
  %i.is = fmul reassoc nsz arcp contract afn <2 x float> %i.io, splat (float f0x3E038026)
  %i.it = fadd reassoc nsz arcp contract afn <2 x float> %i.is, splat (float f0xBC911AA6)
  %i.iu = select <2 x i1> %i.ip, <2 x float> %i.ir, <2 x float> %i.it ; 5 uses
  %i.iv = extractelement <2 x float> %i.iu, i64 0
  %i.iw = fmul reassoc nsz arcp contract afn float %i.iv, 9.642000e-01
  %i.ix = fmul reassoc nsz arcp contract afn <2 x float> %i.iu, <float f0x3F066D1A, float f0x3E82DEFC>
  %i.iy = shufflevector <2 x float> %i.ix, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.iz = fmul reassoc nsz arcp contract afn <2 x float> %i.iu, <float f0x3FA61CF4, float f0x3FC10BA0>
  %i.ja = fsub reassoc nsz arcp contract afn <2 x float> %i.iz, %i.iy
  %i.jb = insertelement <2 x float> poison, float %i.ic, i64 0
  %i.jc = shufflevector <2 x float> %i.jb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jd = fmul reassoc nsz arcp contract afn <2 x float> %i.jc, <float f0xBD2CB230, float f0x3C8AC481>
  %i.je = fadd reassoc nsz arcp contract afn <2 x float> %i.ja, %i.jd ; 4 uses
  %i.jf = extractelement <2 x float> %i.iu, i64 1 ; 2 uses
  %i.jg = fadd reassoc nsz arcp contract afn float %i.iw, %i.jf
  %i.jh = fmul reassoc nsz arcp contract afn float %i.jg, 0.000000e+00
  %i.ji = fadd reassoc nsz arcp contract afn float %i.jh, %i.id ; 3 uses
  %i.jj = extractelement <2 x float> %i.je, i64 0
  store float %i.jj, ptr %i.ie, align 4, !tbaa !11
  %i.jk = extractelement <2 x float> %i.je, i64 1
  store float %i.jk, ptr %.sroa.11.0..sroa_idx.i33, align 4, !tbaa !11
  store float %i.ji, ptr %.sroa.18.0..sroa_idx.i34, align 4, !tbaa !11
  %i.jl = load <2 x float>, ptr %i.ih, align 4, !tbaa !11
  %i.jm = fsub reassoc nsz arcp contract afn <2 x float> splat (float 2.000000e+00), %i.jl
  %i.jn = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.jm
  %i.jo = shufflevector <2 x float> %i.iu, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.jp = tail call reassoc nsz arcp contract afn <2 x float> @llvm.pow.v2f32(<2 x float> %i.jo, <2 x float> %i.jn)
  %i.jq = load <2 x float>, ptr %i.ii, align 4, !tbaa !11
  %i.jr = fsub reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.jq
  %i.js = fadd reassoc nsz arcp contract afn <2 x float> %i.jr, %i.jp
  %i.jt = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.je, splat (float f0x358637BD)
  %i.ju = select <2 x i1> %i.jt, <2 x float> %i.je, <2 x float> splat (float f0x358637BD)
  %i.jv = fdiv reassoc nsz arcp contract afn <2 x float> %i.js, %i.ju
  %i.jw = load float, ptr %i.ij, align 4, !tbaa !11
  %i.jx = fsub reassoc nsz arcp contract afn float 2.000000e+00, %i.jw
  %i.jy = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.jx
  %i.jz = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.jf, float %i.jy)
  %i.ka = load float, ptr %i.ik, align 4, !tbaa !11
  %i.kb = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.ka
  %i.kc = fadd reassoc nsz arcp contract afn float %i.kb, %i.jz
  %i.kd = fcmp reassoc nsz arcp contract afn ogt float %i.ji, f0x358637BD
  %i.ke = select reassoc nsz arcp contract afn i1 %i.kd, float %i.ji, float f0x358637BD
  %i.kf = fdiv reassoc nsz arcp contract afn float %i.kc, %i.ke
  store <2 x float> %i.jv, ptr %i.il, align 4, !tbaa !11
  %i.kg = getelementptr inbounds nuw i8, ptr %i.hj, i64 48 ; 2 uses
  store float %i.kf, ptr %i.kg, align 4, !tbaa !11
  %i.kh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !68
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 104
  %i.kj = atomicrmw add ptr %i.ki, i32 1 seq_cst, align 4 ; 0 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.hk, i64 184
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !121
  %i.km = load float, ptr %i.il, align 4, !tbaa !11
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.kl, float noundef %i.km) #23
  %i.kn = getelementptr inbounds nuw i8, ptr %i.hk, i64 192
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !122
  %i.kp = load float, ptr %i.im, align 4, !tbaa !11
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.ko, float noundef %i.kp) #23
  %i.kq = getelementptr inbounds nuw i8, ptr %i.hk, i64 200
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !123
  %i.ks = load float, ptr %i.kg, align 4, !tbaa !11
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.kr, float noundef %i.ks) #23
  %i.kt = getelementptr inbounds nuw i8, ptr %i.hk, i64 88
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !120
  %i.kv = getelementptr inbounds nuw i8, ptr %i.hk, i64 112
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !124
  tail call fastcc void @set_HSL_sliders(ptr noundef %i.ku, ptr noundef %i.kw, ptr noundef nonnull %i.ig)
  %i.kx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !68
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 104
  %i.kz = atomicrmw sub ptr %i.ky, i32 1 seq_cst, align 4 ; 0 uses
  %i.la = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !114
  tail call void @dt_dev_add_history_item(ptr noundef %i.la, ptr noundef nonnull %0, i32 noundef 1) #23
  br label %apply_lift_neutralize.exit

bb.j:                                             ; preds = %bb.g
  %i.lb = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !125
  %i.ld = icmp eq ptr %1, %i.lc
  br i1 %i.ld, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.le = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !68
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 104
  %i.lg = load atomic i32, ptr %i.lf seq_cst, align 4
  %.not.i35 = icmp eq i32 %i.lg, 0
  br i1 %.not.i35, label %bb.l, label %apply_lift_neutralize.exit

bb.l:                                             ; preds = %bb.k
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !109 ; 2 uses
  %i.lj = load ptr, ptr %i.a, align 16, !tbaa !54 ; 3 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.ll = load float, ptr %i.lk, align 16, !tbaa !11
  %i.lm = fmul reassoc nsz arcp contract afn float %i.ll, 8.620690e-03
  %i.ln = fadd reassoc nsz arcp contract afn float %i.lm, f0x3E0D3DCB ; 5 uses
  %i.lo = fcmp reassoc nsz arcp contract afn ogt float %i.ln, f0x3E53DCB1
  %i.lp = fmul reassoc nsz arcp contract afn float %i.ln, %i.ln
  %i.lq = fmul reassoc nsz arcp contract afn float %i.lp, %i.ln
  %i.lr = fmul reassoc nsz arcp contract afn float %i.ln, f0x3E038026
  %i.ls = fadd reassoc nsz arcp contract afn float %i.lr, f0xBC911AA6
  %i.lt = select reassoc nsz arcp contract afn i1 %i.lo, float %i.lq, float %i.ls ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lj, i64 312
  store float %i.lt, ptr %i.lu, align 8, !tbaa !11
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lj, i64 324
  store i32 1, ptr %i.lv, align 4, !tbaa !22
  %i.lw = getelementptr inbounds nuw i8, ptr %i.li, i64 36
  %i.lx = load float, ptr %i.lw, align 4, !tbaa !11
  %i.ly = fmul reassoc nsz arcp contract afn float %i.lt, %i.lx
  %i.lz = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.ly
  %i.ma = getelementptr inbounds nuw i8, ptr %i.li, i64 4 ; 2 uses
  store float %i.lz, ptr %i.ma, align 4, !tbaa !11
  %i.mb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !68
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 104
  %i.md = atomicrmw add ptr %i.mc, i32 1 seq_cst, align 4 ; 0 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.lj, i64 144
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !125
  %i.mg = load float, ptr %i.ma, align 4, !tbaa !11
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.mf, float noundef %i.mg) #23
  %i.mh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !68
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 104
  %i.mj = atomicrmw sub ptr %i.mi, i32 1 seq_cst, align 4 ; 0 uses
  %i.mk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !114
  tail call void @dt_dev_add_history_item(ptr noundef %i.mk, ptr noundef nonnull %0, i32 noundef 1) #23
  br label %apply_lift_neutralize.exit

bb.m:                                             ; preds = %bb.j
  %i.ml = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !126
  %i.mn = icmp eq ptr %1, %i.mm
  br i1 %i.mn, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.mo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !68
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 104
  %i.mq = load atomic i32, ptr %i.mp seq_cst, align 4
  %.not.i36 = icmp eq i32 %i.mq, 0
  br i1 %.not.i36, label %bb.o, label %apply_lift_neutralize.exit

bb.o:                                             ; preds = %bb.n
  %i.mr = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !109 ; 3 uses
  %i.mt = load ptr, ptr %i.a, align 16, !tbaa !54 ; 3 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.mv = load float, ptr %i.mu, align 16, !tbaa !11
  %i.mw = fmul reassoc nsz arcp contract afn float %i.mv, 8.620690e-03
  %i.mx = fadd reassoc nsz arcp contract afn float %i.mw, f0x3E0D3DCB ; 5 uses
  %i.my = fcmp reassoc nsz arcp contract afn ogt float %i.mx, f0x3E53DCB1
  %i.mz = fmul reassoc nsz arcp contract afn float %i.mx, %i.mx
  %i.na = fmul reassoc nsz arcp contract afn float %i.mz, %i.mx
  %i.nb = fmul reassoc nsz arcp contract afn float %i.mx, f0x3E038026
  %i.nc = fadd reassoc nsz arcp contract afn float %i.nb, f0xBC911AA6
  %i.nd = select reassoc nsz arcp contract afn i1 %i.my, float %i.na, float %i.nc ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.mt, i64 316
  store float %i.nd, ptr %i.ne, align 4, !tbaa !11
  %i.nf = getelementptr inbounds nuw i8, ptr %i.mt, i64 328
  store i32 1, ptr %i.nf, align 4, !tbaa !22
  %i.ng = getelementptr inbounds nuw i8, ptr %i.ms, i64 36
  %i.nh = load float, ptr %i.ng, align 4, !tbaa !11
  %i.ni = fmul reassoc nsz arcp contract afn float %i.nd, %i.nh
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ms, i64 4
  %i.nk = load float, ptr %i.nj, align 4, !tbaa !11
  %i.nl = fadd reassoc nsz arcp contract afn float %i.nk, %i.ni
  %i.nm = fadd reassoc nsz arcp contract afn float %i.nl, -1.000000e+00 ; 2 uses
  %i.nn = fcmp reassoc nsz arcp contract afn ogt float %i.nm, f0x358637BD
  %i.no = tail call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.nm)
  %i.np = fdiv reassoc nsz arcp contract afn float f0x3FD88AB6, %i.no
  %i.nq = fadd reassoc nsz arcp contract afn float %i.np, 2.000000e+00
  %i.nr = select i1 %i.nn, float %i.nq, float f0x3FF05380
  %i.ns = getelementptr inbounds nuw i8, ptr %i.ms, i64 20 ; 2 uses
  store float %i.nr, ptr %i.ns, align 4, !tbaa !11
  %i.nt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !68
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 104
  %i.nv = atomicrmw add ptr %i.nu, i32 1 seq_cst, align 4 ; 0 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.mt, i64 176
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !126
  %i.ny = load float, ptr %i.ns, align 4, !tbaa !11
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.nx, float noundef %i.ny) #23
  %i.nz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !68
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 104
  %i.ob = atomicrmw sub ptr %i.oa, i32 1 seq_cst, align 4 ; 0 uses
  %i.oc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !114
  tail call void @dt_dev_add_history_item(ptr noundef %i.oc, ptr noundef nonnull %0, i32 noundef 1) #23
  br label %apply_lift_neutralize.exit

bb.p:                                             ; preds = %bb.m
  %i.od = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %i.oe = load ptr, ptr %i.od, align 8, !tbaa !127
  %i.of = icmp eq ptr %1, %i.oe
  br i1 %i.of, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.og = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !68
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 104
  %i.oi = load atomic i32, ptr %i.oh seq_cst, align 4
  %.not.i37 = icmp eq i32 %i.oi, 0
  br i1 %.not.i37, label %bb.r, label %apply_lift_neutralize.exit

bb.r:                                             ; preds = %bb.q
  %i.oj = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.ok = load ptr, ptr %i.oj, align 8, !tbaa !109 ; 2 uses
  %i.ol = load ptr, ptr %i.a, align 16, !tbaa !54 ; 3 uses
  %i.om = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.on = load float, ptr %i.om, align 16, !tbaa !11
  %i.oo = fmul reassoc nsz arcp contract afn float %i.on, 8.620690e-03
  %i.op = fadd reassoc nsz arcp contract afn float %i.oo, f0x3E0D3DCB ; 5 uses
  %i.oq = fcmp reassoc nsz arcp contract afn ogt float %i.op, f0x3E53DCB1
  %i.or = fmul reassoc nsz arcp contract afn float %i.op, %i.op
  %i.os = fmul reassoc nsz arcp contract afn float %i.or, %i.op
  %i.ot = fmul reassoc nsz arcp contract afn float %i.op, f0x3E038026
  %i.ou = fadd reassoc nsz arcp contract afn float %i.ot, f0xBC911AA6
  %i.ov = select reassoc nsz arcp contract afn i1 %i.oq, float %i.os, float %i.ou ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ol, i64 320
  store float %i.ov, ptr %i.ow, align 8, !tbaa !11
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ol, i64 332
  store i32 1, ptr %i.ox, align 4, !tbaa !22
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ok, i64 4
  %i.oz = load float, ptr %i.oy, align 4, !tbaa !11
  %i.pa = fdiv reassoc nsz arcp contract afn float %i.oz, %i.ov
  %i.pb = getelementptr inbounds nuw i8, ptr %i.ok, i64 36 ; 2 uses
  store float %i.pa, ptr %i.pb, align 4, !tbaa !11
  %i.pc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !68
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 104
  %i.pe = atomicrmw add ptr %i.pd, i32 1 seq_cst, align 4 ; 0 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.ol, i64 208
  %i.pg = load ptr, ptr %i.pf, align 8, !tbaa !127
  %i.ph = load float, ptr %i.pb, align 4, !tbaa !11
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.pg, float noundef %i.ph) #23
  %i.pi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !68
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 104
  %i.pk = atomicrmw sub ptr %i.pj, i32 1 seq_cst, align 4 ; 0 uses
  %i.pl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !114
  tail call void @dt_dev_add_history_item(ptr noundef %i.pl, ptr noundef nonnull %0, i32 noundef 1) #23
  br label %apply_lift_neutralize.exit

bb.s:                                             ; preds = %bb.p
  %i.pm = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !128
  %i.po = icmp eq ptr %1, %i.pn
  br i1 %i.po, label %bb.t, label %bb.ae

bb.t:                                             ; preds = %bb.s
  %i.pp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !68
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 104
  %i.pr = load atomic i32, ptr %i.pq seq_cst, align 4
  %.not.i38 = icmp eq i32 %i.pr, 0
  br i1 %.not.i38, label %bb.u, label %apply_lift_neutralize.exit

bb.u:                                             ; preds = %bb.t
  %i.ps = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.pt = load ptr, ptr %i.ps, align 8, !tbaa !109 ; 6 uses
  %i.pu = load ptr, ptr %i.a, align 16, !tbaa !54
  %i.pv = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.pw = getelementptr inbounds nuw i8, ptr %0, i64 516
  %i.px = load float, ptr %i.pw, align 4, !tbaa !11
  %i.py = load float, ptr %i.pv, align 16, !tbaa !11
  %i.pz = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.qa = load float, ptr %i.pz, align 8, !tbaa !11
  %i.qb = fmul reassoc nsz arcp contract afn float %i.px, 2.000000e-03
  %i.qc = fmul reassoc nsz arcp contract afn float %i.py, 8.620690e-03
  %i.qd = fadd reassoc nsz arcp contract afn float %i.qc, f0x3E0D3DCB ; 3 uses
  %i.qe = fmul reassoc nsz arcp contract afn float %i.qa, 5.000000e-03
  %i.qf = fadd reassoc nsz arcp contract afn float %i.qd, %i.qb
  %i.qg = fsub reassoc nsz arcp contract afn float %i.qd, %i.qe ; 5 uses
  %i.qh = fcmp reassoc nsz arcp contract afn ogt float %i.qg, f0x3E53DCB1
  %i.qi = fmul reassoc nsz arcp contract afn float %i.qg, %i.qg
  %i.qj = fmul reassoc nsz arcp contract afn float %i.qi, %i.qg
  %i.qk = fmul reassoc nsz arcp contract afn float %i.qg, f0x3E038026
  %i.ql = fadd reassoc nsz arcp contract afn float %i.qk, f0xBC911AA6
  %i.qm = select reassoc nsz arcp contract afn i1 %i.qh, float %i.qj, float %i.ql ; 2 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %i.pt, i64 4
  %i.qo = getelementptr inbounds nuw i8, ptr %i.pt, i64 8
  %i.qp = getelementptr inbounds nuw i8, ptr %i.pt, i64 20
  %i.qq = getelementptr inbounds nuw i8, ptr %i.pt, i64 28
  %i.qr = getelementptr inbounds nuw i8, ptr %i.pt, i64 36
  %i.qs = insertelement <2 x float> poison, float %i.qd, i64 0
  %i.qt = insertelement <2 x float> %i.qs, float %i.qf, i64 1 ; 5 uses
  %i.qu = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.qt, splat (float f0x3E53DCB1)
  %i.qv = fmul reassoc nsz arcp contract afn <2 x float> %i.qt, %i.qt
  %i.qw = fmul reassoc nsz arcp contract afn <2 x float> %i.qv, %i.qt
  %i.qx = fmul reassoc nsz arcp contract afn <2 x float> %i.qt, splat (float f0x3E038026)
  %i.qy = fadd reassoc nsz arcp contract afn <2 x float> %i.qx, splat (float f0xBC911AA6)
  %i.qz = select <2 x i1> %i.qu, <2 x float> %i.qw, <2 x float> %i.qy ; 4 uses
  %i.ra = extractelement <2 x float> %i.qz, i64 1
  %i.rb = fmul reassoc nsz arcp contract afn float %i.ra, 9.642000e-01
  %i.rc = fmul reassoc nsz arcp contract afn float %i.qm, f0x3F532CA5
  %i.rd = fmul reassoc nsz arcp contract afn <2 x float> %i.qz, <float f0x3FC10BA0, float f0x3FA61CF4>
  %i.re = shufflevector <2 x float> %i.rd, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.rf = fmul reassoc nsz arcp contract afn <2 x float> %i.qz, <float f0xBE82DEFC, float f0xBF066D1A>
  %i.rg = fadd reassoc nsz arcp contract afn <2 x float> %i.rf, %i.re
  %i.rh = extractelement <2 x float> %i.qz, i64 0
  %i.ri = fadd reassoc nsz arcp contract afn float %i.rb, %i.rh ; 2 uses
  %i.rj = fmul reassoc nsz arcp contract afn float %i.ri, 0.000000e+00
  %i.rk = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.qm, i64 0
  %i.rl = shufflevector <4 x float> %i.rk, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.rm = fmul reassoc nsz arcp contract afn <4 x float> %i.rl, <float f0xBD2CB230, float f0x3C8AC481, float f0x3F7FE762, float -0.000000e+00>
  %i.rn = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.rj, i64 2
  %i.ro = shufflevector <2 x float> %i.rg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.rp = shufflevector <4 x float> %i.ro, <4 x float> %i.rn, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.rq = fadd reassoc nsz arcp contract afn <4 x float> %i.rp, %i.rm
  %i.rr = tail call <12 x float> @llvm.masked.load.v12f32.p0(ptr nonnull align 4 %i.qn, <12 x i1> <i1 true, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 true, i1 true>, <12 x float> poison), !tbaa !11 ; 3 uses
  %i.rs = shufflevector <12 x float> %i.rr, <12 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.rt = insertelement <2 x float> %i.rs, float %i.rc, i64 1
  %i.ru = fadd reassoc nsz arcp contract afn <2 x float> %i.rt, <float -2.000000e+00, float -0.000000e+00>
  %i.rv = shufflevector <2 x float> %i.ru, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.rw = load <2 x float>, ptr %i.qo, align 4, !tbaa !11
  %i.rx = shufflevector <12 x float> %i.rr, <12 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 3, i32 poison>
  %i.ry = insertelement <4 x float> %i.rx, float %i.ri, i64 3
  %i.rz = shufflevector <2 x float> %i.rw, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.sa = shufflevector <4 x float> %i.rz, <4 x float> %i.ry, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.sb = fadd reassoc nsz arcp contract afn <4 x float> %i.sa, %i.rv ; 2 uses
  %i.sc = load <2 x float>, ptr %i.qr, align 4, !tbaa !11 ; 3 uses
  %i.sd = shufflevector <2 x float> %i.sc, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.se = shufflevector <2 x float> %i.sc, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.sf = shufflevector <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x float> %i.se, <4 x i32> <i32 poison, i32 poison, i32 4, i32 3>
  %i.sg = shufflevector <4 x float> %i.sd, <4 x float> %i.sf, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.sh = fmul reassoc nsz arcp contract afn <4 x float> %i.sg, %i.rq
  %i.si = shufflevector <2 x float> %i.sc, <2 x float> poison, <12 x i32> <i32 poison, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.sj = shufflevector <12 x float> %i.si, <12 x float> %i.rr, <4 x i32> <i32 1, i32 22, i32 23, i32 poison>
  %i.sk = insertelement <4 x float> %i.sj, float 0.000000e+00, i64 3
  %i.sl = fmul reassoc nsz arcp contract afn <4 x float> %i.sk, %i.sh ; 2 uses
  %i.sm = fadd reassoc nsz arcp contract afn <4 x float> %i.sb, %i.sl
  %i.sn = fmul reassoc nsz arcp contract afn <4 x float> %i.sb, %i.sl
  %i.so = shufflevector <4 x float> %i.sm, <4 x float> %i.sn, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.sp = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.so, <4 x float> zeroinitializer)
  %bc.i.i = bitcast <4 x float> %i.sp to <4 x i32> ; 2 uses
  %i.sq = load <2 x float>, ptr %i.qp, align 4, !tbaa !11 ; 3 uses
  %i.sr = load <2 x float>, ptr %i.qq, align 4, !tbaa !11
  %i.ss = shufflevector <2 x float> %i.sq, <2 x float> %i.sr, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.st = insertelement <4 x float> %i.ss, float 0.000000e+00, i64 3
  %i.su = shufflevector <2 x float> %i.sq, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.sv = shufflevector <2 x float> %i.sq, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.sw = shufflevector <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x float> %i.sv, <4 x i32> <i32 poison, i32 poison, i32 4, i32 3>
  %i.sx = shufflevector <4 x float> %i.su, <4 x float> %i.sw, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.sy = fmul reassoc nsz arcp contract afn <4 x float> %i.st, %i.sx
  %i.sz = fsub reassoc nsz arcp contract afn <4 x float> <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 0.000000e+00>, %i.sy
  %i.ta = and <4 x i32> %bc.i.i, splat (i32 8388607)
  %i.tb = or disjoint <4 x i32> %i.ta, splat (i32 1065353216)
  %i.tc = bitcast <4 x i32> %i.tb to <4 x float>  ; 5 uses
  %i.td = lshr <4 x i32> %bc.i.i, splat (i32 23)
  %i.te = and <4 x i32> %i.td, splat (i32 255)
  %i.tf = add nsw <4 x i32> %i.te, splat (i32 -127)
  %i.tg = sitofp <4 x i32> %i.tf to <4 x float>
  %i.th = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.tc, splat (float f0x3D74552F)
  %i.ti = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.th, splat (float f0xBEEE7397)
  %i.tj = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.ti, %i.tc
  %i.tk = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.tj, splat (float f0x3FBD96DD)
  %i.tl = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.tk, %i.tc
  %i.tm = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.tl, splat (float f0xC02153F6)
  %i.tn = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.tm, %i.tc
  %i.to = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.tn, splat (float f0x4038D96C)
  %i.tp = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.tc, splat (float -1.000000e+00)
  %i.tq = fmul reassoc nsz arcp contract afn <4 x float> %i.to, %i.tp
  %i.tr = fadd reassoc nsz arcp contract afn <4 x float> %i.tq, %i.tg
  %i.ts = fmul reassoc nsz arcp contract afn <4 x float> %i.tr, %i.sz
  %i.tt = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ts, <4 x float> splat (float 1.290000e+02))
  %i.tu = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.tt, <4 x float> splat (float f0xC2FDFFFF)) ; 4 uses
  %i.tv = fadd reassoc nsz arcp contract afn <4 x float> %i.tu, splat (float -5.000000e-01)
  %i.tw = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.tv)
  %i.tx = sitofp reassoc nsz arcp contract afn <4 x i32> %i.tw to <4 x float> ; 5 uses
  %.sroa.014.0.vec.extract.i.i.i.i = extractelement <4 x float> %i.tx, i64 0
  %foldExtExtBinop = fsub reassoc nsz arcp contract afn <4 x float> %i.tu, %i.tx
  %i.ty = extractelement <4 x float> %foldExtExtBinop, i64 0 ; 4 uses
  %foldExtExtBinop50 = fsub reassoc nsz arcp contract afn <4 x float> %i.tu, %i.tx
end_hunk_1
begin_hunk_2_@color_picker_apply:bb.a
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.22) #23
  br label %apply_lift_neutralize.exit

apply_lift_neutralize.exit:                       ; preds = %bb.ad, %bb.t, %bb.r, %bb.q, %bb.o, %bb.n, %bb.l, %bb.k, %bb.i, %bb.h, %bb.f, %bb.e, %bb.c, %bb.b, %bb.af, %bb.ai, %bb.ah
  %.val = load ptr, ptr %i.a, align 16, !tbaa !54 ; 8 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %.val, i64 324
  %i.wu = getelementptr inbounds nuw i8, ptr %.val, i64 332
  %i.wv = load i32, ptr %i.wu, align 4, !tbaa !22
  %i.ww = icmp eq i32 %i.wv, 1
  br i1 %i.ww, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %apply_lift_neutralize.exit
  %i.wx = getelementptr inbounds nuw i8, ptr %.val, i64 328
  %i.wy = load i32, ptr %i.wx, align 4, !tbaa !22
  %i.wz = icmp eq i32 %i.wy, 1
  br i1 %i.wz, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.xa = load i32, ptr %i.wt, align 4, !tbaa !22
  %i.xb = icmp eq i32 %i.xa, 1
  br i1 %i.xb, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %apply_lift_neutralize.exit
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.str.75.sink.i = phi ptr [ @.str.75, %bb.al ], [ @.str.93, %bb.ak ]
  %i.xc = getelementptr inbounds nuw i8, ptr %.val, i64 248
  %i.xd = load ptr, ptr %i.xc, align 8, !tbaa !131
  %i.xe = tail call ptr @dt_bauhaus_widget_set_label(ptr noundef %i.xd, ptr noundef null, ptr noundef nonnull %.str.75.sink.i) #23 ; 0 uses
  %i.xf = getelementptr inbounds nuw i8, ptr %.val, i64 300
  %i.xg = getelementptr inbounds nuw i8, ptr %.val, i64 308
  %i.xh = load i32, ptr %i.xg, align 4, !tbaa !22
  %i.xi = icmp eq i32 %i.xh, 1
  br i1 %i.xi, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.xj = getelementptr inbounds nuw i8, ptr %.val, i64 304
  %i.xk = load i32, ptr %i.xj, align 8, !tbaa !22
  %i.xl = icmp eq i32 %i.xk, 1
  br i1 %i.xl, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.xm = load i32, ptr %i.xf, align 4, !tbaa !22
  %i.xn = icmp eq i32 %i.xm, 1
  br i1 %i.xn, label %_check_tuner_picker_labels.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %bb.am
  br label %_check_tuner_picker_labels.exit

_check_tuner_picker_labels.exit:                  ; preds = %bb.ao, %bb.ap
  %.str.77.sink.i = phi ptr [ @.str.77, %bb.ap ], [ @.str.94, %bb.ao ]
  %i.xo = getelementptr inbounds nuw i8, ptr %.val, i64 256
  %i.xp = load ptr, ptr %i.xo, align 8, !tbaa !132
  %i.xq = tail call ptr @dt_bauhaus_widget_set_label(ptr noundef %i.xp, ptr noundef null, ptr noundef nonnull %.str.77.sink.i) #23 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @apply_autoluma(ptr noundef %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !109  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !54  ; 12 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 324 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !22
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.i = load float, ptr %i.h, align 16, !tbaa !11
  %i.j = fmul reassoc nsz arcp contract afn float %i.i, 8.620690e-03
  %i.k = fadd reassoc nsz arcp contract afn float %i.j, f0x3E0D3DCB ; 5 uses
  %i.l = fcmp reassoc nsz arcp contract afn ogt float %i.k, f0x3E53DCB1
  %i.m = fmul reassoc nsz arcp contract afn float %i.k, %i.k
  %i.n = fmul reassoc nsz arcp contract afn float %i.m, %i.k
  %i.o = fmul reassoc nsz arcp contract afn float %i.k, f0x3E038026
  %i.p = fadd reassoc nsz arcp contract afn float %i.o, f0xBC911AA6
  %i.q = select reassoc nsz arcp contract afn i1 %i.l, float %i.n, float %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 312
  store float %i.q, ptr %i.r, align 8, !tbaa !11
  store i32 2, ptr %i.e, align 4, !tbaa !22
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 328 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !22
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.w = load float, ptr %i.v, align 16, !tbaa !11
  %i.x = fmul reassoc nsz arcp contract afn float %i.w, 8.620690e-03
  %i.y = fadd reassoc nsz arcp contract afn float %i.x, f0x3E0D3DCB ; 5 uses
  %i.z = fcmp reassoc nsz arcp contract afn ogt float %i.y, f0x3E53DCB1
  %i.aa = fmul reassoc nsz arcp contract afn float %i.y, %i.y
  %i.ab = fmul reassoc nsz arcp contract afn float %i.aa, %i.y
  %i.ac = fmul reassoc nsz arcp contract afn float %i.y, f0x3E038026
  %i.ad = fadd reassoc nsz arcp contract afn float %i.ac, f0xBC911AA6
  %i.ae = select reassoc nsz arcp contract afn i1 %i.z, float %i.ab, float %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 316
  store float %i.ae, ptr %i.af, align 4, !tbaa !11
  store i32 2, ptr %i.s, align 4, !tbaa !22
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 332 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !22
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.ak = load float, ptr %i.aj, align 16, !tbaa !11
  %i.al = fmul reassoc nsz arcp contract afn float %i.ak, 8.620690e-03
  %i.am = fadd reassoc nsz arcp contract afn float %i.al, f0x3E0D3DCB ; 5 uses
  %i.an = fcmp reassoc nsz arcp contract afn ogt float %i.am, f0x3E53DCB1
  %i.ao = fmul reassoc nsz arcp contract afn float %i.am, %i.am
  %i.ap = fmul reassoc nsz arcp contract afn float %i.ao, %i.am
  %i.aq = fmul reassoc nsz arcp contract afn float %i.am, f0x3E038026
  %i.ar = fadd reassoc nsz arcp contract afn float %i.aq, f0xBC911AA6
  %i.as = select reassoc nsz arcp contract afn i1 %i.an, float %i.ap, float %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 320
  store float %i.as, ptr %i.at, align 8, !tbaa !11
  store i32 2, ptr %i.ag, align 4, !tbaa !22
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  tail call void @dt_iop_color_picker_reset(ptr noundef nonnull %0, i32 noundef 1) #23
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 312
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 320
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 36 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 316
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 2 uses
  %.pre = load float, ptr %i.au, align 4, !tbaa !11
  br label %bb.i

bb.h:                                             ; preds = %bb.r
  %i.ba = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !68
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 104
  %i.bc = atomicrmw add ptr %i.bb, i32 1 seq_cst, align 4 ; 0 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !125
  %i.bf = load float, ptr %i.au, align 4, !tbaa !11
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.be, float noundef %i.bf) #23
  %i.bg = getelementptr inbounds nuw i8, ptr %i.d, i64 176
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !126
  %i.bi = load float, ptr %i.az, align 4, !tbaa !11
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.bh, float noundef %i.bi) #23
  %i.bj = getelementptr inbounds nuw i8, ptr %i.d, i64 208
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !127
  %i.bl = load float, ptr %i.ax, align 4, !tbaa !11
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.bk, float noundef %i.bl) #23
  %i.bm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !68
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 104
  %i.bo = atomicrmw sub ptr %i.bn, i32 1 seq_cst, align 4 ; 0 uses
  %i.bp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !114
  tail call void @dt_dev_add_history_item(ptr noundef %i.bp, ptr noundef nonnull %0, i32 noundef 1) #23
  ret void

bb.i:                                             ; preds = %bb.g, %bb.r
  %i.bq = phi float [ %.pre, %bb.g ], [ %i.cb, %bb.r ]
  %.069 = phi i32 [ 0, %bb.g ], [ %i.co, %bb.r ]
  %i.br = load float, ptr %i.aw, align 8, !tbaa !11
  %i.bs = fdiv reassoc nsz arcp contract afn float %i.bq, %i.br ; 3 uses
  %i.bt = fcmp reassoc nsz arcp contract afn ogt float %i.bs, 2.000000e+00
  br i1 %i.bt, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bu = fcmp reassoc nsz arcp contract afn olt float %i.bs, 0.000000e+00
  br i1 %i.bu, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %i.bv = phi reassoc nsz arcp contract afn float [ 2.000000e+00, %bb.i ], [ %i.bs, %bb.k ], [ 0.000000e+00, %bb.j ] ; 3 uses
  store float %i.bv, ptr %i.ax, align 4, !tbaa !11
  %i.bw = load float, ptr %i.av, align 8, !tbaa !11
  %i.bx = fmul reassoc nsz arcp contract afn float %i.bw, %i.bv
  %i.by = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.bx ; 3 uses
  %i.bz = fcmp reassoc nsz arcp contract afn ogt float %i.by, 2.000000e+00
  br i1 %i.bz, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ca = fcmp reassoc nsz arcp contract afn olt float %i.by, 0.000000e+00
  br i1 %i.ca, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  %i.cb = phi reassoc nsz arcp contract afn float [ 2.000000e+00, %bb.l ], [ %i.by, %bb.n ], [ 0.000000e+00, %bb.m ] ; 3 uses
  store float %i.cb, ptr %i.au, align 4, !tbaa !11
  %i.cc = load float, ptr %i.ay, align 4, !tbaa !11
  %i.cd = fmul reassoc nsz arcp contract afn float %i.cc, %i.bv
  %i.ce = fadd reassoc nsz arcp contract afn float %i.cb, %i.cd
  %i.cf = fadd reassoc nsz arcp contract afn float %i.ce, -1.000000e+00 ; 2 uses
  %i.cg = fcmp reassoc nsz arcp contract afn ogt float %i.cf, f0x358637BD
  %i.ch = tail call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.cf)
  %i.ci = fdiv reassoc nsz arcp contract afn float f0xBFD88AB6, %i.ch
  %i.cj = select i1 %i.cg, float %i.ci, float f0x3DFAC7F8 ; 2 uses
  %i.ck = fsub reassoc nsz arcp contract afn float 2.000000e+00, %i.cj ; 2 uses
  %i.cl = fcmp reassoc nsz arcp contract afn ogt float %i.ck, 2.000000e+00
  br i1 %i.cl, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cm = fcmp reassoc nsz arcp contract afn ogt float %i.cj, 2.000000e+00
  br i1 %i.cm, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  %i.cn = phi reassoc nsz arcp contract afn float [ 2.000000e+00, %bb.o ], [ %i.ck, %bb.q ], [ 0.000000e+00, %bb.p ]
  store float %i.cn, ptr %i.az, align 4, !tbaa !11
  %i.co = add nuw nsw i32 %.069, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.co, 100
  br i1 %exitcond.not, label %bb.h, label %bb.i
}

; Function Attrs: nounwind uwtable
define internal fastcc void @apply_autocolor(ptr noundef %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !109  ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !54  ; 30 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 300 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 308 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !22
  %i.h = icmp eq i32 %i.g, 0                      ; 2 uses
  br i1 %i.h, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %.pre = load i32, ptr %i.e, align 4, !tbaa !22
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 304
  %i.j = load i32, ptr %i.i, align 4, !tbaa !22
  %i.k = icmp eq i32 %i.j, 0
  %.pre269 = load i32, ptr %i.e, align 4, !tbaa !22 ; 2 uses
  br i1 %i.k, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = icmp eq i32 %.pre269, 0
  br i1 %i.l, label %bb.d, label %.preheader192

bb.d:                                             ; preds = %._crit_edge, %bb.c, %bb.b
  %i.m = phi i32 [ %.pre, %._crit_edge ], [ 0, %bb.c ], [ %.pre269, %bb.b ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 516
  %i.p = load float, ptr %i.o, align 4, !tbaa !11
  %i.q = load float, ptr %i.n, align 16, !tbaa !11
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.s = load float, ptr %i.r, align 8, !tbaa !11
  %i.t = fmul reassoc nsz arcp contract afn float %i.p, 2.000000e-03
  %i.u = fmul reassoc nsz arcp contract afn float %i.q, 8.620690e-03
  %i.v = fadd reassoc nsz arcp contract afn float %i.u, f0x3E0D3DCB ; 7 uses
  %i.w = fmul reassoc nsz arcp contract afn float %i.s, 5.000000e-03
  %i.x = fadd reassoc nsz arcp contract afn float %i.v, %i.t ; 5 uses
  %i.y = fcmp reassoc nsz arcp contract afn ogt float %i.x, f0x3E53DCB1
  %i.z = fmul reassoc nsz arcp contract afn float %i.x, %i.x
  %i.aa = fmul reassoc nsz arcp contract afn float %i.z, %i.x
  %i.ab = fmul reassoc nsz arcp contract afn float %i.x, f0x3E038026
  %i.ac = fadd reassoc nsz arcp contract afn float %i.ab, f0xBC911AA6
  %i.ad = select reassoc nsz arcp contract afn i1 %i.y, float %i.aa, float %i.ac ; 3 uses
  %i.ae = fcmp reassoc nsz arcp contract afn ogt float %i.v, f0x3E53DCB1
  %i.af = fmul reassoc nsz arcp contract afn float %i.v, %i.v
  %i.ag = fmul reassoc nsz arcp contract afn float %i.af, %i.v
  %i.ah = fmul reassoc nsz arcp contract afn float %i.v, f0x3E038026
  %i.ai = fadd reassoc nsz arcp contract afn float %i.ah, f0xBC911AA6
  %i.aj = select reassoc nsz arcp contract afn i1 %i.ae, float %i.ag, float %i.ai ; 3 uses
  %i.ak = fsub reassoc nsz arcp contract afn float %i.v, %i.w ; 5 uses
  %i.al = fcmp reassoc nsz arcp contract afn ogt float %i.ak, f0x3E53DCB1
  %i.am = fmul reassoc nsz arcp contract afn float %i.ak, %i.ak
  %i.an = fmul reassoc nsz arcp contract afn float %i.am, %i.ak
  %i.ao = fmul reassoc nsz arcp contract afn float %i.ak, f0x3E038026
  %i.ap = fadd reassoc nsz arcp contract afn float %i.ao, f0xBC911AA6
  %i.aq = select reassoc nsz arcp contract afn i1 %i.al, float %i.an, float %i.ap ; 3 uses
  %i.ar = fmul reassoc nsz arcp contract afn float %i.ad, 9.642000e-01
  %i.as = fmul reassoc nsz arcp contract afn float %i.ad, f0x3FA61CF4
  %i.at = fmul reassoc nsz arcp contract afn float %i.aj, f0xBE82DEFC
  %i.au = fadd reassoc nsz arcp contract afn float %i.as, %i.at
  %i.av = fmul reassoc nsz arcp contract afn float %i.aq, f0xBD2CB230
  %i.aw = fadd reassoc nsz arcp contract afn float %i.au, %i.av ; 3 uses
  %i.ax = fmul reassoc nsz arcp contract afn float %i.ad, f0xBF066D1A
  %i.ay = fmul reassoc nsz arcp contract afn float %i.aj, f0x3FC10BA0
  %i.az = fadd reassoc nsz arcp contract afn float %i.ax, %i.ay
  %i.ba = fmul reassoc nsz arcp contract afn float %i.aq, f0x3C8AC481
  %i.bb = fadd reassoc nsz arcp contract afn float %i.az, %i.ba ; 3 uses
  %i.bc = fadd reassoc nsz arcp contract afn float %i.ar, %i.aj
  %i.bd = fmul reassoc nsz arcp contract afn float %i.bc, 0.000000e+00
  %i.be = fmul reassoc nsz arcp contract afn float %i.aq, f0x3F7FE762
  %i.bf = fadd reassoc nsz arcp contract afn float %i.bd, %i.be ; 3 uses
  %i.bg = icmp eq i32 %i.m, 0
  br i1 %i.bg, label %.preheader195, label %bb.e

.preheader195:                                    ; preds = %bb.d
  %i.bh = getelementptr inbounds nuw i8, ptr %i.d, i64 264
  store float %i.aw, ptr %i.bh, align 4, !tbaa !11
  %.sroa.7259.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 268
  store float %i.bb, ptr %.sroa.7259.0..sroa_idx, align 4, !tbaa !11
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 272
  store float %i.bf, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !11
  store i32 2, ptr %i.e, align 4, !tbaa !22
  br label %bb.e

bb.e:                                             ; preds = %.preheader195, %bb.d
  %i.bi = getelementptr inbounds nuw i8, ptr %i.d, i64 304 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !22
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %.preheader194, label %bb.f

.preheader194:                                    ; preds = %bb.e
  %i.bl = getelementptr inbounds nuw i8, ptr %i.d, i64 276
  store float %i.aw, ptr %i.bl, align 4, !tbaa !11
  %.sroa.7259.0..sroa_idx260 = getelementptr inbounds nuw i8, ptr %i.d, i64 280
  store float %i.bb, ptr %.sroa.7259.0..sroa_idx260, align 4, !tbaa !11
  %.sroa.8.0..sroa_idx264 = getelementptr inbounds nuw i8, ptr %i.d, i64 284
  store float %i.bf, ptr %.sroa.8.0..sroa_idx264, align 4, !tbaa !11
  store i32 2, ptr %i.bi, align 4, !tbaa !22
  br label %bb.f

bb.f:                                             ; preds = %.preheader194, %bb.e
  br i1 %i.h, label %.preheader193, label %.preheader192

.preheader193:                                    ; preds = %bb.f
  %i.bm = getelementptr inbounds nuw i8, ptr %i.d, i64 288
  store float %i.aw, ptr %i.bm, align 4, !tbaa !11
  %.sroa.7259.0..sroa_idx262 = getelementptr inbounds nuw i8, ptr %i.d, i64 292
  store float %i.bb, ptr %.sroa.7259.0..sroa_idx262, align 4, !tbaa !11
  %.sroa.8.0..sroa_idx266 = getelementptr inbounds nuw i8, ptr %i.d, i64 296
  store float %i.bf, ptr %.sroa.8.0..sroa_idx266, align 4, !tbaa !11
  store i32 2, ptr %i.f, align 4, !tbaa !22
  br label %.preheader192

.preheader192:                                    ; preds = %bb.f, %.preheader193, %bb.c
  tail call void @dt_iop_color_picker_reset(ptr noundef nonnull %0, i32 noundef 1) #23
  %i.bn = getelementptr inbounds nuw i8, ptr %i.d, i64 264
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 36 ; 2 uses
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !11 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.br = load float, ptr %i.bq, align 4, !tbaa !11
  %i.bs = fadd reassoc nsz arcp contract afn float %i.br, -1.000000e+00 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 2 uses
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !11
  %i.bv = fsub reassoc nsz arcp contract afn float 2.000000e+00, %i.bu ; 9 uses
  %i.bw = load float, ptr %i.bn, align 4, !tbaa !11
  %i.bx = fmul reassoc nsz arcp contract afn float %i.bp, %i.bw
  %i.by = fadd reassoc nsz arcp contract afn float %i.bs, %i.bx ; 2 uses
  %i.bz = fcmp reassoc nsz arcp contract afn ogt float %i.by, 0.000000e+00
  %i.ca = getelementptr inbounds nuw i8, ptr %i.d, i64 268
  %i.cb = load <8 x float>, ptr %i.ca, align 4, !tbaa !11
  %i.cc = insertelement <8 x float> poison, float %i.bp, i64 0
  %i.cd = shufflevector <8 x float> %i.cc, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ce = fmul reassoc nsz arcp contract afn <8 x float> %i.cb, %i.cd
  %i.cf = insertelement <8 x float> poison, float %i.bs, i64 0
  %i.cg = shufflevector <8 x float> %i.cf, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ch = fadd reassoc nsz arcp contract afn <8 x float> %i.cg, %i.ce ; 7 uses
  %i.ci = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.ch, zeroinitializer ; 6 uses
  %i.cj = extractelement <8 x i1> %i.ci, i64 5
  %i.ck = extractelement <8 x float> %i.ch, i64 5
  %i.cl = select reassoc nsz arcp contract afn i1 %i.cj, float %i.ck, float 0.000000e+00
  %i.cm = tail call reassoc nsz arcp contract afn noundef float @llvm.pow.f32(float %i.cl, float %i.bv) ; 3 uses
  %i.cn = extractelement <8 x i1> %i.ci, i64 3
  %i.co = extractelement <8 x float> %i.ch, i64 3
  %i.cp = select reassoc nsz arcp contract afn i1 %i.cn, float %i.co, float 0.000000e+00
  %i.cq = tail call reassoc nsz arcp contract afn noundef float @llvm.pow.f32(float %i.cp, float %i.bv) ; 2 uses
  %i.cr = extractelement <8 x i1> %i.ci, i64 6
  %i.cs = extractelement <8 x float> %i.ch, i64 6
  %i.ct = select reassoc nsz arcp contract afn i1 %i.cr, float %i.cs, float 0.000000e+00
  %i.cu = tail call reassoc nsz arcp contract afn noundef float @llvm.pow.f32(float %i.ct, float %i.bv) ; 3 uses
  %i.cv = shufflevector <8 x i1> %i.ci, <8 x i1> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 poison>
  %i.cw = insertelement <4 x i1> %i.cv, i1 %i.bz, i64 3
  %i.cx = insertelement <8 x float> poison, float %i.by, i64 3
  %i.cy = shufflevector <8 x float> %i.ch, <8 x float> %i.cx, <4 x i32> <i32 0, i32 1, i32 2, i32 11>
  %i.cz = select <4 x i1> %i.cw, <4 x float> %i.cy, <4 x float> zeroinitializer ; 4 uses
  %i.da = extractelement <4 x float> %i.cz, i64 3
  %i.db = tail call reassoc nsz arcp contract afn noundef float @llvm.pow.f32(float %i.da, float %i.bv) ; 2 uses
  %i.dc = extractelement <4 x float> %i.cz, i64 2
  %i.dd = tail call reassoc nsz arcp contract afn noundef float @llvm.pow.f32(float %i.dc, float %i.bv) ; 2 uses
  %i.de = extractelement <4 x float> %i.cz, i64 0
  %i.df = tail call reassoc nsz arcp contract afn noundef float @llvm.pow.f32(float %i.de, float %i.bv) ; 2 uses
  %i.dg = extractelement <4 x float> %i.cz, i64 1
  %i.dh = tail call reassoc nsz arcp contract afn noundef float @llvm.pow.f32(float %i.dg, float %i.bv) ; 2 uses
  %i.di = extractelement <8 x i1> %i.ci, i64 4
  %i.dj = extractelement <8 x float> %i.ch, i64 4
  %i.dk = select reassoc nsz arcp contract afn i1 %i.di, float %i.dj, float 0.000000e+00
  %i.dl = tail call reassoc nsz arcp contract afn noundef float @llvm.pow.f32(float %i.dk, float %i.bv) ; 2 uses
  %i.dm = extractelement <8 x i1> %i.ci, i64 7
  %i.dn = extractelement <8 x float> %i.ch, i64 7
  %i.do = select reassoc nsz arcp contract afn i1 %i.dm, float %i.dn, float 0.000000e+00
  %i.dp = tail call reassoc nsz arcp contract afn noundef float @llvm.pow.f32(float %i.do, float %i.bv) ; 3 uses
  %i.dq = fmul reassoc nsz arcp contract afn float %i.db, f0x3E937A01
  %i.dr = fmul reassoc nsz arcp contract afn float %i.df, f0x3F363D62
  %i.ds = fadd reassoc nsz arcp contract afn float %i.dr, %i.dq
end_hunk_2
