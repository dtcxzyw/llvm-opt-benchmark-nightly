Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuklear/original/unity?download=true
inline.NumInlined: 1904
inline.NumDeleted: 211
loop-unroll.NumCompletelyUnrolled: 86
loop-unroll.NumRuntimeUnrolled: 58
loop-unroll.NumUnrolled: 145
begin_hunk_0_@nk_rgba_fv:bb.a
  %.sroa.0.0.insert.ext.i = select i1 %i.ae, i32 %i.ag, i32 0
  %.sroa.2.0.insert.insert.i = or disjoint i32 %.sroa.2.0.insert.ext.i, %.sroa.0.0.insert.ext.i
  %.sroa.0.0.insert.insert.i = or i32 %.sroa.2.0.insert.insert.i, %.sroa.4.0.insert.ext.i
  ret i32 %.sroa.0.0.insert.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define i32 @nk_rgba_cf(<2 x float> %0, <2 x float> %1) local_unnamed_addr #2 {
bb.a:
  %i.a = fcmp ogt <2 x float> %1, splat (float 1.000000e+00)
  %i.b = select <2 x i1> %i.a, <2 x float> splat (float 1.000000e+00), <2 x float> %1 ; 3 uses
  %i.c = extractelement <2 x float> %i.b, i64 0
  %i.d = fmul float %i.c, 2.550000e+02
  %i.e = fptoui float %i.d to i8
  %i.f = zext i8 %i.e to i32
  %i.g = shl nuw nsw i32 %i.f, 16
  %i.h = fcmp ogt <2 x float> %i.b, zeroinitializer ; 2 uses
  %i.i = extractelement <2 x i1> %i.h, i64 0
  %.sroa.3.0.insert.ext.i = select i1 %i.i, i32 %i.g, i32 0 ; 2 uses
  %i.j = extractelement <2 x i1> %i.h, i64 1
  br i1 %i.j, label %bb.b, label %nk_rgba_f.exit

bb.b:                                             ; preds = %bb.a
  %i.k = extractelement <2 x float> %i.b, i64 1
  %i.l = fmul float %i.k, 2.550000e+02
  %i.m = fptoui float %i.l to i8
  %i.n = zext i8 %i.m to i32
  %i.o = shl nuw i32 %i.n, 24
  %i.p = or disjoint i32 %.sroa.3.0.insert.ext.i, %i.o
  br label %nk_rgba_f.exit

nk_rgba_f.exit:                                   ; preds = %bb.a, %bb.b
  %.sroa.4.0.insert.ext.i = phi i32 [ %i.p, %bb.b ], [ %.sroa.3.0.insert.ext.i, %bb.a ]
  %i.q = fcmp ogt <2 x float> %0, splat (float 1.000000e+00)
  %i.r = select <2 x i1> %i.q, <2 x float> splat (float 1.000000e+00), <2 x float> %0 ; 2 uses
  %i.s = fcmp ogt <2 x float> %i.r, zeroinitializer ; 2 uses
  %i.t = extractelement <2 x i1> %i.s, i64 1
  %i.u = fmul <2 x float> %i.r, splat (float 2.550000e+02) ; 2 uses
  %i.v = extractelement <2 x float> %i.u, i64 1
  %i.w = fptoui float %i.v to i8
  %i.x = zext i8 %i.w to i32
  %i.y = shl nuw nsw i32 %i.x, 8
  %.sroa.2.0.insert.ext.i = select i1 %i.t, i32 %i.y, i32 0
  %i.z = extractelement <2 x float> %i.u, i64 0
  %i.aa = fptoui float %i.z to i8
  %i.ab = zext i8 %i.aa to i32
  %i.ac = extractelement <2 x i1> %i.s, i64 0
  %.sroa.0.0.insert.ext.i = select i1 %i.ac, i32 %i.ab, i32 0
  %.sroa.2.0.insert.insert.i = or disjoint i32 %.sroa.2.0.insert.ext.i, %.sroa.0.0.insert.ext.i
  %.sroa.0.0.insert.insert.i = or i32 %.sroa.2.0.insert.insert.i, %.sroa.4.0.insert.ext.i
  ret i32 %.sroa.0.0.insert.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 -16777216, 0) i32 @nk_rgb_f(float noundef %0, float noundef %1, float noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = fcmp ogt float %2, 1.000000e+00
  %i.b = select i1 %i.a, float 1.000000e+00, float %2 ; 2 uses
  %i.c = fcmp ogt float %i.b, 0.000000e+00
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = fmul float %i.b, 2.550000e+02
  %i.e = fptoui float %i.d to i8
  %i.f = zext i8 %i.e to i32
  %i.g = shl nuw nsw i32 %i.f, 16
  %i.h = or disjoint i32 %i.g, -16777216
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0.insert.ext = phi i32 [ %i.h, %bb.b ], [ -16777216, %bb.a ]
  %i.i = fcmp ogt float %1, 1.000000e+00
  %i.j = select i1 %i.i, float 1.000000e+00, float %1 ; 2 uses
  %i.k = fcmp ogt float %i.j, 0.000000e+00
  %i.l = fmul float %i.j, 2.550000e+02
  %i.m = fptoui float %i.l to i8
  %i.n = zext i8 %i.m to i32
  %i.o = shl nuw nsw i32 %i.n, 8
  %.sroa.2.0.insert.ext = select i1 %i.k, i32 %i.o, i32 0
  %i.p = fcmp ogt float %0, 1.000000e+00
  %i.q = select i1 %i.p, float 1.000000e+00, float %0 ; 2 uses
  %i.r = fcmp ogt float %i.q, 0.000000e+00
  %i.s = fmul float %i.q, 2.550000e+02
  %i.t = fptoui float %i.s to i8
  %i.u = zext i8 %i.t to i32
  %.sroa.0.0.insert.ext = select i1 %i.r, i32 %i.u, i32 0
  %.sroa.2.0.insert.insert = or disjoint i32 %.sroa.2.0.insert.ext, %.sroa.0.0.insert.ext
  %.sroa.0.0.insert.insert = or i32 %.sroa.2.0.insert.insert, %.sroa.3.0.insert.ext
  ret i32 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 -16777216, 0) i32 @nk_rgb_fv(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #10 {
bb.a:
  %i.a = load <2 x float>, ptr %0, align 4, !tbaa !54 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load float, ptr %i.b, align 4, !tbaa !54 ; 2 uses
  %i.d = fcmp ogt float %i.c, 1.000000e+00
  %i.e = select i1 %i.d, float 1.000000e+00, float %i.c ; 2 uses
  %i.f = fcmp ogt float %i.e, 0.000000e+00
  br i1 %i.f, label %bb.b, label %nk_rgb_f.exit

bb.b:                                             ; preds = %bb.a
  %i.g = fmul float %i.e, 2.550000e+02
  %i.h = fptoui float %i.g to i8
  %i.i = zext i8 %i.h to i32
  %i.j = shl nuw nsw i32 %i.i, 16
  %i.k = or disjoint i32 %i.j, -16777216
  br label %nk_rgb_f.exit

nk_rgb_f.exit:                                    ; preds = %bb.a, %bb.b
  %.sroa.3.0.insert.ext.i = phi i32 [ %i.k, %bb.b ], [ -16777216, %bb.a ]
  %i.l = fcmp ogt <2 x float> %i.a, splat (float 1.000000e+00)
  %i.m = select <2 x i1> %i.l, <2 x float> splat (float 1.000000e+00), <2 x float> %i.a ; 3 uses
  %i.n = extractelement <2 x float> %i.m, i64 1
  %i.o = fcmp ogt float %i.n, 0.000000e+00
  %i.p = fmul <2 x float> %i.m, splat (float 2.550000e+02)
  %i.q = fptoui <2 x float> %i.p to <2 x i8>      ; 2 uses
  %i.r = extractelement <2 x i8> %i.q, i64 1
  %i.s = zext i8 %i.r to i32
  %i.t = shl nuw nsw i32 %i.s, 8
  %.sroa.2.0.insert.ext.i = select i1 %i.o, i32 %i.t, i32 0
  %i.u = extractelement <2 x float> %i.m, i64 0
  %i.v = fcmp ogt float %i.u, 0.000000e+00
  %i.w = extractelement <2 x i8> %i.q, i64 0
  %i.x = zext i8 %i.w to i32
  %.sroa.0.0.insert.ext.i = select i1 %i.v, i32 %i.x, i32 0
  %.sroa.2.0.insert.insert.i = or disjoint i32 %.sroa.2.0.insert.ext.i, %.sroa.0.0.insert.ext.i
  %.sroa.0.0.insert.insert.i = or i32 %.sroa.2.0.insert.insert.i, %.sroa.3.0.insert.ext.i
  ret i32 %.sroa.0.0.insert.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 -16777216, 0) i32 @nk_rgb_cf(<2 x float> %0, <2 x float> %1) local_unnamed_addr #2 {
bb.a:
  %.sroa.3.8.vec.extract = extractelement <2 x float> %1, i64 0 ; 2 uses
  %i.a = fcmp ogt float %.sroa.3.8.vec.extract, 1.000000e+00
  %i.b = select i1 %i.a, float 1.000000e+00, float %.sroa.3.8.vec.extract ; 2 uses
  %i.c = fcmp ogt float %i.b, 0.000000e+00
  br i1 %i.c, label %bb.b, label %nk_rgb_f.exit

bb.b:                                             ; preds = %bb.a
  %i.d = fmul float %i.b, 2.550000e+02
  %i.e = fptoui float %i.d to i8
  %i.f = zext i8 %i.e to i32
  %i.g = shl nuw nsw i32 %i.f, 16
  %i.h = or disjoint i32 %i.g, -16777216
  br label %nk_rgb_f.exit

nk_rgb_f.exit:                                    ; preds = %bb.a, %bb.b
  %.sroa.3.0.insert.ext.i = phi i32 [ %i.h, %bb.b ], [ -16777216, %bb.a ]
  %i.i = fcmp ogt <2 x float> %0, splat (float 1.000000e+00)
  %i.j = select <2 x i1> %i.i, <2 x float> splat (float 1.000000e+00), <2 x float> %0 ; 2 uses
  %i.k = fcmp ogt <2 x float> %i.j, zeroinitializer ; 2 uses
  %i.l = extractelement <2 x i1> %i.k, i64 1
  %i.m = fmul <2 x float> %i.j, splat (float 2.550000e+02) ; 2 uses
  %i.n = extractelement <2 x float> %i.m, i64 1
  %i.o = fptoui float %i.n to i8
  %i.p = zext i8 %i.o to i32
  %i.q = shl nuw nsw i32 %i.p, 8
  %.sroa.2.0.insert.ext.i = select i1 %i.l, i32 %i.q, i32 0
  %i.r = extractelement <2 x float> %i.m, i64 0
  %i.s = fptoui float %i.r to i8
  %i.t = zext i8 %i.s to i32
  %i.u = extractelement <2 x i1> %i.k, i64 0
  %.sroa.0.0.insert.ext.i = select i1 %i.u, i32 %i.t, i32 0
  %.sroa.2.0.insert.insert.i = or disjoint i32 %.sroa.2.0.insert.ext.i, %.sroa.0.0.insert.ext.i
  %.sroa.0.0.insert.insert.i = or i32 %.sroa.2.0.insert.insert.i, %.sroa.3.0.insert.ext.i
  ret i32 %.sroa.0.0.insert.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 -16777216, 0) i32 @nk_hsv(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 @llvm.smax.i32(i32 %1, i32 0)
  %i.b = tail call i32 @llvm.smax.i32(i32 %2, i32 0)
  %i.c = tail call i32 @llvm.umin.i32(i32 %i.b, i32 255)
  %i.d = tail call i32 @llvm.umin.i32(i32 %i.a, i32 255)
  %i.e = uitofp nneg i32 %i.c to float
  %i.f = uitofp nneg i32 %i.d to float
  %i.g = insertelement <2 x float> poison, float %i.f, i64 0
  %i.h = insertelement <2 x float> %i.g, float %i.e, i64 1
  %i.i = fdiv <2 x float> %i.h, splat (float 2.550000e+02) ; 5 uses
  %i.j = extractelement <2 x float> %i.i, i64 1   ; 8 uses
  %i.k = extractelement <2 x float> %i.i, i64 0   ; 3 uses
  %i.l = fcmp ugt float %i.k, 0.000000e+00
  br i1 %i.l, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.vec.insert.i.i.i = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.i, <2 x i32> <i32 3, i32 1>
  %.sroa.0.4.vec.insert.i.i.i = shufflevector <2 x float> %i.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  br label %nk_hsva.exit

bb.c:                                             ; preds = %bb.a
  %i.m = tail call i32 @llvm.smax.i32(i32 %0, i32 0)
  %i.n = tail call i32 @llvm.umin.i32(i32 %i.m, i32 255)
  %i.o = uitofp nneg i32 %i.n to float
  %i.p = fdiv float %i.o, 2.550000e+02
  %i.q = fdiv float %i.p, f0x3E2AAAAB             ; 2 uses
  %i.r = fptosi float %i.q to i32                 ; 2 uses
  %3 = uitofp nneg i32 %i.r to float
  %i.s = fsub float %i.q, %3                      ; 2 uses
  %i.t = fsub nnan float 1.000000e+00, %i.k
  %i.u = fmul float %i.j, %i.t                    ; 6 uses
  %i.v = fneg float %i.k
  %i.w = fsub float 1.000000e+00, %i.s
  %i.x = insertelement <2 x float> poison, float %i.v, i64 0
  %i.y = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> zeroinitializer
  %i.z = insertelement <2 x float> poison, float %i.s, i64 0
  %i.aa = insertelement <2 x float> %i.z, float %i.w, i64 1
  %i.ab = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.y, <2 x float> %i.aa, <2 x float> splat (float 1.000000e+00)) ; 2 uses
  %i.ac = extractelement <2 x float> %i.ab, i64 0
  %i.ad = fmul float %i.j, %i.ac                  ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %i.i, %i.ab
  %i.ae = extractelement <2 x float> %foldExtExtBinop, i64 1 ; 3 uses
  switch i32 %i.r, label %bb.i [
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
  %.sink77.i.i.i = phi float [ %i.j, %bb.h ], [ %i.ae, %bb.g ], [ %i.u, %bb.f ], [ %i.u, %bb.e ], [ %i.ad, %bb.d ], [ %i.j, %bb.c ]
  %.sink76.i.i.i = phi float [ %i.u, %bb.h ], [ %i.u, %bb.g ], [ %i.ad, %bb.f ], [ %i.j, %bb.e ], [ %i.j, %bb.d ], [ %i.ae, %bb.c ]
  %.sink.i.i.i = phi float [ %i.ad, %bb.h ], [ %i.j, %bb.g ], [ %i.j, %bb.f ], [ %i.ae, %bb.e ], [ %i.u, %bb.d ], [ %i.u, %bb.c ]
  %.sroa.0.0.vec.insert48.i.i.i = insertelement <2 x float> poison, float %.sink77.i.i.i, i64 0
  %.sroa.0.4.vec.insert60.i.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert48.i.i.i, float %.sink76.i.i.i, i64 1
  %.sroa.16.8.vec.insert73.i.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.sink.i.i.i, i64 0
  br label %nk_hsva.exit

nk_hsva.exit:                                     ; preds = %bb.b, %bb.i
  %.sroa.16.8.vec.insert73.sink.i.i.i = phi <2 x float> [ %.sroa.16.8.vec.insert73.i.i.i, %bb.i ], [ %.sroa.0.0.vec.insert.i.i.i, %bb.b ]
  %.sroa.0.1.i.i.i = phi <2 x float> [ %.sroa.0.4.vec.insert60.i.i.i, %bb.i ], [ %.sroa.0.4.vec.insert.i.i.i, %bb.b ] ; 2 uses
  %.sroa.0.0.vec.extract.i.i = extractelement <2 x float> %.sroa.0.1.i.i.i, i64 0 ; 2 uses
  %i.af = shufflevector <2 x float> %.sroa.0.1.i.i.i, <2 x float> %.sroa.16.8.vec.insert73.sink.i.i.i, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.ag = fcmp ogt <2 x float> %i.af, splat (float 1.000000e+00)
  %i.ah = select <2 x i1> %i.ag, <2 x float> splat (float 1.000000e+00), <2 x float> %i.af ; 3 uses
  %i.ai = extractelement <2 x float> %i.ah, i64 1
  %i.aj = fmul float %i.ai, 2.550000e+02
  %i.ak = fptoui float %i.aj to i8
  %i.al = zext i8 %i.ak to i32
  %i.am = shl nuw nsw i32 %i.al, 16
  %i.an = or disjoint i32 %i.am, -16777216
  %i.ao = fcmp ogt <2 x float> %i.ah, zeroinitializer ; 2 uses
  %i.ap = extractelement <2 x i1> %i.ao, i64 1
  %i.aq = select i1 %i.ap, i32 %i.an, i32 -16777216
  %i.ar = extractelement <2 x float> %i.ah, i64 0
  %i.as = fmul float %i.ar, 2.550000e+02
  %i.at = fptoui float %i.as to i8
  %i.au = zext i8 %i.at to i32
  %i.av = shl nuw nsw i32 %i.au, 8
  %i.aw = extractelement <2 x i1> %i.ao, i64 0
  %.sroa.2.0.insert.ext.i.i.i = select i1 %i.aw, i32 %i.av, i32 0
  %i.ax = fcmp ogt float %.sroa.0.0.vec.extract.i.i, 1.000000e+00
  %i.ay = select i1 %i.ax, float 1.000000e+00, float %.sroa.0.0.vec.extract.i.i ; 2 uses
  %i.az = fcmp ogt float %i.ay, 0.000000e+00
  %i.ba = fmul float %i.ay, 2.550000e+02
  %i.bb = fptoui float %i.ba to i8
  %i.bc = zext i8 %i.bb to i32
  %.sroa.0.0.insert.ext.i.i.i = select i1 %i.az, i32 %i.bc, i32 0
  %.sroa.2.0.insert.insert.i.i.i = or disjoint i32 %.sroa.2.0.insert.ext.i.i.i, %.sroa.0.0.insert.ext.i.i.i
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i32 %.sroa.2.0.insert.insert.i.i.i, %i.aq
  ret i32 %.sroa.0.0.insert.insert.i.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define i32 @nk_hsva(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 @llvm.smax.i32(i32 %1, i32 0)
  %i.b = tail call i32 @llvm.umin.i32(i32 %i.a, i32 255)
  %i.c = uitofp nneg i32 %i.b to float
  %i.d = fdiv float %i.c, 2.550000e+02            ; 3 uses
  %i.e = tail call i32 @llvm.smax.i32(i32 %2, i32 0)
  %i.f = tail call i32 @llvm.smax.i32(i32 %3, i32 0)
  %i.g = tail call i32 @llvm.umin.i32(i32 %i.f, i32 255)
  %i.h = tail call i32 @llvm.umin.i32(i32 %i.e, i32 255)
  %i.i = uitofp nneg i32 %i.g to float
  %i.j = uitofp nneg i32 %i.h to float
  %i.k = insertelement <2 x float> poison, float %i.j, i64 0
  %i.l = insertelement <2 x float> %i.k, float %i.i, i64 1
  %i.m = fdiv <2 x float> %i.l, splat (float 2.550000e+02) ; 6 uses
  %i.n = extractelement <2 x float> %i.m, i64 0   ; 7 uses
  %i.o = fcmp ugt float %i.d, 0.000000e+00
  br i1 %i.o, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.vec.insert.i.i23 = insertelement <2 x float> %i.m, float 0.000000e+00, i64 1
  %.sroa.0.4.vec.insert.i.i = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> zeroinitializer
  br label %nk_hsva_colorf.exit.i

bb.c:                                             ; preds = %bb.a
  %i.p = tail call i32 @llvm.smax.i32(i32 %0, i32 0)
  %i.q = tail call i32 @llvm.umin.i32(i32 %i.p, i32 255)
  %i.r = uitofp nneg i32 %i.q to float
  %i.s = fdiv float %i.r, 2.550000e+02
  %i.t = fdiv float %i.s, f0x3E2AAAAB             ; 2 uses
  %i.u = fptosi float %i.t to i32                 ; 2 uses
  %4 = uitofp nneg i32 %i.u to float
  %i.v = fsub float %i.t, %4                      ; 2 uses
  %i.w = fsub nnan float 1.000000e+00, %i.d
  %i.x = fmul float %i.n, %i.w                    ; 6 uses
  %i.y = fneg float %i.d
  %i.z = fsub float 1.000000e+00, %i.v
  %i.aa = insertelement <2 x float> poison, float %i.y, i64 0
  %i.ab = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ac = insertelement <2 x float> poison, float %i.v, i64 0
  %i.ad = insertelement <2 x float> %i.ac, float %i.z, i64 1
  %i.ae = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ab, <2 x float> %i.ad, <2 x float> splat (float 1.000000e+00)) ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %i.m, %i.ae
  %i.af = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 3 uses
  %shift = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop21 = fmul <2 x float> %i.m, %shift
  %i.ag = extractelement <2 x float> %foldExtExtBinop21, i64 0 ; 3 uses
  switch i32 %i.u, label %bb.i [
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
  %.sink77.i.i = phi float [ %i.n, %bb.h ], [ %i.ag, %bb.g ], [ %i.x, %bb.f ], [ %i.x, %bb.e ], [ %i.af, %bb.d ], [ %i.n, %bb.c ]
  %.sink76.i.i = phi float [ %i.x, %bb.h ], [ %i.x, %bb.g ], [ %i.af, %bb.f ], [ %i.n, %bb.e ], [ %i.n, %bb.d ], [ %i.ag, %bb.c ]
  %.sink.i.i = phi float [ %i.af, %bb.h ], [ %i.n, %bb.g ], [ %i.n, %bb.f ], [ %i.ag, %bb.e ], [ %i.x, %bb.d ], [ %i.x, %bb.c ]
  %.sroa.0.0.vec.insert48.i.i = insertelement <2 x float> poison, float %.sink77.i.i, i64 0
  %.sroa.0.4.vec.insert60.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert48.i.i, float %.sink76.i.i, i64 1
  %.sroa.16.8.vec.insert73.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.sink.i.i, i64 0
  br label %nk_hsva_colorf.exit.i

nk_hsva_colorf.exit.i:                            ; preds = %bb.i, %bb.b
  %.sroa.16.8.vec.insert73.sink.i.i = phi <2 x float> [ %.sroa.16.8.vec.insert73.i.i, %bb.i ], [ %.sroa.0.0.vec.insert.i.i23, %bb.b ]
  %.sroa.0.1.i.i = phi <2 x float> [ %.sroa.0.4.vec.insert60.i.i, %bb.i ], [ %.sroa.0.4.vec.insert.i.i, %bb.b ] ; 2 uses
  %.sroa.5.8.vec.extract.i = extractelement <2 x float> %.sroa.16.8.vec.insert73.sink.i.i, i64 0 ; 2 uses
  %i.ah = fcmp ogt float %.sroa.5.8.vec.extract.i, 1.000000e+00
  %i.ai = select i1 %i.ah, float 1.000000e+00, float %.sroa.5.8.vec.extract.i ; 2 uses
  %i.aj = fcmp ogt float %i.ai, 0.000000e+00
  %i.ak = fmul float %i.ai, 2.550000e+02
  %i.al = fptoui float %i.ak to i8
  %i.am = zext i8 %i.al to i32
  %i.an = shl nuw nsw i32 %i.am, 16
  %.sroa.3.0.insert.ext.i.i = select i1 %i.aj, i32 %i.an, i32 0 ; 2 uses
  %i.ao = extractelement <2 x float> %i.m, i64 1  ; 2 uses
  %i.ap = fcmp ogt float %i.ao, 1.000000e+00
  %i.aq = select i1 %i.ap, float 1.000000e+00, float %i.ao ; 2 uses
  %i.ar = fcmp ogt float %i.aq, 0.000000e+00
  br i1 %i.ar, label %bb.j, label %nk_hsva_f.exit

bb.j:                                             ; preds = %nk_hsva_colorf.exit.i
  %i.as = fmul nnan float %i.aq, 2.550000e+02
  %i.at = fptoui float %i.as to i8
  %i.au = zext i8 %i.at to i32
  %i.av = shl nuw i32 %i.au, 24
  %i.aw = or disjoint i32 %.sroa.3.0.insert.ext.i.i, %i.av
  br label %nk_hsva_f.exit

nk_hsva_f.exit:                                   ; preds = %nk_hsva_colorf.exit.i, %bb.j
  %.sroa.4.0.insert.ext.i.i = phi i32 [ %i.aw, %bb.j ], [ %.sroa.3.0.insert.ext.i.i, %nk_hsva_colorf.exit.i ]
  %i.ax = fcmp ogt <2 x float> %.sroa.0.1.i.i, splat (float 1.000000e+00)
  %i.ay = select <2 x i1> %i.ax, <2 x float> splat (float 1.000000e+00), <2 x float> %.sroa.0.1.i.i ; 2 uses
  %i.az = fcmp ogt <2 x float> %i.ay, zeroinitializer ; 2 uses
  %i.ba = extractelement <2 x i1> %i.az, i64 1
  %i.bb = fmul <2 x float> %i.ay, splat (float 2.550000e+02) ; 2 uses
  %i.bc = extractelement <2 x float> %i.bb, i64 1
  %i.bd = fptoui float %i.bc to i8
  %i.be = zext i8 %i.bd to i32
  %i.bf = shl nuw nsw i32 %i.be, 8
  %.sroa.2.0.insert.ext.i.i = select i1 %i.ba, i32 %i.bf, i32 0
  %i.bg = extractelement <2 x float> %i.bb, i64 0
  %i.bh = fptoui float %i.bg to i8
  %i.bi = zext i8 %i.bh to i32
  %i.bj = extractelement <2 x i1> %i.az, i64 0
  %.sroa.0.0.insert.ext.i.i = select i1 %i.bj, i32 %i.bi, i32 0
  %.sroa.2.0.insert.insert.i.i = or disjoint i32 %.sroa.2.0.insert.ext.i.i, %.sroa.0.0.insert.ext.i.i
  %.sroa.0.0.insert.insert.i.i = or i32 %.sroa.2.0.insert.insert.i.i, %.sroa.4.0.insert.ext.i.i
  ret i32 %.sroa.0.0.insert.insert.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 -16777216, 0) i32 @nk_hsv_iv(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load <2 x i32>, ptr %i.a, align 4, !tbaa !55
  %i.c = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.b, <2 x i32> zeroinitializer)
  %i.d = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.c, <2 x i32> splat (i32 255))
  %i.e = uitofp nneg <2 x i32> %i.d to <2 x float>
  %i.f = fdiv <2 x float> %i.e, splat (float 2.550000e+02) ; 5 uses
  %i.g = extractelement <2 x float> %i.f, i64 0   ; 3 uses
  %i.h = fcmp ugt float %i.g, 0.000000e+00
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.f, <2 x i32> <i32 3, i32 1>
  %.sroa.0.4.vec.insert.i.i.i.i = shufflevector <2 x float> %i.f, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  br label %nk_hsv.exit

bb.c:                                             ; preds = %bb.a
  %i.j = load i32, ptr %0, align 4, !tbaa !55
  %i.k = tail call i32 @llvm.smax.i32(i32 %i.j, i32 0)
  %i.l = tail call i32 @llvm.umin.i32(i32 %i.k, i32 255)
  %i.m = uitofp nneg i32 %i.l to float
  %i.n = fdiv float %i.m, 2.550000e+02
  %i.o = fdiv float %i.n, f0x3E2AAAAB             ; 2 uses
  %i.p = fptosi float %i.o to i32                 ; 2 uses
  %1 = uitofp nneg i32 %i.p to float
  %i.q = fsub float %i.o, %1                      ; 2 uses
  %i.r = fsub nnan float 1.000000e+00, %i.g
  %i.s = extractelement <2 x float> %i.f, i64 1   ; 8 uses
  %i.t = fmul float %i.s, %i.r                    ; 6 uses
  %i.u = fneg float %i.g
  %i.v = fsub float 1.000000e+00, %i.q
  %i.w = insertelement <2 x float> poison, float %i.u, i64 0
  %i.x = shufflevector <2 x float> %i.w, <2 x float> poison, <2 x i32> zeroinitializer
  %i.y = insertelement <2 x float> poison, float %i.q, i64 0
  %i.z = insertelement <2 x float> %i.y, float %i.v, i64 1
  %i.aa = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.x, <2 x float> %i.z, <2 x float> splat (float 1.000000e+00)) ; 2 uses
  %i.ab = extractelement <2 x float> %i.aa, i64 0
  %i.ac = fmul float %i.s, %i.ab                  ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %i.f, %i.aa
  %i.ad = extractelement <2 x float> %foldExtExtBinop, i64 1 ; 3 uses
  switch i32 %i.p, label %bb.i [
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
  %.sink77.i.i.i.i = phi float [ %i.s, %bb.h ], [ %i.ad, %bb.g ], [ %i.t, %bb.f ], [ %i.t, %bb.e ], [ %i.ac, %bb.d ], [ %i.s, %bb.c ]
  %.sink76.i.i.i.i = phi float [ %i.t, %bb.h ], [ %i.t, %bb.g ], [ %i.ac, %bb.f ], [ %i.s, %bb.e ], [ %i.s, %bb.d ], [ %i.ad, %bb.c ]
  %.sink.i.i.i.i = phi float [ %i.ac, %bb.h ], [ %i.s, %bb.g ], [ %i.s, %bb.f ], [ %i.ad, %bb.e ], [ %i.t, %bb.d ], [ %i.t, %bb.c ]
  %.sroa.0.0.vec.insert48.i.i.i.i = insertelement <2 x float> poison, float %.sink77.i.i.i.i, i64 0
  %.sroa.0.4.vec.insert60.i.i.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert48.i.i.i.i, float %.sink76.i.i.i.i, i64 1
  %.sroa.16.8.vec.insert73.i.i.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.sink.i.i.i.i, i64 0
  br label %nk_hsv.exit

nk_hsv.exit:                                      ; preds = %bb.b, %bb.i
  %.sroa.16.8.vec.insert73.sink.i.i.i.i = phi <2 x float> [ %.sroa.16.8.vec.insert73.i.i.i.i, %bb.i ], [ %i.i, %bb.b ]
  %.sroa.0.1.i.i.i.i = phi <2 x float> [ %.sroa.0.4.vec.insert60.i.i.i.i, %bb.i ], [ %.sroa.0.4.vec.insert.i.i.i.i, %bb.b ] ; 2 uses
  %.sroa.0.0.vec.extract.i.i.i = extractelement <2 x float> %.sroa.0.1.i.i.i.i, i64 0 ; 2 uses
  %i.ae = shufflevector <2 x float> %.sroa.0.1.i.i.i.i, <2 x float> %.sroa.16.8.vec.insert73.sink.i.i.i.i, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.af = fcmp ogt <2 x float> %i.ae, splat (float 1.000000e+00)
  %i.ag = select <2 x i1> %i.af, <2 x float> splat (float 1.000000e+00), <2 x float> %i.ae ; 3 uses
  %i.ah = extractelement <2 x float> %i.ag, i64 1
  %i.ai = fmul float %i.ah, 2.550000e+02
  %i.aj = fptoui float %i.ai to i8
  %i.ak = zext i8 %i.aj to i32
  %i.al = shl nuw nsw i32 %i.ak, 16
  %i.am = or disjoint i32 %i.al, -16777216
  %i.an = fcmp ogt <2 x float> %i.ag, zeroinitializer ; 2 uses
  %i.ao = extractelement <2 x i1> %i.an, i64 1
  %i.ap = select i1 %i.ao, i32 %i.am, i32 -16777216
  %i.aq = extractelement <2 x float> %i.ag, i64 0
  %i.ar = fmul float %i.aq, 2.550000e+02
  %i.as = fptoui float %i.ar to i8
  %i.at = zext i8 %i.as to i32
  %i.au = shl nuw nsw i32 %i.at, 8
  %i.av = extractelement <2 x i1> %i.an, i64 0
  %.sroa.2.0.insert.ext.i.i.i.i = select i1 %i.av, i32 %i.au, i32 0
  %i.aw = fcmp ogt float %.sroa.0.0.vec.extract.i.i.i, 1.000000e+00
  %i.ax = select i1 %i.aw, float 1.000000e+00, float %.sroa.0.0.vec.extract.i.i.i ; 2 uses
  %i.ay = fcmp ogt float %i.ax, 0.000000e+00
  %i.az = fmul float %i.ax, 2.550000e+02
  %i.ba = fptoui float %i.az to i8
  %i.bb = zext i8 %i.ba to i32
  %.sroa.0.0.insert.ext.i.i.i.i = select i1 %i.ay, i32 %i.bb, i32 0
  %.sroa.2.0.insert.insert.i.i.i.i = or disjoint i32 %.sroa.2.0.insert.ext.i.i.i.i, %.sroa.0.0.insert.ext.i.i.i.i
  %.sroa.0.0.insert.insert.i.i.i.i = or disjoint i32 %.sroa.2.0.insert.insert.i.i.i.i, %i.ap
  ret i32 %.sroa.0.0.insert.insert.i.i.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 -16777216, 0) i32 @nk_hsv_bv(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = load <2 x i8>, ptr %i.a, align 1, !tbaa !56
  %i.c = uitofp <2 x i8> %i.b to <2 x float>
  %i.d = fdiv <2 x float> %i.c, splat (float 2.550000e+02) ; 5 uses
  %i.e = extractelement <2 x float> %i.d, i64 1   ; 8 uses
  %i.f = extractelement <2 x float> %i.d, i64 0   ; 3 uses
  %i.g = fcmp ugt float %i.f, 0.000000e+00
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.vec.insert.i.i.i.i = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.d, <2 x i32> <i32 3, i32 1>
  %.sroa.0.4.vec.insert.i.i.i.i = shufflevector <2 x float> %i.d, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  br label %nk_hsv.exit

bb.c:                                             ; preds = %bb.a
  %i.h = load i8, ptr %0, align 1, !tbaa !56
  %i.i = uitofp i8 %i.h to float
  %i.j = fdiv float %i.i, 2.550000e+02
  %i.k = fdiv float %i.j, f0x3E2AAAAB             ; 2 uses
  %i.l = fptosi float %i.k to i32                 ; 2 uses
  %1 = uitofp nneg i32 %i.l to float
  %i.m = fsub float %i.k, %1                      ; 2 uses
  %i.n = fsub nnan float 1.000000e+00, %i.f
  %i.o = fmul float %i.e, %i.n                    ; 6 uses
  %i.p = fneg float %i.f
  %i.q = fsub float 1.000000e+00, %i.m
  %i.r = insertelement <2 x float> poison, float %i.p, i64 0
  %i.s = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> zeroinitializer
  %i.t = insertelement <2 x float> poison, float %i.m, i64 0
  %i.u = insertelement <2 x float> %i.t, float %i.q, i64 1
  %i.v = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.s, <2 x float> %i.u, <2 x float> splat (float 1.000000e+00)) ; 2 uses
  %i.w = extractelement <2 x float> %i.v, i64 0
  %i.x = fmul float %i.e, %i.w                    ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %i.d, %i.v
  %i.y = extractelement <2 x float> %foldExtExtBinop, i64 1 ; 3 uses
  switch i32 %i.l, label %bb.i [
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
  %.sink77.i.i.i.i = phi float [ %i.e, %bb.h ], [ %i.y, %bb.g ], [ %i.o, %bb.f ], [ %i.o, %bb.e ], [ %i.x, %bb.d ], [ %i.e, %bb.c ]
  %.sink76.i.i.i.i = phi float [ %i.o, %bb.h ], [ %i.o, %bb.g ], [ %i.x, %bb.f ], [ %i.e, %bb.e ], [ %i.e, %bb.d ], [ %i.y, %bb.c ]
  %.sink.i.i.i.i = phi float [ %i.x, %bb.h ], [ %i.e, %bb.g ], [ %i.e, %bb.f ], [ %i.y, %bb.e ], [ %i.o, %bb.d ], [ %i.o, %bb.c ]
  %.sroa.0.0.vec.insert48.i.i.i.i = insertelement <2 x float> poison, float %.sink77.i.i.i.i, i64 0
  %.sroa.0.4.vec.insert60.i.i.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert48.i.i.i.i, float %.sink76.i.i.i.i, i64 1
  %.sroa.16.8.vec.insert73.i.i.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.sink.i.i.i.i, i64 0
  br label %nk_hsv.exit

nk_hsv.exit:                                      ; preds = %bb.b, %bb.i
  %.sroa.16.8.vec.insert73.sink.i.i.i.i = phi <2 x float> [ %.sroa.16.8.vec.insert73.i.i.i.i, %bb.i ], [ %.sroa.0.0.vec.insert.i.i.i.i, %bb.b ]
  %.sroa.0.1.i.i.i.i = phi <2 x float> [ %.sroa.0.4.vec.insert60.i.i.i.i, %bb.i ], [ %.sroa.0.4.vec.insert.i.i.i.i, %bb.b ] ; 2 uses
  %.sroa.0.0.vec.extract.i.i.i = extractelement <2 x float> %.sroa.0.1.i.i.i.i, i64 0 ; 2 uses
  %i.z = shufflevector <2 x float> %.sroa.0.1.i.i.i.i, <2 x float> %.sroa.16.8.vec.insert73.sink.i.i.i.i, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.aa = fcmp ogt <2 x float> %i.z, splat (float 1.000000e+00)
  %i.ab = select <2 x i1> %i.aa, <2 x float> splat (float 1.000000e+00), <2 x float> %i.z ; 3 uses
  %i.ac = extractelement <2 x float> %i.ab, i64 1
  %i.ad = fmul float %i.ac, 2.550000e+02
  %i.ae = fptoui float %i.ad to i8
  %i.af = zext i8 %i.ae to i32
  %i.ag = shl nuw nsw i32 %i.af, 16
  %i.ah = or disjoint i32 %i.ag, -16777216
  %i.ai = fcmp ogt <2 x float> %i.ab, zeroinitializer ; 2 uses
  %i.aj = extractelement <2 x i1> %i.ai, i64 1
  %i.ak = select i1 %i.aj, i32 %i.ah, i32 -16777216
  %i.al = extractelement <2 x float> %i.ab, i64 0
  %i.am = fmul float %i.al, 2.550000e+02
  %i.an = fptoui float %i.am to i8
  %i.ao = zext i8 %i.an to i32
  %i.ap = shl nuw nsw i32 %i.ao, 8
  %i.aq = extractelement <2 x i1> %i.ai, i64 0
  %.sroa.2.0.insert.ext.i.i.i.i = select i1 %i.aq, i32 %i.ap, i32 0
  %i.ar = fcmp ogt float %.sroa.0.0.vec.extract.i.i.i, 1.000000e+00
  %i.as = select i1 %i.ar, float 1.000000e+00, float %.sroa.0.0.vec.extract.i.i.i ; 2 uses
  %i.at = fcmp ogt float %i.as, 0.000000e+00
  %i.au = fmul float %i.as, 2.550000e+02
  %i.av = fptoui float %i.au to i8
  %i.aw = zext i8 %i.av to i32
  %.sroa.0.0.insert.ext.i.i.i.i = select i1 %i.at, i32 %i.aw, i32 0
  %.sroa.2.0.insert.insert.i.i.i.i = or disjoint i32 %.sroa.2.0.insert.ext.i.i.i.i, %.sroa.0.0.insert.ext.i.i.i.i
  %.sroa.0.0.insert.insert.i.i.i.i = or disjoint i32 %.sroa.2.0.insert.insert.i.i.i.i, %i.ak
  ret i32 %.sroa.0.0.insert.insert.i.i.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 -16777216, 0) i32 @nk_hsv_f(float noundef %0, float noundef %1, float noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = fcmp ugt float %1, 0.000000e+00
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %2, i64 0 ; 2 uses
  %.sroa.0.4.vec.insert.i.i = shufflevector <2 x float> %.sroa.0.0.vec.insert.i.i, <2 x float> poison, <2 x i32> zeroinitializer
  br label %nk_hsva_f.exit

bb.c:                                             ; preds = %bb.a
  %i.b = fdiv float %0, f0x3E2AAAAB               ; 2 uses
  %i.c = fptosi float %i.b to i32                 ; 2 uses
  %i.d = sitofp i32 %i.c to float
  %i.e = fsub float %i.b, %i.d                    ; 2 uses
  %i.f = fsub float 1.000000e+00, %1
  %i.g = fmul float %2, %i.f                      ; 6 uses
  %i.h = fneg float %1
  %i.i = fsub float 1.000000e+00, %i.e
  %i.j = insertelement <2 x float> poison, float %i.h, i64 0
  %i.k = shufflevector <2 x float> %i.j, <2 x float> poison, <2 x i32> zeroinitializer
  %i.l = insertelement <2 x float> poison, float %i.e, i64 0
  %i.m = insertelement <2 x float> %i.l, float %i.i, i64 1
  %i.n = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.k, <2 x float> %i.m, <2 x float> splat (float 1.000000e+00)) ; 2 uses
  %i.o = extractelement <2 x float> %i.n, i64 0
  %i.p = fmul float %2, %i.o                      ; 3 uses
  %i.q = extractelement <2 x float> %i.n, i64 1
  %i.r = fmul float %2, %i.q                      ; 3 uses
  switch i32 %i.c, label %bb.i [
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
  %.sink77.i.i = phi float [ %2, %bb.h ], [ %i.r, %bb.g ], [ %i.g, %bb.f ], [ %i.g, %bb.e ], [ %i.p, %bb.d ], [ %2, %bb.c ]
  %.sink76.i.i = phi float [ %i.g, %bb.h ], [ %i.g, %bb.g ], [ %i.p, %bb.f ], [ %2, %bb.e ], [ %2, %bb.d ], [ %i.r, %bb.c ]
  %.sink.i.i = phi float [ %i.p, %bb.h ], [ %2, %bb.g ], [ %2, %bb.f ], [ %i.r, %bb.e ], [ %i.g, %bb.d ], [ %i.g, %bb.c ]
  %.sroa.0.0.vec.insert48.i.i = insertelement <2 x float> poison, float %.sink77.i.i, i64 0
  %.sroa.0.4.vec.insert60.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert48.i.i, float %.sink76.i.i, i64 1
  %.sroa.16.8.vec.insert73.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.sink.i.i, i64 0
  br label %nk_hsva_f.exit

nk_hsva_f.exit:                                   ; preds = %bb.b, %bb.i
  %.sroa.16.8.vec.insert73.sink.i.i = phi <2 x float> [ %.sroa.16.8.vec.insert73.i.i, %bb.i ], [ %.sroa.0.0.vec.insert.i.i, %bb.b ]
  %.sroa.0.1.i.i = phi <2 x float> [ %.sroa.0.4.vec.insert60.i.i, %bb.i ], [ %.sroa.0.4.vec.insert.i.i, %bb.b ] ; 2 uses
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %.sroa.0.1.i.i, i64 0 ; 2 uses
  %i.s = shufflevector <2 x float> %.sroa.0.1.i.i, <2 x float> %.sroa.16.8.vec.insert73.sink.i.i, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.t = fcmp ogt <2 x float> %i.s, splat (float 1.000000e+00)
  %i.u = select <2 x i1> %i.t, <2 x float> splat (float 1.000000e+00), <2 x float> %i.s ; 3 uses
  %i.v = extractelement <2 x float> %i.u, i64 1
  %i.w = fmul float %i.v, 2.550000e+02
  %i.x = fptoui float %i.w to i8
  %i.y = zext i8 %i.x to i32
  %i.z = shl nuw nsw i32 %i.y, 16
  %i.aa = or disjoint i32 %i.z, -16777216
  %i.ab = fcmp ogt <2 x float> %i.u, zeroinitializer ; 2 uses
  %i.ac = extractelement <2 x i1> %i.ab, i64 1
  %i.ad = select i1 %i.ac, i32 %i.aa, i32 -16777216
  %i.ae = extractelement <2 x float> %i.u, i64 0
  %i.af = fmul float %i.ae, 2.550000e+02
  %i.ag = fptoui float %i.af to i8
  %i.ah = zext i8 %i.ag to i32
  %i.ai = shl nuw nsw i32 %i.ah, 8
  %i.aj = extractelement <2 x i1> %i.ab, i64 0
  %.sroa.2.0.insert.ext.i.i = select i1 %i.aj, i32 %i.ai, i32 0
  %i.ak = fcmp ogt float %.sroa.0.0.vec.extract.i, 1.000000e+00
  %i.al = select i1 %i.ak, float 1.000000e+00, float %.sroa.0.0.vec.extract.i ; 2 uses
  %i.am = fcmp ogt float %i.al, 0.000000e+00
  %i.an = fmul float %i.al, 2.550000e+02
  %i.ao = fptoui float %i.an to i8
  %i.ap = zext i8 %i.ao to i32
  %.sroa.0.0.insert.ext.i.i = select i1 %i.am, i32 %i.ap, i32 0
  %.sroa.2.0.insert.insert.i.i = or disjoint i32 %.sroa.2.0.insert.ext.i.i, %.sroa.0.0.insert.ext.i.i
  %.sroa.0.0.insert.insert.i.i = or disjoint i32 %.sroa.2.0.insert.insert.i.i, %i.ad
  ret i32 %.sroa.0.0.insert.insert.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define i32 @nk_hsva_f(float noundef %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = fcmp ugt float %1, 0.000000e+00
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %2, i64 0 ; 2 uses
  %.sroa.0.4.vec.insert.i = shufflevector <2 x float> %.sroa.0.0.vec.insert.i, <2 x float> poison, <2 x i32> zeroinitializer
  br label %nk_hsva_colorf.exit

bb.c:                                             ; preds = %bb.a
  %i.b = fdiv float %0, f0x3E2AAAAB               ; 2 uses
  %i.c = fptosi float %i.b to i32                 ; 2 uses
  %i.d = sitofp i32 %i.c to float
  %i.e = fsub float %i.b, %i.d                    ; 2 uses
  %i.f = fsub float 1.000000e+00, %1
  %i.g = fmul float %2, %i.f                      ; 6 uses
  %i.h = fneg float %1
  %i.i = fsub float 1.000000e+00, %i.e
  %i.j = insertelement <2 x float> poison, float %i.h, i64 0
  %i.k = shufflevector <2 x float> %i.j, <2 x float> poison, <2 x i32> zeroinitializer
  %i.l = insertelement <2 x float> poison, float %i.e, i64 0
end_hunk_0
begin_hunk_1_@nk_hsva_f:bb.a
bb.e:                                             ; preds = %bb.c
  br label %bb.i

bb.f:                                             ; preds = %bb.c
  br label %bb.i

bb.g:                                             ; preds = %bb.c
  br label %bb.i

bb.h:                                             ; preds = %bb.c
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sink77.i = phi float [ %2, %bb.h ], [ %i.r, %bb.g ], [ %i.g, %bb.f ], [ %i.g, %bb.e ], [ %i.p, %bb.d ], [ %2, %bb.c ]
  %.sink76.i = phi float [ %i.g, %bb.h ], [ %i.g, %bb.g ], [ %i.p, %bb.f ], [ %2, %bb.e ], [ %2, %bb.d ], [ %i.r, %bb.c ]
  %.sink.i = phi float [ %i.p, %bb.h ], [ %2, %bb.g ], [ %2, %bb.f ], [ %i.r, %bb.e ], [ %i.g, %bb.d ], [ %i.g, %bb.c ]
  %.sroa.0.0.vec.insert48.i = insertelement <2 x float> poison, float %.sink77.i, i64 0
  %.sroa.0.4.vec.insert60.i = insertelement <2 x float> %.sroa.0.0.vec.insert48.i, float %.sink76.i, i64 1
  %.sroa.16.8.vec.insert73.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.sink.i, i64 0
  br label %nk_hsva_colorf.exit

nk_hsva_colorf.exit:                              ; preds = %bb.b, %bb.i
  %.sroa.16.8.vec.insert73.sink.i = phi <2 x float> [ %.sroa.16.8.vec.insert73.i, %bb.i ], [ %.sroa.0.0.vec.insert.i, %bb.b ]
  %.sroa.0.1.i = phi <2 x float> [ %.sroa.0.4.vec.insert60.i, %bb.i ], [ %.sroa.0.4.vec.insert.i, %bb.b ] ; 2 uses
  %.sroa.5.8.vec.extract = extractelement <2 x float> %.sroa.16.8.vec.insert73.sink.i, i64 0 ; 2 uses
  %i.s = fcmp ogt float %.sroa.5.8.vec.extract, 1.000000e+00
  %i.t = select i1 %i.s, float 1.000000e+00, float %.sroa.5.8.vec.extract ; 2 uses
  %i.u = fcmp ogt float %i.t, 0.000000e+00
  %i.v = fmul float %i.t, 2.550000e+02
  %i.w = fptoui float %i.v to i8
  %i.x = zext i8 %i.w to i32
  %i.y = shl nuw nsw i32 %i.x, 16
  %.sroa.3.0.insert.ext.i = select i1 %i.u, i32 %i.y, i32 0 ; 2 uses
  %i.z = fcmp ogt float %3, 1.000000e+00
  %i.aa = select i1 %i.z, float 1.000000e+00, float %3 ; 2 uses
  %i.ab = fcmp ogt float %i.aa, 0.000000e+00
  br i1 %i.ab, label %bb.j, label %nk_rgba_f.exit

bb.j:                                             ; preds = %nk_hsva_colorf.exit
  %i.ac = fmul float %i.aa, 2.550000e+02
  %i.ad = fptoui float %i.ac to i8
  %i.ae = zext i8 %i.ad to i32
  %i.af = shl nuw i32 %i.ae, 24
  %i.ag = or disjoint i32 %.sroa.3.0.insert.ext.i, %i.af
  br label %nk_rgba_f.exit

nk_rgba_f.exit:                                   ; preds = %nk_hsva_colorf.exit, %bb.j
  %.sroa.4.0.insert.ext.i = phi i32 [ %i.ag, %bb.j ], [ %.sroa.3.0.insert.ext.i, %nk_hsva_colorf.exit ]
  %i.ah = fcmp ogt <2 x float> %.sroa.0.1.i, splat (float 1.000000e+00)
  %i.ai = select <2 x i1> %i.ah, <2 x float> splat (float 1.000000e+00), <2 x float> %.sroa.0.1.i ; 2 uses
  %i.aj = fcmp ogt <2 x float> %i.ai, zeroinitializer ; 2 uses
  %i.ak = extractelement <2 x i1> %i.aj, i64 1
  %i.al = fmul <2 x float> %i.ai, splat (float 2.550000e+02) ; 2 uses
  %i.am = extractelement <2 x float> %i.al, i64 1
  %i.an = fptoui float %i.am to i8
  %i.ao = zext i8 %i.an to i32
  %i.ap = shl nuw nsw i32 %i.ao, 8
  %.sroa.2.0.insert.ext.i = select i1 %i.ak, i32 %i.ap, i32 0
  %i.aq = extractelement <2 x float> %i.al, i64 0
  %i.ar = fptoui float %i.aq to i8
  %i.as = zext i8 %i.ar to i32
  %i.at = extractelement <2 x i1> %i.aj, i64 0
  %.sroa.0.0.insert.ext.i = select i1 %i.at, i32 %i.as, i32 0
  %.sroa.2.0.insert.insert.i = or disjoint i32 %.sroa.2.0.insert.ext.i, %.sroa.0.0.insert.ext.i
  %.sroa.0.0.insert.insert.i = or i32 %.sroa.2.0.insert.insert.i, %.sroa.4.0.insert.ext.i
  ret i32 %.sroa.0.0.insert.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 -16777216, 0) i32 @nk_hsv_fv(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load float, ptr %i.a, align 4, !tbaa !54 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load float, ptr %i.c, align 4, !tbaa !54 ; 10 uses
  %i.e = fcmp ugt float %i.b, 0.000000e+00
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.vec.insert.i.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.d, i64 0 ; 2 uses
  %.sroa.0.4.vec.insert.i.i.i = shufflevector <2 x float> %.sroa.0.0.vec.insert.i.i.i, <2 x float> poison, <2 x i32> zeroinitializer
  br label %nk_hsv_f.exit

bb.c:                                             ; preds = %bb.a
  %i.f = load float, ptr %0, align 4, !tbaa !54
  %i.g = fdiv float %i.f, f0x3E2AAAAB             ; 2 uses
  %i.h = fptosi float %i.g to i32                 ; 2 uses
  %i.i = sitofp i32 %i.h to float
  %i.j = fsub float %i.g, %i.i                    ; 2 uses
  %i.k = fsub float 1.000000e+00, %i.b
  %i.l = fmul float %i.d, %i.k                    ; 6 uses
  %i.m = fneg float %i.b
  %i.n = fsub float 1.000000e+00, %i.j
  %i.o = insertelement <2 x float> poison, float %i.m, i64 0
  %i.p = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> zeroinitializer
  %i.q = insertelement <2 x float> poison, float %i.j, i64 0
  %i.r = insertelement <2 x float> %i.q, float %i.n, i64 1
  %i.s = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.p, <2 x float> %i.r, <2 x float> splat (float 1.000000e+00)) ; 2 uses
  %i.t = extractelement <2 x float> %i.s, i64 0
  %i.u = fmul float %i.d, %i.t                    ; 3 uses
  %i.v = extractelement <2 x float> %i.s, i64 1
  %i.w = fmul float %i.d, %i.v                    ; 3 uses
  switch i32 %i.h, label %bb.i [
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
  %.sink77.i.i.i = phi float [ %i.d, %bb.h ], [ %i.w, %bb.g ], [ %i.l, %bb.f ], [ %i.l, %bb.e ], [ %i.u, %bb.d ], [ %i.d, %bb.c ]
  %.sink76.i.i.i = phi float [ %i.l, %bb.h ], [ %i.l, %bb.g ], [ %i.u, %bb.f ], [ %i.d, %bb.e ], [ %i.d, %bb.d ], [ %i.w, %bb.c ]
  %.sink.i.i.i = phi float [ %i.u, %bb.h ], [ %i.d, %bb.g ], [ %i.d, %bb.f ], [ %i.w, %bb.e ], [ %i.l, %bb.d ], [ %i.l, %bb.c ]
  %.sroa.0.0.vec.insert48.i.i.i = insertelement <2 x float> poison, float %.sink77.i.i.i, i64 0
  %.sroa.0.4.vec.insert60.i.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert48.i.i.i, float %.sink76.i.i.i, i64 1
  %.sroa.16.8.vec.insert73.i.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.sink.i.i.i, i64 0
  br label %nk_hsv_f.exit

nk_hsv_f.exit:                                    ; preds = %bb.b, %bb.i
  %.sroa.16.8.vec.insert73.sink.i.i.i = phi <2 x float> [ %.sroa.16.8.vec.insert73.i.i.i, %bb.i ], [ %.sroa.0.0.vec.insert.i.i.i, %bb.b ]
  %.sroa.0.1.i.i.i = phi <2 x float> [ %.sroa.0.4.vec.insert60.i.i.i, %bb.i ], [ %.sroa.0.4.vec.insert.i.i.i, %bb.b ] ; 2 uses
  %.sroa.0.0.vec.extract.i.i = extractelement <2 x float> %.sroa.0.1.i.i.i, i64 0 ; 2 uses
  %i.x = shufflevector <2 x float> %.sroa.0.1.i.i.i, <2 x float> %.sroa.16.8.vec.insert73.sink.i.i.i, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.y = fcmp ogt <2 x float> %i.x, splat (float 1.000000e+00)
  %i.z = select <2 x i1> %i.y, <2 x float> splat (float 1.000000e+00), <2 x float> %i.x ; 3 uses
  %i.aa = extractelement <2 x float> %i.z, i64 1
  %i.ab = fmul float %i.aa, 2.550000e+02
  %i.ac = fptoui float %i.ab to i8
  %i.ad = zext i8 %i.ac to i32
  %i.ae = shl nuw nsw i32 %i.ad, 16
  %i.af = or disjoint i32 %i.ae, -16777216
  %i.ag = fcmp ogt <2 x float> %i.z, zeroinitializer ; 2 uses
  %i.ah = extractelement <2 x i1> %i.ag, i64 1
  %i.ai = select i1 %i.ah, i32 %i.af, i32 -16777216
  %i.aj = extractelement <2 x float> %i.z, i64 0
  %i.ak = fmul float %i.aj, 2.550000e+02
  %i.al = fptoui float %i.ak to i8
  %i.am = zext i8 %i.al to i32
  %i.an = shl nuw nsw i32 %i.am, 8
  %i.ao = extractelement <2 x i1> %i.ag, i64 0
  %.sroa.2.0.insert.ext.i.i.i = select i1 %i.ao, i32 %i.an, i32 0
  %i.ap = fcmp ogt float %.sroa.0.0.vec.extract.i.i, 1.000000e+00
  %i.aq = select i1 %i.ap, float 1.000000e+00, float %.sroa.0.0.vec.extract.i.i ; 2 uses
  %i.ar = fcmp ogt float %i.aq, 0.000000e+00
  %i.as = fmul float %i.aq, 2.550000e+02
  %i.at = fptoui float %i.as to i8
  %i.au = zext i8 %i.at to i32
  %.sroa.0.0.insert.ext.i.i.i = select i1 %i.ar, i32 %i.au, i32 0
  %.sroa.2.0.insert.insert.i.i.i = or disjoint i32 %.sroa.2.0.insert.ext.i.i.i, %.sroa.0.0.insert.ext.i.i.i
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i32 %.sroa.2.0.insert.insert.i.i.i, %i.ai
  ret i32 %.sroa.0.0.insert.insert.i.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @nk_hsva_iv(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !55
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = tail call i32 @llvm.smax.i32(i32 %i.b, i32 0)
  %i.e = tail call i32 @llvm.umin.i32(i32 %i.d, i32 255)
  %i.f = uitofp nneg i32 %i.e to float
  %i.g = fdiv float %i.f, 2.550000e+02            ; 3 uses
  %i.h = load <2 x i32>, ptr %i.c, align 4, !tbaa !55
  %i.i = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.h, <2 x i32> zeroinitializer)
  %i.j = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.i, <2 x i32> splat (i32 255))
  %i.k = uitofp nneg <2 x i32> %i.j to <2 x float>
  %i.l = fdiv <2 x float> %i.k, splat (float 2.550000e+02) ; 6 uses
  %i.m = fcmp ugt float %i.g, 0.000000e+00
  br i1 %i.m, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = insertelement <2 x float> %i.l, float 0.000000e+00, i64 1
  %.sroa.0.4.vec.insert.i.i.i = shufflevector <2 x float> %i.l, <2 x float> poison, <2 x i32> zeroinitializer
  br label %nk_hsva_colorf.exit.i.i

bb.c:                                             ; preds = %bb.a
  %i.o = load i32, ptr %0, align 4, !tbaa !55
  %i.p = tail call i32 @llvm.smax.i32(i32 %i.o, i32 0)
  %i.q = tail call i32 @llvm.umin.i32(i32 %i.p, i32 255)
  %i.r = uitofp nneg i32 %i.q to float
  %i.s = fdiv float %i.r, 2.550000e+02
  %i.t = fdiv float %i.s, f0x3E2AAAAB             ; 2 uses
  %i.u = fptosi float %i.t to i32                 ; 2 uses
  %1 = uitofp nneg i32 %i.u to float
  %i.v = fsub float %i.t, %1                      ; 2 uses
  %i.w = fsub nnan float 1.000000e+00, %i.g
  %i.x = extractelement <2 x float> %i.l, i64 0   ; 7 uses
  %i.y = fmul float %i.x, %i.w                    ; 6 uses
  %i.z = fneg float %i.g
  %i.aa = fsub float 1.000000e+00, %i.v
  %i.ab = insertelement <2 x float> poison, float %i.z, i64 0
  %i.ac = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ad = insertelement <2 x float> poison, float %i.v, i64 0
  %i.ae = insertelement <2 x float> %i.ad, float %i.aa, i64 1
  %i.af = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ac, <2 x float> %i.ae, <2 x float> splat (float 1.000000e+00)) ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %i.l, %i.af
  %i.ag = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 3 uses
  %shift = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop6 = fmul <2 x float> %i.l, %shift
  %i.ah = extractelement <2 x float> %foldExtExtBinop6, i64 0 ; 3 uses
  switch i32 %i.u, label %bb.i [
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
  %.sink77.i.i.i = phi float [ %i.x, %bb.h ], [ %i.ah, %bb.g ], [ %i.y, %bb.f ], [ %i.y, %bb.e ], [ %i.ag, %bb.d ], [ %i.x, %bb.c ]
  %.sink76.i.i.i = phi float [ %i.y, %bb.h ], [ %i.y, %bb.g ], [ %i.ag, %bb.f ], [ %i.x, %bb.e ], [ %i.x, %bb.d ], [ %i.ah, %bb.c ]
  %.sink.i.i.i = phi float [ %i.ag, %bb.h ], [ %i.x, %bb.g ], [ %i.x, %bb.f ], [ %i.ah, %bb.e ], [ %i.y, %bb.d ], [ %i.y, %bb.c ]
  %.sroa.0.0.vec.insert48.i.i.i = insertelement <2 x float> poison, float %.sink77.i.i.i, i64 0
  %.sroa.0.4.vec.insert60.i.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert48.i.i.i, float %.sink76.i.i.i, i64 1
  %.sroa.16.8.vec.insert73.i.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.sink.i.i.i, i64 0
  br label %nk_hsva_colorf.exit.i.i

nk_hsva_colorf.exit.i.i:                          ; preds = %bb.i, %bb.b
  %.sroa.16.8.vec.insert73.sink.i.i.i = phi <2 x float> [ %.sroa.16.8.vec.insert73.i.i.i, %bb.i ], [ %i.n, %bb.b ]
  %.sroa.0.1.i.i.i = phi <2 x float> [ %.sroa.0.4.vec.insert60.i.i.i, %bb.i ], [ %.sroa.0.4.vec.insert.i.i.i, %bb.b ] ; 2 uses
  %.sroa.5.8.vec.extract.i.i = extractelement <2 x float> %.sroa.16.8.vec.insert73.sink.i.i.i, i64 0 ; 2 uses
  %i.ai = fcmp ogt float %.sroa.5.8.vec.extract.i.i, 1.000000e+00
  %i.aj = select i1 %i.ai, float 1.000000e+00, float %.sroa.5.8.vec.extract.i.i ; 2 uses
  %i.ak = fcmp ogt float %i.aj, 0.000000e+00
  %i.al = fmul float %i.aj, 2.550000e+02
  %i.am = fptoui float %i.al to i8
  %i.an = zext i8 %i.am to i32
  %i.ao = shl nuw nsw i32 %i.an, 16
  %.sroa.3.0.insert.ext.i.i.i = select i1 %i.ak, i32 %i.ao, i32 0 ; 2 uses
  %i.ap = extractelement <2 x float> %i.l, i64 1  ; 2 uses
  %i.aq = fcmp ogt float %i.ap, 1.000000e+00
  %i.ar = select i1 %i.aq, float 1.000000e+00, float %i.ap ; 2 uses
  %i.as = fcmp ogt float %i.ar, 0.000000e+00
  br i1 %i.as, label %bb.j, label %nk_hsva.exit

bb.j:                                             ; preds = %nk_hsva_colorf.exit.i.i
  %i.at = fmul nnan float %i.ar, 2.550000e+02
  %i.au = fptoui float %i.at to i8
  %i.av = zext i8 %i.au to i32
  %i.aw = shl nuw i32 %i.av, 24
  %i.ax = or disjoint i32 %.sroa.3.0.insert.ext.i.i.i, %i.aw
  br label %nk_hsva.exit

nk_hsva.exit:                                     ; preds = %nk_hsva_colorf.exit.i.i, %bb.j
  %.sroa.4.0.insert.ext.i.i.i = phi i32 [ %i.ax, %bb.j ], [ %.sroa.3.0.insert.ext.i.i.i, %nk_hsva_colorf.exit.i.i ]
  %i.ay = fcmp ogt <2 x float> %.sroa.0.1.i.i.i, splat (float 1.000000e+00)
  %i.az = select <2 x i1> %i.ay, <2 x float> splat (float 1.000000e+00), <2 x float> %.sroa.0.1.i.i.i ; 2 uses
  %i.ba = fcmp ogt <2 x float> %i.az, zeroinitializer ; 2 uses
  %i.bb = extractelement <2 x i1> %i.ba, i64 1
  %i.bc = fmul <2 x float> %i.az, splat (float 2.550000e+02) ; 2 uses
  %i.bd = extractelement <2 x float> %i.bc, i64 1
  %i.be = fptoui float %i.bd to i8
  %i.bf = zext i8 %i.be to i32
  %i.bg = shl nuw nsw i32 %i.bf, 8
  %.sroa.2.0.insert.ext.i.i.i = select i1 %i.bb, i32 %i.bg, i32 0
  %i.bh = extractelement <2 x float> %i.bc, i64 0
  %i.bi = fptoui float %i.bh to i8
  %i.bj = zext i8 %i.bi to i32
  %i.bk = extractelement <2 x i1> %i.ba, i64 0
  %.sroa.0.0.insert.ext.i.i.i = select i1 %i.bk, i32 %i.bj, i32 0
  %.sroa.2.0.insert.insert.i.i.i = or disjoint i32 %.sroa.2.0.insert.ext.i.i.i, %.sroa.0.0.insert.ext.i.i.i
  %.sroa.0.0.insert.insert.i.i.i = or i32 %.sroa.2.0.insert.insert.i.i.i, %.sroa.4.0.insert.ext.i.i.i
  ret i32 %.sroa.0.0.insert.insert.i.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @nk_hsva_bv(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = load i8, ptr %i.a, align 1, !tbaa !56
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.d = uitofp i8 %i.b to float
  %i.e = fdiv float %i.d, 2.550000e+02            ; 3 uses
  %i.f = load <2 x i8>, ptr %i.c, align 1, !tbaa !56
  %i.g = uitofp <2 x i8> %i.f to <2 x float>
  %i.h = fdiv <2 x float> %i.g, splat (float 2.550000e+02) ; 6 uses
  %i.i = extractelement <2 x float> %i.h, i64 0   ; 7 uses
  %i.j = fcmp ugt float %i.e, 0.000000e+00
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.vec.insert.i.i.i8 = insertelement <2 x float> %i.h, float 0.000000e+00, i64 1
  %.sroa.0.4.vec.insert.i.i.i = shufflevector <2 x float> %i.h, <2 x float> poison, <2 x i32> zeroinitializer
  br label %nk_hsva_colorf.exit.i.i

bb.c:                                             ; preds = %bb.a
  %i.k = load i8, ptr %0, align 1, !tbaa !56
  %i.l = uitofp i8 %i.k to float
  %i.m = fdiv float %i.l, 2.550000e+02
  %i.n = fdiv float %i.m, f0x3E2AAAAB             ; 2 uses
  %i.o = fptosi float %i.n to i32                 ; 2 uses
  %1 = uitofp nneg i32 %i.o to float
  %i.p = fsub float %i.n, %1                      ; 2 uses
  %i.q = fsub nnan float 1.000000e+00, %i.e
  %i.r = fmul float %i.i, %i.q                    ; 6 uses
  %i.s = fneg float %i.e
  %i.t = fsub float 1.000000e+00, %i.p
  %i.u = insertelement <2 x float> poison, float %i.s, i64 0
  %i.v = shufflevector <2 x float> %i.u, <2 x float> poison, <2 x i32> zeroinitializer
  %i.w = insertelement <2 x float> poison, float %i.p, i64 0
  %i.x = insertelement <2 x float> %i.w, float %i.t, i64 1
  %i.y = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.v, <2 x float> %i.x, <2 x float> splat (float 1.000000e+00)) ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %i.h, %i.y
  %i.z = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 3 uses
  %shift = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop6 = fmul <2 x float> %i.h, %shift
  %i.aa = extractelement <2 x float> %foldExtExtBinop6, i64 0 ; 3 uses
  switch i32 %i.o, label %bb.i [
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
  %.sink77.i.i.i = phi float [ %i.i, %bb.h ], [ %i.aa, %bb.g ], [ %i.r, %bb.f ], [ %i.r, %bb.e ], [ %i.z, %bb.d ], [ %i.i, %bb.c ]
  %.sink76.i.i.i = phi float [ %i.r, %bb.h ], [ %i.r, %bb.g ], [ %i.z, %bb.f ], [ %i.i, %bb.e ], [ %i.i, %bb.d ], [ %i.aa, %bb.c ]
  %.sink.i.i.i = phi float [ %i.z, %bb.h ], [ %i.i, %bb.g ], [ %i.i, %bb.f ], [ %i.aa, %bb.e ], [ %i.r, %bb.d ], [ %i.r, %bb.c ]
  %.sroa.0.0.vec.insert48.i.i.i = insertelement <2 x float> poison, float %.sink77.i.i.i, i64 0
  %.sroa.0.4.vec.insert60.i.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert48.i.i.i, float %.sink76.i.i.i, i64 1
  %.sroa.16.8.vec.insert73.i.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.sink.i.i.i, i64 0
  br label %nk_hsva_colorf.exit.i.i

nk_hsva_colorf.exit.i.i:                          ; preds = %bb.i, %bb.b
  %.sroa.16.8.vec.insert73.sink.i.i.i = phi <2 x float> [ %.sroa.16.8.vec.insert73.i.i.i, %bb.i ], [ %.sroa.0.0.vec.insert.i.i.i8, %bb.b ]
  %.sroa.0.1.i.i.i = phi <2 x float> [ %.sroa.0.4.vec.insert60.i.i.i, %bb.i ], [ %.sroa.0.4.vec.insert.i.i.i, %bb.b ] ; 2 uses
  %.sroa.5.8.vec.extract.i.i = extractelement <2 x float> %.sroa.16.8.vec.insert73.sink.i.i.i, i64 0 ; 2 uses
  %i.ab = fcmp ogt float %.sroa.5.8.vec.extract.i.i, 1.000000e+00
  %i.ac = select i1 %i.ab, float 1.000000e+00, float %.sroa.5.8.vec.extract.i.i ; 2 uses
  %i.ad = fcmp ogt float %i.ac, 0.000000e+00
  %i.ae = fmul float %i.ac, 2.550000e+02
  %i.af = fptoui float %i.ae to i8
  %i.ag = zext i8 %i.af to i32
  %i.ah = shl nuw nsw i32 %i.ag, 16
  %.sroa.3.0.insert.ext.i.i.i = select i1 %i.ad, i32 %i.ah, i32 0 ; 2 uses
  %i.ai = extractelement <2 x float> %i.h, i64 1  ; 2 uses
  %i.aj = fcmp ogt float %i.ai, 1.000000e+00
  %i.ak = select i1 %i.aj, float 1.000000e+00, float %i.ai ; 2 uses
  %i.al = fcmp ogt float %i.ak, 0.000000e+00
  br i1 %i.al, label %bb.j, label %nk_hsva.exit

bb.j:                                             ; preds = %nk_hsva_colorf.exit.i.i
  %i.am = fmul nnan float %i.ak, 2.550000e+02
  %i.an = fptoui float %i.am to i8
  %i.ao = zext i8 %i.an to i32
  %i.ap = shl nuw i32 %i.ao, 24
  %i.aq = or disjoint i32 %.sroa.3.0.insert.ext.i.i.i, %i.ap
  br label %nk_hsva.exit

nk_hsva.exit:                                     ; preds = %nk_hsva_colorf.exit.i.i, %bb.j
  %.sroa.4.0.insert.ext.i.i.i = phi i32 [ %i.aq, %bb.j ], [ %.sroa.3.0.insert.ext.i.i.i, %nk_hsva_colorf.exit.i.i ]
  %i.ar = fcmp ogt <2 x float> %.sroa.0.1.i.i.i, splat (float 1.000000e+00)
  %i.as = select <2 x i1> %i.ar, <2 x float> splat (float 1.000000e+00), <2 x float> %.sroa.0.1.i.i.i ; 2 uses
  %i.at = fcmp ogt <2 x float> %i.as, zeroinitializer ; 2 uses
  %i.au = extractelement <2 x i1> %i.at, i64 1
  %i.av = fmul <2 x float> %i.as, splat (float 2.550000e+02) ; 2 uses
  %i.aw = extractelement <2 x float> %i.av, i64 1
  %i.ax = fptoui float %i.aw to i8
  %i.ay = zext i8 %i.ax to i32
  %i.az = shl nuw nsw i32 %i.ay, 8
  %.sroa.2.0.insert.ext.i.i.i = select i1 %i.au, i32 %i.az, i32 0
  %i.ba = extractelement <2 x float> %i.av, i64 0
  %i.bb = fptoui float %i.ba to i8
  %i.bc = zext i8 %i.bb to i32
  %i.bd = extractelement <2 x i1> %i.at, i64 0
  %.sroa.0.0.insert.ext.i.i.i = select i1 %i.bd, i32 %i.bc, i32 0
  %.sroa.2.0.insert.insert.i.i.i = or disjoint i32 %.sroa.2.0.insert.ext.i.i.i, %.sroa.0.0.insert.ext.i.i.i
  %.sroa.0.0.insert.insert.i.i.i = or i32 %.sroa.2.0.insert.insert.i.i.i, %.sroa.4.0.insert.ext.i.i.i
  ret i32 %.sroa.0.0.insert.insert.i.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { <2 x float>, <2 x float> } @nk_hsva_colorf(float noundef %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = fcmp ugt float %1, 0.000000e+00
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.vec.insert = insertelement <2 x float> <float poison, float 0.000000e+00>, float %2, i64 0 ; 2 uses
  %.sroa.0.4.vec.insert = shufflevector <2 x float> %.sroa.0.0.vec.insert, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.b = fdiv float %0, f0x3E2AAAAB               ; 2 uses
  %i.c = fptosi float %i.b to i32                 ; 2 uses
  %i.d = sitofp i32 %i.c to float
  %i.e = fsub float %i.b, %i.d                    ; 2 uses
  %i.f = fsub float 1.000000e+00, %1
  %i.g = fmul float %2, %i.f                      ; 6 uses
  %i.h = fneg float %1
  %i.i = fsub float 1.000000e+00, %i.e
  %i.j = insertelement <2 x float> poison, float %i.h, i64 0
  %i.k = shufflevector <2 x float> %i.j, <2 x float> poison, <2 x i32> zeroinitializer
  %i.l = insertelement <2 x float> poison, float %i.e, i64 0
  %i.m = insertelement <2 x float> %i.l, float %i.i, i64 1
  %i.n = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.k, <2 x float> %i.m, <2 x float> splat (float 1.000000e+00)) ; 2 uses
  %i.o = extractelement <2 x float> %i.n, i64 0
  %i.p = fmul float %2, %i.o                      ; 3 uses
  %i.q = extractelement <2 x float> %i.n, i64 1
  %i.r = fmul float %2, %i.q                      ; 3 uses
  switch i32 %i.c, label %bb.i [
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

bb.i:                                             ; preds = %bb.c, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %.sink77 = phi float [ %2, %bb.h ], [ %i.r, %bb.g ], [ %i.g, %bb.f ], [ %i.g, %bb.e ], [ %i.p, %bb.d ], [ %2, %bb.c ]
  %.sink76 = phi float [ %i.g, %bb.h ], [ %i.g, %bb.g ], [ %i.p, %bb.f ], [ %2, %bb.e ], [ %2, %bb.d ], [ %i.r, %bb.c ]
  %.sink = phi float [ %i.p, %bb.h ], [ %2, %bb.g ], [ %2, %bb.f ], [ %i.r, %bb.e ], [ %i.g, %bb.d ], [ %i.g, %bb.c ]
  %.sroa.0.0.vec.insert48 = insertelement <2 x float> poison, float %.sink77, i64 0
  %.sroa.0.4.vec.insert60 = insertelement <2 x float> %.sroa.0.0.vec.insert48, float %.sink76, i64 1
  %.sroa.16.8.vec.insert73 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.sink, i64 0
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.b
  %.sroa.16.8.vec.insert73.sink = phi <2 x float> [ %.sroa.16.8.vec.insert73, %bb.i ], [ %.sroa.0.0.vec.insert, %bb.b ]
  %.sroa.0.1 = phi <2 x float> [ %.sroa.0.4.vec.insert60, %bb.i ], [ %.sroa.0.4.vec.insert, %bb.b ]
  %.sroa.16.12.vec.insert75 = insertelement <2 x float> %.sroa.16.8.vec.insert73.sink, float %3, i64 1
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0.1, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.16.12.vec.insert75, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
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
end_hunk_1
begin_hunk_2_@stbtt_Rasterize:bb.a
  %i.hm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hl, <4 x float> %i.gh, <4 x float> %i.gk)
  store <4 x float> %i.hm, ptr %i.hc, align 4, !tbaa !54
  %i.hn = add nsw i32 %.2107.us.us.i, 1
  %.pre147.i = load i32, ptr %i.gn, align 4, !tbaa !55
  br label %.lr.ph111.us._crit_edge.i

.lr.ph111.us._crit_edge.i:                        ; preds = %bb.r, %.lr.ph111.us.i
  %i.ho = phi i32 [ %.pre147.i, %bb.r ], [ %i.gs, %.lr.ph111.us.i ] ; 2 uses
  %.3.us.us.i = phi i32 [ %i.hn, %bb.r ], [ %.2107.us.us.i, %.lr.ph111.us.i ] ; 2 uses
  %.pre-phi.i = trunc i64 %indvars.iv139.i to i32
  %indvars.iv.next140.i = add nuw nsw i64 %indvars.iv139.i, 1 ; 2 uses
  %i.hp = sext i32 %i.ho to i64
  %i.hq = icmp slt i64 %indvars.iv.next140.i, %i.hp
  br i1 %i.hq, label %.lr.ph111.us.i, label %._crit_edge112.split.us.us.i, !llvm.loop !832

._crit_edge112.split.us.us.i:                     ; preds = %.lr.ph111.us._crit_edge.i, %.lr.ph117.split.us.i
  %.2.lcssa.us.i = phi i32 [ %.190114.us.i, %.lr.ph117.split.us.i ], [ %.3.us.us.i, %.lr.ph111.us._crit_edge.i ] ; 2 uses
  %indvars.iv.next143.i = add nuw nsw i64 %indvars.iv142.i, 1 ; 2 uses
  %exitcond146.not.i = icmp eq i64 %indvars.iv.next143.i, %i.bc
  br i1 %exitcond146.not.i, label %._crit_edge118.i, label %.lr.ph117.split.us.i, !llvm.loop !833

.lr.ph117.split.i:                                ; preds = %.lr.ph117.split.i.preheader, %._crit_edge112.split.i
  %indvars.iv134.i = phi i64 [ %indvars.iv.next135.i, %._crit_edge112.split.i ], [ 0, %.lr.ph117.split.i.preheader ] ; 2 uses
  %.085116.i = phi i32 [ %i.hv, %._crit_edge112.split.i ], [ 0, %.lr.ph117.split.i.preheader ] ; 2 uses
  %.190114.i = phi i32 [ %.2.lcssa.i, %._crit_edge112.split.i ], [ 0, %.lr.ph117.split.i.preheader ] ; 2 uses
  %i.hr = sext i32 %.085116.i to i64
  %i.hs = getelementptr inbounds [8 x i8], ptr %i.dc, i64 %i.hr ; 4 uses
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv134.i ; 2 uses
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !55 ; 4 uses
  %i.hv = add nsw i32 %i.hu, %.085116.i
  %i.hw = icmp sgt i32 %i.hu, 0
  br i1 %i.hw, label %.lr.ph111.preheader.i, label %._crit_edge112.split.i

.lr.ph111.preheader.i:                            ; preds = %.lr.ph117.split.i
  %i.hx = add nsw i32 %i.hu, -1
  br label %.lr.ph111.i

.lr.ph111.i:                                      ; preds = %.lr.ph111._crit_edge.i, %.lr.ph111.preheader.i
  %i.hy = phi i32 [ %i.hu, %.lr.ph111.preheader.i ], [ %i.iu, %.lr.ph111._crit_edge.i ]
  %indvars.iv131.i = phi i64 [ 0, %.lr.ph111.preheader.i ], [ %indvars.iv.next132.i, %.lr.ph111._crit_edge.i ] ; 5 uses
  %.087108.i = phi i32 [ %i.hx, %.lr.ph111.preheader.i ], [ %.pre-phi150.i, %.lr.ph111._crit_edge.i ]
  %.2107.i = phi i32 [ %.190114.i, %.lr.ph111.preheader.i ], [ %.3.i, %.lr.ph111._crit_edge.i ] ; 3 uses
  %i.hz = sext i32 %.087108.i to i64              ; 3 uses
  %i.ia = getelementptr inbounds [8 x i8], ptr %i.hs, i64 %i.hz
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 4
  %i.ic = load float, ptr %i.ib, align 4, !tbaa !292 ; 2 uses
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %indvars.iv131.i
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 4
  %i.if = load float, ptr %i.ie, align 4, !tbaa !292 ; 2 uses
  %i.ig = fcmp oeq float %i.ic, %i.if
  br i1 %i.ig, label %.lr.ph111._crit_edge.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph111.i
  %i.ih = sext i32 %.2107.i to i64
  %i.ii = getelementptr inbounds [20 x i8], ptr %i.fx, i64 %i.ih ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  %i.ik = fcmp ogt float %i.ic, %i.if             ; 3 uses
  %spec.store.select122.i = zext i1 %i.ik to i32
  store i32 %spec.store.select122.i, ptr %i.ij, align 4
  %i.il = select i1 %i.ik, i64 %i.hz, i64 %indvars.iv131.i
  %i.im = getelementptr inbounds [8 x i8], ptr %i.hs, i64 %i.il
  %i.in = select i1 %i.ik, i64 %indvars.iv131.i, i64 %i.hz
  %i.io = getelementptr inbounds [8 x i8], ptr %i.hs, i64 %i.in
  %i.ip = load <2 x float>, ptr %i.im, align 4, !tbaa !54
  %i.iq = load <2 x float>, ptr %i.io, align 4, !tbaa !54
  %i.ir = shufflevector <2 x float> %i.ip, <2 x float> %i.iq, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.is = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ir, <4 x float> %i.gb, <4 x float> %i.ge)
  store <4 x float> %i.is, ptr %i.ii, align 4, !tbaa !54
  %i.it = add nsw i32 %.2107.i, 1
  %.pre.i = load i32, ptr %i.ht, align 4, !tbaa !55
  br label %.lr.ph111._crit_edge.i

.lr.ph111._crit_edge.i:                           ; preds = %bb.s, %.lr.ph111.i
  %i.iu = phi i32 [ %.pre.i, %bb.s ], [ %i.hy, %.lr.ph111.i ] ; 2 uses
  %.3.i = phi i32 [ %i.it, %bb.s ], [ %.2107.i, %.lr.ph111.i ] ; 2 uses
  %.pre-phi150.i = trunc i64 %indvars.iv131.i to i32
  %indvars.iv.next132.i = add nuw nsw i64 %indvars.iv131.i, 1 ; 2 uses
  %i.iv = sext i32 %i.iu to i64
  %i.iw = icmp slt i64 %indvars.iv.next132.i, %i.iv
  br i1 %i.iw, label %.lr.ph111.i, label %._crit_edge112.split.i, !llvm.loop !832

._crit_edge112.split.i:                           ; preds = %.lr.ph111._crit_edge.i, %.lr.ph117.split.i
  %.2.lcssa.i = phi i32 [ %.190114.i, %.lr.ph117.split.i ], [ %.3.i, %.lr.ph111._crit_edge.i ] ; 2 uses
  %indvars.iv.next135.i = add nuw nsw i64 %indvars.iv134.i, 1 ; 2 uses
  %exitcond138.not.i = icmp eq i64 %indvars.iv.next135.i, %i.bc
  br i1 %exitcond138.not.i, label %._crit_edge118.i, label %.lr.ph117.split.i, !llvm.loop !833

._crit_edge118.i:                                 ; preds = %._crit_edge112.split.i, %._crit_edge112.split.us.us.i
  %.190.lcssa.i = phi i32 [ %.2.lcssa.us.i, %._crit_edge112.split.us.us.i ], [ %.2.lcssa.i, %._crit_edge112.split.i ] ; 4 uses
  tail call fastcc void @stbtt__sort_edges_quicksort(ptr noundef nonnull %i.fx, i32 noundef %.190.lcssa.i)
  %i.ix = icmp sgt i32 %.190.lcssa.i, 1
  br i1 %i.ix, label %.lr.ph.preheader.i.i.i, label %stbtt__sort_edges.exit.i

.lr.ph.preheader.i.i.i:                           ; preds = %._crit_edge118.i
  %wide.trip.count.i.i.i = zext nneg i32 %.190.lcssa.i to i64
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.w, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 1, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.w ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i)
  %i.iy = getelementptr inbounds nuw [20 x i8], ptr %i.fx, i64 %indvars.iv.i.i.i ; 3 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.iy, i64 4
  %.sroa.4.0.copyload.i.i.i = load float, ptr %.sroa.4.0..sroa_idx.i.i.i, align 4, !tbaa !54
  %i.iz = load <2 x float>, ptr %i.iy, align 4, !tbaa !54
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.5.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx.i.i.i, i64 12, i1 false), !tbaa.struct !849
  br label %bb.t

bb.t:                                             ; preds = %bb.u, %.lr.ph.i.i.i
  %indvars.iv31.i.i.i = phi i64 [ %indvars.iv.i.i.i, %.lr.ph.i.i.i ], [ %indvars.iv.next32.i.i.i, %bb.u ] ; 4 uses
  %i.ja = getelementptr [20 x i8], ptr %i.fx, i64 %indvars.iv31.i.i.i ; 3 uses
  %i.jb = getelementptr i8, ptr %i.ja, i64 -16
  %i.jc = load float, ptr %i.jb, align 4, !tbaa !294
  %i.jd = fcmp olt float %.sroa.4.0.copyload.i.i.i, %i.jc
  br i1 %i.jd, label %bb.u, label %.thread.split.loop.exit.i.i.i

bb.u:                                             ; preds = %bb.t
  %i.je = getelementptr i8, ptr %i.ja, i64 -20
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ja, ptr noundef nonnull align 4 dereferenceable(20) %i.je, i64 20, i1 false), !tbaa.struct !295
  %indvars.iv.next32.i.i.i = add nsw i64 %indvars.iv31.i.i.i, -1
  %i.jf = icmp sgt i64 %indvars.iv31.i.i.i, 1
  br i1 %i.jf, label %bb.t, label %.thread.i.i.i

.thread.split.loop.exit.i.i.i:                    ; preds = %bb.t
  %i.jg = trunc nuw nsw i64 %indvars.iv31.i.i.i to i32
  br label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.u, %.thread.split.loop.exit.i.i.i
  %.021.lcssa.i.i.i = phi i32 [ %i.jg, %.thread.split.loop.exit.i.i.i ], [ 0, %bb.u ] ; 2 uses
  %i.jh = zext i32 %.021.lcssa.i.i.i to i64
  %.not.i.i.i = icmp eq i64 %indvars.iv.i.i.i, %i.jh
  br i1 %.not.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.thread.i.i.i
  %i.ji = sext i32 %.021.lcssa.i.i.i to i64
  %i.jj = getelementptr inbounds [20 x i8], ptr %i.fx, i64 %i.ji ; 2 uses
  store <2 x float> %i.iz, ptr %i.jj, align 4, !tbaa !54
  %.sroa.5.0..sroa_idx26.i.i.i = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx26.i.i.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.5.i.i.i, i64 12, i1 false), !tbaa.struct !849
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i)
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %stbtt__sort_edges.exit.i, label %.lr.ph.i.i.i, !llvm.loop !834

stbtt__sort_edges.exit.i:                         ; preds = %bb.w, %._crit_edge118.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr null, ptr %i.a, align 8, !tbaa !851
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #50
  %i.jk = load i32, ptr %0, align 8, !tbaa !297   ; 3 uses
  %i.jl = icmp sgt i32 %i.jk, 64
  br i1 %i.jl, label %bb.x, label %bb.y

bb.x:                                             ; preds = %stbtt__sort_edges.exit.i
  %i.jm = shl nuw nsw i32 %i.jk, 1
  %i.jn = or disjoint i32 %i.jm, 1
  %i.jo = zext nneg i32 %i.jn to i64
  %i.jp = shl nuw nsw i64 %i.jo, 2
  %.val.i.i = load ptr, ptr %11, align 8
  %.val96.i.i = load ptr, ptr %i.be, align 8, !tbaa !74
  %i.jq = tail call ptr %.val96.i.i(ptr %.val.i.i, ptr noundef null, i64 noundef range(i64 -51539607552, 51539607529) %i.jp) #50, !inline_history !835
  %.pre.i.i = load i32, ptr %0, align 8, !tbaa !297
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %stbtt__sort_edges.exit.i
  %i.jr = phi i32 [ %.pre.i.i, %bb.x ], [ %i.jk, %stbtt__sort_edges.exit.i ] ; 2 uses
  %.082.i.i = phi ptr [ %i.jq, %bb.x ], [ %i.b, %stbtt__sort_edges.exit.i ] ; 43 uses
  %i.js = sext i32 %i.jr to i64
  %i.jt = getelementptr inbounds [4 x i8], ptr %.082.i.i, i64 %i.js ; 9 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !298 ; 2 uses
  %i.jw = add nsw i32 %i.jv, %9
  %i.jx = sitofp i32 %i.jw to float
  %i.jy = fadd float %i.jx, 1.000000e+00
  %i.jz = sext i32 %.190.lcssa.i to i64
  %i.ka = getelementptr inbounds [20 x i8], ptr %i.fx, i64 %i.jz
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 4
  store float %i.jy, ptr %i.kb, align 4, !tbaa !294
  %i.kc = icmp sgt i32 %i.jv, 0
  br i1 %i.kc, label %.lr.ph135.i.i, label %stbtt__hheap_cleanup.exit.i.i

.lr.ph135.i.i:                                    ; preds = %bb.y
  %i.kd = sitofp i32 %8 to float
  %i.ke = icmp ne i32 %9, 0
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jt, i64 4 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge127.i.i, %.lr.ph135.i.i
  %.0..i.i = phi ptr [ null, %.lr.ph135.i.i ], [ %.0..0..0..0..0..0..0..0.84.i.i, %._crit_edge127.i.i ] ; 2 uses
  %i.ki = phi i32 [ %i.jr, %.lr.ph135.i.i ], [ %i.ati, %._crit_edge127.i.i ]
  %.0133.i.i = phi ptr [ %i.fx, %.lr.ph135.i.i ], [ %.1.lcssa.i.i, %._crit_edge127.i.i ] ; 3 uses
  %.077132.i.i = phi i32 [ %9, %.lr.ph135.i.i ], [ %i.aui, %._crit_edge127.i.i ] ; 2 uses
  %.078131.i.i = phi i32 [ 0, %.lr.ph135.i.i ], [ %i.auj, %._crit_edge127.i.i ] ; 3 uses
  %.sroa.11.0130.i.i = phi i32 [ 0, %.lr.ph135.i.i ], [ %.sroa.11.1.lcssa.i.i, %._crit_edge127.i.i ] ; 2 uses
  %.sroa.7.0129.i.i = phi ptr [ null, %.lr.ph135.i.i ], [ %.sroa.7.3.lcssa.i.i, %._crit_edge127.i.i ] ; 2 uses
  %.sroa.0.0128.i.i = phi ptr [ null, %.lr.ph135.i.i ], [ %.sroa.0.1.lcssa.i.i, %._crit_edge127.i.i ] ; 2 uses
  %i.kj = sitofp i32 %.077132.i.i to float        ; 68 uses
  %i.kk = fadd float %i.kj, 1.000000e+00          ; 75 uses
  %i.kl = sext i32 %i.ki to i64
  %i.km = shl nsw i64 %i.kl, 2
  call void @llvm.memset.p0.i64(ptr align 4 %.082.i.i, i8 0, i64 %i.km, i1 false)
  %i.kn = load i32, ptr %0, align 8, !tbaa !297
  %i.ko = add nsw i32 %i.kn, 1
  %i.kp = sext i32 %i.ko to i64
  %i.kq = shl nsw i64 %i.kp, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.jt, i8 0, i64 %i.kq, i1 false)
  %.not92110.i.i = icmp eq ptr %.0..i.i, null
  br i1 %.not92110.i.i, label %.preheader109.i.i, label %.lr.ph.i.i

.preheader109.i.i:                                ; preds = %bb.ab, %bb.z
  %.sroa.7.1.lcssa.i.i = phi ptr [ %.sroa.7.0129.i.i, %bb.z ], [ %.sroa.7.2.i.i, %bb.ab ] ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %.0133.i.i, i64 4 ; 2 uses
  %i.ks = load float, ptr %i.kr, align 4, !tbaa !294 ; 2 uses
  %i.kt = fcmp ugt float %i.ks, %i.kk
  br i1 %i.kt, label %._crit_edge.i.i, label %.lr.ph117.i.i

.lr.ph117.i.i:                                    ; preds = %.preheader109.i.i
  %i.ku = icmp eq i32 %.078131.i.i, 0
  %or.cond.i.i = and i1 %i.ke, %i.ku
  br label %bb.ac

.lr.ph.i.i:                                       ; preds = %bb.z, %bb.ab
  %i.kv = phi ptr [ %i.lb, %bb.ab ], [ %.0..i.i, %bb.z ] ; 6 uses
  %.080112.i.i = phi ptr [ %.181.i.i, %bb.ab ], [ %i.a, %bb.z ] ; 2 uses
  %.sroa.7.1111.i.i = phi ptr [ %.sroa.7.2.i.i, %bb.ab ], [ %.sroa.7.0129.i.i, %bb.z ] ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 28
  %i.kx = load float, ptr %i.kw, align 4, !tbaa !853
  %i.ky = fcmp ugt float %i.kx, %i.kj
  br i1 %i.ky, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i.i
  %i.kz = load ptr, ptr %i.kv, align 8, !tbaa !854
  store ptr %i.kz, ptr %.080112.i.i, align 8, !tbaa !851
  %i.la = getelementptr inbounds nuw i8, ptr %i.kv, i64 20
  store float 0.000000e+00, ptr %i.la, align 4, !tbaa !855
  store ptr %.sroa.7.1111.i.i, ptr %i.kv, align 8, !tbaa !73
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.lr.ph.i.i
  %.sroa.7.2.i.i = phi ptr [ %.sroa.7.1111.i.i, %.lr.ph.i.i ], [ %i.kv, %bb.aa ] ; 2 uses
  %.181.i.i = phi ptr [ %i.kv, %.lr.ph.i.i ], [ %.080112.i.i, %bb.aa ] ; 2 uses
  %i.lb = load ptr, ptr %.181.i.i, align 8, !tbaa !851 ; 2 uses
  %.not92.i.i = icmp eq ptr %i.lb, null
  br i1 %.not92.i.i, label %.preheader109.i.i, label %.lr.ph.i.i, !llvm.loop !836

bb.ac:                                            ; preds = %stbtt__new_active.exit.thread.i.i, %.lr.ph117.i.i
  %i.lc = phi float [ %i.ks, %.lr.ph117.i.i ], [ %i.mr, %stbtt__new_active.exit.thread.i.i ] ; 3 uses
  %i.ld = phi ptr [ %i.kr, %.lr.ph117.i.i ], [ %i.mq, %stbtt__new_active.exit.thread.i.i ]
  %.1116.i.i = phi ptr [ %.0133.i.i, %.lr.ph117.i.i ], [ %i.mp, %stbtt__new_active.exit.thread.i.i ] ; 6 uses
  %.sroa.11.1115.i.i = phi i32 [ %.sroa.11.0130.i.i, %.lr.ph117.i.i ], [ %.sroa.11.2.i.i, %stbtt__new_active.exit.thread.i.i ] ; 4 uses
  %.sroa.7.3114.i.i = phi ptr [ %.sroa.7.1.lcssa.i.i, %.lr.ph117.i.i ], [ %.sroa.7.4.i.i, %stbtt__new_active.exit.thread.i.i ] ; 4 uses
  %.sroa.0.1113.i.i = phi ptr [ %.sroa.0.0128.i.i, %.lr.ph117.i.i ], [ %.sroa.0.2.i.i, %stbtt__new_active.exit.thread.i.i ] ; 5 uses
  %i.le = getelementptr inbounds nuw i8, ptr %.1116.i.i, i64 12 ; 2 uses
  %i.lf = load float, ptr %i.le, align 4, !tbaa !856 ; 3 uses
  %i.lg = fcmp une float %i.lc, %i.lf
  br i1 %i.lg, label %bb.ad, label %stbtt__new_active.exit.thread.i.i

bb.ad:                                            ; preds = %bb.ac
  %.not.i.i.i.i = icmp eq ptr %.sroa.7.3114.i.i, null
  br i1 %.not.i.i.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.lh = load ptr, ptr %.sroa.7.3114.i.i, align 8, !tbaa !73
  br label %bb.ai

bb.af:                                            ; preds = %bb.ad
  %i.li = icmp eq i32 %.sroa.11.1115.i.i, 0
  br i1 %i.li, label %bb.ag, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.af
  %i.lj = add nsw i32 %.sroa.11.1115.i.i, -1
  br label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %.val.i.i.i.i = load ptr, ptr %11, align 8
  %.val26.i.i.i.i = load ptr, ptr %i.be, align 8, !tbaa !74
  %i.lk = tail call ptr %.val26.i.i.i.i(ptr %.val.i.i.i.i, ptr noundef null, i64 noundef 25608) #50, !inline_history !837 ; 3 uses
  %i.ll = icmp eq ptr %i.lk, null
  br i1 %i.ll, label %stbtt__new_active.exit.thread.i.i, label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %bb.ag
  store ptr %.sroa.0.1113.i.i, ptr %i.lk, align 8, !tbaa !859
  %.pre142.pre.i.i = load float, ptr %i.le, align 4, !tbaa !856
  %.pre143.pre.i.i = load float, ptr %i.ld, align 4, !tbaa !294
  br label %bb.ah

bb.ah:                                            ; preds = %.thread.i.i.i.i, %._crit_edge.i.i.i.i
  %.pre143.i.i = phi float [ %.pre143.pre.i.i, %.thread.i.i.i.i ], [ %i.lc, %._crit_edge.i.i.i.i ]
  %.pre142.i.i = phi float [ %.pre142.pre.i.i, %.thread.i.i.i.i ], [ %i.lf, %._crit_edge.i.i.i.i ]
  %.sroa.0.4.i.i = phi ptr [ %i.lk, %.thread.i.i.i.i ], [ %.sroa.0.1113.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.lm = phi i32 [ 799, %.thread.i.i.i.i ], [ %i.lj, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %.sroa.0.4.i.i, i64 8
  %i.lo = zext nneg i32 %i.lm to i64
  %i.lp = shl nuw nsw i64 %i.lo, 5
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ln, i64 %i.lp
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ae
  %i.lr = phi float [ %.pre143.i.i, %bb.ah ], [ %i.lc, %bb.ae ] ; 3 uses
  %i.ls = phi float [ %.pre142.i.i, %bb.ah ], [ %i.lf, %bb.ae ] ; 3 uses
  %.sroa.0.3.i.i = phi ptr [ %.sroa.0.4.i.i, %bb.ah ], [ %.sroa.0.1113.i.i, %bb.ae ]
  %.sroa.7.5.i.i = phi ptr [ null, %bb.ah ], [ %i.lh, %bb.ae ]
  %.sroa.11.3.i.i = phi i32 [ %i.lm, %bb.ah ], [ %.sroa.11.1115.i.i, %bb.ae ]
  %.1.i.ph.i.i.i = phi ptr [ %i.lq, %bb.ah ], [ %.sroa.7.3114.i.i, %bb.ae ] ; 9 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %.1116.i.i, i64 8
  %i.lu = load float, ptr %i.lt, align 4, !tbaa !860
  %i.lv = load float, ptr %.1116.i.i, align 4, !tbaa !861 ; 2 uses
  %i.lw = fsub float %i.lu, %i.lv
  %i.lx = fsub float %i.ls, %i.lr
  %i.ly = fdiv float %i.lw, %i.lx                 ; 4 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %.1.i.ph.i.i.i, i64 12
  store float %i.ly, ptr %i.lz, align 4, !tbaa !862
  %i.ma = fcmp une float %i.ly, 0.000000e+00
  %i.mb = fdiv float 1.000000e+00, %i.ly
  %i.mc = select i1 %i.ma, float %i.mb, float 0.000000e+00
  %i.md = getelementptr inbounds nuw i8, ptr %.1.i.ph.i.i.i, i64 16
  store float %i.mc, ptr %i.md, align 8, !tbaa !863
  %i.me = fsub float %i.kj, %i.lr
  %i.mf = tail call float @llvm.fmuladd.f32(float %i.ly, float %i.me, float %i.lv)
  %i.mg = getelementptr inbounds nuw i8, ptr %.1.i.ph.i.i.i, i64 8
  %i.mh = fsub float %i.mf, %i.kd
  store float %i.mh, ptr %i.mg, align 8, !tbaa !864
  %i.mi = getelementptr inbounds nuw i8, ptr %.1116.i.i, i64 16
  %i.mj = load i32, ptr %i.mi, align 4, !tbaa !865
  %.not28.i.i.i = icmp eq i32 %i.mj, 0
  %i.mk = select i1 %.not28.i.i.i, float -1.000000e+00, float 1.000000e+00
  %i.ml = getelementptr inbounds nuw i8, ptr %.1.i.ph.i.i.i, i64 20
  store float %i.mk, ptr %i.ml, align 4, !tbaa !855
  %i.mm = getelementptr inbounds nuw i8, ptr %.1.i.ph.i.i.i, i64 24
  store float %i.lr, ptr %i.mm, align 8, !tbaa !866
  %i.mn = getelementptr inbounds nuw i8, ptr %.1.i.ph.i.i.i, i64 28 ; 2 uses
  store float %i.ls, ptr %i.mn, align 4, !tbaa !853
  store ptr null, ptr %.1.i.ph.i.i.i, align 8, !tbaa !854
  %i.mo = fcmp olt float %i.ls, %i.kj
  %or.cond237.i.i = select i1 %or.cond.i.i, i1 %i.mo, i1 false
  br i1 %or.cond237.i.i, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  store float %i.kj, ptr %i.mn, align 4, !tbaa !853
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.0..0..0..0..0..0..0..0..i.i = load ptr, ptr %i.a, align 8, !tbaa !851
  store ptr %.0..0..0..0..0..0..0..0..i.i, ptr %.1.i.ph.i.i.i, align 8, !tbaa !854
  store ptr %.1.i.ph.i.i.i, ptr %i.a, align 8, !tbaa !851
  br label %stbtt__new_active.exit.thread.i.i

stbtt__new_active.exit.thread.i.i:                ; preds = %bb.ak, %bb.ag, %bb.ac
  %.sroa.0.2.i.i = phi ptr [ %.sroa.0.1113.i.i, %bb.ac ], [ %.sroa.0.3.i.i, %bb.ak ], [ %.sroa.0.1113.i.i, %bb.ag ] ; 2 uses
  %.sroa.7.4.i.i = phi ptr [ %.sroa.7.3114.i.i, %bb.ac ], [ %.sroa.7.5.i.i, %bb.ak ], [ null, %bb.ag ] ; 2 uses
  %.sroa.11.2.i.i = phi i32 [ %.sroa.11.1115.i.i, %bb.ac ], [ %.sroa.11.3.i.i, %bb.ak ], [ 0, %bb.ag ] ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %.1116.i.i, i64 20 ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %.1116.i.i, i64 24 ; 2 uses
  %i.mr = load float, ptr %i.mq, align 4, !tbaa !294 ; 2 uses
  %i.ms = fcmp ugt float %i.mr, %i.kk
  br i1 %i.ms, label %._crit_edge.i.i, label %bb.ac, !llvm.loop !838

._crit_edge.i.i:                                  ; preds = %stbtt__new_active.exit.thread.i.i, %.preheader109.i.i
  %.sroa.0.1.lcssa.i.i = phi ptr [ %.sroa.0.0128.i.i, %.preheader109.i.i ], [ %.sroa.0.2.i.i, %stbtt__new_active.exit.thread.i.i ] ; 3 uses
  %.sroa.7.3.lcssa.i.i = phi ptr [ %.sroa.7.1.lcssa.i.i, %.preheader109.i.i ], [ %.sroa.7.4.i.i, %stbtt__new_active.exit.thread.i.i ]
  %.sroa.11.1.lcssa.i.i = phi i32 [ %.sroa.11.0130.i.i, %.preheader109.i.i ], [ %.sroa.11.2.i.i, %stbtt__new_active.exit.thread.i.i ]
  %.1.lcssa.i.i = phi ptr [ %.0133.i.i, %.preheader109.i.i ], [ %i.mp, %stbtt__new_active.exit.thread.i.i ]
  %.0..0..0..0..0..0..0..0.84.i.i = load ptr, ptr %i.a, align 8, !tbaa !851 ; 4 uses
  %.not93.i.i = icmp eq ptr %.0..0..0..0..0..0..0..0.84.i.i, null ; 2 uses
  %.pre145.i.i = load i32, ptr %0, align 8, !tbaa !297 ; 5 uses
  br i1 %.not93.i.i, label %stbtt__fill_active_edges_new.exit.i.i, label %bb.al

bb.al:                                            ; preds = %._crit_edge.i.i
  %i.mt = sitofp i32 %.pre145.i.i to float        ; 3 uses
  %i.mu = icmp sgt i32 %.pre145.i.i, 0
  %i.mv = fcmp oeq float %i.kk, %i.kj             ; 3 uses
  %i.mw = fsub float %i.kk, %i.kj                 ; 4 uses
  %wide.trip.count.i.i96.i = zext nneg i32 %.pre145.i.i to i64
  %i.mx = insertelement <2 x float> poison, float %i.kj, i64 0
  %i.my = shufflevector <2 x float> %i.mx, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.am

bb.am:                                            ; preds = %stbtt__handle_clipped_edge.exit351.i.i.i, %bb.al
  %.0293468.i.i.i = phi ptr [ %.0..0..0..0..0..0..0..0.84.i.i, %bb.al ], [ %i.atg, %stbtt__handle_clipped_edge.exit351.i.i.i ] ; 19 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 8
  %i.na = load <2 x float>, ptr %i.mz, align 8, !tbaa !54 ; 10 uses
  %i.nb = extractelement <2 x float> %i.na, i64 0 ; 40 uses
  %i.nc = extractelement <2 x float> %i.na, i64 1 ; 2 uses
  %i.nd = fcmp oeq float %i.nc, 0.000000e+00
  br i1 %i.nd, label %bb.an, label %bb.bv

bb.an:                                            ; preds = %bb.am
  %i.ne = fcmp olt float %i.nb, %i.mt
  br i1 %i.ne, label %bb.ao, label %stbtt__handle_clipped_edge.exit351.i.i.i

bb.ao:                                            ; preds = %bb.an
  %i.nf = fcmp ult float %i.nb, 0.000000e+00
  br i1 %i.nf, label %bb.bk, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ng = fptosi float %i.nb to i32               ; 6 uses
  br i1 %i.mv, label %stbtt__handle_clipped_edge.exit351.i.i.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.nh = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 28 ; 2 uses
  %i.ni = load float, ptr %i.nh, align 4, !tbaa !853 ; 4 uses
  %i.nj = fcmp olt float %i.ni, %i.kj
  br i1 %i.nj, label %bb.ba, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.nk = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 24
  %i.nl = load float, ptr %i.nk, align 8, !tbaa !866 ; 4 uses
  %i.nm = fcmp olt float %i.kk, %i.nl
  br i1 %i.nm, label %bb.ba, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.nn = fcmp ogt float %i.nl, %i.kj
  br i1 %i.nn, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %foldExtExtBinop = fsub <2 x float> %i.na, %i.na
  %i.no = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.np = fsub float %i.nl, %i.kj
  %i.nq = fmul float %i.no, %i.np
  %i.nr = fdiv float %i.nq, %i.mw
  %i.ns = fadd float %i.nb, %i.nr
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.055.i.i.i.i = phi float [ %i.ns, %bb.at ], [ %i.nb, %bb.as ] ; 4 uses
  %.054.i.i.i.i = phi float [ %i.nl, %bb.at ], [ %i.kj, %bb.as ] ; 3 uses
  %i.nt = fcmp ogt float %i.kk, %i.ni
  br i1 %i.nt, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.nu = fsub float %i.nb, %.055.i.i.i.i
  %i.nv = fsub float %i.ni, %i.kk
  %i.nw = fmul float %i.nv, %i.nu
  %i.nx = fsub float %i.kk, %.054.i.i.i.i
  %i.ny = fdiv float %i.nw, %i.nx
  %i.nz = fadd float %i.nb, %i.ny
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.053.i.i.i.i = phi float [ %i.nz, %bb.av ], [ %i.nb, %bb.au ] ; 3 uses
  %.0.i.i.i.i = phi float [ %i.ni, %bb.av ], [ %i.kk, %bb.au ] ; 2 uses
  %i.oa = sitofp i32 %i.ng to float               ; 4 uses
  %i.ob = fcmp ugt float %.055.i.i.i.i, %i.oa
  %i.oc = fcmp ugt float %.053.i.i.i.i, %i.oa
  %or.cond.i.i.i.i = select i1 %i.ob, i1 true, i1 %i.oc
  br i1 %or.cond.i.i.i.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.od = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 20
  %i.oe = load float, ptr %i.od, align 4, !tbaa !855
  %i.of = fsub float %.0.i.i.i.i, %.054.i.i.i.i
  %12 = zext nneg i32 %i.ng to i64
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %12 ; 2 uses
  %i.oh = load float, ptr %i.og, align 4, !tbaa !54
  %i.oi = tail call float @llvm.fmuladd.f32(float %i.oe, float %i.of, float %i.oh)
  store float %i.oi, ptr %i.og, align 4, !tbaa !54
  br label %bb.ba

bb.ay:                                            ; preds = %bb.aw
  %i.oj = add nuw nsw i32 %i.ng, 1
  %i.ok = sitofp i32 %i.oj to float               ; 2 uses
  %i.ol = fcmp ult float %.055.i.i.i.i, %i.ok
  %i.om = fcmp ult float %.053.i.i.i.i, %i.ok
  %or.cond62.i.i.i.i = select i1 %i.ol, i1 true, i1 %i.om
  br i1 %or.cond62.i.i.i.i, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.on = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 20
  %i.oo = load float, ptr %i.on, align 4, !tbaa !855
  %i.op = fsub float %.0.i.i.i.i, %.054.i.i.i.i
  %i.oq = fmul float %i.op, %i.oo
  %i.or = fsub float %.055.i.i.i.i, %i.oa
  %i.os = fsub float %.053.i.i.i.i, %i.oa
  %i.ot = fadd float %i.or, %i.os
  %i.ou = fmul float %i.ot, 5.000000e-01
  %i.ov = fsub float 1.000000e+00, %i.ou
  %13 = zext nneg i32 %i.ng to i64
  %i.ow = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %13 ; 2 uses
  %i.ox = load float, ptr %i.ow, align 4, !tbaa !54
  %i.oy = tail call float @llvm.fmuladd.f32(float %i.oq, float %i.ov, float %i.ox)
  store float %i.oy, ptr %i.ow, align 4, !tbaa !54
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay, %bb.ax, %bb.ar, %bb.aq
  %i.oz = add nuw nsw i32 %i.ng, 1                ; 3 uses
  %i.pa = load float, ptr %i.nh, align 4, !tbaa !853 ; 4 uses
  %i.pb = fcmp olt float %i.pa, %i.kj
  br i1 %i.pb, label %stbtt__handle_clipped_edge.exit351.i.i.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.pc = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 24
  %i.pd = load float, ptr %i.pc, align 8, !tbaa !866 ; 4 uses
  %i.pe = fcmp olt float %i.kk, %i.pd
  br i1 %i.pe, label %stbtt__handle_clipped_edge.exit351.i.i.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.pf = fcmp ogt float %i.pd, %i.kj
  br i1 %i.pf, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %foldExtExtBinop178 = fsub <2 x float> %i.na, %i.na
  %i.pg = extractelement <2 x float> %foldExtExtBinop178, i64 0
  %i.ph = fsub float %i.pd, %i.kj
  %i.pi = fmul float %i.pg, %i.ph
  %i.pj = fdiv float %i.pi, %i.mw
  %i.pk = fadd float %i.nb, %i.pj
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.055.i345.i.i.i = phi float [ %i.pk, %bb.bd ], [ %i.nb, %bb.bc ] ; 4 uses
  %.054.i346.i.i.i = phi float [ %i.pd, %bb.bd ], [ %i.kj, %bb.bc ] ; 3 uses
  %i.pl = fcmp ogt float %i.kk, %i.pa
  br i1 %i.pl, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.pm = fsub float %i.nb, %.055.i345.i.i.i
  %i.pn = fsub float %i.pa, %i.kk
  %i.po = fmul float %i.pn, %i.pm
  %i.pp = fsub float %i.kk, %.054.i346.i.i.i
  %i.pq = fdiv float %i.po, %i.pp
  %i.pr = fadd float %i.nb, %i.pq
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.053.i347.i.i.i = phi float [ %i.pr, %bb.bf ], [ %i.nb, %bb.be ] ; 3 uses
  %.0.i348.i.i.i = phi float [ %i.pa, %bb.bf ], [ %i.kk, %bb.be ] ; 2 uses
  %i.ps = sitofp i32 %i.oz to float               ; 4 uses
  %i.pt = fcmp ugt float %.055.i345.i.i.i, %i.ps
  %i.pu = fcmp ugt float %.053.i347.i.i.i, %i.ps
  %or.cond.i349.i.i.i = select i1 %i.pt, i1 true, i1 %i.pu
  br i1 %or.cond.i349.i.i.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.pv = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 20
  %i.pw = load float, ptr %i.pv, align 4, !tbaa !855
  %i.px = fsub float %.0.i348.i.i.i, %.054.i346.i.i.i
  %14 = zext nneg i32 %i.oz to i64
  %i.py = getelementptr inbounds nuw [4 x i8], ptr %i.jt, i64 %14 ; 2 uses
  %i.pz = load float, ptr %i.py, align 4, !tbaa !54
  %i.qa = tail call float @llvm.fmuladd.f32(float %i.pw, float %i.px, float %i.pz)
  store float %i.qa, ptr %i.py, align 4, !tbaa !54
  br label %stbtt__handle_clipped_edge.exit351.i.i.i

bb.bi:                                            ; preds = %bb.bg
  %i.qb = add nuw nsw i32 %i.ng, 2
  %i.qc = sitofp i32 %i.qb to float               ; 2 uses
  %i.qd = fcmp ult float %.055.i345.i.i.i, %i.qc
  %i.qe = fcmp ult float %.053.i347.i.i.i, %i.qc
  %or.cond62.i350.i.i.i = select i1 %i.qd, i1 true, i1 %i.qe
  br i1 %or.cond62.i350.i.i.i, label %bb.bj, label %stbtt__handle_clipped_edge.exit351.i.i.i

bb.bj:                                            ; preds = %bb.bi
  %i.qf = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 20
  %i.qg = load float, ptr %i.qf, align 4, !tbaa !855
  %i.qh = fsub float %.0.i348.i.i.i, %.054.i346.i.i.i
  %i.qi = fmul float %i.qh, %i.qg
  %i.qj = fsub float %.055.i345.i.i.i, %i.ps
  %i.qk = fsub float %.053.i347.i.i.i, %i.ps
  %i.ql = fadd float %i.qj, %i.qk
  %i.qm = fmul float %i.ql, 5.000000e-01
  %i.qn = fsub float 1.000000e+00, %i.qm
  %15 = zext nneg i32 %i.oz to i64
  %i.qo = getelementptr inbounds nuw [4 x i8], ptr %i.jt, i64 %15 ; 2 uses
  %i.qp = load float, ptr %i.qo, align 4, !tbaa !54
  %i.qq = tail call float @llvm.fmuladd.f32(float %i.qi, float %i.qn, float %i.qp)
  store float %i.qq, ptr %i.qo, align 4, !tbaa !54
  br label %stbtt__handle_clipped_edge.exit351.i.i.i

bb.bk:                                            ; preds = %bb.ao
  br i1 %i.mv, label %stbtt__handle_clipped_edge.exit351.i.i.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.qr = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 28
  %i.qs = load float, ptr %i.qr, align 4, !tbaa !853 ; 4 uses
  %i.qt = fcmp olt float %i.qs, %i.kj
  br i1 %i.qt, label %stbtt__handle_clipped_edge.exit351.i.i.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.qu = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 24
  %i.qv = load float, ptr %i.qu, align 8, !tbaa !866 ; 4 uses
  %i.qw = fcmp olt float %i.kk, %i.qv
  br i1 %i.qw, label %stbtt__handle_clipped_edge.exit351.i.i.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.qx = fcmp ogt float %i.qv, %i.kj
  br i1 %i.qx, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %foldExtExtBinop180 = fsub <2 x float> %i.na, %i.na
  %i.qy = extractelement <2 x float> %foldExtExtBinop180, i64 0
  %i.qz = fsub float %i.qv, %i.kj
  %i.ra = fmul float %i.qy, %i.qz
  %i.rb = fdiv float %i.ra, %i.mw
  %i.rc = fadd float %i.nb, %i.rb
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %.055.i352.i.i.i = phi float [ %i.rc, %bb.bo ], [ %i.nb, %bb.bn ] ; 4 uses
  %.054.i353.i.i.i = phi float [ %i.qv, %bb.bo ], [ %i.kj, %bb.bn ] ; 3 uses
  %i.rd = fcmp ogt float %i.kk, %i.qs
  br i1 %i.rd, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.re = fsub float %i.nb, %.055.i352.i.i.i
  %i.rf = fsub float %i.qs, %i.kk
  %i.rg = fmul float %i.rf, %i.re
  %i.rh = fsub float %i.kk, %.054.i353.i.i.i
  %i.ri = fdiv float %i.rg, %i.rh
  %i.rj = fadd float %i.nb, %i.ri
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.053.i354.i.i.i = phi float [ %i.rj, %bb.bq ], [ %i.nb, %bb.bp ] ; 3 uses
  %.0.i355.i.i.i = phi float [ %i.qs, %bb.bq ], [ %i.kk, %bb.bp ] ; 2 uses
  %i.rk = fcmp ugt float %.055.i352.i.i.i, 0.000000e+00
  %i.rl = fcmp ugt float %.053.i354.i.i.i, 0.000000e+00
  %or.cond.i356.i.i.i = select i1 %i.rk, i1 true, i1 %i.rl
  br i1 %or.cond.i356.i.i.i, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.rm = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 20
  %i.rn = load float, ptr %i.rm, align 4, !tbaa !855
  %i.ro = fsub float %.0.i355.i.i.i, %.054.i353.i.i.i
  %i.rp = load float, ptr %i.jt, align 4, !tbaa !54
  %i.rq = tail call float @llvm.fmuladd.f32(float %i.rn, float %i.ro, float %i.rp)
  store float %i.rq, ptr %i.jt, align 4, !tbaa !54
  br label %stbtt__handle_clipped_edge.exit351.i.i.i

bb.bt:                                            ; preds = %bb.br
  %i.rr = fcmp ult float %.055.i352.i.i.i, 1.000000e+00
  %i.rs = fcmp ult float %.053.i354.i.i.i, 1.000000e+00
  %or.cond62.i357.i.i.i = select i1 %i.rr, i1 true, i1 %i.rs
  br i1 %or.cond62.i357.i.i.i, label %bb.bu, label %stbtt__handle_clipped_edge.exit351.i.i.i

bb.bu:                                            ; preds = %bb.bt
  %i.rt = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 20
  %i.ru = load float, ptr %i.rt, align 4, !tbaa !855
  %i.rv = fsub float %.0.i355.i.i.i, %.054.i353.i.i.i
  %i.rw = fmul float %i.rv, %i.ru
  %i.rx = fadd float %.055.i352.i.i.i, %.053.i354.i.i.i
  %i.ry = fmul float %i.rx, 5.000000e-01
  %i.rz = fsub float 1.000000e+00, %i.ry
  %i.sa = load float, ptr %i.jt, align 4, !tbaa !54
  %i.sb = tail call float @llvm.fmuladd.f32(float %i.rw, float %i.rz, float %i.sa)
  store float %i.sb, ptr %i.jt, align 4, !tbaa !54
  br label %stbtt__handle_clipped_edge.exit351.i.i.i

bb.bv:                                            ; preds = %bb.am
  %i.sc = fadd float %i.nc, %i.nb                 ; 34 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 16
  %i.se = load float, ptr %i.sd, align 8, !tbaa !863 ; 2 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 24 ; 16 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 28 ; 15 uses
  %i.sh = load <2 x float>, ptr %i.sf, align 8, !tbaa !54 ; 3 uses
  %i.si = extractelement <2 x float> %i.sh, i64 0 ; 2 uses
  %i.sj = fcmp ogt float %i.si, %i.kj             ; 2 uses
  %i.sk = fsub <2 x float> %i.sh, %i.my
  %i.sl = shufflevector <2 x float> %i.na, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.sm = shufflevector <2 x float> %i.na, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.sn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.sl, <2 x float> %i.sk, <2 x float> %i.sm) ; 2 uses
  %i.so = extractelement <2 x float> %i.sn, i64 0
  %.0305.i.i.i = select i1 %i.sj, float %i.so, float %i.nb ; 7 uses
  %.0301.i.i.i = select i1 %i.sj, float %i.si, float %i.kj ; 3 uses
  %i.sp = extractelement <2 x float> %i.sh, i64 1 ; 2 uses
  %i.sq = fcmp olt float %i.sp, %i.kk             ; 2 uses
  %i.sr = extractelement <2 x float> %i.sn, i64 1
  %.0303.i.i.i = select i1 %i.sq, float %i.sr, float %i.sc ; 7 uses
  %.0299.i.i.i = select i1 %i.sq, float %i.sp, float %i.kk ; 3 uses
  %i.ss = fcmp oge float %.0305.i.i.i, 0.000000e+00
  %i.st = fcmp oge float %.0303.i.i.i, 0.000000e+00
  %or.cond.i.i.i = select i1 %i.ss, i1 %i.st, i1 false
  br i1 %or.cond.i.i.i, label %bb.bw, label %bb.cc

bb.bw:                                            ; preds = %bb.bv
  %i.su = fcmp olt float %.0305.i.i.i, %i.mt
  %i.sv = fcmp olt float %.0303.i.i.i, %i.mt
  %or.cond338.i.i.i = select i1 %i.su, i1 %i.sv, i1 false
  br i1 %or.cond338.i.i.i, label %bb.bx, label %bb.cc

bb.bx:                                            ; preds = %bb.bw
  %i.sw = fptosi float %.0305.i.i.i to i32        ; 5 uses
  %i.sx = fptosi float %.0303.i.i.i to i32        ; 3 uses
  %i.sy = icmp eq i32 %i.sw, %i.sx
  br i1 %i.sy, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.sz = fsub float %.0299.i.i.i, %.0301.i.i.i
  %i.ta = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 20
  %i.tb = load float, ptr %i.ta, align 4, !tbaa !855
  %i.tc = fmul float %i.sz, %i.tb                 ; 2 uses
  %i.td = sitofp i32 %i.sw to float
  %i.te = fadd float %i.td, 1.000000e+00          ; 2 uses
  %i.tf = fsub float %i.te, %.0305.i.i.i
  %i.tg = fsub float %i.te, %.0303.i.i.i
  %i.th = fadd float %i.tf, %i.tg
  %i.ti = fmul float %i.th, 5.000000e-01
  %i.tj = fmul float %i.ti, %i.tc
  %16 = zext nneg i32 %i.sw to i64                ; 2 uses
  %i.tk = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %16 ; 2 uses
  %i.tl = load float, ptr %i.tk, align 4, !tbaa !54
  %i.tm = fadd float %i.tl, %i.tj
  store float %i.tm, ptr %i.tk, align 4, !tbaa !54
  %i.tn = getelementptr inbounds nuw [4 x i8], ptr %i.kf, i64 %16 ; 2 uses
  %i.to = load float, ptr %i.tn, align 4, !tbaa !54
  %i.tp = fadd float %i.tc, %i.to
  store float %i.tp, ptr %i.tn, align 4, !tbaa !54
  br label %stbtt__handle_clipped_edge.exit351.i.i.i

bb.bz:                                            ; preds = %bb.bx
  %i.tq = fcmp ogt float %.0305.i.i.i, %.0303.i.i.i
  br i1 %i.tq, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.tr = fsub float %i.kj, %.0301.i.i.i
  %i.ts = fadd float %i.kk, %i.tr
  %i.tt = fsub float %i.kj, %.0299.i.i.i
  %i.tu = fadd float %i.kk, %i.tt
  %i.tv = fneg float %i.se
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %.pre-phi475.i.i.i = phi i32 [ %i.sw, %bb.ca ], [ %i.sx, %bb.bz ] ; 7 uses
  %.pre-phi.i.i.i = phi i32 [ %i.sx, %bb.ca ], [ %i.sw, %bb.bz ] ; 4 uses
  %.0307.i.i.i = phi float [ %i.sc, %bb.ca ], [ %i.nb, %bb.bz ] ; 2 uses
  %.1306.i.i.i = phi float [ %.0303.i.i.i, %bb.ca ], [ %.0305.i.i.i, %bb.bz ]
  %.1304.i.i.i = phi float [ %.0305.i.i.i, %bb.ca ], [ %.0303.i.i.i, %bb.bz ]
  %.1302.i.i.i = phi float [ %i.tu, %bb.ca ], [ %.0301.i.i.i, %bb.bz ] ; 2 uses
  %.1300.i.i.i = phi float [ %i.ts, %bb.ca ], [ %.0299.i.i.i, %bb.bz ] ; 2 uses
  %.0298.i.i.i = phi float [ %i.tv, %bb.ca ], [ %i.se, %bb.bz ] ; 3 uses
  %i.tw = add nuw nsw i32 %.pre-phi.i.i.i, 1      ; 3 uses
  %17 = uitofp nneg i32 %i.tw to float            ; 2 uses
  %18 = fsub float %17, %.0307.i.i.i
  %19 = tail call float @llvm.fmuladd.f32(float %.0298.i.i.i, float %18, float %i.kj) ; 2 uses
  %20 = uitofp nneg i32 %.pre-phi475.i.i.i to float ; 3 uses
  %21 = fsub float %20, %.0307.i.i.i
  %22 = tail call float @llvm.fmuladd.f32(float %.0298.i.i.i, float %21, float %i.kj) ; 2 uses
  %i.tx = fcmp ogt float %19, %i.kk
  %.0296.i.i.i = select i1 %i.tx, float %i.kk, float %19 ; 2 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 20
  %i.tz = load float, ptr %i.ty, align 4, !tbaa !855 ; 4 uses
  %i.ua = fsub float %.0296.i.i.i, %.1302.i.i.i
  %i.ub = fmul float %i.tz, %i.ua                 ; 5 uses
  %i.uc = fsub nnan float %17, %.1306.i.i.i
  %i.ud = fmul float %i.uc, %i.ub
  %i.ue = fmul float %i.ud, 5.000000e-01
  %23 = zext nneg i32 %.pre-phi.i.i.i to i64      ; 3 uses
  %i.uf = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %23 ; 2 uses
  %i.ug = load float, ptr %i.uf, align 4, !tbaa !54
  %i.uh = fadd float %i.ug, %i.ue
  store float %i.uh, ptr %i.uf, align 4, !tbaa !54
  %i.ui = fcmp ogt float %22, %i.kk               ; 2 uses
  %i.uj = fsub float %i.kk, %.0296.i.i.i
  %i.uk = sub nsw i32 %.pre-phi475.i.i.i, %i.tw
  %i.ul = sitofp i32 %i.uk to float
  %i.um = fdiv float %i.uj, %i.ul
  %.1.i.i.i = select i1 %i.ui, float %i.um, float %.0298.i.i.i
  %.0295.i.i.i = select i1 %i.ui, float %i.kk, float %22
  %i.un = fmul float %i.tz, %.1.i.i.i             ; 4 uses
  %i.uo = icmp slt i32 %i.tw, %.pre-phi475.i.i.i
  br i1 %i.uo, label %.lr.ph467.i.i.i, label %._crit_edge.i.i.i

.lr.ph467.i.i.i:                                  ; preds = %bb.cb
  %i.up = fmul float %i.un, 5.000000e-01          ; 3 uses
  %i.uq = add nuw nsw i64 %23, 1                  ; 2 uses
  %i.ur = add nsw i32 %.pre-phi475.i.i.i, -2
  %i.us = sub nsw i32 %.pre-phi.i.i.i, %.pre-phi475.i.i.i
  %i.ut = and i32 %i.us, 1
  %lcmp.mod.not.not = icmp eq i32 %i.ut, 0
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph467.i.i.i
  %i.uu = fadd float %i.up, %i.ub
  %i.uv = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %i.uq ; 2 uses
  %i.uw = load float, ptr %i.uv, align 4, !tbaa !54
  %i.ux = fadd float %i.uu, %i.uw
  store float %i.ux, ptr %i.uv, align 4, !tbaa !54
  %i.uy = fadd float %i.un, %i.ub                 ; 2 uses
  %indvars.iv.next472.i.i.i.prol = add nuw nsw i64 %23, 2
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph467.i.i.i
  %indvars.iv471.i.i.i.unr = phi i64 [ %i.uq, %.lr.ph467.i.i.i ], [ %indvars.iv.next472.i.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %.0294466.i.i.i.unr = phi float [ %i.ub, %.lr.ph467.i.i.i ], [ %i.uy, %.prol.loopexit.unr-lcssa ]
  %.lcssa182.unr = phi float [ poison, %.lr.ph467.i.i.i ], [ %i.uy, %.prol.loopexit.unr-lcssa ]
  %i.uz = icmp eq i32 %i.ur, %.pre-phi.i.i.i
  br i1 %i.uz, label %._crit_edge.i.i.i, label %.lr.ph467.i.i.i.new

.lr.ph467.i.i.i.new:                              ; preds = %.prol.loopexit, %.lr.ph467.i.i.i.new
  %indvars.iv471.i.i.i = phi i64 [ %indvars.iv.next472.i.i.i.1, %.lr.ph467.i.i.i.new ], [ %indvars.iv471.i.i.i.unr, %.prol.loopexit ] ; 3 uses
  %.0294466.i.i.i = phi float [ %i.vk, %.lr.ph467.i.i.i.new ], [ %.0294466.i.i.i.unr, %.prol.loopexit ] ; 2 uses
  %i.va = fadd float %i.up, %.0294466.i.i.i
  %i.vb = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %indvars.iv471.i.i.i ; 2 uses
  %i.vc = load float, ptr %i.vb, align 4, !tbaa !54
  %i.vd = fadd float %i.va, %i.vc
  store float %i.vd, ptr %i.vb, align 4, !tbaa !54
  %i.ve = fadd float %i.un, %.0294466.i.i.i       ; 2 uses
  %i.vf = fadd float %i.up, %i.ve
  %i.vg = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %indvars.iv471.i.i.i
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vg, i64 4 ; 2 uses
  %i.vi = load float, ptr %i.vh, align 4, !tbaa !54
  %i.vj = fadd float %i.vf, %i.vi
  store float %i.vj, ptr %i.vh, align 4, !tbaa !54
  %i.vk = fadd float %i.un, %i.ve                 ; 2 uses
  %indvars.iv.next472.i.i.i.1 = add nuw nsw i64 %indvars.iv471.i.i.i, 2 ; 2 uses
  %lftr.wideiv.i.i.i.1 = trunc nuw i64 %indvars.iv.next472.i.i.i.1 to i32
  %24 = icmp sgt i32 %.pre-phi475.i.i.i, %lftr.wideiv.i.i.i.1
  br i1 %24, label %.lr.ph467.i.i.i.new, label %._crit_edge.i.i.i, !llvm.loop !839

._crit_edge.i.i.i:                                ; preds = %.prol.loopexit, %.lr.ph467.i.i.i.new, %bb.cb
  %.0294.lcssa.i.i.i = phi float [ %i.ub, %bb.cb ], [ %.lcssa182.unr, %.prol.loopexit ], [ %i.vk, %.lr.ph467.i.i.i.new ]
  %i.vl = fsub float %.1300.i.i.i, %.0295.i.i.i
  %i.vm = fadd float %20, 1.000000e+00            ; 2 uses
  %i.vn = fsub nnan float %i.vm, %20
  %i.vo = fsub float %i.vm, %.1304.i.i.i
  %i.vp = fadd float %i.vn, %i.vo
  %i.vq = fmul float %i.vp, 5.000000e-01
  %i.vr = fmul float %i.vq, %i.vl
  %i.vs = tail call float @llvm.fmuladd.f32(float %i.tz, float %i.vr, float %.0294.lcssa.i.i.i)
  %25 = zext nneg i32 %.pre-phi475.i.i.i to i64   ; 2 uses
  %i.vt = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %25 ; 2 uses
  %i.vu = load float, ptr %i.vt, align 4, !tbaa !54
  %i.vv = fadd float %i.vs, %i.vu
  store float %i.vv, ptr %i.vt, align 4, !tbaa !54
  %i.vw = fsub float %.1300.i.i.i, %.1302.i.i.i
  %i.vx = getelementptr inbounds nuw [4 x i8], ptr %i.kf, i64 %25 ; 2 uses
  %i.vy = load float, ptr %i.vx, align 4, !tbaa !54
  %i.vz = tail call float @llvm.fmuladd.f32(float %i.tz, float %i.vw, float %i.vy)
  store float %i.vz, ptr %i.vx, align 4, !tbaa !54
  br label %stbtt__handle_clipped_edge.exit351.i.i.i

bb.cc:                                            ; preds = %bb.bw, %bb.bv
  br i1 %i.mu, label %.lr.ph.i.i98.i, label %stbtt__handle_clipped_edge.exit351.i.i.i

.lr.ph.i.i98.i:                                   ; preds = %bb.cc
  %i.wa = fsub float %i.sc, %i.nb
  %i.wb = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 20 ; 30 uses
  br label %bb.cd

bb.cd:                                            ; preds = %stbtt__handle_clipped_edge.exit379.i.i.i, %.lr.ph.i.i98.i
  %indvars.iv.i.i99.i = phi i64 [ 0, %.lr.ph.i.i98.i ], [ %indvars.iv.next.i.i100.i, %stbtt__handle_clipped_edge.exit379.i.i.i ] ; 32 uses
  %indvars.iv.next.i.i100.i = add nuw nsw i64 %indvars.iv.i.i99.i, 1 ; 3 uses
  %i.wc = trunc nuw nsw i64 %indvars.iv.next.i.i100.i to i32
  %i.wd = trunc nuw nsw i64 %indvars.iv.i.i99.i to i32
  %i.we = uitofp nneg i32 %i.wc to float          ; 60 uses
  %i.wf = uitofp nneg i32 %i.wd to float          ; 90 uses
  %i.wg = insertelement <2 x float> poison, float %i.wf, i64 0
  %i.wh = insertelement <2 x float> %i.wg, float %i.we, i64 1
  %i.wi = fsub <2 x float> %i.wh, %i.sm           ; 7 uses
  %i.wj = fdiv <2 x float> %i.wi, %i.sl           ; 2 uses
  %i.wk = extractelement <2 x float> %i.wj, i64 0
  %i.wl = fadd float %i.wk, %i.kj                 ; 52 uses
  %i.wm = extractelement <2 x float> %i.wj, i64 1
  %i.wn = fadd float %i.wm, %i.kj                 ; 52 uses
  %i.wo = fcmp olt float %i.nb, %i.wf             ; 2 uses
  %i.wp = fcmp ogt float %i.sc, %i.we             ; 2 uses
  %or.cond339.i.i.i = select i1 %i.wo, i1 %i.wp, i1 false
  br i1 %or.cond339.i.i.i, label %bb.ce, label %bb.dj

bb.ce:                                            ; preds = %bb.cd
  %i.wq = fcmp oeq float %i.wl, %i.kj
  br i1 %i.wq, label %stbtt__handle_clipped_edge.exit365.i.i.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.wr = load float, ptr %i.sg, align 4, !tbaa !853 ; 4 uses
  %i.ws = fcmp olt float %i.wr, %i.kj
  br i1 %i.ws, label %stbtt__handle_clipped_edge.exit365.i.i.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.wt = load float, ptr %i.sf, align 8, !tbaa !866 ; 4 uses
  %i.wu = fcmp olt float %i.wl, %i.wt
  br i1 %i.wu, label %stbtt__handle_clipped_edge.exit365.i.i.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.wv = fcmp ogt float %i.wt, %i.kj
  br i1 %i.wv, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.ww = fsub float %i.wt, %i.kj
  %i.wx = extractelement <2 x float> %i.wi, i64 0
  %i.wy = fmul float %i.wx, %i.ww
  %i.wz = fsub float %i.wl, %i.kj
  %i.xa = fdiv float %i.wy, %i.wz
  %i.xb = fadd float %i.nb, %i.xa
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %.055.i359.i.i.i = phi float [ %i.xb, %bb.ci ], [ %i.nb, %bb.ch ] ; 4 uses
  %.054.i360.i.i.i = phi float [ %i.wt, %bb.ci ], [ %i.kj, %bb.ch ] ; 3 uses
  %i.xc = fcmp ogt float %i.wl, %i.wr
  br i1 %i.xc, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.xd = fsub float %i.wf, %.055.i359.i.i.i
  %i.xe = fsub float %i.wr, %i.wl
  %i.xf = fmul float %i.xe, %i.xd
  %i.xg = fsub float %i.wl, %.054.i360.i.i.i
  %i.xh = fdiv float %i.xf, %i.xg
  %i.xi = fadd float %i.xh, %i.wf
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %.053.i361.i.i.i = phi float [ %i.xi, %bb.ck ], [ %i.wf, %bb.cj ] ; 3 uses
  %.0.i362.i.i.i = phi float [ %i.wr, %bb.ck ], [ %i.wl, %bb.cj ] ; 2 uses
  %i.xj = fcmp ugt float %.055.i359.i.i.i, %i.wf
  %i.xk = fcmp ugt float %.053.i361.i.i.i, %i.wf
  %or.cond.i363.i.i.i = select i1 %i.xj, i1 true, i1 %i.xk
  br i1 %or.cond.i363.i.i.i, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.xl = load float, ptr %i.wb, align 4, !tbaa !855
  %i.xm = fsub float %.0.i362.i.i.i, %.054.i360.i.i.i
  %i.xn = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %indvars.iv.i.i99.i ; 2 uses
  %i.xo = load float, ptr %i.xn, align 4, !tbaa !54
  %i.xp = tail call float @llvm.fmuladd.f32(float %i.xl, float %i.xm, float %i.xo)
  store float %i.xp, ptr %i.xn, align 4, !tbaa !54
  br label %stbtt__handle_clipped_edge.exit365.i.i.i

bb.cn:                                            ; preds = %bb.cl
  %i.xq = fcmp ult float %.055.i359.i.i.i, %i.we
  %i.xr = fcmp ult float %.053.i361.i.i.i, %i.we
  %or.cond62.i364.i.i.i = select i1 %i.xq, i1 true, i1 %i.xr
  br i1 %or.cond62.i364.i.i.i, label %bb.co, label %stbtt__handle_clipped_edge.exit365.i.i.i

bb.co:                                            ; preds = %bb.cn
  %i.xs = load float, ptr %i.wb, align 4, !tbaa !855
  %i.xt = fsub float %.0.i362.i.i.i, %.054.i360.i.i.i
  %i.xu = fmul float %i.xt, %i.xs
  %i.xv = fsub float %.055.i359.i.i.i, %i.wf
  %i.xw = fsub float %.053.i361.i.i.i, %i.wf
  %i.xx = fadd float %i.xv, %i.xw
  %i.xy = fmul float %i.xx, 5.000000e-01
  %i.xz = fsub float 1.000000e+00, %i.xy
  %i.ya = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %indvars.iv.i.i99.i ; 2 uses
  %i.yb = load float, ptr %i.ya, align 4, !tbaa !54
  %i.yc = tail call float @llvm.fmuladd.f32(float %i.xu, float %i.xz, float %i.yb)
  store float %i.yc, ptr %i.ya, align 4, !tbaa !54
  br label %stbtt__handle_clipped_edge.exit365.i.i.i

stbtt__handle_clipped_edge.exit365.i.i.i:         ; preds = %bb.co, %bb.cn, %bb.cm, %bb.cg, %bb.cf, %bb.ce
  %i.yd = fcmp oeq float %i.wl, %i.wn
  br i1 %i.yd, label %stbtt__handle_clipped_edge.exit372.i.i.i, label %bb.cp

bb.cp:                                            ; preds = %stbtt__handle_clipped_edge.exit365.i.i.i
  %i.ye = load float, ptr %i.sg, align 4, !tbaa !853 ; 4 uses
  %i.yf = fcmp ogt float %i.wl, %i.ye
  br i1 %i.yf, label %stbtt__handle_clipped_edge.exit372.i.i.i, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.yg = load float, ptr %i.sf, align 8, !tbaa !866 ; 4 uses
  %i.yh = fcmp olt float %i.wn, %i.yg
  br i1 %i.yh, label %stbtt__handle_clipped_edge.exit372.i.i.i, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.yi = fcmp olt float %i.wl, %i.yg
  br i1 %i.yi, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.yj = fsub nnan float %i.we, %i.wf
  %i.yk = fsub float %i.yg, %i.wl
  %i.yl = fmul float %i.yj, %i.yk
  %i.ym = fsub float %i.wn, %i.wl
  %i.yn = fdiv float %i.yl, %i.ym
  %i.yo = fadd float %i.yn, %i.wf
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %.055.i366.i.i.i = phi float [ %i.yo, %bb.cs ], [ %i.wf, %bb.cr ] ; 4 uses
  %.054.i367.i.i.i = phi float [ %i.yg, %bb.cs ], [ %i.wl, %bb.cr ] ; 3 uses
  %i.yp = fcmp ogt float %i.wn, %i.ye
  br i1 %i.yp, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.yq = fsub float %i.we, %.055.i366.i.i.i
  %i.yr = fsub float %i.ye, %i.wn
  %i.ys = fmul float %i.yr, %i.yq
  %i.yt = fsub float %i.wn, %.054.i367.i.i.i
  %i.yu = fdiv float %i.ys, %i.yt
  %i.yv = fadd float %i.yu, %i.we
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %.053.i368.i.i.i = phi float [ %i.yv, %bb.cu ], [ %i.we, %bb.ct ] ; 3 uses
  %.0.i369.i.i.i = phi float [ %i.ye, %bb.cu ], [ %i.wn, %bb.ct ] ; 2 uses
  %i.yw = fcmp ugt float %.055.i366.i.i.i, %i.wf
  %i.yx = fcmp ugt float %.053.i368.i.i.i, %i.wf
  %or.cond.i370.i.i.i = select i1 %i.yw, i1 true, i1 %i.yx
  br i1 %or.cond.i370.i.i.i, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.yy = load float, ptr %i.wb, align 4, !tbaa !855
  %i.yz = fsub float %.0.i369.i.i.i, %.054.i367.i.i.i
  %i.za = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %indvars.iv.i.i99.i ; 2 uses
  %i.zb = load float, ptr %i.za, align 4, !tbaa !54
  %i.zc = tail call float @llvm.fmuladd.f32(float %i.yy, float %i.yz, float %i.zb)
  store float %i.zc, ptr %i.za, align 4, !tbaa !54
  br label %stbtt__handle_clipped_edge.exit372.i.i.i

bb.cx:                                            ; preds = %bb.cv
  %i.zd = fcmp ult float %.055.i366.i.i.i, %i.we
  %i.ze = fcmp ult float %.053.i368.i.i.i, %i.we
  %or.cond62.i371.i.i.i = select i1 %i.zd, i1 true, i1 %i.ze
  br i1 %or.cond62.i371.i.i.i, label %bb.cy, label %stbtt__handle_clipped_edge.exit372.i.i.i

bb.cy:                                            ; preds = %bb.cx
  %i.zf = load float, ptr %i.wb, align 4, !tbaa !855
  %i.zg = fsub float %.0.i369.i.i.i, %.054.i367.i.i.i
  %i.zh = fmul float %i.zg, %i.zf
  %i.zi = fsub float %.055.i366.i.i.i, %i.wf
  %i.zj = fsub float %.053.i368.i.i.i, %i.wf
  %i.zk = fadd float %i.zi, %i.zj
  %i.zl = fmul float %i.zk, 5.000000e-01
  %i.zm = fsub float 1.000000e+00, %i.zl
  %i.zn = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %indvars.iv.i.i99.i ; 2 uses
  %i.zo = load float, ptr %i.zn, align 4, !tbaa !54
  %i.zp = tail call float @llvm.fmuladd.f32(float %i.zh, float %i.zm, float %i.zo)
  store float %i.zp, ptr %i.zn, align 4, !tbaa !54
  br label %stbtt__handle_clipped_edge.exit372.i.i.i

stbtt__handle_clipped_edge.exit372.i.i.i:         ; preds = %bb.cy, %bb.cx, %bb.cw, %bb.cq, %bb.cp, %stbtt__handle_clipped_edge.exit365.i.i.i
  %i.zq = fcmp oeq float %i.wn, %i.kk
  br i1 %i.zq, label %stbtt__handle_clipped_edge.exit379.i.i.i, label %bb.cz

bb.cz:                                            ; preds = %stbtt__handle_clipped_edge.exit372.i.i.i
  %i.zr = load float, ptr %i.sg, align 4, !tbaa !853 ; 4 uses
  %i.zs = fcmp ogt float %i.wn, %i.zr
end_hunk_2
begin_hunk_3_@stbtt_Rasterize:bb.a
  %i.apw = fcmp ult float %.055.i443.i.i.i, %i.we
  %i.apx = fcmp ult float %.053.i445.i.i.i, %i.we
  %or.cond62.i448.i.i.i = select i1 %i.apw, i1 true, i1 %i.apx
  br i1 %or.cond62.i448.i.i.i, label %bb.ho, label %stbtt__handle_clipped_edge.exit449.i.i.i

bb.ho:                                            ; preds = %bb.hn
  %i.apy = load float, ptr %i.wb, align 4, !tbaa !855
  %i.apz = fsub float %.0.i446.i.i.i, %.054.i444.i.i.i
  %i.aqa = fmul float %i.apz, %i.apy
  %i.aqb = fsub float %.055.i443.i.i.i, %i.wf
  %i.aqc = fsub float %.053.i445.i.i.i, %i.wf
  %i.aqd = fadd float %i.aqb, %i.aqc
  %i.aqe = fmul float %i.aqd, 5.000000e-01
  %i.aqf = fsub float 1.000000e+00, %i.aqe
  %i.aqg = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %indvars.iv.i.i99.i ; 2 uses
  %i.aqh = load float, ptr %i.aqg, align 4, !tbaa !54
  %i.aqi = tail call float @llvm.fmuladd.f32(float %i.aqa, float %i.aqf, float %i.aqh)
  store float %i.aqi, ptr %i.aqg, align 4, !tbaa !54
  br label %stbtt__handle_clipped_edge.exit449.i.i.i

stbtt__handle_clipped_edge.exit449.i.i.i:         ; preds = %bb.ho, %bb.hn, %bb.hm, %bb.hg, %bb.hf, %bb.he
  %i.aqj = fcmp oeq float %i.wn, %i.kk
  br i1 %i.aqj, label %stbtt__handle_clipped_edge.exit379.i.i.i, label %bb.hp

bb.hp:                                            ; preds = %stbtt__handle_clipped_edge.exit449.i.i.i
  %i.aqk = load float, ptr %i.sg, align 4, !tbaa !853 ; 4 uses
  %i.aql = fcmp ogt float %i.wn, %i.aqk
  br i1 %i.aql, label %stbtt__handle_clipped_edge.exit379.i.i.i, label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  %i.aqm = load float, ptr %i.sf, align 8, !tbaa !866 ; 4 uses
  %i.aqn = fcmp olt float %i.kk, %i.aqm
  br i1 %i.aqn, label %stbtt__handle_clipped_edge.exit379.i.i.i, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.aqo = fcmp olt float %i.wn, %i.aqm
  br i1 %i.aqo, label %bb.hs, label %bb.ht

bb.hs:                                            ; preds = %bb.hr
  %i.aqp = fsub float %i.sc, %i.we
  %i.aqq = fsub float %i.aqm, %i.wn
  %i.aqr = fmul float %i.aqp, %i.aqq
  %i.aqs = fsub float %i.kk, %i.wn
  %i.aqt = fdiv float %i.aqr, %i.aqs
  %i.aqu = fadd float %i.aqt, %i.we
  br label %bb.ht

bb.ht:                                            ; preds = %bb.hs, %bb.hr
  %.055.i450.i.i.i = phi float [ %i.aqu, %bb.hs ], [ %i.we, %bb.hr ] ; 4 uses
  %.054.i451.i.i.i = phi float [ %i.aqm, %bb.hs ], [ %i.wn, %bb.hr ] ; 3 uses
  %i.aqv = fcmp ogt float %i.kk, %i.aqk
  br i1 %i.aqv, label %bb.hu, label %bb.hv

bb.hu:                                            ; preds = %bb.ht
  %i.aqw = fsub float %i.sc, %.055.i450.i.i.i
  %i.aqx = fsub float %i.aqk, %i.kk
  %i.aqy = fmul float %i.aqx, %i.aqw
  %i.aqz = fsub float %i.kk, %.054.i451.i.i.i
  %i.ara = fdiv float %i.aqy, %i.aqz
  %i.arb = fadd float %i.sc, %i.ara
  br label %bb.hv

bb.hv:                                            ; preds = %bb.hu, %bb.ht
  %.053.i452.i.i.i = phi float [ %i.arb, %bb.hu ], [ %i.sc, %bb.ht ] ; 3 uses
  %.0.i453.i.i.i = phi float [ %i.aqk, %bb.hu ], [ %i.kk, %bb.ht ] ; 2 uses
  %i.arc = fcmp ugt float %.055.i450.i.i.i, %i.wf
  %i.ard = fcmp ugt float %.053.i452.i.i.i, %i.wf
  %or.cond.i454.i.i.i = select i1 %i.arc, i1 true, i1 %i.ard
  br i1 %or.cond.i454.i.i.i, label %bb.hx, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %i.are = load float, ptr %i.wb, align 4, !tbaa !855
  %i.arf = fsub float %.0.i453.i.i.i, %.054.i451.i.i.i
  %i.arg = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %indvars.iv.i.i99.i ; 2 uses
  %i.arh = load float, ptr %i.arg, align 4, !tbaa !54
  %i.ari = tail call float @llvm.fmuladd.f32(float %i.are, float %i.arf, float %i.arh)
  store float %i.ari, ptr %i.arg, align 4, !tbaa !54
  br label %stbtt__handle_clipped_edge.exit379.i.i.i

bb.hx:                                            ; preds = %bb.hv
  %i.arj = fcmp ult float %.055.i450.i.i.i, %i.we
  %i.ark = fcmp ult float %.053.i452.i.i.i, %i.we
  %or.cond62.i455.i.i.i = select i1 %i.arj, i1 true, i1 %i.ark
  br i1 %or.cond62.i455.i.i.i, label %bb.hy, label %stbtt__handle_clipped_edge.exit379.i.i.i

bb.hy:                                            ; preds = %bb.hx
  %i.arl = load float, ptr %i.wb, align 4, !tbaa !855
  %i.arm = fsub float %.0.i453.i.i.i, %.054.i451.i.i.i
  %i.arn = fmul float %i.arm, %i.arl
  %i.aro = fsub float %.055.i450.i.i.i, %i.wf
  %i.arp = fsub float %.053.i452.i.i.i, %i.wf
  %i.arq = fadd float %i.aro, %i.arp
  %i.arr = fmul float %i.arq, 5.000000e-01
  %i.ars = fsub float 1.000000e+00, %i.arr
  %i.art = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %indvars.iv.i.i99.i ; 2 uses
  %i.aru = load float, ptr %i.art, align 4, !tbaa !54
  %i.arv = tail call float @llvm.fmuladd.f32(float %i.arn, float %i.ars, float %i.aru)
  store float %i.arv, ptr %i.art, align 4, !tbaa !54
  br label %stbtt__handle_clipped_edge.exit379.i.i.i

bb.hz:                                            ; preds = %bb.hd
  br i1 %i.mv, label %stbtt__handle_clipped_edge.exit379.i.i.i, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  %i.arw = load float, ptr %i.sg, align 4, !tbaa !853 ; 4 uses
  %i.arx = fcmp olt float %i.arw, %i.kj
  br i1 %i.arx, label %stbtt__handle_clipped_edge.exit379.i.i.i, label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  %i.ary = load float, ptr %i.sf, align 8, !tbaa !866 ; 4 uses
  %i.arz = fcmp olt float %i.kk, %i.ary
  br i1 %i.arz, label %stbtt__handle_clipped_edge.exit379.i.i.i, label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  %i.asa = fcmp ogt float %i.ary, %i.kj           ; 2 uses
  %i.asb = fsub float %i.ary, %i.kj
  %i.asc = fmul float %i.wa, %i.asb
  %i.asd = fdiv float %i.asc, %i.mw
  %i.ase = fadd float %i.nb, %i.asd
  %.055.i457.i.i.i = select i1 %i.asa, float %i.ase, float %i.nb ; 4 uses
  %.054.i458.i.i.i = select i1 %i.asa, float %i.ary, float %i.kj ; 3 uses
  %i.asf = fcmp ogt float %i.kk, %i.arw
  br i1 %i.asf, label %bb.id, label %bb.ie

bb.id:                                            ; preds = %bb.ic
  %i.asg = fsub float %i.sc, %.055.i457.i.i.i
  %i.ash = fsub float %i.arw, %i.kk
  %i.asi = fmul float %i.ash, %i.asg
  %i.asj = fsub float %i.kk, %.054.i458.i.i.i
  %i.ask = fdiv float %i.asi, %i.asj
  %i.asl = fadd float %i.sc, %i.ask
  br label %bb.ie

bb.ie:                                            ; preds = %bb.id, %bb.ic
  %.053.i459.i.i.i = phi float [ %i.asl, %bb.id ], [ %i.sc, %bb.ic ] ; 3 uses
  %.0.i460.i.i.i = phi float [ %i.arw, %bb.id ], [ %i.kk, %bb.ic ] ; 2 uses
  %i.asm = fcmp ugt float %.055.i457.i.i.i, %i.wf
  %i.asn = fcmp ugt float %.053.i459.i.i.i, %i.wf
  %or.cond.i461.i.i.i = select i1 %i.asm, i1 true, i1 %i.asn
  br i1 %or.cond.i461.i.i.i, label %bb.ig, label %bb.if

bb.if:                                            ; preds = %bb.ie
  %i.aso = load float, ptr %i.wb, align 4, !tbaa !855
  %i.asp = fsub float %.0.i460.i.i.i, %.054.i458.i.i.i
  %i.asq = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %indvars.iv.i.i99.i ; 2 uses
  %i.asr = load float, ptr %i.asq, align 4, !tbaa !54
  %i.ass = tail call float @llvm.fmuladd.f32(float %i.aso, float %i.asp, float %i.asr)
  store float %i.ass, ptr %i.asq, align 4, !tbaa !54
  br label %stbtt__handle_clipped_edge.exit379.i.i.i

bb.ig:                                            ; preds = %bb.ie
  %i.ast = fcmp ult float %.055.i457.i.i.i, %i.we
  %i.asu = fcmp ult float %.053.i459.i.i.i, %i.we
  %or.cond62.i462.i.i.i = select i1 %i.ast, i1 true, i1 %i.asu
  br i1 %or.cond62.i462.i.i.i, label %bb.ih, label %stbtt__handle_clipped_edge.exit379.i.i.i

bb.ih:                                            ; preds = %bb.ig
  %i.asv = load float, ptr %i.wb, align 4, !tbaa !855
  %i.asw = fsub float %.0.i460.i.i.i, %.054.i458.i.i.i
  %i.asx = fmul float %i.asw, %i.asv
  %i.asy = fsub float %.055.i457.i.i.i, %i.wf
  %i.asz = fsub float %.053.i459.i.i.i, %i.wf
  %i.ata = fadd float %i.asy, %i.asz
  %i.atb = fmul float %i.ata, 5.000000e-01
  %i.atc = fsub float 1.000000e+00, %i.atb
  %i.atd = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %indvars.iv.i.i99.i ; 2 uses
  %i.ate = load float, ptr %i.atd, align 4, !tbaa !54
  %i.atf = tail call float @llvm.fmuladd.f32(float %i.asx, float %i.atc, float %i.ate)
  store float %i.atf, ptr %i.atd, align 4, !tbaa !54
  br label %stbtt__handle_clipped_edge.exit379.i.i.i

stbtt__handle_clipped_edge.exit379.i.i.i:         ; preds = %bb.ih, %bb.ig, %bb.if, %bb.ib, %bb.ia, %bb.hz, %bb.hy, %bb.hx, %bb.hw, %bb.hq, %bb.hp, %stbtt__handle_clipped_edge.exit449.i.i.i, %bb.hc, %bb.hb, %bb.ha, %bb.gu, %bb.gt, %stbtt__handle_clipped_edge.exit435.i.i.i, %bb.gg, %bb.gf, %bb.ge, %bb.fy, %bb.fx, %stbtt__handle_clipped_edge.exit421.i.i.i, %bb.fk, %bb.fj, %bb.fi, %bb.fc, %bb.fb, %stbtt__handle_clipped_edge.exit407.i.i.i, %bb.eo, %bb.en, %bb.em, %bb.eg, %bb.ef, %stbtt__handle_clipped_edge.exit393.i.i.i, %bb.di, %bb.dh, %bb.dg, %bb.da, %bb.cz, %stbtt__handle_clipped_edge.exit372.i.i.i
  %exitcond.not.i.i101.i = icmp eq i64 %indvars.iv.next.i.i100.i, %wide.trip.count.i.i96.i
  br i1 %exitcond.not.i.i101.i, label %stbtt__handle_clipped_edge.exit351.i.i.i, label %bb.cd, !llvm.loop !840

stbtt__handle_clipped_edge.exit351.i.i.i:         ; preds = %stbtt__handle_clipped_edge.exit379.i.i.i, %bb.cc, %._crit_edge.i.i.i, %bb.by, %bb.bu, %bb.bt, %bb.bs, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bb, %bb.ba, %bb.ap, %bb.an
  %i.atg = load ptr, ptr %.0293468.i.i.i, align 8, !tbaa !854 ; 2 uses
  %.not.i.i97.i = icmp eq ptr %i.atg, null
  br i1 %.not.i.i97.i, label %stbtt__fill_active_edges_new.exit.i.i, label %bb.am, !llvm.loop !841

stbtt__fill_active_edges_new.exit.i.i:            ; preds = %stbtt__handle_clipped_edge.exit351.i.i.i, %._crit_edge.i.i
  %i.ath = icmp sgt i32 %.pre145.i.i, 0
  br i1 %i.ath, label %.lr.ph124.i.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph124.i.i, %stbtt__fill_active_edges_new.exit.i.i
  %i.ati = phi i32 [ %.pre145.i.i, %stbtt__fill_active_edges_new.exit.i.i ], [ %i.aua, %.lr.ph124.i.i ]
  br i1 %.not93.i.i, label %._crit_edge127.i.i, label %.lr.ph126.i.i

.lr.ph124.i.i:                                    ; preds = %stbtt__fill_active_edges_new.exit.i.i, %.lr.ph124.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph124.i.i ], [ 0, %stbtt__fill_active_edges_new.exit.i.i ] ; 4 uses
  %.079123.i.i = phi float [ %i.atl, %.lr.ph124.i.i ], [ 0.000000e+00, %stbtt__fill_active_edges_new.exit.i.i ]
  %i.atj = getelementptr inbounds nuw [4 x i8], ptr %i.jt, i64 %indvars.iv.i.i
  %i.atk = load float, ptr %i.atj, align 4, !tbaa !54
  %i.atl = fadd float %.079123.i.i, %i.atk        ; 2 uses
  %i.atm = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %indvars.iv.i.i
  %i.atn = load float, ptr %i.atm, align 4, !tbaa !54
  %i.ato = fadd float %i.atn, %i.atl
  %i.atp = tail call float @llvm.fabs.f32(float %i.ato)
  %i.atq = tail call float @llvm.fmuladd.f32(float %i.atp, float 2.550000e+02, float 5.000000e-01)
  %i.atr = fptosi float %i.atq to i32
  %spec.store.select.i.i = tail call i32 @llvm.umin.i32(i32 %i.atr, i32 255)
  %i.ats = trunc nuw i32 %spec.store.select.i.i to i8
  %i.att = load ptr, ptr %i.kg, align 8, !tbaa !299
  %i.atu = load i32, ptr %i.kh, align 8, !tbaa !300
  %i.atv = mul nsw i32 %i.atu, %.078131.i.i
  %i.atw = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %i.atx = add nsw i32 %i.atv, %i.atw
  %i.aty = sext i32 %i.atx to i64
  %i.atz = getelementptr inbounds i8, ptr %i.att, i64 %i.aty
  store i8 %i.ats, ptr %i.atz, align 1, !tbaa !56
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.aua = load i32, ptr %0, align 8, !tbaa !297  ; 2 uses
  %i.aub = sext i32 %i.aua to i64
  %i.auc = icmp slt i64 %indvars.iv.next.i.i, %i.aub
  br i1 %i.auc, label %.lr.ph124.i.i, label %.preheader.i.i, !llvm.loop !842

.lr.ph126.i.i:                                    ; preds = %.preheader.i.i, %.lr.ph126.i.i
  %i.aud = phi ptr [ %i.auh, %.lr.ph126.i.i ], [ %.0..0..0..0..0..0..0..0.84.i.i, %.preheader.i.i ] ; 2 uses
  %i.aue = getelementptr inbounds nuw i8, ptr %i.aud, i64 8 ; 2 uses
  %i.auf = load <2 x float>, ptr %i.aue, align 8, !tbaa !54
  %i.aug = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.auf)
  store float %i.aug, ptr %i.aue, align 8, !tbaa !864
  %i.auh = load ptr, ptr %i.aud, align 8, !tbaa !851 ; 2 uses
  %.not94.i.i = icmp eq ptr %i.auh, null
  br i1 %.not94.i.i, label %._crit_edge127.i.i, label %.lr.ph126.i.i, !llvm.loop !843

._crit_edge127.i.i:                               ; preds = %.lr.ph126.i.i, %.preheader.i.i
  %i.aui = add nsw i32 %.077132.i.i, 1
  %i.auj = add nuw nsw i32 %.078131.i.i, 1        ; 2 uses
  %i.auk = load i32, ptr %i.ju, align 4, !tbaa !298
  %i.aul = icmp slt i32 %i.auj, %i.auk
  br i1 %i.aul, label %bb.z, label %._crit_edge136.i.i, !llvm.loop !844

._crit_edge136.i.i:                               ; preds = %._crit_edge127.i.i
  %.not1.i.i.i = icmp eq ptr %.sroa.0.1.lcssa.i.i, null
  br i1 %.not1.i.i.i, label %stbtt__hheap_cleanup.exit.i.i, label %.lr.ph.i100.i.i

.lr.ph.i100.i.i:                                  ; preds = %._crit_edge136.i.i
  %i.aum = getelementptr i8, ptr %11, i64 16
  br label %bb.ii

bb.ii:                                            ; preds = %bb.ii, %.lr.ph.i100.i.i
  %.02.i.i.i = phi ptr [ %.sroa.0.1.lcssa.i.i, %.lr.ph.i100.i.i ], [ %i.aun, %bb.ii ] ; 2 uses
  %i.aun = load ptr, ptr %.02.i.i.i, align 8, !tbaa !859 ; 2 uses
  %.val.i.i.i = load ptr, ptr %11, align 8
  %.val6.i.i.i = load ptr, ptr %i.aum, align 8, !tbaa !278
  tail call void %.val6.i.i.i(ptr %.val.i.i.i, ptr noundef nonnull %.02.i.i.i) #50, !inline_history !845
  %.not.i101.i.i = icmp eq ptr %i.aun, null
  br i1 %.not.i101.i.i, label %stbtt__hheap_cleanup.exit.i.i, label %bb.ii, !llvm.loop !846

stbtt__hheap_cleanup.exit.i.i:                    ; preds = %bb.ii, %._crit_edge136.i.i, %bb.y
  %.not.i.i = icmp eq ptr %.082.i.i, %i.b
  br i1 %.not.i.i, label %stbtt__rasterize_sorted_edges.exit.i, label %bb.ij

bb.ij:                                            ; preds = %stbtt__hheap_cleanup.exit.i.i
  %.val97.i.i = load ptr, ptr %11, align 8
  %i.auo = getelementptr i8, ptr %11, i64 16
  %.val98.i.i = load ptr, ptr %i.auo, align 8, !tbaa !278
  call void %.val98.i.i(ptr %.val97.i.i, ptr noundef %.082.i.i) #50, !inline_history !847
  br label %stbtt__rasterize_sorted_edges.exit.i

stbtt__rasterize_sorted_edges.exit.i:             ; preds = %bb.ij, %stbtt__hheap_cleanup.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.val94.i = load ptr, ptr %11, align 8
  %i.aup = getelementptr i8, ptr %11, i64 16
  %.val95.i = load ptr, ptr %i.aup, align 8, !tbaa !278
  call void %.val95.i(ptr %.val94.i, ptr noundef nonnull %i.fx) #50, !inline_history !848
  br label %stbtt__rasterize.exit

stbtt__rasterize.exit:                            ; preds = %._crit_edge.loopexit.i, %stbtt__rasterize_sorted_edges.exit.i
  %.val23 = load ptr, ptr %11, align 8
  %i.auq = getelementptr i8, ptr %11, i64 16      ; 2 uses
  %.val24 = load ptr, ptr %i.auq, align 8, !tbaa !278
  call void %.val24(ptr %.val23, ptr noundef nonnull %i.bf) #50, !inline_history !16
  %.val = load ptr, ptr %11, align 8
  %.val22 = load ptr, ptr %i.auq, align 8, !tbaa !278
  call void %.val22(ptr %.val, ptr noundef nonnull %i.dc) #50, !inline_history !16
  br label %bb.ik

bb.ik:                                            ; preds = %stbtt_FlattenCurves.exit.thread, %stbtt__rasterize.exit
  ret void
}

; Function Attrs: nounwind uwtable
define void @stbtt_FreeBitmap(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #17 {
bb.a:
  %.val = load ptr, ptr %1, align 8
  %i.a = getelementptr i8, ptr %1, i64 16
  %.val2 = load ptr, ptr %i.a, align 8, !tbaa !278
  tail call void %.val2(ptr %.val, ptr noundef %0) #50, !inline_history !16
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @stbtt_GetGlyphBitmapSubpixel(ptr nofree noundef readonly captures(none) %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, i32 noundef %5, ptr nofree noundef writeonly captures(address_is_null) %6, ptr nofree noundef writeonly captures(address_is_null) %7, ptr nofree noundef writeonly captures(address_is_null) %8, ptr nofree noundef writeonly captures(address_is_null) %9) local_unnamed_addr #17 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %10 = alloca %struct.stbtt__bitmap, align 8     ; 7 uses
  %i.e = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #50
  %i.f = call i32 @stbtt_GetGlyphShape(ptr noundef %0, i32 noundef %5, ptr noundef nonnull %i.e)
  %i.g = insertelement <2 x float> poison, float %1, i64 0
  %i.h = insertelement <2 x float> %i.g, float %2, i64 1 ; 3 uses
  %i.i = fcmp une <2 x float> %i.h, zeroinitializer ; 2 uses
  %i.j = bitcast <2 x i1> %i.i to i2
  %brmerge.not = icmp eq i2 %i.j, 0
  %i.k = shufflevector <2 x float> %i.h, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.l = select <2 x i1> %i.i, <2 x float> %i.h, <2 x float> %i.k ; 4 uses
  br i1 %brmerge.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !73
  %i.n = load ptr, ptr %0, align 8, !tbaa !271    ; 2 uses
  %.val49 = load ptr, ptr %i.n, align 8
  %i.o = getelementptr i8, ptr %i.n, i64 16
  %.val50 = load ptr, ptr %i.o, align 8, !tbaa !278
  tail call void %.val50(ptr %.val49, ptr noundef %i.m) #50, !inline_history !16
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #50
  store i32 0, ptr %i.a, align 4, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #50
  store i32 0, ptr %i.b, align 4, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #50
  %i.p = call i32 @stbtt_GetGlyphBox(ptr noundef readonly %0, i32 noundef %5, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d)
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %stbtt_GetGlyphBitmapBoxSubpixel.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load i32, ptr %i.a, align 4, !tbaa !55
  %i.r = load i32, ptr %i.d, align 4, !tbaa !55
  %i.s = sub nsw i32 0, %i.r
  %i.t = load i32, ptr %i.c, align 4, !tbaa !55
  %i.u = load i32, ptr %i.b, align 4, !tbaa !55
  %i.v = sub nsw i32 0, %i.u
  %i.w = insertelement <2 x i32> poison, i32 %i.q, i64 0
  %i.x = insertelement <2 x i32> %i.w, i32 %i.s, i64 1
  %i.y = sitofp <2 x i32> %i.x to <2 x float>
  %i.z = insertelement <2 x float> poison, float %3, i64 0
  %i.aa = insertelement <2 x float> %i.z, float %4, i64 1 ; 2 uses
  %i.ab = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.y, <2 x float> %i.l, <2 x float> %i.aa)
  %i.ac = call <2 x float> @llvm.floor.v2f32(<2 x float> %i.ab)
  %i.ad = insertelement <2 x i32> poison, i32 %i.t, i64 0
  %i.ae = insertelement <2 x i32> %i.ad, i32 %i.v, i64 1
  %i.af = sitofp <2 x i32> %i.ae to <2 x float>
  %i.ag = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.af, <2 x float> %i.l, <2 x float> %i.aa)
  %i.ah = call <2 x float> @llvm.ceil.v2f32(<2 x float> %i.ag)
  %i.ai = shufflevector <2 x float> %i.ah, <2 x float> %i.ac, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.aj = fptosi <4 x float> %i.ai to <4 x i32>
  br label %stbtt_GetGlyphBitmapBoxSubpixel.exit

stbtt_GetGlyphBitmapBoxSubpixel.exit:             ; preds = %bb.c, %bb.d
  %i.ak = phi <4 x i32> [ %i.aj, %bb.d ], [ zeroinitializer, %bb.c ] ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  %i.al = shufflevector <4 x i32> %i.ak, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %i.am = shufflevector <4 x i32> %i.ak, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %i.an = sub nsw <2 x i32> %i.al, %i.am          ; 2 uses
  %i.ao = extractelement <2 x i32> %i.an, i64 1   ; 3 uses
  %i.ap = extractelement <2 x i32> %i.an, i64 0   ; 4 uses
  store i32 %i.ap, ptr %10, align 8, !tbaa !297
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 4
  store i32 %i.ao, ptr %i.aq, align 4, !tbaa !298
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 16
  %.not = icmp eq ptr %6, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %stbtt_GetGlyphBitmapBoxSubpixel.exit
  store i32 %i.ap, ptr %6, align 4, !tbaa !55
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %stbtt_GetGlyphBitmapBoxSubpixel.exit
  %.not42 = icmp eq ptr %7, null
  br i1 %.not42, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 %i.ao, ptr %7, align 4, !tbaa !55
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.not43 = icmp eq ptr %8, null
  br i1 %.not43, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = extractelement <4 x i32> %i.ak, i64 2
  store i32 %i.as, ptr %8, align 4, !tbaa !55
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.not44 = icmp eq ptr %9, null
  br i1 %.not44, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
end_hunk_3
begin_hunk_4_@nk_property_save:bb.a
  %i.cf = icmp eq i32 %.011.i63, 3
  br i1 %i.cf, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i8 0, ptr %.0.i64, align 1, !tbaa !56
  br label %.preheader77.i.preheader

.preheader77.i.preheader:                         ; preds = %.preheader111, %bb.n
  br label %.preheader77.i

bb.o:                                             ; preds = %bb.m
  %i.cg = icmp sgt i32 %.011.i63, 0
  %i.ch = zext i1 %i.cg to i32
  %spec.select.i69 = add nuw nsw i32 %.011.i63, %i.ch
  br label %.backedge.i65

.preheader77.i:                                   ; preds = %.preheader77.i.preheader, %bb.p
  %.051.i = phi ptr [ %i.cj, %bb.p ], [ %1, %.preheader77.i.preheader ] ; 4 uses
  %i.ci = load i8, ptr %.051.i, align 1, !tbaa !56
  switch i8 %i.ci, label %.loopexit.i71 [
    i8 32, label %bb.p
    i8 45, label %bb.q
  ]

bb.p:                                             ; preds = %.preheader77.i
  %i.cj = getelementptr inbounds nuw i8, ptr %.051.i, i64 1
  br label %.preheader77.i, !llvm.loop !2

bb.q:                                             ; preds = %.preheader77.i
  %i.ck = getelementptr inbounds nuw i8, ptr %.051.i, i64 1
  br label %.loopexit.i71

.loopexit.i71:                                    ; preds = %.preheader77.i, %bb.q
  %.056.i = phi double [ -1.000000e+00, %bb.q ], [ 1.000000e+00, %.preheader77.i ]
  %.152.i = phi ptr [ %i.ck, %bb.q ], [ %.051.i, %.preheader77.i ]
  br label %bb.r

bb.r:                                             ; preds = %bb.s, %.loopexit.i71
  %.253.i = phi ptr [ %.152.i, %.loopexit.i71 ], [ %i.cq, %bb.s ] ; 5 uses
  %.050.i = phi double [ 0.000000e+00, %.loopexit.i71 ], [ %i.cp, %bb.s ] ; 4 uses
  %i.cl = load i8, ptr %.253.i, align 1, !tbaa !56 ; 4 uses
  switch i8 %i.cl, label %bb.s [
    i8 46, label %.preheader76.i
    i8 0, label %.critedge2.i
    i8 101, label %.critedge2.i
  ]

bb.s:                                             ; preds = %bb.r
  %i.cm = sext i8 %i.cl to i32
  %i.cn = add nsw i32 %i.cm, -48
  %i.co = sitofp i32 %i.cn to double
  %i.cp = tail call double @llvm.fmuladd.f64(double %.050.i, double 1.000000e+01, double %i.co)
  %i.cq = getelementptr inbounds nuw i8, ptr %.253.i, i64 1
  br label %bb.r, !llvm.loop !3

.preheader76.i:                                   ; preds = %bb.r, %bb.t
  %.057.i = phi double [ %i.cw, %bb.t ], [ 1.000000e-01, %bb.r ] ; 2 uses
  %.253.pn.i = phi ptr [ %.354.i, %bb.t ], [ %.253.i, %bb.r ]
  %.1.i74 = phi double [ %i.cv, %bb.t ], [ %.050.i, %bb.r ] ; 3 uses
  %.354.i = getelementptr inbounds nuw i8, ptr %.253.pn.i, i64 1 ; 4 uses
  %i.cr = load i8, ptr %.354.i, align 1, !tbaa !56 ; 4 uses
  switch i8 %i.cr, label %bb.t [
    i8 0, label %.critedge2.i
    i8 101, label %.critedge2.i
  ]

bb.t:                                             ; preds = %.preheader76.i
  %i.cs = sext i8 %i.cr to i32
  %i.ct = add nsw i32 %i.cs, -48
  %i.cu = sitofp i32 %i.ct to double
  %i.cv = tail call double @llvm.fmuladd.f64(double %i.cu, double %.057.i, double %.1.i74)
  %i.cw = fmul double %.057.i, 1.000000e-01
  br label %.preheader76.i, !llvm.loop !4

.critedge2.i:                                     ; preds = %bb.r, %bb.r, %.preheader76.i, %.preheader76.i
  %i.cx = phi i8 [ %i.cr, %.preheader76.i ], [ %i.cr, %.preheader76.i ], [ %i.cl, %bb.r ], [ %i.cl, %bb.r ]
  %.455.i = phi ptr [ %.354.i, %.preheader76.i ], [ %.354.i, %.preheader76.i ], [ %.253.i, %bb.r ], [ %.253.i, %bb.r ] ; 2 uses
  %.2.i = phi double [ %.1.i74, %.preheader76.i ], [ %.1.i74, %.preheader76.i ], [ %.050.i, %bb.r ], [ %.050.i, %bb.r ] ; 3 uses
  %i.cy = icmp eq i8 %i.cx, 101
  br i1 %i.cy, label %bb.u, label %nk_strtod.exit

bb.u:                                             ; preds = %.critedge2.i
  %i.cz = getelementptr inbounds nuw i8, ptr %.455.i, i64 1 ; 2 uses
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !56  ; 2 uses
  %.not74.i = icmp eq i8 %i.da, 45                ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.455.i, i64 2
  %i.dc = icmp eq i8 %i.da, 43
  %i.dd = or i1 %.not74.i, %i.dc
  %.5.i = select i1 %i.dd, ptr %i.db, ptr %i.cz   ; 2 uses
  %i.de = load i8, ptr %.5.i, align 1, !tbaa !56  ; 2 uses
  %.not7281.i = icmp eq i8 %i.de, 0
  br i1 %.not7281.i, label %._crit_edge.i, label %.lr.ph.i72

.preheader.i73:                                   ; preds = %.lr.ph.i72
  %i.df = icmp sgt i32 %i.dp, 0
  br i1 %i.df, label %.lr.ph87.i.preheader, label %._crit_edge.i

.lr.ph87.i.preheader:                             ; preds = %.preheader.i73
  %i.dg = mul i32 %.04883.i, 10
  %i.dh = add i32 %i.dg, -49
  %i.di = sext i8 %i.dl to i32
  %i.dj = add i32 %i.dh, %i.di
  %xtraiter = and i32 %i.dp, 7                    ; 3 uses
  %i.dk = icmp ult i32 %i.dj, 7
  br i1 %i.dk, label %.lr.ph87.i.epil.preheader, label %.lr.ph87.i.preheader.new

.lr.ph87.i.preheader.new:                         ; preds = %.lr.ph87.i.preheader
  %unroll_iter = and i32 %i.dp, 2147483640
  br label %.lr.ph87.i

.lr.ph.i72:                                       ; preds = %bb.u, %.lr.ph.i72
  %i.dl = phi i8 [ %i.dr, %.lr.ph.i72 ], [ %i.de, %bb.u ] ; 2 uses
  %.04883.i = phi i32 [ %i.dp, %.lr.ph.i72 ], [ 0, %bb.u ] ; 2 uses
  %.682.i = phi ptr [ %i.dq, %.lr.ph.i72 ], [ %.5.i, %bb.u ]
  %i.dm = mul nsw i32 %.04883.i, 10
  %i.dn = sext i8 %i.dl to i32
  %i.do = add nsw i32 %i.dn, -48
  %i.dp = add i32 %i.do, %i.dm                    ; 4 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.682.i, i64 1 ; 2 uses
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !56  ; 2 uses
  %.not72.i = icmp eq i8 %i.dr, 0
  br i1 %.not72.i, label %.preheader.i73, label %.lr.ph.i72, !llvm.loop !5

.lr.ph87.i:                                       ; preds = %.lr.ph87.i, %.lr.ph87.i.preheader.new
  %.15885.i = phi double [ 1.000000e+00, %.lr.ph87.i.preheader.new ], [ %i.dz, %.lr.ph87.i ]
  %niter = phi i32 [ 0, %.lr.ph87.i.preheader.new ], [ %niter.next.7, %.lr.ph87.i ]
  %i.ds = fmul double %.15885.i, 1.000000e+01
  %i.dt = fmul double %i.ds, 1.000000e+01
  %i.du = fmul double %i.dt, 1.000000e+01
  %i.dv = fmul double %i.du, 1.000000e+01
  %i.dw = fmul double %i.dv, 1.000000e+01
  %i.dx = fmul double %i.dw, 1.000000e+01
  %i.dy = fmul double %i.dx, 1.000000e+01
  %i.dz = fmul double %i.dy, 1.000000e+01         ; 3 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph87.i, !llvm.loop !6

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph87.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph87.i.epil.preheader

.lr.ph87.i.epil.preheader:                        ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph87.i.preheader
  %.15885.i.epil.init = phi double [ 1.000000e+00, %.lr.ph87.i.preheader ], [ %i.dz, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod230 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod230)
  br label %.lr.ph87.i.epil

.lr.ph87.i.epil:                                  ; preds = %.lr.ph87.i.epil, %.lr.ph87.i.epil.preheader
  %.15885.i.epil = phi double [ %i.ea, %.lr.ph87.i.epil ], [ %.15885.i.epil.init, %.lr.ph87.i.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph87.i.epil ], [ 0, %.lr.ph87.i.epil.preheader ]
  %i.ea = fmul double %.15885.i.epil, 1.000000e+01 ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %.lr.ph87.i.epil, !llvm.loop !1275

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph87.i.epil, %.preheader.i73, %bb.u
  %.158.lcssa.i = phi double [ 1.000000e+00, %.preheader.i73 ], [ 1.000000e+00, %bb.u ], [ %i.dz, %._crit_edge.i.loopexit.unr-lcssa ], [ %i.ea, %.lr.ph87.i.epil ] ; 2 uses
  %i.eb = fdiv double %.2.i, %.158.lcssa.i
  %i.ec = fmul double %.2.i, %.158.lcssa.i
  %.3.i = select i1 %.not74.i, double %i.eb, double %i.ec
  br label %nk_strtod.exit

nk_strtod.exit:                                   ; preds = %.critedge2.i, %._crit_edge.i
  %.4.i = phi double [ %.3.i, %._crit_edge.i ], [ %.2.i, %.critedge2.i ]
  %i.ed = fmul double %.056.i, %.4.i              ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !56 ; 2 uses
  %i.eh = fcmp olt double %i.ed, %i.eg
  %.60 = select i1 %i.eh, double %i.ed, double %i.eg ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !56 ; 2 uses
  %i.ek = fcmp olt double %.60, %i.ej
  %i.el = select i1 %i.ek, double %i.ej, double %.60
  store double %i.el, ptr %i.ee, align 8, !tbaa !56
  br label %bb.v

bb.v:                                             ; preds = %bb.a, %nk_strtod.exit, %nk_strtod.exit108, %nk_strtoi.exit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef nonnull ptr @nk_dtoa(ptr nofree noundef nonnull returned captures(ret: address, provenance) %0, double noundef %1) unnamed_addr #45 {
bb.a:
  %i.a = fcmp oeq double %1, 0.000000e+00
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 48, ptr %0, align 1, !tbaa !56
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.b, align 1, !tbaa !56
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.c = fcmp olt double %1, 0.000000e+00         ; 3 uses
  %i.d = fneg double %1
  %.086 = select i1 %i.c, double %i.d, double %1  ; 3 uses
  %.in.i = tail call double @llvm.fabs.f64(double %1)
  %i.e = fptosi double %.in.i to i32              ; 2 uses
  %2 = icmp samesign ugt i32 %i.e, 9
  br i1 %2, label %.lr.ph.i, label %nk_log10.exit

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.014.i = phi i32 [ %i.g, %.lr.ph.i ], [ 0, %bb.c ]
  %.0913.i = phi i32 [ %i.f, %.lr.ph.i ], [ %i.e, %bb.c ] ; 2 uses
  %i.f = udiv i32 %.0913.i, 10
  %i.g = add nuw nsw i32 %.014.i, 1               ; 2 uses
  %i.h = icmp samesign ugt i32 %.0913.i, 99
  br i1 %i.h, label %.lr.ph.i, label %nk_log10.exit, !llvm.loop !1276

nk_log10.exit:                                    ; preds = %.lr.ph.i, %bb.c
  %.0.lcssa.i = phi i32 [ 0, %bb.c ], [ %i.g, %.lr.ph.i ] ; 2 uses
  %i.i = fcmp olt double %.086, 0.000000e+00
  %i.j = sub nsw i32 0, %.0.lcssa.i
  %spec.select.i = select i1 %i.i, i32 %i.j, i32 %.0.lcssa.i ; 5 uses
  %i.k = icmp sgt i32 %spec.select.i, 8
  %or.cond = and i1 %i.c, %i.k
  %i.l = add i32 %spec.select.i, -14
  %i.m = icmp ult i32 %i.l, -22
  %i.n = or i1 %i.m, %or.cond                     ; 2 uses
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %nk_log10.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 45, ptr %0, align 1, !tbaa !56
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %nk_log10.exit
  %.078 = phi ptr [ %i.o, %bb.d ], [ %0, %nk_log10.exit ]
  br i1 %i.n, label %.lr.ph.preheader.i, label %bb.f

.lr.ph.preheader.i:                               ; preds = %bb.e
  %spec.select.i.lobit = ashr i32 %spec.select.i, 31
  %spec.select = add nsw i32 %spec.select.i.lobit, %spec.select.i ; 3 uses
  %i.p = tail call i32 @llvm.abs.i32(i32 %spec.select, i1 true)
  br label %.lr.ph.i97

.lr.ph.i97:                                       ; preds = %.lr.ph.i97, %.lr.ph.preheader.i
  %.019.i = phi double [ %.1.i, %.lr.ph.i97 ], [ 1.000000e+00, %.lr.ph.preheader.i ] ; 2 uses
  %.01318.i = phi i32 [ %i.s, %.lr.ph.i97 ], [ %i.p, %.lr.ph.preheader.i ] ; 2 uses
  %.01417.i = phi double [ %i.t, %.lr.ph.i97 ], [ 1.000000e+01, %.lr.ph.preheader.i ] ; 3 uses
  %i.q = and i32 %.01318.i, 1
  %.not15.i = icmp eq i32 %i.q, 0
  %i.r = fmul double %.019.i, %.01417.i
  %.1.i = select i1 %.not15.i, double %.019.i, double %i.r ; 3 uses
  %i.s = lshr i32 %.01318.i, 1                    ; 2 uses
  %i.t = fmul double %.01417.i, %.01417.i
  %.not.i = icmp eq i32 %i.s, 0
  br i1 %.not.i, label %nk_pow.exit, label %.lr.ph.i97, !llvm.loop !1277

nk_pow.exit:                                      ; preds = %.lr.ph.i97
  %i.u = fdiv double 1.000000e+00, %.1.i
  %i.v = icmp slt i32 %spec.select, 0
  %i.w = select i1 %i.v, double %i.u, double %.1.i
  %i.x = fdiv double %.086, %i.w
  br label %bb.f

bb.f:                                             ; preds = %nk_pow.exit, %bb.e
  %.187 = phi double [ %i.x, %nk_pow.exit ], [ %.086, %bb.e ]
  %.183 = phi i32 [ 0, %nk_pow.exit ], [ %spec.select.i, %bb.e ]
  %.079 = phi i32 [ %spec.select, %nk_pow.exit ], [ 0, %bb.e ] ; 4 uses
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %.183, i32 0)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.k
  %.1112 = phi ptr [ %.078, %bb.f ], [ %.3, %bb.k ] ; 3 uses
  %.284111 = phi i32 [ %spec.store.select, %bb.f ], [ %i.at, %bb.k ] ; 5 uses
  %.288110 = phi double [ %.187, %bb.f ], [ %.389, %bb.k ] ; 3 uses
  %.not16.i99 = icmp eq i32 %.284111, 0           ; 2 uses
  br i1 %.not16.i99, label %nk_pow.exit109, label %.lr.ph.preheader.i100

.lr.ph.preheader.i100:                            ; preds = %bb.g
  %i.y = tail call i32 @llvm.abs.i32(i32 %.284111, i1 true)
  br label %.lr.ph.i101

.lr.ph.i101:                                      ; preds = %.lr.ph.i101, %.lr.ph.preheader.i100
  %.019.i102 = phi double [ %.1.i106, %.lr.ph.i101 ], [ 1.000000e+00, %.lr.ph.preheader.i100 ] ; 2 uses
  %.01318.i103 = phi i32 [ %i.ab, %.lr.ph.i101 ], [ %i.y, %.lr.ph.preheader.i100 ] ; 2 uses
  %.01417.i104 = phi double [ %i.ac, %.lr.ph.i101 ], [ 1.000000e+01, %.lr.ph.preheader.i100 ] ; 3 uses
  %i.z = and i32 %.01318.i103, 1
  %.not15.i105 = icmp eq i32 %i.z, 0
  %i.aa = fmul double %.019.i102, %.01417.i104
  %.1.i106 = select i1 %.not15.i105, double %.019.i102, double %i.aa ; 2 uses
  %i.ab = lshr i32 %.01318.i103, 1                ; 2 uses
  %i.ac = fmul double %.01417.i104, %.01417.i104
  %.not.i107 = icmp eq i32 %i.ab, 0
  br i1 %.not.i107, label %nk_pow.exit109, label %.lr.ph.i101, !llvm.loop !1277

nk_pow.exit109:                                   ; preds = %.lr.ph.i101, %bb.g
  %.0.lcssa.i108 = phi double [ 1.000000e+00, %bb.g ], [ %.1.i106, %.lr.ph.i101 ] ; 2 uses
  %i.ad = fdiv double 1.000000e+00, %.0.lcssa.i108
  %i.ae = icmp slt i32 %.284111, 0
  %i.af = select i1 %i.ae, double %i.ad, double %.0.lcssa.i108 ; 3 uses
  %i.ag = fcmp ogt double %i.af, 0.000000e+00
  br i1 %i.ag, label %bb.h, label %bb.i

bb.h:                                             ; preds = %nk_pow.exit109
  %i.ah = fdiv double %.288110, %i.af             ; 2 uses
  %i.ai = fptosi double %i.ah to i32
  %i.aj = fcmp olt double %i.ah, 0.000000e+00
  %.neg.i = sext i1 %i.aj to i32
  %i.ak = add i32 %.neg.i, %i.ai                  ; 2 uses
  %i.al = sitofp i32 %i.ak to double
  %i.am = fneg double %i.al
  %i.an = tail call double @llvm.fmuladd.f64(double %i.am, double %i.af, double %.288110)
  %i.ao = trunc i32 %i.ak to i8
  %i.ap = add i8 %i.ao, 48
  %i.aq = getelementptr inbounds nuw i8, ptr %.1112, i64 1
  store i8 %i.ap, ptr %.1112, align 1, !tbaa !56
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %nk_pow.exit109
  %.389 = phi double [ %i.an, %bb.h ], [ %.288110, %nk_pow.exit109 ] ; 3 uses
  %.2 = phi ptr [ %i.aq, %bb.h ], [ %.1112, %nk_pow.exit109 ] ; 3 uses
  %i.ar = fcmp ogt double %.389, 0.000000e+00
  %or.cond3 = select i1 %.not16.i99, i1 %i.ar, i1 false
  br i1 %or.cond3, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %.2, i64 1
  store i8 46, ptr %.2, align 1, !tbaa !56
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.3 = phi ptr [ %i.as, %bb.j ], [ %.2, %bb.i ]  ; 6 uses
  %i.at = add nsw i32 %.284111, -1
  %i.au = fcmp ogt double %.389, f0x3D06849B86A12B9B
  %i.av = icmp sgt i32 %.284111, 0
  %i.aw = or i1 %i.au, %i.av
  br i1 %i.aw, label %bb.g, label %bb.l, !llvm.loop !1278

bb.l:                                             ; preds = %bb.k
  br i1 %i.n, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %.3, i64 1 ; 2 uses
  store i8 101, ptr %.3, align 1, !tbaa !56
  %i.ay = icmp sgt i32 %.079, 0
  br i1 %i.ay, label %.thread, label %bb.n

.thread:                                          ; preds = %bb.m
  store i8 43, ptr %i.ax, align 1, !tbaa !56
  %.4133 = getelementptr inbounds nuw i8, ptr %.3, i64 2
  br label %.lr.ph.preheader

bb.n:                                             ; preds = %bb.m
  %i.az = sub nsw i32 0, %.079
  store i8 45, ptr %i.ax, align 1, !tbaa !56
  %.4 = getelementptr inbounds nuw i8, ptr %.3, i64 2 ; 2 uses
  %.not140 = icmp eq i32 %.079, 0
  br i1 %.not140, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.thread, %bb.n
  %.5115.ph = phi ptr [ %.4, %bb.n ], [ %.4133, %.thread ]
  %.281114.ph = phi i32 [ %i.az, %bb.n ], [ %.079, %.thread ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.5115 = phi ptr [ %i.bd, %.lr.ph ], [ %.5115.ph, %.lr.ph.preheader ] ; 2 uses
  %.281114 = phi i32 [ %i.be, %.lr.ph ], [ %.281114.ph, %.lr.ph.preheader ] ; 3 uses
  %.385113 = phi i32 [ %i.bf, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.ba = urem i32 %.281114, 10
  %i.bb = trunc nuw nsw i32 %i.ba to i8
  %i.bc = or disjoint i8 %i.bb, 48
  %i.bd = getelementptr inbounds nuw i8, ptr %.5115, i64 1 ; 4 uses
  store i8 %i.bc, ptr %.5115, align 1, !tbaa !56
  %i.be = udiv i32 %.281114, 10
  %i.bf = add nuw nsw i32 %.385113, 1             ; 2 uses
  %.not = icmp samesign ult i32 %.281114, 10
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1279

._crit_edge:                                      ; preds = %.lr.ph
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = sub nsw i64 0, %i.bg
  %i.bi = getelementptr inbounds i8, ptr %i.bd, i64 %i.bh ; 2 uses
  %.not141 = icmp eq i32 %.385113, 0
  br i1 %.not141, label %.loopexit, label %.lr.ph121.preheader

.lr.ph121.preheader:                              ; preds = %._crit_edge
  %i.bj = zext nneg i32 %.385113 to i64
  br label %.lr.ph121

.lr.ph121:                                        ; preds = %.lr.ph121.preheader, %.lr.ph121
  %indvars.iv124 = phi i64 [ 0, %.lr.ph121.preheader ], [ %indvars.iv.next125, %.lr.ph121 ] ; 2 uses
  %indvars.iv = phi i64 [ %i.bj, %.lr.ph121.preheader ], [ %indvars.iv.next, %.lr.ph121 ] ; 2 uses
  %i.bk = getelementptr inbounds i8, ptr %i.bi, i64 %indvars.iv ; 3 uses
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !56
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 %indvars.iv124 ; 4 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !56
  %i.bo = xor i8 %i.bn, %i.bl                     ; 2 uses
  store i8 %i.bo, ptr %i.bm, align 1, !tbaa !56
  %i.bp = load i8, ptr %i.bk, align 1, !tbaa !56
  %i.bq = xor i8 %i.bp, %i.bo                     ; 2 uses
  store i8 %i.bq, ptr %i.bk, align 1, !tbaa !56
  %i.br = load i8, ptr %i.bm, align 1, !tbaa !56
  %i.bs = xor i8 %i.br, %i.bq
  store i8 %i.bs, ptr %i.bm, align 1, !tbaa !56
  %indvars.iv.next125 = add nuw nsw i64 %indvars.iv124, 1 ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.bt = icmp slt i64 %indvars.iv.next125, %indvars.iv.next
end_hunk_4
