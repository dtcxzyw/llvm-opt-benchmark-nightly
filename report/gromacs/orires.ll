Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/orires?download=true
inline.NumInlined: 901
inline.NumDeleted: 525
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_Z26diagonalize_orires_tensorsP12t_oriresdata:bb.a
  %i.cq = extractelement <2 x float> %i.by, i64 0 ; 2 uses
  %i.cr = fmul float %i.aq, %i.cq
  %i.cs = extractelement <2 x float> %i.bl, i64 0 ; 2 uses
  %i.ct = extractelement <8 x float> %i.aj, i64 0 ; 2 uses
  %i.cu = tail call float @llvm.fmuladd.f32(float %i.cs, float %i.ct, float %i.cr)
  %i.cv = extractelement <2 x float> %i.cl, i64 0 ; 2 uses
  %i.cw = tail call float @llvm.fmuladd.f32(float %i.cv, float %i.ap, float %i.cu)
  %i.cx = fmul float %i.an, %i.cq
  %i.cy = tail call float @llvm.fmuladd.f32(float %i.cs, float %i.ao, float %i.cx)
  %i.cz = tail call float @llvm.fmuladd.f32(float %i.cv, float %i.am, float %i.cy)
  %i.da = shufflevector <8 x float> %i.aj, <8 x float> poison, <4 x i32> <i32 7, i32 1, i32 4, i32 7>
  %i.db = fmul <4 x float> %i.da, %i.bz
  %i.dc = shufflevector <8 x float> %i.aj, <8 x float> poison, <4 x i32> <i32 6, i32 0, i32 3, i32 6>
  %i.dd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bm, <4 x float> %i.dc, <4 x float> %i.db)
  %i.de = shufflevector <8 x float> %i.aj, <8 x float> poison, <3 x i32> <i32 poison, i32 2, i32 5>
  %i.df = insertelement <3 x float> poison, float %i.ac, i64 0
  %i.dg = shufflevector <3 x float> %i.df, <3 x float> %i.de, <4 x i32> <i32 0, i32 4, i32 5, i32 0>
  %i.dh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cm, <4 x float> %i.dg, <4 x float> %i.dd)
  %i.di = fmul float %i.aq, %i.cc
  %i.dj = tail call float @llvm.fmuladd.f32(float %i.bp, float %i.ct, float %i.di)
  %i.dk = tail call float @llvm.fmuladd.f32(float %i.cp, float %i.ap, float %i.dj)
  %i.dl = fmul float %i.an, %i.cc
  %i.dm = tail call float @llvm.fmuladd.f32(float %i.bp, float %i.ao, float %i.dl)
  %i.dn = tail call float @llvm.fmuladd.f32(float %i.cp, float %i.am, float %i.dm)
  %i.do = fmul float %i.ak, %i.cc
  %i.dp = tail call float @llvm.fmuladd.f32(float %i.bp, float %i.al, float %i.do)
  %i.dq = tail call float @llvm.fmuladd.f32(float %i.cp, float %i.ac, float %i.dp)
  %i.dr = fpext float %i.cw to double
  store double %i.dr, ptr %i.n, align 8, !tbaa !320
  %i.ds = fpext float %i.cz to double
  store double %i.ds, ptr %i.s, align 8, !tbaa !320
  %i.dt = fpext <4 x float> %i.dh to <4 x double>
  store <4 x double> %i.dt, ptr %i.t, align 8, !tbaa !320
  %i.du = fpext float %i.dk to double
  store double %i.du, ptr %i.u, align 8, !tbaa !320
  %i.dv = fpext float %i.dn to double
  store double %i.dv, ptr %i.v, align 8, !tbaa !320
  %i.dw = fpext float %i.dq to double
  store double %i.dw, ptr %i.w, align 8, !tbaa !320
  %i.dx = tail call noundef i32 @_Z6jacobiN3gmx8ArrayRefINS_11BasicVectorIdEEEENS0_IdEES3_(ptr nonnull %i.n, ptr nonnull %i.o, ptr nonnull %i.o, ptr nonnull %i.p, ptr nonnull %i.p, ptr nonnull %i.q) ; 0 uses
  %i.dy = load <2 x double>, ptr %i.o, align 8, !tbaa !320 ; 2 uses
  %i.dz = fmul <2 x double> %i.dy, %i.dy          ; 2 uses
  %i.ea = extractelement <2 x double> %i.dz, i64 0 ; 2 uses
  %i.eb = extractelement <2 x double> %i.dz, i64 1 ; 2 uses
  %i.ec = fcmp ule double %i.eb, %i.ea            ; 4 uses
  %.pre-phi = select i1 %i.ec, double %i.ea, double %i.eb
  %.sroa.9.1 = zext i1 %i.ec to i32               ; 2 uses
  %not. = xor i1 %i.ec, true                      ; 2 uses
  %.sroa.0.1 = zext i1 %not. to i32
  %i.ed = load double, ptr %i.x, align 8, !tbaa !320 ; 2 uses
  %i.ee = fmul double %i.ed, %i.ed
  %i.ef = fcmp ogt double %i.ee, %.pre-phi        ; 2 uses
  %.sroa.16.3 = select i1 %i.ef, i32 %.sroa.0.1, i32 2 ; 3 uses
  %i.eg = zext nneg i32 %.sroa.16.3 to i64
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.eg
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !320 ; 2 uses
  %i.ej = fmul double %i.ei, %i.ei
  %i.ek = zext i1 %i.ec to i64
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ek
  %i.em = load double, ptr %i.el, align 8, !tbaa !320 ; 2 uses
  %i.en = fmul double %i.em, %i.em
  %i.eo = fcmp ogt double %i.ej, %i.en            ; 2 uses
  %.sroa.16.1 = select i1 %i.eo, i32 %.sroa.9.1, i32 %.sroa.16.3
  %.sroa.9.2 = select i1 %i.eo, i32 %.sroa.16.3, i32 %.sroa.9.1
  %i.ep = mul nuw nsw i64 %indvars.iv, 12         ; 2 uses
  %i.eq = load ptr, ptr %i.r, align 8, !tbaa !123 ; 2 uses
  %i.er = zext i1 %not. to i64
  %i.es = select i1 %i.ef, i64 2, i64 %i.er       ; 2 uses
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.es
  %i.eu = load double, ptr %i.et, align 8, !tbaa !320
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %i.ep
  %i.ew = zext nneg i32 %.sroa.9.2 to i64         ; 2 uses
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ew
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !320
  %i.ez = zext nneg i32 %.sroa.16.1 to i64        ; 2 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ez
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !320
  %invariant.gep = getelementptr [8 x i8], ptr %i.p, i64 %i.es ; 2 uses
  %i.fc = load double, ptr %invariant.gep, align 8, !tbaa !320
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 24
  %invariant.gep.1 = getelementptr [8 x i8], ptr %i.p, i64 %i.ew ; 2 uses
  %i.fd = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %gep.1, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x double> poison), !tbaa !320
  %i.fe = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %invariant.gep.1, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x double> poison), !tbaa !320
  %i.ff = insertelement <8 x double> poison, double %i.eu, i64 0
  %i.fg = insertelement <8 x double> %i.ff, double %i.ey, i64 1
  %i.fh = insertelement <8 x double> %i.fg, double %i.fb, i64 2
  %i.fi = insertelement <8 x double> %i.fh, double %i.fc, i64 3
  %i.fj = shufflevector <4 x double> %i.fd, <4 x double> poison, <8 x i32> <i32 0, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fk = shufflevector <8 x double> %i.fi, <8 x double> %i.fj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 poison, i32 poison>
  %i.fl = shufflevector <4 x double> %i.fe, <4 x double> poison, <8 x i32> <i32 0, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fm = shufflevector <8 x double> %i.fk, <8 x double> %i.fl, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  %i.fn = fptrunc <8 x double> %i.fm to <8 x float>
  store <8 x float> %i.fn, ptr %i.ev, align 4, !tbaa !125
  %gep.2.1 = getelementptr i8, ptr %invariant.gep.1, i64 48
  %i.fo = load double, ptr %gep.2.1, align 8, !tbaa !320
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %i.ep
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 32
  %invariant.gep.2 = getelementptr [8 x i8], ptr %i.p, i64 %i.ez ; 2 uses
  %i.fr = load double, ptr %invariant.gep.2, align 8, !tbaa !320
  %gep.1.2 = getelementptr i8, ptr %invariant.gep.2, i64 24
  %i.fs = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %gep.1.2, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x double> poison), !tbaa !320
  %i.ft = insertelement <4 x double> poison, double %i.fo, i64 0
  %i.fu = insertelement <4 x double> %i.ft, double %i.fr, i64 1
  %i.fv = shufflevector <4 x double> %i.fu, <4 x double> %i.fs, <4 x i32> <i32 0, i32 1, i32 4, i32 7>
  %i.fw = fptrunc <4 x double> %i.fv to <4 x float>
  store <4 x float> %i.fw, ptr %i.fq, align 4, !tbaa !125
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fx = load i32, ptr %i.a, align 4, !tbaa !155
  %i.fy = sext i32 %i.fx to i64
  %i.fz = icmp slt i64 %indvars.iv.next, %i.fy
  br i1 %i.fz, label %.lr.ph, label %._crit_edge, !llvm.loop !319
}

declare noundef i32 @_Z6jacobiN3gmx8ArrayRefINS_11BasicVectorIdEEEENS0_IdEES3_(ptr, ptr, ptr, ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_Z16print_orires_logP8_IO_FILEP12t_oriresdata(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  tail call void @_Z26diagonalize_orires_tensorsP12t_oriresdata(ptr noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !155
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 352
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !123
  %.idx = mul nuw nsw i64 %indvars.iv, 48
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx ; 14 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.g = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.h = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.27, i32 noundef %i.g) #29 ; 0 uses
  %i.i = load float, ptr %i.f, align 4, !tbaa !125
  %i.j = fpext float %i.i to double
  %i.k = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.28, double noundef %i.j) #29 ; 0 uses
  %i.l = load float, ptr %i.f, align 4, !tbaa !125 ; 4 uses
  %i.m = fcmp une float %i.l, 0.000000e+00
  %i.n = fdiv float %i.l, %i.l
  %spec.select = select i1 %i.m, float %i.n, float %i.l
  %i.o = fpext float %spec.select to double
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.q = load float, ptr %i.p, align 4, !tbaa !125
  %i.r = fpext float %i.q to double
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.t = load float, ptr %i.s, align 4, !tbaa !125
  %i.u = fpext float %i.t to double
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.w = load float, ptr %i.v, align 4, !tbaa !125
  %i.x = fpext float %i.w to double
  %i.y = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.29, double noundef %i.o, double noundef %i.r, double noundef %i.u, double noundef %i.x) #29 ; 0 uses
  %i.z = load float, ptr %i.f, align 4, !tbaa !125 ; 2 uses
  %i.aa = fcmp une float %i.z, 0.000000e+00
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !125 ; 2 uses
  %i.ad = fdiv float %i.ac, %i.z
  %i.ae = select i1 %i.aa, float %i.ad, float %i.ac
  %i.af = fpext float %i.ae to double
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !125
  %i.ai = fpext float %i.ah to double
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !125
  %i.al = fpext float %i.ak to double
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.an = load float, ptr %i.am, align 4, !tbaa !125
  %i.ao = fpext float %i.an to double
  %i.ap = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.29, double noundef %i.af, double noundef %i.ai, double noundef %i.al, double noundef %i.ao) #29 ; 0 uses
  %i.aq = load float, ptr %i.f, align 4, !tbaa !125 ; 2 uses
  %i.ar = fcmp une float %i.aq, 0.000000e+00
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.at = load float, ptr %i.as, align 4, !tbaa !125 ; 2 uses
  %i.au = fdiv float %i.at, %i.aq
  %i.av = select i1 %i.ar, float %i.au, float %i.at
  %i.aw = fpext float %i.av to double
  %i.ax = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !125
  %i.az = fpext float %i.ay to double
  %i.ba = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.bb = load <2 x float>, ptr %i.ba, align 4, !tbaa !125
  %i.bc = fpext <2 x float> %i.bb to <2 x double> ; 2 uses
  %i.bd = extractelement <2 x double> %i.bc, i64 0
  %i.be = extractelement <2 x double> %i.bc, i64 1
  %i.bf = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.29, double noundef %i.aw, double noundef %i.az, double noundef %i.bd, double noundef %i.be) #29 ; 0 uses
  %fputc = tail call i32 @fputc(i32 10, ptr %0)   ; 0 uses
  %i.bg = load i32, ptr %i.a, align 4, !tbaa !155
  %i.bh = sext i32 %i.bg to i64
  %i.bi = icmp slt i64 %indvars.iv.next, %i.bh
  br i1 %i.bi, label %bb.b, label %._crit_edge, !llvm.loop !321
}

; Function Attrs: mustprogress uwtable
define noundef float @_Z15calc_orires_devPK14gmx_multisim_tiPKiPK9t_iparamsN3gmx8ArrayRefIKNS7_11BasicVectorIfEEEEPA3_KfPK5t_pbcP12t_oriresdata(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree readonly captures(none) %4, ptr nofree readnone captures(none) %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) local_unnamed_addr #8 {
bb.a:
  %i.a = alloca [3 x float], align 16             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.c = load float, ptr %i.b, align 4, !tbaa !159 ; 7 uses
  %i.d = fcmp une float %i.c, 0.000000e+00        ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.f = load float, ptr %i.e, align 8, !tbaa !160 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 328
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !162  ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 88
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !166  ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 96
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !163  ; 3 uses
  %i.m = ptrtoint ptr %i.j to i64
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 112
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !336
  %i.p = load float, ptr %i.o, align 4, !tbaa !125
  %i.q = fmul float %i.c, %i.p                    ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 12
  store float %i.q, ptr %i.r, align 4, !tbaa !178
  %i.s = fpext float %i.q to double
  %i.t = fsub double 1.000000e+00, %i.s
  %i.u = fdiv double 1.000000e+00, %i.t
  %i.v = fptrunc double %i.u to float
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0342 = phi float [ %i.v, %bb.b ], [ 1.000000e+00, %bb.a ] ; 4 uses
  %.not = icmp eq ptr %0, null                    ; 4 uses
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load i32, ptr %0, align 8, !tbaa !169
  %i.x = sitofp i32 %i.w to double
  %i.y = fdiv nnan double 1.000000e+00, %i.x
  %i.z = fptrunc nnan double %i.y to float
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0325 = phi float [ %i.z, %bb.d ], [ 1.000000e+00, %bb.c ] ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.ab = tail call { ptr, ptr } @_ZNK3gmx12LocalAtomSet10localIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aa) ; 2 uses
  %i.ac = extractvalue { ptr, ptr } %i.ab, 0      ; 3 uses
  %i.ad = extractvalue { ptr, ptr } %i.ab, 1      ; 3 uses
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ac to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = ashr exact i64 %i.ag, 2
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !166
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !163
  %i.am = ptrtoint ptr %i.aj to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.an, %i.am
  %i.ap = sdiv exact i64 %i.ao, 12
  %i.aq = icmp eq i64 %i.ah, %i.ap
  br i1 %i.aq, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZ15calc_orires_devPK14gmx_multisim_tiPKiPK9t_iparamsN3gmx8ArrayRefIKNS7_11BasicVectorIfEEEEPA3_KfPK5t_pbcP12t_oriresdataENK3$_0clEv", ptr noundef nonnull @.str.2, i32 noundef 463) #26
  unreachable

bb.g:                                             ; preds = %bb.e
  %.not428437 = icmp eq ptr %i.ac, %i.ad
  br i1 %.not428437, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 64
  br label %bb.h

._crit_edge:                                      ; preds = %bb.h, %bb.g
  %.sroa.12.0 = phi float [ 0.000000e+00, %bb.g ], [ %i.bn, %bb.h ]
  %.0347.lcssa = phi double [ 0.000000e+00, %bb.g ], [ %i.bp, %bb.h ]
  %i.as = phi <2 x float> [ zeroinitializer, %bb.g ], [ %i.bk, %bb.h ]
  %i.at = fdiv double 1.000000e+00, %.0347.lcssa
  %i.au = fptrunc double %i.at to float           ; 2 uses
  %i.av = insertelement <2 x float> poison, float %i.au, i64 0
  %i.aw = shufflevector <2 x float> %i.av, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ax = fmul <2 x float> %i.as, %i.aw
  %i.ay = fmul float %.sroa.12.0, %i.au
  %.not429441 = icmp eq ptr %i.j, %i.l
  br i1 %.not429441, label %._crit_edge445, label %.lr.ph444

bb.h:                                             ; preds = %.lr.ph, %bb.h
  %.sroa.12.1 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.bn, %bb.h ]
  %.0346440 = phi i64 [ 0, %.lr.ph ], [ %i.bq, %bb.h ] ; 3 uses
  %.0347439 = phi double [ 0.000000e+00, %.lr.ph ], [ %i.bp, %bb.h ]
  %.sroa.0402.0438 = phi ptr [ %i.ac, %.lr.ph ], [ %i.br, %bb.h ] ; 2 uses
  %i.az = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %i.bk, %bb.h ]
  %i.ba = load i32, ptr %.sroa.0402.0438, align 4, !tbaa !149
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds [12 x i8], ptr %4, i64 %i.bb ; 3 uses
  %i.bd = load ptr, ptr %i.ar, align 8, !tbaa !123
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %.0346440
  %i.bf = load float, ptr %i.be, align 4, !tbaa !125 ; 3 uses
  %i.bg = getelementptr inbounds nuw [12 x i8], ptr %i.j, i64 %.0346440
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bg, ptr noundef nonnull align 4 dereferenceable(12) %i.bc, i64 12, i1 false), !tbaa.struct !165
  %i.bh = load <2 x float>, ptr %i.bc, align 4, !tbaa !125
  %i.bi = insertelement <2 x float> poison, float %i.bf, i64 0
  %i.bj = shufflevector <2 x float> %i.bi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bj, <2 x float> %i.bh, <2 x float> %i.az) ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !125
  %i.bn = tail call float @llvm.fmuladd.f32(float %i.bf, float %i.bm, float %.sroa.12.1) ; 2 uses
  %i.bo = fpext float %i.bf to double
  %i.bp = fadd double %.0347439, %i.bo            ; 2 uses
  %i.bq = add nuw nsw i64 %.0346440, 1
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.0402.0438, i64 4 ; 2 uses
  %.not428 = icmp eq ptr %i.br, %i.ad
  br i1 %.not428, label %._crit_edge, label %bb.h

._crit_edge445:                                   ; preds = %.lr.ph444, %._crit_edge
  %i.bs = ptrtoint ptr %i.l to i64
  %i.bt = sub i64 %i.bs, %i.m
  %i.bu = sdiv exact i64 %i.bt, 12
  %i.bv = trunc i64 %i.bu to i32
  %i.bw = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !123
  %i.by = load ptr, ptr %i.ai, align 8, !tbaa !166
  %i.bz = getelementptr inbounds nuw i8, ptr %8, i64 144 ; 9 uses
  tail call void @_Z10calc_fit_RiiPKfPA3_S_PA3_fS4_(i32 noundef 3, i32 noundef %i.bv, ptr noundef %i.bx, ptr noundef %i.by, ptr noundef %i.j, ptr noundef nonnull %i.bz)
  %i.ca = icmp sgt i32 %1, 0                      ; 3 uses
  br i1 %i.ca, label %.lr.ph455, label %._crit_edge456

.lr.ph455:                                        ; preds = %._crit_edge445
  %i.cb = getelementptr inbounds nuw i8, ptr %8, i64 24
  %.not355 = icmp eq ptr %7, null
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %8, i64 148
  %i.ce = getelementptr inbounds nuw i8, ptr %8, i64 152
  %i.cf = getelementptr inbounds nuw i8, ptr %8, i64 156
  %i.cg = getelementptr inbounds nuw i8, ptr %8, i64 172
  %i.ch = getelementptr inbounds nuw i8, ptr %8, i64 192
  %i.ci = getelementptr inbounds nuw i8, ptr %8, i64 200
  br label %bb.i

.lr.ph444:                                        ; preds = %._crit_edge, %.lr.ph444
  %.sroa.0398.0442 = phi ptr [ %i.co, %.lr.ph444 ], [ %i.j, %._crit_edge ] ; 4 uses
  %i.cj = load <2 x float>, ptr %.sroa.0398.0442, align 4, !tbaa !125
  %i.ck = fsub <2 x float> %i.cj, %i.ax
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.0398.0442, i64 8 ; 2 uses
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !125
  %i.cn = fsub float %i.cm, %i.ay
  store <2 x float> %i.ck, ptr %.sroa.0398.0442, align 4
  store float %i.cn, ptr %i.cl, align 4, !tbaa !153
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0398.0442, i64 12 ; 2 uses
  %.not429 = icmp eq ptr %i.co, %i.l
  br i1 %.not429, label %._crit_edge445, label %.lr.ph444

._crit_edge456:                                   ; preds = %.loopexit434, %._crit_edge445
  br i1 %.not, label %bb.n, label %bb.m

bb.i:                                             ; preds = %.lr.ph455, %.loopexit434
  %indvars.iv = phi i64 [ 0, %.lr.ph455 ], [ %indvars.iv.next, %.loopexit434 ] ; 2 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv ; 3 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !149 ; 2 uses
  %i.cr = load i32, ptr %i.cb, align 8, !tbaa !156
  %i.cs = sub nsw i32 %i.cq, %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 4
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !149
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds [12 x i8], ptr %6, i64 %i.cv ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !149
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr inbounds [12 x i8], ptr %6, i64 %i.cz ; 2 uses
  br i1 %.not355, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.db = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %7, ptr noundef %i.cw, ptr noundef %i.da, ptr noundef nonnull %i.a) ; 0 uses
  %9 = load <3 x float>, ptr %i.a, align 16, !tbaa !125
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %10 = load <3 x float>, ptr %i.cw, align 4, !tbaa !125
  %11 = load <3 x float>, ptr %i.da, align 4, !tbaa !125
  %12 = fsub <3 x float> %10, %11                 ; 3 uses
  %13 = shufflevector <3 x float> %12, <3 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %13, ptr %i.a, align 16, !tbaa !125
  %14 = extractelement <3 x float> %12, i64 2
  store float %14, ptr %i.cc, align 8, !tbaa !125
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %15 = phi <3 x float> [ %12, %bb.k ], [ %9, %bb.j ] ; 6 uses
  %i.dc = load float, ptr %i.cd, align 4, !tbaa !125
  %i.dd = extractelement <3 x float> %15, i64 1
  %i.de = fmul float %i.dc, %i.dd
  %16 = load float, ptr %i.ce, align 8, !tbaa !125
  %i.df = load float, ptr %i.bz, align 8, !tbaa !125
  %17 = extractelement <3 x float> %15, i64 0
  %18 = call float @llvm.fmuladd.f32(float %i.df, float %17, float %i.de)
  %19 = load <2 x float>, ptr %i.cg, align 4, !tbaa !125
  %20 = load <4 x float>, ptr %i.cf, align 4, !tbaa !125 ; 3 uses
  %21 = shufflevector <3 x float> %15, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %22 = shufflevector <2 x float> %19, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %23 = shufflevector <4 x float> %20, <4 x float> %22, <2 x i32> <i32 1, i32 4>
  %24 = fmul <2 x float> %21, %23
  %25 = shufflevector <4 x float> %20, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %26 = shufflevector <3 x float> %15, <3 x float> poison, <2 x i32> zeroinitializer
  %27 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %25, <2 x float> %26, <2 x float> %24)
  %28 = shufflevector <4 x float> %20, <4 x float> %22, <2 x i32> <i32 2, i32 5>
  %29 = shufflevector <3 x float> %15, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %30 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %28, <2 x float> %29, <2 x float> %27) ; 5 uses
  %31 = extractelement <3 x float> %15, i64 2
  %i.dg = call float @llvm.fmuladd.f32(float %16, float %31, float %18) ; 6 uses
  %32 = extractelement <2 x float> %30, i64 0     ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %30, %30
  %33 = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.dh = call float @llvm.fmuladd.f32(float %i.dg, float %i.dg, float %33)
  %34 = extractelement <2 x float> %30, i64 1     ; 3 uses
  %i.di = call noundef float @llvm.fmuladd.f32(float %34, float %34, float %i.dh) ; 3 uses
  %sqrt = call float @llvm.sqrt.f32(float %i.di)
  %i.dj = fdiv float 1.000000e+00, %sqrt          ; 11 uses
  %i.dk = sext i32 %i.cq to i64
  %i.dl = getelementptr inbounds [48 x i8], ptr %3, i64 %i.dk ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 12
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !153
  %i.do = fmul float %i.dn, %i.dj
  %i.dp = fmul float %i.dj, %i.do
  %i.dq = fmul float %i.dp, 3.000000e+00          ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !153 ; 4 uses
  %i.dt = icmp sgt i32 %i.ds, 0
  br i1 %i.dt, label %.lr.ph449.preheader, label %._crit_edge450

.lr.ph449.preheader:                              ; preds = %bb.l
  %xtraiter = and i32 %i.ds, 7                    ; 3 uses
  %i.du = icmp ult i32 %i.ds, 8
  br i1 %i.du, label %.lr.ph449.epil.preheader, label %.lr.ph449.preheader.new

.lr.ph449.preheader.new:                          ; preds = %.lr.ph449.preheader
  %unroll_iter = and i32 %i.ds, 2147483640
  br label %.lr.ph449

._crit_edge450.loopexit.unr-lcssa:                ; preds = %.lr.ph449
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge450, label %.lr.ph449.epil.preheader

.lr.ph449.epil.preheader:                         ; preds = %._crit_edge450.loopexit.unr-lcssa, %.lr.ph449.preheader
  %.0326447.epil.init = phi float [ %i.dq, %.lr.ph449.preheader ], [ %i.fm, %._crit_edge450.loopexit.unr-lcssa ]
  %lcmp.mod682 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod682)
  br label %.lr.ph449.epil

.lr.ph449.epil:                                   ; preds = %.lr.ph449.epil, %.lr.ph449.epil.preheader
  %.0326447.epil = phi float [ %i.dv, %.lr.ph449.epil ], [ %.0326447.epil.init, %.lr.ph449.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph449.epil ], [ 0, %.lr.ph449.epil.preheader ]
  %i.dv = fmul float %i.dj, %.0326447.epil        ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge450, label %.lr.ph449.epil, !llvm.loop !322

._crit_edge450:                                   ; preds = %._crit_edge450.loopexit.unr-lcssa, %.lr.ph449.epil, %bb.l
  %.0326.lcssa = phi float [ %i.dq, %bb.l ], [ %i.fm, %._crit_edge450.loopexit.unr-lcssa ], [ %i.dv, %.lr.ph449.epil ] ; 2 uses
  %i.dw = load ptr, ptr %i.ch, align 8, !tbaa !177
  %i.dx = sext i32 %i.cs to i64                   ; 2 uses
  %i.dy = getelementptr inbounds [20 x i8], ptr %i.dw, i64 %i.dx ; 5 uses
  %i.dz = fmul float %32, 2.000000e+00            ; 2 uses
  %i.ea = fmul float %i.dg, %i.dg
  %i.eb = fmul float %i.dg, 2.000000e+00          ; 2 uses
  %i.ec = call float @llvm.fmuladd.f32(float %i.dz, float %32, float %i.ea)
  %i.ed = call float @llvm.fmuladd.f32(float %i.eb, float %i.dg, float %33)
  %i.ee = fsub float %i.ec, %i.di
  %35 = insertelement <2 x float> poison, float %i.eb, i64 0
  %36 = fsub float %i.ed, %i.di
  %37 = insertelement <4 x float> poison, float %36, i64 0
  %38 = shufflevector <2 x float> %35, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %39 = shufflevector <2 x float> %30, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %40 = fmul <4 x float> %38, %39
  %41 = shufflevector <4 x float> %37, <4 x float> %40, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.ef = insertelement <4 x float> %41, float %i.ee, i64 3
  %i.eg = insertelement <4 x float> poison, float %.0326.lcssa, i64 0
  %i.eh = shufflevector <4 x float> %i.eg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ei = fmul <4 x float> %i.ef, %i.eh           ; 2 uses
  store <4 x float> %i.ei, ptr %i.dy, align 4, !tbaa !125
  %i.ej = fmul float %i.dz, %34
  %i.ek = fmul float %i.ej, %.0326.lcssa
  %i.el = getelementptr inbounds nuw i8, ptr %i.dy, i64 16 ; 2 uses
  store float %i.ek, ptr %i.el, align 4, !tbaa !125
  br i1 %.not, label %.loopexit434, label %.preheader433

.preheader433:                                    ; preds = %._crit_edge450
  %i.em = getelementptr inbounds nuw i8, ptr %i.dy, i64 12
  %i.en = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dy, i64 4
  %i.ep = load ptr, ptr %i.ci, align 8, !tbaa !176
  %i.eq = getelementptr inbounds [20 x i8], ptr %i.ep, i64 %i.dx ; 5 uses
  %i.er = extractelement <4 x float> %i.ei, i64 0
  %i.es = fmul float %.0325, %i.er
  store float %i.es, ptr %i.eq, align 4, !tbaa !125
  %i.et = load float, ptr %i.eo, align 4, !tbaa !125
  %i.eu = fmul float %.0325, %i.et
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eq, i64 4
  store float %i.eu, ptr %i.ev, align 4, !tbaa !125
  %i.ew = load float, ptr %i.en, align 4, !tbaa !125
  %i.ex = fmul float %.0325, %i.ew
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  store float %i.ex, ptr %i.ey, align 4, !tbaa !125
  %i.ez = load float, ptr %i.em, align 4, !tbaa !125
  %i.fa = fmul float %.0325, %i.ez
  %i.fb = getelementptr inbounds nuw i8, ptr %i.eq, i64 12
  store float %i.fa, ptr %i.fb, align 4, !tbaa !125
  %i.fc = load float, ptr %i.el, align 4, !tbaa !125
  %i.fd = fmul float %.0325, %i.fc
  %i.fe = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  store float %i.fd, ptr %i.fe, align 4, !tbaa !125
  br label %.loopexit434

.lr.ph449:                                        ; preds = %.lr.ph449, %.lr.ph449.preheader.new
  %.0326447 = phi float [ %i.dq, %.lr.ph449.preheader.new ], [ %i.fm, %.lr.ph449 ]
  %niter = phi i32 [ 0, %.lr.ph449.preheader.new ], [ %niter.next.7, %.lr.ph449 ]
  %i.ff = fmul float %i.dj, %.0326447
  %i.fg = fmul float %i.dj, %i.ff
  %i.fh = fmul float %i.dj, %i.fg
  %i.fi = fmul float %i.dj, %i.fh
  %i.fj = fmul float %i.dj, %i.fi
  %i.fk = fmul float %i.dj, %i.fj
  %i.fl = fmul float %i.dj, %i.fk
  %i.fm = fmul float %i.dj, %i.fl                 ; 3 uses
  %niter.next.7 = add nuw nsw i32 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge450.loopexit.unr-lcssa, label %.lr.ph449, !llvm.loop !323

.loopexit434:                                     ; preds = %.preheader433, %._crit_edge450
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.fn = trunc nuw i64 %indvars.iv.next to i32
  %i.fo = icmp sgt i32 %1, %i.fn
  br i1 %i.fo, label %bb.i, label %._crit_edge456, !llvm.loop !324

bb.m:                                             ; preds = %._crit_edge456
  %i.fp = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !142
  %i.fr = mul nsw i32 %i.fq, 5
  %i.fs = getelementptr inbounds nuw i8, ptr %8, i64 200
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !176
  call void @_Z12gmx_sumf_simiPfPK14gmx_multisim_t(i32 noundef %i.fr, ptr noundef %i.ft, ptr noundef nonnull %0)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge456
  %i.fu = getelementptr inbounds nuw i8, ptr %8, i64 20 ; 3 uses
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !155 ; 4 uses
  %i.fw = icmp sgt i32 %i.fv, 0
  br i1 %i.fw, label %.preheader432.preheader, label %.preheader431

.preheader432.preheader:                          ; preds = %bb.n
  %wide.trip.count = zext nneg i32 %i.fv to i64   ; 2 uses
  %xtraiter683 = and i64 %wide.trip.count, 3      ; 3 uses
  %i.fx = icmp ult i32 %i.fv, 4
  br i1 %i.fx, label %.preheader432.epil.preheader, label %.preheader432.preheader.new

.preheader432.preheader.new:                      ; preds = %.preheader432.preheader
  %unroll_iter687 = and i64 %wide.trip.count, 2147483644
  br label %.preheader432

.preheader432:                                    ; preds = %.preheader432, %.preheader432.preheader.new
  %indvars.iv506 = phi i64 [ 0, %.preheader432.preheader.new ], [ %indvars.iv.next507.3, %.preheader432 ] ; 5 uses
  %niter688 = phi i64 [ 0, %.preheader432.preheader.new ], [ %niter688.next.3, %.preheader432 ]
  %i.fy = getelementptr inbounds nuw [120 x i8], ptr %i.h, i64 %indvars.iv506 ; 5 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 40
  store i64 0, ptr %i.fz, align 4
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fy, i64 60
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ga, i8 0, i64 12, i1 false), !tbaa !125
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.gb, i8 0, i64 16, i1 false), !tbaa !125
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fy, i64 100
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.gc, i8 0, i64 20, i1 false), !tbaa !125
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.fy, i8 0, i64 24, i1 false)
  %i.gd = getelementptr inbounds nuw [120 x i8], ptr %i.h, i64 %indvars.iv506 ; 5 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 120
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gd, i64 160
  store i64 0, ptr %i.gf, align 4
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gd, i64 180
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.gg, i8 0, i64 12, i1 false), !tbaa !125
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gd, i64 200
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.gh, i8 0, i64 16, i1 false), !tbaa !125
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gd, i64 220
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.gi, i8 0, i64 20, i1 false), !tbaa !125
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.ge, i8 0, i64 24, i1 false)
  %i.gj = getelementptr inbounds nuw [120 x i8], ptr %i.h, i64 %indvars.iv506 ; 5 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 240
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gj, i64 280
  store i64 0, ptr %i.gl, align 4
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gj, i64 300
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.gm, i8 0, i64 12, i1 false), !tbaa !125
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gj, i64 320
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.gn, i8 0, i64 16, i1 false), !tbaa !125
  %i.go = getelementptr inbounds nuw i8, ptr %i.gj, i64 340
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.go, i8 0, i64 20, i1 false), !tbaa !125
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.gk, i8 0, i64 24, i1 false)
  %i.gp = getelementptr inbounds nuw [120 x i8], ptr %i.h, i64 %indvars.iv506 ; 5 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 360
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gp, i64 400
  store i64 0, ptr %i.gr, align 4
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gp, i64 420
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.gs, i8 0, i64 12, i1 false), !tbaa !125
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gp, i64 440
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.gt, i8 0, i64 16, i1 false), !tbaa !125
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gp, i64 460
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.gu, i8 0, i64 20, i1 false), !tbaa !125
  %indvars.iv.next507.3 = add nuw nsw i64 %indvars.iv506, 4 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.gq, i8 0, i64 24, i1 false)
  %niter688.next.3 = add i64 %niter688, 4         ; 2 uses
  %niter688.ncmp.3 = icmp eq i64 %niter688.next.3, %unroll_iter687
  br i1 %niter688.ncmp.3, label %.preheader431.loopexit.unr-lcssa, label %.preheader432, !llvm.loop !325

.preheader431.loopexit.unr-lcssa:                 ; preds = %.preheader432
  %lcmp.mod685.not = icmp eq i64 %xtraiter683, 0
  br i1 %lcmp.mod685.not, label %.preheader431, label %.preheader432.epil.preheader

.preheader432.epil.preheader:                     ; preds = %.preheader431.loopexit.unr-lcssa, %.preheader432.preheader
  %indvars.iv506.epil.init = phi i64 [ 0, %.preheader432.preheader ], [ %indvars.iv.next507.3, %.preheader431.loopexit.unr-lcssa ]
  %lcmp.mod686 = icmp ne i64 %xtraiter683, 0
  call void @llvm.assume(i1 %lcmp.mod686)
  br label %.preheader432.epil

.preheader432.epil:                               ; preds = %.preheader432.epil, %.preheader432.epil.preheader
  %indvars.iv506.epil = phi i64 [ %indvars.iv506.epil.init, %.preheader432.epil.preheader ], [ %indvars.iv.next507.epil, %.preheader432.epil ] ; 2 uses
  %epil.iter684 = phi i64 [ 0, %.preheader432.epil.preheader ], [ %epil.iter684.next, %.preheader432.epil ]
  %i.gv = getelementptr inbounds nuw [120 x i8], ptr %i.h, i64 %indvars.iv506.epil ; 5 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 40
  store i64 0, ptr %i.gw, align 4
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gv, i64 60
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.gx, i8 0, i64 12, i1 false), !tbaa !125
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gv, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.gy, i8 0, i64 16, i1 false), !tbaa !125
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gv, i64 100
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.gz, i8 0, i64 20, i1 false), !tbaa !125
  %indvars.iv.next507.epil = add nuw nsw i64 %indvars.iv506.epil, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.gv, i8 0, i64 24, i1 false)
  %epil.iter684.next = add i64 %epil.iter684, 1   ; 2 uses
  %epil.iter684.cmp.not = icmp eq i64 %epil.iter684.next, %xtraiter683
  br i1 %epil.iter684.cmp.not, label %.preheader431, label %.preheader432.epil, !llvm.loop !326

.preheader431:                                    ; preds = %.preheader431.loopexit.unr-lcssa, %.preheader432.epil, %bb.n
  br i1 %i.ca, label %.lr.ph464, label %.preheader

.lr.ph464:                                        ; preds = %.preheader431
  %i.ha = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.hb = load i32, ptr %i.ha, align 8, !tbaa !156
  %i.hc = getelementptr inbounds nuw i8, ptr %8, i64 208
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !158
  %i.he = getelementptr inbounds nuw i8, ptr %8, i64 128
  %i.hf = getelementptr inbounds nuw i8, ptr %8, i64 200
  %i.hg = zext nneg i32 %1 to i64
  br label %bb.o

.preheader.loopexit:                              ; preds = %.loopexit
  %.pre562 = load i32, ptr %i.fu, align 4, !tbaa !155
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheader431
  %i.hh = phi i32 [ %.pre562, %.preheader.loopexit ], [ %i.fv, %.preheader431 ] ; 2 uses
  %i.hi = icmp sgt i32 %i.hh, 0
  br i1 %i.hi, label %.lr.ph476, label %._crit_edge477

.lr.ph476:                                        ; preds = %.preheader
  %i.hj = fmul float %.0342, %.0342               ; 5 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %8, i64 184
  %i.hl = insertelement <8 x float> poison, float %.0342, i64 0
  %i.hm = insertelement <8 x float> %i.hl, float %i.hj, i64 1
  %i.hn = shufflevector <8 x float> %i.hm, <8 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1>
  %i.ho = insertelement <8 x float> poison, float %i.hj, i64 0
  %i.hp = shufflevector <8 x float> %i.ho, <8 x float> poison, <8 x i32> zeroinitializer
  %i.hq = insertelement <2 x float> poison, float %i.hj, i64 0
  %i.hr = shufflevector <2 x float> %i.hq, <2 x float> poison, <2 x i32> zeroinitializer
  br label %._crit_edge468.4

bb.o:                                             ; preds = %.lr.ph464, %.loopexit
  %indvars.iv529 = phi i64 [ 0, %.lr.ph464 ], [ %indvars.iv.next530, %.loopexit ] ; 2 uses
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv529
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !149 ; 2 uses
  %i.hu = sub nsw i32 %i.ht, %i.hb                ; 2 uses
  %i.hv = sext i32 %i.hu to i64                   ; 2 uses
  %i.hw = getelementptr inbounds [20 x i8], ptr %i.hd, i64 %i.hv ; 15 uses
  br i1 %i.d, label %.preheader430, label %..loopexit_crit_edge

end_hunk_0
