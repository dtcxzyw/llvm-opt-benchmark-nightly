Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuklear/original/unity?download=true
inline.NumInlined: 1904
inline.NumDeleted: 211
loop-unroll.NumCompletelyUnrolled: 86
loop-unroll.NumRuntimeUnrolled: 58
loop-unroll.NumUnrolled: 145
begin_hunk_0_@nk_hsva_fv:bb.a
  %i.y = fmul float %i.d, %i.x                    ; 3 uses
  switch i32 %i.j, label %bb.i [
    i32 5, label %bb.h
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.f
    i32 4, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  br label %bb.i

bb.f:                                             ; preds = %bb.c
  br label %bb.i

bb.g:                                             ; preds = %bb.c
  br label %bb.i

bb.h:                                             ; preds = %bb.c
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sink77.i.i = phi float [ %i.d, %bb.h ], [ %i.y, %bb.g ], [ %i.n, %bb.f ], [ %i.n, %bb.e ], [ %i.w, %bb.d ], [ %i.d, %bb.c ]
  %.sink76.i.i = phi float [ %i.n, %bb.h ], [ %i.n, %bb.g ], [ %i.w, %bb.f ], [ %i.d, %bb.e ], [ %i.d, %bb.d ], [ %i.y, %bb.c ]
  %.sink.i.i = phi float [ %i.w, %bb.h ], [ %i.d, %bb.g ], [ %i.d, %bb.f ], [ %i.y, %bb.e ], [ %i.n, %bb.d ], [ %i.n, %bb.c ]
  %.sroa.0.0.vec.insert48.i.i = insertelement <2 x float> poison, float %.sink77.i.i, i64 0
  %.sroa.0.4.vec.insert60.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert48.i.i, float %.sink76.i.i, i64 1
  %.sroa.16.8.vec.insert73.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.sink.i.i, i64 0
  br label %nk_hsva_colorf.exit.i

nk_hsva_colorf.exit.i:                            ; preds = %bb.i, %bb.b
  %.sroa.16.8.vec.insert73.sink.i.i = phi <2 x float> [ %.sroa.16.8.vec.insert73.i.i, %bb.i ], [ %.sroa.0.0.vec.insert.i.i, %bb.b ]
  %.sroa.0.1.i.i = phi <2 x float> [ %.sroa.0.4.vec.insert60.i.i, %bb.i ], [ %.sroa.0.4.vec.insert.i.i, %bb.b ] ; 2 uses
  %.sroa.5.8.vec.extract.i = extractelement <2 x float> %.sroa.16.8.vec.insert73.sink.i.i, i64 0 ; 2 uses
  %i.z = fcmp ogt float %.sroa.5.8.vec.extract.i, 1.000000e+00
  %i.aa = select i1 %i.z, float 1.000000e+00, float %.sroa.5.8.vec.extract.i ; 2 uses
  %i.ab = fcmp ogt float %i.aa, 0.000000e+00
  %i.ac = fmul float %i.aa, 2.550000e+02
  %i.ad = fptoui float %i.ac to i8
  %i.ae = zext i8 %i.ad to i32
  %i.af = shl nuw nsw i32 %i.ae, 16
  %.sroa.3.0.insert.ext.i.i = select i1 %i.ab, i32 %i.af, i32 0 ; 2 uses
  %i.ag = fcmp ogt float %i.f, 1.000000e+00
  %i.ah = select i1 %i.ag, float 1.000000e+00, float %i.f ; 2 uses
  %i.ai = fcmp ogt float %i.ah, 0.000000e+00
  br i1 %i.ai, label %bb.j, label %nk_hsva_f.exit

bb.j:                                             ; preds = %nk_hsva_colorf.exit.i
  %i.aj = fmul float %i.ah, 2.550000e+02
  %i.ak = fptoui float %i.aj to i8
  %i.al = zext i8 %i.ak to i32
  %i.am = shl nuw i32 %i.al, 24
  %i.an = or disjoint i32 %.sroa.3.0.insert.ext.i.i, %i.am
  br label %nk_hsva_f.exit

nk_hsva_f.exit:                                   ; preds = %nk_hsva_colorf.exit.i, %bb.j
  %.sroa.4.0.insert.ext.i.i = phi i32 [ %i.an, %bb.j ], [ %.sroa.3.0.insert.ext.i.i, %nk_hsva_colorf.exit.i ]
  %i.ao = fcmp ogt <2 x float> %.sroa.0.1.i.i, splat (float 1.000000e+00)
  %i.ap = select <2 x i1> %i.ao, <2 x float> splat (float 1.000000e+00), <2 x float> %.sroa.0.1.i.i ; 2 uses
  %i.aq = fcmp ogt <2 x float> %i.ap, zeroinitializer ; 2 uses
  %i.ar = extractelement <2 x i1> %i.aq, i64 1
  %i.as = fmul <2 x float> %i.ap, splat (float 2.550000e+02) ; 2 uses
  %i.at = extractelement <2 x float> %i.as, i64 1
  %i.au = fptoui float %i.at to i8
  %i.av = zext i8 %i.au to i32
  %i.aw = shl nuw nsw i32 %i.av, 8
  %.sroa.2.0.insert.ext.i.i = select i1 %i.ar, i32 %i.aw, i32 0
  %i.ax = extractelement <2 x float> %i.as, i64 0
  %i.ay = fptoui float %i.ax to i8
  %i.az = zext i8 %i.ay to i32
  %i.ba = extractelement <2 x i1> %i.aq, i64 0
  %.sroa.0.0.insert.ext.i.i = select i1 %i.ba, i32 %i.az, i32 0
  %.sroa.2.0.insert.insert.i.i = or disjoint i32 %.sroa.2.0.insert.ext.i.i, %.sroa.0.0.insert.ext.i.i
  %.sroa.0.0.insert.insert.i.i = or i32 %.sroa.2.0.insert.insert.i.i, %.sroa.4.0.insert.ext.i.i
  ret i32 %.sroa.0.0.insert.insert.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define i32 @nk_color_u32(i32 returned %0) local_unnamed_addr #0 {
bb.a:
  ret i32 %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @nk_color_f(ptr nofree noundef writeonly captures(none) initializes((0, 4)) %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %3, i32 %4) local_unnamed_addr #11 {
bb.a:
  %i.a = bitcast i32 %4 to <4 x i8>
  %i.b = uitofp <4 x i8> %i.a to <4 x float>
  %i.c = fmul nnan <4 x float> %i.b, splat (float f0x3B808081) ; 4 uses
  %i.d = extractelement <4 x float> %i.c, i64 0
  store float %i.d, ptr %0, align 4, !tbaa !54
  %i.e = extractelement <4 x float> %i.c, i64 1
  store float %i.e, ptr %1, align 4, !tbaa !54
  %i.f = extractelement <4 x float> %i.c, i64 2
  store float %i.f, ptr %2, align 4, !tbaa !54
  %i.g = extractelement <4 x float> %i.c, i64 3
  store float %i.g, ptr %3, align 4, !tbaa !54
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @nk_color_fv(ptr nofree noundef writeonly captures(none) initializes((0, 16)) %0, i32 %1) local_unnamed_addr #11 {
bb.a:
  %i.a = bitcast i32 %1 to <4 x i8>
  %i.b = uitofp <4 x i8> %i.a to <4 x float>
  %i.c = fmul nnan <4 x float> %i.b, splat (float f0x3B808081)
  store <4 x float> %i.c, ptr %0, align 4, !tbaa !54
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { <2 x float>, <2 x float> } @nk_color_cf(i32 %0) local_unnamed_addr #0 {
bb.a:
  %i.a = bitcast i32 %0 to <4 x i8>
  %i.b = uitofp <4 x i8> %i.a to <4 x float>
  %i.c = fmul nnan <4 x float> %i.b, splat (float f0x3B808081) ; 2 uses
  %i.d = shufflevector <4 x float> %i.c, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.e = shufflevector <4 x float> %i.c, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.d, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %i.e, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @nk_color_d(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %3, i32 %4) local_unnamed_addr #11 {
bb.a:
  %.sroa.0.0.extract.trunc = trunc i32 %4 to i8
  %.sroa.2.0.extract.shift = lshr i32 %4, 8
  %.sroa.2.0.extract.trunc = trunc i32 %.sroa.2.0.extract.shift to i8
  %.sroa.3.0.extract.shift = lshr i32 %4, 16
  %.sroa.3.0.extract.trunc = trunc i32 %.sroa.3.0.extract.shift to i8
  %.sroa.4.0.extract.shift = lshr i32 %4, 24
  %.sroa.4.0.extract.trunc = trunc nuw i32 %.sroa.4.0.extract.shift to i8
  %i.a = uitofp i8 %.sroa.0.0.extract.trunc to double
  %i.b = fmul nnan double %i.a, f0x3F70101010101010
  store double %i.b, ptr %0, align 8, !tbaa !63
  %i.c = uitofp i8 %.sroa.2.0.extract.trunc to double
  %i.d = fmul nnan double %i.c, f0x3F70101010101010
  store double %i.d, ptr %1, align 8, !tbaa !63
  %i.e = uitofp i8 %.sroa.3.0.extract.trunc to double
  %i.f = fmul nnan double %i.e, f0x3F70101010101010
  store double %i.f, ptr %2, align 8, !tbaa !63
  %i.g = uitofp i8 %.sroa.4.0.extract.trunc to double
  %i.h = fmul nnan double %i.g, f0x3F70101010101010
  store double %i.h, ptr %3, align 8, !tbaa !63
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @nk_color_dv(ptr nofree noundef writeonly captures(none) initializes((0, 32)) %0, i32 %1) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = bitcast i32 %1 to <4 x i8>
  %i.c = shufflevector <4 x i8> %i.b, <4 x i8> poison, <2 x i32> <i32 0, i32 1>
  %i.d = uitofp <2 x i8> %i.c to <2 x double>
  %i.e = fmul nnan <2 x double> %i.d, splat (double f0x3F70101010101010)
  store <2 x double> %i.e, ptr %0, align 8, !tbaa !63
  %i.f = bitcast i32 %1 to <4 x i8>
  %i.g = shufflevector <4 x i8> %i.f, <4 x i8> poison, <2 x i32> <i32 2, i32 3>
  %i.h = uitofp <2 x i8> %i.g to <2 x double>
  %i.i = fmul nnan <2 x double> %i.h, splat (double f0x3F70101010101010)
  store <2 x double> %i.i, ptr %i.a, align 8, !tbaa !63
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @nk_color_hsv_f(ptr nofree noundef writeonly captures(none) initializes((0, 4)) %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2, i32 %3) local_unnamed_addr #4 {
bb.a:
  %.sroa.0.0.extract.trunc.i.i = trunc i32 %3 to i8
  %.sroa.2.0.extract.shift.i.i = lshr i32 %3, 8
  %.sroa.2.0.extract.trunc.i.i = trunc i32 %.sroa.2.0.extract.shift.i.i to i8
  %.sroa.3.0.extract.shift.i.i = lshr i32 %3, 16
  %.sroa.3.0.extract.trunc.i.i = trunc i32 %.sroa.3.0.extract.shift.i.i to i8
  %i.a = uitofp i8 %.sroa.0.0.extract.trunc.i.i to float
  %i.b = fmul nnan float %i.a, f0x3B808081
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %i.b, i64 0 ; 2 uses
  %i.c = uitofp i8 %.sroa.2.0.extract.trunc.i.i to float
  %i.d = fmul nnan float %i.c, f0x3B808081        ; 3 uses
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i, float %i.d, i64 1
  %i.e = uitofp i8 %.sroa.3.0.extract.trunc.i.i to float
  %i.f = fmul nnan float %i.e, f0x3B808081        ; 3 uses
  %i.g = fcmp olt float %i.d, %i.f                ; 3 uses
  %.sroa.0.4.vec.insert.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i, float %i.f, i64 1
  %.0.i.i = select i1 %i.g, float -1.000000e+00, float 0.000000e+00 ; 2 uses
  %.sroa.0.0.i.i = select i1 %i.g, <2 x float> %.sroa.0.4.vec.insert.i.i, <2 x float> %.sroa.0.4.vec.insert.i ; 4 uses
  %.sroa.0.0.vec.extract.i.i = extractelement <2 x float> %.sroa.0.0.i.i, i64 0
  %.sroa.0.4.vec.extract27.i.i = extractelement <2 x float> %.sroa.0.0.i.i, i64 1
  %i.h = fcmp olt float %.sroa.0.0.vec.extract.i.i, %.sroa.0.4.vec.extract27.i.i ; 2 uses
  %.sroa.0.4.vec.insert31.i.i = shufflevector <2 x float> %.sroa.0.0.i.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.i = fsub float f0xBEAAAAAB, %.0.i.i
  %.1.i.i = select i1 %i.h, float %i.i, float %.0.i.i
  %.sroa.0.1.i.i = select i1 %i.h, <2 x float> %.sroa.0.4.vec.insert31.i.i, <2 x float> %.sroa.0.0.i.i ; 3 uses
  %.sroa.0.0.vec.extract18.i.i = extractelement <2 x float> %.sroa.0.1.i.i, i64 0 ; 2 uses
  %.sroa.0.4.vec.extract33.i.i = extractelement <2 x float> %.sroa.0.1.i.i, i64 1 ; 2 uses
  %.sroa.18.8.vec.extract46.i.i = select i1 %i.g, float %i.d, float %i.f ; 3 uses
  %i.j = fcmp olt float %.sroa.0.4.vec.extract33.i.i, %.sroa.18.8.vec.extract46.i.i
  %i.k = select i1 %i.j, float %.sroa.0.4.vec.extract33.i.i, float %.sroa.18.8.vec.extract46.i.i
  %i.l = insertelement <2 x float> poison, float %i.k, i64 0
  %i.m = insertelement <2 x float> %i.l, float %.sroa.18.8.vec.extract46.i.i, i64 1
  %i.n = fsub <2 x float> %.sroa.0.1.i.i, %i.m    ; 2 uses
  %i.o = extractelement <2 x float> %i.n, i64 0
  %i.p = tail call float @llvm.fmuladd.f32(float %i.o, float 6.000000e+00, float f0x1E3CE508)
  %4 = fadd float %.sroa.0.0.vec.extract18.i.i, f0x1E3CE508
  %i.q = insertelement <2 x float> poison, float %4, i64 0
  %i.r = insertelement <2 x float> %i.q, float %i.p, i64 1
  %i.s = fdiv <2 x float> %i.n, %i.r              ; 2 uses
  %i.t = extractelement <2 x float> %i.s, i64 1
  %i.u = fadd float %.1.i.i, %i.t                 ; 3 uses
  %i.v = fcmp olt float %i.u, 0.000000e+00
  %i.w = fneg float %i.u
  %i.x = select i1 %i.v, float %i.w, float %i.u
  store float %i.x, ptr %0, align 4, !tbaa !54
  %i.y = extractelement <2 x float> %i.s, i64 0
  store float %i.y, ptr %1, align 4, !tbaa !54
  store float %.sroa.0.0.vec.extract18.i.i, ptr %2, align 4, !tbaa !54
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @nk_color_hsva_f(ptr nofree noundef writeonly captures(none) initializes((0, 4)) %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %3, i32 %4) local_unnamed_addr #4 {
bb.a:
  %.sroa.0.0.extract.trunc.i = trunc i32 %4 to i8
  %.sroa.2.0.extract.shift.i = lshr i32 %4, 8
  %.sroa.2.0.extract.trunc.i = trunc i32 %.sroa.2.0.extract.shift.i to i8
  %i.a = uitofp i8 %.sroa.0.0.extract.trunc.i to float
  %i.b = fmul nnan float %i.a, f0x3B808081
  %.sroa.0.0.vec.insert = insertelement <2 x float> poison, float %i.b, i64 0 ; 2 uses
  %i.c = uitofp i8 %.sroa.2.0.extract.trunc.i to float
  %i.d = fmul nnan float %i.c, f0x3B808081        ; 3 uses
  %.sroa.0.4.vec.insert = insertelement <2 x float> %.sroa.0.0.vec.insert, float %i.d, i64 1
  %i.e = bitcast i32 %4 to <4 x i8>
  %i.f = shufflevector <4 x i8> %i.e, <4 x i8> poison, <2 x i32> <i32 2, i32 3>
  %i.g = uitofp <2 x i8> %i.f to <2 x float>
  %i.h = fmul nnan <2 x float> %i.g, splat (float f0x3B808081) ; 4 uses
  %i.i = extractelement <2 x float> %i.h, i64 0
  %i.j = fcmp olt float %i.d, %i.i                ; 3 uses
  %i.k = shufflevector <2 x float> %.sroa.0.0.vec.insert, <2 x float> %i.h, <2 x i32> <i32 0, i32 2>
  %.sroa.18.8.vec.insert.i = insertelement <2 x float> %i.h, float %i.d, i64 0
  %.0.i = select i1 %i.j, float -1.000000e+00, float 0.000000e+00 ; 2 uses
  %.sroa.0.0.i = select i1 %i.j, <2 x float> %i.k, <2 x float> %.sroa.0.4.vec.insert ; 4 uses
  %.sroa.18.0.i = select i1 %i.j, <2 x float> %.sroa.18.8.vec.insert.i, <2 x float> %i.h ; 3 uses
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %.sroa.0.0.i, i64 0
  %.sroa.0.4.vec.extract27.i = extractelement <2 x float> %.sroa.0.0.i, i64 1
  %i.l = fcmp olt float %.sroa.0.0.vec.extract.i, %.sroa.0.4.vec.extract27.i ; 2 uses
  %.sroa.0.4.vec.insert31.i = shufflevector <2 x float> %.sroa.0.0.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.m = fsub float f0xBEAAAAAB, %.0.i
  %.1.i = select i1 %i.l, float %i.m, float %.0.i
  %.sroa.0.1.i = select i1 %i.l, <2 x float> %.sroa.0.4.vec.insert31.i, <2 x float> %.sroa.0.0.i ; 3 uses
  %.sroa.0.0.vec.extract18.i = extractelement <2 x float> %.sroa.0.1.i, i64 0 ; 2 uses
  %.sroa.0.4.vec.extract33.i = extractelement <2 x float> %.sroa.0.1.i, i64 1 ; 2 uses
  %.sroa.18.8.vec.extract46.i = extractelement <2 x float> %.sroa.18.0.i, i64 0 ; 2 uses
  %i.n = fcmp olt float %.sroa.0.4.vec.extract33.i, %.sroa.18.8.vec.extract46.i
  %i.o = select i1 %i.n, float %.sroa.0.4.vec.extract33.i, float %.sroa.18.8.vec.extract46.i
  %i.p = shufflevector <2 x float> %.sroa.18.0.i, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.q = insertelement <2 x float> %i.p, float %i.o, i64 0
  %i.r = fsub <2 x float> %.sroa.0.1.i, %i.q      ; 2 uses
  %i.s = extractelement <2 x float> %i.r, i64 0
  %i.t = tail call float @llvm.fmuladd.f32(float %i.s, float 6.000000e+00, float f0x1E3CE508)
  %5 = fadd float %.sroa.0.0.vec.extract18.i, f0x1E3CE508
  %i.u = insertelement <2 x float> poison, float %5, i64 0
  %i.v = insertelement <2 x float> %i.u, float %i.t, i64 1
  %i.w = fdiv <2 x float> %i.r, %i.v              ; 2 uses
  %i.x = extractelement <2 x float> %i.w, i64 1
  %i.y = fadd float %.1.i, %i.x                   ; 3 uses
  %i.z = fcmp olt float %i.y, 0.000000e+00
  %i.aa = fneg float %i.y
  %i.ab = select i1 %i.z, float %i.aa, float %i.y
  store float %i.ab, ptr %0, align 4, !tbaa !54
  %i.ac = extractelement <2 x float> %i.w, i64 0
  store float %i.ac, ptr %1, align 4, !tbaa !54
  store float %.sroa.0.0.vec.extract18.i, ptr %2, align 4, !tbaa !54
  %.sroa.18.12.vec.extract.i = extractelement <2 x float> %.sroa.18.0.i, i64 1
  store float %.sroa.18.12.vec.extract.i, ptr %3, align 4, !tbaa !54
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @nk_color_hsv_fv(ptr nofree noundef writeonly captures(none) initializes((0, 12)) %0, i32 %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.extract.trunc.i.i = trunc i32 %1 to i8
  %.sroa.2.0.extract.shift.i.i = lshr i32 %1, 8
  %.sroa.2.0.extract.trunc.i.i = trunc i32 %.sroa.2.0.extract.shift.i.i to i8
  %.sroa.3.0.extract.shift.i.i = lshr i32 %1, 16
  %.sroa.3.0.extract.trunc.i.i = trunc i32 %.sroa.3.0.extract.shift.i.i to i8
  %i.c = uitofp i8 %.sroa.0.0.extract.trunc.i.i to float
  %i.d = fmul nnan float %i.c, f0x3B808081
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %i.d, i64 0 ; 2 uses
  %i.e = uitofp i8 %.sroa.2.0.extract.trunc.i.i to float
  %i.f = fmul nnan float %i.e, f0x3B808081        ; 3 uses
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i, float %i.f, i64 1
  %i.g = uitofp i8 %.sroa.3.0.extract.trunc.i.i to float
  %i.h = fmul nnan float %i.g, f0x3B808081        ; 3 uses
  %i.i = fcmp olt float %i.f, %i.h                ; 3 uses
  %.sroa.0.4.vec.insert.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i, float %i.h, i64 1
  %.0.i.i = select i1 %i.i, float -1.000000e+00, float 0.000000e+00 ; 2 uses
  %.sroa.0.0.i.i = select i1 %i.i, <2 x float> %.sroa.0.4.vec.insert.i.i, <2 x float> %.sroa.0.4.vec.insert.i ; 4 uses
  %.sroa.0.0.vec.extract.i.i = extractelement <2 x float> %.sroa.0.0.i.i, i64 0
  %.sroa.0.4.vec.extract27.i.i = extractelement <2 x float> %.sroa.0.0.i.i, i64 1
  %i.j = fcmp olt float %.sroa.0.0.vec.extract.i.i, %.sroa.0.4.vec.extract27.i.i ; 2 uses
  %.sroa.0.4.vec.insert31.i.i = shufflevector <2 x float> %.sroa.0.0.i.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.k = fsub float f0xBEAAAAAB, %.0.i.i
  %.1.i.i = select i1 %i.j, float %i.k, float %.0.i.i
  %.sroa.0.1.i.i = select i1 %i.j, <2 x float> %.sroa.0.4.vec.insert31.i.i, <2 x float> %.sroa.0.0.i.i ; 3 uses
  %.sroa.0.0.vec.extract18.i.i = extractelement <2 x float> %.sroa.0.1.i.i, i64 0 ; 2 uses
  %.sroa.0.4.vec.extract33.i.i = extractelement <2 x float> %.sroa.0.1.i.i, i64 1 ; 2 uses
  %.sroa.18.8.vec.extract46.i.i = select i1 %i.i, float %i.f, float %i.h ; 3 uses
  %i.l = fcmp olt float %.sroa.0.4.vec.extract33.i.i, %.sroa.18.8.vec.extract46.i.i
  %i.m = select i1 %i.l, float %.sroa.0.4.vec.extract33.i.i, float %.sroa.18.8.vec.extract46.i.i
  %i.n = insertelement <2 x float> poison, float %i.m, i64 0
  %i.o = insertelement <2 x float> %i.n, float %.sroa.18.8.vec.extract46.i.i, i64 1
  %i.p = fsub <2 x float> %.sroa.0.1.i.i, %i.o    ; 2 uses
  %i.q = extractelement <2 x float> %i.p, i64 0
  %i.r = tail call float @llvm.fmuladd.f32(float %i.q, float 6.000000e+00, float f0x1E3CE508)
  %2 = fadd float %.sroa.0.0.vec.extract18.i.i, f0x1E3CE508
  %i.s = insertelement <2 x float> poison, float %2, i64 0
  %i.t = insertelement <2 x float> %i.s, float %i.r, i64 1
  %i.u = fdiv <2 x float> %i.p, %i.t              ; 2 uses
  %i.v = extractelement <2 x float> %i.u, i64 1
  %i.w = fadd float %.1.i.i, %i.v                 ; 3 uses
  %i.x = fcmp olt float %i.w, 0.000000e+00
  %i.y = fneg float %i.w
  %i.z = select i1 %i.x, float %i.y, float %i.w
  store float %i.z, ptr %0, align 4, !tbaa !54
  %i.aa = extractelement <2 x float> %i.u, i64 0
  store float %i.aa, ptr %i.a, align 4, !tbaa !54
  store float %.sroa.0.0.vec.extract18.i.i, ptr %i.b, align 4, !tbaa !54
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @nk_colorf_hsva_f(ptr nofree noundef writeonly captures(none) initializes((0, 4)) %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %3, <2 x float> %4, <2 x float> %5) local_unnamed_addr #4 {
bb.a:
  %.sroa.0.4.vec.extract = extractelement <2 x float> %4, i64 1
  %.sroa.18.8.vec.extract = extractelement <2 x float> %5, i64 0
  %i.a = fcmp olt float %.sroa.0.4.vec.extract, %.sroa.18.8.vec.extract ; 3 uses
  %.sroa.0.4.vec.insert = shufflevector <2 x float> %4, <2 x float> %5, <2 x i32> <i32 0, i32 2>
  %.sroa.18.8.vec.insert = shufflevector <2 x float> %5, <2 x float> %4, <2 x i32> <i32 3, i32 1>
  %.0 = select i1 %i.a, float -1.000000e+00, float 0.000000e+00 ; 2 uses
  %.sroa.0.0 = select i1 %i.a, <2 x float> %.sroa.0.4.vec.insert, <2 x float> %4 ; 4 uses
  %.sroa.18.0 = select i1 %i.a, <2 x float> %.sroa.18.8.vec.insert, <2 x float> %5 ; 3 uses
  %.sroa.0.0.vec.extract = extractelement <2 x float> %.sroa.0.0, i64 0
  %.sroa.0.4.vec.extract27 = extractelement <2 x float> %.sroa.0.0, i64 1
  %i.b = fcmp olt float %.sroa.0.0.vec.extract, %.sroa.0.4.vec.extract27 ; 2 uses
  %.sroa.0.4.vec.insert31 = shufflevector <2 x float> %.sroa.0.0, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.c = fsub float f0xBEAAAAAB, %.0
  %.1 = select i1 %i.b, float %i.c, float %.0
  %.sroa.0.1 = select i1 %i.b, <2 x float> %.sroa.0.4.vec.insert31, <2 x float> %.sroa.0.0 ; 3 uses
  %.sroa.0.0.vec.extract18 = extractelement <2 x float> %.sroa.0.1, i64 0 ; 2 uses
  %.sroa.0.4.vec.extract33 = extractelement <2 x float> %.sroa.0.1, i64 1 ; 2 uses
  %.sroa.18.8.vec.extract46 = extractelement <2 x float> %.sroa.18.0, i64 0 ; 2 uses
  %i.d = fcmp olt float %.sroa.0.4.vec.extract33, %.sroa.18.8.vec.extract46
  %i.e = select i1 %i.d, float %.sroa.0.4.vec.extract33, float %.sroa.18.8.vec.extract46
  %i.f = shufflevector <2 x float> %.sroa.18.0, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.g = insertelement <2 x float> %i.f, float %i.e, i64 0
  %i.h = fsub <2 x float> %.sroa.0.1, %i.g        ; 2 uses
  %i.i = extractelement <2 x float> %i.h, i64 0
  %i.j = tail call float @llvm.fmuladd.f32(float %i.i, float 6.000000e+00, float f0x1E3CE508)
  %6 = fadd float %.sroa.0.0.vec.extract18, f0x1E3CE508
  %i.k = insertelement <2 x float> poison, float %6, i64 0
  %i.l = insertelement <2 x float> %i.k, float %i.j, i64 1
  %i.m = fdiv <2 x float> %i.h, %i.l              ; 2 uses
  %i.n = extractelement <2 x float> %i.m, i64 1
  %i.o = fadd float %.1, %i.n                     ; 3 uses
  %i.p = fcmp olt float %i.o, 0.000000e+00
  %i.q = fneg float %i.o
  %i.r = select i1 %i.p, float %i.q, float %i.o
  store float %i.r, ptr %0, align 4, !tbaa !54
  %i.s = extractelement <2 x float> %i.m, i64 0
  store float %i.s, ptr %1, align 4, !tbaa !54
  store float %.sroa.0.0.vec.extract18, ptr %2, align 4, !tbaa !54
  %.sroa.18.12.vec.extract = extractelement <2 x float> %.sroa.18.0, i64 1
  store float %.sroa.18.12.vec.extract, ptr %3, align 4, !tbaa !54
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @nk_colorf_hsva_fv(ptr nofree noundef writeonly captures(none) initializes((0, 16)) %0, <2 x float> %1, <2 x float> %2) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.0.4.vec.extract.i = extractelement <2 x float> %1, i64 1
  %.sroa.18.8.vec.extract.i = extractelement <2 x float> %2, i64 0
  %i.d = fcmp olt float %.sroa.0.4.vec.extract.i, %.sroa.18.8.vec.extract.i ; 3 uses
  %.sroa.0.4.vec.insert.i = shufflevector <2 x float> %1, <2 x float> %2, <2 x i32> <i32 0, i32 2>
  %.sroa.18.8.vec.insert.i = shufflevector <2 x float> %2, <2 x float> %1, <2 x i32> <i32 3, i32 1>
  %.0.i = select i1 %i.d, float -1.000000e+00, float 0.000000e+00 ; 2 uses
  %.sroa.0.0.i = select i1 %i.d, <2 x float> %.sroa.0.4.vec.insert.i, <2 x float> %1 ; 4 uses
  %.sroa.18.0.i = select i1 %i.d, <2 x float> %.sroa.18.8.vec.insert.i, <2 x float> %2 ; 3 uses
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %.sroa.0.0.i, i64 0
  %.sroa.0.4.vec.extract27.i = extractelement <2 x float> %.sroa.0.0.i, i64 1
  %i.e = fcmp olt float %.sroa.0.0.vec.extract.i, %.sroa.0.4.vec.extract27.i ; 2 uses
  %.sroa.0.4.vec.insert31.i = shufflevector <2 x float> %.sroa.0.0.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.f = fsub float f0xBEAAAAAB, %.0.i
  %.1.i = select i1 %i.e, float %i.f, float %.0.i
  %.sroa.0.1.i = select i1 %i.e, <2 x float> %.sroa.0.4.vec.insert31.i, <2 x float> %.sroa.0.0.i ; 3 uses
  %.sroa.0.0.vec.extract18.i = extractelement <2 x float> %.sroa.0.1.i, i64 0 ; 2 uses
  %.sroa.0.4.vec.extract33.i = extractelement <2 x float> %.sroa.0.1.i, i64 1 ; 2 uses
  %.sroa.18.8.vec.extract46.i = extractelement <2 x float> %.sroa.18.0.i, i64 0 ; 2 uses
  %i.g = fcmp olt float %.sroa.0.4.vec.extract33.i, %.sroa.18.8.vec.extract46.i
  %i.h = select i1 %i.g, float %.sroa.0.4.vec.extract33.i, float %.sroa.18.8.vec.extract46.i
  %i.i = shufflevector <2 x float> %.sroa.18.0.i, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.j = insertelement <2 x float> %i.i, float %i.h, i64 0
  %i.k = fsub <2 x float> %.sroa.0.1.i, %i.j      ; 2 uses
  %i.l = extractelement <2 x float> %i.k, i64 0
  %i.m = tail call float @llvm.fmuladd.f32(float %i.l, float 6.000000e+00, float f0x1E3CE508)
  %3 = fadd float %.sroa.0.0.vec.extract18.i, f0x1E3CE508
  %i.n = insertelement <2 x float> poison, float %3, i64 0
  %i.o = insertelement <2 x float> %i.n, float %i.m, i64 1
  %i.p = fdiv <2 x float> %i.k, %i.o              ; 2 uses
  %i.q = extractelement <2 x float> %i.p, i64 1
  %i.r = fadd float %.1.i, %i.q                   ; 3 uses
  %i.s = fcmp olt float %i.r, 0.000000e+00
  %i.t = fneg float %i.r
  %i.u = select i1 %i.s, float %i.t, float %i.r
  store float %i.u, ptr %0, align 4, !tbaa !54
  %i.v = extractelement <2 x float> %i.p, i64 0
  store float %i.v, ptr %i.a, align 4, !tbaa !54
  store float %.sroa.0.0.vec.extract18.i, ptr %i.b, align 4, !tbaa !54
  %.sroa.18.12.vec.extract.i = extractelement <2 x float> %.sroa.18.0.i, i64 1
  store float %.sroa.18.12.vec.extract.i, ptr %i.c, align 4, !tbaa !54
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @nk_color_hsva_fv(ptr nofree noundef writeonly captures(none) initializes((0, 16)) %0, i32 %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.0.0.extract.trunc.i.i = trunc i32 %1 to i8
  %.sroa.2.0.extract.shift.i.i = lshr i32 %1, 8
  %.sroa.2.0.extract.trunc.i.i = trunc i32 %.sroa.2.0.extract.shift.i.i to i8
  %i.d = uitofp i8 %.sroa.0.0.extract.trunc.i.i to float
  %i.e = fmul nnan float %i.d, f0x3B808081
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %i.e, i64 0 ; 2 uses
  %i.f = uitofp i8 %.sroa.2.0.extract.trunc.i.i to float
  %i.g = fmul nnan float %i.f, f0x3B808081        ; 3 uses
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i, float %i.g, i64 1
  %i.h = bitcast i32 %1 to <4 x i8>
  %i.i = shufflevector <4 x i8> %i.h, <4 x i8> poison, <2 x i32> <i32 2, i32 3>
  %i.j = uitofp <2 x i8> %i.i to <2 x float>
  %i.k = fmul nnan <2 x float> %i.j, splat (float f0x3B808081) ; 4 uses
  %i.l = extractelement <2 x float> %i.k, i64 0
  %i.m = fcmp olt float %i.g, %i.l                ; 3 uses
  %i.n = shufflevector <2 x float> %.sroa.0.0.vec.insert.i, <2 x float> %i.k, <2 x i32> <i32 0, i32 2>
  %.sroa.18.8.vec.insert.i.i = insertelement <2 x float> %i.k, float %i.g, i64 0
  %.0.i.i = select i1 %i.m, float -1.000000e+00, float 0.000000e+00 ; 2 uses
  %.sroa.0.0.i.i = select i1 %i.m, <2 x float> %i.n, <2 x float> %.sroa.0.4.vec.insert.i ; 4 uses
  %.sroa.18.0.i.i = select i1 %i.m, <2 x float> %.sroa.18.8.vec.insert.i.i, <2 x float> %i.k ; 3 uses
  %.sroa.0.0.vec.extract.i.i = extractelement <2 x float> %.sroa.0.0.i.i, i64 0
  %.sroa.0.4.vec.extract27.i.i = extractelement <2 x float> %.sroa.0.0.i.i, i64 1
  %i.o = fcmp olt float %.sroa.0.0.vec.extract.i.i, %.sroa.0.4.vec.extract27.i.i ; 2 uses
  %.sroa.0.4.vec.insert31.i.i = shufflevector <2 x float> %.sroa.0.0.i.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.p = fsub float f0xBEAAAAAB, %.0.i.i
  %.1.i.i = select i1 %i.o, float %i.p, float %.0.i.i
  %.sroa.0.1.i.i = select i1 %i.o, <2 x float> %.sroa.0.4.vec.insert31.i.i, <2 x float> %.sroa.0.0.i.i ; 3 uses
  %.sroa.0.0.vec.extract18.i.i = extractelement <2 x float> %.sroa.0.1.i.i, i64 0 ; 2 uses
  %.sroa.0.4.vec.extract33.i.i = extractelement <2 x float> %.sroa.0.1.i.i, i64 1 ; 2 uses
  %.sroa.18.8.vec.extract46.i.i = extractelement <2 x float> %.sroa.18.0.i.i, i64 0 ; 2 uses
  %i.q = fcmp olt float %.sroa.0.4.vec.extract33.i.i, %.sroa.18.8.vec.extract46.i.i
  %i.r = select i1 %i.q, float %.sroa.0.4.vec.extract33.i.i, float %.sroa.18.8.vec.extract46.i.i
  %i.s = shufflevector <2 x float> %.sroa.18.0.i.i, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.t = insertelement <2 x float> %i.s, float %i.r, i64 0
  %i.u = fsub <2 x float> %.sroa.0.1.i.i, %i.t    ; 2 uses
  %i.v = extractelement <2 x float> %i.u, i64 0
  %i.w = tail call float @llvm.fmuladd.f32(float %i.v, float 6.000000e+00, float f0x1E3CE508)
  %2 = fadd float %.sroa.0.0.vec.extract18.i.i, f0x1E3CE508
  %i.x = insertelement <2 x float> poison, float %2, i64 0
  %i.y = insertelement <2 x float> %i.x, float %i.w, i64 1
  %i.z = fdiv <2 x float> %i.u, %i.y              ; 2 uses
  %i.aa = extractelement <2 x float> %i.z, i64 1
  %i.ab = fadd float %.1.i.i, %i.aa               ; 3 uses
  %i.ac = fcmp olt float %i.ab, 0.000000e+00
  %i.ad = fneg float %i.ab
  %i.ae = select i1 %i.ac, float %i.ad, float %i.ab
  store float %i.ae, ptr %0, align 4, !tbaa !54
  %i.af = extractelement <2 x float> %i.z, i64 0
  store float %i.af, ptr %i.a, align 4, !tbaa !54
  store float %.sroa.0.0.vec.extract18.i.i, ptr %i.b, align 4, !tbaa !54
  %.sroa.18.12.vec.extract.i.i = extractelement <2 x float> %.sroa.18.0.i.i, i64 1
  store float %.sroa.18.12.vec.extract.i.i, ptr %i.c, align 4, !tbaa !54
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @nk_color_hsva_i(ptr nofree noundef writeonly captures(none) initializes((0, 4)) %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %3, i32 %4) local_unnamed_addr #4 {
bb.a:
  %.sroa.0.0.extract.trunc.i.i = trunc i32 %4 to i8
  %.sroa.2.0.extract.shift.i.i = lshr i32 %4, 8
  %.sroa.2.0.extract.trunc.i.i = trunc i32 %.sroa.2.0.extract.shift.i.i to i8
  %i.a = uitofp i8 %.sroa.0.0.extract.trunc.i.i to float
  %i.b = fmul nnan float %i.a, f0x3B808081
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %i.b, i64 0 ; 2 uses
  %i.c = uitofp i8 %.sroa.2.0.extract.trunc.i.i to float
  %i.d = fmul nnan float %i.c, f0x3B808081        ; 3 uses
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i, float %i.d, i64 1
  %i.e = bitcast i32 %4 to <4 x i8>
  %i.f = shufflevector <4 x i8> %i.e, <4 x i8> poison, <2 x i32> <i32 2, i32 3>
  %i.g = uitofp <2 x i8> %i.f to <2 x float>
  %i.h = fmul nnan <2 x float> %i.g, splat (float f0x3B808081) ; 4 uses
  %i.i = extractelement <2 x float> %i.h, i64 0
  %i.j = fcmp olt float %i.d, %i.i                ; 3 uses
  %i.k = shufflevector <2 x float> %.sroa.0.0.vec.insert.i, <2 x float> %i.h, <2 x i32> <i32 0, i32 2>
  %.sroa.18.8.vec.insert.i.i = insertelement <2 x float> %i.h, float %i.d, i64 0
  %.0.i.i = select i1 %i.j, float -1.000000e+00, float 0.000000e+00 ; 2 uses
  %.sroa.0.0.i.i = select i1 %i.j, <2 x float> %i.k, <2 x float> %.sroa.0.4.vec.insert.i ; 4 uses
  %.sroa.18.0.i.i = select i1 %i.j, <2 x float> %.sroa.18.8.vec.insert.i.i, <2 x float> %i.h ; 3 uses
  %.sroa.0.0.vec.extract.i.i = extractelement <2 x float> %.sroa.0.0.i.i, i64 0
  %.sroa.0.4.vec.extract27.i.i = extractelement <2 x float> %.sroa.0.0.i.i, i64 1
  %i.l = fcmp olt float %.sroa.0.0.vec.extract.i.i, %.sroa.0.4.vec.extract27.i.i ; 2 uses
  %.sroa.0.4.vec.insert31.i.i = shufflevector <2 x float> %.sroa.0.0.i.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.m = fsub float f0xBEAAAAAB, %.0.i.i
  %.1.i.i = select i1 %i.l, float %i.m, float %.0.i.i
  %.sroa.0.1.i.i = select i1 %i.l, <2 x float> %.sroa.0.4.vec.insert31.i.i, <2 x float> %.sroa.0.0.i.i ; 4 uses
  %.sroa.0.0.vec.extract18.i.i = extractelement <2 x float> %.sroa.0.1.i.i, i64 0
  %.sroa.0.4.vec.extract33.i.i = extractelement <2 x float> %.sroa.0.1.i.i, i64 1 ; 2 uses
  %.sroa.18.8.vec.extract46.i.i = extractelement <2 x float> %.sroa.18.0.i.i, i64 0 ; 2 uses
  %i.n = fcmp olt float %.sroa.0.4.vec.extract33.i.i, %.sroa.18.8.vec.extract46.i.i
  %i.o = select i1 %i.n, float %.sroa.0.4.vec.extract33.i.i, float %.sroa.18.8.vec.extract46.i.i
  %i.p = shufflevector <2 x float> %.sroa.18.0.i.i, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.q = insertelement <2 x float> %i.p, float %i.o, i64 0
  %i.r = fsub <2 x float> %.sroa.0.1.i.i, %i.q    ; 2 uses
  %i.s = extractelement <2 x float> %i.r, i64 0
  %i.t = tail call float @llvm.fmuladd.f32(float %i.s, float 6.000000e+00, float f0x1E3CE508)
  %5 = fadd float %.sroa.0.0.vec.extract18.i.i, f0x1E3CE508
  %i.u = insertelement <2 x float> poison, float %5, i64 0
  %i.v = insertelement <2 x float> %i.u, float %i.t, i64 1
  %i.w = fdiv <2 x float> %i.r, %i.v              ; 2 uses
  %i.x = extractelement <2 x float> %i.w, i64 1
  %i.y = fadd float %.1.i.i, %i.x                 ; 3 uses
  %i.z = fcmp olt float %i.y, 0.000000e+00
  %i.aa = fneg float %i.y
  %i.ab = select i1 %i.z, float %i.aa, float %i.y
  %i.ac = shufflevector <2 x float> %i.w, <2 x float> %.sroa.0.1.i.i, <4 x i32> <i32 poison, i32 0, i32 2, i32 poison>
  %i.ad = insertelement <4 x float> %i.ac, float %i.ab, i64 0
  %i.ae = shufflevector <2 x float> %.sroa.18.0.i.i, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.af = shufflevector <4 x float> %i.ad, <4 x float> %i.ae, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.ag = fmul <4 x float> %i.af, splat (float 2.550000e+02)
  %i.ah = fptoui <4 x float> %i.ag to <4 x i8>    ; 4 uses
  %i.ai = extractelement <4 x i8> %i.ah, i64 0
  %i.aj = zext i8 %i.ai to i32
  store i32 %i.aj, ptr %0, align 4, !tbaa !55
  %i.ak = extractelement <4 x i8> %i.ah, i64 1
  %i.al = zext i8 %i.ak to i32
  store i32 %i.al, ptr %1, align 4, !tbaa !55
  %i.am = extractelement <4 x i8> %i.ah, i64 2
  %i.an = zext i8 %i.am to i32
  store i32 %i.an, ptr %2, align 4, !tbaa !55
  %i.ao = extractelement <4 x i8> %i.ah, i64 3
  %i.ap = zext i8 %i.ao to i32
  store i32 %i.ap, ptr %3, align 4, !tbaa !55
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @nk_color_hsva_iv(ptr nofree noundef writeonly captures(none) initializes((0, 16)) %0, i32 %1) local_unnamed_addr #4 {
bb.a:
  %.sroa.0.0.extract.trunc.i.i.i = trunc i32 %1 to i8
  %.sroa.2.0.extract.shift.i.i.i = lshr i32 %1, 8
  %.sroa.2.0.extract.trunc.i.i.i = trunc i32 %.sroa.2.0.extract.shift.i.i.i to i8
  %i.a = uitofp i8 %.sroa.0.0.extract.trunc.i.i.i to float
  %i.b = fmul nnan float %i.a, f0x3B808081
  %.sroa.0.0.vec.insert.i.i = insertelement <2 x float> poison, float %i.b, i64 0 ; 2 uses
  %i.c = uitofp i8 %.sroa.2.0.extract.trunc.i.i.i to float
  %i.d = fmul nnan float %i.c, f0x3B808081        ; 3 uses
  %.sroa.0.4.vec.insert.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i, float %i.d, i64 1
  %i.e = bitcast i32 %1 to <4 x i8>
  %i.f = shufflevector <4 x i8> %i.e, <4 x i8> poison, <2 x i32> <i32 2, i32 3>
  %i.g = uitofp <2 x i8> %i.f to <2 x float>
  %i.h = fmul nnan <2 x float> %i.g, splat (float f0x3B808081) ; 4 uses
  %i.i = extractelement <2 x float> %i.h, i64 0
  %i.j = fcmp olt float %i.d, %i.i                ; 3 uses
  %i.k = shufflevector <2 x float> %.sroa.0.0.vec.insert.i.i, <2 x float> %i.h, <2 x i32> <i32 0, i32 2>
  %.sroa.18.8.vec.insert.i.i.i = insertelement <2 x float> %i.h, float %i.d, i64 0
  %.0.i.i.i = select i1 %i.j, float -1.000000e+00, float 0.000000e+00 ; 2 uses
  %.sroa.0.0.i.i.i = select i1 %i.j, <2 x float> %i.k, <2 x float> %.sroa.0.4.vec.insert.i.i ; 4 uses
  %.sroa.18.0.i.i.i = select i1 %i.j, <2 x float> %.sroa.18.8.vec.insert.i.i.i, <2 x float> %i.h ; 3 uses
  %.sroa.0.0.vec.extract.i.i.i = extractelement <2 x float> %.sroa.0.0.i.i.i, i64 0
  %.sroa.0.4.vec.extract27.i.i.i = extractelement <2 x float> %.sroa.0.0.i.i.i, i64 1
  %i.l = fcmp olt float %.sroa.0.0.vec.extract.i.i.i, %.sroa.0.4.vec.extract27.i.i.i ; 2 uses
  %.sroa.0.4.vec.insert31.i.i.i = shufflevector <2 x float> %.sroa.0.0.i.i.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.m = fsub float f0xBEAAAAAB, %.0.i.i.i
  %.1.i.i.i = select i1 %i.l, float %i.m, float %.0.i.i.i
  %.sroa.0.1.i.i.i = select i1 %i.l, <2 x float> %.sroa.0.4.vec.insert31.i.i.i, <2 x float> %.sroa.0.0.i.i.i ; 4 uses
  %.sroa.0.0.vec.extract18.i.i.i = extractelement <2 x float> %.sroa.0.1.i.i.i, i64 0
  %.sroa.0.4.vec.extract33.i.i.i = extractelement <2 x float> %.sroa.0.1.i.i.i, i64 1 ; 2 uses
  %.sroa.18.8.vec.extract46.i.i.i = extractelement <2 x float> %.sroa.18.0.i.i.i, i64 0 ; 2 uses
  %i.n = fcmp olt float %.sroa.0.4.vec.extract33.i.i.i, %.sroa.18.8.vec.extract46.i.i.i
  %i.o = select i1 %i.n, float %.sroa.0.4.vec.extract33.i.i.i, float %.sroa.18.8.vec.extract46.i.i.i
  %i.p = shufflevector <2 x float> %.sroa.18.0.i.i.i, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.q = insertelement <2 x float> %i.p, float %i.o, i64 0
  %i.r = fsub <2 x float> %.sroa.0.1.i.i.i, %i.q  ; 2 uses
  %i.s = extractelement <2 x float> %i.r, i64 0
  %i.t = tail call float @llvm.fmuladd.f32(float %i.s, float 6.000000e+00, float f0x1E3CE508)
  %2 = fadd float %.sroa.0.0.vec.extract18.i.i.i, f0x1E3CE508
  %i.u = insertelement <2 x float> poison, float %2, i64 0
  %i.v = insertelement <2 x float> %i.u, float %i.t, i64 1
  %i.w = fdiv <2 x float> %i.r, %i.v              ; 2 uses
  %i.x = extractelement <2 x float> %i.w, i64 1
  %i.y = fadd float %.1.i.i.i, %i.x               ; 3 uses
  %i.z = fcmp olt float %i.y, 0.000000e+00
  %i.aa = fneg float %i.y
  %i.ab = select i1 %i.z, float %i.aa, float %i.y
  %i.ac = shufflevector <2 x float> %.sroa.0.1.i.i.i, <2 x float> %.sroa.18.0.i.i.i, <4 x i32> <i32 poison, i32 poison, i32 0, i32 3>
  %i.ad = insertelement <4 x float> %i.ac, float %i.ab, i64 0
  %i.ae = shufflevector <2 x float> %i.w, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.af = shufflevector <4 x float> %i.ad, <4 x float> %i.ae, <4 x i32> <i32 0, i32 4, i32 2, i32 3>
  %i.ag = fmul <4 x float> %i.af, splat (float 2.550000e+02)
  %i.ah = fptoui <4 x float> %i.ag to <4 x i8>
  %i.ai = zext <4 x i8> %i.ah to <4 x i32>
  store <4 x i32> %i.ai, ptr %0, align 4, !tbaa !55
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @nk_color_hsva_bv(ptr nofree noundef writeonly captures(none) initializes((0, 4)) %0, i32 %1) local_unnamed_addr #4 {
bb.a:
  %.sroa.0.0.extract.trunc.i.i.i = trunc i32 %1 to i8
  %.sroa.2.0.extract.shift.i.i.i = lshr i32 %1, 8
  %.sroa.2.0.extract.trunc.i.i.i = trunc i32 %.sroa.2.0.extract.shift.i.i.i to i8
  %i.a = uitofp i8 %.sroa.0.0.extract.trunc.i.i.i to float
  %i.b = fmul nnan float %i.a, f0x3B808081
  %.sroa.0.0.vec.insert.i.i = insertelement <2 x float> poison, float %i.b, i64 0 ; 2 uses
  %i.c = uitofp i8 %.sroa.2.0.extract.trunc.i.i.i to float
  %i.d = fmul nnan float %i.c, f0x3B808081        ; 3 uses
  %.sroa.0.4.vec.insert.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i, float %i.d, i64 1
  %i.e = bitcast i32 %1 to <4 x i8>
  %i.f = shufflevector <4 x i8> %i.e, <4 x i8> poison, <2 x i32> <i32 2, i32 3>
  %i.g = uitofp <2 x i8> %i.f to <2 x float>
  %i.h = fmul nnan <2 x float> %i.g, splat (float f0x3B808081) ; 4 uses
  %i.i = extractelement <2 x float> %i.h, i64 0
  %i.j = fcmp olt float %i.d, %i.i                ; 3 uses
  %i.k = shufflevector <2 x float> %.sroa.0.0.vec.insert.i.i, <2 x float> %i.h, <2 x i32> <i32 0, i32 2>
  %.sroa.18.8.vec.insert.i.i.i = insertelement <2 x float> %i.h, float %i.d, i64 0
  %.0.i.i.i = select i1 %i.j, float -1.000000e+00, float 0.000000e+00 ; 2 uses
  %.sroa.0.0.i.i.i = select i1 %i.j, <2 x float> %i.k, <2 x float> %.sroa.0.4.vec.insert.i.i ; 4 uses
  %.sroa.18.0.i.i.i = select i1 %i.j, <2 x float> %.sroa.18.8.vec.insert.i.i.i, <2 x float> %i.h ; 3 uses
  %.sroa.0.0.vec.extract.i.i.i = extractelement <2 x float> %.sroa.0.0.i.i.i, i64 0
  %.sroa.0.4.vec.extract27.i.i.i = extractelement <2 x float> %.sroa.0.0.i.i.i, i64 1
  %i.l = fcmp olt float %.sroa.0.0.vec.extract.i.i.i, %.sroa.0.4.vec.extract27.i.i.i ; 2 uses
  %.sroa.0.4.vec.insert31.i.i.i = shufflevector <2 x float> %.sroa.0.0.i.i.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.m = fsub float f0xBEAAAAAB, %.0.i.i.i
  %.1.i.i.i = select i1 %i.l, float %i.m, float %.0.i.i.i
  %.sroa.0.1.i.i.i = select i1 %i.l, <2 x float> %.sroa.0.4.vec.insert31.i.i.i, <2 x float> %.sroa.0.0.i.i.i ; 4 uses
  %.sroa.0.0.vec.extract18.i.i.i = extractelement <2 x float> %.sroa.0.1.i.i.i, i64 0
  %.sroa.0.4.vec.extract33.i.i.i = extractelement <2 x float> %.sroa.0.1.i.i.i, i64 1 ; 2 uses
  %.sroa.18.8.vec.extract46.i.i.i = extractelement <2 x float> %.sroa.18.0.i.i.i, i64 0 ; 2 uses
  %i.n = fcmp olt float %.sroa.0.4.vec.extract33.i.i.i, %.sroa.18.8.vec.extract46.i.i.i
  %i.o = select i1 %i.n, float %.sroa.0.4.vec.extract33.i.i.i, float %.sroa.18.8.vec.extract46.i.i.i
  %i.p = shufflevector <2 x float> %.sroa.18.0.i.i.i, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.q = insertelement <2 x float> %i.p, float %i.o, i64 0
  %i.r = fsub <2 x float> %.sroa.0.1.i.i.i, %i.q  ; 2 uses
  %i.s = extractelement <2 x float> %i.r, i64 0
  %i.t = tail call float @llvm.fmuladd.f32(float %i.s, float 6.000000e+00, float f0x1E3CE508)
  %2 = fadd float %.sroa.0.0.vec.extract18.i.i.i, f0x1E3CE508
  %i.u = insertelement <2 x float> poison, float %2, i64 0
  %i.v = insertelement <2 x float> %i.u, float %i.t, i64 1
  %i.w = fdiv <2 x float> %i.r, %i.v              ; 2 uses
  %i.x = extractelement <2 x float> %i.w, i64 1
  %i.y = fadd float %.1.i.i.i, %i.x               ; 3 uses
  %i.z = fcmp olt float %i.y, 0.000000e+00
  %i.aa = fneg float %i.y
  %i.ab = select i1 %i.z, float %i.aa, float %i.y
  %i.ac = shufflevector <2 x float> %.sroa.0.1.i.i.i, <2 x float> %.sroa.18.0.i.i.i, <4 x i32> <i32 poison, i32 poison, i32 0, i32 3>
  %i.ad = insertelement <4 x float> %i.ac, float %i.ab, i64 0
  %i.ae = shufflevector <2 x float> %i.w, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.af = shufflevector <4 x float> %i.ad, <4 x float> %i.ae, <4 x i32> <i32 0, i32 4, i32 2, i32 3>
  %i.ag = fmul <4 x float> %i.af, splat (float 2.550000e+02)
  %i.ah = fptoui <4 x float> %i.ag to <4 x i8>
  store <4 x i8> %i.ah, ptr %0, align 1, !tbaa !56
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @nk_color_hsva_b(ptr nofree noundef writeonly captures(none) initializes((0, 1)) %0, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %2, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %3, i32 %4) local_unnamed_addr #4 {
bb.a:
  %.sroa.0.0.extract.trunc.i.i.i = trunc i32 %4 to i8
  %.sroa.2.0.extract.shift.i.i.i = lshr i32 %4, 8
  %.sroa.2.0.extract.trunc.i.i.i = trunc i32 %.sroa.2.0.extract.shift.i.i.i to i8
  %i.a = uitofp i8 %.sroa.0.0.extract.trunc.i.i.i to float
  %i.b = fmul nnan float %i.a, f0x3B808081
  %.sroa.0.0.vec.insert.i.i = insertelement <2 x float> poison, float %i.b, i64 0 ; 2 uses
  %i.c = uitofp i8 %.sroa.2.0.extract.trunc.i.i.i to float
  %i.d = fmul nnan float %i.c, f0x3B808081        ; 3 uses
  %.sroa.0.4.vec.insert.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i, float %i.d, i64 1
  %i.e = bitcast i32 %4 to <4 x i8>
  %i.f = shufflevector <4 x i8> %i.e, <4 x i8> poison, <2 x i32> <i32 2, i32 3>
  %i.g = uitofp <2 x i8> %i.f to <2 x float>
  %i.h = fmul nnan <2 x float> %i.g, splat (float f0x3B808081) ; 4 uses
  %i.i = extractelement <2 x float> %i.h, i64 0
  %i.j = fcmp olt float %i.d, %i.i                ; 3 uses
  %i.k = shufflevector <2 x float> %.sroa.0.0.vec.insert.i.i, <2 x float> %i.h, <2 x i32> <i32 0, i32 2>
  %.sroa.18.8.vec.insert.i.i.i = insertelement <2 x float> %i.h, float %i.d, i64 0
  %.0.i.i.i = select i1 %i.j, float -1.000000e+00, float 0.000000e+00 ; 2 uses
  %.sroa.0.0.i.i.i = select i1 %i.j, <2 x float> %i.k, <2 x float> %.sroa.0.4.vec.insert.i.i ; 4 uses
  %.sroa.18.0.i.i.i = select i1 %i.j, <2 x float> %.sroa.18.8.vec.insert.i.i.i, <2 x float> %i.h ; 3 uses
  %.sroa.0.0.vec.extract.i.i.i = extractelement <2 x float> %.sroa.0.0.i.i.i, i64 0
  %.sroa.0.4.vec.extract27.i.i.i = extractelement <2 x float> %.sroa.0.0.i.i.i, i64 1
  %i.l = fcmp olt float %.sroa.0.0.vec.extract.i.i.i, %.sroa.0.4.vec.extract27.i.i.i ; 2 uses
  %.sroa.0.4.vec.insert31.i.i.i = shufflevector <2 x float> %.sroa.0.0.i.i.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.m = fsub float f0xBEAAAAAB, %.0.i.i.i
  %.1.i.i.i = select i1 %i.l, float %i.m, float %.0.i.i.i
  %.sroa.0.1.i.i.i = select i1 %i.l, <2 x float> %.sroa.0.4.vec.insert31.i.i.i, <2 x float> %.sroa.0.0.i.i.i ; 3 uses
  %.sroa.0.0.vec.extract18.i.i.i = extractelement <2 x float> %.sroa.0.1.i.i.i, i64 0 ; 2 uses
  %.sroa.0.4.vec.extract33.i.i.i = extractelement <2 x float> %.sroa.0.1.i.i.i, i64 1 ; 2 uses
  %.sroa.18.8.vec.extract46.i.i.i = extractelement <2 x float> %.sroa.18.0.i.i.i, i64 0 ; 2 uses
  %i.n = fcmp olt float %.sroa.0.4.vec.extract33.i.i.i, %.sroa.18.8.vec.extract46.i.i.i
  %i.o = select i1 %i.n, float %.sroa.0.4.vec.extract33.i.i.i, float %.sroa.18.8.vec.extract46.i.i.i
  %i.p = shufflevector <2 x float> %.sroa.18.0.i.i.i, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.q = insertelement <2 x float> %i.p, float %i.o, i64 0
  %i.r = fsub <2 x float> %.sroa.0.1.i.i.i, %i.q  ; 2 uses
  %i.s = extractelement <2 x float> %i.r, i64 0
  %i.t = tail call float @llvm.fmuladd.f32(float %i.s, float 6.000000e+00, float f0x1E3CE508)
  %5 = fadd float %.sroa.0.0.vec.extract18.i.i.i, f0x1E3CE508
  %i.u = insertelement <2 x float> poison, float %5, i64 0
  %i.v = insertelement <2 x float> %i.u, float %i.t, i64 1
  %i.w = fdiv <2 x float> %i.r, %i.v              ; 2 uses
  %i.x = extractelement <2 x float> %i.w, i64 1
  %i.y = fadd float %.1.i.i.i, %i.x               ; 3 uses
  %i.z = fcmp olt float %i.y, 0.000000e+00
  %i.aa = fneg float %i.y
  %i.ab = select i1 %i.z, float %i.aa, float %i.y
  %.sroa.18.12.vec.extract.i.i.i = extractelement <2 x float> %.sroa.18.0.i.i.i, i64 1
  %i.ac = fmul float %i.ab, 2.550000e+02
  %i.ad = fptoui float %i.ac to i8
  %i.ae = extractelement <2 x float> %i.w, i64 0
  %i.af = fmul float %i.ae, 2.550000e+02
  %i.ag = fptoui float %i.af to i8
  %i.ah = fmul float %.sroa.0.0.vec.extract18.i.i.i, 2.550000e+02
  %i.ai = fptoui float %i.ah to i8
  %i.aj = fmul nnan float %.sroa.18.12.vec.extract.i.i.i, 2.550000e+02
  %i.ak = fptoui float %i.aj to i8
  store i8 %i.ad, ptr %0, align 1, !tbaa !56
  store i8 %i.ag, ptr %1, align 1, !tbaa !56
  store i8 %i.ai, ptr %2, align 1, !tbaa !56
  store i8 %i.ak, ptr %3, align 1, !tbaa !56
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @nk_color_hsv_i(ptr nofree noundef writeonly captures(none) initializes((0, 4)) %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2, i32 %3) local_unnamed_addr #4 {
bb.a:
  %.sroa.0.0.extract.trunc.i.i.i = trunc i32 %3 to i8
  %.sroa.2.0.extract.shift.i.i.i = lshr i32 %3, 8
  %.sroa.2.0.extract.trunc.i.i.i = trunc i32 %.sroa.2.0.extract.shift.i.i.i to i8
  %.sroa.3.0.extract.shift.i.i.i = lshr i32 %3, 16
  %.sroa.3.0.extract.trunc.i.i.i = trunc i32 %.sroa.3.0.extract.shift.i.i.i to i8
  %i.a = uitofp i8 %.sroa.0.0.extract.trunc.i.i.i to float
  %i.b = fmul nnan float %i.a, f0x3B808081
  %.sroa.0.0.vec.insert.i.i = insertelement <2 x float> poison, float %i.b, i64 0 ; 2 uses
  %i.c = uitofp i8 %.sroa.2.0.extract.trunc.i.i.i to float
  %i.d = fmul nnan float %i.c, f0x3B808081        ; 3 uses
  %.sroa.0.4.vec.insert.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i, float %i.d, i64 1
  %i.e = uitofp i8 %.sroa.3.0.extract.trunc.i.i.i to float
  %i.f = fmul nnan float %i.e, f0x3B808081        ; 3 uses
  %i.g = fcmp olt float %i.d, %i.f                ; 3 uses
  %.sroa.0.4.vec.insert.i.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i, float %i.f, i64 1
  %.0.i.i.i = select i1 %i.g, float -1.000000e+00, float 0.000000e+00 ; 2 uses
  %.sroa.0.0.i.i.i = select i1 %i.g, <2 x float> %.sroa.0.4.vec.insert.i.i.i, <2 x float> %.sroa.0.4.vec.insert.i.i ; 4 uses
  %.sroa.0.0.vec.extract.i.i.i = extractelement <2 x float> %.sroa.0.0.i.i.i, i64 0
  %.sroa.0.4.vec.extract27.i.i.i = extractelement <2 x float> %.sroa.0.0.i.i.i, i64 1
  %i.h = fcmp olt float %.sroa.0.0.vec.extract.i.i.i, %.sroa.0.4.vec.extract27.i.i.i ; 2 uses
  %.sroa.0.4.vec.insert31.i.i.i = shufflevector <2 x float> %.sroa.0.0.i.i.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.i = fsub float f0xBEAAAAAB, %.0.i.i.i
  %.1.i.i.i = select i1 %i.h, float %i.i, float %.0.i.i.i
  %.sroa.0.1.i.i.i = select i1 %i.h, <2 x float> %.sroa.0.4.vec.insert31.i.i.i, <2 x float> %.sroa.0.0.i.i.i ; 3 uses
  %.sroa.0.0.vec.extract18.i.i.i = extractelement <2 x float> %.sroa.0.1.i.i.i, i64 0 ; 2 uses
  %.sroa.0.4.vec.extract33.i.i.i = extractelement <2 x float> %.sroa.0.1.i.i.i, i64 1 ; 2 uses
  %.sroa.18.8.vec.extract46.i.i.i = select i1 %i.g, float %i.d, float %i.f ; 3 uses
  %i.j = fcmp olt float %.sroa.0.4.vec.extract33.i.i.i, %.sroa.18.8.vec.extract46.i.i.i
  %i.k = select i1 %i.j, float %.sroa.0.4.vec.extract33.i.i.i, float %.sroa.18.8.vec.extract46.i.i.i
  %i.l = insertelement <2 x float> poison, float %i.k, i64 0
  %i.m = insertelement <2 x float> %i.l, float %.sroa.18.8.vec.extract46.i.i.i, i64 1
  %i.n = fsub <2 x float> %.sroa.0.1.i.i.i, %i.m  ; 2 uses
  %i.o = extractelement <2 x float> %i.n, i64 0
  %i.p = tail call float @llvm.fmuladd.f32(float %i.o, float 6.000000e+00, float f0x1E3CE508)
  %4 = fadd float %.sroa.0.0.vec.extract18.i.i.i, f0x1E3CE508
  %i.q = insertelement <2 x float> poison, float %4, i64 0
  %i.r = insertelement <2 x float> %i.q, float %i.p, i64 1
  %i.s = fdiv <2 x float> %i.n, %i.r              ; 2 uses
  %i.t = extractelement <2 x float> %i.s, i64 1
  %i.u = fadd float %.1.i.i.i, %i.t               ; 3 uses
  %i.v = fcmp olt float %i.u, 0.000000e+00
  %i.w = fneg float %i.u
  %i.x = select i1 %i.v, float %i.w, float %i.u
  %i.y = fmul float %i.x, 2.550000e+02
  %i.z = fptoui float %i.y to i8
  %i.aa = zext i8 %i.z to i32
  store i32 %i.aa, ptr %0, align 4, !tbaa !55
  %i.ab = extractelement <2 x float> %i.s, i64 0
  %i.ac = fmul float %i.ab, 2.550000e+02
  %i.ad = fptoui float %i.ac to i8
  %i.ae = zext i8 %i.ad to i32
  store i32 %i.ae, ptr %1, align 4, !tbaa !55
  %i.af = fmul float %.sroa.0.0.vec.extract18.i.i.i, 2.550000e+02
  %i.ag = fptoui float %i.af to i8
  %i.ah = zext i8 %i.ag to i32
  store i32 %i.ah, ptr %2, align 4, !tbaa !55
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @nk_color_hsv_b(ptr nofree noundef writeonly captures(none) initializes((0, 1)) %0, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %2, i32 %3) local_unnamed_addr #4 {
bb.a:
  %.sroa.0.0.extract.trunc.i.i.i = trunc i32 %3 to i8
  %.sroa.2.0.extract.shift.i.i.i = lshr i32 %3, 8
  %.sroa.2.0.extract.trunc.i.i.i = trunc i32 %.sroa.2.0.extract.shift.i.i.i to i8
  %.sroa.3.0.extract.shift.i.i.i = lshr i32 %3, 16
  %.sroa.3.0.extract.trunc.i.i.i = trunc i32 %.sroa.3.0.extract.shift.i.i.i to i8
  %i.a = uitofp i8 %.sroa.0.0.extract.trunc.i.i.i to float
  %i.b = fmul nnan float %i.a, f0x3B808081
  %.sroa.0.0.vec.insert.i.i = insertelement <2 x float> poison, float %i.b, i64 0 ; 2 uses
  %i.c = uitofp i8 %.sroa.2.0.extract.trunc.i.i.i to float
  %i.d = fmul nnan float %i.c, f0x3B808081        ; 3 uses
  %.sroa.0.4.vec.insert.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i, float %i.d, i64 1
  %i.e = uitofp i8 %.sroa.3.0.extract.trunc.i.i.i to float
  %i.f = fmul nnan float %i.e, f0x3B808081        ; 3 uses
  %i.g = fcmp olt float %i.d, %i.f                ; 3 uses
  %.sroa.0.4.vec.insert.i.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i, float %i.f, i64 1
  %.0.i.i.i = select i1 %i.g, float -1.000000e+00, float 0.000000e+00 ; 2 uses
  %.sroa.0.0.i.i.i = select i1 %i.g, <2 x float> %.sroa.0.4.vec.insert.i.i.i, <2 x float> %.sroa.0.4.vec.insert.i.i ; 4 uses
  %.sroa.0.0.vec.extract.i.i.i = extractelement <2 x float> %.sroa.0.0.i.i.i, i64 0
  %.sroa.0.4.vec.extract27.i.i.i = extractelement <2 x float> %.sroa.0.0.i.i.i, i64 1
  %i.h = fcmp olt float %.sroa.0.0.vec.extract.i.i.i, %.sroa.0.4.vec.extract27.i.i.i ; 2 uses
  %.sroa.0.4.vec.insert31.i.i.i = shufflevector <2 x float> %.sroa.0.0.i.i.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.i = fsub float f0xBEAAAAAB, %.0.i.i.i
  %.1.i.i.i = select i1 %i.h, float %i.i, float %.0.i.i.i
  %.sroa.0.1.i.i.i = select i1 %i.h, <2 x float> %.sroa.0.4.vec.insert31.i.i.i, <2 x float> %.sroa.0.0.i.i.i ; 3 uses
  %.sroa.0.0.vec.extract18.i.i.i = extractelement <2 x float> %.sroa.0.1.i.i.i, i64 0 ; 2 uses
  %.sroa.0.4.vec.extract33.i.i.i = extractelement <2 x float> %.sroa.0.1.i.i.i, i64 1 ; 2 uses
  %.sroa.18.8.vec.extract46.i.i.i = select i1 %i.g, float %i.d, float %i.f ; 3 uses
  %i.j = fcmp olt float %.sroa.0.4.vec.extract33.i.i.i, %.sroa.18.8.vec.extract46.i.i.i
  %i.k = select i1 %i.j, float %.sroa.0.4.vec.extract33.i.i.i, float %.sroa.18.8.vec.extract46.i.i.i
  %i.l = insertelement <2 x float> poison, float %i.k, i64 0
  %i.m = insertelement <2 x float> %i.l, float %.sroa.18.8.vec.extract46.i.i.i, i64 1
  %i.n = fsub <2 x float> %.sroa.0.1.i.i.i, %i.m  ; 2 uses
  %i.o = extractelement <2 x float> %i.n, i64 0
  %i.p = tail call float @llvm.fmuladd.f32(float %i.o, float 6.000000e+00, float f0x1E3CE508)
  %4 = fadd float %.sroa.0.0.vec.extract18.i.i.i, f0x1E3CE508
  %i.q = insertelement <2 x float> poison, float %4, i64 0
  %i.r = insertelement <2 x float> %i.q, float %i.p, i64 1
  %i.s = fdiv <2 x float> %i.n, %i.r              ; 2 uses
  %i.t = extractelement <2 x float> %i.s, i64 1
  %i.u = fadd float %.1.i.i.i, %i.t               ; 3 uses
  %i.v = fcmp olt float %i.u, 0.000000e+00
  %i.w = fneg float %i.u
  %i.x = select i1 %i.v, float %i.w, float %i.u
  %i.y = fmul float %i.x, 2.550000e+02
  %i.z = fptoui float %i.y to i8
  %i.aa = extractelement <2 x float> %i.s, i64 0
  %i.ab = fmul float %i.aa, 2.550000e+02
  %i.ac = fptoui float %i.ab to i8
  %i.ad = fmul float %.sroa.0.0.vec.extract18.i.i.i, 2.550000e+02
  %i.ae = fptoui float %i.ad to i8
  store i8 %i.z, ptr %0, align 1, !tbaa !56
  store i8 %i.ac, ptr %1, align 1, !tbaa !56
  store i8 %i.ae, ptr %2, align 1, !tbaa !56
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @nk_color_hsv_iv(ptr nofree noundef writeonly captures(none) initializes((0, 12)) %0, i32 %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.extract.trunc.i.i.i.i = trunc i32 %1 to i8
  %.sroa.2.0.extract.shift.i.i.i.i = lshr i32 %1, 8
  %.sroa.2.0.extract.trunc.i.i.i.i = trunc i32 %.sroa.2.0.extract.shift.i.i.i.i to i8
  %.sroa.3.0.extract.shift.i.i.i.i = lshr i32 %1, 16
  %.sroa.3.0.extract.trunc.i.i.i.i = trunc i32 %.sroa.3.0.extract.shift.i.i.i.i to i8
  %i.b = uitofp i8 %.sroa.0.0.extract.trunc.i.i.i.i to float
  %i.c = fmul nnan float %i.b, f0x3B808081
  %.sroa.0.0.vec.insert.i.i.i = insertelement <2 x float> poison, float %i.c, i64 0 ; 2 uses
  %i.d = uitofp i8 %.sroa.2.0.extract.trunc.i.i.i.i to float
  %i.e = fmul nnan float %i.d, f0x3B808081        ; 3 uses
  %.sroa.0.4.vec.insert.i.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i.i, float %i.e, i64 1
  %i.f = uitofp i8 %.sroa.3.0.extract.trunc.i.i.i.i to float
  %i.g = fmul nnan float %i.f, f0x3B808081        ; 3 uses
  %i.h = fcmp olt float %i.e, %i.g                ; 3 uses
  %.sroa.0.4.vec.insert.i.i.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i.i, float %i.g, i64 1
  %.0.i.i.i.i = select i1 %i.h, float -1.000000e+00, float 0.000000e+00 ; 2 uses
  %.sroa.0.0.i.i.i.i = select i1 %i.h, <2 x float> %.sroa.0.4.vec.insert.i.i.i.i, <2 x float> %.sroa.0.4.vec.insert.i.i.i ; 4 uses
  %.sroa.0.0.vec.extract.i.i.i.i = extractelement <2 x float> %.sroa.0.0.i.i.i.i, i64 0
  %.sroa.0.4.vec.extract27.i.i.i.i = extractelement <2 x float> %.sroa.0.0.i.i.i.i, i64 1
  %i.i = fcmp olt float %.sroa.0.0.vec.extract.i.i.i.i, %.sroa.0.4.vec.extract27.i.i.i.i ; 2 uses
  %.sroa.0.4.vec.insert31.i.i.i.i = shufflevector <2 x float> %.sroa.0.0.i.i.i.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.j = fsub float f0xBEAAAAAB, %.0.i.i.i.i
  %.1.i.i.i.i = select i1 %i.i, float %i.j, float %.0.i.i.i.i
  %.sroa.0.1.i.i.i.i = select i1 %i.i, <2 x float> %.sroa.0.4.vec.insert31.i.i.i.i, <2 x float> %.sroa.0.0.i.i.i.i ; 3 uses
  %.sroa.0.0.vec.extract18.i.i.i.i = extractelement <2 x float> %.sroa.0.1.i.i.i.i, i64 0 ; 2 uses
  %.sroa.0.4.vec.extract33.i.i.i.i = extractelement <2 x float> %.sroa.0.1.i.i.i.i, i64 1 ; 2 uses
  %.sroa.18.8.vec.extract46.i.i.i.i = select i1 %i.h, float %i.e, float %i.g ; 3 uses
  %i.k = fcmp olt float %.sroa.0.4.vec.extract33.i.i.i.i, %.sroa.18.8.vec.extract46.i.i.i.i
  %i.l = select i1 %i.k, float %.sroa.0.4.vec.extract33.i.i.i.i, float %.sroa.18.8.vec.extract46.i.i.i.i
  %i.m = insertelement <2 x float> poison, float %i.l, i64 0
  %i.n = insertelement <2 x float> %i.m, float %.sroa.18.8.vec.extract46.i.i.i.i, i64 1
  %i.o = fsub <2 x float> %.sroa.0.1.i.i.i.i, %i.n ; 2 uses
  %i.p = extractelement <2 x float> %i.o, i64 0
  %i.q = tail call float @llvm.fmuladd.f32(float %i.p, float 6.000000e+00, float f0x1E3CE508)
  %2 = fadd float %.sroa.0.0.vec.extract18.i.i.i.i, f0x1E3CE508
  %i.r = insertelement <2 x float> poison, float %2, i64 0
  %i.s = insertelement <2 x float> %i.r, float %i.q, i64 1
  %i.t = fdiv <2 x float> %i.o, %i.s              ; 2 uses
  %i.u = extractelement <2 x float> %i.t, i64 1
  %i.v = fadd float %.1.i.i.i.i, %i.u             ; 3 uses
  %i.w = fcmp olt float %i.v, 0.000000e+00
  %i.x = fneg float %i.v
  %i.y = select i1 %i.w, float %i.x, float %i.v
  %i.z = insertelement <2 x float> poison, float %i.y, i64 0
  %i.aa = shufflevector <2 x float> %i.z, <2 x float> %i.t, <2 x i32> <i32 0, i32 2>
  %i.ab = fmul <2 x float> %i.aa, splat (float 2.550000e+02)
  %i.ac = fptoui <2 x float> %i.ab to <2 x i8>
  %i.ad = zext <2 x i8> %i.ac to <2 x i32>
  store <2 x i32> %i.ad, ptr %0, align 4, !tbaa !55
  %i.ae = fmul float %.sroa.0.0.vec.extract18.i.i.i.i, 2.550000e+02
  %i.af = fptoui float %i.ae to i8
  %i.ag = zext i8 %i.af to i32
  store i32 %i.ag, ptr %i.a, align 4, !tbaa !55
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @nk_color_hsv_bv(ptr nofree noundef writeonly captures(none) initializes((0, 3)) %0, i32 %1) local_unnamed_addr #4 {
bb.a:
  %.sroa.0.0.extract.trunc.i.i.i.i = trunc i32 %1 to i8
  %.sroa.2.0.extract.shift.i.i.i.i = lshr i32 %1, 8
  %.sroa.2.0.extract.trunc.i.i.i.i = trunc i32 %.sroa.2.0.extract.shift.i.i.i.i to i8
  %.sroa.3.0.extract.shift.i.i.i.i = lshr i32 %1, 16
  %.sroa.3.0.extract.trunc.i.i.i.i = trunc i32 %.sroa.3.0.extract.shift.i.i.i.i to i8
  %i.a = uitofp i8 %.sroa.0.0.extract.trunc.i.i.i.i to float
  %i.b = fmul nnan float %i.a, f0x3B808081
  %.sroa.0.0.vec.insert.i.i.i = insertelement <2 x float> poison, float %i.b, i64 0 ; 2 uses
  %i.c = uitofp i8 %.sroa.2.0.extract.trunc.i.i.i.i to float
  %i.d = fmul nnan float %i.c, f0x3B808081        ; 3 uses
  %.sroa.0.4.vec.insert.i.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i.i, float %i.d, i64 1
  %i.e = uitofp i8 %.sroa.3.0.extract.trunc.i.i.i.i to float
  %i.f = fmul nnan float %i.e, f0x3B808081        ; 3 uses
  %i.g = fcmp olt float %i.d, %i.f                ; 3 uses
  %.sroa.0.4.vec.insert.i.i.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i.i, float %i.f, i64 1
  %.0.i.i.i.i = select i1 %i.g, float -1.000000e+00, float 0.000000e+00 ; 2 uses
  %.sroa.0.0.i.i.i.i = select i1 %i.g, <2 x float> %.sroa.0.4.vec.insert.i.i.i.i, <2 x float> %.sroa.0.4.vec.insert.i.i.i ; 4 uses
  %.sroa.0.0.vec.extract.i.i.i.i = extractelement <2 x float> %.sroa.0.0.i.i.i.i, i64 0
  %.sroa.0.4.vec.extract27.i.i.i.i = extractelement <2 x float> %.sroa.0.0.i.i.i.i, i64 1
  %i.h = fcmp olt float %.sroa.0.0.vec.extract.i.i.i.i, %.sroa.0.4.vec.extract27.i.i.i.i ; 2 uses
  %.sroa.0.4.vec.insert31.i.i.i.i = shufflevector <2 x float> %.sroa.0.0.i.i.i.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.i = fsub float f0xBEAAAAAB, %.0.i.i.i.i
  %.1.i.i.i.i = select i1 %i.h, float %i.i, float %.0.i.i.i.i
  %.sroa.0.1.i.i.i.i = select i1 %i.h, <2 x float> %.sroa.0.4.vec.insert31.i.i.i.i, <2 x float> %.sroa.0.0.i.i.i.i ; 3 uses
  %.sroa.0.0.vec.extract18.i.i.i.i = extractelement <2 x float> %.sroa.0.1.i.i.i.i, i64 0 ; 2 uses
  %.sroa.0.4.vec.extract33.i.i.i.i = extractelement <2 x float> %.sroa.0.1.i.i.i.i, i64 1 ; 2 uses
  %.sroa.18.8.vec.extract46.i.i.i.i = select i1 %i.g, float %i.d, float %i.f ; 3 uses
  %i.j = fcmp olt float %.sroa.0.4.vec.extract33.i.i.i.i, %.sroa.18.8.vec.extract46.i.i.i.i
  %i.k = select i1 %i.j, float %.sroa.0.4.vec.extract33.i.i.i.i, float %.sroa.18.8.vec.extract46.i.i.i.i
  %i.l = insertelement <2 x float> poison, float %i.k, i64 0
  %i.m = insertelement <2 x float> %i.l, float %.sroa.18.8.vec.extract46.i.i.i.i, i64 1
  %i.n = fsub <2 x float> %.sroa.0.1.i.i.i.i, %i.m ; 2 uses
  %i.o = extractelement <2 x float> %i.n, i64 0
  %i.p = tail call float @llvm.fmuladd.f32(float %i.o, float 6.000000e+00, float f0x1E3CE508)
  %2 = fadd float %.sroa.0.0.vec.extract18.i.i.i.i, f0x1E3CE508
  %i.q = insertelement <2 x float> poison, float %2, i64 0
  %i.r = insertelement <2 x float> %i.q, float %i.p, i64 1
  %i.s = fdiv <2 x float> %i.n, %i.r              ; 2 uses
  %i.t = extractelement <2 x float> %i.s, i64 1
  %i.u = fadd float %.1.i.i.i.i, %i.t             ; 3 uses
  %i.v = fcmp olt float %i.u, 0.000000e+00
  %i.w = fneg float %i.u
  %i.x = select i1 %i.v, float %i.w, float %i.u
  %i.y = fmul float %i.x, 2.550000e+02
  %i.z = fptoui float %i.y to i8
  %i.aa = extractelement <2 x float> %i.s, i64 0
  %i.ab = fmul float %i.aa, 2.550000e+02
  %i.ac = fptoui float %i.ab to i8
  %i.ad = fmul float %.sroa.0.0.vec.extract18.i.i.i.i, 2.550000e+02
  %i.ae = fptoui float %i.ad to i8
  store i8 %i.z, ptr %0, align 1, !tbaa !56
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.ac, ptr %i.af, align 1, !tbaa !56
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.ae, ptr %i.ag, align 1, !tbaa !56
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define i32 @nk_utf_decode(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond.not57 = or i1 %i.a, %i.b
  %.not = icmp eq i32 %2, 0
  %or.cond28 = or i1 %or.cond.not57, %.not
  br i1 %or.cond28, label %nk_utf_validate.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 65533, ptr %1, align 4, !tbaa !55
  %i.c = load i8, ptr %0, align 1, !tbaa !56      ; 7 uses
  %i.d = icmp slt i8 %i.c, -64
  br i1 %i.d, label %nk_utf_validate.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = icmp slt i8 %i.c, 0
  br i1 %i.e, label %bb.d, label %._crit_edge.thread82

._crit_edge.thread82:                             ; preds = %bb.c
  %i.f = zext nneg i8 %i.c to i32
  br label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.g = icmp samesign ugt i8 %i.c, -33           ; 3 uses
  br i1 %i.g, label %bb.e, label %nk_utf_decode_byte.exit

bb.e:                                             ; preds = %bb.d
  %i.h = and i8 %i.c, -16
  %i.i = icmp eq i8 %i.h, -32
  br i1 %i.i, label %nk_utf_decode_byte.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = and i8 %i.c, -8
  %i.k = icmp eq i8 %i.j, -16
  br i1 %i.k, label %nk_utf_decode_byte.exit, label %nk_utf_validate.exit

nk_utf_decode_byte.exit:                          ; preds = %bb.d, %bb.e, %bb.f
  %i.l = phi i1 [ true, %bb.f ], [ false, %bb.e ], [ false, %bb.d ] ; 2 uses
  %storemerge12.lcssa.wide.i = phi i32 [ 4, %bb.f ], [ 3, %bb.e ], [ 2, %bb.d ]
  %i.m = phi i8 [ 7, %bb.f ], [ 15, %bb.e ], [ 31, %bb.d ]
  %i.n = icmp sgt i32 %2, 1
  br i1 %i.n, label %.lr.ph.preheader, label %nk_utf_validate.exit

.lr.ph.preheader:                                 ; preds = %nk_utf_decode_byte.exit
  %i.o = and i8 %i.m, %i.c
  %i.p = zext nneg i8 %i.o to i32
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.r = load i8, ptr %i.q, align 1, !tbaa !56    ; 2 uses
  %i.s = icmp slt i8 %i.r, -64
  br i1 %i.s, label %bb.g, label %nk_utf_validate.exit

bb.g:                                             ; preds = %.lr.ph.preheader
  %i.t = and i8 %i.r, 63
  %i.u = zext nneg i8 %i.t to i32
  %i.v = shl nuw nsw i32 %i.p, 6
  %i.w = or disjoint i32 %i.v, %i.u               ; 2 uses
  %i.x = icmp ne i32 %2, 2
  %i.y = and i1 %i.x, %i.g
  br i1 %i.y, label %.lr.ph.1, label %._crit_edge

.lr.ph.1:                                         ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !56   ; 2 uses
  %i.ab = icmp slt i8 %i.aa, -64
  br i1 %i.ab, label %bb.h, label %nk_utf_validate.exit

bb.h:                                             ; preds = %.lr.ph.1
  %i.ac = and i8 %i.aa, 63
  %i.ad = zext nneg i8 %i.ac to i32
  %i.ae = shl nuw nsw i32 %i.w, 6
  %i.af = or disjoint i32 %i.ae, %i.ad            ; 2 uses
  %i.ag = icmp ugt i32 %2, 3
  %i.ah = and i1 %i.ag, %i.l
  br i1 %i.ah, label %.lr.ph.2, label %._crit_edge

.lr.ph.2:                                         ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !56  ; 2 uses
  %i.ak = icmp slt i8 %i.aj, -64
  br i1 %i.ak, label %bb.i, label %nk_utf_validate.exit

bb.i:                                             ; preds = %.lr.ph.2
  %i.al = and i8 %i.aj, 63
  %i.am = zext nneg i8 %i.al to i32
  %i.an = shl nuw nsw i32 %i.af, 6
  %i.ao = or disjoint i32 %i.an, %i.am
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.i, %bb.h, %bb.g
  %.lcssa93 = phi i32 [ %i.w, %bb.g ], [ %i.af, %bb.h ], [ %i.ao, %bb.i ]
  %.lcssa = phi i1 [ %i.g, %bb.g ], [ %i.l, %bb.h ], [ false, %bb.i ]
  br i1 %.lcssa, label %nk_utf_validate.exit, label %bb.j

bb.j:                                             ; preds = %._crit_edge.thread82, %._crit_edge
  %.0.lcssa87 = phi i32 [ %i.f, %._crit_edge.thread82 ], [ %.lcssa93, %._crit_edge ] ; 4 uses
  %storemerge12.lcssa.wide.i7886 = phi i32 [ 1, %._crit_edge.thread82 ], [ %storemerge12.lcssa.wide.i, %._crit_edge ] ; 3 uses
  store i32 %.0.lcssa87, ptr %1, align 4, !tbaa !55
  %i.ap = zext nneg i32 %storemerge12.lcssa.wide.i7886 to i64 ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr @nk_utfmin, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !55
  %.not.i = icmp ugt i32 %i.ar, %.0.lcssa87
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = getelementptr inbounds nuw [4 x i8], ptr @nk_utfmax, i64 %i.ap
  %i.at = load i32, ptr %i.as, align 4, !tbaa !55
  %i.au = icmp uge i32 %.0.lcssa87, %i.at
  %i.av = add i32 %.0.lcssa87, -55296
  %or.cond.i = icmp ult i32 %i.av, 2047
  %or.cond15.i = or i1 %or.cond.i, %i.au
  br i1 %or.cond15.i, label %bb.l, label %nk_utf_validate.exit

bb.l:                                             ; preds = %bb.k, %bb.j
  store i32 65533, ptr %1, align 4, !tbaa !55
  br label %nk_utf_validate.exit

nk_utf_validate.exit:                             ; preds = %.lr.ph.preheader, %.lr.ph.1, %.lr.ph.2, %nk_utf_decode_byte.exit, %bb.k, %bb.l, %bb.f, %bb.b, %._crit_edge, %bb.a
  %.023 = phi i32 [ %storemerge12.lcssa.wide.i7886, %bb.k ], [ 1, %bb.b ], [ 1, %bb.f ], [ 0, %._crit_edge ], [ 0, %bb.a ], [ 0, %nk_utf_decode_byte.exit ], [ %storemerge12.lcssa.wide.i7886, %bb.l ], [ 1, %.lr.ph.preheader ], [ 2, %.lr.ph.1 ], [ 3, %.lr.ph.2 ]
  ret i32 %.023
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define range(i32 0, 5) i32 @nk_utf_encode(i32 noundef %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #13 {
bb.a:
  %i.a = icmp ugt i32 %0, 1114110
  %i.b = add i32 %0, -55296
  %or.cond.i = icmp ult i32 %i.b, 2047
  %or.cond15.i = or i1 %i.a, %or.cond.i
  %spec.select23 = select i1 %or.cond15.i, i32 65533, i32 %0 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv = phi i32 [ %indvars.iv.next, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.b ], [ 1, %bb.a ] ; 7 uses
  %i.c = getelementptr inbounds nuw [4 x i8], ptr @nk_utfmax, i64 %indvars.iv.i
  %i.d = load i32, ptr %i.c, align 4, !tbaa !55
  %i.e = icmp ugt i32 %spec.select23, %i.d
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %indvars.iv.next = add i32 %indvars.iv, 1
  br i1 %i.e, label %bb.b, label %nk_utf_validate.exit, !llvm.loop !8

nk_utf_validate.exit:                             ; preds = %bb.b
  %i.f = trunc nuw nsw i64 %indvars.iv.i to i32   ; 2 uses
  %i.g = icmp slt i32 %2, %i.f
  %i.h = icmp samesign ugt i64 %indvars.iv.i, 4
  %or.cond3 = or i1 %i.h, %i.g
  br i1 %or.cond3, label %bb.c, label %.preheader

.preheader:                                       ; preds = %nk_utf_validate.exit
  %.not25 = icmp eq i64 %indvars.iv.i, 1
  br i1 %.not25, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.i = sext i32 %indvars.iv to i64              ; 4 uses
  %i.j = add nsw i64 %i.i, -1
  %xtraiter = and i64 %i.i, 3
  %i.k = and i32 %indvars.iv, 3
  %lcmp.mod.not = icmp eq i32 %i.k, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv28.prol = phi i64 [ %indvars.iv.next29.prol, %.lr.ph.prol ], [ %i.i, %.lr.ph.preheader ] ; 2 uses
  %.02226.prol = phi i32 [ %i.p, %.lr.ph.prol ], [ %spec.select23, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.l = trunc i32 %.02226.prol to i8
  %i.m = and i8 %i.l, 63
  %i.n = or disjoint i8 %i.m, -128
  %i.o = getelementptr inbounds i8, ptr %1, i64 %indvars.iv28.prol
  store i8 %i.n, ptr %i.o, align 1, !tbaa !56
  %i.p = lshr i32 %.02226.prol, 6                 ; 3 uses
  %indvars.iv.next29.prol = add nsw i64 %indvars.iv28.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !680

end_hunk_0
begin_hunk_1_@nk_plot:bb.a
  %.not.i.i = icmp eq i64 %i.an, 0
  br i1 %.not.i.i, label %.loopexit46.i.thread.i, label %.loopexit46.i.i

.loopexit46.i.thread.i:                           ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(196) %i.al, i8 0, i64 196, i1 false), !tbaa !55
  br label %nk_chart_end.exit

.loopexit46.i.i:                                  ; preds = %bb.c
  %i.ao = sub nuw nsw i64 4, %i.an                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.al, i8 0, i64 %i.ao, i1 false), !tbaa !56
  %scevgep.i.i = getelementptr i8, ptr %i.al, i64 %i.ao ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(192) %scevgep.i.i, i8 0, i64 192, i1 false), !tbaa !55
  %scevgep53.i.i = getelementptr i8, ptr %scevgep.i.i, i64 192
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep53.i.i, i8 0, i64 %i.an, i1 false), !tbaa !56
  br label %nk_chart_end.exit

nk_chart_end.exit:                                ; preds = %._crit_edge.thread, %.loopexit46.i.i, %.loopexit46.i.thread.i, %._crit_edge54, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @nk_plot_function(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #17 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %3, null
  %or.cond = and i1 %i.a, %i.b
  %i.c = icmp ne i32 %4, 0
  %or.cond3 = and i1 %or.cond, %i.c
  br i1 %or.cond3, label %bb.b, label %nk_chart_end.exit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call float %3(ptr noundef %2, i32 noundef %5) #50 ; 4 uses
  %i.e = icmp sgt i32 %4, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.044 = phi i32 [ %i.l, %.lr.ph ], [ 0, %bb.b ] ; 2 uses
  %.03743 = phi float [ %i.k, %.lr.ph ], [ %i.d, %bb.b ] ; 2 uses
  %.03842 = phi float [ %i.i, %.lr.ph ], [ %i.d, %bb.b ] ; 2 uses
  %i.f = add nsw i32 %.044, %5
  %i.g = tail call float %3(ptr noundef %2, i32 noundef %i.f) #50 ; 4 uses
  %i.h = fcmp olt float %i.g, %.03842
  %i.i = select i1 %i.h, float %i.g, float %.03842 ; 2 uses
  %i.j = fcmp olt float %i.g, %.03743
  %i.k = select i1 %i.j, float %.03743, float %i.g ; 2 uses
  %i.l = add nuw nsw i32 %.044, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.l, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1212

._crit_edge:                                      ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 5968
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 5964
  %i.o = load i32, ptr %i.m, align 8
  %i.p = load i32, ptr %i.n, align 4
  %i.q = tail call noundef zeroext i1 @nk_chart_begin_colored(ptr noundef nonnull readonly %0, i32 noundef %1, i32 %i.o, i32 %i.p, i32 noundef %4, float noundef %i.i, float noundef %i.k)
  br i1 %i.q, label %.lr.ph47, label %nk_chart_end.exit

._crit_edge.thread:                               ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 5968
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 5964
  %i.t = load i32, ptr %i.r, align 8
  %i.u = load i32, ptr %i.s, align 4
  %i.v = tail call noundef zeroext i1 @nk_chart_begin_colored(ptr noundef nonnull readonly %0, i32 noundef %1, i32 %i.t, i32 %i.u, i32 noundef %4, float noundef %i.d, float noundef %i.d)
  br i1 %i.v, label %._crit_edge48, label %nk_chart_end.exit

.lr.ph47:                                         ; preds = %._crit_edge, %.lr.ph47
  %.146 = phi i32 [ %i.z, %.lr.ph47 ], [ 0, %._crit_edge ] ; 2 uses
  %i.w = add nsw i32 %.146, %5
  %i.x = tail call float %3(ptr noundef %2, i32 noundef %i.w) #50
  %i.y = tail call range(i32 0, 4) i32 @nk_chart_push_slot(ptr noundef nonnull readonly %0, float noundef %i.x, i32 noundef 0) ; 0 uses
  %i.z = add nuw nsw i32 %.146, 1                 ; 2 uses
  %exitcond50.not = icmp eq i32 %i.z, %4
  br i1 %exitcond50.not, label %._crit_edge48, label %.lr.ph47, !llvm.loop !1213

._crit_edge48:                                    ; preds = %.lr.ph47, %._crit_edge.thread
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !415 ; 2 uses
  %.not6.i = icmp eq ptr %i.ab, null
  br i1 %.not6.i, label %nk_chart_end.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge48
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 168
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !416
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 248 ; 4 uses
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = and i64 %i.af, 3                        ; 3 uses
  %.not.i.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i, label %.loopexit46.i.thread.i, label %.loopexit46.i.i

.loopexit46.i.thread.i:                           ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(196) %i.ae, i8 0, i64 196, i1 false), !tbaa !55
  br label %nk_chart_end.exit

.loopexit46.i.i:                                  ; preds = %bb.c
  %i.ah = sub nuw nsw i64 4, %i.ag                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ae, i8 0, i64 %i.ah, i1 false), !tbaa !56
  %scevgep.i.i = getelementptr i8, ptr %i.ae, i64 %i.ah ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(192) %scevgep.i.i, i8 0, i64 192, i1 false), !tbaa !55
  %scevgep53.i.i = getelementptr i8, ptr %scevgep.i.i, i64 192
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep53.i.i, i8 0, i64 %i.ag, i1 false), !tbaa !56
  br label %nk_chart_end.exit

nk_chart_end.exit:                                ; preds = %._crit_edge.thread, %.loopexit46.i.i, %.loopexit46.i.thread.i, %._crit_edge48, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @nk_color_pick(ptr nofree noundef captures(address) %0, ptr nofree noundef captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #20 {
bb.a:
  %3 = alloca %struct.nk_rect, align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #50
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %nk_do_color_picker.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !415  ; 15 uses
  %.not27 = icmp eq ptr %i.b, null
  br i1 %.not27, label %nk_do_color_picker.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !416  ; 2 uses
  %i.e = icmp ne ptr %i.d, null
  %i.f = icmp ne ptr %1, null
  %or.cond = and i1 %i.f, %i.e
  br i1 %or.cond, label %bb.d, label %nk_do_color_picker.exit

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.h = call i32 @nk_widget(ptr noundef nonnull %3, ptr noundef nonnull %0)
  switch i32 %i.h, label %bb.f [
    i32 0, label %nk_do_color_picker.exit
    i32 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !488
  %i.k = and i32 %i.j, 4096
  %.not29 = icmp eq i32 %i.k, 0
  %spec.select = select i1 %.not29, ptr %0, ptr null
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = phi ptr [ null, %bb.d ], [ %spec.select, %bb.e ] ; 13 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 9880 ; 9 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 21 uses
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !414  ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %nk_do_color_picker.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = load <2 x float>, ptr %i.p, align 8      ; 5 uses
  %i.r = load <2 x float>, ptr %3, align 8        ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.t = load float, ptr %i.s, align 8, !tbaa !140 ; 5 uses
  %.sroa.0152.0.vec.extract.i = extractelement <2 x float> %i.r, i64 0 ; 3 uses
  %.sroa.0152.4.vec.extract163.i = extractelement <2 x float> %i.r, i64 1 ; 3 uses
  %i.u = fadd <2 x float> %i.r, zeroinitializer   ; 11 uses
  %i.v = extractelement <2 x float> %i.u, i64 1   ; 9 uses
  %.sroa.10.8.vec.extract166.i = extractelement <2 x float> %i.q, i64 0
  %.sroa.10.12.vec.extract.i = extractelement <2 x float> %i.q, i64 1 ; 8 uses
  %i.w = fmul float %i.t, 2.000000e+00
  %i.x = fadd float %i.w, 0.000000e+00
  %i.y = fsub float %.sroa.10.8.vec.extract166.i, %i.x ; 2 uses
  %.sroa.12.8.vec.insert.i = insertelement <2 x float> %i.q, float %i.y, i64 0 ; 5 uses
  %.sroa.20.8.vec.insert.i = insertelement <2 x float> poison, float %i.t, i64 0
  %.sroa.20.12.vec.insert.i = insertelement <2 x float> %i.q, float %i.t, i64 0 ; 3 uses
  %i.z = extractelement <2 x float> %i.u, i64 0
  %i.aa = fadd float %i.z, %i.y                   ; 6 uses
  %i.ab = insertelement <2 x float> poison, float %i.aa, i64 0 ; 3 uses
  %i.ac = insertelement <2 x float> %i.u, float %i.aa, i64 0
  %i.ad = fadd float %i.t, %i.aa                  ; 4 uses
  %i.ae = insertelement <2 x float> %i.u, float %i.ad, i64 0 ; 2 uses
  %.not169.i = icmp eq i32 %2, 1                  ; 2 uses
  %i.af = load <2 x float>, ptr %1, align 4       ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ah = load <2 x float>, ptr %i.ag, align 4    ; 4 uses
  %.sroa.0.4.vec.extract.i.i.i.i = extractelement <2 x float> %i.af, i64 1
  %.sroa.18.8.vec.extract.i.i.i.i = extractelement <2 x float> %i.ah, i64 0
  %i.ai = fcmp olt float %.sroa.0.4.vec.extract.i.i.i.i, %.sroa.18.8.vec.extract.i.i.i.i ; 3 uses
  %.sroa.0.4.vec.insert.i.i.i.i = shufflevector <2 x float> %i.af, <2 x float> %i.ah, <2 x i32> <i32 0, i32 2>
  %.sroa.18.8.vec.insert.i.i.i.i = shufflevector <2 x float> %i.ah, <2 x float> %i.af, <2 x i32> <i32 3, i32 1>
  %.0.i.i.i.i = select i1 %i.ai, float -1.000000e+00, float 0.000000e+00 ; 2 uses
  %.sroa.0.0.i.i.i.i = select i1 %i.ai, <2 x float> %.sroa.0.4.vec.insert.i.i.i.i, <2 x float> %i.af ; 4 uses
  %.sroa.18.0.i.i.i.i = select i1 %i.ai, <2 x float> %.sroa.18.8.vec.insert.i.i.i.i, <2 x float> %i.ah ; 3 uses
  %.sroa.0.0.vec.extract.i.i.i.i = extractelement <2 x float> %.sroa.0.0.i.i.i.i, i64 0
  %.sroa.0.4.vec.extract27.i.i.i.i = extractelement <2 x float> %.sroa.0.0.i.i.i.i, i64 1
  %i.aj = fcmp olt float %.sroa.0.0.vec.extract.i.i.i.i, %.sroa.0.4.vec.extract27.i.i.i.i ; 2 uses
  %.sroa.0.4.vec.insert31.i.i.i.i = shufflevector <2 x float> %.sroa.0.0.i.i.i.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ak = fsub float f0xBEAAAAAB, %.0.i.i.i.i
  %.1.i.i.i.i = select i1 %i.aj, float %i.ak, float %.0.i.i.i.i
  %.sroa.0.1.i.i.i.i = select i1 %i.aj, <2 x float> %.sroa.0.4.vec.insert31.i.i.i.i, <2 x float> %.sroa.0.0.i.i.i.i ; 4 uses
  %.sroa.0.0.vec.extract18.i.i.i.i = extractelement <2 x float> %.sroa.0.1.i.i.i.i, i64 0
  %.sroa.0.4.vec.extract33.i.i.i.i = extractelement <2 x float> %.sroa.0.1.i.i.i.i, i64 1 ; 2 uses
  %.sroa.18.8.vec.extract46.i.i.i.i = extractelement <2 x float> %.sroa.18.0.i.i.i.i, i64 0 ; 2 uses
  %i.al = fcmp olt float %.sroa.0.4.vec.extract33.i.i.i.i, %.sroa.18.8.vec.extract46.i.i.i.i
  %i.am = select i1 %i.al, float %.sroa.0.4.vec.extract33.i.i.i.i, float %.sroa.18.8.vec.extract46.i.i.i.i
  %i.an = shufflevector <2 x float> %.sroa.18.0.i.i.i.i, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ao = insertelement <2 x float> %i.an, float %i.am, i64 0
  %i.ap = fsub <2 x float> %.sroa.0.1.i.i.i.i, %i.ao ; 2 uses
  %i.aq = extractelement <2 x float> %i.ap, i64 0
  %i.ar = tail call float @llvm.fmuladd.f32(float %i.aq, float 6.000000e+00, float f0x1E3CE508)
  %4 = fadd float %.sroa.0.0.vec.extract18.i.i.i.i, f0x1E3CE508
  %i.as = insertelement <2 x float> poison, float %4, i64 0
  %i.at = insertelement <2 x float> %i.as, float %i.ar, i64 1
  %i.au = fdiv <2 x float> %i.ap, %i.at           ; 2 uses
  %i.av = extractelement <2 x float> %i.au, i64 1
  %i.aw = fadd float %.1.i.i.i.i, %i.av           ; 3 uses
  %i.ax = fcmp olt float %i.aw, 0.000000e+00
  %i.ay = fneg float %i.aw
  %i.az = select i1 %i.ax, float %i.ay, float %i.aw
  %.sroa.18.12.vec.extract.i.i.i.i = extractelement <2 x float> %.sroa.18.0.i.i.i.i, i64 1 ; 2 uses
  %i.ba = tail call fastcc zeroext i1 @nk_button_behavior(ptr noundef nonnull %i.m, <2 x float> %i.u, <2 x float> %.sroa.12.8.vec.insert.i, ptr noundef readonly %i.l, i32 noundef 1)
  %i.bb = shufflevector <2 x float> %i.au, <2 x float> %.sroa.0.1.i.i.i.i, <2 x i32> <i32 0, i32 2>
  br i1 %i.ba, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bc = getelementptr inbounds nuw i8, ptr %i.l, i64 356
  %i.bd = fadd <2 x float> %.sroa.12.8.vec.insert.i, splat (float -1.000000e+00)
  %i.be = load <2 x float>, ptr %i.bc, align 4, !tbaa !54
  %i.bf = fsub <2 x float> %i.be, %i.u
  %i.bg = fdiv <2 x float> %i.bf, %i.bd           ; 3 uses
  %i.bh = fcmp ule <2 x float> %i.bg, zeroinitializer
  %i.bi = fcmp ogt <2 x float> %i.bg, splat (float 1.000000e+00)
  %i.bj = select <2 x i1> %i.bi, <2 x float> splat (float 1.000000e+00), <2 x float> %i.bg ; 2 uses
  %i.bk = extractelement <2 x float> %i.bj, i64 1
  %i.bl = fsub float 1.000000e+00, %i.bk
  %i.bm = insertelement <2 x float> %i.bj, float %i.bl, i64 1
  %i.bn = select <2 x i1> %i.bh, <2 x float> <float 0.000000e+00, float 1.000000e+00>, <2 x float> %i.bm
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0.i.i = phi i8 [ 1, %bb.h ], [ 0, %bb.g ]
  %i.bo = phi <2 x float> [ %i.bn, %bb.h ], [ %i.bb, %bb.g ] ; 5 uses
  %i.bp = tail call fastcc zeroext i1 @nk_button_behavior(ptr noundef nonnull %i.m, <2 x float> %i.ac, <2 x float> %.sroa.20.12.vec.insert.i, ptr noundef readonly %i.l, i32 noundef 1)
  br i1 %i.bp, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.l, i64 360
  %i.br = load float, ptr %i.bq, align 4, !tbaa !392
  %i.bs = fsub float %i.br, %i.v
  %i.bt = fadd float %.sroa.10.12.vec.extract.i, -1.000000e+00
  %i.bu = fdiv float %i.bs, %i.bt                 ; 3 uses
  %i.bv = fcmp ogt float %i.bu, 1.000000e+00
  %i.bw = fcmp ule float %i.bu, 0.000000e+00      ; 2 uses
  %brmerge10.i.i = or i1 %i.bw, %i.bv
  %.mux11.i.i = select i1 %i.bw, float 0.000000e+00, float 1.000000e+00
  br i1 %brmerge10.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %.sroa.0.0.i.i = phi float [ %i.az, %bb.i ], [ %.mux11.i.i, %bb.j ], [ %i.bu, %bb.k ]
  %.1.i.i = phi i8 [ %.0.i.i, %bb.i ], [ 1, %bb.j ], [ 1, %bb.k ] ; 3 uses
  br i1 %.not169.i, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bx = tail call fastcc zeroext i1 @nk_button_behavior(ptr noundef nonnull %i.m, <2 x float> %i.ae, <2 x float> %.sroa.20.12.vec.insert.i, ptr noundef readonly %i.l, i32 noundef 1)
  br i1 %i.bx, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.by = getelementptr inbounds nuw i8, ptr %i.l, i64 360
  %i.bz = load float, ptr %i.by, align 4, !tbaa !392
  %i.ca = fsub float %i.bz, %i.v
  %i.cb = fadd float %.sroa.10.12.vec.extract.i, -1.000000e+00
  %i.cc = fdiv float %i.ca, %i.cb                 ; 3 uses
  %i.cd = fcmp ogt float %i.cc, 1.000000e+00
  %i.ce = fcmp ule float %i.cc, 0.000000e+00
  %.mux13.i.i = select i1 %i.cd, float 1.000000e+00, float %i.cc
  %i.cf = fsub float 1.000000e+00, %.mux13.i.i
  %i.cg = select i1 %i.ce, float 1.000000e+00, float %i.cf
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  %.sroa.11.0.i.i = phi float [ %.sroa.18.12.vec.extract.i.i.i.i, %bb.l ], [ %i.cg, %bb.n ], [ %.sroa.18.12.vec.extract.i.i.i.i, %bb.m ] ; 2 uses
  %.2.i.i = phi i8 [ %.1.i.i, %bb.l ], [ 1, %bb.n ], [ %.1.i.i, %bb.m ]
  %i.ch = load i32, ptr %i.m, align 8, !tbaa !55
  %i.ci = and i32 %i.ch, 2
  %..i.i = or disjoint i32 %i.ci, 4               ; 2 uses
  store i32 %..i.i, ptr %i.m, align 8, !tbaa !55
  %i.cj = trunc nuw i8 %.1.i.i to i1
  br i1 %i.cj, label %bb.p, label %bb.y

bb.p:                                             ; preds = %bb.o
  %i.ck = extractelement <2 x float> %i.bo, i64 0 ; 3 uses
  %i.cl = fcmp ugt float %i.ck, 0.000000e+00
  br i1 %i.cl, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cm = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.bo, <2 x i32> <i32 3, i32 1>
  %.sroa.0.4.vec.insert.i.i94.i.i = shufflevector <2 x float> %i.bo, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  br label %nk_hsva_colorfv.exit.i.i

bb.r:                                             ; preds = %bb.p
  %i.cn = fdiv float %.sroa.0.0.i.i, f0x3E2AAAAB  ; 2 uses
  %i.co = fptosi float %i.cn to i32               ; 2 uses
  %i.cp = sitofp i32 %i.co to float
  %i.cq = fsub float %i.cn, %i.cp                 ; 2 uses
  %i.cr = fsub float 1.000000e+00, %i.ck
  %i.cs = extractelement <2 x float> %i.bo, i64 1 ; 8 uses
  %i.ct = fmul float %i.cs, %i.cr                 ; 6 uses
  %i.cu = fneg float %i.ck
  %i.cv = fsub float 1.000000e+00, %i.cq
  %i.cw = insertelement <2 x float> poison, float %i.cu, i64 0
  %i.cx = shufflevector <2 x float> %i.cw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cy = insertelement <2 x float> poison, float %i.cq, i64 0
  %i.cz = insertelement <2 x float> %i.cy, float %i.cv, i64 1
  %i.da = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cx, <2 x float> %i.cz, <2 x float> splat (float 1.000000e+00)) ; 2 uses
  %i.db = extractelement <2 x float> %i.da, i64 0
  %i.dc = fmul float %i.cs, %i.db                 ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %i.bo, %i.da
  %i.dd = extractelement <2 x float> %foldExtExtBinop, i64 1 ; 3 uses
  switch i32 %i.co, label %bb.x [
    i32 5, label %bb.w
    i32 1, label %bb.s
    i32 2, label %bb.t
    i32 3, label %bb.u
    i32 4, label %bb.v
  ]

bb.s:                                             ; preds = %bb.r
  br label %bb.x

bb.t:                                             ; preds = %bb.r
  br label %bb.x

bb.u:                                             ; preds = %bb.r
  br label %bb.x

bb.v:                                             ; preds = %bb.r
  br label %bb.x

bb.w:                                             ; preds = %bb.r
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r
  %.sink77.i.i.i.i = phi float [ %i.cs, %bb.w ], [ %i.dd, %bb.v ], [ %i.ct, %bb.u ], [ %i.ct, %bb.t ], [ %i.dc, %bb.s ], [ %i.cs, %bb.r ]
  %.sink76.i.i.i.i = phi float [ %i.ct, %bb.w ], [ %i.ct, %bb.v ], [ %i.dc, %bb.u ], [ %i.cs, %bb.t ], [ %i.cs, %bb.s ], [ %i.dd, %bb.r ]
  %.sink.i.i.i.i = phi float [ %i.dc, %bb.w ], [ %i.cs, %bb.v ], [ %i.cs, %bb.u ], [ %i.dd, %bb.t ], [ %i.ct, %bb.s ], [ %i.ct, %bb.r ]
  %.sroa.0.0.vec.insert48.i.i.i.i = insertelement <2 x float> poison, float %.sink77.i.i.i.i, i64 0
  %.sroa.0.4.vec.insert60.i.i.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert48.i.i.i.i, float %.sink76.i.i.i.i, i64 1
  %.sroa.16.8.vec.insert73.i.i.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.sink.i.i.i.i, i64 0
  br label %nk_hsva_colorfv.exit.i.i

nk_hsva_colorfv.exit.i.i:                         ; preds = %bb.x, %bb.q
  %.sroa.16.8.vec.insert73.sink.i.i.i.i = phi <2 x float> [ %.sroa.16.8.vec.insert73.i.i.i.i, %bb.x ], [ %i.cm, %bb.q ]
  %.sroa.0.1.i.i95.i.i = phi <2 x float> [ %.sroa.0.4.vec.insert60.i.i.i.i, %bb.x ], [ %.sroa.0.4.vec.insert.i.i94.i.i, %bb.q ]
  %.sroa.16.12.vec.insert75.i.i.i.i = insertelement <2 x float> %.sroa.16.8.vec.insert73.sink.i.i.i.i, float %.sroa.11.0.i.i, i64 1
  store <2 x float> %.sroa.0.1.i.i95.i.i, ptr %1, align 4, !tbaa !54
  store <2 x float> %.sroa.16.12.vec.insert75.i.i.i.i, ptr %i.ag, align 4, !tbaa !54
  store i32 34, ptr %i.m, align 8, !tbaa !55
  br label %bb.y

bb.y:                                             ; preds = %nk_hsva_colorfv.exit.i.i, %bb.o
  %i.de = phi i32 [ 34, %nk_hsva_colorfv.exit.i.i ], [ %..i.i, %bb.o ]
  %i.df = trunc nuw i8 %.2.i.i to i1              ; 3 uses
  br i1 %i.df, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 12
  store float %.sroa.11.0.i.i, ptr %i.dg, align 4, !tbaa !1215
  store i32 34, ptr %i.m, align 8, !tbaa !55
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.dh = phi i32 [ 34, %bb.z ], [ %i.de, %bb.y ] ; 5 uses
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %nk_input_is_mouse_hovering_rect.exit.thread.thread.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.di = getelementptr inbounds nuw i8, ptr %i.l, i64 356
  %i.dj = load float, ptr %i.di, align 4, !tbaa !391 ; 2 uses
  %i.dk = fcmp ole float %.sroa.0152.0.vec.extract.i, %i.dj
  %foldExtExtBinop45 = fadd <2 x float> %i.q, %i.u
  %i.dl = extractelement <2 x float> %foldExtExtBinop45, i64 0 ; 3 uses
  %i.dm = fcmp olt float %i.dj, %i.dl
  %or.cond.i.i.i = select i1 %i.dk, i1 %i.dm, i1 false
  br i1 %or.cond.i.i.i, label %bb.ac, label %nk_input_is_mouse_hovering_rect.exit.thread.i.i

bb.ac:                                            ; preds = %bb.ab
  %i.dn = getelementptr inbounds nuw i8, ptr %i.l, i64 360
  %i.do = load float, ptr %i.dn, align 4, !tbaa !392 ; 2 uses
  %i.dp = fcmp ole float %.sroa.0152.4.vec.extract163.i, %i.do
  %i.dq = fadd float %.sroa.10.12.vec.extract.i, %i.v
  %i.dr = fcmp olt float %i.do, %i.dq
  %or.cond.i.i = select i1 %i.dp, i1 %i.dr, i1 false
  br i1 %or.cond.i.i, label %nk_input_is_mouse_hovering_rect.exit.thread.thread23.i.i, label %nk_input_is_mouse_hovering_rect.exit.thread.i.i

nk_input_is_mouse_hovering_rect.exit.thread.thread23.i.i: ; preds = %bb.ac
  store i32 18, ptr %i.m, align 8, !tbaa !55
  br label %bb.ad

nk_input_is_mouse_hovering_rect.exit.thread.i.i:  ; preds = %bb.ac, %bb.ab
  %i.ds = and i32 %i.dh, 16
  %.not90.i.i = icmp eq i32 %i.ds, 0
  br i1 %.not90.i.i, label %nk_input_is_mouse_hovering_rect.exit.thread..thread_crit_edge.i.i, label %bb.ad

nk_input_is_mouse_hovering_rect.exit.thread..thread_crit_edge.i.i: ; preds = %nk_input_is_mouse_hovering_rect.exit.thread.i.i
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 364
  %.pre.i.i = load float, ptr %.phi.trans.insert.i.i, align 4, !tbaa !393
  br label %.thread.i.i

nk_input_is_mouse_hovering_rect.exit.thread.thread.i.i: ; preds = %bb.aa
  %i.dt = and i32 %i.dh, 16
  %.not905.i.i = icmp eq i32 %i.dt, 0
  br i1 %.not905.i.i, label %nk_color_picker_behavior.exit.i, label %nk_input_is_mouse_prev_hovering_rect.exit.thread.i.i

bb.ad:                                            ; preds = %nk_input_is_mouse_hovering_rect.exit.thread.i.i, %nk_input_is_mouse_hovering_rect.exit.thread.thread23.i.i
  %i.du = phi i32 [ 18, %nk_input_is_mouse_hovering_rect.exit.thread.thread23.i.i ], [ %i.dh, %nk_input_is_mouse_hovering_rect.exit.thread.i.i ] ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.l, i64 364
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !393 ; 3 uses
  %i.dx = fcmp ole float %.sroa.0152.0.vec.extract.i, %i.dw
  %i.dy = fcmp olt float %i.dw, %i.dl
  %or.cond.i99.i.i = select i1 %i.dx, i1 %i.dy, i1 false
  br i1 %or.cond.i99.i.i, label %bb.ae, label %nk_input_is_mouse_prev_hovering_rect.exit.thread.i.i

bb.ae:                                            ; preds = %bb.ad
  %i.dz = getelementptr inbounds nuw i8, ptr %i.l, i64 368
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !394 ; 2 uses
  %i.eb = fcmp ole float %.sroa.0152.4.vec.extract163.i, %i.ea
  %i.ec = fadd float %.sroa.10.12.vec.extract.i, %i.v
  %i.ed = fcmp olt float %i.ea, %i.ec
  %or.cond16.i.i = select i1 %i.eb, i1 %i.ed, i1 false
  br i1 %or.cond16.i.i, label %.thread.i.i, label %nk_input_is_mouse_prev_hovering_rect.exit.thread.i.i

nk_input_is_mouse_prev_hovering_rect.exit.thread.i.i: ; preds = %bb.ae, %bb.ad, %nk_input_is_mouse_hovering_rect.exit.thread.thread.i.i
  %i.ee = phi i32 [ %i.dh, %nk_input_is_mouse_hovering_rect.exit.thread.thread.i.i ], [ %i.du, %bb.ad ], [ %i.du, %bb.ae ]
  %i.ef = or i32 %i.ee, 8
  br label %nk_input_is_mouse_prev_hovering_rect.exit110.thread.sink.split.i.i

.thread.i.i:                                      ; preds = %bb.ae, %nk_input_is_mouse_hovering_rect.exit.thread..thread_crit_edge.i.i
  %i.eg = phi i32 [ %i.dh, %nk_input_is_mouse_hovering_rect.exit.thread..thread_crit_edge.i.i ], [ %i.du, %bb.ae ]
  %i.eh = phi float [ %.pre.i.i, %nk_input_is_mouse_hovering_rect.exit.thread..thread_crit_edge.i.i ], [ %i.dw, %bb.ae ] ; 2 uses
  %i.ei = fcmp ole float %.sroa.0152.0.vec.extract.i, %i.eh
  %i.ej = fcmp olt float %i.eh, %i.dl
  %or.cond.i106.i.i = select i1 %i.ei, i1 %i.ej, i1 false
  br i1 %or.cond.i106.i.i, label %bb.af, label %nk_color_picker_behavior.exit.i

bb.af:                                            ; preds = %.thread.i.i
  %i.ek = getelementptr inbounds nuw i8, ptr %i.l, i64 368
  %i.el = load float, ptr %i.ek, align 4, !tbaa !394 ; 2 uses
  %i.em = fcmp ole float %.sroa.0152.4.vec.extract163.i, %i.el
  %i.en = fadd float %.sroa.10.12.vec.extract.i, %i.v
  %i.eo = fcmp olt float %i.el, %i.en
  %or.cond18.i.i = select i1 %i.em, i1 %i.eo, i1 false
  br i1 %or.cond18.i.i, label %bb.ag, label %nk_color_picker_behavior.exit.i

bb.ag:                                            ; preds = %bb.af
  %i.ep = or i32 %i.eg, 64
  br label %nk_input_is_mouse_prev_hovering_rect.exit110.thread.sink.split.i.i

nk_input_is_mouse_prev_hovering_rect.exit110.thread.sink.split.i.i: ; preds = %bb.ag, %nk_input_is_mouse_prev_hovering_rect.exit.thread.i.i
  %.sink.i.i = phi i32 [ %i.ep, %bb.ag ], [ %i.ef, %nk_input_is_mouse_prev_hovering_rect.exit.thread.i.i ]
  store i32 %.sink.i.i, ptr %i.m, align 8, !tbaa !55
  br label %nk_color_picker_behavior.exit.i

nk_color_picker_behavior.exit.i:                  ; preds = %nk_input_is_mouse_prev_hovering_rect.exit110.thread.sink.split.i.i, %bb.af, %.thread.i.i, %nk_input_is_mouse_hovering_rect.exit.thread.thread.i.i
  %i.eq = load <2 x float>, ptr %1, align 4       ; 4 uses
  %i.er = load <2 x float>, ptr %i.ag, align 4    ; 4 uses
  %i.es = fdiv float %.sroa.10.12.vec.extract.i, 6.000000e+00 ; 4 uses
  %i.et = fadd float %i.es, 5.000000e-01
  %.sroa.3.12.vec.insert.i.i.i = insertelement <2 x float> %.sroa.20.8.vec.insert.i, float %i.et, i64 1 ; 6 uses
  %i.eu = fadd float %i.es, %i.v
  %i.ev = fadd float %i.eu, 5.000000e-01
  %.sroa.0.4.vec.insert.i.1.i.i = insertelement <2 x float> %i.ab, float %i.ev, i64 1
  %i.ew = insertelement <4 x float> poison, float %i.es, i64 0
  %i.ex = shufflevector <4 x float> %i.ew, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ey = shufflevector <2 x float> %i.u, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ez = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ex, <4 x float> <float 0.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00>, <4 x float> %i.ey) ; 2 uses
  %i.fa = extractelement <4 x float> %i.ez, i64 0
  %i.fb = fadd float %i.fa, 5.000000e-01
  %.sroa.0.4.vec.insert.i.i.i = insertelement <2 x float> %i.ab, float %i.fb, i64 1
  tail call void @nk_fill_rect_multi_color(ptr noundef nonnull %i.n, <2 x float> %.sroa.0.4.vec.insert.i.i.i, <2 x float> %.sroa.3.12.vec.insert.i.i.i, i32 -16776961, i32 -16776961, i32 -16711681, i32 -16711681)
  tail call void @nk_fill_rect_multi_color(ptr noundef nonnull %i.n, <2 x float> %.sroa.0.4.vec.insert.i.1.i.i, <2 x float> %.sroa.3.12.vec.insert.i.i.i, i32 -16711681, i32 -16711681, i32 -16711936, i32 -16711936)
  %i.fc = tail call float @llvm.fmuladd.f32(float %i.es, float 5.000000e+00, float %i.v)
  %i.fd = insertelement <4 x float> %i.ez, float %i.fc, i64 0
  %i.fe = fadd <4 x float> %i.fd, splat (float 5.000000e-01) ; 4 uses
  %i.ff = shufflevector <2 x float> %i.ab, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.fg = shufflevector <4 x float> %i.ff, <4 x float> %i.fe, <2 x i32> <i32 0, i32 5>
  tail call void @nk_fill_rect_multi_color(ptr noundef nonnull %i.n, <2 x float> %i.fg, <2 x float> %.sroa.3.12.vec.insert.i.i.i, i32 -16711936, i32 -16711936, i32 -256, i32 -256)
  %i.fh = shufflevector <4 x float> %i.fe, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.fi = insertelement <2 x float> %i.fh, float %i.aa, i64 0
  tail call void @nk_fill_rect_multi_color(ptr noundef nonnull %i.n, <2 x float> %i.fi, <2 x float> %.sroa.3.12.vec.insert.i.i.i, i32 -256, i32 -256, i32 -65536, i32 -65536)
  %i.fj = shufflevector <4 x float> %i.fe, <4 x float> poison, <2 x i32> <i32 poison, i32 3>
  %i.fk = insertelement <2 x float> %i.fj, float %i.aa, i64 0
  tail call void @nk_fill_rect_multi_color(ptr noundef nonnull %i.n, <2 x float> %i.fk, <2 x float> %.sroa.3.12.vec.insert.i.i.i, i32 -65536, i32 -65536, i32 -65281, i32 -65281)
  %i.fl = shufflevector <4 x float> %i.ff, <4 x float> %i.fe, <2 x i32> <i32 0, i32 4>
  tail call void @nk_fill_rect_multi_color(ptr noundef nonnull %i.n, <2 x float> %i.fl, <2 x float> %.sroa.3.12.vec.insert.i.i.i, i32 -65281, i32 -65281, i32 -16776961, i32 -16776961)
  %.sroa.0.4.vec.extract.i.i.i37.i = extractelement <2 x float> %i.eq, i64 1
  %.sroa.18.8.vec.extract.i.i.i38.i = extractelement <2 x float> %i.er, i64 0
  %i.fm = fcmp olt float %.sroa.0.4.vec.extract.i.i.i37.i, %.sroa.18.8.vec.extract.i.i.i38.i ; 3 uses
  %.sroa.0.4.vec.insert.i.i.i39.i = shufflevector <2 x float> %i.eq, <2 x float> %i.er, <2 x i32> <i32 0, i32 2>
  %.sroa.18.8.vec.insert.i.i.i40.i = shufflevector <2 x float> %i.eq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %.0.i.i.i41.i = select i1 %i.fm, float -1.000000e+00, float 0.000000e+00 ; 2 uses
  %.sroa.0.0.i.i.i42.i = select i1 %i.fm, <2 x float> %.sroa.0.4.vec.insert.i.i.i39.i, <2 x float> %i.eq ; 4 uses
  %.sroa.18.0.i.i.i43.i = select i1 %i.fm, <2 x float> %.sroa.18.8.vec.insert.i.i.i40.i, <2 x float> %i.er ; 2 uses
  %.sroa.0.0.vec.extract.i.i.i44.i = extractelement <2 x float> %.sroa.0.0.i.i.i42.i, i64 0
  %.sroa.0.4.vec.extract27.i.i.i45.i = extractelement <2 x float> %.sroa.0.0.i.i.i42.i, i64 1
  %i.fn = fcmp olt float %.sroa.0.0.vec.extract.i.i.i44.i, %.sroa.0.4.vec.extract27.i.i.i45.i ; 2 uses
  %.sroa.0.4.vec.insert31.i.i.i46.i = shufflevector <2 x float> %.sroa.0.0.i.i.i42.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.fo = fsub float f0xBEAAAAAB, %.0.i.i.i41.i
  %.1.i.i.i47.i = select i1 %i.fn, float %i.fo, float %.0.i.i.i41.i
  %.sroa.0.1.i.i.i48.i = select i1 %i.fn, <2 x float> %.sroa.0.4.vec.insert31.i.i.i46.i, <2 x float> %.sroa.0.0.i.i.i42.i ; 3 uses
  %.sroa.0.0.vec.extract18.i.i.i49.i = extractelement <2 x float> %.sroa.0.1.i.i.i48.i, i64 0 ; 2 uses
  %.sroa.0.4.vec.extract33.i.i.i50.i = extractelement <2 x float> %.sroa.0.1.i.i.i48.i, i64 1 ; 2 uses
  %.sroa.18.8.vec.extract46.i.i.i51.i = extractelement <2 x float> %.sroa.18.0.i.i.i43.i, i64 0 ; 2 uses
  %i.fp = fcmp olt float %.sroa.0.4.vec.extract33.i.i.i50.i, %.sroa.18.8.vec.extract46.i.i.i51.i
  %i.fq = select i1 %i.fp, float %.sroa.0.4.vec.extract33.i.i.i50.i, float %.sroa.18.8.vec.extract46.i.i.i51.i
  %i.fr = shufflevector <2 x float> %.sroa.18.0.i.i.i43.i, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.fs = insertelement <2 x float> %i.fr, float %i.fq, i64 0
  %i.ft = fsub <2 x float> %.sroa.0.1.i.i.i48.i, %i.fs ; 2 uses
  %i.fu = extractelement <2 x float> %i.ft, i64 0
  %i.fv = tail call float @llvm.fmuladd.f32(float %i.fu, float 6.000000e+00, float f0x1E3CE508)
  %5 = fadd float %.sroa.0.0.vec.extract18.i.i.i49.i, f0x1E3CE508
  %i.fw = insertelement <2 x float> poison, float %5, i64 0
  %i.fx = insertelement <2 x float> %i.fw, float %i.fv, i64 1
  %i.fy = fdiv <2 x float> %i.ft, %i.fx           ; 2 uses
  %i.fz = extractelement <2 x float> %i.fy, i64 1
  %i.ga = fadd float %.1.i.i.i47.i, %i.fz         ; 3 uses
  %i.gb = fcmp olt float %i.ga, 0.000000e+00
  %i.gc = fneg float %i.ga
  %i.gd = select i1 %i.gb, float %i.gc, float %i.ga ; 2 uses
  %i.ge = load ptr, ptr %i.n, align 8, !tbaa !99
  %i.gf = tail call fastcc ptr @nk_buffer_alloc(ptr noundef %i.ge, i32 noundef 0, i64 noundef 32, i64 noundef 8) ; 12 uses
  %.not.i.i.i.i = icmp eq ptr %i.gf, null
  br i1 %.not.i.i.i.i, label %nk_stroke_line.exit.i.i, label %bb.ah

bb.ah:                                            ; preds = %nk_color_picker_behavior.exit.i
  %i.gg = fadd float %i.ad, 2.000000e+00
  %i.gh = fadd float %i.aa, -1.000000e+00
  %i.gi = tail call float @llvm.fmuladd.f32(float %i.gd, float %.sroa.10.12.vec.extract.i, float %i.v)
  %i.gj = fadd float %i.gi, 5.000000e-01
  %i.gk = fptosi float %i.gj to i32
  %i.gl = load ptr, ptr %i.n, align 8, !tbaa !99  ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 64
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !69
  %i.go = ptrtoint ptr %i.gf to i64
  %i.gp = ptrtoint ptr %i.gn to i64
  %i.gq = sub i64 %i.go, %i.gp
  %i.gr = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  store i64 %i.gq, ptr %i.gr, align 8, !tbaa !100
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gf, i64 32
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gf, i64 39
  %i.gu = ptrtoint ptr %i.gt to i64
  %i.gv = and i64 %i.gu, -8
  %i.gw = ptrtoint ptr %i.gs to i64
  %i.gx = sub i64 %i.gv, %i.gw
  store i32 2, ptr %i.gf, align 8, !tbaa !102
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gl, i64 88
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !77
  %i.ha = add i64 %i.gz, %i.gx                    ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  store i64 %i.ha, ptr %i.hb, align 8, !tbaa !103
  %i.hc = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  store i64 %i.ha, ptr %i.hc, align 8, !tbaa !104
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  store i16 1, ptr %i.hd, align 8, !tbaa !177
  %i.he = fptosi float %i.gh to i16
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gf, i64 18
  store i16 %i.he, ptr %i.hf, align 2, !tbaa !1216
  %i.hg = trunc i32 %i.gk to i16                  ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gf, i64 20
  store i16 %i.hg, ptr %i.hh, align 4, !tbaa !1217
  %i.hi = fptosi float %i.gg to i16
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gf, i64 22
  store i16 %i.hi, ptr %i.hj, align 2, !tbaa !1218
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gf, i64 24
  store i16 %i.hg, ptr %i.hk, align 8, !tbaa !110
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gf, i64 26
  store i32 -1, ptr %i.hl, align 2, !tbaa !56
  br label %nk_stroke_line.exit.i.i

nk_stroke_line.exit.i.i:                          ; preds = %bb.ah, %nk_color_picker_behavior.exit.i
  br i1 %.not169.i, label %bb.ai, label %nk_stroke_line.exit77.i.i

bb.ai:                                            ; preds = %nk_stroke_line.exit.i.i
  tail call void @nk_fill_rect_multi_color(ptr noundef nonnull %i.n, <2 x float> %i.ae, <2 x float> %.sroa.20.12.vec.insert.i, i32 -1, i32 -1, i32 -16777216, i32 -16777216)
  %i.hm = load ptr, ptr %i.n, align 8, !tbaa !99
  %i.hn = tail call fastcc ptr @nk_buffer_alloc(ptr noundef %i.hm, i32 noundef 0, i64 noundef 32, i64 noundef 8) ; 12 uses
  %.not.i.i76.i.i = icmp eq ptr %i.hn, null
  br i1 %.not.i.i76.i.i, label %nk_stroke_line.exit77.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ho = fadd float %i.t, %i.ad
  %i.hp = fadd float %i.ho, 2.000000e+00
  %i.hq = fadd float %i.ad, -1.000000e+00
  %.sroa.267.12.vec.extract.i.i = extractelement <2 x float> %i.er, i64 1 ; 2 uses
  %i.hr = fcmp ogt float %.sroa.267.12.vec.extract.i.i, 1.000000e+00
  %i.hs = select i1 %i.hr, float 1.000000e+00, float %.sroa.267.12.vec.extract.i.i ; 2 uses
  %i.ht = fcmp ogt float %i.hs, 0.000000e+00
  %i.hu = select i1 %i.ht, float %i.hs, float 0.000000e+00
  %i.hv = fsub float 1.000000e+00, %i.hu
  %i.hw = tail call float @llvm.fmuladd.f32(float %i.hv, float %.sroa.10.12.vec.extract.i, float %i.v)
  %i.hx = fadd float %i.hw, 5.000000e-01
  %i.hy = fptosi float %i.hx to i32
  %i.hz = load ptr, ptr %i.n, align 8, !tbaa !99  ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 64
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !69
  %i.ic = ptrtoint ptr %i.hn to i64
  %i.id = ptrtoint ptr %i.ib to i64
  %i.ie = sub i64 %i.ic, %i.id
  %i.if = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  store i64 %i.ie, ptr %i.if, align 8, !tbaa !100
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hn, i64 32
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hn, i64 39
  %i.ii = ptrtoint ptr %i.ih to i64
  %i.ij = and i64 %i.ii, -8
  %i.ik = ptrtoint ptr %i.ig to i64
  %i.il = sub i64 %i.ij, %i.ik
  store i32 2, ptr %i.hn, align 8, !tbaa !102
  %i.im = getelementptr inbounds nuw i8, ptr %i.hz, i64 88
  %i.in = load i64, ptr %i.im, align 8, !tbaa !77
  %i.io = add i64 %i.in, %i.il                    ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  store i64 %i.io, ptr %i.ip, align 8, !tbaa !103
  %i.iq = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  store i64 %i.io, ptr %i.iq, align 8, !tbaa !104
  %i.ir = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  store i16 1, ptr %i.ir, align 8, !tbaa !177
  %i.is = fptosi float %i.hq to i16
  %i.it = getelementptr inbounds nuw i8, ptr %i.hn, i64 18
  store i16 %i.is, ptr %i.it, align 2, !tbaa !1216
  %i.iu = trunc i32 %i.hy to i16                  ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.hn, i64 20
  store i16 %i.iu, ptr %i.iv, align 4, !tbaa !1217
  %i.iw = fptosi float %i.hp to i16
  %i.ix = getelementptr inbounds nuw i8, ptr %i.hn, i64 22
  store i16 %i.iw, ptr %i.ix, align 2, !tbaa !1218
  %i.iy = getelementptr inbounds nuw i8, ptr %i.hn, i64 24
  store i16 %i.iu, ptr %i.iy, align 8, !tbaa !110
  %i.iz = getelementptr inbounds nuw i8, ptr %i.hn, i64 26
  store i32 -1, ptr %i.iz, align 2, !tbaa !56
  br label %nk_stroke_line.exit77.i.i

nk_stroke_line.exit77.i.i:                        ; preds = %bb.aj, %bb.ai, %nk_stroke_line.exit.i.i
  %i.ja = fdiv float %i.gd, f0x3E2AAAAB           ; 2 uses
  %i.jb = fptosi float %i.ja to i32               ; 2 uses
  %i.jc = sitofp i32 %i.jb to float
  %i.jd = fsub float %i.ja, %i.jc                 ; 2 uses
  %i.je = fsub float 1.000000e+00, %i.jd          ; 3 uses
  %i.jf = fadd float %i.jd, -1.000000e+00
  %i.jg = fadd float %i.jf, 1.000000e+00          ; 3 uses
  switch i32 %i.jb, label %nk_hsv_f.exit.i.i [
    i32 5, label %bb.ao
    i32 1, label %bb.ak
    i32 2, label %bb.al
    i32 3, label %bb.am
    i32 4, label %bb.an
  ]

bb.ak:                                            ; preds = %nk_stroke_line.exit77.i.i
  br label %nk_hsv_f.exit.i.i

bb.al:                                            ; preds = %nk_stroke_line.exit77.i.i
  br label %nk_hsv_f.exit.i.i

bb.am:                                            ; preds = %nk_stroke_line.exit77.i.i
  br label %nk_hsv_f.exit.i.i

bb.an:                                            ; preds = %nk_stroke_line.exit77.i.i
  br label %nk_hsv_f.exit.i.i

bb.ao:                                            ; preds = %nk_stroke_line.exit77.i.i
  br label %nk_hsv_f.exit.i.i

nk_hsv_f.exit.i.i:                                ; preds = %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %nk_stroke_line.exit77.i.i
  %.sink77.i.i.i.i.i = phi float [ 1.000000e+00, %bb.ao ], [ %i.jg, %bb.an ], [ 0.000000e+00, %bb.am ], [ 0.000000e+00, %bb.al ], [ %i.je, %bb.ak ], [ 1.000000e+00, %nk_stroke_line.exit77.i.i ] ; 2 uses
  %.sink76.i.i.i.i.i = phi float [ 0.000000e+00, %bb.ao ], [ 0.000000e+00, %bb.an ], [ %i.je, %bb.am ], [ 1.000000e+00, %bb.al ], [ 1.000000e+00, %bb.ak ], [ %i.jg, %nk_stroke_line.exit77.i.i ] ; 2 uses
  %.sink.i.i.i.i.i = phi float [ %i.je, %bb.ao ], [ 1.000000e+00, %bb.an ], [ 1.000000e+00, %bb.am ], [ %i.jg, %bb.al ], [ 0.000000e+00, %bb.ak ], [ 0.000000e+00, %nk_stroke_line.exit77.i.i ] ; 2 uses
  %i.jh = fcmp ogt float %.sink.i.i.i.i.i, 1.000000e+00
  %i.ji = select i1 %i.jh, float 1.000000e+00, float %.sink.i.i.i.i.i ; 2 uses
  %i.jj = fcmp ogt float %i.ji, 0.000000e+00
  %i.jk = fmul float %i.ji, 2.550000e+02
  %i.jl = fptoui float %i.jk to i8
  %i.jm = zext i8 %i.jl to i32
  %i.jn = shl nuw nsw i32 %i.jm, 16
  %i.jo = or disjoint i32 %i.jn, -16777216
  %i.jp = select i1 %i.jj, i32 %i.jo, i32 -16777216
  %i.jq = fcmp ogt float %.sink76.i.i.i.i.i, 1.000000e+00
  %i.jr = select i1 %i.jq, float 1.000000e+00, float %.sink76.i.i.i.i.i ; 2 uses
  %i.js = fcmp ogt float %i.jr, 0.000000e+00
  %i.jt = fmul float %i.jr, 2.550000e+02
  %i.ju = fptoui float %i.jt to i8
  %i.jv = zext i8 %i.ju to i32
  %i.jw = shl nuw nsw i32 %i.jv, 8
  %.sroa.2.0.insert.ext.i.i.i.i.i = select i1 %i.js, i32 %i.jw, i32 0
  %i.jx = fcmp ogt float %.sink77.i.i.i.i.i, 1.000000e+00
  %i.jy = select i1 %i.jx, float 1.000000e+00, float %.sink77.i.i.i.i.i ; 2 uses
  %i.jz = fcmp ogt float %i.jy, 0.000000e+00
  %i.ka = fmul float %i.jy, 2.550000e+02
  %i.kb = fptoui float %i.ka to i8
  %i.kc = zext i8 %i.kb to i32
  %.sroa.0.0.insert.ext.i.i.i.i.i = select i1 %i.jz, i32 %i.kc, i32 0
  %.sroa.2.0.insert.insert.i.i.i.i.i = or disjoint i32 %.sroa.2.0.insert.ext.i.i.i.i.i, %.sroa.0.0.insert.ext.i.i.i.i.i
  %.sroa.0.0.insert.insert.i.i.i.i.i = or disjoint i32 %.sroa.2.0.insert.insert.i.i.i.i.i, %i.jp ; 2 uses
  tail call void @nk_fill_rect_multi_color(ptr noundef nonnull %i.n, <2 x float> %i.u, <2 x float> %.sroa.12.8.vec.insert.i, i32 -1, i32 %.sroa.0.0.insert.insert.i.i.i.i.i, i32 %.sroa.0.0.insert.insert.i.i.i.i.i, i32 -1)
  tail call void @nk_fill_rect_multi_color(ptr noundef nonnull %i.n, <2 x float> %i.u, <2 x float> %.sroa.12.8.vec.insert.i, i32 0, i32 0, i32 -16777216, i32 -16777216)
  %i.kd = fsub float 1.000000e+00, %.sroa.0.0.vec.extract18.i.i.i49.i
  %i.ke = insertelement <2 x float> %i.fy, float %i.kd, i64 1
  %i.kf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ke, <2 x float> %.sroa.12.8.vec.insert.i, <2 x float> %i.u) ; 2 uses
  %i.kg = extractelement <2 x float> %i.kf, i64 0
  %i.kh = fptosi float %i.kg to i32               ; 3 uses
  %i.ki = sitofp i32 %i.kh to float               ; 4 uses
  %i.kj = extractelement <2 x float> %i.kf, i64 1
  %i.kk = fptosi float %i.kj to i32               ; 3 uses
  %i.kl = sitofp i32 %i.kk to float               ; 4 uses
  %i.km = load ptr, ptr %i.n, align 8, !tbaa !99
  %i.kn = tail call fastcc ptr @nk_buffer_alloc(ptr noundef %i.km, i32 noundef 0, i64 noundef 32, i64 noundef 8) ; 12 uses
  %.not.i.i80.i.i = icmp eq ptr %i.kn, null
  br i1 %.not.i.i80.i.i, label %nk_stroke_line.exit81.i.i, label %bb.ap

bb.ap:                                            ; preds = %nk_hsv_f.exit.i.i
  %i.ko = fadd float %i.ki, -2.000000e+00
  %i.kp = fadd float %i.ki, -7.000000e+00
end_hunk_1
