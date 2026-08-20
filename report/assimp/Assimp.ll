inline.NumInlined: 1626
inline.NumDeleted: 658
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 48
loop-unroll.NumUnrolled: 53
begin_hunk_0_@aiMatrix3FromRotationAroundAxis:bb.a
bb.a:
  %i.a = tail call noundef float @cosf(float noundef %2) #47 ; 3 uses
  %i.b = tail call noundef float @sinf(float noundef %2) #47 ; 2 uses
  %i.c = fsub float 1.000000e+00, %i.a            ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load <3 x float>, ptr %1, align 4        ; 5 uses
  %i.f = shufflevector <3 x float> %i.e, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.g = load float, ptr %i.d, align 4            ; 3 uses
  %i.h = extractelement <3 x float> %i.e, i64 2   ; 3 uses
  %i.i = fmul float %i.b, %i.h                    ; 2 uses
  %i.j = fneg float %i.i
  %i.k = insertelement <4 x float> poison, float %i.a, i64 0 ; 2 uses
  %i.l = insertelement <4 x float> %i.k, float %i.j, i64 1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = insertelement <2 x float> poison, float %i.b, i64 0
  %i.o = shufflevector <2 x float> %i.n, <2 x float> poison, <2 x i32> zeroinitializer
  %i.p = shufflevector <3 x float> %i.e, <3 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.q = insertelement <2 x float> %i.p, float %i.g, i64 1
  %i.r = fmul <2 x float> %i.o, %i.q              ; 2 uses
  %i.s = shufflevector <2 x float> %i.r, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.t = shufflevector <4 x float> %i.l, <4 x float> %i.s, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.u = insertelement <4 x float> %i.t, float %i.i, i64 3
  %i.v = fneg <2 x float> %i.r
  %i.w = insertelement <2 x float> poison, float %i.c, i64 0
  %i.x = shufflevector <2 x float> %i.w, <2 x float> poison, <2 x i32> zeroinitializer
  %i.y = shufflevector <3 x float> %i.e, <3 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.z = insertelement <2 x float> %i.y, float %i.g, i64 0
  %i.aa = fmul <2 x float> %i.x, %i.z             ; 2 uses
  %i.ab = shufflevector <2 x float> %i.aa, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.ac = shufflevector <2 x float> %i.aa, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ad = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ac, <4 x float> %i.f, <4 x float> %i.u)
  store <4 x float> %i.ad, ptr %0, align 4
  %i.ae = shufflevector <3 x float> %i.e, <3 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.af = insertelement <2 x float> %i.ae, float %i.g, i64 0
  %i.ag = shufflevector <2 x float> %i.af, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.ah = shufflevector <2 x float> %i.v, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ai = shufflevector <4 x float> %i.k, <4 x float> %i.ah, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.aj = shufflevector <4 x float> %i.ai, <4 x float> %i.s, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ak = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ab, <4 x float> %i.ag, <4 x float> %i.aj)
  store <4 x float> %i.ak, ptr %i.m, align 4
  %i.al = fmul float %i.c, %i.h
  %i.am = tail call float @llvm.fmuladd.f32(float %i.al, float %i.h, float %i.a)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.am, ptr %i.an, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @aiMatrix3Translation(ptr nofree noundef writeonly captures(none) initializes((0, 36)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #14 {
bb.a:
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %0, align 4
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %.sroa.7.0..sroa_idx.i, align 4
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float 1.000000e+00, ptr %.sroa.11.0..sroa_idx.i, align 4
  %i.a = load float, ptr %1, align 4
  store float %i.a, ptr %.sroa.5.0..sroa_idx.i, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load float, ptr %i.b, align 4
  store float %i.c, ptr %.sroa.8.0..sroa_idx.i, align 4
  ret void
}

; Function Attrs: mustprogress uwtable
define void @aiMatrix3FromTo(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef nonnull align 4 dereferenceable(36) ptr @_ZN12aiMatrix3x3tIfE12FromToMatrixERK10aiVector3tIfES4_RS0_(ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(36) %0) ; 0 uses
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(36) ptr @_ZN12aiMatrix3x3tIfE12FromToMatrixERK10aiVector3tIfES4_RS0_(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 4 dereferenceable(36) %2) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load <2 x float>, ptr %0, align 4        ; 4 uses
  %i.d = load <2 x float>, ptr %1, align 4        ; 5 uses
  %i.e = extractelement <2 x float> %i.d, i64 0
  %i.f = extractelement <2 x float> %i.c, i64 0   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load <2 x float>, ptr %i.a, align 4      ; 5 uses
  %i.j = load float, ptr %i.g, align 4            ; 5 uses
  %i.k = load <2 x float>, ptr %i.b, align 4      ; 6 uses
  %i.l = load float, ptr %i.h, align 4            ; 2 uses
  %i.m = extractelement <2 x float> %i.i, i64 0   ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.i, %i.k
  %i.n = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.o = tail call float @llvm.fmuladd.f32(float %i.f, float %i.e, float %i.n)
  %i.p = tail call noundef float @llvm.fmuladd.f32(float %i.j, float %i.l, float %i.o) ; 5 uses
  %i.q = tail call float @llvm.fabs.f32(float %i.p)
  %i.r = fcmp ogt float %i.q, f0x3F7FFF58
  br i1 %i.r, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.s = fcmp ogt float %i.f, 0.000000e+00
  %i.t = fneg float %i.f
  %i.u = select i1 %i.s, float %i.f, float %i.t   ; 2 uses
  %i.v = fcmp ogt float %i.m, 0.000000e+00
  %i.w = fneg float %i.m
  %i.x = select i1 %i.v, float %i.m, float %i.w   ; 2 uses
  %i.y = fcmp ogt float %i.j, 0.000000e+00
  %i.z = fneg float %i.j
  %i.aa = select i1 %i.y, float %i.j, float %i.z  ; 2 uses
  %i.ab = fcmp olt float %i.u, %i.x
  br i1 %i.ab, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.ac = fcmp olt float %i.u, %i.aa
  br i1 %i.ac, label %_ZN12aiMatrix3x3tIfEixEj.exit.2, label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  br label %_ZN12aiMatrix3x3tIfEixEj.exit.2

bb.e:                                             ; preds = %bb.b
  %i.ad = fcmp olt float %i.x, %i.aa
  br i1 %i.ad, label %_ZN12aiMatrix3x3tIfEixEj.exit.2, label %bb.d

_ZN12aiMatrix3x3tIfEixEj.exit.2:                  ; preds = %bb.d, %bb.c, %bb.e
  %i.ae = phi <4 x float> [ <float 1.000000e+00, float 0.000000e+00, float undef, float undef>, %bb.e ], [ <float 0.000000e+00, float 1.000000e+00, float undef, float undef>, %bb.d ], [ <float 0.000000e+00, float 0.000000e+00, float undef, float undef>, %bb.c ] ; 2 uses
  %i.af = phi <2 x float> [ <float 1.000000e+00, float 0.000000e+00>, %bb.e ], [ <float 0.000000e+00, float 1.000000e+00>, %bb.d ], [ zeroinitializer, %bb.c ] ; 2 uses
  %i.ag = phi <2 x float> [ zeroinitializer, %bb.e ], [ <float 1.000000e+00, float 0.000000e+00>, %bb.d ], [ <float 0.000000e+00, float 1.000000e+00>, %bb.c ] ; 2 uses
  %i.ah = shufflevector <2 x float> %i.k, <2 x float> %i.d, <2 x i32> <i32 1, i32 2>
  %i.ai = fsub <2 x float> %i.ag, %i.ah           ; 5 uses
  %i.aj = extractelement <2 x float> %i.ai, i64 1 ; 2 uses
  %i.ak = fneg float %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ao = shufflevector <2 x float> %i.af, <2 x float> %i.ag, <4 x i32> <i32 1, i32 3, i32 0, i32 poison>
  %i.ap = insertelement <4 x float> %i.ao, float 1.000000e+00, i64 3
  %i.aq = shufflevector <2 x float> %i.c, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.ar = insertelement <4 x float> %i.aq, float 0.000000e+00, i64 3
  %i.as = shufflevector <2 x float> %i.i, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.at = shufflevector <4 x float> %i.as, <4 x float> %i.ar, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.au = fsub <4 x float> %i.ap, %i.at           ; 13 uses
  %i.av = shufflevector <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x float> %i.ae, <4 x i32> <i32 poison, i32 poison, i32 5, i32 3>
  %i.aw = shufflevector <4 x float> %i.ae, <4 x float> %i.av, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ax = shufflevector <2 x float> %i.d, <2 x float> %i.k, <4 x i32> <i32 1, i32 3, i32 3, i32 poison> ; 2 uses
  %i.ay = insertelement <4 x float> %i.ax, float 0.000000e+00, i64 3
  %i.az = fsub <4 x float> %i.aw, %i.ay           ; 10 uses
  %i.ba = extractelement <4 x float> %i.au, i64 1 ; 2 uses
  %i.bb = extractelement <4 x float> %i.az, i64 1 ; 2 uses
  %i.bc = shufflevector <4 x float> %i.au, <4 x float> %i.az, <2 x i32> <i32 2, i32 4> ; 2 uses
  %i.bd = fmul <2 x float> %i.bc, %i.bc
  %i.be = shufflevector <2 x float> %i.ai, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 3 uses
  %i.bf = shufflevector <4 x float> %i.au, <4 x float> %i.be, <2 x i32> <i32 1, i32 5> ; 2 uses
  %i.bg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bf, <2 x float> %i.bf, <2 x float> %i.bd)
  %i.bh = shufflevector <4 x float> %i.au, <4 x float> %i.az, <2 x i32> <i32 0, i32 5> ; 2 uses
  %i.bi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bh, <2 x float> %i.bh, <2 x float> %i.bg)
  %i.bj = fdiv <2 x float> splat (float 2.000000e+00), %i.bi ; 4 uses
  %i.bk = extractelement <2 x float> %i.bj, i64 0 ; 2 uses
  %i.bl = fneg float %i.bk                        ; 4 uses
  %i.bm = insertelement <2 x float> %i.af, float %i.bl, i64 0
  %i.bn = shufflevector <2 x float> %i.bm, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.bo = shufflevector <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x float> %i.ax, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.bp = fsub <4 x float> %i.bn, %i.bo
  %i.bq = extractelement <2 x float> %i.bj, i64 1 ; 3 uses
  %i.br = fmul float %i.bk, %i.bq
  %shift = shufflevector <4 x float> %i.au, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop179 = fmul <4 x float> %shift, %i.az
  %i.bs = extractelement <4 x float> %foldExtExtBinop179, i64 0
  %i.bt = shufflevector <4 x float> %i.au, <4 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bu = insertelement <2 x float> %i.bt, float 0.000000e+00, i64 1
  %i.bv = shufflevector <2 x float> %i.ai, <2 x float> <float poison, float -0.000000e+00>, <2 x i32> <i32 1, i32 3>
  %i.bw = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.bs, i64 0
  %i.bx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bu, <2 x float> %i.bv, <2 x float> %i.bw)
  %i.by = shufflevector <4 x float> %i.au, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.bz = insertelement <2 x float> %i.by, float 0.000000e+00, i64 1
  %i.ca = shufflevector <4 x float> %i.az, <4 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.cb = insertelement <2 x float> %i.ca, float -0.000000e+00, i64 1
  %i.cc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bz, <2 x float> %i.cb, <2 x float> %i.bx)
  %i.cd = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.br, i64 0
  %i.ce = fmul <2 x float> %i.cc, %i.cd           ; 3 uses
  %i.cf = shufflevector <2 x float> %i.ce, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.cg = fmul float %i.bq, %i.aj
  %i.ch = fmul float %i.cg, %i.ak
  %i.ci = shufflevector <4 x float> %i.au, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 1, i32 2>
  %i.cj = insertelement <4 x float> poison, float %i.bl, i64 0
  %i.ck = shufflevector <4 x float> %i.cj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cl = fmul <4 x float> %i.ci, %i.ck
  %i.cm = shufflevector <2 x float> %i.bj, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.cn = shufflevector <4 x float> %i.be, <4 x float> %i.az, <4 x i32> <i32 1, i32 4, i32 1, i32 4> ; 2 uses
  %i.co = fmul <4 x float> %i.cm, %i.cn
  %i.cp = shufflevector <4 x float> %i.az, <4 x float> %i.be, <4 x i32> <i32 0, i32 5, i32 1, i32 0>
  %i.cq = fneg <4 x float> %i.cp
  %i.cr = fmul <4 x float> %i.co, %i.cq
  %i.cs = shufflevector <4 x float> %i.au, <4 x float> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 2> ; 2 uses
  %i.ct = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cl, <4 x float> %i.cs, <4 x float> %i.cr)
  %i.cu = shufflevector <2 x float> %i.ce, <2 x float> poison, <4 x i32> zeroinitializer
  %i.cv = fmul <4 x float> %i.cu, %i.cn
  %i.cw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cv, <4 x float> %i.cs, <4 x float> %i.ct)
  %i.cx = shufflevector <4 x float> %i.cw, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %i.cx, ptr %i.al, align 4
  %i.cy = load float, ptr %i.an, align 4
  %i.cz = fadd float %i.cy, 1.000000e+00
  store float %i.cz, ptr %i.an, align 4
  %i.da = fneg <2 x float> %i.ai
  %i.db = shufflevector <2 x float> %i.ce, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.dc = shufflevector <4 x float> %i.au, <4 x float> %i.db, <2 x i32> <i32 0, i32 4>
  %i.dd = insertelement <2 x float> %i.ai, float %i.bl, i64 0
  %i.de = fmul <2 x float> %i.dc, %i.dd
  %i.df = fmul float %i.bq, %i.bb
  %i.dg = fmul float %i.ba, %i.bl
  %3 = fneg float %i.bb
  %i.dh = fmul float %i.df, %3
  %i.di = tail call float @llvm.fmuladd.f32(float %i.dg, float %i.ba, float %i.ch)
  %i.dj = insertelement <2 x float> poison, float %i.dh, i64 0
  %i.dk = insertelement <2 x float> %i.dj, float %i.di, i64 1
  %i.dl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.de, <2 x float> %i.by, <2 x float> %i.dk) ; 2 uses
  %i.dm = extractelement <2 x float> %i.dl, i64 1
  %i.dn = fadd float %i.dm, 1.000000e+00
  store float %i.dn, ptr %2, align 4
  %i.do = shufflevector <2 x float> %i.bj, <2 x float> %i.dl, <4 x i32> <i32 1, i32 1, i32 1, i32 2>
  %i.dp = fmul <4 x float> %i.do, %i.az
  %i.dq = fneg <4 x float> %i.az
  %i.dr = shufflevector <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x float> %i.dq, <4 x i32> <i32 poison, i32 poison, i32 4, i32 3>
  %i.ds = shufflevector <2 x float> %i.da, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dt = shufflevector <4 x float> %i.ds, <4 x float> %i.dr, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.du = fmul <4 x float> %i.dp, %i.dt
  %i.dv = fmul <4 x float> %i.cf, %i.az
  %i.dw = shufflevector <4 x float> %i.au, <4 x float> %i.db, <4 x i32> <i32 2, i32 0, i32 0, i32 4>
  %i.dx = fmul <4 x float> %i.dw, %i.bp
  %i.dy = shufflevector <4 x float> %i.au, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.dz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dx, <4 x float> %i.dy, <4 x float> %i.du)
  %i.ea = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dv, <4 x float> %i.au, <4 x float> %i.dz)
  store <4 x float> %i.ea, ptr %i.am, align 4
  br label %.loopexit

bb.f:                                             ; preds = %bb.a
  %i.eb = extractelement <2 x float> %i.k, i64 0
  %i.ec = fneg float %i.eb
  %i.ed = fmul float %i.j, %i.ec
  %i.ee = tail call float @llvm.fmuladd.f32(float %i.m, float %i.l, float %i.ed) ; 4 uses
  %i.ef = fadd float %i.p, 1.000000e+00
  %i.eg = fdiv float 1.000000e+00, %i.ef          ; 3 uses
  %i.eh = fmul float %i.ee, %i.eg                 ; 2 uses
  %i.ei = tail call float @llvm.fmuladd.f32(float %i.eh, float %i.ee, float %i.p)
  store float %i.ei, ptr %2, align 4
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ek = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.el = shufflevector <2 x float> %i.k, <2 x float> %i.d, <2 x i32> <i32 1, i32 2>
  %i.em = fneg <2 x float> %i.el
  %i.en = shufflevector <2 x float> %i.c, <2 x float> %i.i, <2 x i32> <i32 0, i32 2>
  %i.eo = fmul <2 x float> %i.en, %i.em
  %i.ep = shufflevector <2 x float> %i.i, <2 x float> %i.k, <2 x i32> <i32 1, i32 2>
  %i.eq = shufflevector <2 x float> %i.d, <2 x float> %i.c, <2 x i32> <i32 0, i32 2>
  %i.er = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ep, <2 x float> %i.eq, <2 x float> %i.eo) ; 6 uses
  %i.es = extractelement <2 x float> %i.er, i64 1 ; 2 uses
  %i.et = fmul float %i.es, %i.eg                 ; 2 uses
  %i.eu = insertelement <2 x float> poison, float %i.eh, i64 0
  %i.ev = shufflevector <2 x float> %i.er, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ew = shufflevector <2 x float> %i.eu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ex = fmul <2 x float> %i.ev, %i.ew           ; 3 uses
  %i.ey = extractelement <2 x float> %i.er, i64 0 ; 3 uses
  %i.ez = fmul float %i.ey, %i.et                 ; 2 uses
  %foldExtExtBinop181 = fsub <2 x float> %i.ex, %i.er
  %i.fa = extractelement <2 x float> %foldExtExtBinop181, i64 1
  store float %i.fa, ptr %i.ej, align 4
  %i.fb = fadd <2 x float> %i.er, %i.ex
  store <2 x float> %i.fb, ptr %i.ek, align 4
  %i.fc = fmul float %i.ey, %i.eg
  %i.fd = tail call float @llvm.fmuladd.f32(float %i.fc, float %i.ey, float %i.p)
  %i.fe = getelementptr inbounds nuw i8, ptr %2, i64 16
  store float %i.fd, ptr %i.fe, align 4
  %i.ff = fsub float %i.ez, %i.ee
  %i.fg = getelementptr inbounds nuw i8, ptr %2, i64 20
  store float %i.ff, ptr %i.fg, align 4
  %foldExtExtBinop183 = fsub <2 x float> %i.ex, %i.er
  %i.fh = extractelement <2 x float> %foldExtExtBinop183, i64 0
  %i.fi = getelementptr inbounds nuw i8, ptr %2, i64 24
  store float %i.fh, ptr %i.fi, align 4
  %i.fj = fadd float %i.ee, %i.ez
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 28
  store float %i.fj, ptr %i.fk, align 4
  %i.fl = tail call float @llvm.fmuladd.f32(float %i.et, float %i.es, float %i.p)
  %i.fm = getelementptr inbounds nuw i8, ptr %2, i64 32
  store float %i.fl, ptr %i.fm, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN12aiMatrix3x3tIfEixEj.exit.2, %bb.f
  ret ptr %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @aiMatrix4FromMatrix3(ptr nofree noundef writeonly captures(none) initializes((0, 64)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load float, ptr %i.a, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.e = load float, ptr %i.d, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load float, ptr %i.g, align 4
  %i.i = load <2 x float>, ptr %1, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load <2 x float>, ptr %i.c, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load <2 x float>, ptr %i.f, align 4
  store <2 x float> %i.i, ptr %0, align 4
  store float %i.b, ptr %.sroa.5.0..sroa_idx, align 4
  store float 0.000000e+00, ptr %.sroa.6.0..sroa_idx, align 4
  store <2 x float> %i.j, ptr %.sroa.7.0..sroa_idx, align 4
  store float %i.e, ptr %.sroa.9.0..sroa_idx, align 4
  store float 0.000000e+00, ptr %.sroa.10.0..sroa_idx, align 4
  store <2 x float> %i.k, ptr %.sroa.11.0..sroa_idx, align 4
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float %i.h, ptr %.sroa.13.0..sroa_idx, align 4
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.14.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 60
  store float 1.000000e+00, ptr %.sroa.15.0..sroa_idx, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @aiMatrix4FromScalingQuaternionPosition(ptr nofree noundef writeonly captures(none) initializes((0, 64)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.d = load float, ptr %2, align 4, !noalias !19 ; 4 uses
  %i.e = fneg float %i.d                          ; 3 uses
  %i.f = load float, ptr %1, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.h = load float, ptr %i.g, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load float, ptr %i.j, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = load float, ptr %3, align 4
  %i.n = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.f, i64 0
  %i.o = shufflevector <4 x float> %i.n, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load float, ptr %i.i, align 4
  %i.q = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.h, i64 0
  %i.r = shufflevector <4 x float> %i.q, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load float, ptr %i.l, align 4
  %i.t = load <2 x float>, ptr %i.c, align 4, !noalias !19 ; 5 uses
  %i.u = extractelement <2 x float> %i.t, i64 0
  %i.v = fmul float %i.u, %i.e
  %i.w = load <2 x float>, ptr %i.a, align 4, !noalias !19 ; 9 uses
  %i.x = load float, ptr %i.b, align 4, !noalias !19 ; 3 uses
  %i.y = insertelement <2 x float> poison, float %i.x, i64 0
  %i.z = insertelement <2 x float> %i.y, float %i.d, i64 1
  %i.aa = shufflevector <2 x float> %i.w, <2 x float> poison, <2 x i32> <i32 poison, i32 0> ; 2 uses
  %i.ab = insertelement <2 x float> %i.aa, float %i.e, i64 0
  %i.ac = fmul <2 x float> %i.z, %i.ab
  %i.ad = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ae = insertelement <2 x float> %i.w, float %i.x, i64 1
  %i.af = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ad, <2 x float> %i.ae, <2 x float> %i.ac)
  %i.ag = shufflevector <2 x float> %i.af, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ah = insertelement <2 x float> %i.w, float -2.000000e+00, i64 0
  %i.ai = insertelement <2 x float> <float 1.000000e+00, float poison>, float %i.v, i64 1
  %i.aj = insertelement <2 x float> %i.w, float %i.d, i64 1
  %i.ak = insertelement <2 x float> %i.ad, float %i.e, i64 0
  %i.al = fmul <2 x float> %i.aj, %i.ak
  %i.am = insertelement <2 x float> %i.aa, float %i.x, i64 0 ; 2 uses
  %i.an = shufflevector <2 x float> %i.am, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ao = shufflevector <2 x float> %i.w, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ap = shufflevector <2 x float> %i.am, <2 x float> %i.w, <4 x i32> <i32 0, i32 0, i32 poison, i32 2>
  %i.aq = insertelement <4 x float> %i.ap, float %i.d, i64 2
  %i.ar = fmul <4 x float> %i.an, %i.aq
  %i.as = shufflevector <2 x float> %i.w, <2 x float> %i.t, <4 x i32> <i32 0, i32 2, i32 2, i32 2>
  %i.at = shufflevector <2 x float> %i.w, <2 x float> %i.t, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  %i.au = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.as, <4 x float> %i.at, <4 x float> %i.ar) ; 4 uses
  %i.av = extractelement <4 x float> %i.au, i64 0
  %i.aw = tail call float @llvm.fmuladd.f32(float %i.av, float -2.000000e+00, float 1.000000e+00)
  %i.ax = insertelement <4 x float> poison, float %i.aw, i64 0
  %i.ay = shufflevector <4 x float> %i.ax, <4 x float> %i.ag, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.az = insertelement <4 x float> %i.ay, float %i.m, i64 3
  %i.ba = fmul <4 x float> %i.az, <float 1.000000e+00, float 2.000000e+00, float 2.000000e+00, float 1.000000e+00>
  %i.bb = shufflevector <2 x float> %i.w, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>
  %i.bc = shufflevector <4 x float> %i.bb, <4 x float> %i.au, <2 x i32> <i32 5, i32 1>
  %i.bd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bc, <2 x float> %i.ah, <2 x float> %i.ai)
  %i.be = shufflevector <4 x float> %i.au, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.bf = shufflevector <2 x float> %i.bd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bg = shufflevector <4 x float> %i.be, <4 x float> %i.bf, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.bh = insertelement <4 x float> %i.bg, float %i.p, i64 3
  %i.bi = fmul <4 x float> %i.bh, <float 2.000000e+00, float 1.000000e+00, float 2.000000e+00, float 1.000000e+00>
  %i.bj = shufflevector <2 x float> %i.t, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bk = shufflevector <4 x float> %i.bj, <4 x float> <float poison, float poison, float -2.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bl = shufflevector <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x float> %i.ao, <4 x i32> <i32 5, i32 poison, i32 poison, i32 3>
  %i.bm = shufflevector <4 x float> %i.bl, <4 x float> %i.au, <4 x i32> <i32 0, i32 0, i32 7, i32 3>
  %i.bn = shufflevector <2 x float> %i.al, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bo = insertelement <4 x float> %i.bn, float 1.000000e+00, i64 2
  %i.bp = insertelement <4 x float> %i.bo, float %i.s, i64 3
  %i.bq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bk, <4 x float> %i.bm, <4 x float> %i.bp)
  %i.br = fmul <4 x float> %i.bq, <float 2.000000e+00, float 2.000000e+00, float 1.000000e+00, float 1.000000e+00>
  %i.bs = fmul <4 x float> %i.ba, %i.o
  %i.bt = fmul <4 x float> %i.r, %i.bi
  %i.bu = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.k, i64 0
  %i.bv = shufflevector <4 x float> %i.bu, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.bw = fmul <4 x float> %i.bv, %i.br
  store <4 x float> %i.bs, ptr %0, align 4
  store <4 x float> %i.bt, ptr %.sroa.7.0..sroa_idx, align 4
  store <4 x float> %i.bw, ptr %.sroa.11.0..sroa_idx, align 4
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.15.0..sroa_idx, align 4
end_hunk_0
