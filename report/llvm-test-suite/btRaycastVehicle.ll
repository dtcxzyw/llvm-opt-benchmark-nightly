Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/btRaycastVehicle?download=true
inline.NumInlined: 494
inline.NumDeleted: 147
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN16btRaycastVehicle23updateWheelTransformsWSER11btWheelInfob:bb.a
  %i.av = load float, ptr %i.au, align 8, !tbaa !49
  %i.aw = fadd float %i.av, %i.at
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.aw, i64 0
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 44
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %.sroa.44.0..sroa_idx, align 4, !tbaa !50
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 180
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.bb = load <2 x float>, ptr %i.q, align 4, !tbaa !49 ; 2 uses
  %i.bc = load <4 x float>, ptr %i.s, align 8
  %i.bd = shufflevector <4 x float> %i.bc, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.be = load <2 x float>, ptr %i.u, align 4, !tbaa !49 ; 2 uses
  %i.bf = load float, ptr %i.v, align 8, !tbaa !49
  %i.bg = shufflevector <2 x float> %i.bb, <2 x float> %i.be, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.bh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bg, <2 x float> %i.ak, <2 x float> %i.ai)
  %i.bi = fadd <2 x float> %i.bh, %i.al
  store <2 x float> %i.bi, ptr %i.ax, align 4
  %i.bj = load float, ptr %i.az, align 4, !tbaa !49 ; 2 uses
  %i.bk = load float, ptr %i.ay, align 8, !tbaa !49 ; 2 uses
  %i.bl = load float, ptr %i.ba, align 8, !tbaa !49 ; 2 uses
  %i.bm = shufflevector <2 x float> %i.bb, <2 x float> %i.be, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.bn = insertelement <2 x float> poison, float %i.bj, i64 0
  %i.bo = shufflevector <2 x float> %i.bn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bp = fmul <2 x float> %i.bm, %i.bo
  %i.bq = insertelement <2 x float> poison, float %i.bk, i64 0
  %i.br = shufflevector <2 x float> %i.bq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bs = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.af, <2 x float> %i.br, <2 x float> %i.bp)
  %i.bt = insertelement <2 x float> poison, float %i.bl, i64 0
  %i.bu = shufflevector <2 x float> %i.bt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bg, <2 x float> %i.bu, <2 x float> %i.bs)
  %i.bw = fmul float %i.ao, %i.bj
  %i.bx = call float @llvm.fmuladd.f32(float %i.am, float %i.bk, float %i.bw)
  %i.by = call noundef float @llvm.fmuladd.f32(float %i.as, float %i.bl, float %i.bx)
  %.sroa.3.12.vec.insert.i14 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.by, i64 0
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 52
  store <2 x float> %i.bv, ptr %i.bz, align 4
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 60
  store <2 x float> %.sroa.3.12.vec.insert.i14, ptr %.sroa.42.0..sroa_idx, align 4, !tbaa !50
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 196
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.cd = load float, ptr %i.cb, align 4, !tbaa !49 ; 2 uses
  %i.ce = load float, ptr %i.ca, align 8, !tbaa !49 ; 2 uses
  %i.cf = load float, ptr %i.cc, align 8, !tbaa !49 ; 2 uses
  %i.cg = insertelement <2 x float> poison, float %i.cd, i64 0
  %i.ch = shufflevector <2 x float> %i.cg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ci = fmul <2 x float> %i.bm, %i.ch
  %i.cj = insertelement <2 x float> poison, float %i.ce, i64 0
  %i.ck = shufflevector <2 x float> %i.cj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.af, <2 x float> %i.ck, <2 x float> %i.ci)
  %i.cm = insertelement <2 x float> %i.bd, float %i.bf, i64 1
  %i.cn = insertelement <2 x float> poison, float %i.cf, i64 0
  %i.co = shufflevector <2 x float> %i.cn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cm, <2 x float> %i.co, <2 x float> %i.cl)
  %i.cq = fmul float %i.ao, %i.cd
  %i.cr = call float @llvm.fmuladd.f32(float %i.am, float %i.ce, float %i.cq)
  %i.cs = call noundef float @llvm.fmuladd.f32(float %i.as, float %i.cf, float %i.cr)
  %.sroa.3.12.vec.insert.i19 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cs, i64 0
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 68
  store <2 x float> %i.cp, ptr %i.ct, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 76
  store <2 x float> %.sroa.3.12.vec.insert.i19, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN16btRaycastVehicle20updateWheelTransformEib(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(224) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [288 x i8], ptr %i.b, i64 %i.c ; 23 uses
  tail call void @_ZN16btRaycastVehicle23updateWheelTransformsWSER11btWheelInfob(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(288) %i.d, i1 noundef zeroext %2)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 52
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 68
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 76
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 236
  %i.l = load float, ptr %i.k, align 4, !tbaa !64
  %i.m = fmul float %i.l, 5.000000e-01            ; 2 uses
  %i.n = tail call noundef float @sinf(float noundef %i.m) #20, !tbaa !7
  %i.o = tail call noundef float @cosf(float noundef %i.m) #20, !tbaa !7 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 240
  %i.q = load float, ptr %i.p, align 8, !tbaa !65
  %i.r = fmul float %i.q, -5.000000e-01           ; 2 uses
  %i.s = tail call noundef float @sinf(float noundef %i.r) #20, !tbaa !7
  %i.t = tail call noundef float @cosf(float noundef %i.r) #20, !tbaa !7 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 100
  %.sroa.639.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 108
  store float 0.000000e+00, ptr %.sroa.639.0..sroa_idx, align 4, !tbaa !50
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %.sroa.10.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %.sroa.1141.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 124
  store float 0.000000e+00, ptr %.sroa.1141.16..sroa_idx, align 4, !tbaa !50
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.x = load float, ptr %i.i, align 4, !tbaa !49 ; 5 uses
  %i.y = load float, ptr %i.j, align 8, !tbaa !49 ; 6 uses
  %i.z = load float, ptr %i.h, align 4, !tbaa !49 ; 5 uses
  %i.aa = insertelement <2 x float> poison, float %i.n, i64 0
  %i.ab = insertelement <2 x float> %i.aa, float %i.s, i64 1
  %i.ac = insertelement <2 x float> poison, float %i.o, i64 0
  %i.ad = insertelement <2 x float> %i.ac, float %i.t, i64 1 ; 3 uses
  %i.ae = insertelement <2 x float> poison, float %i.z, i64 0
  %i.af = insertelement <2 x float> poison, float %i.x, i64 0
  %i.ag = load float, ptr %i.f, align 8, !tbaa !49 ; 4 uses
  %i.ah = load float, ptr %i.e, align 4, !tbaa !49 ; 3 uses
  %i.ai = load float, ptr %i.g, align 4, !tbaa !49 ; 4 uses
  %i.aj = fneg float %i.ag                        ; 4 uses
  %i.ak = fneg float %i.ah                        ; 4 uses
  %i.al = fneg float %i.ai                        ; 4 uses
  %i.am = fmul float %i.ai, %i.y
  %i.an = tail call float @llvm.fmuladd.f32(float %i.aj, float %i.x, float %i.am) ; 3 uses
  %i.ao = fmul float %i.ah, %i.x
  %i.ap = tail call float @llvm.fmuladd.f32(float %i.al, float %i.z, float %i.ao) ; 3 uses
  %i.aq = fmul float %i.ag, %i.z
  %i.ar = tail call float @llvm.fmuladd.f32(float %i.ak, float %i.y, float %i.aq) ; 3 uses
  %i.as = fmul float %i.ap, %i.ap
  %i.at = tail call float @llvm.fmuladd.f32(float %i.an, float %i.an, float %i.as)
  %i.au = tail call noundef float @llvm.fmuladd.f32(float %i.ar, float %i.ar, float %i.at)
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.au)
  %i.av = fdiv float 1.000000e+00, %sqrt.i.i      ; 3 uses
  %i.aw = fmul float %i.an, %i.av                 ; 2 uses
  %i.ax = fmul float %i.ap, %i.av                 ; 3 uses
  %i.ay = fmul float %i.ar, %i.av                 ; 2 uses
  %i.az = insertelement <2 x float> poison, float %i.ax, i64 0
  %i.ba = insertelement <2 x float> %i.az, float %i.aj, i64 1
  %i.bb = insertelement <2 x float> poison, float %i.aw, i64 0
  %i.bc = insertelement <2 x float> %i.bb, float %i.ak, i64 1
  %i.bd = insertelement <2 x float> poison, float %i.ay, i64 0
  %i.be = insertelement <2 x float> %i.bd, float %i.al, i64 1
  %i.bf = insertelement <2 x float> poison, float %i.ag, i64 0
  %i.bg = insertelement <2 x float> %i.bf, float %i.y, i64 1 ; 3 uses
  %i.bh = fmul <2 x float> %i.bg, %i.bg
  %i.bi = insertelement <2 x float> poison, float %i.ah, i64 0 ; 2 uses
  %i.bj = insertelement <2 x float> %i.bi, float %i.z, i64 1 ; 3 uses
  %i.bk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bj, <2 x float> %i.bj, <2 x float> %i.bh)
  %i.bl = insertelement <2 x float> poison, float %i.ai, i64 0
  %i.bm = insertelement <2 x float> %i.bl, float %i.x, i64 1 ; 3 uses
  %i.bn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bm, <2 x float> %i.bm, <2 x float> %i.bk)
  %i.bo = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.bn)
  %i.bp = fdiv <2 x float> %i.ab, %i.bo           ; 3 uses
  %i.bq = insertelement <2 x float> %i.bm, float %i.al, i64 0
  %i.br = fmul <2 x float> %i.bp, %i.bq           ; 4 uses
  %i.bs = insertelement <2 x float> %i.bg, float %i.aj, i64 0
  %i.bt = fmul <2 x float> %i.bp, %i.bs           ; 7 uses
  %i.bu = insertelement <2 x float> %i.bj, float %i.ak, i64 0
  %i.bv = fmul <2 x float> %i.bp, %i.bu           ; 7 uses
  %i.bw = fmul <2 x float> %i.bt, %i.bt
  %i.bx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bv, <2 x float> %i.bv, <2 x float> %i.bw)
  %i.by = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.br, <2 x float> %i.br, <2 x float> %i.bx)
  %i.bz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ad, <2 x float> %i.ad, <2 x float> %i.by)
  %i.ca = fdiv <2 x float> splat (float 2.000000e+00), %i.bz ; 4 uses
  %i.cb = fmul <2 x float> %i.br, %i.ca           ; 5 uses
  %foldExtExtBinop = fmul <2 x float> %i.bt, %i.ca ; 3 uses
  %i.cc = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.cd = extractelement <2 x float> %i.cb, i64 0
  %i.ce = fmul float %i.o, %i.cc                  ; 2 uses
  %i.cf = fmul float %i.o, %i.cd                  ; 2 uses
  %foldExtExtBinop115 = fmul <2 x float> %i.bv, %i.cb
  %i.cg = extractelement <2 x float> %foldExtExtBinop115, i64 0 ; 2 uses
  %foldExtExtBinop117 = fmul <2 x float> %i.bv, %foldExtExtBinop
  %i.ch = extractelement <2 x float> %foldExtExtBinop117, i64 0 ; 2 uses
  %i.ci = fsub float %i.ch, %i.cf                 ; 3 uses
  %i.cj = extractelement <2 x float> %i.cb, i64 1 ; 2 uses
  %foldExtExtBinop119 = fmul <2 x float> %i.bt, %i.ca ; 2 uses
  %i.ck = extractelement <2 x float> %foldExtExtBinop119, i64 1 ; 2 uses
  %i.cl = fmul <2 x float> %i.bv, %i.ca           ; 2 uses
  %i.cm = extractelement <2 x float> %i.bv, i64 1 ; 2 uses
  %foldExtExtBinop121 = fmul <2 x float> %i.bt, %foldExtExtBinop ; 2 uses
  %foldExtExtBinop123 = fmul <2 x float> %i.bt, %foldExtExtBinop119 ; 2 uses
  %i.cn = fmul <2 x float> %i.bt, %i.cb           ; 4 uses
  %i.co = fmul float %i.cm, %i.cj                 ; 2 uses
  %i.cp = fmul float %i.cm, %i.ck                 ; 2 uses
  %i.cq = fmul <2 x float> %i.ad, %i.cl           ; 4 uses
  %i.cr = fsub float %i.cg, %i.ce
  %i.cs = fadd float %i.ch, %i.cf
  %i.ct = fmul <2 x float> %i.bv, %i.cl           ; 3 uses
  %i.cu = fmul <2 x float> %i.br, %i.cb           ; 3 uses
  %i.cv = fmul float %i.t, %i.cj                  ; 2 uses
  %foldExtExtBinop125 = fadd <2 x float> %foldExtExtBinop123, %i.cu
  %i.cw = extractelement <2 x float> %foldExtExtBinop125, i64 1
  %i.cx = fmul float %i.t, %i.ck                  ; 2 uses
  %foldExtExtBinop127 = fadd <2 x float> %i.ct, %foldExtExtBinop123
  %i.cy = extractelement <2 x float> %foldExtExtBinop127, i64 1
  %foldExtExtBinop129 = fadd <2 x float> %foldExtExtBinop121, %i.cu
  %i.cz = extractelement <2 x float> %foldExtExtBinop129, i64 0
  %foldExtExtBinop131 = fadd <2 x float> %i.ct, %foldExtExtBinop121
  %i.da = extractelement <2 x float> %foldExtExtBinop131, i64 0
  %i.db = fadd <2 x float> %i.ct, %i.cu
  %i.dc = fsub float 1.000000e+00, %i.cz          ; 3 uses
  %i.dd = fsub <2 x float> splat (float 1.000000e+00), %i.db ; 4 uses
  %i.de = fadd <2 x float> %i.cn, %i.cq           ; 2 uses
  %i.df = fsub <2 x float> %i.cn, %i.cq           ; 3 uses
  %i.dg = shufflevector <2 x float> %i.de, <2 x float> %i.df, <2 x i32> <i32 0, i32 3>
  %i.dh = fadd float %i.cg, %i.ce                 ; 3 uses
  %foldExtExtBinop133 = fadd <2 x float> %i.cn, %i.cq ; 2 uses
  %3 = extractelement <2 x float> %foldExtExtBinop133, i64 1
  %4 = fadd float %i.cp, %i.cv                    ; 2 uses
  %5 = fadd float %i.co, %i.cx                    ; 2 uses
  %i.di = fsub float 1.000000e+00, %i.da
  %foldExtExtBinop133.a = fsub <2 x float> %i.cn, %i.cq
  %i.dj = fsub float %i.cp, %i.cv                 ; 2 uses
  %i.dk = fsub float 1.000000e+00, %i.cw          ; 2 uses
  %i.dl = fsub float %i.co, %i.cx                 ; 2 uses
  %i.dm = fsub float 1.000000e+00, %i.cy          ; 2 uses
  %i.dn = extractelement <2 x float> %i.dd, i64 1
  %i.do = fmul float %i.ci, %i.dn
  %i.dp = fmul float %i.ci, %4
  %i.dq = extractelement <2 x float> %i.df, i64 1
  %i.dr = fmul float %i.ci, %i.dq
  %i.ds = tail call float @llvm.fmuladd.f32(float %i.dj, float %i.dc, float %i.do)
  %i.dt = tail call float @llvm.fmuladd.f32(float %i.dk, float %i.dc, float %i.dp)
  %i.du = tail call float @llvm.fmuladd.f32(float %5, float %i.dc, float %i.dr)
  %i.dv = tail call noundef float @llvm.fmuladd.f32(float %3, float %i.dh, float %i.ds) ; 2 uses
  %i.dw = tail call noundef float @llvm.fmuladd.f32(float %i.dl, float %i.dh, float %i.dt) ; 2 uses
  %i.dx = tail call noundef float @llvm.fmuladd.f32(float %i.dm, float %i.dh, float %i.du) ; 2 uses
  %i.dy = shufflevector <2 x float> %i.de, <2 x float> %i.dd, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.dz = shufflevector <2 x float> %i.dd, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ea = fmul <2 x float> %i.dy, %i.dz
  %6 = insertelement <2 x float> poison, float %4, i64 0
  %7 = shufflevector <2 x float> %6, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eb = fmul <2 x float> %i.dy, %7
  %i.ec = shufflevector <2 x float> %i.df, <2 x float> %i.dd, <2 x i32> <i32 1, i32 2>
  %i.ed = fmul <2 x float> %i.dg, %i.ec
  %i.ee = insertelement <2 x float> poison, float %i.dj, i64 0
  %i.ef = shufflevector <2 x float> %i.ee, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eg = insertelement <2 x float> poison, float %i.cr, i64 0
  %i.eh = insertelement <2 x float> %i.eg, float %i.cs, i64 1 ; 3 uses
  %i.ei = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ef, <2 x float> %i.eh, <2 x float> %i.ea)
  %i.ej = insertelement <2 x float> poison, float %i.dk, i64 0
  %i.ek = shufflevector <2 x float> %i.ej, <2 x float> poison, <2 x i32> zeroinitializer
  %i.el = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ek, <2 x float> %i.eh, <2 x float> %i.eb)
  %8 = insertelement <2 x float> poison, float %5, i64 0
  %i.em = shufflevector <2 x float> %8, <2 x float> poison, <2 x i32> zeroinitializer
  %i.en = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.em, <2 x float> %i.eh, <2 x float> %i.ed)
  %9 = shufflevector <2 x float> %foldExtExtBinop133, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.eo = insertelement <2 x float> poison, float %i.di, i64 0
  %i.ep = shufflevector <2 x float> %i.eo, <2 x float> %foldExtExtBinop133.a, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.eq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %9, <2 x float> %i.ep, <2 x float> %i.ei) ; 3 uses
  %i.er = insertelement <2 x float> poison, float %i.dl, i64 0
  %i.es = shufflevector <2 x float> %i.er, <2 x float> poison, <2 x i32> zeroinitializer
  %i.et = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.es, <2 x float> %i.ep, <2 x float> %i.el) ; 3 uses
  %i.eu = insertelement <2 x float> poison, float %i.dm, i64 0
  %i.ev = shufflevector <2 x float> %i.eu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ew = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ev, <2 x float> %i.ep, <2 x float> %i.en) ; 3 uses
  %i.ex = fmul float %i.y, %i.dv
  %i.ey = tail call float @llvm.fmuladd.f32(float %i.z, float %i.dw, float %i.ex)
  %i.ez = tail call noundef float @llvm.fmuladd.f32(float %i.x, float %i.dx, float %i.ey)
  %i.fa = insertelement <2 x float> poison, float %i.dv, i64 0
  %i.fb = shufflevector <2 x float> %i.fa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fc = fmul <2 x float> %i.ba, %i.fb
  %i.fd = insertelement <2 x float> poison, float %i.dw, i64 0
  %i.fe = shufflevector <2 x float> %i.fd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ff = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bc, <2 x float> %i.fe, <2 x float> %i.fc)
  %i.fg = insertelement <2 x float> poison, float %i.dx, i64 0
  %i.fh = shufflevector <2 x float> %i.fg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.be, <2 x float> %i.fh, <2 x float> %i.ff)
  %i.fj = extractelement <2 x float> %i.eq, i64 1 ; 2 uses
  %i.fk = fmul float %i.ax, %i.fj
  %i.fl = fmul float %i.y, %i.fj
  %i.fm = insertelement <2 x float> %i.ae, float %i.aw, i64 1 ; 2 uses
  %i.fn = shufflevector <2 x float> %i.et, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fo = insertelement <2 x float> poison, float %i.fl, i64 0
  %i.fp = insertelement <2 x float> %i.fo, float %i.fk, i64 1
  %i.fq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fm, <2 x float> %i.fn, <2 x float> %i.fp)
  %i.fr = insertelement <2 x float> %i.af, float %i.ay, i64 1 ; 2 uses
  %i.fs = shufflevector <2 x float> %i.ew, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ft = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fr, <2 x float> %i.fs, <2 x float> %i.fq)
  %i.fu = extractelement <2 x float> %i.eq, i64 0 ; 2 uses
  %i.fv = fmul float %i.ax, %i.fu
  %i.fw = fmul float %i.y, %i.fu
  %i.fx = shufflevector <2 x float> %i.et, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fy = insertelement <2 x float> poison, float %i.fw, i64 0
  %i.fz = insertelement <2 x float> %i.fy, float %i.fv, i64 1
  %i.ga = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fm, <2 x float> %i.fx, <2 x float> %i.fz)
  %i.gb = shufflevector <2 x float> %i.ew, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fr, <2 x float> %i.gb, <2 x float> %i.ga)
  %i.gd = insertelement <2 x float> poison, float %i.aj, i64 0
  %i.ge = shufflevector <2 x float> %i.gd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gf = fmul <2 x float> %i.eq, %i.ge
  %i.gg = insertelement <2 x float> poison, float %i.ak, i64 0
  %i.gh = shufflevector <2 x float> %i.gg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gh, <2 x float> %i.et, <2 x float> %i.gf)
  %i.gj = insertelement <2 x float> poison, float %i.al, i64 0
  %i.gk = shufflevector <2 x float> %i.gj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gk, <2 x float> %i.ew, <2 x float> %i.gi) ; 2 uses
  store float %i.ez, ptr %i.u, align 8
  store <2 x float> %i.fi, ptr %.sroa.437.0..sroa_idx, align 4
  store <2 x float> %i.ft, ptr %i.v, align 8
  %i.gm = extractelement <2 x float> %i.gl, i64 1
  store float %i.gm, ptr %.sroa.10.16..sroa_idx, align 8
  store <2 x float> %i.gc, ptr %i.w, align 8
  %.sroa.1542.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  %i.gn = extractelement <2 x float> %i.gl, i64 0
  store float %i.gn, ptr %.sroa.1542.32..sroa_idx, align 8
  %.sroa.1643.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 140
  store float 0.000000e+00, ptr %.sroa.1643.32..sroa_idx, align 4, !tbaa !50
  %i.go = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  %i.gp = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.gq = load float, ptr %i.gp, align 8, !tbaa !49 ; 2 uses
  %i.gr = fmul float %i.ai, %i.gq
  %i.gs = insertelement <2 x float> %i.bi, float %i.ag, i64 1
  %i.gt = insertelement <2 x float> poison, float %i.gq, i64 0
  %i.gu = shufflevector <2 x float> %i.gt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gv = fmul <2 x float> %i.gs, %i.gu
  %i.gw = load <2 x float>, ptr %i.go, align 4, !tbaa !49
  %i.gx = fadd <2 x float> %i.gw, %i.gv
  %i.gy = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  %i.gz = load float, ptr %i.gy, align 4, !tbaa !49
  %i.ha = fadd float %i.gr, %i.gz
  %.sroa.3.12.vec.insert.i30 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ha, i64 0
  %i.hb = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  store <2 x float> %i.gx, ptr %i.hb, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  store <2 x float> %.sroa.3.12.vec.insert.i30, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !50
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef nonnull align 4 dereferenceable(64) ptr @_ZNK16btRaycastVehicle19getWheelTransformWSEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(224) %0, i32 noundef %1) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [288 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  ret ptr %i.e
}

; Function Attrs: uwtable
define dso_local void @_ZN16btRaycastVehicle15resetSuspensionEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(224) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 196 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !42
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 208
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !41
  %i.f = getelementptr inbounds nuw [288 x i8], ptr %i.e, i64 %indvars.iv ; 7 uses
  %i.g = tail call noundef float @_ZNK11btWheelInfo23getSuspensionRestLengthEv(ptr noundef nonnull align 8 dereferenceable(288) %i.f)
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store float %i.g, ptr %i.h, align 8, !tbaa !66
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 52
  %i.j = load <2 x float>, ptr %i.i, align 4, !tbaa !49
  %i.k = fneg <2 x float> %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 60
  %i.m = load float, ptr %i.l, align 4, !tbaa !49
  %i.n = fneg float %i.m
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.n, i64 0
  store <2 x float> %i.k, ptr %i.f, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !50
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 272
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.o, align 8, !tbaa !49
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.p = load i32, ptr %i.a, align 4, !tbaa !42
  %i.q = sext i32 %i.p to i64
  %i.r = icmp slt i64 %indvars.iv.next, %i.q
  br i1 %i.r, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

declare noundef float @_ZNK11btWheelInfo23getSuspensionRestLengthEv(ptr noundef nonnull align 8 dereferenceable(288)) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef nonnull align 4 dereferenceable(64) ptr @_ZNK16btRaycastVehicle24getChassisWorldTransformEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(224) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  ret ptr %i.c
}

; Function Attrs: uwtable
define dso_local noundef float @_ZN16btRaycastVehicle7rayCastER11btWheelInfo(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(288) initializes((36, 85)) %1) local_unnamed_addr #8 align 2 {
bb.a:
  %2 = alloca %"struct.btVehicleRaycaster::btVehicleRaycasterResult", align 4 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 84 ; 2 uses
  store i8 0, ptr %i.a, align 4, !tbaa !58
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !44   ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.4.0..sroa_idx82 = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %.sroa.583.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.8.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %.sroa.9.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.1085.32.copyload = load float, ptr %i.f, align 4 ; 3 uses
  %.sroa.12.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %.sroa.12.32.copyload = load float, ptr %.sroa.12.32..sroa_idx, align 4 ; 3 uses
  %.sroa.13.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.13.32.copyload = load float, ptr %.sroa.13.32..sroa_idx, align 4 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %.sroa.17.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %.sroa.17.48.copyload = load float, ptr %.sroa.17.48..sroa_idx, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 164
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.k = load <2 x float>, ptr %i.d, align 4      ; 2 uses
  %i.l = load <2 x float>, ptr %i.e, align 4      ; 2 uses
  %i.m = load <2 x float>, ptr %i.g, align 4
  %i.n = load float, ptr %i.i, align 4, !tbaa !49 ; 2 uses
  %i.o = load float, ptr %i.h, align 8, !tbaa !49 ; 2 uses
  %i.p = load float, ptr %i.j, align 8, !tbaa !49 ; 2 uses
  %i.q = shufflevector <2 x float> %i.k, <2 x float> %i.l, <2 x i32> <i32 1, i32 3>
  %i.r = insertelement <2 x float> poison, float %i.n, i64 0
  %i.s = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> zeroinitializer
  %i.t = fmul <2 x float> %i.q, %i.s
  %i.u = shufflevector <2 x float> %i.k, <2 x float> %i.l, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.v = insertelement <2 x float> poison, float %i.o, i64 0
  %i.w = shufflevector <2 x float> %i.v, <2 x float> poison, <2 x i32> zeroinitializer
  %i.x = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.u, <2 x float> %i.w, <2 x float> %i.t)
  %i.y = insertelement <2 x float> poison, float %i.p, i64 0
  %i.z = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aa = fmul float %.sroa.12.32.copyload, %i.n
  %i.ab = tail call float @llvm.fmuladd.f32(float %.sroa.1085.32.copyload, float %i.o, float %i.aa)
  %i.ac = tail call noundef float @llvm.fmuladd.f32(float %.sroa.13.32.copyload, float %i.p, float %i.ab)
  %i.ad = fadd float %.sroa.17.48.copyload, %i.ac
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ad, i64 0
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 3 uses
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 180
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.ai = load <2 x float>, ptr %.sroa.4.0..sroa_idx82, align 4 ; 2 uses
  %.sroa.583.0.copyload = load float, ptr %.sroa.583.0..sroa_idx, align 4
  %i.aj = load <2 x float>, ptr %.sroa.8.16..sroa_idx, align 4 ; 2 uses
  %.sroa.9.16.copyload = load float, ptr %.sroa.9.16..sroa_idx, align 4
  %i.ak = shufflevector <2 x float> %i.ai, <2 x float> %i.aj, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.al = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ak, <2 x float> %i.z, <2 x float> %i.x)
end_hunk_0
