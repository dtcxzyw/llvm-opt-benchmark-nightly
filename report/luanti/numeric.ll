Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/numeric?download=true
inline.NumInlined: 29
inline.NumDeleted: 18
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_Z17murmur_hash_64_uaPKvmj:bb.a

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %.2 = phi i64 [ %i.an, %bb.c ], [ %.037.lcssa, %._crit_edge ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 4
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !13
  %i.aq = zext i8 %i.ap to i64
  %i.ar = shl nuw nsw i64 %i.aq, 32
  %i.as = xor i64 %i.ar, %.2
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.d
  %.3 = phi i64 [ %i.as, %bb.d ], [ %.037.lcssa, %._crit_edge ]
  %i.at = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 3
  %i.au = load i8, ptr %i.at, align 1, !tbaa !13
  %i.av = zext i8 %i.au to i64
  %i.aw = shl nuw nsw i64 %i.av, 24
  %i.ax = xor i64 %i.aw, %.3
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.e
  %.4 = phi i64 [ %i.ax, %bb.e ], [ %.037.lcssa, %._crit_edge ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 2
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !13
  %i.ba = zext i8 %i.az to i64
  %i.bb = shl nuw nsw i64 %i.ba, 16
  %i.bc = xor i64 %i.bb, %.4
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.f
  %.5 = phi i64 [ %i.bc, %bb.f ], [ %.037.lcssa, %._crit_edge ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 1
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !13
  %i.bf = zext i8 %i.be to i64
  %i.bg = shl nuw nsw i64 %i.bf, 8
  %i.bh = xor i64 %i.bg, %.5
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.g
  %.6 = phi i64 [ %i.bh, %bb.g ], [ %.037.lcssa, %._crit_edge ]
  %i.bi = load i8, ptr %.0.lcssa, align 1, !tbaa !13
  %i.bj = zext i8 %i.bi to i64
  %i.bk = xor i64 %.6, %i.bj
  %i.bl = mul i64 %i.bk, -4132994306676758123
  br label %bb.i

default.unreachable43:                            ; preds = %._crit_edge
  unreachable

bb.i:                                             ; preds = %._crit_edge, %bb.h
  %.7 = phi i64 [ %i.bl, %bb.h ], [ %.037.lcssa, %._crit_edge ] ; 2 uses
  %i.bm = lshr i64 %.7, 47
  %i.bn = xor i64 %i.bm, %.7
  %i.bo = mul i64 %i.bn, -4132994306676758123     ; 2 uses
  %i.bp = lshr i64 %i.bo, 47
  %i.bq = xor i64 %i.bp, %i.bo
  ret i64 %i.bq
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef zeroext i1 @_Z14isBlockInSightN4core8vector3dIsEENS0_IfEES2_ffPf(i48 %0, <2 x float> %1, float %2, <2 x float> %3, float %4, float noundef %5, float noundef %6, ptr nofree noundef writeonly captures(address_is_null) %7) local_unnamed_addr #4 {
bb.a:
  %.sroa.0103.0.extract.trunc = trunc i48 %0 to i16
  %i.a = shl i16 %.sroa.0103.0.extract.trunc, 4
  %i.b = lshr i48 %0, 12
  %i.c = trunc i48 %i.b to i16
  %.sroa.487.0.extract.trunc = and i16 %i.c, -16
  %i.d = lshr i48 %0, 28
  %i.e = trunc i48 %i.d to i16
  %.sroa.588.0.extract.trunc = and i16 %i.e, -16
  %i.f = or disjoint i16 %i.a, 8
  %i.g = or disjoint i16 %.sroa.487.0.extract.trunc, 8
  %i.h = or disjoint i16 %.sroa.588.0.extract.trunc, 8
  %i.i = sitofp nsz i16 %i.f to float
  %i.j = sitofp nsz i16 %i.g to float
  %i.k = sitofp nsz i16 %i.h to float
  %i.l = fmul nnan nsz float %i.i, 1.000000e+01   ; 2 uses
  %i.m = fmul nnan nsz float %i.j, 1.000000e+01   ; 2 uses
  %i.n = fmul nnan nsz float %i.k, 1.000000e+01   ; 2 uses
  %.sroa.096.0.vec.extract = extractelement <2 x float> %1, i64 0 ; 2 uses
  %i.o = fsub nsz float %i.l, %.sroa.096.0.vec.extract ; 2 uses
  %.sroa.096.4.vec.extract = extractelement <2 x float> %1, i64 1 ; 2 uses
  %i.p = fsub nsz float %i.m, %.sroa.096.4.vec.extract ; 2 uses
  %i.q = fsub nsz float %i.n, %2                  ; 2 uses
  %i.r = fmul nsz float %i.p, %i.p
  %i.s = tail call nsz float @llvm.fmuladd.f32(float %i.o, float %i.o, float %i.r)
  %i.t = tail call nsz float @llvm.fmuladd.f32(float %i.q, float %i.q, float %i.s)
  %i.u = tail call nsz noundef float @llvm.sqrt.f32(float %i.t)
  %i.v = fadd nsz float %i.u, f0xC30A9066         ; 2 uses
  %i.w = fcmp nsz ogt float %i.v, 0.000000e+00
  %.sroa.speculated = select i1 %i.w, float %i.v, float 0.000000e+00 ; 3 uses
  %.not = icmp eq ptr %7, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store float %.sroa.speculated, ptr %7, align 4, !tbaa !10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.x = fcmp nsz ogt float %.sroa.speculated, %6
  br i1 %i.x, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = fcmp nsz oeq float %.sroa.speculated, 0.000000e+00
  br i1 %i.y, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = fpext nsz float %5 to double
  %i.aa = fsub nsz double f0x400921FB54442D18, %i.z
  %i.ab = fmul nsz double %i.aa, 5.000000e-01
  %i.ac = tail call nsz double @llvm.cos.f64(double %i.ab)
  %i.ad = fdiv nsz double f0x4061520CC0000000, %i.ac
  %i.ae = fptrunc nsz double %i.ad to float       ; 3 uses
  %.sroa.089.0.vec.extract = extractelement <2 x float> %3, i64 0 ; 2 uses
  %i.af = fmul nsz float %.sroa.089.0.vec.extract, %i.ae
  %.sroa.089.4.vec.extract = extractelement <2 x float> %3, i64 1 ; 2 uses
  %i.ag = fmul nsz float %.sroa.089.4.vec.extract, %i.ae
  %i.ah = fmul nsz float %4, %i.ae
  %i.ai = fsub nsz float %i.af, %.sroa.096.0.vec.extract
  %i.aj = fadd nsz float %i.l, %i.ai              ; 3 uses
  %i.ak = fsub nsz float %i.ag, %.sroa.096.4.vec.extract
  %i.al = fadd nsz float %i.m, %i.ak              ; 3 uses
  %i.am = fsub nsz float %i.ah, %2
  %i.an = fadd nsz float %i.n, %i.am              ; 3 uses
  %i.ao = fmul nsz float %.sroa.089.4.vec.extract, %i.al
  %i.ap = tail call nsz float @llvm.fmuladd.f32(float %i.aj, float %.sroa.089.0.vec.extract, float %i.ao)
  %i.aq = tail call nsz noundef float @llvm.fmuladd.f32(float %i.an, float %4, float %i.ap)
  %i.ar = fmul nsz float %i.al, %i.al
  %i.as = tail call nsz float @llvm.fmuladd.f32(float %i.aj, float %i.aj, float %i.ar)
  %i.at = tail call nsz float @llvm.fmuladd.f32(float %i.an, float %i.an, float %i.as)
  %i.au = tail call nsz noundef float @llvm.sqrt.f32(float %i.at)
  %i.av = fdiv nsz float %i.aq, %i.au
  %i.aw = fmul nsz float %5, 5.500000e-01
  %i.ax = tail call nsz noundef float @llvm.cos.f32(float %i.aw)
  %i.ay = fcmp nsz uge float %i.av, %i.ax
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.e
  %.1 = phi i1 [ %i.ay, %bb.e ], [ false, %bb.c ], [ true, %bb.d ]
  ret i1 %.1
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.cos.f64(double) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef signext i16 @_Z10adjustDistsf(i16 noundef signext %0, float noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = sitofp nsz i16 %0 to float               ; 2 uses
  %i.b = fcmp nsz olt float %1, 1.000000e-03
  %i.c = fcmp nsz ogt float %1, f0x3F633333
  %or.cond.i = or i1 %i.b, %i.c
  br i1 %or.cond.i, label %_Z10adjustDistff.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = fmul nsz float %1, 5.000000e-01
  %i.e = tail call nsz noundef float @llvm.cos.f32(float %i.d)
  %i.f = fsub nsz float 1.000000e+00, %i.e
  %i.g = fdiv nsz float f0x3EBCBF56, %i.f
  %i.h = tail call nsz noundef float @cbrtf(float noundef %i.g) #9
  %i.i = fmul nsz float %i.h, %i.a
  %i.j = tail call nsz float @llvm.round.f32(float %i.i)
  br label %_Z10adjustDistff.exit

_Z10adjustDistff.exit:                            ; preds = %bb.a, %bb.b
  %.0.i = phi float [ %i.j, %bb.b ], [ %i.a, %bb.a ]
  %i.k = fptosi float %.0.i to i16
  ret i16 %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_Z18setPitchYawRollRadRN4core8CMatrix4IfEENS_8vector3dIfEE(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(64) initializes((0, 12), (16, 28), (32, 44)) %0, <2 x float> %1, float %2) local_unnamed_addr #4 {
bb.a:
  %i.a = fpext nsz float %2 to double
  %sincos = tail call nsz { double, double } @llvm.sincos.f64(double %i.a) ; 2 uses
  %sin = extractvalue { double, double } %sincos, 0 ; 3 uses
  %cos = extractvalue { double, double } %sincos, 1 ; 3 uses
  %.sroa.045.0.vec.extract = extractelement <2 x float> %1, i64 0
  %i.b = fpext nsz float %.sroa.045.0.vec.extract to double
  %sincos46 = tail call nsz { double, double } @llvm.sincos.f64(double %i.b) ; 2 uses
  %sin47 = extractvalue { double, double } %sincos46, 0 ; 3 uses
  %cos48 = extractvalue { double, double } %sincos46, 1 ; 4 uses
  %.sroa.045.4.vec.extract = extractelement <2 x float> %1, i64 1
  %i.c = fpext nsz float %.sroa.045.4.vec.extract to double
  %sincos49 = tail call nsz { double, double } @llvm.sincos.f64(double %i.c) ; 2 uses
  %sin50 = extractvalue { double, double } %sincos49, 0 ; 5 uses
  %cos51 = extractvalue { double, double } %sincos49, 1 ; 5 uses
  %i.d = fmul nsz double %sin, %sin47
  %i.e = fmul nsz double %sin, %cos48
  %i.f = fneg nsz double %sin50
  %i.g = insertelement <2 x double> poison, double %cos, i64 0
  %i.h = shufflevector <2 x double> %i.g, <2 x double> poison, <2 x i32> zeroinitializer
  %i.i = insertelement <2 x double> poison, double %cos51, i64 0
  %i.j = insertelement <2 x double> %i.i, double %i.f, i64 1
  %i.k = fmul nsz <2 x double> %i.h, %i.j
  %i.l = insertelement <2 x double> poison, double %i.d, i64 0
  %i.m = shufflevector <2 x double> %i.l, <2 x double> poison, <2 x i32> zeroinitializer
  %i.n = insertelement <2 x double> poison, double %sin50, i64 0
  %i.o = insertelement <2 x double> %i.n, double %cos51, i64 1
  %i.p = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.m, <2 x double> %i.o, <2 x double> %i.k) ; 2 uses
  %i.q = insertelement <2 x double> %i.p, double %i.e, i64 1
  %i.r = fptrunc <2 x double> %i.q to <2 x float>
  store <2 x float> %i.r, ptr %0, align 4, !tbaa !10
  %i.s = extractelement <2 x double> %i.p, i64 1
  %i.t = fptrunc nsz double %i.s to float
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.t, ptr %i.u, align 4, !tbaa !10
  %i.v = fmul nsz double %cos, %sin47
  %i.w = fneg nsz double %cos51
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = fmul nsz double %cos, %cos48
  %i.z = insertelement <2 x double> poison, double %sin, i64 0
  %i.aa = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ab = insertelement <2 x double> poison, double %i.w, i64 0
  %i.ac = insertelement <2 x double> %i.ab, double %sin50, i64 1
  %i.ad = fmul nsz <2 x double> %i.aa, %i.ac
  %i.ae = insertelement <2 x double> poison, double %i.v, i64 0
  %i.af = shufflevector <2 x double> %i.ae, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ag = insertelement <2 x double> poison, double %sin50, i64 0
  %i.ah = insertelement <2 x double> %i.ag, double %cos51, i64 1
  %i.ai = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.af, <2 x double> %i.ah, <2 x double> %i.ad) ; 2 uses
  %i.aj = insertelement <2 x double> %i.ai, double %i.y, i64 1
  %i.ak = fptrunc <2 x double> %i.aj to <2 x float>
  store <2 x float> %i.ak, ptr %i.x, align 4, !tbaa !10
  %i.al = extractelement <2 x double> %i.ai, i64 1
  %i.am = fptrunc nsz double %i.al to float
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.am, ptr %i.an, align 4, !tbaa !10
  %i.ao = fmul nsz double %cos48, %sin50
  %i.ap = fptrunc nsz double %i.ao to float
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.ap, ptr %i.aq, align 4, !tbaa !10
  %i.ar = fptrunc nsz double %sin47 to float
  %i.as = fneg nsz float %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %i.as, ptr %i.at, align 4, !tbaa !10
  %i.au = fmul nsz double %cos48, %cos51
  %i.av = fptrunc nsz double %i.au to float
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float %i.av, ptr %i.aw, align 4, !tbaa !10
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { <2 x float>, float } @_Z18getPitchYawRollRadRKN4core8CMatrix4IfEE(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load float, ptr %i.a, align 4, !tbaa !10
  %i.c = fpext nsz float %i.b to double
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load float, ptr %i.d, align 4, !tbaa !10
  %i.f = fpext nsz float %i.e to double
  %i.g = tail call nsz double @llvm.atan2.f64(double %i.c, double %i.f) ; 2 uses
  %sincos = tail call nsz { double, double } @llvm.sincos.f64(double %i.g) ; 2 uses
  %sin = extractvalue { double, double } %sincos, 0
  %cos = extractvalue { double, double } %sincos, 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load float, ptr %i.h, align 4, !tbaa !10
  %i.j = fpext nsz float %i.i to double           ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load float, ptr %i.k, align 4, !tbaa !10
  %i.m = fpext nsz float %i.l to double           ; 2 uses
  %i.n = fmul nsz double %i.m, %i.m
  %i.o = tail call nsz double @llvm.fmuladd.f64(double %i.j, double %i.j, double %i.n)
  %i.p = tail call nsz double @llvm.sqrt.f64(double %i.o)
  %i.q = fptrunc nsz double %i.p to float
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.s = load float, ptr %i.r, align 4, !tbaa !10
  %i.t = fneg nsz float %i.s
  %i.u = tail call nsz float @llvm.atan2.f32(float %i.t, float %i.q)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load float, ptr %i.v, align 4, !tbaa !10
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load float, ptr %i.x, align 4, !tbaa !10
  %i.z = load <2 x float>, ptr %0, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load <2 x float>, ptr %i.aa, align 4
  %i.ac = insertelement <2 x float> %i.z, float %i.w, i64 1
  %i.ad = fpext <2 x float> %i.ac to <2 x double>
  %i.ae = insertelement <2 x float> %i.ab, float %i.y, i64 1
  %i.af = fpext <2 x float> %i.ae to <2 x double>
  %i.ag = fneg nsz <2 x double> %i.af
  %i.ah = insertelement <2 x double> poison, double %sin, i64 0
  %i.ai = insertelement <2 x double> %i.ah, double %cos, i64 1 ; 2 uses
  %i.aj = fmul nsz <2 x double> %i.ai, %i.ag
  %i.ak = shufflevector <2 x double> %i.ai, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.al = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ak, <2 x double> %i.ad, <2 x double> %i.aj)
  %i.am = fptrunc <2 x double> %i.al to <2 x float> ; 2 uses
  %i.an = extractelement <2 x float> %i.am, i64 0
  %i.ao = extractelement <2 x float> %i.am, i64 1
  %i.ap = tail call nsz float @llvm.atan2.f32(float %i.ao, float %i.an)
  %i.aq = fptrunc nsz double %i.g to float
  %.sroa.0.0.vec.insert = insertelement <2 x float> poison, float %i.u, i64 0
  %.sroa.0.4.vec.insert = insertelement <2 x float> %.sroa.0.0.vec.insert, float %i.ap, i64 1
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %.sroa.0.4.vec.insert, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %i.aq, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.atan2.f64(double, double) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.atan2.f32(float, float) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.cos.f32(float) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.round.f32(float) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare float @cbrtf(float noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #2

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_numeric.cpp() #8 section ".text.startup" {
bb.a:
  tail call void @_ZN9PcgRandomC1Emm(ptr noundef nonnull align 8 dereferenceable(16) @_ZL9g_pcgrand, i64 noundef -8846114313915602277, i64 noundef -2720673578348880933)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { double, double } @llvm.sincos.f64(double) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #2

attributes #0 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="64" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"float", !5, i64 0}
!10 = !{!9, !9, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!5, !5, i64 0}
end_hunk_0
