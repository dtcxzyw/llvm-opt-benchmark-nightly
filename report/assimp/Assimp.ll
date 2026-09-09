Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/Assimp?download=true
inline.NumInlined: 1626
inline.NumDeleted: 658
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 48
loop-unroll.NumUnrolled: 53
begin_hunk_0_@_ZNK12aiMatrix4x4tIfE9DecomposeER10aiVector3tIfER13aiQuaterniontIfES3_:bb.a
bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.ed = phi float [ %sqrt.i31, %._crit_edge ], [ %i.ea, %bb.b ] ; 2 uses
  %i.ee = phi <2 x float> [ %i.dy, %._crit_edge ], [ %i.dz, %bb.b ] ; 2 uses
  %i.ef = fcmp une <2 x float> %i.ee, zeroinitializer ; 3 uses
  %i.eg = fdiv <2 x float> splat (float 1.000000e+00), %i.ee ; 3 uses
  %i.eh = extractelement <2 x float> %i.eg, i64 1 ; 2 uses
  %i.ei = fmul float %i.w, %i.eh
  %i.ej = extractelement <2 x i1> %i.ef, i64 1    ; 2 uses
  %.sroa.055.0 = select i1 %i.ej, float %i.ei, float %i.w ; 6 uses
  %i.ek = fcmp une float %i.ed, 0.000000e+00      ; 3 uses
  %i.el = fdiv float 1.000000e+00, %i.ed          ; 3 uses
  %i.em = fmul float %i.x, %i.el
  %i.en = fmul float %i.z, %i.el
  %.sroa.27.0 = select i1 %i.ek, float %i.en, float %i.z ; 4 uses
  %.sroa.22.0 = select i1 %i.ek, float %i.em, float %i.x ; 6 uses
  %i.eo = fmul float %i.aa, %i.eh
  %i.ep = fmul float %i.v, %i.el
  %.sroa.1260.0 = select i1 %i.ej, float %i.eo, float %i.aa ; 4 uses
  %i.eq = insertelement <2 x float> %i.p, float %i.y, i64 1 ; 2 uses
  %i.er = fmul <2 x float> %i.eq, %i.eg
  %.sroa.17.0 = select i1 %i.ek, float %i.ep, float %i.v ; 4 uses
  %i.es = extractelement <2 x float> %i.eg, i64 0 ; 2 uses
  %i.et = fmul float %i.r, %i.es
  %i.eu = fmul float %i.t, %i.es
  %i.ev = extractelement <2 x i1> %i.ef, i64 0    ; 2 uses
  %.sroa.42.0 = select i1 %i.ev, float %i.eu, float %i.t ; 6 uses
  %.sroa.37.0 = select i1 %i.ev, float %i.et, float %i.r ; 4 uses
  %i.ew = select <2 x i1> %i.ef, <2 x float> %i.er, <2 x float> %i.eq ; 6 uses
  %i.ex = fadd float %.sroa.055.0, %.sroa.22.0
  %i.ey = fadd float %i.ex, %.sroa.42.0           ; 2 uses
  %i.ez = fcmp ogt float %i.ey, 0.000000e+00
  br i1 %i.ez, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.fa = fadd float %i.ey, 1.000000e+00
  %i.fb = tail call noundef float @sqrtf(float noundef %i.fa) #47
  %i.fc = insertelement <2 x float> poison, float %.sroa.1260.0, i64 0
  %i.fd = insertelement <2 x float> %i.fc, float %.sroa.17.0, i64 1
  %i.fe = fsub <2 x float> %i.ew, %i.fd
  %i.ff = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, float %i.fb, i64 1
  %i.fg = fmul <4 x float> %i.ff, <float 2.500000e-01, float 2.000000e+00, float poison, float poison> ; 2 uses
  %i.fh = shufflevector <4 x float> %i.fg, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1> ; 2 uses
  %i.fi = fsub float %.sroa.27.0, %.sroa.37.0
  %i.fj = shufflevector <4 x float> %i.fg, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.fk = insertelement <4 x float> %i.fj, float %i.fi, i64 1
  %i.fl = shufflevector <2 x float> %i.fe, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fm = shufflevector <4 x float> %i.fk, <4 x float> %i.fl, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.fn = fmul <4 x float> %i.fm, %i.fh
  %i.fo = fdiv <4 x float> %i.fm, %i.fh
  %i.fp = shufflevector <4 x float> %i.fn, <4 x float> %i.fo, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit

bb.e:                                             ; preds = %bb.c
  %i.fq = fcmp ogt float %.sroa.055.0, %.sroa.22.0
  %i.fr = fcmp ogt float %.sroa.055.0, %.sroa.42.0
  %or.cond.i = and i1 %i.fq, %i.fr
  br i1 %or.cond.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.fs = fadd float %.sroa.055.0, 1.000000e+00
  %i.ft = fsub float %i.fs, %.sroa.22.0
  %i.fu = fsub float %i.ft, %.sroa.42.0
  %i.fv = tail call noundef float @sqrtf(float noundef %i.fu) #47
  %i.fw = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.fv, i64 0
  %i.fx = fmul <4 x float> %i.fw, <float 2.000000e+00, float 2.500000e-01, float poison, float poison> ; 2 uses
  %i.fy = shufflevector <4 x float> %i.fx, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0> ; 2 uses
  %i.fz = insertelement <2 x float> poison, float %.sroa.1260.0, i64 0
  %i.ga = insertelement <2 x float> %i.fz, float %.sroa.17.0, i64 1
  %i.gb = fadd <2 x float> %i.ew, %i.ga
  %i.gc = fsub float %.sroa.27.0, %.sroa.37.0
  %i.gd = insertelement <4 x float> poison, float %i.gc, i64 0
  %i.ge = shufflevector <4 x float> %i.gd, <4 x float> %i.fx, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.gf = shufflevector <2 x float> %i.gb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.gg = shufflevector <4 x float> %i.ge, <4 x float> %i.gf, <4 x i32> <i32 0, i32 1, i32 5, i32 4> ; 2 uses
  %i.gh = fdiv <4 x float> %i.gg, %i.fy
  %i.gi = fmul <4 x float> %i.gg, %i.fy
  %i.gj = shufflevector <4 x float> %i.gh, <4 x float> %i.gi, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit

bb.g:                                             ; preds = %bb.e
  %i.gk = fcmp ogt float %.sroa.22.0, %.sroa.42.0
  br i1 %i.gk, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.gl = fadd float %.sroa.22.0, 1.000000e+00
  %i.gm = fsub float %i.gl, %.sroa.055.0
  %i.gn = fsub float %i.gm, %.sroa.42.0
  %i.go = tail call noundef float @sqrtf(float noundef %i.gn) #47
  %i.gp = fmul float %i.go, 2.000000e+00
  %i.gq = extractelement <2 x float> %i.ew, i64 1
  %i.gr = fadd float %i.gq, %.sroa.17.0
  %i.gs = fadd float %.sroa.27.0, %.sroa.37.0
  %i.gt = extractelement <2 x float> %i.ew, i64 0
  %i.gu = fsub float %i.gt, %.sroa.1260.0
  %i.gv = insertelement <4 x float> <float poison, float poison, float 2.500000e-01, float poison>, float %i.gu, i64 0
  %i.gw = insertelement <4 x float> %i.gv, float %i.gr, i64 1
  %i.gx = insertelement <4 x float> %i.gw, float %i.gs, i64 3 ; 2 uses
  %i.gy = insertelement <4 x float> poison, float %i.gp, i64 0
  %i.gz = shufflevector <4 x float> %i.gy, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ha = fdiv <4 x float> %i.gx, %i.gz
  %i.hb = fmul <4 x float> %i.gx, %i.gz
  %i.hc = shufflevector <4 x float> %i.ha, <4 x float> %i.hb, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit

bb.i:                                             ; preds = %bb.g
  %i.hd = fadd float %.sroa.42.0, 1.000000e+00
  %i.he = fsub float %i.hd, %.sroa.055.0
  %i.hf = fsub float %i.he, %.sroa.22.0
  %i.hg = tail call noundef float @sqrtf(float noundef %i.hf) #47
  %i.hh = fmul float %i.hg, 2.000000e+00
  %i.hi = extractelement <2 x float> %i.ew, i64 0
  %i.hj = fadd float %.sroa.1260.0, %i.hi
  %i.hk = fadd float %.sroa.27.0, %.sroa.37.0
  %i.hl = extractelement <2 x float> %i.ew, i64 1
  %i.hm = fsub float %i.hl, %.sroa.17.0
  %i.hn = insertelement <4 x float> <float poison, float poison, float poison, float 2.500000e-01>, float %i.hm, i64 0
  %i.ho = insertelement <4 x float> %i.hn, float %i.hj, i64 1
  %i.hp = insertelement <4 x float> %i.ho, float %i.hk, i64 2 ; 2 uses
  %i.hq = insertelement <4 x float> poison, float %i.hh, i64 0
  %i.hr = shufflevector <4 x float> %i.hq, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.hs = fdiv <4 x float> %i.hp, %i.hr
  %i.ht = fmul <4 x float> %i.hp, %i.hr
  %i.hu = shufflevector <4 x float> %i.hs, <4 x float> %i.ht, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit

_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit: ; preds = %bb.d, %bb.f, %bb.h, %bb.i
  %i.hv = phi <4 x float> [ %i.fp, %bb.d ], [ %i.gj, %bb.f ], [ %i.hc, %bb.h ], [ %i.hu, %bb.i ]
  store <4 x float> %i.hv, ptr %2, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @aiTransposeMatrix3(ptr nofree noundef captures(none) %0) local_unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.c = load float, ptr %i.a, align 4
  %i.d = load float, ptr %i.b, align 4
  store float %i.d, ptr %i.a, align 4
  store float %i.c, ptr %i.b, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load float, ptr %i.e, align 4
  %i.h = load float, ptr %i.f, align 4
  store float %i.h, ptr %i.e, align 4
  store float %i.g, ptr %i.f, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.k = load float, ptr %i.i, align 4
  %i.l = load float, ptr %i.j, align 4
  store float %i.l, ptr %i.i, align 4
  store float %i.k, ptr %i.j, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @aiTransposeMatrix4(ptr nofree noundef captures(none) %0) local_unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.c = load float, ptr %i.a, align 4
  %i.d = load float, ptr %i.b, align 4
  store float %i.d, ptr %i.a, align 4
  store float %i.c, ptr %i.b, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load float, ptr %i.e, align 4
  %i.h = load float, ptr %i.f, align 4
  store float %i.h, ptr %i.e, align 4
  store float %i.g, ptr %i.f, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.k = load float, ptr %i.i, align 4
  %i.l = load float, ptr %i.j, align 4
  store float %i.l, ptr %i.i, align 4
  store float %i.k, ptr %i.j, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.o = load float, ptr %i.m, align 4
  %i.p = load float, ptr %i.n, align 4
  store float %i.p, ptr %i.m, align 4
  store float %i.o, ptr %i.n, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.s = load float, ptr %i.q, align 4
  %i.t = load float, ptr %i.r, align 4
  store float %i.t, ptr %i.q, align 4
  store float %i.s, ptr %i.r, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.w = load float, ptr %i.u, align 4
  %i.x = load float, ptr %i.v, align 4
  store float %i.x, ptr %i.u, align 4
  store float %i.w, ptr %i.v, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @aiTransformVecByMatrix3(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #15 {
bb.a:
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %3 = load float, ptr %2, align 4                ; 2 uses
  %i.c = load float, ptr %0, align 4              ; 2 uses
  %4 = load float, ptr %i.a, align 4              ; 2 uses
  %i.d = load <4 x float>, ptr %1, align 4        ; 3 uses
  %i.e = load <2 x float>, ptr %i.b, align 4      ; 2 uses
  %5 = insertelement <2 x float> poison, float %3, i64 0
  %6 = shufflevector <2 x float> %5, <2 x float> poison, <2 x i32> zeroinitializer
  %i.f = shufflevector <4 x float> %i.d, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.g = shufflevector <2 x float> %i.e, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.h = shufflevector <4 x float> %i.d, <4 x float> %i.g, <2 x i32> <i32 1, i32 4>
  %i.i = fmul <2 x float> %6, %i.h
  %i.j = shufflevector <4 x float> %i.d, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %7 = insertelement <2 x float> poison, float %i.c, i64 0
  %i.k = shufflevector <2 x float> %7, <2 x float> poison, <2 x i32> zeroinitializer
  %i.l = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.j, <2 x float> %i.k, <2 x float> %i.i)
  %i.m = shufflevector <2 x float> %i.f, <2 x float> %i.e, <2 x i32> <i32 0, i32 3>
  %8 = insertelement <2 x float> poison, float %4, i64 0
  %9 = shufflevector <2 x float> %8, <2 x float> poison, <2 x i32> zeroinitializer
  %i.n = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.m, <2 x float> %9, <2 x float> %i.l)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load float, ptr %i.o, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.r = load float, ptr %i.q, align 4
  %i.s = fmul float %3, %i.r
  %i.t = tail call float @llvm.fmuladd.f32(float %i.p, float %i.c, float %i.s)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.v = load float, ptr %i.u, align 4
  %i.w = tail call float @llvm.fmuladd.f32(float %i.v, float %4, float %i.t)
  store <2 x float> %i.n, ptr %0, align 4
  store float %i.w, ptr %i.a, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @aiTransformVecByMatrix4(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #15 {
bb.a:
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %3 = load float, ptr %2, align 4                ; 2 uses
  %i.b = load float, ptr %0, align 4              ; 2 uses
  %4 = load float, ptr %i.a, align 4              ; 2 uses
  %i.c = load <8 x float>, ptr %1, align 4        ; 4 uses
  %5 = insertelement <2 x float> poison, float %3, i64 0
  %6 = shufflevector <2 x float> %5, <2 x float> poison, <2 x i32> zeroinitializer
  %i.d = shufflevector <8 x float> %i.c, <8 x float> poison, <2 x i32> <i32 1, i32 5>
  %i.e = fmul <2 x float> %6, %i.d
  %i.f = shufflevector <8 x float> %i.c, <8 x float> poison, <2 x i32> <i32 0, i32 4>
  %7 = insertelement <2 x float> poison, float %i.b, i64 0
  %i.g = shufflevector <2 x float> %7, <2 x float> poison, <2 x i32> zeroinitializer
  %i.h = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.f, <2 x float> %i.g, <2 x float> %i.e)
  %i.i = shufflevector <8 x float> %i.c, <8 x float> poison, <2 x i32> <i32 2, i32 6>
  %8 = insertelement <2 x float> poison, float %4, i64 0
  %9 = shufflevector <2 x float> %8, <2 x float> poison, <2 x i32> zeroinitializer
  %i.j = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.i, <2 x float> %9, <2 x float> %i.h)
  %i.k = shufflevector <8 x float> %i.c, <8 x float> poison, <2 x i32> <i32 3, i32 7>
  %i.l = fadd <2 x float> %i.j, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.n = load float, ptr %i.m, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.p = load float, ptr %i.o, align 4
  %i.q = fmul float %3, %i.p
  %i.r = tail call float @llvm.fmuladd.f32(float %i.n, float %i.b, float %i.q)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.t = load float, ptr %i.s, align 4
  %i.u = tail call float @llvm.fmuladd.f32(float %i.t, float %4, float %i.r)
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.w = load float, ptr %i.v, align 4
  %i.x = fadd float %i.w, %i.u
  store <2 x float> %i.l, ptr %0, align 4
  store float %i.x, ptr %i.a, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @aiMultiplyMatrix4(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #14 {
bb.a:
  %.sroa.12.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.20.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.28.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load <4 x float>, ptr %0, align 4        ; 4 uses
  %i.e = load <4 x float>, ptr %1, align 4        ; 4 uses
  %i.f = load <4 x float>, ptr %i.a, align 4      ; 4 uses
  %i.g = shufflevector <4 x float> %i.d, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.h = fmul <4 x float> %i.g, %i.f
  %i.i = shufflevector <4 x float> %i.d, <4 x float> poison, <4 x i32> zeroinitializer
  %i.j = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.e, <4 x float> %i.i, <4 x float> %i.h)
  %i.k = load <4 x float>, ptr %i.b, align 4      ; 4 uses
  %i.l = shufflevector <4 x float> %i.d, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.m = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.k, <4 x float> %i.l, <4 x float> %i.j)
  %i.n = load <4 x float>, ptr %i.c, align 4      ; 4 uses
  %i.o = shufflevector <4 x float> %i.d, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.p = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.n, <4 x float> %i.o, <4 x float> %i.m)
  store <4 x float> %i.p, ptr %0, align 4
  %i.q = load <4 x float>, ptr %.sroa.12.0..sroa_idx10, align 4 ; 4 uses
  %i.r = shufflevector <4 x float> %i.q, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.s = fmul <4 x float> %i.r, %i.f
  %i.t = shufflevector <4 x float> %i.q, <4 x float> poison, <4 x i32> zeroinitializer
  %i.u = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.e, <4 x float> %i.t, <4 x float> %i.s)
  %i.v = shufflevector <4 x float> %i.q, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.w = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.k, <4 x float> %i.v, <4 x float> %i.u)
  %i.x = shufflevector <4 x float> %i.q, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.y = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.n, <4 x float> %i.x, <4 x float> %i.w)
  store <4 x float> %i.y, ptr %.sroa.12.0..sroa_idx10, align 4
  %i.z = load <4 x float>, ptr %.sroa.20.0..sroa_idx18, align 4 ; 4 uses
  %i.aa = shufflevector <4 x float> %i.z, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ab = fmul <4 x float> %i.aa, %i.f
  %i.ac = shufflevector <4 x float> %i.z, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ad = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.e, <4 x float> %i.ac, <4 x float> %i.ab)
  %i.ae = shufflevector <4 x float> %i.z, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.af = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.k, <4 x float> %i.ae, <4 x float> %i.ad)
  %i.ag = shufflevector <4 x float> %i.z, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ah = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.n, <4 x float> %i.ag, <4 x float> %i.af)
  store <4 x float> %i.ah, ptr %.sroa.20.0..sroa_idx18, align 4
  %i.ai = load <4 x float>, ptr %.sroa.28.0..sroa_idx26, align 4 ; 4 uses
  %i.aj = shufflevector <4 x float> %i.ai, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ak = fmul <4 x float> %i.aj, %i.f
  %i.al = shufflevector <4 x float> %i.ai, <4 x float> poison, <4 x i32> zeroinitializer
  %i.am = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.e, <4 x float> %i.al, <4 x float> %i.ak)
  %i.an = shufflevector <4 x float> %i.ai, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ao = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.k, <4 x float> %i.an, <4 x float> %i.am)
  %i.ap = shufflevector <4 x float> %i.ai, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.aq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.n, <4 x float> %i.ap, <4 x float> %i.ao)
  store <4 x float> %i.aq, ptr %.sroa.28.0..sroa_idx26, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @aiMultiplyMatrix3(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #14 {
bb.a:
  %.sroa.10.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.12.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.14.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.16.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.18.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %.sroa.20.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.f = load <4 x float>, ptr %0, align 4        ; 3 uses
  %.sroa.10.0.copyload9 = load float, ptr %.sroa.10.0..sroa_idx8, align 4
  %i.g = load <2 x float>, ptr %.sroa.12.0..sroa_idx10, align 4 ; 2 uses
  %i.h = load <3 x float>, ptr %1, align 4, !noalias !29 ; 3 uses
  %i.i = shufflevector <3 x float> %i.h, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.j = load float, ptr %i.c, align 4, !noalias !29
  %i.k = load <3 x float>, ptr %i.a, align 4, !noalias !29 ; 3 uses
  %i.l = shufflevector <3 x float> %i.k, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 2 uses
  %i.m = load float, ptr %i.d, align 4, !noalias !29
  %i.n = load <3 x float>, ptr %i.b, align 4, !noalias !29 ; 3 uses
  %i.o = shufflevector <3 x float> %i.n, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.p = load float, ptr %i.e, align 4, !noalias !29
  %i.q = shufflevector <2 x float> %i.g, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.r = shufflevector <4 x float> %i.f, <4 x float> %i.q, <4 x i32> <i32 1, i32 1, i32 1, i32 4>
  %i.s = fmul <4 x float> %i.r, %i.l
  %i.t = shufflevector <4 x float> %i.f, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.u = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.i, <4 x float> %i.t, <4 x float> %i.s)
  %i.v = shufflevector <4 x float> %i.f, <4 x float> %i.q, <4 x i32> <i32 2, i32 2, i32 2, i32 5>
  %i.w = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.o, <4 x float> %i.v, <4 x float> %i.u)
  %i.x = extractelement <3 x float> %i.k, i64 2
  %i.y = extractelement <3 x float> %i.h, i64 2
  %i.z = extractelement <3 x float> %i.n, i64 2
  store <4 x float> %i.w, ptr %0, align 4
  %i.aa = load <4 x float>, ptr %.sroa.14.0..sroa_idx12, align 4 ; 3 uses
  %.sroa.20.0.copyload19 = load float, ptr %.sroa.20.0..sroa_idx18, align 4
  %.sroa.18.0.copyload17 = load float, ptr %.sroa.18.0..sroa_idx16, align 4
  %.sroa.16.0.copyload15 = load float, ptr %.sroa.16.0..sroa_idx14, align 4
  %i.ab = shufflevector <2 x float> %i.g, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.ac = shufflevector <3 x float> %i.ab, <3 x float> %i.k, <4 x i32> <i32 0, i32 3, i32 0, i32 poison>
  %i.ad = insertelement <4 x float> %i.ac, float %i.m, i64 3 ; 2 uses
  %i.ae = shufflevector <4 x float> %i.ad, <4 x float> %i.aa, <4 x i32> <i32 3, i32 6, i32 poison, i32 6>
  %i.af = shufflevector <4 x float> %i.ae, <4 x float> %i.l, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.ag = fmul <4 x float> %i.ad, %i.af
  %i.ah = shufflevector <3 x float> %i.h, <3 x float> poison, <4 x i32> <i32 poison, i32 0, i32 2, i32 poison>
  %i.ai = insertelement <4 x float> poison, float %i.j, i64 0
  %i.aj = shufflevector <4 x float> %i.ai, <4 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %i.ak = shufflevector <4 x float> %i.aj, <4 x float> %i.ah, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.al = shufflevector <4 x float> %i.aa, <4 x float> poison, <2 x i32> <i32 poison, i32 1>
  %i.am = insertelement <2 x float> %i.al, float %.sroa.10.0.copyload9, i64 0
  %i.an = shufflevector <2 x float> %i.am, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ao = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ak, <4 x float> %i.an, <4 x float> %i.ag)
  %i.ap = shufflevector <3 x float> %i.n, <3 x float> poison, <4 x i32> <i32 poison, i32 0, i32 2, i32 poison>
  %i.aq = insertelement <4 x float> poison, float %i.p, i64 0
  %i.ar = shufflevector <4 x float> %i.aq, <4 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %i.as = shufflevector <4 x float> %i.ar, <4 x float> %i.ap, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.at = shufflevector <4 x float> %i.aa, <4 x float> poison, <4 x i32> <i32 0, i32 3, i32 0, i32 3>
  %i.au = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.as, <4 x float> %i.at, <4 x float> %i.ao)
  %i.av = fmul float %.sroa.18.0.copyload17, %i.x
  %i.aw = tail call float @llvm.fmuladd.f32(float %i.y, float %.sroa.16.0.copyload15, float %i.av)
  %i.ax = tail call float @llvm.fmuladd.f32(float %i.z, float %.sroa.20.0.copyload19, float %i.aw)
  %i.ay = shufflevector <4 x float> %i.au, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %i.ay, ptr %.sroa.12.0..sroa_idx10, align 4
  store float %i.ax, ptr %.sroa.20.0..sroa_idx18, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @aiIdentityMatrix3(ptr nofree noundef writeonly captures(none) initializes((0, 36)) %0) local_unnamed_addr #16 {
bb.a:
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %0, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float 1.000000e+00, ptr %.sroa.11.0..sroa_idx, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @aiIdentityMatrix4(ptr nofree noundef writeonly captures(none) initializes((0, 64)) %0) local_unnamed_addr #16 {
bb.a:
  store float 1.000000e+00, ptr %0, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float 1.000000e+00, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float 1.000000e+00, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.8.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 60
  store float 1.000000e+00, ptr %.sroa.9.0..sroa_idx, align 4
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @aiGetImporterDesc(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::vector", align 8       ; 14 uses
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #47
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  invoke void @_ZN6Assimp23GetImporterInstanceListERSt6vectorIPNS_12BaseImporterESaIS2_EE(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %.preheader unwind label %bb.c

.preheader:                                       ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %1, align 8                ; 2 uses
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %.loopexit, label %.lr.ph

bb.c:                                             ; preds = %.loopexit, %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

.lr.ph:                                           ; preds = %.preheader, %bb.f
  %i.f = phi ptr [ %i.aa, %bb.f ], [ %i.d, %.preheader ]
  %.021 = phi i64 [ %i.y, %bb.f ], [ 0, %.preheader ] ; 3 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.021
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = invoke noundef ptr %i.k(ptr noundef nonnull align 8 dereferenceable(72) %i.h)
          to label %bb.d unwind label %.loopexit18

end_hunk_0
