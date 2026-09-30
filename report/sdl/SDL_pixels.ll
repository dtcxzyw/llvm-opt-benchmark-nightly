Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_pixels?download=true
inline.NumInlined: 15
inline.NumDeleted: 7
begin_hunk_0_@SDL_Get8888AlphaMaskAndShift:bb.a
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %i.b, ptr %1, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 31
  %i.d = load i8, ptr %i.c, align 1
  %i.e = zext i8 %i.d to i32
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i32, ptr %i.f, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.i = load i32, ptr %i.h, align 4
  %i.j = or i32 %i.i, %i.g
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i32, ptr %i.k, align 4
  %i.m = or i32 %i.j, %i.l
  %i.n = xor i32 %i.m, -1                         ; 2 uses
  store i32 %i.n, ptr %1, align 4
  switch i32 %i.n, label %bb.f [
    i32 -16777216, label %bb.e
    i32 65280, label %bb.g
    i32 16711680, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.b
  %.sink = phi i32 [ %i.e, %bb.b ], [ 0, %bb.f ], [ 16, %bb.d ], [ 24, %bb.e ], [ 8, %bb.c ]
  store i32 %.sink, ptr %2, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden range(i32 301991168, 554703047) i32 @SDL_GetDefaultColorspaceForFormat(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i32 %0, 0
  %.mask = and i32 %0, -268435456
  %.not15 = icmp eq i32 %.mask, 268435456
  %or.cond = or i1 %.not, %.not15
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %switch.selectcmp = icmp eq i32 %0, 808530000
  %switch.select = select i1 %switch.selectcmp, i32 301999616, i32 554703046
  %switch.selectcmp26 = icmp eq i32 %0, 1196444237
  %switch.select27 = select i1 %switch.selectcmp26, i32 301991328, i32 %switch.select
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.a = and i32 %0, 234881024
  %switch = icmp eq i32 %i.a, 167772160
  br i1 %switch, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.b = and i32 %0, 252641280
  %or.cond25 = icmp eq i32 %i.b, 101122048
  %spec.select = select i1 %or.cond25, i32 301999616, i32 301991328
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ %spec.select, %bb.d ], [ %switch.select27, %bb.b ], [ 301991168, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden float @SDL_sRGBtoLinear(float noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = fcmp ugt float %0, 4.045000e-02
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = fdiv float %0, 1.292000e+01
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = fadd float %0, 5.500000e-02
  %i.d = fdiv float %i.c, 1.055000e+00
  %i.e = tail call float @SDL_powf_REAL(float noundef %i.d, float noundef 2.400000e+00) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi float [ %i.b, %bb.b ], [ %i.e, %bb.c ]
  ret float %.0
}

declare float @SDL_powf_REAL(float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden float @SDL_sRGBfromLinear(float noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = fcmp ugt float %0, 3.130800e-03
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = fmul nnan float %0, 1.292000e+01
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = tail call float @SDL_powf_REAL(float noundef %0, float noundef f0x3ED55555) #12
  %i.d = tail call float @llvm.fmuladd.f32(float %i.c, float 1.055000e+00, float -5.500000e-02)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi float [ %i.b, %bb.b ], [ %i.d, %bb.c ]
  ret float %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: nounwind uwtable
define hidden float @SDL_PQtoNits(float noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call float @SDL_powf_REAL(float noundef %0, float noundef f0x3C4FCDAC) #12
  %i.b = fadd float %i.a, f0xBF560000
  %i.c = fcmp ogt float %i.b, 0.000000e+00
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call float @SDL_powf_REAL(float noundef %0, float noundef f0x3C4FCDAC) #12
  %i.e = fadd float %i.d, f0xBF560000
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.f = phi float [ %i.e, %bb.b ], [ 0.000000e+00, %bb.a ]
  %i.g = tail call float @SDL_powf_REAL(float noundef %0, float noundef f0x3C4FCDAC) #12
  %i.h = tail call float @llvm.fmuladd.f32(float %i.g, float -1.868750e+01, float f0x4196D000)
  %i.i = fdiv float %i.f, %i.h
  %i.j = tail call float @SDL_powf_REAL(float noundef %i.i, float noundef f0x40C8E06B) #12
  %i.k = fmul float %i.j, 1.000000e+04
  ret float %i.k
}

; Function Attrs: nounwind uwtable
define hidden float @SDL_PQfromNits(float noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = fdiv float %0, 1.000000e+04              ; 3 uses
  %i.b = fcmp olt float %i.a, 0.000000e+00
  %i.c = fcmp ogt float %i.a, 1.000000e+00
  %i.d = select i1 %i.c, float 1.000000e+00, float %i.a
  %i.e = select i1 %i.b, float 0.000000e+00, float %i.d ; 2 uses
  %i.f = tail call float @SDL_powf_REAL(float noundef %i.e, float noundef f0x3E232000) #12
  %i.g = tail call float @SDL_powf_REAL(float noundef %i.e, float noundef f0x3E232000) #12
  %i.h = insertelement <2 x float> poison, float %i.f, i64 0
  %i.i = insertelement <2 x float> %i.h, float %i.g, i64 1
  %i.j = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.i, <2 x float> <float f0x4196D000, float 1.868750e+01>, <2 x float> <float f0x3F560000, float 1.000000e+00>) ; 2 uses
  %i.k = extractelement <2 x float> %i.j, i64 0
  %i.l = extractelement <2 x float> %i.j, i64 1
  %i.m = fdiv float %i.k, %i.l
  %i.n = tail call float @SDL_powf_REAL(float noundef %i.m, float noundef f0x429DB000) #12
  ret float %i.n
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef ptr @SDL_GetYCbCRtoRGBConversionMatrix(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = and i32 %0, 31
  switch i32 %i.a, label %SDL_GetBT601ConversionMatrix.exit [
    i32 6, label %bb.b
    i32 5, label %bb.b
    i32 1, label %bb.c
    i32 9, label %bb.d
    i32 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.b = lshr i32 %0, 24
  %i.c = and i32 %i.b, 15                         ; 2 uses
  %i.d = icmp samesign ult i32 %i.c, 3
  br i1 %i.d, label %SDL_GetBT601ConversionMatrix.exit.sink.split, label %SDL_GetBT601ConversionMatrix.exit

bb.c:                                             ; preds = %bb.a
  %i.e = lshr i32 %0, 24
  %i.f = and i32 %i.e, 15                         ; 2 uses
  %i.g = icmp samesign ult i32 %i.f, 3
  br i1 %i.g, label %SDL_GetBT601ConversionMatrix.exit.sink.split, label %SDL_GetBT601ConversionMatrix.exit

bb.d:                                             ; preds = %bb.a
  %i.h = lshr i32 %0, 24
  %i.i = and i32 %i.h, 15                         ; 2 uses
  %i.j = icmp samesign ult i32 %i.i, 3
  br i1 %i.j, label %SDL_GetBT601ConversionMatrix.exit.sink.split, label %SDL_GetBT601ConversionMatrix.exit

bb.e:                                             ; preds = %bb.a
  switch i32 %3, label %SDL_GetBT601ConversionMatrix.exit [
    i32 8, label %bb.f
    i32 10, label %bb.g
    i32 16, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.k = lshr i32 %0, 24
  %i.l = and i32 %i.k, 15                         ; 2 uses
  %i.m = icmp samesign ult i32 %i.l, 3
  br i1 %i.m, label %4, label %SDL_GetBT601ConversionMatrix.exit

4:                                                ; preds = %bb.f
  %5 = icmp slt i32 %2, 577
  %spec.select = select i1 %5, ptr @switch.table.SDL_GetYCbCRtoRGBConversionMatrix.6, ptr @switch.table.SDL_GetYCbCRtoRGBConversionMatrix.7
  br label %SDL_GetBT601ConversionMatrix.exit.sink.split

bb.g:                                             ; preds = %bb.e, %bb.e
  %i.n = lshr i32 %0, 24
  %i.o = and i32 %i.n, 15                         ; 2 uses
  %i.p = icmp samesign ult i32 %i.o, 3
  br i1 %i.p, label %SDL_GetBT601ConversionMatrix.exit.sink.split, label %SDL_GetBT601ConversionMatrix.exit

SDL_GetBT601ConversionMatrix.exit.sink.split:     ; preds = %4, %bb.g, %bb.d, %bb.c, %bb.b
  %.sink32 = phi i32 [ %i.l, %4 ], [ %i.o, %bb.g ], [ %i.i, %bb.d ], [ %i.f, %bb.c ], [ %i.c, %bb.b ]
  %switch.table.SDL_GetYCbCRtoRGBConversionMatrix.8.sink = phi ptr [ %spec.select, %4 ], [ @switch.table.SDL_GetYCbCRtoRGBConversionMatrix.8, %bb.g ], [ @switch.table.SDL_GetYCbCRtoRGBConversionMatrix.8, %bb.d ], [ @switch.table.SDL_GetYCbCRtoRGBConversionMatrix.7, %bb.c ], [ @switch.table.SDL_GetYCbCRtoRGBConversionMatrix.6, %bb.b ]
  %i.q = zext nneg i32 %.sink32 to i64
  %switch.gep30 = getelementptr inbounds nuw [8 x i8], ptr %switch.table.SDL_GetYCbCRtoRGBConversionMatrix.8.sink, i64 %i.q
  %switch.load31 = load ptr, ptr %switch.gep30, align 8
  br label %SDL_GetBT601ConversionMatrix.exit

SDL_GetBT601ConversionMatrix.exit:                ; preds = %bb.f, %SDL_GetBT601ConversionMatrix.exit.sink.split, %bb.b, %bb.c, %bb.d, %bb.g, %bb.e, %bb.a
  %.0 = phi ptr [ null, %bb.g ], [ null, %bb.e ], [ %switch.load31, %SDL_GetBT601ConversionMatrix.exit.sink.split ], [ null, %bb.f ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.a ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef ptr @SDL_GetColorPrimariesConversionMatrix(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  switch i32 %1, label %bb.e [
    i32 6, label %bb.b
    i32 7, label %bb.b
    i32 1, label %bb.c
    i32 9, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %switch.selectcmp = icmp eq i32 %0, 9
  %switch.select = select i1 %switch.selectcmp, ptr @SDL_GetColorPrimariesConversionMatrix.mat2020to601, ptr null
  %switch.selectcmp4 = icmp eq i32 %0, 1
  %switch.select5 = select i1 %switch.selectcmp4, ptr @SDL_GetColorPrimariesConversionMatrix.mat709to601, ptr %switch.select
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %switch.tableidx = add i32 %0, -6               ; 2 uses
  %i.a = icmp ult i32 %switch.tableidx, 7
  br i1 %i.a, label %switch.lookup, label %bb.e

bb.d:                                             ; preds = %bb.a
  %switch.tableidx6 = add i32 %0, -1              ; 2 uses
  %i.b = icmp ult i32 %switch.tableidx6, 12
  br i1 %i.b, label %switch.lookup7, label %bb.e

switch.lookup:                                    ; preds = %bb.c
  %i.c = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.SDL_GetColorPrimariesConversionMatrix, i64 %i.c
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.e

switch.lookup7:                                   ; preds = %bb.d
  %i.d = zext nneg i32 %switch.tableidx6 to i64
  %switch.gep8 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.SDL_GetColorPrimariesConversionMatrix.9, i64 %i.d
  %switch.load9 = load ptr, ptr %switch.gep8, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.c, %bb.d, %switch.lookup7, %switch.lookup, %bb.b
  %.0 = phi ptr [ %switch.load, %switch.lookup ], [ %switch.select5, %bb.b ], [ %switch.load9, %switch.lookup7 ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @SDL_ConvertColorPrimaries(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #4 {
bb.a:
  %i.a = load float, ptr %0, align 4              ; 3 uses
  %i.b = load float, ptr %1, align 4              ; 3 uses
  %i.c = load float, ptr %2, align 4              ; 3 uses
  %i.d = load float, ptr %3, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.f = load float, ptr %i.e, align 4
  %i.g = fmul float %i.b, %i.f
  %i.h = tail call float @llvm.fmuladd.f32(float %i.d, float %i.a, float %i.g)
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = load float, ptr %i.i, align 4
  %i.k = tail call float @llvm.fmuladd.f32(float %i.j, float %i.c, float %i.h)
  store float %i.k, ptr %0, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.m = load float, ptr %i.l, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = load float, ptr %i.n, align 4
  %i.p = fmul float %i.b, %i.o
  %i.q = tail call float @llvm.fmuladd.f32(float %i.m, float %i.a, float %i.p)
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.s = load float, ptr %i.r, align 4
  %i.t = tail call float @llvm.fmuladd.f32(float %i.s, float %i.c, float %i.q)
  store float %i.t, ptr %1, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.v = load float, ptr %i.u, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.x = load float, ptr %i.w, align 4
  %i.y = fmul float %i.b, %i.x
  %i.z = tail call float @llvm.fmuladd.f32(float %i.v, float %i.a, float %i.y)
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ab = load float, ptr %i.aa, align 4
  %i.ac = tail call float @llvm.fmuladd.f32(float %i.ab, float %i.c, float %i.z)
  store float %i.ac, ptr %2, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define hidden ptr @SDL_CreatePalette_REAL(i32 noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp slt i32 %0, 1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.67) #12 ; 0 uses
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noalias ptr @SDL_malloc_REAL(i64 noundef 24) #12 ; 7 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = zext nneg i32 %0 to i64
  %i.e = shl nuw nsw i64 %i.d, 2                  ; 2 uses
  %i.f = tail call noalias ptr @SDL_malloc_REAL(i64 noundef %i.e) #12 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.f, ptr %i.g, align 8
  %.not15 = icmp eq ptr %i.f, null
  br i1 %.not15, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.c) #12
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  store i32 %0, ptr %i.c, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i32 1, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store i32 1, ptr %i.i, align 4
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.f, i8 -1, i64 %i.e, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f, %bb.e, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %i.c, %bb.f ], [ null, %bb.e ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden zeroext i1 @SDL_SetPaletteColors_REAL(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(address) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #7 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %0, align 8
  %i.b = sub nsw i32 %i.a, %2                     ; 2 uses
  %i.c = icmp sle i32 %3, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = sext i32 %2 to i64
  %i.g = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.f ; 2 uses
  %.not24 = icmp eq ptr %1, %i.g
  br i1 %.not24, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %spec.select = tail call i32 @llvm.smin.i32(i32 %3, i32 %i.b)
  %i.h = sext i32 %spec.select to i64
  %i.i = shl nsw i64 %i.h, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr align 1 %1, i64 %i.i, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8
  %i.l = add i32 %i.k, 1
  %spec.select26 = tail call i32 @llvm.umax.i32(i32 %i.l, i32 1)
  store i32 %spec.select26, ptr %i.j, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.018 = phi i1 [ %i.c, %bb.d ], [ false, %bb.a ]
  ret i1 %.018
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define hidden void @SDL_DestroyPalette_REAL(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %i.c = add nsw i32 %i.b, -1
  store i32 %i.c, ptr %i.a, align 4
  %i.d = icmp sgt i32 %i.b, 1
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void @SDL_free_REAL(ptr noundef %i.f) #12
  tail call void @SDL_free_REAL(ptr noundef nonnull %0) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  ret void
end_hunk_0
