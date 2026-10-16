Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuklear/original/unity?download=true
inline.NumInlined: 1904
inline.NumDeleted: 211
loop-unroll.NumCompletelyUnrolled: 86
loop-unroll.NumRuntimeUnrolled: 58
loop-unroll.NumUnrolled: 145
begin_hunk_0_@nk_hsva_fv:bb.a
bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.d, i64 0 ; 2 uses
  %.sroa.0.4.vec.insert.i.i = shufflevector <2 x float> %.sroa.0.0.vec.insert.i.i, <2 x float> poison, <2 x i32> zeroinitializer
  br label %nk_hsva_colorf.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = load float, ptr %0, align 4, !tbaa !54
  %i.i = fdiv float %i.h, f0x3E2AAAAB             ; 2 uses
  %i.j = fptosi float %i.i to i32                 ; 2 uses
  %i.k = sitofp i32 %i.j to float
  %i.l = fsub float %i.i, %i.k                    ; 2 uses
  %i.m = fsub float 1.000000e+00, %i.b
  %i.n = fmul float %i.d, %i.m                    ; 6 uses
  %i.o = fneg float %i.b
  %i.p = fsub float 1.000000e+00, %i.l
  %i.q = insertelement <2 x float> poison, float %i.o, i64 0
  %i.r = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> zeroinitializer
  %i.s = insertelement <2 x float> poison, float %i.l, i64 0
  %i.t = insertelement <2 x float> %i.s, float %i.p, i64 1
  %i.u = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.r, <2 x float> %i.t, <2 x float> splat (float 1.000000e+00)) ; 2 uses
  %i.v = extractelement <2 x float> %i.u, i64 0
  %i.w = fmul float %i.d, %i.v                    ; 3 uses
  %i.x = extractelement <2 x float> %i.u, i64 1
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
  %i.q = fadd float %.sroa.0.0.vec.extract18.i.i, f0x1E3CE508
  %i.r = insertelement <2 x float> poison, float %i.q, i64 0
  %i.s = insertelement <2 x float> %i.r, float %i.p, i64 1
  %i.t = fdiv <2 x float> %i.n, %i.s              ; 2 uses
  %i.u = extractelement <2 x float> %i.t, i64 1
  %i.v = fadd float %.1.i.i, %i.u                 ; 3 uses
  %i.w = fcmp olt float %i.v, 0.000000e+00
  %i.x = fneg float %i.v
  %i.y = select i1 %i.w, float %i.x, float %i.v
  store float %i.y, ptr %0, align 4, !tbaa !54
  %i.z = extractelement <2 x float> %i.t, i64 0
  store float %i.z, ptr %1, align 4, !tbaa !54
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
  %5 = shufflevector <2 x float> %.sroa.0.0.vec.insert, <2 x float> %i.h, <2 x i32> <i32 0, i32 2>
  %.sroa.18.8.vec.insert.i = insertelement <2 x float> %i.h, float %i.d, i64 0
  %.0.i = select i1 %i.j, float -1.000000e+00, float 0.000000e+00 ; 2 uses
  %.sroa.0.0.i = select i1 %i.j, <2 x float> %5, <2 x float> %.sroa.0.4.vec.insert ; 4 uses
  %.sroa.18.0.i = select i1 %i.j, <2 x float> %.sroa.18.8.vec.insert.i, <2 x float> %i.h ; 3 uses
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %.sroa.0.0.i, i64 0
  %.sroa.0.4.vec.extract27.i = extractelement <2 x float> %.sroa.0.0.i, i64 1
  %i.k = fcmp olt float %.sroa.0.0.vec.extract.i, %.sroa.0.4.vec.extract27.i ; 2 uses
  %.sroa.0.4.vec.insert31.i = shufflevector <2 x float> %.sroa.0.0.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.l = fsub float f0xBEAAAAAB, %.0.i
  %.1.i = select i1 %i.k, float %i.l, float %.0.i
  %.sroa.0.1.i = select i1 %i.k, <2 x float> %.sroa.0.4.vec.insert31.i, <2 x float> %.sroa.0.0.i ; 3 uses
  %.sroa.0.0.vec.extract18.i = extractelement <2 x float> %.sroa.0.1.i, i64 0 ; 2 uses
  %.sroa.0.4.vec.extract33.i = extractelement <2 x float> %.sroa.0.1.i, i64 1 ; 2 uses
  %.sroa.18.8.vec.extract46.i = extractelement <2 x float> %.sroa.18.0.i, i64 0 ; 2 uses
  %i.m = fcmp olt float %.sroa.0.4.vec.extract33.i, %.sroa.18.8.vec.extract46.i
  %i.n = select i1 %i.m, float %.sroa.0.4.vec.extract33.i, float %.sroa.18.8.vec.extract46.i
  %i.o = shufflevector <2 x float> %.sroa.18.0.i, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.p = insertelement <2 x float> %i.o, float %i.n, i64 0
  %i.q = fsub <2 x float> %.sroa.0.1.i, %i.p      ; 2 uses
  %i.r = extractelement <2 x float> %i.q, i64 0
  %i.s = tail call float @llvm.fmuladd.f32(float %i.r, float 6.000000e+00, float f0x1E3CE508)
  %i.t = fadd float %.sroa.0.0.vec.extract18.i, f0x1E3CE508
  %i.u = insertelement <2 x float> poison, float %i.t, i64 0
  %i.v = insertelement <2 x float> %i.u, float %i.s, i64 1
  %i.w = fdiv <2 x float> %i.q, %i.v              ; 2 uses
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
  %i.s = fadd float %.sroa.0.0.vec.extract18.i.i, f0x1E3CE508
  %i.t = insertelement <2 x float> poison, float %i.s, i64 0
  %i.u = insertelement <2 x float> %i.t, float %i.r, i64 1
  %i.v = fdiv <2 x float> %i.p, %i.u              ; 2 uses
  %i.w = extractelement <2 x float> %i.v, i64 1
  %i.x = fadd float %.1.i.i, %i.w                 ; 3 uses
  %i.y = fcmp olt float %i.x, 0.000000e+00
  %i.z = fneg float %i.x
  %i.aa = select i1 %i.y, float %i.z, float %i.x
  store float %i.aa, ptr %0, align 4, !tbaa !54
  %i.ab = extractelement <2 x float> %i.v, i64 0
  store float %i.ab, ptr %i.a, align 4, !tbaa !54
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
  %i.k = fadd float %.sroa.0.0.vec.extract18, f0x1E3CE508
  %i.l = insertelement <2 x float> poison, float %i.k, i64 0
  %i.m = insertelement <2 x float> %i.l, float %i.j, i64 1
  %i.n = fdiv <2 x float> %i.h, %i.m              ; 2 uses
  %i.o = extractelement <2 x float> %i.n, i64 1
  %i.p = fadd float %.1, %i.o                     ; 3 uses
  %i.q = fcmp olt float %i.p, 0.000000e+00
  %i.r = fneg float %i.p
  %i.s = select i1 %i.q, float %i.r, float %i.p
  store float %i.s, ptr %0, align 4, !tbaa !54
  %i.t = extractelement <2 x float> %i.n, i64 0
  store float %i.t, ptr %1, align 4, !tbaa !54
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
  %i.n = fadd float %.sroa.0.0.vec.extract18.i, f0x1E3CE508
  %i.o = insertelement <2 x float> poison, float %i.n, i64 0
  %i.p = insertelement <2 x float> %i.o, float %i.m, i64 1
  %i.q = fdiv <2 x float> %i.k, %i.p              ; 2 uses
  %i.r = extractelement <2 x float> %i.q, i64 1
  %i.s = fadd float %.1.i, %i.r                   ; 3 uses
  %i.t = fcmp olt float %i.s, 0.000000e+00
  %i.u = fneg float %i.s
  %i.v = select i1 %i.t, float %i.u, float %i.s
  store float %i.v, ptr %0, align 4, !tbaa !54
  %i.w = extractelement <2 x float> %i.q, i64 0
  store float %i.w, ptr %i.a, align 4, !tbaa !54
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
  %2 = shufflevector <2 x float> %.sroa.0.0.vec.insert.i, <2 x float> %i.k, <2 x i32> <i32 0, i32 2>
  %.sroa.18.8.vec.insert.i.i = insertelement <2 x float> %i.k, float %i.g, i64 0
  %.0.i.i = select i1 %i.m, float -1.000000e+00, float 0.000000e+00 ; 2 uses
  %.sroa.0.0.i.i = select i1 %i.m, <2 x float> %2, <2 x float> %.sroa.0.4.vec.insert.i ; 4 uses
  %.sroa.18.0.i.i = select i1 %i.m, <2 x float> %.sroa.18.8.vec.insert.i.i, <2 x float> %i.k ; 3 uses
  %.sroa.0.0.vec.extract.i.i = extractelement <2 x float> %.sroa.0.0.i.i, i64 0
  %.sroa.0.4.vec.extract27.i.i = extractelement <2 x float> %.sroa.0.0.i.i, i64 1
  %i.n = fcmp olt float %.sroa.0.0.vec.extract.i.i, %.sroa.0.4.vec.extract27.i.i ; 2 uses
  %.sroa.0.4.vec.insert31.i.i = shufflevector <2 x float> %.sroa.0.0.i.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.o = fsub float f0xBEAAAAAB, %.0.i.i
  %.1.i.i = select i1 %i.n, float %i.o, float %.0.i.i
  %.sroa.0.1.i.i = select i1 %i.n, <2 x float> %.sroa.0.4.vec.insert31.i.i, <2 x float> %.sroa.0.0.i.i ; 3 uses
  %.sroa.0.0.vec.extract18.i.i = extractelement <2 x float> %.sroa.0.1.i.i, i64 0 ; 2 uses
  %.sroa.0.4.vec.extract33.i.i = extractelement <2 x float> %.sroa.0.1.i.i, i64 1 ; 2 uses
  %.sroa.18.8.vec.extract46.i.i = extractelement <2 x float> %.sroa.18.0.i.i, i64 0 ; 2 uses
  %i.p = fcmp olt float %.sroa.0.4.vec.extract33.i.i, %.sroa.18.8.vec.extract46.i.i
  %i.q = select i1 %i.p, float %.sroa.0.4.vec.extract33.i.i, float %.sroa.18.8.vec.extract46.i.i
  %i.r = shufflevector <2 x float> %.sroa.18.0.i.i, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.s = insertelement <2 x float> %i.r, float %i.q, i64 0
  %i.t = fsub <2 x float> %.sroa.0.1.i.i, %i.s    ; 2 uses
  %i.u = extractelement <2 x float> %i.t, i64 0
  %i.v = tail call float @llvm.fmuladd.f32(float %i.u, float 6.000000e+00, float f0x1E3CE508)
  %i.w = fadd float %.sroa.0.0.vec.extract18.i.i, f0x1E3CE508
  %i.x = insertelement <2 x float> poison, float %i.w, i64 0
  %i.y = insertelement <2 x float> %i.x, float %i.v, i64 1
  %i.z = fdiv <2 x float> %i.t, %i.y              ; 2 uses
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
  %5 = shufflevector <2 x float> %.sroa.0.0.vec.insert.i, <2 x float> %i.h, <2 x i32> <i32 0, i32 2>
  %.sroa.18.8.vec.insert.i.i = insertelement <2 x float> %i.h, float %i.d, i64 0
  %.0.i.i = select i1 %i.j, float -1.000000e+00, float 0.000000e+00 ; 2 uses
  %.sroa.0.0.i.i = select i1 %i.j, <2 x float> %5, <2 x float> %.sroa.0.4.vec.insert.i ; 4 uses
  %.sroa.18.0.i.i = select i1 %i.j, <2 x float> %.sroa.18.8.vec.insert.i.i, <2 x float> %i.h ; 3 uses
  %.sroa.0.0.vec.extract.i.i = extractelement <2 x float> %.sroa.0.0.i.i, i64 0
  %.sroa.0.4.vec.extract27.i.i = extractelement <2 x float> %.sroa.0.0.i.i, i64 1
  %i.k = fcmp olt float %.sroa.0.0.vec.extract.i.i, %.sroa.0.4.vec.extract27.i.i ; 2 uses
  %.sroa.0.4.vec.insert31.i.i = shufflevector <2 x float> %.sroa.0.0.i.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.l = fsub float f0xBEAAAAAB, %.0.i.i
  %.1.i.i = select i1 %i.k, float %i.l, float %.0.i.i
  %.sroa.0.1.i.i = select i1 %i.k, <2 x float> %.sroa.0.4.vec.insert31.i.i, <2 x float> %.sroa.0.0.i.i ; 4 uses
  %.sroa.0.0.vec.extract18.i.i = extractelement <2 x float> %.sroa.0.1.i.i, i64 0
  %.sroa.0.4.vec.extract33.i.i = extractelement <2 x float> %.sroa.0.1.i.i, i64 1 ; 2 uses
  %.sroa.18.8.vec.extract46.i.i = extractelement <2 x float> %.sroa.18.0.i.i, i64 0 ; 2 uses
  %i.m = fcmp olt float %.sroa.0.4.vec.extract33.i.i, %.sroa.18.8.vec.extract46.i.i
  %i.n = select i1 %i.m, float %.sroa.0.4.vec.extract33.i.i, float %.sroa.18.8.vec.extract46.i.i
  %i.o = shufflevector <2 x float> %.sroa.18.0.i.i, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.p = insertelement <2 x float> %i.o, float %i.n, i64 0
  %i.q = fsub <2 x float> %.sroa.0.1.i.i, %i.p    ; 2 uses
  %i.r = extractelement <2 x float> %i.q, i64 0
  %i.s = tail call float @llvm.fmuladd.f32(float %i.r, float 6.000000e+00, float f0x1E3CE508)
  %i.t = fadd float %.sroa.0.0.vec.extract18.i.i, f0x1E3CE508
  %i.u = insertelement <2 x float> poison, float %i.t, i64 0
  %i.v = insertelement <2 x float> %i.u, float %i.s, i64 1
  %i.w = fdiv <2 x float> %i.q, %i.v              ; 2 uses
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
  %2 = shufflevector <2 x float> %.sroa.0.0.vec.insert.i.i, <2 x float> %i.h, <2 x i32> <i32 0, i32 2>
  %.sroa.18.8.vec.insert.i.i.i = insertelement <2 x float> %i.h, float %i.d, i64 0
  %.0.i.i.i = select i1 %i.j, float -1.000000e+00, float 0.000000e+00 ; 2 uses
  %.sroa.0.0.i.i.i = select i1 %i.j, <2 x float> %2, <2 x float> %.sroa.0.4.vec.insert.i.i ; 4 uses
  %.sroa.18.0.i.i.i = select i1 %i.j, <2 x float> %.sroa.18.8.vec.insert.i.i.i, <2 x float> %i.h ; 3 uses
  %.sroa.0.0.vec.extract.i.i.i = extractelement <2 x float> %.sroa.0.0.i.i.i, i64 0
  %.sroa.0.4.vec.extract27.i.i.i = extractelement <2 x float> %.sroa.0.0.i.i.i, i64 1
  %i.k = fcmp olt float %.sroa.0.0.vec.extract.i.i.i, %.sroa.0.4.vec.extract27.i.i.i ; 2 uses
  %.sroa.0.4.vec.insert31.i.i.i = shufflevector <2 x float> %.sroa.0.0.i.i.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.l = fsub float f0xBEAAAAAB, %.0.i.i.i
  %.1.i.i.i = select i1 %i.k, float %i.l, float %.0.i.i.i
  %.sroa.0.1.i.i.i = select i1 %i.k, <2 x float> %.sroa.0.4.vec.insert31.i.i.i, <2 x float> %.sroa.0.0.i.i.i ; 4 uses
  %.sroa.0.0.vec.extract18.i.i.i = extractelement <2 x float> %.sroa.0.1.i.i.i, i64 0
  %.sroa.0.4.vec.extract33.i.i.i = extractelement <2 x float> %.sroa.0.1.i.i.i, i64 1 ; 2 uses
  %.sroa.18.8.vec.extract46.i.i.i = extractelement <2 x float> %.sroa.18.0.i.i.i, i64 0 ; 2 uses
  %i.m = fcmp olt float %.sroa.0.4.vec.extract33.i.i.i, %.sroa.18.8.vec.extract46.i.i.i
  %i.n = select i1 %i.m, float %.sroa.0.4.vec.extract33.i.i.i, float %.sroa.18.8.vec.extract46.i.i.i
  %i.o = shufflevector <2 x float> %.sroa.18.0.i.i.i, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.p = insertelement <2 x float> %i.o, float %i.n, i64 0
  %i.q = fsub <2 x float> %.sroa.0.1.i.i.i, %i.p  ; 2 uses
  %i.r = extractelement <2 x float> %i.q, i64 0
  %i.s = tail call float @llvm.fmuladd.f32(float %i.r, float 6.000000e+00, float f0x1E3CE508)
  %i.t = fadd float %.sroa.0.0.vec.extract18.i.i.i, f0x1E3CE508
  %i.u = insertelement <2 x float> poison, float %i.t, i64 0
  %i.v = insertelement <2 x float> %i.u, float %i.s, i64 1
  %i.w = fdiv <2 x float> %i.q, %i.v              ; 2 uses
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
  %2 = shufflevector <2 x float> %.sroa.0.0.vec.insert.i.i, <2 x float> %i.h, <2 x i32> <i32 0, i32 2>
  %.sroa.18.8.vec.insert.i.i.i = insertelement <2 x float> %i.h, float %i.d, i64 0
  %.0.i.i.i = select i1 %i.j, float -1.000000e+00, float 0.000000e+00 ; 2 uses
  %.sroa.0.0.i.i.i = select i1 %i.j, <2 x float> %2, <2 x float> %.sroa.0.4.vec.insert.i.i ; 4 uses
  %.sroa.18.0.i.i.i = select i1 %i.j, <2 x float> %.sroa.18.8.vec.insert.i.i.i, <2 x float> %i.h ; 3 uses
  %.sroa.0.0.vec.extract.i.i.i = extractelement <2 x float> %.sroa.0.0.i.i.i, i64 0
  %.sroa.0.4.vec.extract27.i.i.i = extractelement <2 x float> %.sroa.0.0.i.i.i, i64 1
  %i.k = fcmp olt float %.sroa.0.0.vec.extract.i.i.i, %.sroa.0.4.vec.extract27.i.i.i ; 2 uses
  %.sroa.0.4.vec.insert31.i.i.i = shufflevector <2 x float> %.sroa.0.0.i.i.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.l = fsub float f0xBEAAAAAB, %.0.i.i.i
  %.1.i.i.i = select i1 %i.k, float %i.l, float %.0.i.i.i
  %.sroa.0.1.i.i.i = select i1 %i.k, <2 x float> %.sroa.0.4.vec.insert31.i.i.i, <2 x float> %.sroa.0.0.i.i.i ; 4 uses
  %.sroa.0.0.vec.extract18.i.i.i = extractelement <2 x float> %.sroa.0.1.i.i.i, i64 0
  %.sroa.0.4.vec.extract33.i.i.i = extractelement <2 x float> %.sroa.0.1.i.i.i, i64 1 ; 2 uses
  %.sroa.18.8.vec.extract46.i.i.i = extractelement <2 x float> %.sroa.18.0.i.i.i, i64 0 ; 2 uses
  %i.m = fcmp olt float %.sroa.0.4.vec.extract33.i.i.i, %.sroa.18.8.vec.extract46.i.i.i
  %i.n = select i1 %i.m, float %.sroa.0.4.vec.extract33.i.i.i, float %.sroa.18.8.vec.extract46.i.i.i
  %i.o = shufflevector <2 x float> %.sroa.18.0.i.i.i, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.p = insertelement <2 x float> %i.o, float %i.n, i64 0
  %i.q = fsub <2 x float> %.sroa.0.1.i.i.i, %i.p  ; 2 uses
  %i.r = extractelement <2 x float> %i.q, i64 0
  %i.s = tail call float @llvm.fmuladd.f32(float %i.r, float 6.000000e+00, float f0x1E3CE508)
  %i.t = fadd float %.sroa.0.0.vec.extract18.i.i.i, f0x1E3CE508
  %i.u = insertelement <2 x float> poison, float %i.t, i64 0
  %i.v = insertelement <2 x float> %i.u, float %i.s, i64 1
  %i.w = fdiv <2 x float> %i.q, %i.v              ; 2 uses
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
  %5 = shufflevector <2 x float> %.sroa.0.0.vec.insert.i.i, <2 x float> %i.h, <2 x i32> <i32 0, i32 2>
  %.sroa.18.8.vec.insert.i.i.i = insertelement <2 x float> %i.h, float %i.d, i64 0
  %.0.i.i.i = select i1 %i.j, float -1.000000e+00, float 0.000000e+00 ; 2 uses
  %.sroa.0.0.i.i.i = select i1 %i.j, <2 x float> %5, <2 x float> %.sroa.0.4.vec.insert.i.i ; 4 uses
  %.sroa.18.0.i.i.i = select i1 %i.j, <2 x float> %.sroa.18.8.vec.insert.i.i.i, <2 x float> %i.h ; 3 uses
  %.sroa.0.0.vec.extract.i.i.i = extractelement <2 x float> %.sroa.0.0.i.i.i, i64 0
  %.sroa.0.4.vec.extract27.i.i.i = extractelement <2 x float> %.sroa.0.0.i.i.i, i64 1
  %i.k = fcmp olt float %.sroa.0.0.vec.extract.i.i.i, %.sroa.0.4.vec.extract27.i.i.i ; 2 uses
  %.sroa.0.4.vec.insert31.i.i.i = shufflevector <2 x float> %.sroa.0.0.i.i.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.l = fsub float f0xBEAAAAAB, %.0.i.i.i
  %.1.i.i.i = select i1 %i.k, float %i.l, float %.0.i.i.i
  %.sroa.0.1.i.i.i = select i1 %i.k, <2 x float> %.sroa.0.4.vec.insert31.i.i.i, <2 x float> %.sroa.0.0.i.i.i ; 3 uses
  %.sroa.0.0.vec.extract18.i.i.i = extractelement <2 x float> %.sroa.0.1.i.i.i, i64 0 ; 2 uses
  %.sroa.0.4.vec.extract33.i.i.i = extractelement <2 x float> %.sroa.0.1.i.i.i, i64 1 ; 2 uses
  %.sroa.18.8.vec.extract46.i.i.i = extractelement <2 x float> %.sroa.18.0.i.i.i, i64 0 ; 2 uses
  %i.m = fcmp olt float %.sroa.0.4.vec.extract33.i.i.i, %.sroa.18.8.vec.extract46.i.i.i
  %i.n = select i1 %i.m, float %.sroa.0.4.vec.extract33.i.i.i, float %.sroa.18.8.vec.extract46.i.i.i
  %i.o = shufflevector <2 x float> %.sroa.18.0.i.i.i, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.p = insertelement <2 x float> %i.o, float %i.n, i64 0
  %i.q = fsub <2 x float> %.sroa.0.1.i.i.i, %i.p  ; 2 uses
  %i.r = extractelement <2 x float> %i.q, i64 0
  %i.s = tail call float @llvm.fmuladd.f32(float %i.r, float 6.000000e+00, float f0x1E3CE508)
  %i.t = fadd float %.sroa.0.0.vec.extract18.i.i.i, f0x1E3CE508
  %i.u = insertelement <2 x float> poison, float %i.t, i64 0
  %i.v = insertelement <2 x float> %i.u, float %i.s, i64 1
  %i.w = fdiv <2 x float> %i.q, %i.v              ; 2 uses
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
  %i.q = fadd float %.sroa.0.0.vec.extract18.i.i.i, f0x1E3CE508
  %i.r = insertelement <2 x float> poison, float %i.q, i64 0
  %i.s = insertelement <2 x float> %i.r, float %i.p, i64 1
  %i.t = fdiv <2 x float> %i.n, %i.s              ; 2 uses
  %i.u = extractelement <2 x float> %i.t, i64 1
  %i.v = fadd float %.1.i.i.i, %i.u               ; 3 uses
  %i.w = fcmp olt float %i.v, 0.000000e+00
  %i.x = fneg float %i.v
  %i.y = select i1 %i.w, float %i.x, float %i.v
  %i.z = fmul float %i.y, 2.550000e+02
  %i.aa = fptoui float %i.z to i8
  %i.ab = zext i8 %i.aa to i32
  store i32 %i.ab, ptr %0, align 4, !tbaa !55
  %i.ac = extractelement <2 x float> %i.t, i64 0
  %i.ad = fmul float %i.ac, 2.550000e+02
  %i.ae = fptoui float %i.ad to i8
  %i.af = zext i8 %i.ae to i32
  store i32 %i.af, ptr %1, align 4, !tbaa !55
  %i.ag = fmul float %.sroa.0.0.vec.extract18.i.i.i, 2.550000e+02
  %i.ah = fptoui float %i.ag to i8
  %i.ai = zext i8 %i.ah to i32
  store i32 %i.ai, ptr %2, align 4, !tbaa !55
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
  %i.q = fadd float %.sroa.0.0.vec.extract18.i.i.i, f0x1E3CE508
  %i.r = insertelement <2 x float> poison, float %i.q, i64 0
  %i.s = insertelement <2 x float> %i.r, float %i.p, i64 1
  %i.t = fdiv <2 x float> %i.n, %i.s              ; 2 uses
  %i.u = extractelement <2 x float> %i.t, i64 1
  %i.v = fadd float %.1.i.i.i, %i.u               ; 3 uses
  %i.w = fcmp olt float %i.v, 0.000000e+00
  %i.x = fneg float %i.v
  %i.y = select i1 %i.w, float %i.x, float %i.v
  %i.z = fmul float %i.y, 2.550000e+02
  %i.aa = fptoui float %i.z to i8
  %i.ab = extractelement <2 x float> %i.t, i64 0
  %i.ac = fmul float %i.ab, 2.550000e+02
  %i.ad = fptoui float %i.ac to i8
  %i.ae = fmul float %.sroa.0.0.vec.extract18.i.i.i, 2.550000e+02
  %i.af = fptoui float %i.ae to i8
  store i8 %i.aa, ptr %0, align 1, !tbaa !56
  store i8 %i.ad, ptr %1, align 1, !tbaa !56
  store i8 %i.af, ptr %2, align 1, !tbaa !56
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
  %i.r = fadd float %.sroa.0.0.vec.extract18.i.i.i.i, f0x1E3CE508
  %i.s = insertelement <2 x float> poison, float %i.r, i64 0
  %i.t = insertelement <2 x float> %i.s, float %i.q, i64 1
  %i.u = fdiv <2 x float> %i.o, %i.t              ; 2 uses
  %i.v = extractelement <2 x float> %i.u, i64 1
  %i.w = fadd float %.1.i.i.i.i, %i.v             ; 3 uses
  %i.x = fcmp olt float %i.w, 0.000000e+00
  %i.y = fneg float %i.w
  %i.z = select i1 %i.x, float %i.y, float %i.w
  %i.aa = insertelement <2 x float> poison, float %i.z, i64 0
  %i.ab = shufflevector <2 x float> %i.aa, <2 x float> %i.u, <2 x i32> <i32 0, i32 2>
  %i.ac = fmul <2 x float> %i.ab, splat (float 2.550000e+02)
  %i.ad = fptoui <2 x float> %i.ac to <2 x i8>
  %i.ae = zext <2 x i8> %i.ad to <2 x i32>
  store <2 x i32> %i.ae, ptr %0, align 4, !tbaa !55
  %i.af = fmul float %.sroa.0.0.vec.extract18.i.i.i.i, 2.550000e+02
  %i.ag = fptoui float %i.af to i8
  %i.ah = zext i8 %i.ag to i32
  store i32 %i.ah, ptr %i.a, align 4, !tbaa !55
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
  %i.q = fadd float %.sroa.0.0.vec.extract18.i.i.i.i, f0x1E3CE508
  %i.r = insertelement <2 x float> poison, float %i.q, i64 0
  %i.s = insertelement <2 x float> %i.r, float %i.p, i64 1
  %i.t = fdiv <2 x float> %i.n, %i.s              ; 2 uses
  %i.u = extractelement <2 x float> %i.t, i64 1
  %i.v = fadd float %.1.i.i.i.i, %i.u             ; 3 uses
  %i.w = fcmp olt float %i.v, 0.000000e+00
  %i.x = fneg float %i.v
  %i.y = select i1 %i.w, float %i.x, float %i.v
  %i.z = fmul float %i.y, 2.550000e+02
  %i.aa = fptoui float %i.z to i8
  %i.ab = extractelement <2 x float> %i.t, i64 0
  %i.ac = fmul float %i.ab, 2.550000e+02
  %i.ad = fptoui float %i.ac to i8
  %i.ae = fmul float %.sroa.0.0.vec.extract18.i.i.i.i, 2.550000e+02
  %i.af = fptoui float %i.ae to i8
  store i8 %i.aa, ptr %0, align 1, !tbaa !56
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.ad, ptr %i.ag, align 1, !tbaa !56
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.af, ptr %i.ah, align 1, !tbaa !56
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

end_hunk_0
