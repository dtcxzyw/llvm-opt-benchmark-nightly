Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuklear/original/unity?download=true
inline.NumInlined: 1904
inline.NumDeleted: 211
loop-unroll.NumCompletelyUnrolled: 86
loop-unroll.NumRuntimeUnrolled: 58
loop-unroll.NumUnrolled: 145
begin_hunk_0_@nk_hsva_colorfv
define { <2 x float>, <2 x float> } @nk_hsva_colorfv(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load float, ptr %i.a, align 4, !tbaa !54 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load float, ptr %i.c, align 4, !tbaa !54 ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load float, ptr %i.e, align 4, !tbaa !54
  %i.g = fcmp ugt float %i.b, 0.000000e+00
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.d, i64 0 ; 2 uses
  %.sroa.0.4.vec.insert.i = shufflevector <2 x float> %.sroa.0.0.vec.insert.i, <2 x float> poison, <2 x i32> zeroinitializer
  br label %nk_hsva_colorf.exit

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
  %.sink77.i = phi float [ %i.d, %bb.h ], [ %i.y, %bb.g ], [ %i.n, %bb.f ], [ %i.n, %bb.e ], [ %i.w, %bb.d ], [ %i.d, %bb.c ]
  %.sink76.i = phi float [ %i.n, %bb.h ], [ %i.n, %bb.g ], [ %i.w, %bb.f ], [ %i.d, %bb.e ], [ %i.d, %bb.d ], [ %i.y, %bb.c ]
  %.sink.i = phi float [ %i.w, %bb.h ], [ %i.d, %bb.g ], [ %i.d, %bb.f ], [ %i.y, %bb.e ], [ %i.n, %bb.d ], [ %i.n, %bb.c ]
  %.sroa.0.0.vec.insert48.i = insertelement <2 x float> poison, float %.sink77.i, i64 0
  %.sroa.0.4.vec.insert60.i = insertelement <2 x float> %.sroa.0.0.vec.insert48.i, float %.sink76.i, i64 1
  %.sroa.16.8.vec.insert73.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.sink.i, i64 0
  br label %nk_hsva_colorf.exit

nk_hsva_colorf.exit:                              ; preds = %bb.b, %bb.i
  %.sroa.16.8.vec.insert73.sink.i = phi <2 x float> [ %.sroa.16.8.vec.insert73.i, %bb.i ], [ %.sroa.0.0.vec.insert.i, %bb.b ]
  %.sroa.0.1.i = phi <2 x float> [ %.sroa.0.4.vec.insert60.i, %bb.i ], [ %.sroa.0.4.vec.insert.i, %bb.b ]
  %.sroa.16.12.vec.insert75.i = insertelement <2 x float> %.sroa.16.8.vec.insert73.sink.i, float %i.f, i64 1
  %.fca.0.insert.i = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0.1.i, 0
  %.fca.1.insert.i = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i, <2 x float> %.sroa.16.12.vec.insert75.i, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @nk_hsva_fv(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load float, ptr %i.a, align 4, !tbaa !54 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load float, ptr %i.c, align 4, !tbaa !54 ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load float, ptr %i.e, align 4, !tbaa !54 ; 2 uses
  %i.g = fcmp ugt float %i.b, 0.000000e+00
  br i1 %i.g, label %bb.c, label %bb.b

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
  %.sroa.4.0.extract.shift = lshr i32 %4, 24
  %.sroa.3.0.extract.shift = lshr i32 %4, 16
  %.sroa.2.0.extract.shift = lshr i32 %4, 8
  %.sroa.4.0.extract.trunc = trunc nuw i32 %.sroa.4.0.extract.shift to i8
  %.sroa.3.0.extract.trunc = trunc i32 %.sroa.3.0.extract.shift to i8
  %.sroa.2.0.extract.trunc = trunc i32 %.sroa.2.0.extract.shift to i8
  %.sroa.0.0.extract.trunc = trunc i32 %4 to i8
  %5 = insertelement <4 x i8> poison, i8 %.sroa.0.0.extract.trunc, i64 0
  %6 = insertelement <4 x i8> %5, i8 %.sroa.2.0.extract.trunc, i64 1
  %7 = insertelement <4 x i8> %6, i8 %.sroa.3.0.extract.trunc, i64 2
  %8 = insertelement <4 x i8> %7, i8 %.sroa.4.0.extract.trunc, i64 3
  %i.a = uitofp <4 x i8> %8 to <4 x float>
  %i.b = fmul nnan <4 x float> %i.a, splat (float f0x3B808081) ; 4 uses
  %i.c = extractelement <4 x float> %i.b, i64 0
  store float %i.c, ptr %0, align 4, !tbaa !54
  %i.d = extractelement <4 x float> %i.b, i64 1
  store float %i.d, ptr %1, align 4, !tbaa !54
  %i.e = extractelement <4 x float> %i.b, i64 2
  store float %i.e, ptr %2, align 4, !tbaa !54
  %i.f = extractelement <4 x float> %i.b, i64 3
  store float %i.f, ptr %3, align 4, !tbaa !54
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @nk_color_fv(ptr nofree noundef writeonly captures(none) initializes((0, 16)) %0, i32 %1) local_unnamed_addr #11 {
bb.a:
  %.sroa.4.0.extract.shift.i = lshr i32 %1, 24
  %.sroa.3.0.extract.shift.i = lshr i32 %1, 16
  %.sroa.2.0.extract.shift.i = lshr i32 %1, 8
  %.sroa.4.0.extract.trunc.i = trunc nuw i32 %.sroa.4.0.extract.shift.i to i8
  %.sroa.3.0.extract.trunc.i = trunc i32 %.sroa.3.0.extract.shift.i to i8
  %.sroa.2.0.extract.trunc.i = trunc i32 %.sroa.2.0.extract.shift.i to i8
  %.sroa.0.0.extract.trunc.i = trunc i32 %1 to i8
  %2 = insertelement <4 x i8> poison, i8 %.sroa.0.0.extract.trunc.i, i64 0
  %3 = insertelement <4 x i8> %2, i8 %.sroa.2.0.extract.trunc.i, i64 1
  %4 = insertelement <4 x i8> %3, i8 %.sroa.3.0.extract.trunc.i, i64 2
  %5 = insertelement <4 x i8> %4, i8 %.sroa.4.0.extract.trunc.i, i64 3
  %i.a = uitofp <4 x i8> %5 to <4 x float>
  %i.b = fmul nnan <4 x float> %i.a, splat (float f0x3B808081)
  store <4 x float> %i.b, ptr %0, align 4, !tbaa !54
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { <2 x float>, <2 x float> } @nk_color_cf(i32 %0) local_unnamed_addr #0 {
bb.a:
  %.sroa.4.0.extract.shift.i = lshr i32 %0, 24
  %.sroa.3.0.extract.shift.i = lshr i32 %0, 16
  %.sroa.2.0.extract.shift.i = lshr i32 %0, 8
  %.sroa.4.0.extract.trunc.i = trunc nuw i32 %.sroa.4.0.extract.shift.i to i8
  %.sroa.3.0.extract.trunc.i = trunc i32 %.sroa.3.0.extract.shift.i to i8
  %.sroa.2.0.extract.trunc.i = trunc i32 %.sroa.2.0.extract.shift.i to i8
  %.sroa.0.0.extract.trunc.i = trunc i32 %0 to i8
  %1 = insertelement <4 x i8> poison, i8 %.sroa.0.0.extract.trunc.i, i64 0
  %2 = insertelement <4 x i8> %1, i8 %.sroa.2.0.extract.trunc.i, i64 1
  %3 = insertelement <4 x i8> %2, i8 %.sroa.3.0.extract.trunc.i, i64 2
  %4 = insertelement <4 x i8> %3, i8 %.sroa.4.0.extract.trunc.i, i64 3
  %i.a = uitofp <4 x i8> %4 to <4 x float>
  %i.b = fmul nnan <4 x float> %i.a, splat (float f0x3B808081) ; 2 uses
  %i.c = shufflevector <4 x float> %i.b, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.d = shufflevector <4 x float> %i.b, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.c, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %i.d, 1
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
  %.sroa.2.0.extract.shift.i = lshr i32 %1, 8
  %.sroa.3.0.extract.shift.i = lshr i32 %1, 16
  %.sroa.4.0.extract.shift.i = lshr i32 %1, 24
  %i.b = trunc i32 %1 to i8
  %i.c = insertelement <2 x i8> poison, i8 %i.b, i64 0
  %i.d = trunc i32 %.sroa.2.0.extract.shift.i to i8
  %i.e = insertelement <2 x i8> %i.c, i8 %i.d, i64 1
  %i.f = uitofp <2 x i8> %i.e to <2 x double>
  %i.g = fmul nnan <2 x double> %i.f, splat (double f0x3F70101010101010)
  store <2 x double> %i.g, ptr %0, align 8, !tbaa !63
  %.sroa.4.0.extract.trunc.i = trunc nuw i32 %.sroa.4.0.extract.shift.i to i8
  %.sroa.3.0.extract.trunc.i = trunc i32 %.sroa.3.0.extract.shift.i to i8
  %2 = insertelement <2 x i8> poison, i8 %.sroa.3.0.extract.trunc.i, i64 0
  %3 = insertelement <2 x i8> %2, i8 %.sroa.4.0.extract.trunc.i, i64 1
  %i.h = uitofp <2 x i8> %3 to <2 x double>
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
  %i.o = fadd float %.sroa.0.0.vec.extract18.i.i, f0x1E3CE508
  %i.p = extractelement <2 x float> %i.n, i64 0
  %i.q = tail call float @llvm.fmuladd.f32(float %i.p, float 6.000000e+00, float f0x1E3CE508)
  %i.r = insertelement <2 x float> poison, float %i.o, i64 0
  %i.s = insertelement <2 x float> %i.r, float %i.q, i64 1
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
  %.sroa.3.0.extract.shift.i = lshr i32 %4, 16
  %.sroa.4.0.extract.shift.i = lshr i32 %4, 24
  %i.a = uitofp i8 %.sroa.0.0.extract.trunc.i to float
  %i.b = fmul nnan float %i.a, f0x3B808081
  %.sroa.0.0.vec.insert = insertelement <2 x float> poison, float %i.b, i64 0 ; 2 uses
  %i.c = uitofp i8 %.sroa.2.0.extract.trunc.i to float
  %i.d = fmul nnan float %i.c, f0x3B808081        ; 3 uses
  %.sroa.0.4.vec.insert = insertelement <2 x float> %.sroa.0.0.vec.insert, float %i.d, i64 1
  %.sroa.4.0.extract.trunc.i = trunc nuw i32 %.sroa.4.0.extract.shift.i to i8
  %.sroa.3.0.extract.trunc.i = trunc i32 %.sroa.3.0.extract.shift.i to i8
  %5 = insertelement <2 x i8> poison, i8 %.sroa.3.0.extract.trunc.i, i64 0
  %6 = insertelement <2 x i8> %5, i8 %.sroa.4.0.extract.trunc.i, i64 1
  %i.e = uitofp <2 x i8> %6 to <2 x float>
  %i.f = fmul nnan <2 x float> %i.e, splat (float f0x3B808081) ; 4 uses
  %i.g = extractelement <2 x float> %i.f, i64 0
  %i.h = fcmp olt float %i.d, %i.g                ; 3 uses
  %i.i = shufflevector <2 x float> %.sroa.0.0.vec.insert, <2 x float> %i.f, <2 x i32> <i32 0, i32 2>
  %.sroa.18.8.vec.insert.i = insertelement <2 x float> %i.f, float %i.d, i64 0
  %.0.i = select i1 %i.h, float -1.000000e+00, float 0.000000e+00 ; 2 uses
  %.sroa.0.0.i = select i1 %i.h, <2 x float> %i.i, <2 x float> %.sroa.0.4.vec.insert ; 4 uses
  %.sroa.18.0.i = select i1 %i.h, <2 x float> %.sroa.18.8.vec.insert.i, <2 x float> %i.f ; 3 uses
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %.sroa.0.0.i, i64 0
  %.sroa.0.4.vec.extract27.i = extractelement <2 x float> %.sroa.0.0.i, i64 1
  %i.j = fcmp olt float %.sroa.0.0.vec.extract.i, %.sroa.0.4.vec.extract27.i ; 2 uses
  %.sroa.0.4.vec.insert31.i = shufflevector <2 x float> %.sroa.0.0.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.k = fsub float f0xBEAAAAAB, %.0.i
  %.1.i = select i1 %i.j, float %i.k, float %.0.i
  %.sroa.0.1.i = select i1 %i.j, <2 x float> %.sroa.0.4.vec.insert31.i, <2 x float> %.sroa.0.0.i ; 3 uses
  %.sroa.0.0.vec.extract18.i = extractelement <2 x float> %.sroa.0.1.i, i64 0 ; 2 uses
  %.sroa.0.4.vec.extract33.i = extractelement <2 x float> %.sroa.0.1.i, i64 1 ; 2 uses
  %.sroa.18.8.vec.extract46.i = extractelement <2 x float> %.sroa.18.0.i, i64 0 ; 2 uses
  %i.l = fcmp olt float %.sroa.0.4.vec.extract33.i, %.sroa.18.8.vec.extract46.i
  %i.m = select i1 %i.l, float %.sroa.0.4.vec.extract33.i, float %.sroa.18.8.vec.extract46.i
  %i.n = shufflevector <2 x float> %.sroa.18.0.i, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.o = insertelement <2 x float> %i.n, float %i.m, i64 0
  %i.p = fsub <2 x float> %.sroa.0.1.i, %i.o      ; 2 uses
  %i.q = fadd float %.sroa.0.0.vec.extract18.i, f0x1E3CE508
  %i.r = extractelement <2 x float> %i.p, i64 0
  %i.s = tail call float @llvm.fmuladd.f32(float %i.r, float 6.000000e+00, float f0x1E3CE508)
  %i.t = insertelement <2 x float> poison, float %i.q, i64 0
  %i.u = insertelement <2 x float> %i.t, float %i.s, i64 1
  %i.v = fdiv <2 x float> %i.p, %i.u              ; 2 uses
  %i.w = extractelement <2 x float> %i.v, i64 1
  %i.x = fadd float %.1.i, %i.w                   ; 3 uses
  %i.y = fcmp olt float %i.x, 0.000000e+00
  %i.z = fneg float %i.x
  %i.aa = select i1 %i.y, float %i.z, float %i.x
  store float %i.aa, ptr %0, align 4, !tbaa !54
  %i.ab = extractelement <2 x float> %i.v, i64 0
  store float %i.ab, ptr %1, align 4, !tbaa !54
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
  %i.q = fadd float %.sroa.0.0.vec.extract18.i.i, f0x1E3CE508
  %i.r = extractelement <2 x float> %i.p, i64 0
  %i.s = tail call float @llvm.fmuladd.f32(float %i.r, float 6.000000e+00, float f0x1E3CE508)
  %i.t = insertelement <2 x float> poison, float %i.q, i64 0
  %i.u = insertelement <2 x float> %i.t, float %i.s, i64 1
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
  %i.i = fadd float %.sroa.0.0.vec.extract18, f0x1E3CE508
  %i.j = extractelement <2 x float> %i.h, i64 0
  %i.k = tail call float @llvm.fmuladd.f32(float %i.j, float 6.000000e+00, float f0x1E3CE508)
  %i.l = insertelement <2 x float> poison, float %i.i, i64 0
  %i.m = insertelement <2 x float> %i.l, float %i.k, i64 1
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
  %i.l = fadd float %.sroa.0.0.vec.extract18.i, f0x1E3CE508
  %i.m = extractelement <2 x float> %i.k, i64 0
  %i.n = tail call float @llvm.fmuladd.f32(float %i.m, float 6.000000e+00, float f0x1E3CE508)
  %i.o = insertelement <2 x float> poison, float %i.l, i64 0
  %i.p = insertelement <2 x float> %i.o, float %i.n, i64 1
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
  %.sroa.3.0.extract.shift.i.i = lshr i32 %1, 16
  %.sroa.4.0.extract.shift.i.i = lshr i32 %1, 24
  %i.d = uitofp i8 %.sroa.0.0.extract.trunc.i.i to float
  %i.e = fmul nnan float %i.d, f0x3B808081
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %i.e, i64 0 ; 2 uses
  %i.f = uitofp i8 %.sroa.2.0.extract.trunc.i.i to float
  %i.g = fmul nnan float %i.f, f0x3B808081        ; 3 uses
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i, float %i.g, i64 1
  %.sroa.4.0.extract.trunc.i.i = trunc nuw i32 %.sroa.4.0.extract.shift.i.i to i8
  %.sroa.3.0.extract.trunc.i.i = trunc i32 %.sroa.3.0.extract.shift.i.i to i8
  %2 = insertelement <2 x i8> poison, i8 %.sroa.3.0.extract.trunc.i.i, i64 0
  %3 = insertelement <2 x i8> %2, i8 %.sroa.4.0.extract.trunc.i.i, i64 1
  %i.h = uitofp <2 x i8> %3 to <2 x float>
  %i.i = fmul nnan <2 x float> %i.h, splat (float f0x3B808081) ; 4 uses
  %i.j = extractelement <2 x float> %i.i, i64 0
  %i.k = fcmp olt float %i.g, %i.j                ; 3 uses
  %i.l = shufflevector <2 x float> %.sroa.0.0.vec.insert.i, <2 x float> %i.i, <2 x i32> <i32 0, i32 2>
  %.sroa.18.8.vec.insert.i.i = insertelement <2 x float> %i.i, float %i.g, i64 0
  %.0.i.i = select i1 %i.k, float -1.000000e+00, float 0.000000e+00 ; 2 uses
  %.sroa.0.0.i.i = select i1 %i.k, <2 x float> %i.l, <2 x float> %.sroa.0.4.vec.insert.i ; 4 uses
  %.sroa.18.0.i.i = select i1 %i.k, <2 x float> %.sroa.18.8.vec.insert.i.i, <2 x float> %i.i ; 3 uses
  %.sroa.0.0.vec.extract.i.i = extractelement <2 x float> %.sroa.0.0.i.i, i64 0
  %.sroa.0.4.vec.extract27.i.i = extractelement <2 x float> %.sroa.0.0.i.i, i64 1
  %i.m = fcmp olt float %.sroa.0.0.vec.extract.i.i, %.sroa.0.4.vec.extract27.i.i ; 2 uses
  %.sroa.0.4.vec.insert31.i.i = shufflevector <2 x float> %.sroa.0.0.i.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.n = fsub float f0xBEAAAAAB, %.0.i.i
  %.1.i.i = select i1 %i.m, float %i.n, float %.0.i.i
  %.sroa.0.1.i.i = select i1 %i.m, <2 x float> %.sroa.0.4.vec.insert31.i.i, <2 x float> %.sroa.0.0.i.i ; 3 uses
  %.sroa.0.0.vec.extract18.i.i = extractelement <2 x float> %.sroa.0.1.i.i, i64 0 ; 2 uses
  %.sroa.0.4.vec.extract33.i.i = extractelement <2 x float> %.sroa.0.1.i.i, i64 1 ; 2 uses
  %.sroa.18.8.vec.extract46.i.i = extractelement <2 x float> %.sroa.18.0.i.i, i64 0 ; 2 uses
  %i.o = fcmp olt float %.sroa.0.4.vec.extract33.i.i, %.sroa.18.8.vec.extract46.i.i
  %i.p = select i1 %i.o, float %.sroa.0.4.vec.extract33.i.i, float %.sroa.18.8.vec.extract46.i.i
  %i.q = shufflevector <2 x float> %.sroa.18.0.i.i, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.r = insertelement <2 x float> %i.q, float %i.p, i64 0
  %i.s = fsub <2 x float> %.sroa.0.1.i.i, %i.r    ; 2 uses
  %i.t = fadd float %.sroa.0.0.vec.extract18.i.i, f0x1E3CE508
  %i.u = extractelement <2 x float> %i.s, i64 0
  %i.v = tail call float @llvm.fmuladd.f32(float %i.u, float 6.000000e+00, float f0x1E3CE508)
  %i.w = insertelement <2 x float> poison, float %i.t, i64 0
  %i.x = insertelement <2 x float> %i.w, float %i.v, i64 1
  %i.y = fdiv <2 x float> %i.s, %i.x              ; 2 uses
  %i.z = extractelement <2 x float> %i.y, i64 1
  %i.aa = fadd float %.1.i.i, %i.z                ; 3 uses
  %i.ab = fcmp olt float %i.aa, 0.000000e+00
  %i.ac = fneg float %i.aa
  %i.ad = select i1 %i.ab, float %i.ac, float %i.aa
  store float %i.ad, ptr %0, align 4, !tbaa !54
  %i.ae = extractelement <2 x float> %i.y, i64 0
  store float %i.ae, ptr %i.a, align 4, !tbaa !54
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
  %.sroa.3.0.extract.shift.i.i = lshr i32 %4, 16
  %.sroa.4.0.extract.shift.i.i = lshr i32 %4, 24
  %i.a = uitofp i8 %.sroa.0.0.extract.trunc.i.i to float
  %i.b = fmul nnan float %i.a, f0x3B808081
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %i.b, i64 0 ; 2 uses
  %i.c = uitofp i8 %.sroa.2.0.extract.trunc.i.i to float
  %i.d = fmul nnan float %i.c, f0x3B808081        ; 3 uses
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i, float %i.d, i64 1
  %.sroa.4.0.extract.trunc.i.i = trunc nuw i32 %.sroa.4.0.extract.shift.i.i to i8
  %.sroa.3.0.extract.trunc.i.i = trunc i32 %.sroa.3.0.extract.shift.i.i to i8
  %5 = insertelement <2 x i8> poison, i8 %.sroa.3.0.extract.trunc.i.i, i64 0
  %6 = insertelement <2 x i8> %5, i8 %.sroa.4.0.extract.trunc.i.i, i64 1
  %i.e = uitofp <2 x i8> %6 to <2 x float>
  %i.f = fmul nnan <2 x float> %i.e, splat (float f0x3B808081) ; 4 uses
  %i.g = extractelement <2 x float> %i.f, i64 0
  %i.h = fcmp olt float %i.d, %i.g                ; 3 uses
  %i.i = shufflevector <2 x float> %.sroa.0.0.vec.insert.i, <2 x float> %i.f, <2 x i32> <i32 0, i32 2>
  %.sroa.18.8.vec.insert.i.i = insertelement <2 x float> %i.f, float %i.d, i64 0
  %.0.i.i = select i1 %i.h, float -1.000000e+00, float 0.000000e+00 ; 2 uses
  %.sroa.0.0.i.i = select i1 %i.h, <2 x float> %i.i, <2 x float> %.sroa.0.4.vec.insert.i ; 4 uses
  %.sroa.18.0.i.i = select i1 %i.h, <2 x float> %.sroa.18.8.vec.insert.i.i, <2 x float> %i.f ; 3 uses
  %.sroa.0.0.vec.extract.i.i = extractelement <2 x float> %.sroa.0.0.i.i, i64 0
  %.sroa.0.4.vec.extract27.i.i = extractelement <2 x float> %.sroa.0.0.i.i, i64 1
  %i.j = fcmp olt float %.sroa.0.0.vec.extract.i.i, %.sroa.0.4.vec.extract27.i.i ; 2 uses
  %.sroa.0.4.vec.insert31.i.i = shufflevector <2 x float> %.sroa.0.0.i.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.k = fsub float f0xBEAAAAAB, %.0.i.i
  %.1.i.i = select i1 %i.j, float %i.k, float %.0.i.i
  %.sroa.0.1.i.i = select i1 %i.j, <2 x float> %.sroa.0.4.vec.insert31.i.i, <2 x float> %.sroa.0.0.i.i ; 4 uses
  %.sroa.0.0.vec.extract18.i.i = extractelement <2 x float> %.sroa.0.1.i.i, i64 0
  %.sroa.0.4.vec.extract33.i.i = extractelement <2 x float> %.sroa.0.1.i.i, i64 1 ; 2 uses
  %.sroa.18.8.vec.extract46.i.i = extractelement <2 x float> %.sroa.18.0.i.i, i64 0 ; 2 uses
  %i.l = fcmp olt float %.sroa.0.4.vec.extract33.i.i, %.sroa.18.8.vec.extract46.i.i
  %i.m = select i1 %i.l, float %.sroa.0.4.vec.extract33.i.i, float %.sroa.18.8.vec.extract46.i.i
  %i.n = shufflevector <2 x float> %.sroa.18.0.i.i, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.o = insertelement <2 x float> %i.n, float %i.m, i64 0
  %i.p = fsub <2 x float> %.sroa.0.1.i.i, %i.o    ; 2 uses
  %i.q = fadd float %.sroa.0.0.vec.extract18.i.i, f0x1E3CE508
  %i.r = extractelement <2 x float> %i.p, i64 0
  %i.s = tail call float @llvm.fmuladd.f32(float %i.r, float 6.000000e+00, float f0x1E3CE508)
  %i.t = insertelement <2 x float> poison, float %i.q, i64 0
  %i.u = insertelement <2 x float> %i.t, float %i.s, i64 1
  %i.v = fdiv <2 x float> %i.p, %i.u              ; 2 uses
  %i.w = extractelement <2 x float> %i.v, i64 1
  %i.x = fadd float %.1.i.i, %i.w                 ; 3 uses
  %i.y = fcmp olt float %i.x, 0.000000e+00
  %i.z = fneg float %i.x
  %i.aa = select i1 %i.y, float %i.z, float %i.x
  %i.ab = shufflevector <2 x float> %i.v, <2 x float> %.sroa.0.1.i.i, <4 x i32> <i32 poison, i32 0, i32 2, i32 poison>
  %i.ac = insertelement <4 x float> %i.ab, float %i.aa, i64 0
  %i.ad = shufflevector <2 x float> %.sroa.18.0.i.i, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ae = shufflevector <4 x float> %i.ac, <4 x float> %i.ad, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.af = fmul <4 x float> %i.ae, splat (float 2.550000e+02)
  %i.ag = fptoui <4 x float> %i.af to <4 x i8>    ; 4 uses
  %i.ah = extractelement <4 x i8> %i.ag, i64 0
  %i.ai = zext i8 %i.ah to i32
  store i32 %i.ai, ptr %0, align 4, !tbaa !55
  %i.aj = extractelement <4 x i8> %i.ag, i64 1
  %i.ak = zext i8 %i.aj to i32
  store i32 %i.ak, ptr %1, align 4, !tbaa !55
  %i.al = extractelement <4 x i8> %i.ag, i64 2
  %i.am = zext i8 %i.al to i32
  store i32 %i.am, ptr %2, align 4, !tbaa !55
  %i.an = extractelement <4 x i8> %i.ag, i64 3
  %i.ao = zext i8 %i.an to i32
  store i32 %i.ao, ptr %3, align 4, !tbaa !55
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @nk_color_hsva_iv(ptr nofree noundef writeonly captures(none) initializes((0, 16)) %0, i32 %1) local_unnamed_addr #4 {
bb.a:
  %.sroa.0.0.extract.trunc.i.i.i = trunc i32 %1 to i8
  %.sroa.2.0.extract.shift.i.i.i = lshr i32 %1, 8
  %.sroa.2.0.extract.trunc.i.i.i = trunc i32 %.sroa.2.0.extract.shift.i.i.i to i8
  %.sroa.3.0.extract.shift.i.i.i = lshr i32 %1, 16
  %.sroa.4.0.extract.shift.i.i.i = lshr i32 %1, 24
  %i.a = uitofp i8 %.sroa.0.0.extract.trunc.i.i.i to float
  %i.b = fmul nnan float %i.a, f0x3B808081
  %.sroa.0.0.vec.insert.i.i = insertelement <2 x float> poison, float %i.b, i64 0 ; 2 uses
  %i.c = uitofp i8 %.sroa.2.0.extract.trunc.i.i.i to float
  %i.d = fmul nnan float %i.c, f0x3B808081        ; 3 uses
  %.sroa.0.4.vec.insert.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i, float %i.d, i64 1
  %.sroa.4.0.extract.trunc.i.i.i = trunc nuw i32 %.sroa.4.0.extract.shift.i.i.i to i8
  %.sroa.3.0.extract.trunc.i.i.i = trunc i32 %.sroa.3.0.extract.shift.i.i.i to i8
  %2 = insertelement <2 x i8> poison, i8 %.sroa.3.0.extract.trunc.i.i.i, i64 0
  %3 = insertelement <2 x i8> %2, i8 %.sroa.4.0.extract.trunc.i.i.i, i64 1
  %i.e = uitofp <2 x i8> %3 to <2 x float>
  %i.f = fmul nnan <2 x float> %i.e, splat (float f0x3B808081) ; 4 uses
  %i.g = extractelement <2 x float> %i.f, i64 0
  %i.h = fcmp olt float %i.d, %i.g                ; 3 uses
  %i.i = shufflevector <2 x float> %.sroa.0.0.vec.insert.i.i, <2 x float> %i.f, <2 x i32> <i32 0, i32 2>
  %.sroa.18.8.vec.insert.i.i.i = insertelement <2 x float> %i.f, float %i.d, i64 0
  %.0.i.i.i = select i1 %i.h, float -1.000000e+00, float 0.000000e+00 ; 2 uses
  %.sroa.0.0.i.i.i = select i1 %i.h, <2 x float> %i.i, <2 x float> %.sroa.0.4.vec.insert.i.i ; 4 uses
  %.sroa.18.0.i.i.i = select i1 %i.h, <2 x float> %.sroa.18.8.vec.insert.i.i.i, <2 x float> %i.f ; 3 uses
  %.sroa.0.0.vec.extract.i.i.i = extractelement <2 x float> %.sroa.0.0.i.i.i, i64 0
  %.sroa.0.4.vec.extract27.i.i.i = extractelement <2 x float> %.sroa.0.0.i.i.i, i64 1
  %i.j = fcmp olt float %.sroa.0.0.vec.extract.i.i.i, %.sroa.0.4.vec.extract27.i.i.i ; 2 uses
  %.sroa.0.4.vec.insert31.i.i.i = shufflevector <2 x float> %.sroa.0.0.i.i.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.k = fsub float f0xBEAAAAAB, %.0.i.i.i
  %.1.i.i.i = select i1 %i.j, float %i.k, float %.0.i.i.i
  %.sroa.0.1.i.i.i = select i1 %i.j, <2 x float> %.sroa.0.4.vec.insert31.i.i.i, <2 x float> %.sroa.0.0.i.i.i ; 4 uses
  %.sroa.0.0.vec.extract18.i.i.i = extractelement <2 x float> %.sroa.0.1.i.i.i, i64 0
  %.sroa.0.4.vec.extract33.i.i.i = extractelement <2 x float> %.sroa.0.1.i.i.i, i64 1 ; 2 uses
  %.sroa.18.8.vec.extract46.i.i.i = extractelement <2 x float> %.sroa.18.0.i.i.i, i64 0 ; 2 uses
  %i.l = fcmp olt float %.sroa.0.4.vec.extract33.i.i.i, %.sroa.18.8.vec.extract46.i.i.i
  %i.m = select i1 %i.l, float %.sroa.0.4.vec.extract33.i.i.i, float %.sroa.18.8.vec.extract46.i.i.i
  %i.n = shufflevector <2 x float> %.sroa.18.0.i.i.i, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.o = insertelement <2 x float> %i.n, float %i.m, i64 0
  %i.p = fsub <2 x float> %.sroa.0.1.i.i.i, %i.o  ; 2 uses
  %i.q = fadd float %.sroa.0.0.vec.extract18.i.i.i, f0x1E3CE508
  %i.r = extractelement <2 x float> %i.p, i64 0
  %i.s = tail call float @llvm.fmuladd.f32(float %i.r, float 6.000000e+00, float f0x1E3CE508)
  %i.t = insertelement <2 x float> poison, float %i.q, i64 0
  %i.u = insertelement <2 x float> %i.t, float %i.s, i64 1
  %i.v = fdiv <2 x float> %i.p, %i.u              ; 2 uses
  %i.w = extractelement <2 x float> %i.v, i64 1
  %i.x = fadd float %.1.i.i.i, %i.w               ; 3 uses
  %i.y = fcmp olt float %i.x, 0.000000e+00
  %i.z = fneg float %i.x
  %i.aa = select i1 %i.y, float %i.z, float %i.x
  %i.ab = shufflevector <2 x float> %.sroa.0.1.i.i.i, <2 x float> %.sroa.18.0.i.i.i, <4 x i32> <i32 poison, i32 poison, i32 0, i32 3>
  %i.ac = insertelement <4 x float> %i.ab, float %i.aa, i64 0
  %i.ad = shufflevector <2 x float> %i.v, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ae = shufflevector <4 x float> %i.ac, <4 x float> %i.ad, <4 x i32> <i32 0, i32 4, i32 2, i32 3>
  %i.af = fmul <4 x float> %i.ae, splat (float 2.550000e+02)
  %i.ag = fptoui <4 x float> %i.af to <4 x i8>
  %i.ah = zext <4 x i8> %i.ag to <4 x i32>
  store <4 x i32> %i.ah, ptr %0, align 4, !tbaa !55
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @nk_color_hsva_bv(ptr nofree noundef writeonly captures(none) initializes((0, 4)) %0, i32 %1) local_unnamed_addr #4 {
bb.a:
  %.sroa.0.0.extract.trunc.i.i.i = trunc i32 %1 to i8
  %.sroa.2.0.extract.shift.i.i.i = lshr i32 %1, 8
  %.sroa.2.0.extract.trunc.i.i.i = trunc i32 %.sroa.2.0.extract.shift.i.i.i to i8
  %.sroa.3.0.extract.shift.i.i.i = lshr i32 %1, 16
  %.sroa.4.0.extract.shift.i.i.i = lshr i32 %1, 24
  %i.a = uitofp i8 %.sroa.0.0.extract.trunc.i.i.i to float
  %i.b = fmul nnan float %i.a, f0x3B808081
  %.sroa.0.0.vec.insert.i.i = insertelement <2 x float> poison, float %i.b, i64 0 ; 2 uses
  %i.c = uitofp i8 %.sroa.2.0.extract.trunc.i.i.i to float
  %i.d = fmul nnan float %i.c, f0x3B808081        ; 3 uses
  %.sroa.0.4.vec.insert.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i, float %i.d, i64 1
  %.sroa.4.0.extract.trunc.i.i.i = trunc nuw i32 %.sroa.4.0.extract.shift.i.i.i to i8
  %.sroa.3.0.extract.trunc.i.i.i = trunc i32 %.sroa.3.0.extract.shift.i.i.i to i8
  %2 = insertelement <2 x i8> poison, i8 %.sroa.3.0.extract.trunc.i.i.i, i64 0
  %3 = insertelement <2 x i8> %2, i8 %.sroa.4.0.extract.trunc.i.i.i, i64 1
  %i.e = uitofp <2 x i8> %3 to <2 x float>
  %i.f = fmul nnan <2 x float> %i.e, splat (float f0x3B808081) ; 4 uses
  %i.g = extractelement <2 x float> %i.f, i64 0
  %i.h = fcmp olt float %i.d, %i.g                ; 3 uses
  %i.i = shufflevector <2 x float> %.sroa.0.0.vec.insert.i.i, <2 x float> %i.f, <2 x i32> <i32 0, i32 2>
  %.sroa.18.8.vec.insert.i.i.i = insertelement <2 x float> %i.f, float %i.d, i64 0
  %.0.i.i.i = select i1 %i.h, float -1.000000e+00, float 0.000000e+00 ; 2 uses
  %.sroa.0.0.i.i.i = select i1 %i.h, <2 x float> %i.i, <2 x float> %.sroa.0.4.vec.insert.i.i ; 4 uses
  %.sroa.18.0.i.i.i = select i1 %i.h, <2 x float> %.sroa.18.8.vec.insert.i.i.i, <2 x float> %i.f ; 3 uses
  %.sroa.0.0.vec.extract.i.i.i = extractelement <2 x float> %.sroa.0.0.i.i.i, i64 0
  %.sroa.0.4.vec.extract27.i.i.i = extractelement <2 x float> %.sroa.0.0.i.i.i, i64 1
  %i.j = fcmp olt float %.sroa.0.0.vec.extract.i.i.i, %.sroa.0.4.vec.extract27.i.i.i ; 2 uses
  %.sroa.0.4.vec.insert31.i.i.i = shufflevector <2 x float> %.sroa.0.0.i.i.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.k = fsub float f0xBEAAAAAB, %.0.i.i.i
  %.1.i.i.i = select i1 %i.j, float %i.k, float %.0.i.i.i
  %.sroa.0.1.i.i.i = select i1 %i.j, <2 x float> %.sroa.0.4.vec.insert31.i.i.i, <2 x float> %.sroa.0.0.i.i.i ; 4 uses
  %.sroa.0.0.vec.extract18.i.i.i = extractelement <2 x float> %.sroa.0.1.i.i.i, i64 0
  %.sroa.0.4.vec.extract33.i.i.i = extractelement <2 x float> %.sroa.0.1.i.i.i, i64 1 ; 2 uses
  %.sroa.18.8.vec.extract46.i.i.i = extractelement <2 x float> %.sroa.18.0.i.i.i, i64 0 ; 2 uses
  %i.l = fcmp olt float %.sroa.0.4.vec.extract33.i.i.i, %.sroa.18.8.vec.extract46.i.i.i
  %i.m = select i1 %i.l, float %.sroa.0.4.vec.extract33.i.i.i, float %.sroa.18.8.vec.extract46.i.i.i
  %i.n = shufflevector <2 x float> %.sroa.18.0.i.i.i, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.o = insertelement <2 x float> %i.n, float %i.m, i64 0
  %i.p = fsub <2 x float> %.sroa.0.1.i.i.i, %i.o  ; 2 uses
  %i.q = fadd float %.sroa.0.0.vec.extract18.i.i.i, f0x1E3CE508
  %i.r = extractelement <2 x float> %i.p, i64 0
  %i.s = tail call float @llvm.fmuladd.f32(float %i.r, float 6.000000e+00, float f0x1E3CE508)
  %i.t = insertelement <2 x float> poison, float %i.q, i64 0
  %i.u = insertelement <2 x float> %i.t, float %i.s, i64 1
  %i.v = fdiv <2 x float> %i.p, %i.u              ; 2 uses
  %i.w = extractelement <2 x float> %i.v, i64 1
  %i.x = fadd float %.1.i.i.i, %i.w               ; 3 uses
  %i.y = fcmp olt float %i.x, 0.000000e+00
  %i.z = fneg float %i.x
  %i.aa = select i1 %i.y, float %i.z, float %i.x
  %i.ab = shufflevector <2 x float> %.sroa.0.1.i.i.i, <2 x float> %.sroa.18.0.i.i.i, <4 x i32> <i32 poison, i32 poison, i32 0, i32 3>
  %i.ac = insertelement <4 x float> %i.ab, float %i.aa, i64 0
  %i.ad = shufflevector <2 x float> %i.v, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ae = shufflevector <4 x float> %i.ac, <4 x float> %i.ad, <4 x i32> <i32 0, i32 4, i32 2, i32 3>
  %i.af = fmul <4 x float> %i.ae, splat (float 2.550000e+02)
  %i.ag = fptoui <4 x float> %i.af to <4 x i8>
  store <4 x i8> %i.ag, ptr %0, align 1, !tbaa !56
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @nk_color_hsva_b(ptr nofree noundef writeonly captures(none) initializes((0, 1)) %0, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %2, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %3, i32 %4) local_unnamed_addr #4 {
bb.a:
  %.sroa.0.0.extract.trunc.i.i.i = trunc i32 %4 to i8
  %.sroa.2.0.extract.shift.i.i.i = lshr i32 %4, 8
  %.sroa.2.0.extract.trunc.i.i.i = trunc i32 %.sroa.2.0.extract.shift.i.i.i to i8
  %.sroa.3.0.extract.shift.i.i.i = lshr i32 %4, 16
  %.sroa.4.0.extract.shift.i.i.i = lshr i32 %4, 24
  %i.a = uitofp i8 %.sroa.0.0.extract.trunc.i.i.i to float
  %i.b = fmul nnan float %i.a, f0x3B808081
  %.sroa.0.0.vec.insert.i.i = insertelement <2 x float> poison, float %i.b, i64 0 ; 2 uses
  %i.c = uitofp i8 %.sroa.2.0.extract.trunc.i.i.i to float
  %i.d = fmul nnan float %i.c, f0x3B808081        ; 3 uses
  %.sroa.0.4.vec.insert.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i, float %i.d, i64 1
  %.sroa.4.0.extract.trunc.i.i.i = trunc nuw i32 %.sroa.4.0.extract.shift.i.i.i to i8
  %.sroa.3.0.extract.trunc.i.i.i = trunc i32 %.sroa.3.0.extract.shift.i.i.i to i8
  %5 = insertelement <2 x i8> poison, i8 %.sroa.3.0.extract.trunc.i.i.i, i64 0
  %6 = insertelement <2 x i8> %5, i8 %.sroa.4.0.extract.trunc.i.i.i, i64 1
  %i.e = uitofp <2 x i8> %6 to <2 x float>
  %i.f = fmul nnan <2 x float> %i.e, splat (float f0x3B808081) ; 4 uses
  %i.g = extractelement <2 x float> %i.f, i64 0
  %i.h = fcmp olt float %i.d, %i.g                ; 3 uses
  %i.i = shufflevector <2 x float> %.sroa.0.0.vec.insert.i.i, <2 x float> %i.f, <2 x i32> <i32 0, i32 2>
  %.sroa.18.8.vec.insert.i.i.i = insertelement <2 x float> %i.f, float %i.d, i64 0
  %.0.i.i.i = select i1 %i.h, float -1.000000e+00, float 0.000000e+00 ; 2 uses
  %.sroa.0.0.i.i.i = select i1 %i.h, <2 x float> %i.i, <2 x float> %.sroa.0.4.vec.insert.i.i ; 4 uses
  %.sroa.18.0.i.i.i = select i1 %i.h, <2 x float> %.sroa.18.8.vec.insert.i.i.i, <2 x float> %i.f ; 3 uses
  %.sroa.0.0.vec.extract.i.i.i = extractelement <2 x float> %.sroa.0.0.i.i.i, i64 0
  %.sroa.0.4.vec.extract27.i.i.i = extractelement <2 x float> %.sroa.0.0.i.i.i, i64 1
  %i.j = fcmp olt float %.sroa.0.0.vec.extract.i.i.i, %.sroa.0.4.vec.extract27.i.i.i ; 2 uses
  %.sroa.0.4.vec.insert31.i.i.i = shufflevector <2 x float> %.sroa.0.0.i.i.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.k = fsub float f0xBEAAAAAB, %.0.i.i.i
  %.1.i.i.i = select i1 %i.j, float %i.k, float %.0.i.i.i
  %.sroa.0.1.i.i.i = select i1 %i.j, <2 x float> %.sroa.0.4.vec.insert31.i.i.i, <2 x float> %.sroa.0.0.i.i.i ; 3 uses
  %.sroa.0.0.vec.extract18.i.i.i = extractelement <2 x float> %.sroa.0.1.i.i.i, i64 0 ; 2 uses
  %.sroa.0.4.vec.extract33.i.i.i = extractelement <2 x float> %.sroa.0.1.i.i.i, i64 1 ; 2 uses
  %.sroa.18.8.vec.extract46.i.i.i = extractelement <2 x float> %.sroa.18.0.i.i.i, i64 0 ; 2 uses
  %i.l = fcmp olt float %.sroa.0.4.vec.extract33.i.i.i, %.sroa.18.8.vec.extract46.i.i.i
  %i.m = select i1 %i.l, float %.sroa.0.4.vec.extract33.i.i.i, float %.sroa.18.8.vec.extract46.i.i.i
  %i.n = shufflevector <2 x float> %.sroa.18.0.i.i.i, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.o = insertelement <2 x float> %i.n, float %i.m, i64 0
  %i.p = fsub <2 x float> %.sroa.0.1.i.i.i, %i.o  ; 2 uses
  %i.q = fadd float %.sroa.0.0.vec.extract18.i.i.i, f0x1E3CE508
  %i.r = extractelement <2 x float> %i.p, i64 0
  %i.s = tail call float @llvm.fmuladd.f32(float %i.r, float 6.000000e+00, float f0x1E3CE508)
  %i.t = insertelement <2 x float> poison, float %i.q, i64 0
  %i.u = insertelement <2 x float> %i.t, float %i.s, i64 1
  %i.v = fdiv <2 x float> %i.p, %i.u              ; 2 uses
  %i.w = extractelement <2 x float> %i.v, i64 1
  %i.x = fadd float %.1.i.i.i, %i.w               ; 3 uses
  %i.y = fcmp olt float %i.x, 0.000000e+00
  %i.z = fneg float %i.x
  %i.aa = select i1 %i.y, float %i.z, float %i.x
  %.sroa.18.12.vec.extract.i.i.i = extractelement <2 x float> %.sroa.18.0.i.i.i, i64 1
  %i.ab = fmul float %i.aa, 2.550000e+02
  %i.ac = fptoui float %i.ab to i8
  %i.ad = extractelement <2 x float> %i.v, i64 0
  %i.ae = fmul float %i.ad, 2.550000e+02
  %i.af = fptoui float %i.ae to i8
  %i.ag = fmul float %.sroa.0.0.vec.extract18.i.i.i, 2.550000e+02
  %i.ah = fptoui float %i.ag to i8
  %i.ai = fmul nnan float %.sroa.18.12.vec.extract.i.i.i, 2.550000e+02
  %i.aj = fptoui float %i.ai to i8
  store i8 %i.ac, ptr %0, align 1, !tbaa !56
  store i8 %i.af, ptr %1, align 1, !tbaa !56
  store i8 %i.ah, ptr %2, align 1, !tbaa !56
  store i8 %i.aj, ptr %3, align 1, !tbaa !56
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
  %i.o = fadd float %.sroa.0.0.vec.extract18.i.i.i, f0x1E3CE508
  %i.p = extractelement <2 x float> %i.n, i64 0
  %i.q = tail call float @llvm.fmuladd.f32(float %i.p, float 6.000000e+00, float f0x1E3CE508)
  %i.r = insertelement <2 x float> poison, float %i.o, i64 0
  %i.s = insertelement <2 x float> %i.r, float %i.q, i64 1
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
  %i.o = fadd float %.sroa.0.0.vec.extract18.i.i.i, f0x1E3CE508
  %i.p = extractelement <2 x float> %i.n, i64 0
  %i.q = tail call float @llvm.fmuladd.f32(float %i.p, float 6.000000e+00, float f0x1E3CE508)
  %i.r = insertelement <2 x float> poison, float %i.o, i64 0
  %i.s = insertelement <2 x float> %i.r, float %i.q, i64 1
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
end_hunk_0
begin_hunk_1_@nk_draw_list_stroke_line:bb.a
  %i.f = fadd <2 x float> %1, splat (float -5.000000e-01)
  tail call void @nk_draw_list_path_line_to(ptr noundef nonnull %0, <2 x float> %i.f)
  %i.g = fadd <2 x float> %2, splat (float -5.000000e-01)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sink = phi <2 x float> [ %2, %bb.c ], [ %i.g, %bb.d ]
  tail call void @nk_draw_list_path_line_to(ptr noundef nonnull %0, <2 x float> %.sink)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !151  ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !69
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0.i.i = phi ptr [ %i.k, %bb.f ], [ null, %bb.e ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !162
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.o = load i32, ptr %i.n, align 4, !tbaa !172
  tail call void @nk_draw_list_stroke_poly_line(ptr noundef nonnull %0, ptr noundef %.0.i.i, i32 noundef %i.m, i32 %3, i32 noundef 0, float noundef %4, i32 noundef %i.o)
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !151  ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %nk_draw_list_path_stroke.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 88 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !77
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !87   ; 2 uses
  %.neg.i.i.i = sub i64 %i.t, %i.r
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 96 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !76
  %i.w = add i64 %.neg.i.i.i, %i.v
  store i64 %i.w, ptr %i.u, align 8, !tbaa !76
  %i.x = load i8, ptr %i.p, align 8, !tbaa !86, !range !88, !noundef !89
  %i.y = trunc nuw i8 %i.x to i1
  %spec.select.i.i.i = select i1 %i.y, i64 %i.t, i64 0
  store i64 %spec.select.i.i.i, ptr %i.q, align 8, !tbaa !77
  store i8 0, ptr %i.p, align 8, !tbaa !86
  br label %nk_draw_list_path_stroke.exit

nk_draw_list_path_stroke.exit:                    ; preds = %bb.g, %bb.h
  store i32 0, ptr %i.l, align 8, !tbaa !162
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 228
  store i32 0, ptr %i.z, align 4, !tbaa !170
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %nk_draw_list_path_stroke.exit
  ret void
}

; Function Attrs: nounwind uwtable
define void @nk_draw_list_fill_rect(ptr nofree noundef captures(address_is_null) %0, <2 x float> %1, <2 x float> %2, i32 %3, float noundef %4) local_unnamed_addr #20 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ugt i32 %3, 16777215
  %or.cond = select i1 %i.a, i1 %i.b, i1 false
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.d = load i32, ptr %i.c, align 8, !tbaa !156
  %i.e = icmp eq i32 %i.d, 1                      ; 2 uses
  %.sroa.013.4.vec.extract = extractelement <2 x float> %1, i64 1
  %.sroa.013.4.vec.extract23 = extractelement <2 x float> %1, i64 1
  %i.f = fadd <2 x float> %1, splat (float -5.000000e-01)
  %.sroa.013.4.vec.extract.sink = select i1 %i.e, float %.sroa.013.4.vec.extract, float %.sroa.013.4.vec.extract23
  %.sink = select i1 %i.e, <2 x float> %1, <2 x float> %i.f
  %foldExtExtBinop = fadd <2 x float> %1, %2
  %.sroa.9.12.vec.extract = extractelement <2 x float> %2, i64 1
  %i.g = fadd float %.sroa.013.4.vec.extract.sink, %.sroa.9.12.vec.extract
  %.sroa.0.4.vec.insert.i31 = insertelement <2 x float> %foldExtExtBinop, float %i.g, i64 1
  tail call void @nk_draw_list_path_rect_to(ptr noundef nonnull %0, <2 x float> %.sink, <2 x float> %.sroa.0.4.vec.insert.i31, float noundef %4)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !151  ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !69
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.i.i = phi ptr [ %i.k, %bb.c ], [ null, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !162
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.o = load i32, ptr %i.n, align 8, !tbaa !171
  tail call void @nk_draw_list_fill_poly_convex(ptr noundef nonnull %0, ptr noundef %.0.i.i, i32 noundef %i.m, i32 %3, i32 noundef %i.o)
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !151  ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %nk_draw_list_path_fill.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 88 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !77
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !87   ; 2 uses
  %.neg.i.i.i = sub i64 %i.t, %i.r
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 96 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !76
  %i.w = add i64 %.neg.i.i.i, %i.v
  store i64 %i.w, ptr %i.u, align 8, !tbaa !76
  %i.x = load i8, ptr %i.p, align 8, !tbaa !86, !range !88, !noundef !89
  %i.y = trunc nuw i8 %i.x to i1
  %spec.select.i.i.i = select i1 %i.y, i64 %i.t, i64 0
  store i64 %spec.select.i.i.i, ptr %i.q, align 8, !tbaa !77
  store i8 0, ptr %i.p, align 8, !tbaa !86
  br label %nk_draw_list_path_fill.exit

nk_draw_list_path_fill.exit:                      ; preds = %bb.d, %bb.e
  store i32 0, ptr %i.l, align 8, !tbaa !162
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 228
  store i32 0, ptr %i.z, align 4, !tbaa !170
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %nk_draw_list_path_fill.exit
  ret void
}

; Function Attrs: nounwind uwtable
define void @nk_draw_list_stroke_rect(ptr nofree noundef captures(address_is_null) %0, <2 x float> %1, <2 x float> %2, i32 %3, float noundef %4, float noundef %5) local_unnamed_addr #20 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ugt i32 %3, 16777215
  %or.cond = select i1 %i.a, i1 %i.b, i1 false
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.d = load i32, ptr %i.c, align 8, !tbaa !156
  %i.e = icmp eq i32 %i.d, 1                      ; 2 uses
  %.sroa.014.4.vec.extract = extractelement <2 x float> %1, i64 1
  %.sroa.014.4.vec.extract24 = extractelement <2 x float> %1, i64 1
  %i.f = fadd <2 x float> %1, splat (float -5.000000e-01)
  %.sroa.014.4.vec.extract.sink = select i1 %i.e, float %.sroa.014.4.vec.extract, float %.sroa.014.4.vec.extract24
  %.sink = select i1 %i.e, <2 x float> %1, <2 x float> %i.f
  %foldExtExtBinop = fadd <2 x float> %1, %2
  %.sroa.9.12.vec.extract = extractelement <2 x float> %2, i64 1
  %i.g = fadd float %.sroa.014.4.vec.extract.sink, %.sroa.9.12.vec.extract
  %.sroa.0.4.vec.insert.i32 = insertelement <2 x float> %foldExtExtBinop, float %i.g, i64 1
  tail call void @nk_draw_list_path_rect_to(ptr noundef nonnull %0, <2 x float> %.sink, <2 x float> %.sroa.0.4.vec.insert.i32, float noundef %4)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !151  ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !69
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.i.i = phi ptr [ %i.k, %bb.c ], [ null, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !162
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.o = load i32, ptr %i.n, align 4, !tbaa !172
  tail call void @nk_draw_list_stroke_poly_line(ptr noundef nonnull %0, ptr noundef %.0.i.i, i32 noundef %i.m, i32 %3, i32 noundef 1, float noundef %5, i32 noundef %i.o)
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !151  ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %nk_draw_list_path_stroke.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 88 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !77
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !87   ; 2 uses
  %.neg.i.i.i = sub i64 %i.t, %i.r
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 96 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !76
  %i.w = add i64 %.neg.i.i.i, %i.v
  store i64 %i.w, ptr %i.u, align 8, !tbaa !76
  %i.x = load i8, ptr %i.p, align 8, !tbaa !86, !range !88, !noundef !89
  %i.y = trunc nuw i8 %i.x to i1
  %spec.select.i.i.i = select i1 %i.y, i64 %i.t, i64 0
  store i64 %spec.select.i.i.i, ptr %i.q, align 8, !tbaa !77
  store i8 0, ptr %i.p, align 8, !tbaa !86
  br label %nk_draw_list_path_stroke.exit

nk_draw_list_path_stroke.exit:                    ; preds = %bb.d, %bb.e
  store i32 0, ptr %i.l, align 8, !tbaa !162
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 228
  store i32 0, ptr %i.z, align 4, !tbaa !170
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %nk_draw_list_path_stroke.exit
  ret void
}

; Function Attrs: nounwind uwtable
define void @nk_draw_list_fill_rect_multi_color(ptr nofree noundef captures(address_is_null) %0, <2 x float> %1, <2 x float> %2, i32 %3, i32 %4, i32 %5, i32 %6) local_unnamed_addr #20 {
bb.a:
  %.sroa.2.0.extract.shift.i.i = lshr i32 %3, 8
  %.sroa.3.0.extract.shift.i.i = lshr i32 %3, 16
  %.sroa.4.0.extract.shift.i.i = lshr i32 %3, 24
  %i.a = trunc i32 %3 to i8
  %i.b = insertelement <2 x i8> poison, i8 %i.a, i64 0
  %i.c = trunc i32 %.sroa.2.0.extract.shift.i.i to i8
  %i.d = insertelement <2 x i8> %i.b, i8 %i.c, i64 1
  %i.e = uitofp <2 x i8> %i.d to <2 x float>
  %i.f = fmul nnan <2 x float> %i.e, splat (float f0x3B808081)
  %.sroa.4.0.extract.trunc.i.i = trunc nuw i32 %.sroa.4.0.extract.shift.i.i to i8
  %.sroa.3.0.extract.trunc.i.i = trunc i32 %.sroa.3.0.extract.shift.i.i to i8
  %7 = insertelement <2 x i8> poison, i8 %.sroa.3.0.extract.trunc.i.i, i64 0
  %8 = insertelement <2 x i8> %7, i8 %.sroa.4.0.extract.trunc.i.i, i64 1
  %i.g = uitofp <2 x i8> %8 to <2 x float>
  %i.h = fmul nnan <2 x float> %i.g, splat (float f0x3B808081)
  %.sroa.2.0.extract.shift.i.i66 = lshr i32 %5, 8
  %.sroa.3.0.extract.shift.i.i68 = lshr i32 %5, 16
  %.sroa.4.0.extract.shift.i.i70 = lshr i32 %5, 24
  %i.i = trunc i32 %5 to i8
  %i.j = insertelement <2 x i8> poison, i8 %i.i, i64 0
  %i.k = trunc i32 %.sroa.2.0.extract.shift.i.i66 to i8
  %i.l = insertelement <2 x i8> %i.j, i8 %i.k, i64 1
  %i.m = uitofp <2 x i8> %i.l to <2 x float>
  %i.n = fmul nnan <2 x float> %i.m, splat (float f0x3B808081)
  %.sroa.4.0.extract.trunc.i.i71 = trunc nuw i32 %.sroa.4.0.extract.shift.i.i70 to i8
  %.sroa.3.0.extract.trunc.i.i69 = trunc i32 %.sroa.3.0.extract.shift.i.i68 to i8
  %9 = insertelement <2 x i8> poison, i8 %.sroa.3.0.extract.trunc.i.i69, i64 0
  %10 = insertelement <2 x i8> %9, i8 %.sroa.4.0.extract.trunc.i.i71, i64 1
  %i.o = uitofp <2 x i8> %10 to <2 x float>
  %i.p = fmul nnan <2 x float> %i.o, splat (float f0x3B808081)
  %.sroa.2.0.extract.shift.i.i73 = lshr i32 %4, 8
  %.sroa.3.0.extract.shift.i.i75 = lshr i32 %4, 16
  %.sroa.4.0.extract.shift.i.i77 = lshr i32 %4, 24
  %i.q = trunc i32 %4 to i8
  %i.r = insertelement <2 x i8> poison, i8 %i.q, i64 0
  %i.s = trunc i32 %.sroa.2.0.extract.shift.i.i73 to i8
  %i.t = insertelement <2 x i8> %i.r, i8 %i.s, i64 1
  %i.u = uitofp <2 x i8> %i.t to <2 x float>
  %i.v = fmul nnan <2 x float> %i.u, splat (float f0x3B808081)
  %.sroa.4.0.extract.trunc.i.i78 = trunc nuw i32 %.sroa.4.0.extract.shift.i.i77 to i8
  %.sroa.3.0.extract.trunc.i.i76 = trunc i32 %.sroa.3.0.extract.shift.i.i75 to i8
  %11 = insertelement <2 x i8> poison, i8 %.sroa.3.0.extract.trunc.i.i76, i64 0
  %12 = insertelement <2 x i8> %11, i8 %.sroa.4.0.extract.trunc.i.i78, i64 1
  %i.w = uitofp <2 x i8> %12 to <2 x float>
  %i.x = fmul nnan <2 x float> %i.w, splat (float f0x3B808081)
  %.sroa.2.0.extract.shift.i.i80 = lshr i32 %6, 8
  %.sroa.3.0.extract.shift.i.i82 = lshr i32 %6, 16
  %.sroa.4.0.extract.shift.i.i84 = lshr i32 %6, 24
  %i.y = trunc i32 %6 to i8
  %i.z = insertelement <2 x i8> poison, i8 %i.y, i64 0
  %i.aa = trunc i32 %.sroa.2.0.extract.shift.i.i80 to i8
  %i.ab = insertelement <2 x i8> %i.z, i8 %i.aa, i64 1
  %i.ac = uitofp <2 x i8> %i.ab to <2 x float>
  %i.ad = fmul nnan <2 x float> %i.ac, splat (float f0x3B808081)
  %.sroa.4.0.extract.trunc.i.i85 = trunc nuw i32 %.sroa.4.0.extract.shift.i.i84 to i8
  %.sroa.3.0.extract.trunc.i.i83 = trunc i32 %.sroa.3.0.extract.shift.i.i82 to i8
  %13 = insertelement <2 x i8> poison, i8 %.sroa.3.0.extract.trunc.i.i83, i64 0
  %14 = insertelement <2 x i8> %13, i8 %.sroa.4.0.extract.trunc.i.i85, i64 1
  %i.ae = uitofp <2 x i8> %14 to <2 x float>
  %i.af = fmul nnan <2 x float> %i.ae, splat (float f0x3B808081)
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %nk_draw_list_alloc_elements.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call fastcc void @nk_draw_list_push_image(ptr noundef %0, ptr %i.ah)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 204 ; 3 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !159
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !155
  %i.am = getelementptr i8, ptr %0, i64 160       ; 5 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !164
  %i.ao = shl i64 %i.an, 2
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !165
  %i.ar = tail call fastcc ptr @nk_buffer_alloc(ptr noundef %i.al, i32 noundef 0, i64 noundef %i.ao, i64 noundef %i.aq) ; 2 uses
  %.not.i = icmp eq ptr %i.ar, null               ; 2 uses
  br i1 %.not.i, label %nk_draw_list_alloc_vertices.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.as = load i32, ptr %i.ai, align 4, !tbaa !159
  %i.at = add i32 %i.as, 4
  store i32 %i.at, ptr %i.ai, align 4, !tbaa !159
  br label %nk_draw_list_alloc_vertices.exit

nk_draw_list_alloc_vertices.exit:                 ; preds = %bb.b, %bb.c
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !154
  %i.aw = tail call fastcc ptr @nk_buffer_alloc(ptr noundef %i.av, i32 noundef 0, i64 noundef 12, i64 noundef 2) ; 7 uses
  %.not.i86 = icmp eq ptr %i.aw, null
  br i1 %.not.i86, label %nk_draw_list_alloc_elements.exit.thread, label %nk_draw_list_alloc_elements.exit

nk_draw_list_alloc_elements.exit:                 ; preds = %nk_draw_list_alloc_vertices.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !151, !nonnull !89, !noundef !89 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !69
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 72
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !70
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !160
  %i.bf = sub i64 %i.bc, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !161
  %i.bj = add i32 %i.bi, -1
  %i.bk = zext i32 %i.bj to i64
  %i.bl = sub nsw i64 0, %i.bk
  %i.bm = getelementptr inbounds [32 x i8], ptr %i.bg, i64 %i.bl ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !158
  %i.bp = add i32 %i.bo, 6
  store i32 %i.bp, ptr %i.bn, align 8, !tbaa !158
  %i.bq = load i32, ptr %i.bm, align 8, !tbaa !167
  %i.br = add i32 %i.bq, 6
  store i32 %i.br, ptr %i.bm, align 8, !tbaa !167
  br i1 %.not.i, label %nk_draw_list_alloc_elements.exit.thread, label %bb.d

bb.d:                                             ; preds = %nk_draw_list_alloc_elements.exit
  %i.bs = trunc i32 %i.aj to i16                  ; 5 uses
  store i16 %i.bs, ptr %i.aw, align 2, !tbaa !106
  %i.bt = add i16 %i.bs, 1
  %i.bu = getelementptr inbounds nuw i8, ptr %i.aw, i64 2
  store i16 %i.bt, ptr %i.bu, align 2, !tbaa !106
  %i.bv = add i16 %i.bs, 2                        ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  store i16 %i.bv, ptr %i.bw, align 2, !tbaa !106
  %i.bx = getelementptr inbounds nuw i8, ptr %i.aw, i64 6
  store i16 %i.bs, ptr %i.bx, align 2, !tbaa !106
  %i.by = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i16 %i.bv, ptr %i.by, align 2, !tbaa !106
  %i.bz = add i16 %i.bs, 3
  %i.ca = getelementptr inbounds nuw i8, ptr %i.aw, i64 10
  store i16 %i.bz, ptr %i.ca, align 2, !tbaa !106
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
  %i.cc = load <2 x float>, ptr %i.cb, align 8
  %i.cd = getelementptr i8, ptr %0, i64 152       ; 4 uses
  %.val63 = load ptr, ptr %i.cd, align 8, !tbaa !168
  %.val64 = load i64, ptr %i.am, align 8, !tbaa !169
  %i.ce = tail call fastcc ptr @nk_draw_vertex(ptr noundef nonnull %i.ar, ptr %.val63, i64 %.val64, <2 x float> %1, <2 x float> %i.cc, <2 x float> %i.f, <2 x float> %i.h)
  %i.cf = load <2 x float>, ptr %i.cb, align 8
  %.val61 = load ptr, ptr %i.cd, align 8, !tbaa !168
  %.val62 = load i64, ptr %i.am, align 8, !tbaa !169
  %i.cg = fadd <2 x float> %1, %2                 ; 3 uses
  %i.ch = shufflevector <2 x float> %i.cg, <2 x float> %1, <2 x i32> <i32 0, i32 3>
  %i.ci = tail call fastcc ptr @nk_draw_vertex(ptr noundef %i.ce, ptr %.val61, i64 %.val62, <2 x float> %i.ch, <2 x float> %i.cf, <2 x float> %i.v, <2 x float> %i.x)
  %i.cj = load <2 x float>, ptr %i.cb, align 8
  %.val59 = load ptr, ptr %i.cd, align 8, !tbaa !168
  %.val60 = load i64, ptr %i.am, align 8, !tbaa !169
  %i.ck = tail call fastcc ptr @nk_draw_vertex(ptr noundef %i.ci, ptr %.val59, i64 %.val60, <2 x float> %i.cg, <2 x float> %i.cj, <2 x float> %i.n, <2 x float> %i.p)
  %i.cl = shufflevector <2 x float> %1, <2 x float> %i.cg, <2 x i32> <i32 0, i32 3>
  %i.cm = load <2 x float>, ptr %i.cb, align 8
  %.val = load ptr, ptr %i.cd, align 8, !tbaa !168
  %.val58 = load i64, ptr %i.am, align 8, !tbaa !169
  %i.cn = tail call fastcc ptr @nk_draw_vertex(ptr noundef %i.ck, ptr %.val, i64 %.val58, <2 x float> %i.cl, <2 x float> %i.cm, <2 x float> %i.ad, <2 x float> %i.af) ; 0 uses
  br label %nk_draw_list_alloc_elements.exit.thread

nk_draw_list_alloc_elements.exit.thread:          ; preds = %nk_draw_list_alloc_vertices.exit, %nk_draw_list_alloc_elements.exit, %bb.a, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define void @nk_draw_list_fill_triangle(ptr nofree noundef captures(address_is_null) %0, <2 x float> %1, <2 x float> %2, <2 x float> %3, i32 %4) local_unnamed_addr #20 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ugt i32 %4, 16777215
  %or.cond = select i1 %i.a, i1 %i.b, i1 false
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  tail call void @nk_draw_list_path_line_to(ptr noundef nonnull %0, <2 x float> %1)
  tail call void @nk_draw_list_path_line_to(ptr noundef nonnull %0, <2 x float> %2)
  tail call void @nk_draw_list_path_line_to(ptr noundef nonnull %0, <2 x float> %3)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !151  ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !69
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.i.i = phi ptr [ %i.f, %bb.c ], [ null, %bb.b ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !162
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.j = load i32, ptr %i.i, align 8, !tbaa !171
  tail call void @nk_draw_list_fill_poly_convex(ptr noundef nonnull %0, ptr noundef %.0.i.i, i32 noundef %i.h, i32 %4, i32 noundef %i.j)
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !151  ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %nk_draw_list_path_fill.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 88 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !77
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !87   ; 2 uses
  %.neg.i.i.i = sub i64 %i.o, %i.m
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 96 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !76
  %i.r = add i64 %.neg.i.i.i, %i.q
  store i64 %i.r, ptr %i.p, align 8, !tbaa !76
  %i.s = load i8, ptr %i.k, align 8, !tbaa !86, !range !88, !noundef !89
  %i.t = trunc nuw i8 %i.s to i1
  %spec.select.i.i.i = select i1 %i.t, i64 %i.o, i64 0
  store i64 %spec.select.i.i.i, ptr %i.l, align 8, !tbaa !77
  store i8 0, ptr %i.k, align 8, !tbaa !86
  br label %nk_draw_list_path_fill.exit

nk_draw_list_path_fill.exit:                      ; preds = %bb.d, %bb.e
  store i32 0, ptr %i.g, align 8, !tbaa !162
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 228
  store i32 0, ptr %i.u, align 4, !tbaa !170
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %nk_draw_list_path_fill.exit
  ret void
}

; Function Attrs: nounwind uwtable
define void @nk_draw_list_stroke_triangle(ptr nofree noundef captures(address_is_null) %0, <2 x float> %1, <2 x float> %2, <2 x float> %3, i32 %4, float noundef %5) local_unnamed_addr #20 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ugt i32 %4, 16777215
  %or.cond = select i1 %i.a, i1 %i.b, i1 false
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  tail call void @nk_draw_list_path_line_to(ptr noundef nonnull %0, <2 x float> %1)
  tail call void @nk_draw_list_path_line_to(ptr noundef nonnull %0, <2 x float> %2)
  tail call void @nk_draw_list_path_line_to(ptr noundef nonnull %0, <2 x float> %3)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !151  ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !69
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.i.i = phi ptr [ %i.f, %bb.c ], [ null, %bb.b ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !162
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.j = load i32, ptr %i.i, align 4, !tbaa !172
  tail call void @nk_draw_list_stroke_poly_line(ptr noundef nonnull %0, ptr noundef %.0.i.i, i32 noundef %i.h, i32 %4, i32 noundef 1, float noundef %5, i32 noundef %i.j)
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !151  ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %nk_draw_list_path_stroke.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 88 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !77
end_hunk_1
begin_hunk_2_@nk_draw_list_stroke_circle:bb.a
  %.neg.i.i.i = sub i64 %i.ax, %i.av
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 96 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !76
  %i.ba = add i64 %.neg.i.i.i, %i.az
  store i64 %i.ba, ptr %i.ay, align 8, !tbaa !76
  %i.bb = load i8, ptr %i.at, align 8, !tbaa !86, !range !88, !noundef !89
  %i.bc = trunc nuw i8 %i.bb to i1
  %spec.select.i.i.i = select i1 %i.bc, i64 %i.ax, i64 0
  store i64 %spec.select.i.i.i, ptr %i.au, align 8, !tbaa !77
  store i8 0, ptr %i.at, align 8, !tbaa !86
  br label %nk_draw_list_path_stroke.exit

nk_draw_list_path_stroke.exit:                    ; preds = %bb.f, %bb.g
  store i32 0, ptr %i.ap, align 8, !tbaa !162
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 228
  store i32 0, ptr %i.bd, align 4, !tbaa !170
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %nk_draw_list_path_stroke.exit
  ret void
}

; Function Attrs: nounwind uwtable
define void @nk_draw_list_stroke_curve(ptr nofree noundef captures(address_is_null) %0, <2 x float> %1, <2 x float> %2, <2 x float> %3, <2 x float> %4, i32 %5, i32 noundef %6, float noundef %7) local_unnamed_addr #20 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ugt i32 %5, 16777215
  %or.cond = select i1 %i.a, i1 %i.b, i1 false
  br i1 %or.cond, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  tail call void @nk_draw_list_path_line_to(ptr noundef nonnull %0, <2 x float> %1)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !162  ; 2 uses
  %.not40.i = icmp eq i32 %i.d, 0
  br i1 %.not40.i, label %nk_draw_list_path_curve_to.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @llvm.umax.i32(i32 %6, i32 1) ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !151, !nonnull !89, !noundef !89
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !69
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.k = load i32, ptr %i.j, align 4, !tbaa !170
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.l
  %i.n = add i32 %i.d, -1
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.o
  %.sroa.0.0.copyload.i.i = load <2 x float>, ptr %i.p, align 4
  %i.q = uitofp i32 %i.e to float
  %i.r = fdiv nnan float 1.000000e+00, %i.q
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.042.i = phi i32 [ 1, %bb.c ], [ %i.aq, %bb.d ] ; 2 uses
  %i.s = uitofp i32 %.042.i to float
  %i.t = fmul float %i.r, %i.s                    ; 7 uses
  %i.u = fsub float 1.000000e+00, %i.t            ; 5 uses
  %i.v = fmul float %i.u, %i.u
  %i.w = fmul float %i.u, 3.000000e+00            ; 2 uses
  %i.x = fmul float %i.u, %i.w
  %i.y = fmul float %i.t, %i.w
  %i.z = fmul float %i.t, %i.t
  %i.aa = fmul float %i.t, %i.x
  %i.ab = fmul float %i.u, %i.v
  %i.ac = fmul float %i.t, %i.y
  %i.ad = fmul float %i.t, %i.z
  %i.ae = insertelement <2 x float> poison, float %i.aa, i64 0
  %i.af = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ag = fmul <2 x float> %2, %i.af
  %i.ah = insertelement <2 x float> poison, float %i.ab, i64 0
  %i.ai = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ai, <2 x float> %.sroa.0.0.copyload.i.i, <2 x float> %i.ag)
  %i.ak = insertelement <2 x float> poison, float %i.ac, i64 0
  %i.al = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> zeroinitializer
  %i.am = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.al, <2 x float> %3, <2 x float> %i.aj)
  %i.an = insertelement <2 x float> poison, float %i.ad, i64 0
  %i.ao = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ap = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ao, <2 x float> %4, <2 x float> %i.am)
  tail call void @nk_draw_list_path_line_to(ptr noundef nonnull %0, <2 x float> %i.ap)
  %i.aq = add i32 %.042.i, 1                      ; 2 uses
  %.not41.i = icmp ugt i32 %i.aq, %i.e
  br i1 %.not41.i, label %nk_draw_list_path_curve_to.exit, label %bb.d, !llvm.loop !13

nk_draw_list_path_curve_to.exit:                  ; preds = %bb.d, %bb.b
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !151 ; 2 uses
  %.not.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %nk_draw_list_path_curve_to.exit
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 64
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !69
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %nk_draw_list_path_curve_to.exit
  %.0.i.i = phi ptr [ %i.au, %bb.e ], [ null, %nk_draw_list_path_curve_to.exit ]
  %i.av = load i32, ptr %i.c, align 8, !tbaa !162
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !172
  tail call void @nk_draw_list_stroke_poly_line(ptr noundef nonnull %0, ptr noundef %.0.i.i, i32 noundef %i.av, i32 %5, i32 noundef 0, float noundef %7, i32 noundef %i.ax)
  %i.ay = load ptr, ptr %i.ar, align 8, !tbaa !151 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i, label %nk_draw_list_path_stroke.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 88 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !77
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !87 ; 2 uses
  %.neg.i.i.i = sub i64 %i.bc, %i.ba
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 96 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !76
  %i.bf = add i64 %.neg.i.i.i, %i.be
  store i64 %i.bf, ptr %i.bd, align 8, !tbaa !76
  %i.bg = load i8, ptr %i.ay, align 8, !tbaa !86, !range !88, !noundef !89
  %i.bh = trunc nuw i8 %i.bg to i1
  %spec.select.i.i.i = select i1 %i.bh, i64 %i.bc, i64 0
  store i64 %spec.select.i.i.i, ptr %i.az, align 8, !tbaa !77
  store i8 0, ptr %i.ay, align 8, !tbaa !86
  br label %nk_draw_list_path_stroke.exit

nk_draw_list_path_stroke.exit:                    ; preds = %bb.f, %bb.g
  store i32 0, ptr %i.c, align 8, !tbaa !162
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 228
  store i32 0, ptr %i.bi, align 4, !tbaa !170
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %nk_draw_list_path_stroke.exit
  ret void
}

; Function Attrs: nounwind uwtable
define void @nk_draw_list_add_image(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly byval(%struct.nk_image) align 8 captures(none) %1, <2 x float> %2, <2 x float> %3, i32 %4) local_unnamed_addr #20 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8
  tail call fastcc void @nk_draw_list_push_image(ptr noundef %0, ptr %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load <2 x i16>, ptr %i.b, align 8        ; 2 uses
  %i.d = icmp ne <2 x i16> %i.c, zeroinitializer  ; 2 uses
  %i.e = extractelement <2 x i1> %i.d, i64 0
  %i.f = extractelement <2 x i1> %i.d, i64 1
  %or.cond = select i1 %i.e, i1 true, i1 %i.f
  br i1 %or.cond, label %nk_image_is_subimage.exit.thread, label %bb.c

nk_image_is_subimage.exit.thread:                 ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.h = uitofp <2 x i16> %i.c to <2 x float>     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load <2 x i16>, ptr %i.g, align 4, !tbaa !106 ; 2 uses
  %i.k = uitofp <2 x i16> %i.j to <2 x float>
  %i.l = fdiv <2 x float> %i.k, %i.h
  %i.m = zext <2 x i16> %i.j to <2 x i32>
  %i.n = load <2 x i16>, ptr %i.i, align 8, !tbaa !106
  %i.o = zext <2 x i16> %i.n to <2 x i32>
  %i.p = add nuw nsw <2 x i32> %i.o, %i.m
  %i.q = uitofp nneg <2 x i32> %i.p to <2 x float>
  %i.r = fdiv <2 x float> %i.q, %i.h
  %i.s = fadd <2 x float> %2, %3
  tail call fastcc void @nk_draw_list_push_rect_uv(ptr noundef %0, <2 x float> %2, <2 x float> %i.s, <2 x float> %i.l, <2 x float> %i.r, i32 %4)
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.t = fadd <2 x float> %2, %3
  tail call fastcc void @nk_draw_list_push_rect_uv(ptr noundef %0, <2 x float> %2, <2 x float> %i.t, <2 x float> zeroinitializer, <2 x float> splat (float 1.000000e+00), i32 %4)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %nk_image_is_subimage.exit.thread
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define zeroext i1 @nk_image_is_subimage(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 8, !tbaa !173
  %i.c = icmp eq i16 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.e = load i16, ptr %i.d, align 2, !tbaa !174
  %i.f = icmp ne i16 %i.e, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = phi i1 [ true, %bb.a ], [ %i.f, %bb.b ]
  ret i1 %i.g
}

; Function Attrs: nounwind uwtable
define internal fastcc void @nk_draw_list_push_rect_uv(ptr nofree noundef nonnull captures(none) %0, <2 x float> %1, <2 x float> %2, <2 x float> %3, <2 x float> %4, i32 %5) unnamed_addr #20 {
bb.a:
  %.sroa.2.0.extract.shift.i.i = lshr i32 %5, 8
  %.sroa.3.0.extract.shift.i.i = lshr i32 %5, 16
  %.sroa.4.0.extract.shift.i.i = lshr i32 %5, 24
  %i.a = trunc i32 %5 to i8
  %i.b = insertelement <2 x i8> poison, i8 %i.a, i64 0
  %i.c = trunc i32 %.sroa.2.0.extract.shift.i.i to i8
  %i.d = insertelement <2 x i8> %i.b, i8 %i.c, i64 1
  %i.e = uitofp <2 x i8> %i.d to <2 x float>
  %i.f = fmul nnan <2 x float> %i.e, splat (float f0x3B808081) ; 4 uses
  %.sroa.4.0.extract.trunc.i.i = trunc nuw i32 %.sroa.4.0.extract.shift.i.i to i8
  %.sroa.3.0.extract.trunc.i.i = trunc i32 %.sroa.3.0.extract.shift.i.i to i8
  %6 = insertelement <2 x i8> poison, i8 %.sroa.3.0.extract.trunc.i.i, i64 0
  %7 = insertelement <2 x i8> %6, i8 %.sroa.4.0.extract.trunc.i.i, i64 1
  %i.g = uitofp <2 x i8> %7 to <2 x float>
  %i.h = fmul nnan <2 x float> %i.g, splat (float f0x3B808081) ; 4 uses
  %.sroa.0.4.vec.insert.i = shufflevector <2 x float> %4, <2 x float> %3, <2 x i32> <i32 0, i32 3>
  %.sroa.0.4.vec.insert.i52 = shufflevector <2 x float> %3, <2 x float> %4, <2 x i32> <i32 0, i32 3>
  %.sroa.0.4.vec.insert.i54 = shufflevector <2 x float> %2, <2 x float> %1, <2 x i32> <i32 0, i32 3>
  %.sroa.0.4.vec.insert.i56 = shufflevector <2 x float> %1, <2 x float> %2, <2 x i32> <i32 0, i32 3>
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 204 ; 3 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !159
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !155
  %i.m = getelementptr i8, ptr %0, i64 160        ; 5 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !164
  %i.o = shl i64 %i.n, 2
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.q = load i64, ptr %i.p, align 8, !tbaa !165
  %i.r = tail call fastcc ptr @nk_buffer_alloc(ptr noundef %i.l, i32 noundef 0, i64 noundef %i.o, i64 noundef %i.q) ; 2 uses
  %.not.i = icmp eq ptr %i.r, null                ; 2 uses
  br i1 %.not.i, label %nk_draw_list_alloc_vertices.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = load i32, ptr %i.i, align 4, !tbaa !159
  %i.t = add i32 %i.s, 4
  store i32 %i.t, ptr %i.i, align 4, !tbaa !159
  br label %nk_draw_list_alloc_vertices.exit

nk_draw_list_alloc_vertices.exit:                 ; preds = %bb.a, %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !154
  %i.w = tail call fastcc ptr @nk_buffer_alloc(ptr noundef %i.v, i32 noundef 0, i64 noundef 12, i64 noundef 2) ; 7 uses
  %.not.i57 = icmp eq ptr %i.w, null
  br i1 %.not.i57, label %nk_draw_list_alloc_elements.exit.thread, label %nk_draw_list_alloc_elements.exit

nk_draw_list_alloc_elements.exit:                 ; preds = %nk_draw_list_alloc_vertices.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !151, !nonnull !89, !noundef !89 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !69
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 72
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !70
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !160
  %i.af = sub i64 %i.ac, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !161
  %i.aj = add i32 %i.ai, -1
  %i.ak = zext i32 %i.aj to i64
  %i.al = sub nsw i64 0, %i.ak
  %i.am = getelementptr inbounds [32 x i8], ptr %i.ag, i64 %i.al ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !158
  %i.ap = add i32 %i.ao, 6
  store i32 %i.ap, ptr %i.an, align 8, !tbaa !158
  %i.aq = load i32, ptr %i.am, align 8, !tbaa !167
  %i.ar = add i32 %i.aq, 6
  store i32 %i.ar, ptr %i.am, align 8, !tbaa !167
  br i1 %.not.i, label %nk_draw_list_alloc_elements.exit.thread, label %bb.c

bb.c:                                             ; preds = %nk_draw_list_alloc_elements.exit
  %i.as = trunc i32 %i.j to i16                   ; 5 uses
  store i16 %i.as, ptr %i.w, align 2, !tbaa !106
  %i.at = add i16 %i.as, 1
  %i.au = getelementptr inbounds nuw i8, ptr %i.w, i64 2
  store i16 %i.at, ptr %i.au, align 2, !tbaa !106
  %i.av = add i16 %i.as, 2                        ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  store i16 %i.av, ptr %i.aw, align 2, !tbaa !106
  %i.ax = getelementptr inbounds nuw i8, ptr %i.w, i64 6
  store i16 %i.as, ptr %i.ax, align 2, !tbaa !106
  %i.ay = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i16 %i.av, ptr %i.ay, align 2, !tbaa !106
  %i.az = add i16 %i.as, 3
  %i.ba = getelementptr inbounds nuw i8, ptr %i.w, i64 10
  store i16 %i.az, ptr %i.ba, align 2, !tbaa !106
  %i.bb = getelementptr i8, ptr %0, i64 152       ; 4 uses
  %.val49 = load ptr, ptr %i.bb, align 8, !tbaa !168
  %.val50 = load i64, ptr %i.m, align 8, !tbaa !169
  %i.bc = tail call fastcc ptr @nk_draw_vertex(ptr noundef nonnull %i.r, ptr %.val49, i64 %.val50, <2 x float> %1, <2 x float> %3, <2 x float> %i.f, <2 x float> %i.h)
  %.val47 = load ptr, ptr %i.bb, align 8, !tbaa !168
  %.val48 = load i64, ptr %i.m, align 8, !tbaa !169
  %i.bd = tail call fastcc ptr @nk_draw_vertex(ptr noundef %i.bc, ptr %.val47, i64 %.val48, <2 x float> %.sroa.0.4.vec.insert.i54, <2 x float> %.sroa.0.4.vec.insert.i, <2 x float> %i.f, <2 x float> %i.h)
  %.val45 = load ptr, ptr %i.bb, align 8, !tbaa !168
  %.val46 = load i64, ptr %i.m, align 8, !tbaa !169
  %i.be = tail call fastcc ptr @nk_draw_vertex(ptr noundef %i.bd, ptr %.val45, i64 %.val46, <2 x float> %2, <2 x float> %4, <2 x float> %i.f, <2 x float> %i.h)
  %.val = load ptr, ptr %i.bb, align 8, !tbaa !168
  %.val44 = load i64, ptr %i.m, align 8, !tbaa !169
  %i.bf = tail call fastcc ptr @nk_draw_vertex(ptr noundef %i.be, ptr %.val, i64 %.val44, <2 x float> %.sroa.0.4.vec.insert.i56, <2 x float> %.sroa.0.4.vec.insert.i52, <2 x float> %i.f, <2 x float> %i.h) ; 0 uses
  br label %nk_draw_list_alloc_elements.exit.thread

nk_draw_list_alloc_elements.exit.thread:          ; preds = %nk_draw_list_alloc_vertices.exit, %nk_draw_list_alloc_elements.exit, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define void @nk_draw_list_add_text(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1, <2 x float> %2, <2 x float> %3, ptr nofree noundef readonly captures(address_is_null) %4, i32 noundef %5, float noundef %6, i32 %7) local_unnamed_addr #20 {
bb.a:
  %8 = alloca %struct.nk_user_font_glyph, align 8 ; 8 uses
  %.sroa.2.0.extract.shift = lshr i32 %7, 24
  %.sroa.2.0.extract.trunc = trunc nuw i32 %.sroa.2.0.extract.shift to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #50
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne i32 %5, 0
  %or.cond = and i1 %i.a, %i.b
  %i.c = icmp ne ptr %4, null
  %or.cond3 = and i1 %i.c, %or.cond
  br i1 %or.cond3, label %bb.b, label %nk_utf_decode.exit.thread101

bb.b:                                             ; preds = %bb.a
  %i.d = load float, ptr %0, align 8, !tbaa !752  ; 2 uses
  %.sroa.044.0.vec.extract = extractelement <2 x float> %2, i64 0 ; 2 uses
  %foldExtExtBinop = fadd <2 x float> %2, %3
  %i.e = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.f = fcmp olt float %i.d, %i.e
  br i1 %i.f, label %bb.c, label %nk_utf_decode.exit.thread101

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load float, ptr %i.g, align 8, !tbaa !753
  %i.i = fadd float %i.d, %i.h
  %i.j = fcmp olt float %.sroa.044.0.vec.extract, %i.i
  br i1 %i.j, label %bb.d, label %nk_utf_decode.exit.thread101

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.l = load float, ptr %i.k, align 4, !tbaa !754 ; 2 uses
  %foldExtExtBinop161 = fadd <2 x float> %2, %3
  %i.m = extractelement <2 x float> %foldExtExtBinop161, i64 1
  %i.n = fcmp olt float %i.l, %i.m
  br i1 %i.n, label %bb.e, label %nk_utf_decode.exit.thread101

bb.e:                                             ; preds = %bb.d
  %.sroa.044.4.vec.extract = extractelement <2 x float> %2, i64 1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.p = load float, ptr %i.o, align 4, !tbaa !755
  %i.q = fadd float %i.l, %i.p
  %i.r = fcmp olt float %.sroa.044.4.vec.extract, %i.q
  br i1 %i.r, label %bb.f, label %nk_utf_decode.exit.thread101

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.t = load ptr, ptr %i.s, align 8
  tail call fastcc void @nk_draw_list_push_image(ptr noundef %0, ptr %i.t)
  %i.u = load i8, ptr %4, align 1, !tbaa !56      ; 7 uses
  %i.v = icmp slt i8 %i.u, -64
  br i1 %i.v, label %nk_utf_decode.exit.thread101, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = icmp slt i8 %i.u, 0
  br i1 %i.w, label %bb.h, label %._crit_edge.thread82.i

._crit_edge.thread82.i:                           ; preds = %bb.g
  %i.x = zext nneg i8 %i.u to i32
  br label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.y = icmp samesign ult i8 %i.u, -32
  br i1 %i.y, label %nk_utf_decode_byte.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = icmp samesign ult i8 %i.u, -16
  br i1 %i.z, label %nk_utf_decode_byte.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = and i8 %i.u, -8
  %i.ab = icmp eq i8 %i.aa, -16
  br i1 %i.ab, label %nk_utf_decode_byte.exit.i, label %nk_utf_decode.exit.thread101

nk_utf_decode_byte.exit.i:                        ; preds = %bb.j, %bb.i, %bb.h
  %storemerge12.lcssa.wide.i.i = phi i32 [ 4, %bb.j ], [ 3, %bb.i ], [ 2, %bb.h ] ; 3 uses
  %i.ac = phi i8 [ 7, %bb.j ], [ 15, %bb.i ], [ 31, %bb.h ]
  %i.ad = icmp sgt i32 %5, 1
  br i1 %i.ad, label %.lr.ph.preheader.i, label %nk_utf_decode.exit.thread101

.lr.ph.preheader.i:                               ; preds = %nk_utf_decode_byte.exit.i
  %i.ae = and i8 %i.ac, %i.u
  %i.af = zext nneg i8 %i.ae to i32
  %i.ag = zext nneg i32 %5 to i64
  %zext = zext nneg i32 %storemerge12.lcssa.wide.i.i to i64
  %i.ah = add nsw i64 %i.ag, -2
  %i.ai = add nsw i32 %storemerge12.lcssa.wide.i.i, -2
  %i.aj = zext nneg i32 %i.ai to i64
  %umin = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 %i.aj) ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 1
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !56  ; 2 uses
  %i.am = icmp slt i8 %i.al, -64
  br i1 %i.am, label %bb.k, label %nk_utf_decode.exit.thread101

bb.k:                                             ; preds = %.lr.ph.preheader.i
  %i.an = and i8 %i.al, 63
  %i.ao = zext nneg i8 %i.an to i32
  %i.ap = shl nuw nsw i32 %i.af, 6
  %i.aq = or disjoint i32 %i.ap, %i.ao            ; 2 uses
  %exitcond.not = icmp eq i64 %umin, 0
  br i1 %exitcond.not, label %._crit_edge.i, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !56  ; 2 uses
  %i.at = icmp slt i8 %i.as, -64
  br i1 %i.at, label %bb.l, label %nk_utf_decode.exit.thread101
end_hunk_2
