Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rtextures?download=true
inline.NumInlined: 812
inline.NumDeleted: 134
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 86
loop-unroll.NumUnrolled: 118
begin_hunk_0_@ColorIsEqual:bb.a

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define i32 @Fade(i32 %0, float noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = fcmp olt float %1, 0.000000e+00
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = fcmp ogt float %1, 1.000000e+00
  %spec.store.select = select i1 %i.b, float 1.000000e+00, float %1
  %i.c = fmul float %spec.store.select, 2.550000e+02
  %i.d = fptoui float %i.c to i8
  %i.e = zext i8 %i.d to i32
  %i.f = shl nuw i32 %i.e, 24
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.f, %bb.b ], [ 0, %bb.a ]
  %.sroa.03.0.insert.ext = and i32 %0, 16777215
  %.sroa.03.0.insert.insert = or disjoint i32 %.0, %.sroa.03.0.insert.ext
  ret i32 %.sroa.03.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define i32 @ColorToInt(i32 %0) local_unnamed_addr #7 {
bb.a:
  %i.a = tail call i32 @llvm.bswap.i32(i32 %0)
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { <2 x float>, <2 x float> } @ColorNormalize(i32 %0) local_unnamed_addr #7 {
bb.a:
  %.sroa.4.0.extract.shift = lshr i32 %0, 24
  %.sroa.3.0.extract.shift = lshr i32 %0, 16
  %.sroa.2.0.extract.shift = lshr i32 %0, 8
  %.sroa.4.0.extract.trunc = trunc nuw i32 %.sroa.4.0.extract.shift to i8
  %.sroa.3.0.extract.trunc = trunc i32 %.sroa.3.0.extract.shift to i8
  %.sroa.2.0.extract.trunc = trunc i32 %.sroa.2.0.extract.shift to i8
  %.sroa.0.0.extract.trunc = trunc i32 %0 to i8
  %i.a = insertelement <4 x i8> poison, i8 %.sroa.0.0.extract.trunc, i64 0
  %i.b = insertelement <4 x i8> %i.a, i8 %.sroa.2.0.extract.trunc, i64 1
  %i.c = insertelement <4 x i8> %i.b, i8 %.sroa.3.0.extract.trunc, i64 2
  %i.d = insertelement <4 x i8> %i.c, i8 %.sroa.4.0.extract.trunc, i64 3
  %i.e = uitofp <4 x i8> %i.d to <4 x float>
  %i.f = fdiv <4 x float> %i.e, splat (float 2.550000e+02) ; 2 uses
  %i.g = shufflevector <4 x float> %i.f, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.h = shufflevector <4 x float> %i.f, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.g, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %i.h, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define i32 @ColorFromNormalized(<2 x float> %0, <2 x float> %1) local_unnamed_addr #40 {
bb.a:
  %i.a = shufflevector <2 x float> %0, <2 x float> %1, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.b = fmul <4 x float> %i.a, splat (float 2.550000e+02)
  %i.c = fptoui <4 x float> %i.b to <4 x i8>
  %i.d = bitcast <4 x i8> %i.c to i32
  ret i32 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { <2 x float>, float } @ColorToHSV(i32 %0) local_unnamed_addr #7 {
bb.a:
  %.sroa.235.0.extract.shift = lshr i32 %0, 8
  %.sroa.3.0.extract.shift = lshr i32 %0, 16
  %.sroa.3.0.extract.trunc = trunc i32 %.sroa.3.0.extract.shift to i8
  %i.a = uitofp i8 %.sroa.3.0.extract.trunc to float
  %i.b = fdiv float %i.a, 2.550000e+02            ; 4 uses
  %i.c = trunc i32 %0 to i8
  %i.d = trunc i32 %.sroa.235.0.extract.shift to i8
  %i.e = insertelement <2 x i8> poison, i8 %i.d, i64 0
  %i.f = insertelement <2 x i8> %i.e, i8 %i.c, i64 1
  %i.g = uitofp <2 x i8> %i.f to <2 x float>
  %i.h = fdiv <2 x float> %i.g, splat (float 2.550000e+02) ; 7 uses
  %i.i = shufflevector <2 x float> %i.h, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.j = fcmp ogt <2 x float> %i.h, %i.i
  %i.k = shufflevector <2 x float> %i.h, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.l = shufflevector <2 x float> %i.h, <2 x float> poison, <2 x i32> zeroinitializer
  %i.m = select <2 x i1> %i.j, <2 x float> %i.k, <2 x float> %i.l ; 3 uses
  %i.n = insertelement <2 x float> %i.m, float %i.b, i64 0 ; 2 uses
  %i.o = insertelement <2 x float> %i.m, float %i.b, i64 1
  %i.p = fcmp ogt <2 x float> %i.n, %i.o
  %i.q = shufflevector <2 x float> %i.n, <2 x float> poison, <2 x i32> zeroinitializer
  %i.r = select <2 x i1> %i.p, <2 x float> %i.m, <2 x float> %i.q ; 2 uses
  %i.s = extractelement <2 x float> %i.r, i64 0
  %i.t = extractelement <2 x float> %i.r, i64 1   ; 6 uses
  %i.u = fsub float %i.t, %i.s                    ; 5 uses
  %i.v = fcmp olt float %i.u, f0x3727C5AC
  br i1 %i.v, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.w = fcmp ogt float %i.t, 0.000000e+00
  br i1 %i.w, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.x = fdiv float %i.u, %i.t
  %i.y = extractelement <2 x float> %i.h, i64 1   ; 3 uses
  %i.z = fcmp ult float %i.y, %i.t
  br i1 %i.z, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = extractelement <2 x float> %i.h, i64 0
  %i.ab = fsub float %i.aa, %i.b
  %i.ac = fdiv float %i.ab, %i.u
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.ad = extractelement <2 x float> %i.h, i64 0  ; 2 uses
  %i.ae = fcmp ult float %i.ad, %i.t
  br i1 %i.ae, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = fsub float %i.b, %i.y
  %i.ag = fdiv float %i.af, %i.u
  %i.ah = fadd float %i.ag, 2.000000e+00
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ai = fsub float %i.y, %i.ad
  %i.aj = fdiv float %i.ai, %i.u
  %i.ak = fadd float %i.aj, 4.000000e+00
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.d
  %.sink = phi float [ %i.ah, %bb.f ], [ %i.ak, %bb.g ], [ %i.ac, %bb.d ]
  %i.al = fmul float %.sink, 6.000000e+01         ; 3 uses
  %i.am = insertelement <2 x float> poison, float %i.al, i64 0
  %.sroa.036.0.vec.insert48 = insertelement <2 x float> %i.am, float %i.x, i64 1 ; 2 uses
  %i.an = fcmp olt float %i.al, 0.000000e+00
  %i.ao = fadd float %i.al, 3.600000e+02
  %.sroa.036.0.vec.insert54 = insertelement <2 x float> %.sroa.036.0.vec.insert48, float %i.ao, i64 0
  %.sroa.036.1 = select i1 %i.an, <2 x float> %.sroa.036.0.vec.insert54, <2 x float> %.sroa.036.0.vec.insert48
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.a, %bb.h
  %.sroa.036.2 = phi <2 x float> [ zeroinitializer, %bb.a ], [ %.sroa.036.1, %bb.h ], [ <float +qnan, float 0.000000e+00>, %bb.b ]
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %.sroa.036.2, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %i.t, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define range(i32 -16777216, 0) i32 @ColorFromHSV(float noundef %0, float noundef %1, float noundef %2) local_unnamed_addr #41 {
bb.a:
  %i.a = fdiv float %0, 6.000000e+01              ; 3 uses
  %i.b = fadd float %i.a, 5.000000e+00
  %i.c = tail call float @fmodf(float noundef %i.b, float noundef 6.000000e+00) #52 ; 3 uses
  %i.d = fsub float 4.000000e+00, %i.c            ; 2 uses
  %i.e = fcmp olt float %i.d, %i.c
  %i.f = select i1 %i.e, float %i.d, float %i.c   ; 2 uses
  %i.g = fcmp olt float %i.f, 1.000000e+00
  %i.h = select i1 %i.g, float %i.f, float 1.000000e+00 ; 2 uses
  %i.i = fcmp ogt float %i.h, 0.000000e+00
  %i.j = select i1 %i.i, float %i.h, float 0.000000e+00
  %i.k = fmul float %1, %2                        ; 2 uses
  %i.l = fmul float %i.k, %i.j
  %i.m = fsub float %2, %i.l
  %i.n = fmul float %i.m, 2.550000e+02
  %i.o = fptoui float %i.n to i8
  %i.p = fadd float %i.a, 3.000000e+00
  %i.q = tail call float @fmodf(float noundef %i.p, float noundef 6.000000e+00) #52
  %i.r = fadd float %i.a, 1.000000e+00
  %i.s = tail call float @fmodf(float noundef %i.r, float noundef 6.000000e+00) #52
  %i.t = insertelement <2 x float> poison, float %i.s, i64 0
  %i.u = insertelement <2 x float> %i.t, float %i.q, i64 1 ; 3 uses
  %i.v = fsub <2 x float> splat (float 4.000000e+00), %i.u ; 2 uses
  %i.w = fcmp olt <2 x float> %i.v, %i.u
  %i.x = select <2 x i1> %i.w, <2 x float> %i.v, <2 x float> %i.u ; 2 uses
  %i.y = fcmp olt <2 x float> %i.x, splat (float 1.000000e+00)
  %i.z = select <2 x i1> %i.y, <2 x float> %i.x, <2 x float> splat (float 1.000000e+00) ; 2 uses
  %i.aa = fcmp ogt <2 x float> %i.z, zeroinitializer
  %i.ab = select <2 x i1> %i.aa, <2 x float> %i.z, <2 x float> zeroinitializer
  %i.ac = insertelement <2 x float> poison, float %i.k, i64 0
  %i.ad = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ae = fmul <2 x float> %i.ad, %i.ab
  %i.af = insertelement <2 x float> poison, float %2, i64 0
  %i.ag = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ah = fsub <2 x float> %i.ag, %i.ae
  %i.ai = fmul <2 x float> %i.ah, splat (float 2.550000e+02)
  %i.aj = fptoui <2 x float> %i.ai to <2 x i8>
  %i.ak = zext <2 x i8> %i.aj to <2 x i32>
  %i.al = shl nuw nsw <2 x i32> %i.ak, <i32 16, i32 8> ; 2 uses
  %shift = shufflevector <2 x i32> %i.al, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = or disjoint <2 x i32> %i.al, %shift
  %.sroa.4.0.insert.insert = extractelement <2 x i32> %foldExtExtBinop, i64 0
  %.sroa.0.0.insert.ext = zext i8 %i.o to i32
  %.sroa.3.0.insert.insert = or disjoint i32 %.sroa.4.0.insert.insert, %.sroa.0.0.insert.ext
  %.sroa.0.0.insert.insert = or disjoint i32 %.sroa.3.0.insert.insert, -16777216
  ret i32 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @fmodf(float noundef, float noundef) local_unnamed_addr #30

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define i32 @ColorTint(i32 %0, i32 %1) local_unnamed_addr #7 {
bb.a:
  %.sroa.35.0.extract.shift.a = lshr i32 %0, 24
  %.sroa.46.0.extract.shift = lshr i32 %0, 16
  %.sroa.5.0.extract.shift = lshr i32 %0, 8
  %.sroa.2.0.extract.shift.a = lshr i32 %1, 24
  %.sroa.3.0.extract.shift = lshr i32 %1, 16
  %.sroa.4.0.extract.shift = lshr i32 %1, 8
  %2 = and i32 %.sroa.46.0.extract.shift, 255
  %3 = and i32 %.sroa.5.0.extract.shift, 255
  %i.a = and i32 %0, 255
  %4 = and i32 %.sroa.3.0.extract.shift, 255
  %5 = and i32 %.sroa.4.0.extract.shift, 255
  %i.b = and i32 %1, 255
  %i.c = mul nuw nsw i32 %.sroa.2.0.extract.shift.a, %.sroa.35.0.extract.shift.a
  %6 = mul nuw nsw i32 %4, %2
  %7 = mul nuw nsw i32 %5, %3
  %8 = mul nuw nsw i32 %i.b, %i.a
  %.lhs.trunc14 = trunc nuw i32 %i.c to i16
  %.lhs.trunc12 = trunc nuw i32 %6 to i16
  %.lhs.trunc10 = trunc nuw i32 %7 to i16
  %.lhs.trunc10.a = trunc nuw i32 %8 to i16
  %9 = insertelement <4 x i16> poison, i16 %.lhs.trunc10.a, i64 0
  %10 = insertelement <4 x i16> %9, i16 %.lhs.trunc10, i64 1
  %11 = insertelement <4 x i16> %10, i16 %.lhs.trunc12, i64 2
  %12 = insertelement <4 x i16> %11, i16 %.lhs.trunc14, i64 3
  %13 = udiv <4 x i16> %12, splat (i16 255)       ; 4 uses
  %14 = extractelement <4 x i16> %13, i64 0
  %.zext = zext nneg i16 %14 to i32
  %15 = extractelement <4 x i16> %13, i64 1
  %.zext13.a = zext nneg i16 %15 to i32
  %16 = extractelement <4 x i16> %13, i64 2
  %.zext13 = zext nneg i16 %16 to i32
  %17 = extractelement <4 x i16> %13, i64 3
  %.zext15 = zext nneg i16 %17 to i32
  %.sroa.7.0.insert.ext = shl nuw i32 %.zext15, 24
  %.sroa.59.0.insert.ext = shl nuw nsw i32 %.zext13, 16
  %.sroa.59.0.insert.shift = and i32 %.sroa.59.0.insert.ext, 16711680
  %.sroa.59.0.insert.insert = or disjoint i32 %.sroa.59.0.insert.shift, %.sroa.7.0.insert.ext
  %.sroa.38.0.insert.ext = shl nuw nsw i32 %.zext13.a, 8
  %.sroa.38.0.insert.shift = and i32 %.sroa.38.0.insert.ext, 65280
  %.sroa.38.0.insert.insert = or disjoint i32 %.sroa.59.0.insert.insert, %.sroa.38.0.insert.shift
  %.sroa.07.0.insert.insert = add nuw nsw i32 %.sroa.38.0.insert.insert, %.zext
  ret i32 %.sroa.07.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define i32 @ColorBrightness(i32 %0, float noundef %1) local_unnamed_addr #7 {
bb.a:
  %.sroa.0.0.extract.trunc = trunc i32 %0 to i8
  %.sroa.3.0.extract.shift = lshr i32 %0, 8
  %.sroa.4.0.extract.shift = lshr i32 %0, 16
  %.sroa.3.0.extract.trunc = trunc i32 %.sroa.3.0.extract.shift to i8
  %.sroa.4.0.extract.trunc = trunc i32 %.sroa.4.0.extract.shift to i8
  %i.a = fcmp ogt float %1, 1.000000e+00
  %i.b = fcmp olt float %1, -1.000000e+00
  %spec.store.select = select i1 %i.b, float -1.000000e+00, float %1
  %.027 = select i1 %i.a, float 1.000000e+00, float %spec.store.select ; 4 uses
  %i.c = uitofp i8 %.sroa.0.0.extract.trunc to float ; 3 uses
  %i.d = insertelement <2 x i8> poison, i8 %.sroa.4.0.extract.trunc, i64 0
  %i.e = insertelement <2 x i8> %i.d, i8 %.sroa.3.0.extract.trunc, i64 1
  %i.f = uitofp <2 x i8> %i.e to <2 x float>      ; 3 uses
  %i.g = fcmp olt float %.027, 0.000000e+00
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = fadd float %.027, 1.000000e+00           ; 2 uses
  %i.i = fmul float %i.h, %i.c
  %i.j = insertelement <2 x float> poison, float %i.h, i64 0
  %i.k = shufflevector <2 x float> %i.j, <2 x float> poison, <2 x i32> zeroinitializer
  %i.l = fmul <2 x float> %i.k, %i.f
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.m = fsub nnan float 2.550000e+02, %i.c
  %i.n = fmul float %i.m, %.027
  %i.o = fadd float %i.n, %i.c
  %i.p = fsub nnan <2 x float> splat (float 2.550000e+02), %i.f
  %i.q = insertelement <2 x float> poison, float %.027, i64 0
  %i.r = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> zeroinitializer
  %i.s = fmul <2 x float> %i.p, %i.r
  %i.t = fadd <2 x float> %i.s, %i.f
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.026 = phi float [ %i.i, %bb.b ], [ %i.o, %bb.c ]
  %i.u = phi <2 x float> [ %i.l, %bb.b ], [ %i.t, %bb.c ]
  %.sroa.5.0.extract.shift = and i32 %0, -16777216
  %i.v = fptoui float %.026 to i8
  %i.w = fptoui <2 x float> %i.u to <2 x i8>
  %i.x = zext <2 x i8> %i.w to <2 x i32>
  %i.y = shl nuw nsw <2 x i32> %i.x, <i32 16, i32 8> ; 2 uses
  %i.z = extractelement <2 x i32> %i.y, i64 0
  %.sroa.524.0.insert.insert = or disjoint i32 %i.z, %.sroa.5.0.extract.shift
  %i.aa = extractelement <2 x i32> %i.y, i64 1
  %.sroa.323.0.insert.insert = or disjoint i32 %.sroa.524.0.insert.insert, %i.aa
  %.sroa.022.0.insert.ext = zext i8 %i.v to i32
  %.sroa.022.0.insert.insert = or disjoint i32 %.sroa.323.0.insert.insert, %.sroa.022.0.insert.ext
  ret i32 %.sroa.022.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define i32 @ColorContrast(i32 %0, float noundef %1) local_unnamed_addr #7 {
bb.a:
  %.sroa.0.0.extract.trunc = trunc i32 %0 to i8
  %.sroa.3.0.extract.shift = lshr i32 %0, 8
  %.sroa.3.0.extract.trunc = trunc i32 %.sroa.3.0.extract.shift to i8
  %.sroa.4.0.extract.shift = lshr i32 %0, 16
  %.sroa.4.0.extract.trunc = trunc i32 %.sroa.4.0.extract.shift to i8
  %i.a = fcmp olt float %1, -1.000000e+00
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = fcmp ogt float %1, 1.000000e+00
  %spec.store.select = select i1 %i.b, float 1.000000e+00, float %1
  %i.c = fadd float %spec.store.select, 1.000000e+00 ; 2 uses
  %i.d = fmul float %i.c, %i.c
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.037 = phi float [ %i.d, %bb.b ], [ 0.000000e+00, %bb.a ] ; 3 uses
  %i.e = uitofp i8 %.sroa.0.0.extract.trunc to float
  %i.f = fdiv nnan float %i.e, 2.550000e+02
  %i.g = fadd nnan float %i.f, -5.000000e-01
  %i.h = fmul float %i.g, %.037
  %i.i = fadd float %i.h, 5.000000e-01
  %i.j = fmul float %i.i, 2.550000e+02            ; 3 uses
  %i.k = fcmp olt float %i.j, 0.000000e+00
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = fcmp ogt float %i.j, 2.550000e+02
  %spec.store.select1 = select i1 %i.l, float 2.550000e+02, float %i.j
  %i.m = fptoui float %spec.store.select1 to i8
  %i.n = zext i8 %i.m to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.036 = phi i32 [ %i.n, %bb.d ], [ 0, %bb.c ]
  %i.o = uitofp i8 %.sroa.3.0.extract.trunc to float
  %i.p = fdiv nnan float %i.o, 2.550000e+02
  %i.q = fadd nnan float %i.p, -5.000000e-01
  %i.r = fmul float %i.q, %.037
  %i.s = fadd float %i.r, 5.000000e-01
  %i.t = fmul float %i.s, 2.550000e+02            ; 3 uses
  %i.u = fcmp olt float %i.t, 0.000000e+00
  br i1 %i.u, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = fcmp ogt float %i.t, 2.550000e+02
  %spec.store.select2 = select i1 %i.v, float 2.550000e+02, float %i.t
  %i.w = fptoui float %spec.store.select2 to i8
  %i.x = zext i8 %i.w to i32
  %i.y = shl nuw nsw i32 %i.x, 8
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.035 = phi i32 [ %i.y, %bb.f ], [ 0, %bb.e ]
  %i.z = uitofp i8 %.sroa.4.0.extract.trunc to float
  %i.aa = fdiv nnan float %i.z, 2.550000e+02
  %i.ab = fadd nnan float %i.aa, -5.000000e-01
  %i.ac = fmul float %i.ab, %.037
  %i.ad = fadd float %i.ac, 5.000000e-01
  %i.ae = fmul float %i.ad, 2.550000e+02          ; 3 uses
  %i.af = fcmp olt float %i.ae, 0.000000e+00
  br i1 %i.af, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = fcmp ogt float %i.ae, 2.550000e+02
  %spec.store.select3 = select i1 %i.ag, float 2.550000e+02, float %i.ae
  %i.ah = fptoui float %spec.store.select3 to i8
  %i.ai = zext i8 %i.ah to i32
  %i.aj = shl nuw nsw i32 %i.ai, 16
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.0 = phi i32 [ %i.aj, %bb.h ], [ 0, %bb.g ]
  %.sroa.5.0.extract.shift = and i32 %0, -16777216
  %.sroa.534.0.insert.insert = or disjoint i32 %.036, %.sroa.5.0.extract.shift
  %.sroa.333.0.insert.insert = or i32 %.sroa.534.0.insert.insert, %.035
  %.sroa.032.0.insert.insert = or i32 %.sroa.333.0.insert.insert, %.0
  ret i32 %.sroa.032.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define i32 @ColorAlpha(i32 %0, float noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = fcmp olt float %1, 0.000000e+00
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = fcmp ogt float %1, 1.000000e+00
  %spec.store.select = select i1 %i.b, float 1.000000e+00, float %1
  %i.c = fmul float %spec.store.select, 2.550000e+02
  %i.d = fptoui float %i.c to i8
  %i.e = zext i8 %i.d to i32
  %i.f = shl nuw i32 %i.e, 24
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.f, %bb.b ], [ 0, %bb.a ]
  %.sroa.03.0.insert.ext = and i32 %0, 16777215
  %.sroa.03.0.insert.insert = or disjoint i32 %.0, %.sroa.03.0.insert.ext
  ret i32 %.sroa.03.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define i32 @ColorLerp(i32 %0, i32 %1, float noundef %2) local_unnamed_addr #7 {
bb.a:
  %i.a = fcmp olt float %2, 0.000000e+00
  %i.b = fcmp ogt float %2, 1.000000e+00
  %spec.store.select = select i1 %i.b, float 1.000000e+00, float %2
  %.0 = select i1 %i.a, float 0.000000e+00, float %spec.store.select ; 2 uses
  %i.c = fsub float 1.000000e+00, %.0
  %.sroa.4.0.extract.shift = lshr i32 %1, 24
  %.sroa.3.0.extract.shift = lshr i32 %1, 16
  %.sroa.2.0.extract.shift = lshr i32 %1, 8
  %.sroa.413.0.extract.shift = lshr i32 %0, 24
  %.sroa.312.0.extract.shift = lshr i32 %0, 16
  %.sroa.211.0.extract.shift = lshr i32 %0, 8
  %i.d = insertelement <4 x i32> poison, i32 %0, i64 0
  %i.e = insertelement <4 x i32> %i.d, i32 %.sroa.211.0.extract.shift, i64 1
  %i.f = insertelement <4 x i32> %i.e, i32 %.sroa.312.0.extract.shift, i64 2
  %i.g = insertelement <4 x i32> %i.f, i32 %.sroa.413.0.extract.shift, i64 3
  %i.h = and <4 x i32> %i.g, <i32 255, i32 255, i32 255, i32 -1>
  %i.i = insertelement <4 x i32> poison, i32 %1, i64 0
  %i.j = insertelement <4 x i32> %i.i, i32 %.sroa.2.0.extract.shift, i64 1
  %i.k = insertelement <4 x i32> %i.j, i32 %.sroa.3.0.extract.shift, i64 2
  %i.l = insertelement <4 x i32> %i.k, i32 %.sroa.4.0.extract.shift, i64 3
  %i.m = and <4 x i32> %i.l, <i32 255, i32 255, i32 255, i32 -1>
  %i.n = uitofp <4 x i32> %i.h to <4 x float>
  %i.o = insertelement <4 x float> poison, float %i.c, i64 0
  %i.p = shufflevector <4 x float> %i.o, <4 x float> poison, <4 x i32> zeroinitializer
  %i.q = fmul <4 x float> %i.p, %i.n
  %i.r = uitofp <4 x i32> %i.m to <4 x float>
  %i.s = insertelement <4 x float> poison, float %.0, i64 0
  %i.t = shufflevector <4 x float> %i.s, <4 x float> poison, <4 x i32> zeroinitializer
  %i.u = fmul <4 x float> %i.t, %i.r
  %i.v = fadd <4 x float> %i.u, %i.q
  %i.w = fptoui <4 x float> %i.v to <4 x i8>
end_hunk_0
