Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/orires?download=true
inline.NumInlined: 901
inline.NumDeleted: 525
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_Z26diagonalize_orires_tensorsP12t_oriresdata:bb.a
  %i.am = shufflevector <9 x float> %i.v, <9 x float> poison, <3 x i32> <i32 7, i32 7, i32 7>
  %i.an = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ae, <3 x float> %i.am, <3 x float> %i.al) ; 2 uses
  %i.ao = shufflevector <3 x float> %i.an, <3 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 2, i32 2>
  %i.ap = shufflevector <9 x float> %i.v, <9 x float> poison, <3 x i32> <i32 5, i32 5, i32 5>
  %i.aq = fmul <3 x float> %i.x, %i.ap
  %i.ar = shufflevector <9 x float> %i.v, <9 x float> poison, <3 x i32> <i32 2, i32 2, i32 2>
  %i.as = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.z, <3 x float> %i.ar, <3 x float> %i.aq)
  %i.at = shufflevector <9 x float> %i.v, <9 x float> poison, <3 x i32> <i32 8, i32 8, i32 8>
  %i.au = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ae, <3 x float> %i.at, <3 x float> %i.as) ; 2 uses
  %i.av = shufflevector <3 x float> %i.au, <3 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 2, i32 2>
  %i.aw = shufflevector <8 x float> %i.s, <8 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 1, i32 4, i32 7, i32 1, i32 4>
  %i.ax = fmul <8 x float> %i.aw, %i.ao
  %i.ay = shufflevector <8 x float> %i.s, <8 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 0, i32 3, i32 6, i32 0, i32 3>
  %i.az = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.ah, <8 x float> %i.ay, <8 x float> %i.ax)
  %i.ba = shufflevector <3 x float> %i.ac, <3 x float> %i.ad, <8 x i32> <i32 0, i32 1, i32 5, i32 0, i32 1, i32 5, i32 0, i32 1>
  %i.bb = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.av, <8 x float> %i.ba, <8 x float> %i.az)
  %i.bc = extractelement <3 x float> %i.an, i64 2
  %i.bd = fmul float %i.t, %i.bc
  %i.be = extractelement <3 x float> %i.ag, i64 2
  %i.bf = tail call float @llvm.fmuladd.f32(float %i.be, float %i.u, float %i.bd)
  %i.bg = extractelement <3 x float> %i.au, i64 2
  %i.bh = tail call float @llvm.fmuladd.f32(float %i.bg, float %i.r, float %i.bf)
  %i.bi = fpext <8 x float> %i.bb to <8 x double>
  store <8 x double> %i.bi, ptr %i.i, align 8, !tbaa !324
  %i.bj = fpext float %i.bh to double
  store double %i.bj, ptr %i.n, align 8, !tbaa !324
  %i.bk = tail call noundef i32 @_Z6jacobiN3gmx8ArrayRefINS_11BasicVectorIdEEEENS0_IdEES3_(ptr nonnull %i.i, ptr nonnull %i.j, ptr nonnull %i.j, ptr nonnull %i.k, ptr nonnull %i.k, ptr nonnull %i.l) ; 0 uses
  %i.bl = load <2 x double>, ptr %i.j, align 8, !tbaa !324 ; 2 uses
  %i.bm = fmul <2 x double> %i.bl, %i.bl          ; 2 uses
  %i.bn = extractelement <2 x double> %i.bm, i64 0 ; 2 uses
  %i.bo = extractelement <2 x double> %i.bm, i64 1 ; 2 uses
  %i.bp = fcmp ule double %i.bo, %i.bn            ; 4 uses
  %.pre-phi = select i1 %i.bp, double %i.bn, double %i.bo
  %.sroa.9.1 = zext i1 %i.bp to i32               ; 2 uses
  %not. = xor i1 %i.bp, true                      ; 2 uses
  %.sroa.0.1 = zext i1 %not. to i32
  %i.bq = load double, ptr %i.o, align 8, !tbaa !324 ; 2 uses
  %i.br = fmul double %i.bq, %i.bq
  %i.bs = fcmp ogt double %i.br, %.pre-phi        ; 2 uses
  %.sroa.16.3 = select i1 %i.bs, i32 %.sroa.0.1, i32 2 ; 3 uses
  %i.bt = zext nneg i32 %.sroa.16.3 to i64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.bt
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !324 ; 2 uses
  %i.bw = fmul double %i.bv, %i.bv
  %i.bx = zext i1 %i.bp to i64
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.bx
  %i.bz = load double, ptr %i.by, align 8, !tbaa !324 ; 2 uses
  %i.ca = fmul double %i.bz, %i.bz
  %i.cb = fcmp ogt double %i.bw, %i.ca            ; 2 uses
  %.sroa.16.1 = select i1 %i.cb, i32 %.sroa.9.1, i32 %.sroa.16.3
  %.sroa.9.2 = select i1 %i.cb, i32 %.sroa.16.3, i32 %.sroa.9.1
  %i.cc = mul nuw nsw i64 %indvars.iv, 12         ; 2 uses
  %i.cd = load ptr, ptr %i.m, align 8, !tbaa !123 ; 2 uses
  %i.ce = zext i1 %not. to i64
  %i.cf = select i1 %i.bs, i64 2, i64 %i.ce       ; 2 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.cf
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !324
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.cc
  %i.cj = zext nneg i32 %.sroa.9.2 to i64         ; 2 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.cj
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !324
  %i.cm = zext nneg i32 %.sroa.16.1 to i64        ; 2 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.cm
  %i.co = load double, ptr %i.cn, align 8, !tbaa !324
  %invariant.gep = getelementptr [8 x i8], ptr %i.k, i64 %i.cf ; 2 uses
  %i.cp = load double, ptr %invariant.gep, align 8, !tbaa !324
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 24
  %invariant.gep.1 = getelementptr [8 x i8], ptr %i.k, i64 %i.cj ; 2 uses
  %i.cq = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %gep.1, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x double> poison), !tbaa !324
  %i.cr = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %invariant.gep.1, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x double> poison), !tbaa !324
  %i.cs = insertelement <8 x double> poison, double %i.ch, i64 0
  %i.ct = insertelement <8 x double> %i.cs, double %i.cl, i64 1
  %i.cu = insertelement <8 x double> %i.ct, double %i.co, i64 2
  %i.cv = insertelement <8 x double> %i.cu, double %i.cp, i64 3
  %i.cw = shufflevector <4 x double> %i.cq, <4 x double> poison, <8 x i32> <i32 0, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cx = shufflevector <8 x double> %i.cv, <8 x double> %i.cw, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 poison, i32 poison>
  %i.cy = shufflevector <4 x double> %i.cr, <4 x double> poison, <8 x i32> <i32 0, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cz = shufflevector <8 x double> %i.cx, <8 x double> %i.cy, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  %i.da = fptrunc <8 x double> %i.cz to <8 x float>
  store <8 x float> %i.da, ptr %i.ci, align 4, !tbaa !125
  %gep.2.1 = getelementptr i8, ptr %invariant.gep.1, i64 48
  %i.db = load double, ptr %gep.2.1, align 8, !tbaa !324
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.cc
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  %invariant.gep.2 = getelementptr [8 x i8], ptr %i.k, i64 %i.cm ; 2 uses
  %i.de = load double, ptr %invariant.gep.2, align 8, !tbaa !324
  %gep.1.2 = getelementptr i8, ptr %invariant.gep.2, i64 24
  %i.df = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %gep.1.2, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x double> poison), !tbaa !324
  %i.dg = insertelement <4 x double> poison, double %i.db, i64 0
  %i.dh = insertelement <4 x double> %i.dg, double %i.de, i64 1
  %i.di = shufflevector <4 x double> %i.dh, <4 x double> %i.df, <4 x i32> <i32 0, i32 1, i32 4, i32 7>
  %i.dj = fptrunc <4 x double> %i.di to <4 x float>
  store <4 x float> %i.dj, ptr %i.dd, align 4, !tbaa !125
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dk = load i32, ptr %i.a, align 4, !tbaa !155
  %i.dl = sext i32 %i.dk to i64
  %i.dm = icmp slt i64 %indvars.iv.next, %i.dl
  br i1 %i.dm, label %.lr.ph, label %._crit_edge, !llvm.loop !323
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
  br i1 %i.bi, label %bb.b, label %._crit_edge, !llvm.loop !325
}

; Function Attrs: mustprogress uwtable
define noundef float @_Z15calc_orires_devPK14gmx_multisim_tiPKiPK9t_iparamsN3gmx8ArrayRefIKNS7_11BasicVectorIfEEEEPA3_KfPK5t_pbcP12t_oriresdata(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree readonly captures(none) %4, ptr nofree readnone captures(none) %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) local_unnamed_addr #8 {
bb.a:
  %i.a = alloca [3 x float], align 8              ; 6 uses
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
  %9 = ptrtoint ptr %i.l to i64
  %i.m = ptrtoint ptr %i.j to i64
  %10 = sub i64 %9, %i.m
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 112
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !340
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
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %i.aj to i64
  %i.ao = sub i64 %i.am, %i.an
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
  %i.bs = sdiv exact i64 %10, 12
  %i.bt = trunc i64 %i.bs to i32
  %i.bu = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !123
  %i.bw = load ptr, ptr %i.ai, align 8, !tbaa !166
  %i.bx = getelementptr inbounds nuw i8, ptr %8, i64 144 ; 9 uses
  tail call void @_Z10calc_fit_RiiPKfPA3_S_PA3_fS4_(i32 noundef 3, i32 noundef %i.bt, ptr noundef %i.bv, ptr noundef %i.bw, ptr noundef %i.j, ptr noundef nonnull %i.bx)
  %i.by = icmp sgt i32 %1, 0                      ; 3 uses
  br i1 %i.by, label %.lr.ph455, label %._crit_edge456

.lr.ph455:                                        ; preds = %._crit_edge445
  %i.bz = getelementptr inbounds nuw i8, ptr %8, i64 24
  %.not355 = icmp eq ptr %7, null
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %8, i64 148
  %i.cc = getelementptr inbounds nuw i8, ptr %8, i64 152
  %i.cd = getelementptr inbounds nuw i8, ptr %8, i64 156
  %i.ce = getelementptr inbounds nuw i8, ptr %8, i64 160
  %i.cf = getelementptr inbounds nuw i8, ptr %8, i64 164
  %i.cg = getelementptr inbounds nuw i8, ptr %8, i64 168
  %i.ch = getelementptr inbounds nuw i8, ptr %8, i64 172
  %i.ci = getelementptr inbounds nuw i8, ptr %8, i64 176
  %i.cj = getelementptr inbounds nuw i8, ptr %8, i64 192
  %i.ck = getelementptr inbounds nuw i8, ptr %8, i64 200
  br label %bb.i

.lr.ph444:                                        ; preds = %._crit_edge, %.lr.ph444
  %.sroa.0398.0442 = phi ptr [ %i.cq, %.lr.ph444 ], [ %i.j, %._crit_edge ] ; 4 uses
  %i.cl = load <2 x float>, ptr %.sroa.0398.0442, align 4, !tbaa !125
  %i.cm = fsub <2 x float> %i.cl, %i.ax
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.0398.0442, i64 8 ; 2 uses
  %i.co = load float, ptr %i.cn, align 4, !tbaa !125
  %i.cp = fsub float %i.co, %i.ay
  store <2 x float> %i.cm, ptr %.sroa.0398.0442, align 4
  store float %i.cp, ptr %i.cn, align 4, !tbaa !153
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.0398.0442, i64 12 ; 2 uses
  %.not429 = icmp eq ptr %i.cq, %i.l
  br i1 %.not429, label %._crit_edge445, label %.lr.ph444

._crit_edge456:                                   ; preds = %.loopexit434, %._crit_edge445
  br i1 %.not, label %bb.n, label %bb.m

bb.i:                                             ; preds = %.lr.ph455, %.loopexit434
  %indvars.iv = phi i64 [ 0, %.lr.ph455 ], [ %indvars.iv.next, %.loopexit434 ] ; 2 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv ; 3 uses
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !149 ; 2 uses
  %i.ct = load i32, ptr %i.bz, align 8, !tbaa !156
  %i.cu = sub nsw i32 %i.cs, %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cr, i64 4
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !149
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr inbounds [12 x i8], ptr %6, i64 %i.cx ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !149
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr inbounds [12 x i8], ptr %6, i64 %i.db ; 3 uses
  br i1 %.not355, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dd = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %7, ptr noundef %i.cy, ptr noundef %i.dc, ptr noundef nonnull %i.a) ; 0 uses
  %i.de = load <2 x float>, ptr %i.a, align 8, !tbaa !125
  %.pre560 = load float, ptr %i.ca, align 8, !tbaa !125
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.df = load <2 x float>, ptr %i.cy, align 4, !tbaa !125
  %i.dg = load <2 x float>, ptr %i.dc, align 4, !tbaa !125
  %i.dh = fsub <2 x float> %i.df, %i.dg           ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.dj = load float, ptr %i.di, align 4, !tbaa !125
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !125
  %i.dm = fsub float %i.dj, %i.dl                 ; 2 uses
  store <2 x float> %i.dh, ptr %i.a, align 8, !tbaa !125
  store float %i.dm, ptr %i.ca, align 8, !tbaa !125
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.dn = phi float [ %i.dm, %bb.k ], [ %.pre560, %bb.j ] ; 3 uses
  %i.do = phi <2 x float> [ %i.dh, %bb.k ], [ %i.de, %bb.j ] ; 2 uses
  %i.dp = load float, ptr %i.cb, align 4, !tbaa !125
  %i.dq = extractelement <2 x float> %i.do, i64 1 ; 3 uses
  %i.dr = fmul float %i.dp, %i.dq
  %i.ds = load float, ptr %i.ce, align 8, !tbaa !125
  %i.dt = fmul float %i.dq, %i.ds
  %i.du = load float, ptr %i.cg, align 8, !tbaa !125
  %i.dv = load float, ptr %i.ch, align 4, !tbaa !125
  %i.dw = fmul float %i.dq, %i.dv
  %i.dx = extractelement <2 x float> %i.do, i64 0 ; 3 uses
  %i.dy = call float @llvm.fmuladd.f32(float %i.du, float %i.dx, float %i.dw)
  %i.dz = load float, ptr %i.ci, align 8, !tbaa !125
  %i.ea = call float @llvm.fmuladd.f32(float %i.dz, float %i.dn, float %i.dy) ; 4 uses
  %i.eb = load float, ptr %i.cf, align 4, !tbaa !125
  %i.ec = load float, ptr %i.cd, align 4, !tbaa !125
  %i.ed = load float, ptr %i.cc, align 8, !tbaa !125
  %i.ee = load float, ptr %i.bx, align 8, !tbaa !125
  %i.ef = call float @llvm.fmuladd.f32(float %i.ec, float %i.dx, float %i.dt)
  %i.eg = call float @llvm.fmuladd.f32(float %i.ee, float %i.dx, float %i.dr)
  %i.eh = call float @llvm.fmuladd.f32(float %i.eb, float %i.dn, float %i.ef) ; 5 uses
  %i.ei = call float @llvm.fmuladd.f32(float %i.ed, float %i.dn, float %i.eg) ; 6 uses
  %i.ej = fmul float %i.eh, %i.eh                 ; 2 uses
  %i.ek = call float @llvm.fmuladd.f32(float %i.ei, float %i.ei, float %i.ej)
  %i.el = call noundef float @llvm.fmuladd.f32(float %i.ea, float %i.ea, float %i.ek) ; 3 uses
  %sqrt = call float @llvm.sqrt.f32(float %i.el)
  %i.em = fdiv float 1.000000e+00, %sqrt          ; 11 uses
  %i.en = sext i32 %i.cs to i64
  %i.eo = getelementptr inbounds [48 x i8], ptr %3, i64 %i.en ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 12
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !153
  %i.er = fmul float %i.eq, %i.em
  %i.es = fmul float %i.em, %i.er
  %i.et = fmul float %i.es, 3.000000e+00          ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eo, i64 4
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !153 ; 4 uses
  %i.ew = icmp sgt i32 %i.ev, 0
  br i1 %i.ew, label %.lr.ph449.preheader, label %._crit_edge450

.lr.ph449.preheader:                              ; preds = %bb.l
  %xtraiter = and i32 %i.ev, 7                    ; 3 uses
  %i.ex = icmp ult i32 %i.ev, 8
  br i1 %i.ex, label %.lr.ph449.epil.preheader, label %.lr.ph449.preheader.new

.lr.ph449.preheader.new:                          ; preds = %.lr.ph449.preheader
  %unroll_iter = and i32 %i.ev, 2147483640
  br label %.lr.ph449

._crit_edge450.loopexit.unr-lcssa:                ; preds = %.lr.ph449
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge450, label %.lr.ph449.epil.preheader

.lr.ph449.epil.preheader:                         ; preds = %._crit_edge450.loopexit.unr-lcssa, %.lr.ph449.preheader
  %.0326447.epil.init = phi float [ %i.et, %.lr.ph449.preheader ], [ %i.gv, %._crit_edge450.loopexit.unr-lcssa ]
  %lcmp.mod682 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod682)
  br label %.lr.ph449.epil

.lr.ph449.epil:                                   ; preds = %.lr.ph449.epil, %.lr.ph449.epil.preheader
  %.0326447.epil = phi float [ %i.ey, %.lr.ph449.epil ], [ %.0326447.epil.init, %.lr.ph449.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph449.epil ], [ 0, %.lr.ph449.epil.preheader ]
  %i.ey = fmul float %i.em, %.0326447.epil        ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge450, label %.lr.ph449.epil, !llvm.loop !326

._crit_edge450:                                   ; preds = %._crit_edge450.loopexit.unr-lcssa, %.lr.ph449.epil, %bb.l
  %.0326.lcssa = phi float [ %i.et, %bb.l ], [ %i.gv, %._crit_edge450.loopexit.unr-lcssa ], [ %i.ey, %.lr.ph449.epil ] ; 2 uses
  %i.ez = load ptr, ptr %i.cj, align 8, !tbaa !177
  %i.fa = sext i32 %i.cu to i64                   ; 2 uses
  %i.fb = getelementptr inbounds [20 x i8], ptr %i.ez, i64 %i.fa ; 5 uses
  %i.fc = fmul float %i.eh, 2.000000e+00          ; 2 uses
  %i.fd = fmul float %i.ei, %i.ei
  %i.fe = fmul float %i.ei, 2.000000e+00          ; 3 uses
  %i.ff = call float @llvm.fmuladd.f32(float %i.fc, float %i.eh, float %i.fd)
  %i.fg = call float @llvm.fmuladd.f32(float %i.fe, float %i.ei, float %i.ej)
  %i.fh = fsub float %i.ff, %i.el
  %i.fi = fmul float %i.fe, %i.ea
  %i.fj = fmul float %i.fe, %i.eh
  %i.fk = fsub float %i.fg, %i.el
  %i.fl = insertelement <4 x float> poison, float %i.fk, i64 0
  %i.fm = insertelement <4 x float> %i.fl, float %i.fj, i64 1
  %i.fn = insertelement <4 x float> %i.fm, float %i.fi, i64 2
  %i.fo = insertelement <4 x float> %i.fn, float %i.fh, i64 3
  %i.fp = insertelement <4 x float> poison, float %.0326.lcssa, i64 0
  %i.fq = shufflevector <4 x float> %i.fp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fr = fmul <4 x float> %i.fo, %i.fq           ; 2 uses
  store <4 x float> %i.fr, ptr %i.fb, align 4, !tbaa !125
  %i.fs = fmul float %i.fc, %i.ea
  %i.ft = fmul float %i.fs, %.0326.lcssa
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fb, i64 16 ; 2 uses
  store float %i.ft, ptr %i.fu, align 4, !tbaa !125
  br i1 %.not, label %.loopexit434, label %.preheader433

.preheader433:                                    ; preds = %._crit_edge450
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fb, i64 12
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fb, i64 4
  %i.fy = load ptr, ptr %i.ck, align 8, !tbaa !176
  %i.fz = getelementptr inbounds [20 x i8], ptr %i.fy, i64 %i.fa ; 5 uses
  %i.ga = extractelement <4 x float> %i.fr, i64 0
  %i.gb = fmul float %.0325, %i.ga
  store float %i.gb, ptr %i.fz, align 4, !tbaa !125
  %i.gc = load float, ptr %i.fx, align 4, !tbaa !125
  %i.gd = fmul float %.0325, %i.gc
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fz, i64 4
  store float %i.gd, ptr %i.ge, align 4, !tbaa !125
  %i.gf = load float, ptr %i.fw, align 4, !tbaa !125
  %i.gg = fmul float %.0325, %i.gf
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  store float %i.gg, ptr %i.gh, align 4, !tbaa !125
  %i.gi = load float, ptr %i.fv, align 4, !tbaa !125
  %i.gj = fmul float %.0325, %i.gi
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fz, i64 12
  store float %i.gj, ptr %i.gk, align 4, !tbaa !125
  %i.gl = load float, ptr %i.fu, align 4, !tbaa !125
  %i.gm = fmul float %.0325, %i.gl
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  store float %i.gm, ptr %i.gn, align 4, !tbaa !125
  br label %.loopexit434

.lr.ph449:                                        ; preds = %.lr.ph449, %.lr.ph449.preheader.new
end_hunk_0
